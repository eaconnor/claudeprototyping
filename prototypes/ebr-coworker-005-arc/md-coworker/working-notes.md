# Working notes — Technica EBR cycle attempt · 2026-08-27

> Candid, internal. Never merged into the client-facing register (invariant 2).
> This file is the honest record of the run: what was reachable, what wasn't, and why no client
> findings were produced. **Nothing here is invented client data** (CLAUDE.md §4).

## Run summary

Attempted: stand up the coworker for **Technica** and run one EBR cycle from live pulls.
Result: **BLOCKED — zero verified data sources reachable, and no Technica input file present.**
Per the runbook (unreachable source → by-hand, capped Estimated; absence of data is a finding;
do not invent), the cycle stops at Ingest with every area logged `Source-Unavailable`.

## Step 1 — Ingest: source reachability (the pull log)

| Area | Declared source | Reachable now? | Grade | Evidence trace |
|---|---|:--:|---|---|
| Identity & access | M365 (Technica tenant) | ❌ | Source-Unavailable | M365 server loaded but scoped to Beth's N-able tenant, not Technica's — 2026-08-27 |
| Patching & network | N-central via N-query | ❌ | Source-Unavailable | `n-able` server declared in .mcp.json; 0 tools initialized this session — 2026-08-27 |
| Devices & lifecycle | N-central / N-sight via N-query | ❌ | Source-Unavailable | same — N-query not initialized — 2026-08-27 |
| Security posture / vulns | N-query (+ Adlumin planned) | ❌ | Source-Unavailable | N-query not initialized; Adlumin MCP is roadmap, not live — 2026-08-27 |
| Incidents & tickets | Halo | ❌ | Source-Unavailable | no Halo server present in .mcp.json — 2026-08-27 |
| Backup & recovery | Cove (REST bridge) | ❌ | Source-Unavailable | no Cove bridge stood up — 2026-08-27 |
| Awareness training | usecure | ❌ (by design) | Source-Unavailable | no MCP / no confirmed API — by-hand only, capped Estimated |
| Billing / usage | Billing MCP (POC) | ❌ (roadmap) | n/a | POC, not treated as live |
| Carry-forward | prior `risk-register.md` | ⚠️ | see note | a Fenwick seed register exists; no committed *Technica* register to delta against |
| Technica EBR file | operator's 8-tab Excel | ❌ | Source-Unavailable | file not in repo; 8 tabs / opening move / gap-logic are ⟨VERIFY with David⟩ |

**Reachability check performed (live, 2026-08-27):**
- Registry search for n-able / n-central / RMM / Halo → `[]`. Confirms QSR-4141 (N-able not yet in the connectors directory). [CS: VERIFIED — live check]
- `n-able` MCP server IS declared in root `.mcp.json` (`https://api.n-able.com/mcp-read-only`, auth header present) but exposed **no tools** this session. Declared ≠ connected. [CS: VERIFIED — live check]
- The one loaded Microsoft server is Beth's own tenant — wrong scope for a Technica client pull. [CS: HIGH]

## Steps 2–8 — not run

Continuity/delta, judging, translation, getting-business, liability, state-of-union, chooser all
require data that did not arrive. Not run. **No grades proposed** — a grade with no measured input
would be Unverified, and Unverified is hard-blocked from the client surface (invariant 3).

## What a human must supply to unblock (hand this to the dev / to David)

1. **N-query auth that actually initializes tools** — the declared endpoint returns no tools; OAuth is
   WIP (QSR-4141). Someone with a working token must confirm the server connects (`/mcp` shows its
   status/error). Until then, device/patch/security/hierarchy are all by-hand, capped Estimated.
2. **Technica's tenant M365 credentials** (not Beth's tenant) for identity/access.
3. **Halo instance URL + token**; **Cove REST bridge** (dev work — no vendor MCP).
4. **Technica's actual EBR spreadsheet** + confirmation of the 8 tabs, David's opening move, and his
   gap-logic (⟨VERIFY with David⟩). Without it, even a reachable stack has no operator artifact to enrich.
5. **Sign-off owner named** — David (technical) or Vanessa (account lead)? Unresolved upstream.

## Seam flagged (not resolved — Beth's call)

The seed `risk-register.md` is titled **Fenwick Logistics**; `learned-judgment.md` is titled
**Technica**. Same folder, two client names. Decide whether Technica replaces the Fenwick seed or sits
in its own per-client path (`clients/technica/…`, per the runbook's "one register per customer"). I did
**not** overwrite the Fenwick seed (§14 — don't destroy the shipped example unasked).
