---
title: EBR Coworker — connector wiring test runbook
client: Technica
audience: engineer standing up the MCP connectors, not the practitioner running the EBR
current_state: 0/7 sources reachable as of 2026-08-27 — see risk-register.technica-2026-08-27.md
purpose: per-connector test procedure to move that number, with a pass/fail check for each
grounded_in: .mcp.json.example (connector manifest) · ebr-coworker.runbook.md (Sources table) · briefs/technica-ebr-runbook-draft-2026-08-21.md
---

# EBR Coworker — connector wiring test runbook (Technica)

This is not the EBR runbook (`ebr-coworker.runbook.md` — that's the practitioner-facing one Claude Code
executes). This is what an engineer runs **before** anyone says "run the EBR coworker for Technica" —
proof that each declared connector actually returns tools, against the *client's* data, not a demo tenant.

**Rule this whole document enforces:** declared in `.mcp.json` ≠ connected. Verify every entry with `/mcp`
before trusting a pull. [CS: VERIFIED — 2026-08-27, 0 servers returned tools in-session at that date]

---

## 0. Prereqs

1. This folder (`md-coworker/`) as a git repo, opened in Claude Code.
2. `.mcp.json.example` copied to `.mcp.json`, placeholders filled (secrets, not this file — see §5).
3. `/mcp` command available in your Claude Code session to list configured servers and their tool counts.

---

## 1. Per-connector test procedure

For each connector below: configure → restart Claude Code → run `/mcp` → confirm tool count > 0 →
run the smoke-test pull → confirm the pull returns Technica's data, not a placeholder/demo response.

### 1a. N-Central / N-sight — via N-query (GraphQL/MCP)

- **Runbook areas it feeds:** patching & network, devices & lifecycle, security posture, customer hierarchy.
- **Known blocker:** OAuth is WIP (QSR-4141). Usable today only via custom config + bearer token, not
  one-click. [CS: VERIFIED — QSR-4141, 2026-08-27]
- **Exact supergraph URL is `⟨VERIFY⟩`** — the placeholder in `.mcp.json.example` mirrors the repo-root
  `.mcp.json` value; confirm the real N-query endpoint with the Quasar team before trusting it.
- **Test:**
  1. Set `NABLE_API_TOKEN`. Without it, the server exposes 0 tools (observed 2026-08-27) — that is a
     silent failure mode, not an error, so don't take "no crash" as "connected."
  2. `/mcp` → confirm `n-query` lists tools (a positive tool count, not just "configured").
  3. Smoke test: pull device fleet health or patch compliance for **Technica specifically** — confirm the
     customer-hierarchy scope resolves to Technica's org, not the operator's own N-able tenant.
- **Pass:** tool count > 0, pull returns Technica-scoped data with a timestamp.
- **Fail modes to log, not paper over:** 0 tools (token missing/expired), tools present but data scoped
  to the wrong org (hierarchy misconfigured).

### 1b. Microsoft 365 — official Microsoft MCP

- **Runbook area:** identity & access.
- **Known blocker — the one most likely to produce a false pass:** this MUST be scoped to **Technica's**
  tenant, not the operator's own. A pull against the wrong tenant returns real-looking data that is
  `Source-Unavailable` for this client, not a finding. [CS: VERIFIED — flagged explicitly in
  `.mcp.json.example`]
- **Test:**
  1. Configure per Microsoft's MCP setup docs against the client-tenant connection (delegated permissions
     only — M365 app-only/daemon workflows aren't supported; there is no service-principal pattern here).
  2. `/mcp` → confirm `microsoft-365` lists tools.
  3. Smoke test: pull identity/access data and **check the tenant ID in the response matches Technica's**,
     not the operator's. This check is the whole test — a tool count > 0 against the wrong tenant is a fail.
- **Pass:** tool count > 0 AND tenant ID confirmed as Technica's.
- **Fail:** wrong tenant scope (log as Source-Unavailable, not a finding) — this was the actual failure
  recorded 2026-08-27.

### 1c. HaloPSA — real MCP server

