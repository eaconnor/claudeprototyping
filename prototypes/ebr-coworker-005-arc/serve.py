#!/usr/bin/env python3
"""
serve.py — local server for track-b-overview-live-2026-09-07.html

WHY THIS EXISTS
  Track B proof: the risk-register card in track-b-overview-live-2026-09-07.html must pull REAL
  data from Vertesia's Data Store API, not a hardcoded JS array — but a bearer token can never sit
  in client-side JS (same reasoning as scripts/halo-connect.py: the browser can't call Vertesia
  directly without exposing the credential in every network request/devtools tab). This server
  proxies exactly one route server-side so the browser only ever calls a same-origin relative URL.

CREDENTIALS
  Reads .secrets/vertesia-credentials.json (gitignored). Shape in
  .secrets/vertesia-credentials.json.example. Falls back to VERTESIA_API_BASE / VERTESIA_BEARER_TOKEN
  / VERTESIA_STORE_ID environment variables if the file is missing.

USAGE
  python3 prototypes/ebr-coworker-005-arc/serve.py
  Then open http://127.0.0.1:7833/track-b-overview-live-2026-09-07.html

LOCAL ONLY — binds 127.0.0.1. Do not change the bind address without adding real session auth
in front of the proxy route first (see plan file: /Users/bethconnor/.claude/plans/virtual-munching-rivest.md).
"""

import json
import os
import sys
import urllib.request
import urllib.error
from http.server import SimpleHTTPRequestHandler, test as http_test
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent.parent
SECRETS = REPO / ".secrets" / "vertesia-credentials.json"
PORT = 7833


def load_creds():
    c = {}
    if SECRETS.exists():
        c = json.loads(SECRETS.read_text())
    api_base = os.environ.get("VERTESIA_API_BASE") or c.get("api_base") or "https://api.us1.vertesia.io/api/v1"
    token = os.environ.get("VERTESIA_BEARER_TOKEN") or c.get("bearer_token")
    store_id = os.environ.get("VERTESIA_STORE_ID") or c.get("store_id")
    if not (token and store_id):
        sys.exit(
            f"No credentials found.\n"
            f"  Create {SECRETS} (it is gitignored) or set VERTESIA_BEARER_TOKEN / VERTESIA_STORE_ID.\n"
            f"  See .secrets/vertesia-credentials.json.example for the shape."
        )
    return api_base.rstrip("/"), token, store_id


QUERY_SQL = "SELECT * FROM findings LIMIT 100"


class ProxyHandler(SimpleHTTPRequestHandler):
    def do_POST(self):
        if self.path != "/api/register-query":
            self.send_error(404, "no such route")
            return
        api_base, token, store_id = load_creds()
        url = f"{api_base}/data/{store_id}/query"
        body = json.dumps({"sql": QUERY_SQL}).encode()
        req = urllib.request.Request(url, data=body, method="POST")
        req.add_header("Authorization", f"Bearer {token}")
        req.add_header("Content-Type", "application/json")
        try:
            with urllib.request.urlopen(req, timeout=30) as r:
                payload = r.read()
                status = r.status
        except urllib.error.HTTPError as e:
            payload = e.read()
            status = e.code
        except urllib.error.URLError as e:
            self.send_response(502)
            self.send_header("Content-Type", "application/json")
            self.end_headers()
            self.wfile.write(json.dumps({"error": f"upstream unreachable: {e.reason}"}).encode())
            return
        self.send_response(status)
        self.send_header("Content-Type", "application/json")
        self.send_header("Access-Control-Allow-Origin", "*")
        self.end_headers()
        self.wfile.write(payload)


if __name__ == "__main__":
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    http_test(HandlerClass=ProxyHandler, port=PORT, bind="127.0.0.1")
