# Scout dossier — What the ACP repo provides under a QBR-prep simulation
**Date:** 2026-07-31 · **Scout:** repo read of `/Users/elizabeth/Desktop/Bethproto/acp-core-main-3/`
**Task:** ingredients for a lo-fi prototype: MSP operator pulls data sources (via MCP connections) to prep a QBR/EBR.
**Method note:** No shell/grep available to this scout — findings come from direct file reads of named paths. "Not found" claims are scoped to files examined, not the whole tree. [WOBBLY] on any absence claim.

---

## 1. What ACP is, current state

- ACP (Agent Control Plane) = multi-tenant "agent factory" backend: users define **Coworkers** (AI agents) and **Experts** (atomic scoped agents), wire them to external tools through a central **MCP gateway**, run them durably on **Temporal**; agents execute on AWS Strands + Bedrock. FastAPI monorepo; all real code in `apps/backend`; `apps/fake-mcps` is "planned but empty." [CS: VERIFIED — `CLAUDE.md` lines 5–10]
- **No frontend exists in this repo.** Backend + API + auto-generated control-plane MCP only; builder UI is explicitly out of scope ("Frontend builder UI implementation … screens are a separate frontend effort"). [CS: VERIFIED — `specs/004-ai-coworker-registry/spec.md` Out of Scope]
- **No authentication or User/Account entity yet.** Request principal hardcoded to a fixed MSP-admin actor (`app/identity.py`); roles enum = `platform_author / msp_admin / technician / service`; cross-tenant access returns 404, never 403. [CS: VERIFIED — `CLAUDE.md` "Account scoping / no auth yet"]
- Two MCP directions, deliberately distinct: `mcp/` = **inbound** gateway (external tool servers → agents); `api/control_plane_mcp.py` = **outbound** control plane (ACP's own API auto-exposed as MCP tools to AI clients, `FastMCP.from_fastapi`, mounted at `/mcp`). [CS: VERIFIED — `CLAUDE.md` "MCP gateway + tool scoping" and "Control-plane MCP"]
- Runs have **no token streaming** — progress = artifacts appended to `run_audit`, polled via `GET /runs/{id}/audit?after=<seq>`. Approval gates pause a run until a Temporal signal from `POST /runs/{id}/approval`. [CS: VERIFIED — `CLAUDE.md` Temporal section] (Relevant substrate for a "live progress feed" screen.)
- Domain vocabulary (locked): Coworker ≠ Expert ≠ Agent; **MCP Server** = endpoint definition, **MCP Instance** = an account's configured connection holding that account's encrypted credentials. [CS: VERIFIED — `CLAUDE.md` "Domain vocabulary"]
- Spec-driven Figma workflow exists (branch-linked Figma files, Apex design system skills, `design-from-intent`). [CS: VERIFIED — `CLAUDE.md` "Spec-Driven Design — Figma Workflow"]

---

## 2. FSN-83143 — AI Coworkers intent spec (the QBR Advisor's parent)

Source: `Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md` v0.1.0, Draft, owners: Nicole Reineke (product), Meaghan Reinecke (UX), Chris Dunlop (eng). [CS: VERIFIED]

### Actor model (verbatim rows, §3)
- **USER-001 — MSP Admin**: "Create, configure, clone, activate, pause, archive Coworkers; promote autonomy; manage team access" · "Full CRUD on tenant-owned Coworkers; read-only on platform Coworkers; can clone platform Coworkers; can activate/deactivate; can promote autonomy" · "Primary creator persona." [CS: VERIFIED]
- **USER-002 — MSP Technician**: "Run Coworkers on-demand; approve medium/high-risk actions during runs; view execution logs" · "Can trigger on-demand if permitted; cannot activate or modify Coworkers unless granted admin rights; can approve actions up to their permission level" · approval delegation is open question OQ-001. [CS: VERIFIED]
- **USER-005 — Audit / Compliance Reviewer**: "Review execution history, audit trail, AI-vs-human actor attribution" · "Read-only access to audit log" · "External or internal auditor role." [CS: VERIFIED]
- (Also present: USER-003 AI Operator — Claude Code, N-zo — can draft, cannot activate, cannot approve own changesets; USER-004 N-able Platform.) [CS: VERIFIED]

### DEC-006 — QBR Advisor
- Decision log DEC-006 (2026-06-30, Nicole Reineke): "v1 platform default Coworkers: QBR Advisor, Alert Flood Suppressor, Incident Response Analyst, Environment Health Monitor, Security Tabletop … Priority scores from 22-partner interview research; these five had the clearest evidence and broadest MSP applicability." [CS: VERIFIED]
- Catalog table, row 1: **QBR Advisor · Business Reporting · Priority Score 2.90 · "Generate client-ready QBR narratives and security/posture summaries."** Table is "ordered by priority score from partner research" — QBR Advisor is #1 (2.90 is the lowest/best score of the five; Security Tabletop is 5.00). [CS: VERIFIED — §6 table]
- Each default ships with: pre-selected AI Experts, a platform-owned Runbook (`ownership: platform`), conservative guardrails (low=auto, medium=approval, high=manual), default Value Ledger baselines, read-only/clone-only. [CS: VERIFIED — §6]
- Evidence basis: SRC-003 "N-UEM AI Coworker Use Cases — 22-Partner Interview Catalog" (N-UEM-Coworker-Use-Cases.docx). The .docx itself is not in this repo snapshot as far as probed. [CS: VERIFIED that it's cited; CS: UNKNOWN whether the underlying doc is reachable] [WOBBLY — priority scores trace to one 22-partner interview catalog]

### INV-PROD-005 (verbatim)
> "Every completed run writes a Value Ledger entry. A run that produces no value entry is a system error." — Evidence required: "Integration test: run completion → verify Value Ledger write." [CS: VERIFIED — §7]
- Companion: REQ-012 "Every completed Coworker run writes at least one entry to the Value Ledger (IC-2026-002)"; EDGE-009 timeout runs get a zero-value entry with `outcome_status: timeout`. [CS: VERIFIED]

### §5 UX intent — north star (verbatim)
> "**Value is the north star.** Time-saved estimates appear during script selection and on the Coworker card. The outcome of the system is always framed in saved time and reduced headcount." [CS: VERIFIED — §5]
- Desired feeling: "Controlled, trustworthy, professional, and efficient. Like configuring something that will reliably work on your behalf." Should NOT feel: "Risky, opaque, over-automated, or like a black box." [CS: VERIFIED]
- Other §5 principles: "Confidence at every stage," "Risk is visible, not hidden," "The AI does the work; the human retains control," "Multiple paths to the same result." [CS: VERIFIED]
- INV-TASTE-001: attribution always by name — "Resolved by AI Coworker Jacqueline — never 'Resolved by AI' or 'Resolved by Bot'." INV-TASTE-002: "Value (time saved) is always visible." [CS: VERIFIED]
- Core value proposition (§2): "**take labor and turn it into software** … reducing the number of technicians needed to deliver the services they have contracted." [CS: VERIFIED]

---

## 3. FSN-82692 — MSP Onboarding: data-source connection material

Source: `Intent Specs/FSN-82692_MSP Onboarding — Signup to First Coworker Run.md` (frontmatter id IC-2026-004), Draft. [CS: VERIFIED]

- 20-minute ceiling, signup → PSA connection → Coworker selection → config → first run → approval moment → schedule. [CS: VERIFIED]
- **Data-source connection = PSA, not MCP-by-name, in the onboarding UX.** Step 2 "Connect Your PSA": PSA type selector (ConnectWise Manage / Autotask / HaloPSA / Other); PSA-specific credential fields render conditionally; ConnectWise fields: Company URL, Company ID, Client ID, Public Key, Private Key; "Test Connection" does a live validation; success shows real data ("Connected to [Company Name] — we can see [N] tickets across [N] queues"). [CS: VERIFIED — §3 Step 2]
- The MCP linkage is infrastructural: NONGOAL-001 excludes "the data normalization layer, **MCP server per PSA**, and credential storage" to a separate spec; DEP-002 "The **PSA MCP server** that normalizes ConnectWise data for Coworker consumption must be defined" — Hard dependency, status "Not started." [CS: VERIFIED — §4, §15]
- **QBR Analyst appears in onboarding but is not activated**: card copy "Analyzes your ticket history and generates a Quarterly Business Review report. [Set up later]"; NONGOAL-002 excludes its activation; FUT-006: "QBR Analyst in particular has a more complex setup (date range selection, report format). Separate specs." [CS: VERIFIED — §3 Step 3, §4, §18]
- All three starter Coworkers are "PSA-aware… The primary integration in the 20-minute flow is the PSA — no RMM connection is required." [CS: VERIFIED — §2]
- Connection-validation grammar reusable for a prototype: scope check on Test Connection (ticket read, queue write, member read, queue read — REQ-004); specific error states (bad credentials / unreachable URL / insufficient permissions) with actionable fixes; re-validate connection on resume (REQ-015); INV-002 connection statuses `pending_validation` / `validation_failed` cannot run a Coworker; INV-008 credentials encrypted at rest, never logged. [CS: VERIFIED — §6, §9]
- Note: onboarding names the QBR coworker "QBR Analyst"; FSN-83143/004 name it "QBR Advisor." Naming divergence exists in the corpus. [CS: VERIFIED — both files]

---

## 4. specs/004-ai-coworker-registry — the spec the QBR Advisor ships under

Source: `specs/004-ai-coworker-registry/spec.md` (2026-07-07, Draft), `tasks.md`, `quickstart.md`. [CS: VERIFIED]

### What it defines
- Coworker config registry + lifecycle: family/version split — **CoworkerFamily** (stable identity, status Draft/Active/Paused/Archived, autonomy level Manual/Assisted/Autonomous, clone provenance) + **CoworkerVersion** (immutable snapshot: LLM provider+model_id, Expert refs + pins, exactly one Runbook ref with track-latest|pinned mode, script refs, **MCP requirements**, guardrails, trigger) + **CoworkerAuditEntry** (append-only) + **CoworkerDraftLock** (pessimistic). [CS: VERIFIED — Key Entities]
- **MCP requirement + binding pair** (clarification 2026-07-08): version config carries required MCP **servers** (platform-safe metadata), each bound to one of the tenant's own **instances** before activation. "Requirements always travel on clone; bindings are copied only on same-account clones. Activation refuses naming any unbound requirement." [CS: VERIFIED — Clarifications]
- FR-019: the five platform defaults (QBR Advisor first) published in the Coworker Library, "declare their **required MCP servers** but carry **no instance bindings** — instances are per-account connections a tenant binds in their clone." [CS: VERIFIED]
- FR-037: read-time per-reference **health** — each Expert/Runbook/script/MCP requirement flagged `ok | deprecated (with deadline) | unresolvable | unbound` so builder wizards show activation blockers live. [CS: VERIFIED] (Directly usable UI grammar for a prototype's "data sources" panel.)
- Activation gate FR-008 names each failing element; unbound MCP requirement refuses activation naming the required server. [CS: VERIFIED]
- Experts are optional (zero or more) — product decision overriding intent-spec EDGE-002. [CS: VERIFIED — Assumptions]
- Quickstart Scenario 2 shows the intended operator motion for a QBR clone: list library → five defaults → clone → `mcp_requirements` carry `server_id` with `instance_id == null` → `reference_health` flags `unbound` → bind an account instance → flips to `ok`. [CS: VERIFIED — quickstart.md]

### Task status — NOT BUILT
- `tasks.md` lists **T001–T040, all unchecked (`- [ ]`)** — 0/40 complete as of this snapshot. The coworker registry (family/version/lifecycle/clone/library/QBR-Advisor seed) is spec-complete, implementation not started here. Seed migration for the five defaults is T022 (unchecked); platform-default Expert wiring and MCP server requirements seeds are explicitly "follow-up seeds." [CS: VERIFIED — tasks.md]
- What exists in code today instead: a **flat `coworkers` model** with plain `mcp_instance_ids` (per CLAUDE.md and migration task T007 which plans to wrap flat rows). [CS: VERIFIED — CLAUDE.md + tasks.md T007]

### Data sources / MCP the QBR Advisor assumes
- Spec-level only: a QBR Advisor version would carry MCP **server requirements** (which servers, e.g. a PSA MCP) with tenant-bound instances; no concrete server list for QBR Advisor is named anywhere read. Its actual data-source list (PSA ticket history, posture data, etc.) is implied by the intent spec's one-line use case + onboarding's "analyzes your ticket history," not enumerated. [CS: VERIFIED absence in files read] [WOBBLY]

---

## 5. MCP plumbing that already exists (code, working)

All verified by direct read of the named files. This is the substrate comparable against Will Mincher's FigJam config flows (configure MCP → create instance → tool selection → auth → manage/reauth/disable):

### Entities — `apps/backend/app/mcp/models.py` [CS: VERIFIED]
- **MCPServer** (`mcp_servers`): name (unique), description, `transport_type`, `base_url_template`, `auth_type`, `auth_config` JSONB, `discovered_tools` JSONB (tool catalogue last fetched — populated by daily gateway sync + admin "Refresh tools"; NULL = never synced), `admin_disabled_tools` (admin denylist, "coarse per-server list, not RBAC"), `tools_last_synced_at`, `tools_first_seen_at`, `is_active`.
- **MCPInstance** (`mcp_instances`): `server_id` FK, `account_id` (tenant scope), name, `config` JSONB, `is_active`.
- **MCPCredential** (`mcp_credentials`): one per instance (unique `instance_id`), `encrypted_data` + `encrypted_key` (envelope encryption — KMS via `aws/kms` or local AES in dev per CLAUDE.md).
- **MCPOAuthState** (`mcp_oauth_states`): `state_token`, instance/server FKs, status (default `pending`), `error_message`, encrypted flow data, `expires_at`.

### Configure / manage routes — `apps/backend/app/api/v1/mcp.py` [CS: VERIFIED]
- `GET/POST/PATCH/DELETE /api/v1/mcp/servers[/{id}]` — admin server template CRUD; locked `auth_config` credential values redacted to `***` in every read (`safe_auth_config`).
- `POST /api/v1/mcp/servers/{id}/refresh-tools` — reconnects, persists fresh `discovered_tools`, updates `tools_last_synced_at`; denylist untouched; failure → generic 502 "Could not connect to MCP server" (credentials never leak into error).
- `GET/POST/PATCH/DELETE /api/v1/mcp/instances[/{id}]` — account-scoped instance CRUD; create validates server exists + is_active (visibility check "prevents an excluded user from minting an instance of a restricted server"); update supports `is_active` toggle (= disable); cross-account instance access → Forbidden.
- Note: instance **delete here is hard delete with no attached-agent confirmation**; the soft-delete + "which Coworkers bind this instance" confirmation is owed by the not-in-this-branch MCP Configs spec (via 004's FR-033 reverse-reference query). [CS: VERIFIED — mcp.py + 004 spec.md dependencies]

### Auth / reauth — `apps/backend/app/api/v1/mcp_oauth.py` + `mcp/gateway/auth/providers.py` [CS: VERIFIED]
- OAuth: `GET /api/v1/mcp/oauth/client-metadata.json` (CIMD per MCP spec 2025-11-25 §5.1 — the URL is the client_id), `GET /api/v1/mcp/oauth/initiate?server_id&instance_id` (returns state token + auth URL; auto-creates a default instance if none exists), plus a callback route. Reauth = re-initiate against the same instance_id (credentials upsert onto the instance).
- Pluggable providers: one class per `auth_type` (`none`, `oauth`, and field-based header/api_key types); `get_field_template()` returns the credential fields the UI should render (`{name, label, type, required}`) — a ready-made contract for a lo-fi credential form. `store_credentials` envelope-encrypts and upserts `MCPCredential`; token refresh buffer 5 min.

### Tool selection / scoping [CS: VERIFIED — CLAUDE.md; CS: HIGH for exact field names in agents code, not directly read]
- Three layers: (1) server-level `discovered_tools` catalogue + `admin_disabled_tools` denylist; (2) Coworker holds plain `mcp_instance_ids`; (3) Expert holds `mcp_scopes` (per-instance `allowed_tools` allowlists) — enforced in the gateway via Strands native tool filters, "scoping is enforced in the gateway, not the prompt."
- Human-in-the-loop: `api/v1/elicitations.py` router — "Human-in-the-loop responses to MCP-server-initiated prompts." [CS: VERIFIED — router.py comment]

### Mapping to the Will Mincher FigJam flow steps
| FigJam flow step | ACP substrate | Status |
|---|---|---|
| Configure MCP | `POST /mcp/servers` (transport, base_url_template, auth_type, auth_config) | Built [CS: VERIFIED] |
| Create instance | `POST /mcp/instances` (server_id + name + config, account-scoped) | Built [CS: VERIFIED] |
| Tool selection | `discovered_tools` + `refresh-tools` + `admin_disabled_tools` (server); Expert `mcp_scopes` allowlists (agent) | Built [CS: VERIFIED/HIGH] |
| Auth | field-template providers (api key/header) or OAuth initiate→callback; envelope-encrypted `MCPCredential` | Built [CS: VERIFIED] |
| Manage / reauth / disable | PATCH instance `is_active`; re-initiate OAuth on same instance; DELETE (hard); redacted reads | Built, except soft-delete + attached-agent confirmation (deferred to MCP Configs spec, separate branch) [CS: VERIFIED] |

- **MCP Configs spec itself (Provided Server Catalog, Tenant Instances, Tool Governance) is NOT in this snapshot** — 004 cites it as "separate branch"; probe of `specs/005-mcp-configs/spec.md` → file does not exist. [CS: VERIFIED absence at that path; CS: HIGH it's absent generally] [WOBBLY]

---

## 6. Runbook Engine and Value Ledger — build status

### Runbook Engine (specs/002-runbook-config-store)
- `tasks.md` T001–T049: **all 49 checked `[x]` → 49/49 confirmed.** Caveat: T044 (Redis cache) is checked but annotated "**Intentionally not implemented**" because T043 showed p95 well under the 200ms target — "Recorded here rather than silently skipped." So 49/49 = 48 built + 1 documented no-op. [CS: VERIFIED — tasks.md]
- v1 scope note: runbooks are **text-first** (name + description + `intent` steps + single record-level `risk`), reference **scripts only**; workflow refs/read-time resolution deferred to the execution-engine spec. [CS: VERIFIED — tasks.md scope note]
- Surface: family + immutable version snapshots, draft locks, fail-closed activation validation (unreachable script repo → 502, stays Draft), append-only audit with DB trigger, tenant isolation (404 cross-tenant / 403 platform-write with "clone it" message), deprecate-with-impact-warning (`force=true`), version diff endpoint, platform runbook seed migration. Routes under `/api/v1/runbooks`. [CS: VERIFIED — tasks.md]

### Value Ledger (specs/003-value-ledger)
- `tasks.md` T001–T055: **all 55 checked `[x]` → 55/55.** **Divergence: prior briefs say "52/52" — actual count in this file is 55.** No unchecked tasks; numbering is contiguous T001–T055. [CS: VERIFIED — tasks.md]
- Entities (`app/value_ledger/models.py`): `ValueLedgerEntry` (append-only; UNIQUE(execution_id, action_type); action_type ∈ script_execution|ai_reasoning; outcome_status ∈ completed|failed|partial; `requires_review` flag), `TenantBaseline`, `PlatformDefaultBaseline` (seed catalog), `ValueLedgerRollup` (day/month pre-aggregates), `ExportJob` (async CSV/PDF via Temporal + S3 presigned URL). [CS: VERIFIED]
- **`baseline_source`** exists as a column (String(30)) with values, per spec + tests: **`tenant_configured` | `platform_default` | `coworker_reported`** (+ zero-baseline edge flagged "unknown" and marked for review). Dashboard must show a "using default" indicator when platform defaults were used. [CS: VERIFIED — models.py, spec.md US1 AC 3–5, edge cases]
- **The Measured / Benchmarked / Estimated / Unverified defensibility tier was NOT found** in `value_ledger/models.py`, `specs/003-value-ledger/spec.md` (first 150 lines incl. all clarifications + user stories + edge cases), or `specs/003-value-ledger/tasks.md`. Closest analogs: `baseline_source`, `hourly_rate_source`, `requires_review`. That four-tier vocabulary likely lives in Beth's ACP datadump/intent material outside this repo. [CS: HIGH — absence claim; full-repo grep not possible in this harness] [WOBBLY]
- QBR-relevant extras already built: **PDF report generation** (Jinja2 + WeasyPrint template `report.html` — "aggregate summary, Coworker breakdown table, methodology notes section, branding placeholder"), CSV export, FTE-equivalent calc (`total_time_saved / (160*3600)`), period filters (7d/30d/90d/custom), per-coworker breakdown, 20-minute reconciliation job backfilling missed entries, k-anonymity-suppressed platform aggregates. [CS: VERIFIED — tasks.md T031, T026, T042–T045, T039–T041]

---

## 7. What the repo does NOT have (for a QBR-prep simulation)

- **No Coworker registry / library / QBR Advisor seed** — spec 004 is 0/40 tasks; the five platform defaults (incl. QBR Advisor) exist only as spec + unexecuted seed-migration task. Current code has flat coworkers with `mcp_instance_ids`. [CS: VERIFIED]
- **No Execution Engine spec or implementation** — trigger firing, run-time approval enforcement, run-completion → Value Ledger writes, per-step failure policy are all "future spec" (though basic Temporal run workflows + run_audit + approval signal exist for flat coworkers, and the ledger's reconciliation activity scans the runs table). [CS: VERIFIED — 004 Out of Scope + CLAUDE.md + 003 tasks T043]
- **No frontend / UI anywhere.** [CS: VERIFIED]
- **No PSA connector framework / PSA MCP server** — DEP-002 "Not started"; `apps/fake-mcps` empty. No real (or fake) data sources ship in the repo. [CS: VERIFIED]
- **No auth/tenancy** — fixed msp_admin actor; RBAC plumbing present but hollow. [CS: VERIFIED]
- **No MCP Configs spec in-tree** (platform server catalog, instance soft-delete + attached-agent confirmation, tool governance/HITL-per-instance) — separate branch. [CS: HIGH]
- **No Scheduler spec implementation** (DEP-007 "Not started"), no Script Repository (external, not built — fail-closed port stubs only), no autonomy-eligibility algorithm (separate spec), no QBR Advisor content: no QBR runbook body, no report template beyond the generic Value Ledger PDF, no named MCP server list for QBR data pulls. [CS: VERIFIED — FSN-82692 §15, 004 Assumptions]
- **No defensibility-tier vocabulary** (Measured/Benchmarked/Estimated/Unverified) in files examined. [CS: HIGH] [WOBBLY]

---

## 8. Ingredient shortlist for the lo-fi prototype (what it can honestly claim to sit on)

1. MCP connection lifecycle grammar, real: server template → account instance → credential fields from `get_field_template()` / OAuth initiate → `discovered_tools` + admin denylist → `is_active` disable → refresh-tools. [CS: VERIFIED]
2. Requirement/binding + `reference_health` (`ok|deprecated|unresolvable|unbound`) as the on-screen "data sources connected?" state machine for a QBR clone. [CS: VERIFIED — spec only, not built]
3. Onboarding's connection UX conventions: live Test Connection, real-data preview ("we can see N tickets across N queues"), specific error+fix, scope verification. [CS: VERIFIED — spec only]
4. Value Ledger as the QBR evidence base: per-run entries, baseline_source indicators, rollups, FTE-equivalent, client-ready PDF with methodology notes. Built. [CS: VERIFIED]
5. Runbook family/version + audit as the governance substrate. Built. [CS: VERIFIED]
6. Run progress via polled `run_audit` seq + approval-gate pause. Built (flat coworkers). [CS: VERIFIED]
7. Actor cast: USER-001 admin (primary), USER-002 technician, USER-005 auditor; AI operator drafts/never activates. [CS: VERIFIED]

---

## File provenance index

| Claim area | File |
|---|---|
| ACP identity, MCP directions, no-auth, run audit | `acp-core-main-3/CLAUDE.md` |
| Actors, DEC-006, INV-PROD-005, §5 UX | `acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md` |
| PSA connection, QBR Analyst deferral | `acp-core-main-3/Intent Specs/FSN-82692_MSP Onboarding — Signup to First Coworker Run.md` |
| Registry spec, MCP requirement/binding, FR-037 | `acp-core-main-3/specs/004-ai-coworker-registry/spec.md` |
| 0/40 status, seed tasks | `acp-core-main-3/specs/004-ai-coworker-registry/tasks.md` |
| Operator motion (clone→bind→ok) | `acp-core-main-3/specs/004-ai-coworker-registry/quickstart.md` |
| MCP entities | `acp-core-main-3/apps/backend/app/mcp/models.py` |
| MCP mgmt routes | `acp-core-main-3/apps/backend/app/api/v1/mcp.py` |
| OAuth flow | `acp-core-main-3/apps/backend/app/api/v1/mcp_oauth.py` |
| Auth providers, field templates | `acp-core-main-3/apps/backend/app/mcp/gateway/auth/providers.py` |
| Redaction, instance schemas | `acp-core-main-3/apps/backend/app/mcp/schemas.py` |
| Route families incl. elicitations | `acp-core-main-3/apps/backend/app/api/v1/router.py` |
| Runbooks 49/49 | `acp-core-main-3/specs/002-runbook-config-store/tasks.md` |
| Value Ledger 55/55, exports | `acp-core-main-3/specs/003-value-ledger/tasks.md` |
| baseline_source, ledger entities | `acp-core-main-3/apps/backend/app/value_ledger/models.py` |
| baseline_source semantics | `acp-core-main-3/specs/003-value-ledger/spec.md` |

---

### Honor check
- **Completed:** (1) CLAUDE.md + README.md read; (2) FSN-83143 read in full — actors USER-001/002/005 verbatim, DEC-006 + priority 2.90 confirmed, INV-PROD-005 verbatim, §5 north star verbatim; (3) FSN-82692 read in full — PSA connection step, MCP-server-per-PSA deferral, QBR Analyst bookmarked; (4) 004 spec.md + tasks.md + quickstart.md read in full — 0/40 task status, MCP requirement/binding model, reference_health; (5) MCP substrate read from code: models, mgmt routes, OAuth routes, auth providers, schemas, router — mapped against the five FigJam flow steps; (6) Runbook 49/49 confirmed (T044 checked-but-no-op noted); Value Ledger counted at **55/55, diverging from the 52/52 in prior briefs**; baseline_source values extracted.
- **Skipped/degraded:** No shell tool in scout harness → "grep specs/ and docs/ for MCP" done by path-probing and in-file reading instead of grep; `docs/` was not systematically covered. `specs/003-value-ledger/spec.md` read to line 150 only (clarifications + stories + edge cases + FR-001..006); FR-007+ unread. `mcp_oauth.py` callback body and gateway session/tool-filter code not read directly (tool-scoping claim rests on CLAUDE.md → tagged CS: HIGH not VERIFIED).
- **Cannot verify:** existence of an MCP Configs spec anywhere else in the tree (probed one path); Measured/Benchmarked/Estimated/Unverified tier anywhere outside the files read — absence claims are [WOBBLY] without grep.
- **Stats produced:** 004 = 0/40 unchecked; 002 = 49/49 checked; 003-value-ledger = 55/55 checked (not 52); QBR Advisor priority 2.90, rank 1 of 5. Hand-counted by the scout — grep-verified by the orchestrator (see .bradley-ledger).
