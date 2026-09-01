#!/usr/bin/env python3
"""
halo-connect.py — talk to a live HaloPSA trial tenant.

WHY THIS EXISTS
  The EBR coworker prototype (prototypes/ebr-coworker-004-assembly/) pulls six sources from
  fixture files. This script replaces ONE of them — Halo — with real data from a real tenant.
  That is the Wizard-of-Oz step: real schema, real API, real auth, fictional content.

WHY A SCRIPT AND NOT A BROWSER FETCH
  The browser can't call Halo directly (CORS), and putting a bearer token in client-side JS
  would be handing a live credential to a web page. Instead: this script authenticates locally,
  pulls, and writes prototypes/ebr-coworker-004-assembly/sources/halo.json. The prototype keeps
  fetching a local file — but that file now contains real data from a real Halo instance.

CREDENTIALS — READ THIS
  Never paste an API key into a chat window, a commit, or a prototype.
  Put them in .secrets/halo-credentials.json (gitignored) shaped like:

      {
        "instance_url": "https://YOURTENANT.halopsa.com",
        "client_id": "...",
        "client_secret": "...",
        "tenant": ""
      }

  Or set HALO_URL / HALO_CLIENT_ID / HALO_CLIENT_SECRET as environment variables.
  In Halo: Configuration > Integrations > Halo API > add an Application, grant it "all" scope
  (or read-only if you only intend to pull), and note the Client ID and Secret.

CONFIDENCE
  [CS: MEDIUM] The auth flow and endpoint paths below follow HaloPSA's standard OAuth2
  client_credentials pattern. They were NOT verified against a live tenant — scout could not
  read Halo's API docs (per-tenant, JS-rendered; see scout_input/02-halopsa-ticket-asset-schema.md).
  Run `probe` FIRST. It reports what it actually finds instead of assuming.

USAGE
  python3 scripts/halo-connect.py probe     # auth + report what this tenant exposes
  python3 scripts/halo-connect.py pull      # write sources/halo.json from live data
  python3 scripts/halo-connect.py seed      # create the fictional Fenwick scenario (WRITES DATA)
"""

import json
import os
import sys
import urllib.request
import urllib.parse
import urllib.error
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
SECRETS = REPO / ".secrets" / "halo-credentials.json"
OUT = REPO / "prototypes" / "ebr-coworker-004-assembly" / "sources" / "halo.json"


def load_creds():
    if SECRETS.exists():
        c = json.loads(SECRETS.read_text())
    else:
        c = {}
    url = os.environ.get("HALO_URL") or c.get("instance_url")
    cid = os.environ.get("HALO_CLIENT_ID") or c.get("client_id")
    sec = os.environ.get("HALO_CLIENT_SECRET") or c.get("client_secret")
    if not (url and cid and sec):
        sys.exit(
            f"No credentials found.\n"
            f"  Create {SECRETS} (it is gitignored) or set HALO_URL / HALO_CLIENT_ID / HALO_CLIENT_SECRET.\n"
            f"  See the docstring at the top of this file for the shape."
        )
    return url.rstrip("/"), cid, sec, c.get("tenant", "")


def post_form(url, data, headers=None):
    body = urllib.parse.urlencode(data).encode()
    req = urllib.request.Request(url, data=body, headers=headers or {}, method="POST")
    req.add_header("Content-Type", "application/x-www-form-urlencoded")
    with urllib.request.urlopen(req, timeout=30) as r:
        return json.loads(r.read().decode())


def get_json(url, token, params=None):
    if params:
        url = f"{url}?{urllib.parse.urlencode(params)}"
    req = urllib.request.Request(url)
    req.add_header("Authorization", f"Bearer {token}")
    with urllib.request.urlopen(req, timeout=60) as r:
        return json.loads(r.read().decode())


def authenticate():
    """HaloPSA OAuth2 client_credentials. [CS: MEDIUM — unverified against a live tenant.]"""
    url, cid, sec, tenant = load_creds()
    token_url = f"{url}/auth/token"
    if tenant:
        token_url += f"?tenant={urllib.parse.quote(tenant)}"
    payload = {
        "grant_type": "client_credentials",
        "client_id": cid,
        "client_secret": sec,
        "scope": "all",
    }
    try:
        tok = post_form(token_url, payload)
    except urllib.error.HTTPError as e:
        detail = e.read().decode()[:400]
        sys.exit(
            f"Auth failed: HTTP {e.code} at {token_url}\n{detail}\n\n"
            f"Things that are actually wrong when this happens:\n"
            f"  - the Application in Halo has no permissions granted\n"
            f"  - scope should be narrower than 'all' for your setup\n"
            f"  - hosted multi-tenant instances need the ?tenant= param (set \"tenant\" in the creds file)\n"
            f"  - the auth path differs on your version — check {url}/api/swagger"
        )
    if "access_token" not in tok:
        sys.exit(f"No access_token in response: {json.dumps(tok)[:400]}")
    return url, tok["access_token"]


