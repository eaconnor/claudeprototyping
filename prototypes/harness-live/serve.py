#!/usr/bin/env python3
"""
serve.py — local proxy for harness-live.html

WHY THIS EXISTS
  The HARNESS prototype must read a real register out of Vertesia and write a real sign-off back,
  but a bearer token can never sit in client-side JS. The browser only ever calls same-origin
  relative routes; the credential stays here. Same reasoning as scripts/halo-connect.py and the
  Track B proxy this is descended from (prototypes/ebr-coworker-005-arc/serve.py).

  It also does one thing the browser cannot be trusted to do: enforce the unverified-finding rule
  server-side (see ROUTE /api/sign-off). A compliance rule that only the UI enforces is not enforced.

NAMED ROUTES ONLY — deliberate
  Every route below has its SQL, or its Interaction name, fixed in this file. The browser sends
  decisions and notes, never SQL and never an interaction name. Do not add a passthrough route;
  that would turn this into an open SQL endpoint on localhost.

WHAT IS AND IS NOT LIVE
  Live: the findings register, the run log (real Vertesia process runs), coworker artifacts,
  the translate step, and sign-off writes.
  Not live: everything else in the harness UI is still seed data and is labelled as such on screen.

CREDENTIALS
  Reads .secrets/vertesia-credentials.json (gitignored); env vars override.
  Shape: .secrets/vertesia-credentials.json.example

USAGE
  python3 prototypes/harness-live/serve.py
  then open http://127.0.0.1:7834/harness-live.html

LOCAL ONLY — binds 127.0.0.1 and has NO session auth. Do not change the bind address or host this
anywhere without putting real auth in front of it first.
"""

import json
import os
import sys
import urllib.error
import urllib.request
from http.server import SimpleHTTPRequestHandler, test as http_test
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent.parent
SECRETS = REPO / ".secrets" / "vertesia-credentials.json"
PORT = 7834
TIMEOUT = 120

# Processes built and proven in Studio (see prototypes/harness-vertesia-runbooks-2026-09-15/
# 10-proven-node-patterns.md). Used to label the run log; runs are read from Vertesia, not invented.
COWORKER_PROCESSES = {
    "qbr_advisor": "QBR Advisor",
    "environment_health": "Environment Health Monitor",
    "incident_response": "Incident Response",
}

REGISTER_SQL = "SELECT * FROM findings"

ARTIFACT_SQL = {
    "qbr": "SELECT run_ref, customer_id, decision, signed_off_by, claim FROM qbr_artifacts",
    "health": ("SELECT run_ref, customer_id, asset_population, treatment, status, diagnosis "
               "FROM health_findings"),
    "incident": ("SELECT run_ref, customer_id, cause, confidence, decision, approved_by "
                 "FROM ir_incidents"),
}

SIGNOFF_TABLE = "harness_signoffs"
TRANSLATE_INTERACTION = "Qbr_translate"


def load_creds():
    c = {}
    if SECRETS.exists():
        c = json.loads(SECRETS.read_text())
    api_base = (os.environ.get("VERTESIA_API_BASE") or c.get("api_base")
                or "https://api.us1.vertesia.io/api/v1")
    token = os.environ.get("VERTESIA_BEARER_TOKEN") or c.get("bearer_token")
    store_id = os.environ.get("VERTESIA_STORE_ID") or c.get("store_id")
    if not (token and store_id):
        sys.exit(
            f"No credentials found.\n"
            f"  Create {SECRETS} (it is gitignored) or set VERTESIA_BEARER_TOKEN / VERTESIA_STORE_ID.\n"
            f"  See .secrets/vertesia-credentials.json.example for the shape."
        )
    return api_base.rstrip("/"), token, store_id


class UpstreamError(Exception):
    def __init__(self, status, detail):
        super().__init__(detail)
        self.status = status
        self.detail = detail


def upstream(method, path, payload=None):
    api_base, token, store_id = load_creds()
    url = f"{api_base}{path.replace('{store}', store_id)}"
    data = json.dumps(payload).encode() if payload is not None else None
    req = urllib.request.Request(url, data=data, method=method)
    req.add_header("Authorization", f"Bearer {token}")
    req.add_header("Content-Type", "application/json")
    try:
        with urllib.request.urlopen(req, timeout=TIMEOUT) as r:
            return json.loads(r.read() or b"null")
    except urllib.error.HTTPError as e:
        raise UpstreamError(e.code, (e.read() or b"").decode()[:300])
    except urllib.error.URLError as e:
        raise UpstreamError(502, f"upstream unreachable: {e.reason}")


def sql(statement):
    return upstream("POST", "/data/{store}/query", {"sql": statement})


def rows(result):
    return (result or {}).get("rows") or []


def route_register(_body):
    return sql(REGISTER_SQL)


