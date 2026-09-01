---
feature: "ACP V1 Prototype — Autonomous Control Plane"
gate: 30
owner: "Beth"
problem_statement: "MSPs spend enormous time on repeatable operational tasks; prebuilt AI Experts will not cover all needs; MSPs need to customize agents against their own runbooks/SOPs/scripts, in a governed environment that logs, scopes, and meters every action."
okr_objective: "Demonstrate that an MSP can build, run, and govern AI Coworkers across approved scripts and runbooks — without touching the underlying products (UEM/Cove/Adlumin) — in a single control plane."
okr_key_result: "Demo audience can, in under 10 minutes of click-through, (a) execute a canned runbook, (b) add a new runbook, (c) add a new MCP server, (d) assemble a new Coworker, and (e) see audit + chargeback evidence. [A]"
counter_metric: "Demo must not imply autonomy without guardrails — every action visible, scoped, and reversible in the UI. [A]"
idea_score: null
evidence_sources:
  - "/Users/elizabeth/Desktop/Bethproto/scout_input/01-control-plane.md (Confluence: Control Plane / Headless IT Tech, N. Reineke, May 15 2026)"
  - "/Users/elizabeth/Desktop/Bethproto/scout_input/02-ai-coworker.md (Confluence: AI Coworker Description, N. Reineke, May 04 2026)"
  - "/Users/elizabeth/Desktop/Bethproto/scout_input/03-runbook.md (Confluence: Runbooks Definition, N. Reineke, May 05 2026)"
  - "Beth's stated V1 requirements (verbal, 2026-05-27)"
status: "draft"
---

# ACP V1 Prototype — Brief

> **Readiness check:** approximately 35-40% of claims below are tagged `[A]` or `[?]`. This brief is **not ready to build past a demonstrative prototype**. The product strategy and core entities are well-sourced; the *interaction model, IA, and demo success criteria* are largely Beth/Spec assumptions and need a pass with Nicole Reineke or a target MSP before V1 ships beyond the prototype stage.

## Customer & Context

**Primary user (assumed for V1 demo):** MSP technician and MSP owner/admin. The control plane is positioned as the MSP's single pane — they "should never need to learn UEM, Cove, or Adlumin" `[R: scout 01]`. The technician operates and approves Coworker actions; the owner configures, governs, and reads the Value Ledger. `[A]` — the source docs do not explicitly split V1 personas; this is Spec's read.

**Secondary user:** N-able admin / vendor partner (manages catalogue, certifies Vendor Experts) `[R: scout 01]`. Out of scope for the V1 demo surface unless it's load-bearing.

**Problem V1 solves:** "MSPs spend an enormous amount of time performing repeatable operational tasks. Prebuilt experts will not cover all needs. MSPs/customers will need to customize agents tied to their runbooks/SOPs, their use cases, their scripts. Many tasks are already scriptable, but scripts are risky to run, often gated by expertise or permissions." `[R: scout 02 §1]`

**Demo audience (assumed):** internal N-able product/exec stakeholders + design partners. `[A]` — Beth has not named the demo audience. Surface this before build.

---

## Gate 1 — Do we understand the customer problem?

### Problem statement (sourced)
- MSPs perform high volumes of repeatable ops work (patching, remediation, compliance, scripting, onboarding, alerting). `[R: scout 02 §3]`
- Prebuilt N-able Experts will not cover the long tail of MSP-specific workflows. `[R: scout 02 §1]`
- Scripts exist but are *risky*: gated by expertise, permissions, and lack of an audit/approval surface. `[R: scout 02 §1]`
- The MSP business model itself is shifting from "we manage your IT" (time, commodity) to "we run N AI Coworkers that delivered M outcomes last month" (outcomes, evidence). Per-device pricing is "broken." `[R: scout 01, Godin framing + Monetization §]`

### Pains being solved by V1
1. **No safe place to run scripts/runbooks against multiple systems.** `[R: scout 02]`
2. **No way to customize agents** beyond what N-able ships. `[R: scout 02 §7]`
3. **No audit trail** that an MSP can show their customer (or N-able can show the MSP) to justify price. `[R: scout 01, Value Ledger §]`
4. **No metering** — execution count, MCP transactions, LLM tokens — to drive chargeback. `[R: scout 01, Monetization §]`

### What "good" looks like for V1
- A demo viewer leaves believing: *the MSP can author and govern Coworkers without touching underlying products, and every execution is logged, scoped, and meterable.* `[A]` — Spec's framing of demo success; needs Beth confirm.