def cmd_probe():
    """Verify auth and report what this tenant actually exposes. Run this first."""
    url, token = authenticate()
    print(f"AUTH OK  {url}\n")
    for name, path, params in [
        ("Clients", "/api/Client", {"count": 5}),
        ("Assets", "/api/Asset", {"count": 5}),
        ("Tickets", "/api/Tickets", {"count": 5}),
        ("Asset types", "/api/AssetType", None),
        ("Ticket types", "/api/TicketType", None),
    ]:
        try:
            data = get_json(f"{url}{path}", token, params)
            if isinstance(data, dict):
                # Halo wraps collections under a resource-named key; find it.
                key = next((k for k, v in data.items() if isinstance(v, list)), None)
                rows = data.get(key, []) if key else []
                total = data.get("record_count", data.get("count", len(rows)))
                print(f"  {name:<14} OK   {total} record(s), collection key = '{key}'")
                if rows:
                    print(f"                 fields: {', '.join(sorted(rows[0].keys())[:14])}")
            elif isinstance(data, list):
                print(f"  {name:<14} OK   {len(data)} record(s), bare array")
                if data:
                    print(f"                 fields: {', '.join(sorted(data[0].keys())[:14])}")
        except urllib.error.HTTPError as e:
            print(f"  {name:<14} HTTP {e.code} — {e.reason}")
        except Exception as e:
            print(f"  {name:<14} ERROR — {e}")
    print(f"\nFull API reference for YOUR instance: {url}/api/swagger")
    print("Compare the field names above against scout_input/02-halopsa-ticket-asset-schema.md")
    print("— that file was built from third-party wrappers, not vendor docs. This is the check.")


def cmd_pull():
    """Pull live data and write it into the prototype's source fixture."""
    url, token = authenticate()

    def collection(path, params=None):
        data = get_json(f"{url}{path}", token, params)
        if isinstance(data, list):
            return data
        key = next((k for k, v in data.items() if isinstance(v, list)), None)
        return data.get(key, []) if key else []

    clients = collection("/api/Client", {"count": 100})
    assets = collection("/api/Asset", {"count": 200, "includeassetfields": "true"})
    tickets = collection("/api/Tickets", {"count": 200, "includeassetkeyfield": "true"})

    out = {
        "_source": "Halo",
        "_kind": "PSA / ticketing",
        "_provenance": f"LIVE PULL from {url} via scripts/halo-connect.py. "
                       f"Real HaloPSA schema, real API, real auth. Content is whatever is in the "
                       f"trial tenant — seed it with fictional data only (CLAUDE.md §9b).",
        "_live": True,
        "_pulledFrom": url,
        "clientCount": len(clients),
        "clients": clients,
        "assets": assets,
        "tickets": tickets,
    }
    OUT.write_text(json.dumps(out, indent=2))
    print(f"Wrote {OUT}")
    print(f"  {len(clients)} clients · {len(assets)} assets · {len(tickets)} tickets")
    if not assets and not tickets:
        print("\n  Tenant looks empty. Run `seed` to create the fictional Fenwick scenario.")
    print("\n  NOTE: the prototype's reconcile step expects assets to carry a serial-ish key field.")
    print("  Check `probe` output for what your tenant actually calls it before wiring it up.")


FICTIONAL_SEED = {
    "client": {"name": "Fenwick Logistics"},
    "assets": [
        {"inventory_number": "BRK-SRV-01", "key_field": "VMW-4471-0001", "note": "File server"},
        {"inventory_number": "BRK-SRV-02", "key_field": "VMW-4471-0002", "note": "Application server"},
        {"inventory_number": "FEN-WKS-021", "key_field": "None", "note": "Placeholder serial — the collision trap"},
        {"inventory_number": "FEN-WKS-033", "key_field": "None", "note": "Second placeholder — same trap"},
        {"inventory_number": "FEN-NET-GW1", "key_field": "B4:FB:E4:11:0A:77", "note": "Serial is a MAC — real behaviour for network gear"},
    ],
    "tickets": [
        {"summary": "Nightly job failed, rerun manually", "asset": "BRK-SRV-01"},
        {"summary": "Repeat failure, retention window shortened to clear space", "asset": "BRK-SRV-02"},
        {"summary": "Slow login, pending updates", "asset": "FEN-WKS-021"},
        {"summary": "Client asked what our incident process is - no documented answer to send", "asset": None},
        {"summary": "Guest wifi extended to mezzanine, HQ only", "asset": "FEN-NET-GW1"},
    ],
}


def cmd_seed():
    """Create the fictional Fenwick scenario in the trial tenant. THIS WRITES DATA."""
    print("This will CREATE records in your Halo trial tenant:")
    print(f"  1 client, {len(FICTIONAL_SEED['assets'])} assets, {len(FICTIONAL_SEED['tickets'])} tickets")
    print("  All fictional (Fenwick Logistics). Nothing real, per CLAUDE.md §9b.\n")
    print("  Deliberately included: two assets with placeholder serial 'None' and one whose")
    print("  serial is a MAC address — the documented entity-resolution traps. The point is to")
    print("  find out whether a real Halo instance reproduces them.\n")
    if input("Type 'seed' to proceed: ").strip() != "seed":
        sys.exit("Aborted. Nothing written.")

    url, token = authenticate()
    print("\nNOT YET IMPLEMENTED — deliberately.")
    print(f"Halo's create-endpoint payload shapes vary by version and configuration, and this")
    print(f"script has not been verified against a live tenant. Writing guessed payloads into")
    print(f"your instance would be exactly the fabrication this project keeps catching.")
    print(f"\nRun `probe` first, check {url}/api/swagger for the POST shapes, and this function")
    print(f"gets written against what's actually there — not against what I assume.")


if __name__ == "__main__":
    cmd = sys.argv[1] if len(sys.argv) > 1 else "probe"
    {"probe": cmd_probe, "pull": cmd_pull, "seed": cmd_seed}.get(
        cmd, lambda: sys.exit(f"Unknown command '{cmd}'. Use: probe | pull | seed")
    )()
