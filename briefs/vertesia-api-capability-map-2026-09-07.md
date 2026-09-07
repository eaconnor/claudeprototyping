---
title: Vertesia API — capability map for UX design
type: technical constraint brief
generated: 2026-09-07
sources:
  - Vertesia OpenAPI spec v1.4.0, fetched live 2026-09-07 from https://docs.vertesiahq.com/api-specs/vertesia (267 endpoints, 33 tags) [CS: VERIFIED — raw spec, parsed programmatically]
  - Vertesia console, authenticated live session, cloud.us1.vertesia.io, N-able/MSP project, 2026-09-07 [CS: VERIFIED — direct observation]
  - briefs/vertesia-brief-2026-08-21.md (prior company/product brief — this file supersedes its "open question #3" on API mapping)
---

# Why this exists

Beth: "vertesia is my given backend... I can make my own UI but I need to understand their backend constraints... assuming I can use APIs to whitelist functionality but I have to use them." This is the API surface, read directly from the live spec (not marketing copy), organized for UX decisions — not a synthesis, not a recommendation on IA.

# The primitive hierarchy (what you'd be designing on top of)

**GenAI** — Environments (model/provider config) → Prompt Templates → Interactions (versioned, forkable, publishable prompt+model definitions — the "skill" unit) → Interaction Runs (single-shot executions) → **Agent Runs** (durable, forkable, restartable, streamable — the actual coworker unit; has `tool_names`, `tool_approval_mode`, `disabled_mcp_collections`, `interactive`, `status`, `activity_state`, `archive_state` on the object). `[CS: VERIFIED — schema AgentRun/Interaction]`

**Content** — Content Object Types (schema catalog: sys / apps / stored, resolvable) → Objects (documents, with analyze/extract/rendition/embeddings/revisions) → Collections (grouping + faceted search, permission propagation) → Files (blob storage, signed URLs) → Rendering (async jobs) → Bulk Operations / Commands (indexing, migrations — admin-only shape).

**Data Store** — schema'd tables, query/mutate, versioned snapshots + rollback, embedded Dashboards with their own versioning. This is a real tabular datastore, separate from Content Objects — not just a RAG layer.

**Workflow** — Processes (definitions) → Tasks (human-in-the-loop: `answer-task`, `complete`, `cancel`) → Workflow Definitions/Rules/Runs (event-driven, `signal`/`query`/`action` on a running instance). Agent Runs and Workflow Runs are siblings, not the same object — a coworker run can spawn/be driven by workflow rules.

**Administration** — Accounts → Projects (this is the tenant boundary — "MSP" is a Project under the N-able Account in your own console) → Audit Trail → Costs (per-run pricing, model prices, export).

**Access Control** — Users, User Groups, **Roles** (`/iam/roles`, built-in + system), **Access Control Entries** (project-scoped, fine-grained), **API Keys** (role-typed: `admin / manager / developer / application / automation / content_processor` — confirmed live in your console's "New API Key" modal).

**Apps & Integrations** — Apps (installable, with a **per-installation tool-allowlist** — `PUT /apps/installations/{installId}/tool-allowlist`), OAuth Providers/Clients/Grants, Remote MCP Connections (external MCP servers, connected per-collection, with their own OAuth handshake).

**Secrets** — stored credentials, including a `fill-browser` action that injects a secret into a browser-use agent sandbox (relevant if any coworker does browser automation).

# The whitelisting mechanism — direct answer

Three real, API-level hooks, not one:
1. **API Key role** — coarse. One of 6 fixed roles per key. This is account/project-level, not per-feature.
2. **Access Control Entries** — fine-grained, project-scoped permission grants. This is the one that maps to "which user/group can touch which object."
3. **App installation tool-allowlist** — the sharpest one for your case. If your UI is built as a Vertesia "App," you scope exactly which tools (of the project's registered tool set — `GET /tools`) that installation can call. This is the literal mechanism for "expose a curated subset, everything else still runs through Vertesia's API underneath."

`[CS: VERIFIED]` — all three confirmed directly against the spec; ACE and API-key role also confirmed live in the console UI this session.

# What's still open (not in the spec, needs the platform team or a support ticket)
- `[?]` Whether "N-able's own UI calling the API directly" vs. "N-able ships an installed App inside Vertesia's shell" is the actual deal shape — the tool-allowlist mechanism only applies to the latter. This is a commercial/architecture question, not one the spec answers.
- `[?]` RA-023 (from the 2026-08-21 brief) is now more answerable but not closed: Access Control Entries and Content Object Types are project-scoped inside Vertesia's schema — so a Customer/Policy/Device/Audit Log primitive built as Vertesia Content Object Types lives in Vertesia's data model, not a portable one. Portability would mean keeping those primitives in N-able's own store and only using Vertesia for the Agent Run / Interaction layer on top.
- `[?]` Multi-tenancy shape at scale — Project = tenant boundary is confirmed, but whether that's one Project per MSP client (thousands) or one Project per N-able account with internal scoping is not in the spec; it's an operational/cost question (see Costs endpoints — priced per-run, so tenant-splitting has a real cost-accounting angle).

# Full endpoint inventory
267 endpoints / 33 tags, parsed from the raw spec — available on request if you want the complete list rather than this summary; not inlined here to keep this readable.