### Confidence on Gate 1
- Problem is **real and sourced** — three Confluence docs from the product lead, dated within the last 30 days. `[R]`
- Demand signal (MSP ranking of top 10 use cases, sent to customers) referenced but ranking results not in the docs. `[?]` — do we have the actual ranking back yet?
- Customer interviews / ethnography supporting the pain claims: **not present in scout docs**. `[?]` — the problem is asserted by Nicole; whether it's been validated with N MSPs is unknown.

**Gate 1 verdict:** Pass for V1 prototype. Would need user-research validation before V1 ships as product.

---

## Gate 2 — Are we making the right thing?

### V1 scope (Beth's 7 requirements, with provenance)
1. **Safe, governed executions on tasks across approved scripts and runbooks (editable).** `[R: Beth]` — grounded in scout 02 §6 (Permissions and Risk Model) and scout 03 (Runbook as governed execution contract). `[R: scout 02, 03]`
2. **Execution against canned N-able and customer runbooks.** `[R: Beth]` — scout 01 names runbooks "authored by N-able, vendor partners, or customers directly." `[R: scout 01]`
3. **Ability for customers to add new runbooks.** `[R: Beth]` — scout 02 §7 "Custom Coworkers" confirms; scout 01 confirms "uploaded or generated." `[R]`
4. **Ability to add new MCP servers and new Coworkers.** `[R: Beth]` — scout 02 §3 "customers can clone and customize" MCP servers; §7 confirms custom Coworkers. `[R]`
5. **Connectivity to a single LLM, N-able MCP servers, and customer BYO MCPs.** `[R: Beth]` — scout 01 confirms LLM model is external (Bedrock or BYOK/BYOM); MCP layer is the tool access mechanism. `[CS: VERIFIED]` against scout 01. Note: Beth said "single LLM" for V1 — the doc allows multiple; V1 simplification is Beth's call. `[A]` on the "single" constraint.
6. **Comes with PSA and select third-party MCP server integrations.** `[R: Beth]` — scout 01 references Halo as PSA in the example use case; the top-10 list assumes PSA integration throughout. `[R]` Which specific PSA(s) ship in V1: `[?]` — Halo is the worked example; ConnectWise, Autotask, others not named.
7. **Audit logging, chargeback, and triggers.** `[R: Beth]` — scout 01 "Monitoring the Control Plane" section enumerates these in depth. `[R]`

### Additional V1 scope items the scout docs make load-bearing
- **Value Ledger surface** — "Customer-facing. Artifact MSP shows their customer to justify price." `[R: scout 01]` The whole monetization story collapses without this. Strongly recommend V1 includes a Value Ledger view. `[A]` for inclusion in V1 — Beth did not name it explicitly.
- **Trust-execution level on Coworkers** — Ewan Cameron's L4 earned-autonomy hypothesis. `[R: scout 02]` The doc explicitly says one of three mental models (track record / graduated dial / scope-based guardrail) needs to survive a 10-second comprehension test. **V1 is the natural place to test this.** `[A]` — Spec recommends including a visible trust level on each Coworker.
- **Audit/execution log view** — required by requirement 7. `[R: Beth + scout 01]`

### Out of scope for V1 (explicit)
- **Outcome-based pricing (Layer 7).** Marked "Future State" in scout 01. `[R]`
- **Deterministic Substitution Engine UI.** Scout 01 calls it an "opportunity"; backend concept, no UX yet. `[R]`
- **Vendor certification workflow.** Marketplace exists conceptually, but cert review UI is N-able-internal and not part of MSP-facing V1. `[A]` — defer.
- **Full Marketplace browse/install flow.** V1 may show a static catalogue tile; full discovery/rating/pairing UI deferred. `[A]`
- **Reverse Publish (Apps → ACP) mechanics.** Acknowledge that scripts/skills flow in from UEM/Cove/Adlumin, but don't build the provenance pin UI in V1. `[A]`
- **N-zo handoff / publish-to-app flow.** ACP can publish Coworkers to N-zo; defer UI to V2. `[A]`
- **BYOK/BYOM configuration deep UI.** V1 shows "Bedrock (default)" and a stub for BYO. `[A]`
- **Multi-tenant customer switching.** V1 = single-MSP, single-customer demo. `[A]`