- **Runbook area:** incidents & tickets.
- **Test:**
  1. Fill `HALO_INSTANCE_URL` + `HALO_API_TOKEN` for Technica's instance.
  2. `/mcp` → confirm `halo` lists tools. Not present in-session as of 2026-08-27 — that's the baseline
     to beat, not a description of what to expect.
  3. Smoke test: pull open tickets/assets, confirm they belong to Technica's Halo instance.
- **Pass:** tool count > 0, ticket/asset data scoped to Technica.

### 1d. Cove — backup & recovery

- **Runbook area:** backup & recovery.
- **Known blocker — this one isn't a config problem, it's missing work:** no vendor MCP exists. Cove is
  REST-only (`developer.n-able.com`). `.mcp.json.example`'s `cove` entry points at a **dev bridge that
  does not exist yet** — a thin MCP wrapper over the Cove REST API. [CS: VERIFIED]
- **Test — this is a build task before it's a wiring task:**
  1. Build the bridge (not in scope of this runbook — track separately).
  2. Once built and hosted, fill `COVE_REST_BRIDGE_URL` + `COVE_API_TOKEN`.
  3. `/mcp` → confirm `cove` lists tools.
  4. Smoke test: pull a restore-test result, confirm it's Technica's protected devices.
- **Pass:** tool count > 0 against the *hosted bridge*, not the raw Cove REST endpoint (that's not MCP).
- **Until the bridge exists:** backup & recovery stays by-hand, capped at Estimated. Don't wire a fake
  entry just to make `/mcp` show a tool count — that would be worse than leaving it Source-Unavailable.

---

## 2. Do NOT attempt to wire these — confirmed absent, not just unconfigured

| Source | Status | Why it's not in §1 |
|---|---|---|
| usecure | No MCP, no confirmed public API | [CS: VERIFIED 2026-08-27]. Awareness training stays by-hand / client-interview, capped Estimated. Resolve by asking the vendor — don't infer a connector from the marketing site. |
| Adlumin | Planned (ADL-2031) | Roadmap, not live. Don't point a config entry at it and call it wired. |
| Billing MCP | POC, not live | Optional area; leave unwired until it ships. |

---

## 3. End-to-end check, once individual connectors pass

1. Run each smoke test in §1 independently first — don't skip straight to the full cycle, or a failure
   in one connector reads as a failure in all of them.
2. Say **"run the EBR coworker for Technica."**
3. Open `risk-register.md` (not the `.technica-2026-08-27.md` snapshot — that one is the pre-wiring
   baseline, kept as the honest record of the 0/7 state). Confirm rows that used to read
   `Source-Unavailable` now carry a grade (🔴🟠🟢) with a confidence tier and an evidence trace
   (source, tool, pull time) instead of a blank dash.
4. Any area still `Source-Unavailable` after wiring is either genuinely blocked (§2) or a connector that
   still needs debugging — the register itself tells you which, per row.

**Exit criteria for "wired":** every connector in §1 shows tool count > 0 in `/mcp` AND its smoke test
returns Technica-scoped data. Areas in §2 are exempt — they exit as "confirmed no connector exists,"
not as a wiring failure.

---

## 4. Credential handling

Same rule as the rest of this project: credentials go in `.secrets/` (gitignored) or env vars. Never in
the browser, never in a commit, never pasted into a chat window. `.mcp.json` itself should reference
env vars (`${NABLE_API_TOKEN}` etc.), not literal secrets — check `git diff` before committing `.mcp.json`
to make sure a real token didn't get typed into a placeholder field by hand.

---

## Sources

- `.mcp.json.example` — the connector manifest this runbook tests against, including the exact blockers
  quoted above
- `risk-register.technica-2026-08-27.md` — the recorded 0/7 baseline this runbook exists to move
- `ebr-coworker.runbook.md` §"Sources" table and §"Suggesting connectors" — confidence ceilings per area
  and the `search_mcp_registry` / `suggest_connectors` caveat (N-able's own connectors aren't in the
  public directory yet)
- `briefs/technica-ebr-runbook-draft-2026-08-21.md` — why M365 must be client-tenant-scoped, why usecure
  is `[?]` not `[A]`
