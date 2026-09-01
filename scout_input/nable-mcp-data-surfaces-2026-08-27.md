# N-able MCP data surfaces — what's exposed / planned (2026-08-27)

SOURCE: Research dump pasted by Beth from a session with internal SharePoint/Jira/Confluence access, 2026-08-27.
CS_BASE: [CS: HIGH] — internal N-able docs cited with links; several items explicitly planned/POC not live.
Core claim (N-query) independently verified by Claude against live Atlassian (QSR-4141) — [CS: VERIFIED].
FILED-BY: Claude, preserved per scout discipline so it cannot die in context.

## The architecture (internal direction)
**MCP-first, GraphQL underneath, REST where needed.**

```
Claude / Copilot / Cursor
        │  MCP
     N-query               ← the core AI-facing layer
        │  GraphQL (federated supergraph)
   ┌────┼──────────┬─────────┐
 N-central  N-sight  Billing  Adlumin  Cove  …
```

## N-query — the core layer  [CS: VERIFIED — QSR-4141, retrieved 2026-08-27]
- N-able's **Federated GraphQL API exposed via MCP** (Apollo MCP Server, backed by the N-able GraphQL supergraph). Jira component: "N-query: The N-able Federated GraphQL API."
- Public API surface for AI agents (Claude/Copilot/Gemini). Exposes: **device fleet health, patch compliance, security posture, customer hierarchy, and more.**
- **Live status:** public HTTPS endpoint = **Done (publicly reachable)**; **OAuth 2.0 = WIP** (critical-path blocker as of Aug 2026). Not yet in Anthropic's Connectors Directory — submission pending OAuth + docs + GRC/Security review. So: **usable today via custom config, not yet one-click.**
- Strategic: aiming to be first MSP RMM vendor in Anthropic's directory. (QSR-4141, project Quasar, reporter Dhanik Alkegama.)
- Also cited: UXBB-2766 "Public MCP server documentation" [CS: HIGH — not re-verified here].

## Product MCP surfaces  [CS: HIGH — internal feature sheets, Beth-provided]
- **N-central MCP** ✅ live — device fleet, asset inventory, telemetry, natural-language queries, **supported actions (not just read)**, multi-tool workflows. (Seismic feature sheet.)
- **N-sight MCP** ✅ live — operational data, NL querying, actions, cross-platform orchestration. (Seismic feature sheet.)
- **Billing MCP** 🔶 POC/in-progress — invoice totals, usage trends, billing/distributor data, charge explanations, product usage. (Confluence: Billing MCP Server; MCP Enablement for Billing API.)
- **Adlumin MCP** 🔶 planned initiative — customer-scoped: detection history, alert data, identity context, endpoint context, investigation workflows. (ADL-2031.) [CS: HIGH — planned, not verified here]
- **N-sight Classic** 🔶 being added to Fusion/N-query — monitoring checks, automated task results, device-level operational info. (RFC, space MAT.)

## Developer portal (public)  [CS: HIGH — developer.n-able.com]
Advertises: N-central API · N-sight API · **Cove API** · Take Control API · **Billing API** · **GraphQL API** · **N-able MCP** (+ "Explore N-able MCP" entry point).

## For ACP / EBR coworker — MCP-accessible datasets
Device inventory · patch state · vulnerabilities · monitoring status · customer hierarchy · security posture · billing/usage · Adlumin detections (planned) · N-sight Classic checks/tasks (planned).

## Implication for the EBR runbook
Most N-able-sourced EBR areas (identity-adjacent, patching/network, devices, security posture, customer hierarchy) route through **N-query (GraphQL-over-MCP)** — not per-product MCP silos. Adlumin MCP (planned) is the real feed for the risk/detections area. Cove = Cove API (REST/bridge). usecure still has no connector. M365/Halo remain external MCP.
