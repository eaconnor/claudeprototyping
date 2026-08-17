# Scout addendum — N-able MCP landscape (2026-07-31)

**Gathered:** orchestrator web search + Copilot relay (Beth-pasted). Atlassian primaries timed out this session — ADL-2031 and the Billing MCP page should be re-pulled when the connector recovers before any of the [CS: MEDIUM] rows below are quoted in a handoff.

## Shipped / public

| Thing | Status | Evidence |
|---|---|---|
| **N-able MCP Server** (N-central + N-sight UEM data) | Public preview since 2026-04-14, all customers incl. on-prem | [CS: VERIFIED — status.n-able.com announcement, dossiered at scout_input/03-nzo-mcp-server-announcement.md; developer.n-able.com/gql/docs/mcp] |
| Endpoints | `https://api.n-able.com/mcp-read-only` (queries/reporting) · `/mcp` (read-write, script execution) · `/mcp-preview` | [CS: VERIFIED — developer.n-able.com/gql/docs/mcp, fetched 2026-07-31] |
| Auth | Bearer API token from n-able.app/api-token-management; token inherits creating SSO user's permissions | [CS: VERIFIED — same] |
| Community N-central MCP | github.com/theonlytruebigmac/n-central-mcp — claims full N-central REST coverage (~87 tools) | [CS: MEDIUM — community repo, unvetted] |
| Cove MCP | Third-party page describes one (mytechcentre.ca) | [CS: LOW — not confirmed official] |

**Config added to this project's .mcp.json (2026-07-31):** `n-able` → read-only endpoint, `Authorization: Bearer ${NABLE_API_TOKEN}` (env-var reference; Beth holds the token). Activates on next interactive session.

## In flight internally (Copilot-relayed 2026-07-31 — primaries not yet read)

| Thing | What Copilot says | Evidence |
|---|---|---|
| **Adlumin customer-scoped MCP** — detections and alerts | ADL-2031 ("Developer Portal") | [CS: MEDIUM — Copilot summary of Jira; ADL-2031 fetch timed out this session; re-pull] |
| **Billing MCP Server** — MSP Billing APIs | Confluence page 62237835276, businessapplications space | [CS: MEDIUM — Copilot summary; fetch timed out; re-pull] |
| **MCP as ACP's integration layer** | "ACP LRP July 2026" deck (SharePoint, N-ableQBRs site) describes MCP as the integration layer for AI tools + operational data | [CS: MEDIUM — Copilot summary of a deck not in this corpus] |

## What this changes for qbr-prep-sim

- **Pull 7/8 (Adlumin) upgrade path:** the sim's "pre-connected [A]" chip on Adlumin cards can cite ADL-2031 as in-flight work — the *existence* of an Adlumin MCP is becoming [D]; whether it ships **pre-authed by default** (Jude Scally's actual question) remains [A]/open.
- **Pull 1/5 (N-central, Cove... N-central at least):** a REAL data path exists today via the official read-only MCP — the Run view's simulated pulls have a live counterpart Beth can wire in a later iteration (lab tenant only; seed-data rules unchanged).
- **Billing MCP:** out of scope for the Prep-Assemble sim (billing ≠ the 8 pulls) but relevant to the Technology Budget tab's future data path — parked.
- **Seed-data compliance confirmed:** Copilot independently surfaced Beth's own "Prototype Skill — AI Council Pre-read" doc requiring fictional seed data, no real customer/tenant/pricing. The sim's approach (composite category-level, fictional instance-level, stamped) matches. [CS: HIGH — Beth's own doc, relayed]

### Honor check
- Steps completed: web search (2 rounds) + official docs fetch; .mcp.json config write; Copilot relay recorded at relayed-confidence.
- Steps skipped/failed: ADL-2031 Jira fetch (3 timeouts), Billing MCP Confluence fetch (1 timeout) — Atlassian MCP connector unresponsive this session.
- Cannot verify: everything in the "in flight" table until primaries are re-pulled; whether the ACP LRP deck says what Copilot summarizes.
- Stats produced: none new; endpoint URLs and dates quoted from fetched docs.

### Re-pull attempt 2 — 2026-07-31, later session (failed; tags unchanged)
- Atlassian MCP: not available — plugin connector requires OAuth the non-interactive session cannot run.
- Claude in Chrome (Beth's logged-in Atlassian session): extension unreachable, 2 attempts.
- In-app browser: n-able.atlassian.net → Atlassian login wall; credential entry is out of scope for the agent.
- No Atlassian CLI or API token found on the machine (acli absent, no env vars).
- **Both "in flight" rows remain [CS: MEDIUM — Copilot-relayed].** Do not quote in a handoff until a session with a live Atlassian connector (or Beth-pasted primary text) re-pulls ADL-2031 and Confluence page 62237835276.
