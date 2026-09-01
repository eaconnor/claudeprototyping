# Alpha RACE — Jira access note (VERIFIED via Atlassian MCP)

**Orchestrator reached live Jira via the Atlassian MCP server** (cloudId 21ab04ef…). Scout itself could not (Read/WebSearch/WebFetch only; REST returned 410). Tickets below are now **first-party, pulled from the live tracker 2026-06-25.** See `05-jira-verified-tickets.md` for full bodies.

## Verified tickets

| ID | Type | Status | Summary | Confidence |
|----|------|--------|---------|------------|
| ADL-1838 | Initiative | Open | Incident Map: Multi-Event Detection Correlation & Incident Story Generation | [CS: VERIFIED] |
| ADL-1839 | **Epic** | **In Progress** | (same title as initiative) | [CS: VERIFIED] |
| PUT-1166 | **Story** | **Done** | Phase 1: Incident map (aka RACE) Dashboard | [CS: VERIFIED] |

## Corrections to the local brief's secondhand claims
- **"Priority 2.57"** is the **Initiative Prioritization Scorecard score on ADL-1838** (Score column), not ADL-1839's priority field. Both ADL tickets show Jira `priority: Undefined`. [CS: VERIFIED]
- **ADL-1839 is the Epic and is In Progress** (local brief said only "epic, priority 2.57"). [CS: VERIFIED]
- **PUT-1166 is Done, Highest priority**, a design Story — not just "Phase 1 shipped." Eng Lead James Moore, PM Lead Raj Dhesi. [CS: VERIFIED]
- **RACE = Rapid Alert Correlation Engine** — confirmed in ADL-1838 ("Alpha … RACE – Rapid Alert Correlation Engine"). [CS: VERIFIED]
- Project also known as **Fuzz → Alpha → RACE**. [CS: VERIFIED]
- **"Hilda" is real** — named internal/customer-feedback source in ADL-1838, March 2026. The "3-4 tickets per incident" pattern is quoted in full in the Epic. [CS: VERIFIED as a ticket claim]

## NOT found in live tickets (remain local-only, lower confidence)
- **47 alerts → 12 incidents** and **42min → 17min** appear in the local brief/prototype but NOT in ADL-1838/1839/PUT-1166. [CS: MEDIUM — internal-test claim, no ticket corroboration]. Treat as illustrative seed, not sourced metric.
- No Confluence page surfaced. Not searched exhaustively.

## SEED-DATA GUARD (for build)
Real names appear in source: **James Moore, Raj Dhesi, Hilda**, the Figma URL `beta-people-77660574.figma.site`, Teams meeting links. **None of these go in the prototype.** Source docs only. Prototype uses fictional analyst/customer names per Pete Hegseth test.