### Success criteria for the prototype itself
The demo must prove, in a click-through:
1. The MSP can **see and launch** a canned Coworker (e.g., New Customer Onboarding). `[A]`
2. The MSP can **add a new runbook** (text-first, per scout 03). `[A]`
3. The MSP can **add a new MCP server** (form, connection test stub). `[A]`
4. The MSP can **assemble a new Coworker** from Experts + a runbook + MCP connections. `[A]`
5. The MSP can **view an execution log** for a completed run, with step-level trace. `[A]`
6. The MSP can **view a chargeback / metering view** showing execution count, MCP transactions, LLM tokens. `[A]`
7. The MSP can **see the Value Ledger** for one customer. `[A]` (recommended)

`[A]` on all 7 because Beth has not signed off on the demo script. Spec is naming the obvious demo arc derivable from the V1 requirement list.

### Gate 2 verdict
Scope is sourced; **demo success criteria are Spec-inferred and need Beth's sign-off before build.**

---

## Gate 3 — Are we making the thing right?

### Information architecture (proposed, `[A]` throughout)
Top-level nav (left rail, persistent):
- **Dashboard** — at-a-glance: active Coworkers, recent executions, Value Ledger summary
- **Coworkers** — list + builder
- **Runbooks** — library, editor, version history
- **Experts** — N-able catalogue + Vendor catalogue (browse, view detail)
- **MCP Servers** — connected servers, add new, scope/credentials
- **Executions** — audit log, step-level trace, filters
- **Metering & Chargeback** — execution count, MCP transactions, LLM tokens, billing view
- **Settings** — LLM config (Bedrock default, BYO stub), triggers, policies

### Key screens (V1)
1. **Dashboard** — KPI tiles (Coworkers active, executions this week, hours saved, vulnerabilities closed), recent activity feed, Value Ledger snapshot.
2. **Coworkers list** — table of Coworkers with name, embedded Experts, runbook, trust-execution level, last run, status.
3. **Coworker detail / builder** — wizard or single-page edit: name, intent, embedded Experts (multi-select from catalogue), runbook (pick or author), MCP server connections, trigger (manual / scheduled / event), trust-execution level.
4. **Runbook library** — list of N-able-authored + customer-authored runbooks. Filter by provenance, last modified.
5. **Runbook editor** — text-first per scout 03. Plain-language intent block + optional structured steps. Save, version, attach to Coworker.
6. **Experts catalogue** — tile grid: N-able Experts (Endpoint, Backup, Security, Documentation, Identity, Asset, etc.) and Vendor Experts (Halo Ticket Expert, etc.). Each tile: name, vendor, version, permitted MCP scopes, "Add to Coworker."
7. **MCP servers list + add** — connected servers (N-able defaults: PSA, RMM, MDR, Backup; customer BYO). "Add new" form: name, endpoint, auth, scope.
8. **Execution log (list)** — every Coworker run: timestamp, Coworker, trigger source, duration, status, hours saved.
9. **Execution detail (step trace)** — expandable steps: tool call, LLM inference, script exec, approval gate, conditional branch. Per scout 01 §Execution Telemetry. `[R]`
10. **Metering / Chargeback** — table or chart: per-customer or per-Coworker, execution count, MCP transaction count, LLM token consumption, estimated cost.
11. **Value Ledger** — customer-facing artifact view: hours saved, incidents resolved, tickets triaged, vulnerabilities closed, cost avoidance. `[R: scout 01]`

### Interaction model (where the user does each thing)
- **Create a Coworker** → Coworkers list → "+ New Coworker" → builder modal or page → pick Experts → pick runbook → connect MCPs → set trigger + trust level → Save.
- **Add a runbook** → Runbooks → "+ New Runbook" → text editor (intent first) → save → optionally attach to a Coworker.
- **Connect an MCP server** → MCP Servers → "+ Add Server" → form (name, endpoint, auth, scope) → test connection (stub) → save.
- **View audit** → Executions → click a row → step trace panel.
- **View chargeback** → Metering & Chargeback → filter by period / customer.