def route_runs(_body):
    """The run log, read from Vertesia's own process runs. Not seed data."""
    runs = upstream("GET", "/agents")
    items = runs if isinstance(runs, list) else (runs.get("items") or [])
    out = []
    for it in items:
        snap = it.get("process_definition_snapshot") or {}
        proc = snap.get("process")
        if proc not in COWORKER_PROCESSES:
            continue
        state = it.get("process_state") or {}
        out.append({
            "run_id": it.get("id"),
            "coworker": COWORKER_PROCESSES[proc],
            "process": proc,
            "status": it.get("status"),
            "current_node": state.get("current_node"),
            "customer_id": (state.get("context") or {}).get("customer_id"),
            "started_at": it.get("created_at") or it.get("started_at"),
        })
    out.sort(key=lambda r: r.get("started_at") or "", reverse=True)
    return {"runs": out, "count": len(out)}


def route_artifacts(_body):
    """What the three proven coworkers actually produced."""
    return {kind: rows(sql(stmt)) for kind, stmt in ARTIFACT_SQL.items()}


def route_translate(body):
    """Narrative generated from the register by a registered Interaction."""
    decision = str(body.get("decision") or "include")
    notes = str(body.get("notes") or "")
    source = sql(REGISTER_SQL)
    result = upstream("POST", "/execute", {
        "interaction": TRANSLATE_INTERACTION,
        "data": {"source_results": source, "decision": decision, "notes": notes},
    })
    return {"status": result.get("status"), "result": result.get("result")}


def route_signoff(body):
    """
    Write a sign-off to the store.

    Enforces the register's own eligibility rule HERE, not in the browser: a finding whose tier is
    'unverified' must never reach a client-facing artifact. The UI blocks it too, but a rule the
    client alone enforces can be bypassed by anything that speaks HTTP.
    """
    signed_off_by = str(body.get("signed_off_by") or "").strip()
    if not signed_off_by:
        raise UpstreamError(400, "signed_off_by is required — a sign-off needs a named approver")

    requested = body.get("finding_ids") or []
    if not isinstance(requested, list) or not requested:
        raise UpstreamError(400, "finding_ids must be a non-empty list")
    requested = [str(x) for x in requested]

    register = {str(r.get("id")): r for r in rows(sql(REGISTER_SQL))}
    unknown = [i for i in requested if i not in register]
    if unknown:
        raise UpstreamError(400, f"not in the register: {', '.join(sorted(unknown))}")

    blocked = sorted(i for i in requested if str(register[i].get("tier")) == "unverified")
    if blocked:
        raise UpstreamError(422, (
            f"blocked: {', '.join(blocked)} "
            f"{'is' if len(blocked) == 1 else 'are'} unverified and cannot be signed off into a "
            f"client-facing artifact. Vouch for the evidence first."
        ))

    import datetime
    now = datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    row = {
        "signoff_id": f"so-{now.replace(':', '').replace('-', '')}",
        "customer_id": str(body.get("customer_id") or "fenwick-logistics"),
        "finding_ids": ",".join(requested),
        "decision": str(body.get("decision") or "include"),
        "signed_off_by": signed_off_by,
        "signed_at": now,
        "notes": str(body.get("notes") or ""),
        "source": "harness-live UI",
    }
    upstream("POST", "/data/{store}/import", {
        "mode": "append",
        "message": f"HARNESS sign-off by {signed_off_by}",
        "tables": {SIGNOFF_TABLE: {"source": "inline", "data": [row]}},
    })
    # Read back rather than trusting the write's own success response.
    written = rows(sql(
        f"SELECT * FROM {SIGNOFF_TABLE} WHERE signoff_id = '{row['signoff_id']}'"
    ))
    if not written:
        raise UpstreamError(502, "write reported success but the row is not readable back")
    return {"written": written[0]}


def route_signoffs(_body):
    return sql(f"SELECT * FROM {SIGNOFF_TABLE} ORDER BY signed_at DESC")


ROUTES = {
    "/api/register": route_register,
    "/api/runs": route_runs,
    "/api/artifacts": route_artifacts,
    "/api/translate": route_translate,
    "/api/sign-off": route_signoff,
    "/api/sign-offs": route_signoffs,
}


class ProxyHandler(SimpleHTTPRequestHandler):
    def _json(self, status, obj):
        payload = json.dumps(obj).encode()
        self.send_response(status)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(payload)))
        self.end_headers()
        self.wfile.write(payload)

    def do_POST(self):
        handler = ROUTES.get(self.path)
        if handler is None:
            self._json(404, {"error": f"no such route: {self.path}",
                             "routes": sorted(ROUTES)})
            return
        try:
            length = int(self.headers.get("Content-Length") or 0)
            body = json.loads(self.rfile.read(length) or b"{}") if length else {}
        except (ValueError, json.JSONDecodeError):
            self._json(400, {"error": "body must be JSON"})
            return
        try:
            self._json(200, handler(body))
        except UpstreamError as e:
            self._json(e.status, {"error": e.detail})
        except Exception as e:  # never leak a stack trace into the page
            self._json(500, {"error": f"{type(e).__name__}: {e}"})


if __name__ == "__main__":
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    print(f"harness-live on http://127.0.0.1:{PORT}/harness-live.html  (local only)")
    http_test(HandlerClass=ProxyHandler, port=PORT, bind="127.0.0.1")