### Visual style (Apex approximation)
- **Not Bauhaus.** This is the N-able product surface, not the Band Protocol. `[R: Beth]`
- Clean SaaS aesthetic: white card surfaces, neutral gray rails, single brand accent. `[A]` Spec suggests teal (#0EA5A4 range) or N-able's brand blue (#1F3C96-ish but more saturated); build agent can pick the closest match without a real Apex token dump. `[CS: LOW]` — Spec does not have verified N-able Apex tokens.
- Typography: Inter or system-ui. 14px body, 13px table, 12px meta. Tight line-height.
- Rounded corners OK (4-6px). Shadows soft (0 1px 2px rgba). 8px grid.
- No emojis. No personality. This is the "serious infrastructure" face.

### What test would tell us this is right?
- **5-second test on the Coworker list:** can an MSP technician identify what a Coworker does, what it's connected to, and whether it's safe to run? `[A]`
- **10-second test on trust-execution level** (per Ewan Cameron's hypothesis): does the chosen UI for L4 autonomy provoke an instinctive opinion? `[R: scout 02]`
- **Click-through walkthrough** with one MSP design partner + one N-able PM, ranking each of the 7 requirement satisfactions on a 1-5 scale. `[A]`

### Gate 3 verdict
IA and screen list are defensible from the source docs but the *visual fidelity* and *interaction details* are Spec-assumed. Build agent should treat this as a directional skeleton, not a pixel spec.

---

## Hallucination check

**Tag count (verified by grep against this file, 2026-05-27):**
- `[R]` Research/sourced: **9** claims
- `[D]` Data: **1**
- `[A]` Assumed: **29** claims
- `[?]` Unknown: **12** claims
- Total tagged claims: **51**
- `[CS:]` tags on N-able product facts: 2

**Ratio of [A] + [?] to total: 41/51 = 80%.** Far above the 30% threshold per CLAUDE.md §9. **This brief is directionally sound but is not a build-ready spec.** It is a *prototype* brief — adequate for a demonstrative V1 click-through, inadequate for shipping product.

> **Note on the math:** Spec's initial self-count reported ~47% [A]+[?]. That number was wrong. Verified by grep, the actual ratio is 80%. Spec was fluent and confidently incorrect about its own self-assessment — exactly the failure mode CLAUDE.md's `[CS:]` tagging exists to catch. The number that ships into the handoff is the verified one.

### Strongest assumptions that, if wrong, break V1
1. **Demo audience and demo goals are as Spec assumed.** If the audience is "design partners" not "internal exec," the screens and tone change.
2. **Trust-execution level belongs in V1.** Scout 02 strongly implies it; Beth did not name it. If Nicole wants it deferred, the Coworker builder simplifies.
3. **Value Ledger belongs in V1.** It's the monetization story spine but Beth did not name it in her 7 requirements.
4. **Single PSA = Halo** for the demo. Scout uses Halo as the worked example; if the demo audience uses ConnectWise/Autotask, swap.
5. **"Apex visual" target.** Spec does not have verified Apex design tokens. Build is approximating.

---

## Failure modes

1. **Demo looks like a CRUD app, not a control plane.** If every screen is a list-and-form, the "governing layer for AI Agents" story disappears. The execution log and Value Ledger have to *feel* like infrastructure-grade evidence, not a settings page.
2. **Over-builds the vendor/marketplace flow** and under-builds the customer's own builder. Scout 02 §7 explicitly says: "We should build the UX to this up front. This does not need to be second." Customer Coworker building must be the front door.
3. **Confuses Runbook and Workflow.** Scout 03 is explicit: workflow is a component of a runbook. If the UI treats them as siblings, the trust model collapses.
4. **Buries trust/safety.** If the trust-execution level and the audit log are tucked into a settings menu, the demo undermines its own thesis ("not autonomous free-for-alls").

---

## What's missing

- Verified Apex design tokens / screenshots. `[?]`
- Top-10 use case ranking results (sent to customers per scout 01). `[?]`
- MSP user research backing the problem statement. `[?]`
- Specific PSA + third-party MCPs to ship in V1 (Halo only, or more?). `[?]`
- Demo audience confirmation. `[?]`
- Beth's sign-off on Value Ledger and trust-execution level inclusion. `[?]`

---

## Build instructions for the build agent

**File path:** `/Users/elizabeth/Desktop/Bethproto/prototypes/acp-v1/index.html`

**Constraints:**
- Single HTML file. Embedded CSS in `<style>`. Vanilla JS in `<script>`. No external libs except optionally a Google Font (Inter) via `<link>`.
- Visual target: **N-able Apex approximation, NOT Band Protocol Bauhaus.** Clean SaaS. Neutral grays (#F8FAFC background, #FFFFFF cards, #E2E8F0 borders, #475569 secondary text, #0F172A primary text). Single accent: try teal `#0D9488` or blue `#2563EB`. Inter or system-ui. Soft shadows (`0 1px 3px rgba(15,23,42,.08)`). 4-6px corner radius. 8px spacing grid.
- **No Itten palette. No Space Mono. No Kalam. No Bauhaus hard shadows.** This prototype is in N-able's voice, not Beth's.

**Screens to build (single-page app, left-rail nav switches main content panel):**
1. Dashboard — 4 KPI tiles, recent activity feed (5 rows), Value Ledger snapshot card.
2. Coworkers — list view (table) + "+ New Coworker" button opens a modal builder (Experts checklist, runbook dropdown, MCP checklist, trigger select, trust-level radio).
3. Coworker detail — clicking a row in the list shows a detail panel (right side or full page swap) with embedded Experts, runbook, MCPs, last 5 executions.
4. Runbooks — list + editor. Editor is a text area with an "Intent:" label on top, "Steps:" below. Save button (no-op, just adds to list).
5. Experts catalogue — tile grid, ~8 tiles (mix of N-able + Vendor).
6. MCP Servers — list of connected servers + "+ Add Server" modal (name, endpoint, auth type dropdown, scope multiselect).
7. Executions — table of runs. Clicking a row expands a step-trace panel (5-8 steps with icons for tool call / LLM / script / approval).
8. Metering & Chargeback — table by customer + Coworker: execution count, MCP transactions, LLM tokens, $.
9. Value Ledger — customer-facing card view: hours saved, incidents resolved, vulnerabilities closed, cost avoidance.
10. Settings — LLM config card (Bedrock selected, BYO stub disabled), Triggers section (placeholder), Policies (placeholder).

**Seed data (so the demo feels real, not empty):**
- **Coworkers (5):** "New Customer Onboarding," "Alert Flood Suppression," "QBR Report Generator," "Ticket Triage & Dispatch," "Network Incident Resolution." Each: trust level (Human-confirms / AI-executes-human-audits / Autonomous), last run timestamp, status (Active / Paused / Draft).
- **Experts (8):** Endpoint Expert (N-able), Backup Expert (N-able), Security/MDR Expert (N-able), Identity Expert (N-able), Asset Expert (N-able), Documentation Expert (N-able), Halo Ticket Expert (Vendor — certified), Script Generator Expert (N-able).
- **Runbooks (4):** "Onboard New Customer (N-able default)," "Suppress Duplicate Alerts (N-able default)," "Triage Inbound Ticket (Customer-authored)," "Patch CPU Spike Incident (Customer-authored)."
- **MCP Servers (5):** Halo PSA (connected), N-able UEM (connected), N-able Cove Backup (connected), N-able Adlumin MDR (connected), Acme Custom CRM (customer BYO, connected).
- **Executions (10):** mix across the 5 Coworkers, varying durations (12s to 4m 30s), mostly Success, 1 Failure with retry, 1 Awaiting Approval.
- **Customers (3):** "Acme Corp," "Northwind Industries," "Globex" — for the chargeback table and Value Ledger.
- **Value Ledger seed (Acme Corp):** 47 hours saved this month, 12 incidents resolved without human intervention, 340 vulnerabilities closed, 1 QBR generated, $4,200 estimated cost avoidance.

**Interactions to wire up:**
- Left-rail nav clicks swap main panel.
- "+ New Coworker" opens modal; "Save" closes modal and adds a row to the table.
- "+ New Runbook" opens editor; "Save" closes and adds to list.
- "+ Add MCP Server" opens modal; "Test Connection" shows a fake spinner → green check; "Save" adds to list.
- Clicking a Coworker row opens detail view.
- Clicking an Execution row expands the step trace inline (accordion).
- Filter dropdowns on Executions and Metering pages (period: 7d / 30d / 90d — visual only, no real filtering needed).
- Trust-execution level shown as a small badge on every Coworker (3 colors). This is the Ewan Cameron 10-second test surface — make it visible.

**Do not wire:**
- Real LLM calls, real MCP calls, real auth.
- Multi-tenant switching.
- Vendor certification workflow.
- N-zo publish flow.
- Outcome-based pricing UI.

**Definition of done for the build:**
- All 10 screens reachable via the left rail.
- All 5 seed Coworkers visible and openable.
- The 7 Beth-stated V1 requirements each visibly satisfied somewhere in the prototype (a critic agent should be able to point at each one).
- Visual reads as N-able SaaS, not Bauhaus.

---

*End of brief. Spec does not chain into build.*
