---
title: QBR/EBR System — working draft
status: WORKING DRAFT — does not replace acp-core-main-3/specs/_ux/qbr-ebr.ux.md
date: 2026-08-12
confidence_regime: PROCEED-FLAGGED
proceed_because: We now have the operator on record (SRC-U-009, Craig Fisher + David, 2026-08-07) describing the real acquisition chain tool by tool, which closes the biggest named gap in the canonical ux.md (Q2 — "the operator has never been directly studied"). Designing against that is worth more than waiting for a second data point.
machine_behavior: build · mark build-state on every component · never describe an unbuilt thing in present tense · surface [CS:] tags visibly · do not claim validation · leave synthesis slot empty
supersedes: nothing
feeds: acp-core-main-3/specs/_ux/qbr-ebr.ux.md (proposed edits, §7) · prototypes/qbr-draft-flow/qbr-hifi.html
---

# QBR/EBR System — working draft

## 0 · What this is

A system design for producing an MSP's Executive Business Review, grounded in one real
MSP's real process (Technica Solutions) using their real stack. It is a working draft: it
records what exists, what doesn't, and where the design depends on something unbuilt.

**What it is not:** a replacement for `specs/_ux/qbr-ebr.ux.md`. That file holds the research
corpus, the assumption register, the divergence log and the Musts. This file holds the
*system*. Proposed edits to the canonical file are in §7, unapplied.

**The frame, per Beth 2026-08-12:** take their template · figure out what we can automate and
what we can kit · note what we've already figured out · make Davids able to do more of these.

---

## 1 · Build-state legend — used on every component below

| Marker | Meaning |
|---|---|
| `‹BUILT›` | Code exists and runs. Cited to file:line. |
| `‹SPEC-ONLY›` | Written in a spec, zero or partial implementation. Cited. |
| `‹NOT-BUILT›` | Named somewhere in the corpus, no spec, no code. |
| `‹NOT-NAMED›` | Nothing anywhere names it. The most expensive category. |

**Rule for this document:** nothing unbuilt is described in the present tense. If a sentence
says the system *does* something, it is `‹BUILT›` or the sentence is wrong.

Evidence tags per Band convention: `[R]` research · `[D]` data · `[A]` assumed · `[?]` unknown.

---

## 2 · The two foundational gaps

### GAP-001 · Coworker-to-Coworker orchestration

**The gap.** `004-ai-coworker-registry` **NONGOAL-002: "Coworker-to-Coworker orchestration."**
Nothing in the v1 Coworker data model lets one Coworker's output become another Coworker's
input at runtime. `[CS: VERIFIED — spec.md:289-296]`

**Why it matters here.** The `MSP Superpower Problem.pdf` thesis (p5) is *"THE LEAP: These
aren't six products. It's one job."* QBR is the capstone; Alert Flood Suppressor, Incident
Response Analyst, Environment Health Monitor and Security Tabletop are described as agents
doing the work behind the scenes that feeds it. **The deck's differentiation story requires
exactly the thing the spec forbids.** This is already load-bearing, not hypothetical: the
fleet's continuous-visibility-layer concept died at Genesis on this nongoal (Idea Chess
re-run, 2026-07-31).

**Why the obvious workaround fails.** "QBR reads the other Coworkers' Value Ledger entries"
does not work. `value_ledger_entries` holds `action_type`, `task_category`,
`actual_duration_seconds`, `manual_baseline_seconds`, `time_saved_seconds`, `cost_saved`,
`outcome_status` — a *time-saved* record. It tells you Environment Health Monitor ran and
saved 20 minutes. It does not tell you two devices are end-of-life. `[CS: VERIFIED —
value_ledger/models.py:54-77]` And `run_audit` is a progress log polled by `seq`, with an
explicit constitutional prohibition on side channels. `[CS: VERIFIED — constitution.md:99-102]`
Each Expert declares an `output_contract` JSON Schema, but validation of live output against
it is out of scope in that spec and belongs to the execution engine, which does not exist as
a spec. `[CS: VERIFIED — 003-ai-expert-config-registry/spec.md:212]`

### WA-001 · Workaround — the Shared Observations Store

**Coworkers never call each other. Each writes findings to a common store. QBR Advisor
composes by reading it.**

NONGOAL-002 stays intact, because there is no inter-Coworker call and no orchestration
primitive. The dependency is on *data at rest*, not on another Coworker's execution. This is
a smaller ask than reopening the nongoal, and it does not require the execution engine to
arbitrate between Coworkers.

`‹NOT-NAMED›` — no spec, no code, nothing in the corpus names an observations store.

### GAP-002 · There is no end-client entity

**The gap.** Every persisted row is scoped by `account_id` — the MSP tenant. **Nothing is
scoped to the MSP's customer.** No `models.py` in the backend mentions "client"; every
`client_id` in the codebase is OAuth's `client_id` or an HTTP/AWS client class.
`[CS: VERIFIED — grep across apps/backend/app/, 2026-08-12]`

**Why it matters.** Technica has 100 clients and delivers ~250 EBRs a year. The deliverable
*is* per-client. Cadence is per-client. Tiering is per-client. The risk register is
per-client. None of that is expressible today. This is more foundational than GAP-001 — the
capstone has nothing to be a capstone *of*.

**Divergence worth logging:** the working prototype (`qbr-hifi.html`) shows "142 clients found
in ConnectWise" and scopes every source row to one client. It assumes an entity the platform
does not have.

### WA-002 · Workaround — client as a first-class entity under account

Introduce `client` (the MSP's managed customer) scoped under `account_id`, and scope
observations and artifacts on `(account_id, client_id)`. This **extends** Constitution
Principle IV rather than violating it — every row still carries and is queried by
`account_id`; it gains a second, narrower scope. `[CS: HIGH — reading of constitution.md:115-117]`

Migration cost is real and should be named, not discovered: `runs`, `coworkers`,
`value_ledger_entries` and any artifact table need client scope before per-client reporting
is possible. `‹NOT-BUILT›`

---

## 3 · The Shared Observations Store — design

### 3.1 What an observation is

One durable, addressable finding about one client, written by one Coworker, at one point in
time. Not a run record. Not a time-saved record.

Proposed shape (`‹NOT-NAMED›` — this is new):

```
observation
  id
  account_id                     -- MSP tenant (Principle IV)
  client_id                      -- requires WA-002
  observed_at                    -- when the underlying fact was true
  recorded_at                    -- when we wrote it
  source_system                  -- N-central | Inforcer | uSecure | HaloPSA | Cloud Capsule | M365 | ...
  source_ref                     -- endpoint + record id, so a human can go look
  raw_value                      -- what the source actually said, untransformed
  normalized_value               -- after the adapter
  transform_ref                  -- which adapter version produced normalized_value
  subject_type                   -- device | user | tenant_config | policy | licence | ticket
  subject_id                     -- resolved entity (requires entity resolution)
  claim                          -- the finding, in one line
  severity                       -- proposed by the writing Coworker
  framework_refs[]               -- e.g. NCSC 10 Steps step 4; Cyber Essentials control
  defensibility                  -- Measured | Benchmarked | Estimated | Unverified | Source-Unavailable
  written_by_coworker_id
  written_by_run_id
  supersedes_observation_id      -- the diff spine
  status                         -- open | resolved | accepted_risk | superseded
```

Three fields carry most of the weight:

- **`supersedes_observation_id`** is the entire cycle-over-cycle mechanism. EBR #2 becomes a
  diff because this quarter's observation points at last quarter's. Craig's biggest stated
  pain — *"you get varied benefit from doing the initial work once… normally you would get
  economies of scale… that's not the case"* — is a missing pointer.
- **`defensibility`** is where the proposed tier vocabulary finally has an object to live on.
  Today it is proposed grammar over `baseline_source`, which is a field on a *time-saved*
  record — the wrong object. `[CS: VERIFIED — qbr-ebr.ux.md:543-548, grep 2026-07-31]`
  **New fifth state, `Source-Unavailable`,** because with no missing-source branch an outage
  silently changes what "Measured" means.
- **`raw_value` + `source_ref` + `transform_ref`** are what let a human check a number in two
  seconds. Craig has to be able to defend the number in the room; David has to be able to
  answer *"why is that configured like this?"*

### 3.2 Who writes, who reads

| Coworker | Writes observations about | Feeds which EBR section |
|---|---|---|
| Environment Health Monitor | device health, OS version, lifecycle, refresh due | Tab 5 Hardware · Tab 6 Roadmap |
| Security Tabletop | CVE exposure, vuln triage, remediation options | Tab 3 Risk Review |
| Incident Response Analyst | incidents in the period + their RCA | Tab 3 Risk Review · the liability record |
| Alert Flood Suppressor | correlated root causes, ranked | Tab 3 ordering · reconciling disagreeing signals |
| **QBR Advisor** | **writes nothing new — composes** | all tabs |

QBR Advisor is a **reader**. That is the whole point: it has no privileged access, no
orchestration authority, and no ability to make another Coworker run. It composes what is
already there.

### 3.3 What it unlocks that nothing else does

1. **EBR #2 as a diff** (steps 20, 21) — via `supersedes_observation_id`.
2. **Commitment closure** (step 20, 28) — a commitment is an observation with
   `status = open` and an owner; next cycle it is closed, carried forward, or superseded.
   Universally silent in the corpus today: a repo-wide grep for
   commitment/recommendation/follow_up/action_item/remediation/due_date/assignee returns
   nothing relevant. `[CS: VERIFIED — 2026-08-12]`
3. **Source arbitration** (step 12) — two observations, same `subject_id`, same claim,
   different `source_system` and `raw_value`. The disagreement becomes a queryable object
   instead of a thing David notices.
4. **The capstone thesis, without orchestration** — the deck's "one job, not six," delivered
   under NONGOAL-002.

---

## 4 · The system, on Beth's seven stages

Stage names are canonical, from `14:467` / `202:1651` / `24:646`.
**A** = automate · **K** = kit (machine pre-assembles parts + the question; human decides).

### Stage 0 · Onboard & Customize

| What | A/K | Build state |
|---|---|---|
| Connect the stack — per-vendor auth | A | `‹BUILT›` for the *mechanism*: 5 auth providers, OAuth discovery, envelope-encrypted credentials, per-instance tenant scoping (`mcp/gateway/`). `‹NOT-NAMED›` for every actual vendor — 0 of 15 appear in code. |
| Per-tenant connection URLs | A | `‹NOT-BUILT›`. `base_url_template` does not template — used verbatim (`sessions.py:347-349`); `MCPInstance.config` is written and never read (`service.py:127`). Small fix, load-bearing for multi-tenant. |
| Import client list + tiers | A | `‹NOT-BUILT›` — blocked on GAP-002. |
| Ask how *this* MSP decides compliance obligation | K | `‹NOT-NAMED›`. Industry is a proxy; the real question is which regime applies. Per Beth: needs an intake flow, we do not know how MSPs do this. `[?]` |
| Choose starting point: Stefanie's template, or import theirs | K | `‹NOT-BUILT›`. Both branches needed — see §5.2 greenfield. |
| Import prior EBR history → extract promises | K | `‹NOT-BUILT›`. Needs per-item provenance to the source page/line or it launders a guess. |
| Set the value baseline | A | `‹BUILT›` — `tenant_baselines`, resolution cascade, embedded at write time (`baseline_resolver.py:32-136`). Note the real range has a disagreement inside it: Craig 3h, David 1.5–2h uninterrupted. Do not average them. |
| Define "good" | K | `‹NOT-BUILT›`. Technica already has this: Inforcer golden tenant, 1–9, ideal client at 5. Import it rather than invent one. |

**Intake, not wizard.** Per Beth: the system should ask when it hits something it cannot know,
the way `/prototype` asks on ambiguity. A fixed 6-step wizard structurally cannot. This
reframes five of the rows above. `‹NOT-BUILT›`

### Stage 1 · Always Current

| What | A/K | Build state |
|---|---|---|
| Continuous per-client collection into observations | A | `‹NOT-NAMED›` — the store itself (WA-001). |
| Fan out across 100+ clients | A | `‹NOT-BUILT›`. Zero hits for `child_workflow`/`fan_out`/`for_each`/`batch`/`parallel_map`. The DAG is a static hand-authored list. |
| Rate limit ~1,000 pulls/cycle across 7 vendors | A | `‹NOT-NAMED›`. Nothing throttles outbound calls. |
| Behave honestly when a source fails | A | `‹NOT-NAMED›`. No missing-source branch — a portfolio built from 6 of 7 sources looks identical to one built from 7. Needs `Source-Unavailable`. |
| Cadence + overdue detection | A | `‹SPEC-ONLY›` — cron stored and validated (`croniter`), firing is explicitly out of scope (`004/spec.md:198, 289`). Schedules are **off by default** (`SCHEDULES_ENABLED=False`) and cannot schedule a Coworker that has `steps` — which a QBR would. |

### Stage 2 · Nudge

| What | A/K | Build state |
|---|---|---|
| Decide which tiers get a room vs. a nudge | K | `‹NOT-BUILT›` — depends on GAP-002. |
| Send it | A | `‹NOT-BUILT›`. No surface anywhere; `notification_recipients` holds email + actor only. For C/D tier this channel *replaces* the meeting, so the gap is the whole service for those clients. |

### Stage 3 · Draft Lands

| What | A/K | Build state |
|---|---|---|
| Pull per source (N-central, Inforcer, uSecure, Halo, Cloud Capsule, M365, Rewst) | A | `‹NOT-NAMED›` per vendor. |
| Normalize to one shape | A | `‹NOT-NAMED›`. 0 hits for `normaliz` in governance docs. `NONGOAL-001` in FSN-82692 defers it. `RA-008` P≈0.30, **unowned**. |
| Resolve entities across sources | A | `‹NOT-NAMED›`. Required before any cross-source count is a finding rather than a join error. |
| Align observation windows | A | `‹NOT-NAMED›`. `observed_at` vs `recorded_at` in §3.1 is the fix. |
| Arbitrate disagreeing sources | K | `‹NOT-NAMED›` as arbitration. "Reconcile" in this corpus means backfilling a failed ledger write. Only precedence rule anywhere: `tenant_configured > platform_default`, on one field. |
| Read against a baseline | K | `‹NOT-BUILT›`. Cross-tenant peer read has no consent model — named unsolved by the build itself. |
| Map to framework | A draft / K final | `‹NOT-BUILT›`. **And the framework is wrong in our artifacts** — see §5.1. |
| Compose the 8 tabs | A | `‹NOT-BUILT›`. QBR Advisor is a named shell: FR-019 publishes it with priority 2.90 and that is the entire specification. 0 of 40 tasks. |
| Rank so the top few lead | K | `‹NOT-BUILT›`. Craig: *"if I hang around too long in the risk review area, I'll lose the client."* Alert Flood Suppressor's ranked work plan is the nearest existing concept. |

### Stage 4 · Confirm & Personalize

| What | A/K | Build state |
|---|---|---|
| Accept / Edit / Dispute per finding | K | `‹NOT-BUILT›` in platform. Prototyped in `qbr-hifi.html`. |
| Route a dispute to the technician and back | K | `‹NOT-BUILT›`. One-directional today: the escalated state exists, no receiving surface. |
| Human approval gate | K | `‹BUILT›` — Temporal signal, 24h auto-reject (`workflows/steps.py:286-359`). Reusable as-is. |
| Per-section finalize | K | `‹NOT-BUILT›` in platform. Owners now known: **orange = Vanessa** (account manager, client side) · **blue = David** (technical, risk review). `[CS: VERIFIED — SRC-U-009 19:04]` |
| Version history on a finalized section | A | `‹NOT-NAMED›`. A section can be reopened and nothing records that it changed, or who changed it. |
| Dual-surface: internal draft vs client-facing export | A | `‹NOT-BUILT›`. Canonical ux.md calls this non-configurable — "two distinct artifact objects in the data model, not one with a visibility flag." No spec has a second artifact object. |

### Stage 5 · The Room — Brains Only

| What | A/K | Build state |
|---|---|---|
| **Produce the workbook** | A | `‹NOT-BUILT›`. No `openpyxl`, `python-pptx`, `python-docx`. One Jinja2 template; `format` enum is `csv`\|`pdf`. Zero hits for xlsx/workbook/spreadsheet across all specs. **The step the whole exercise is named after.** |
| Present, hold the room, answer what no system could | — | Human. Permanently. |
| Record that the client was told | A | `‹NOT-BUILT›`. Should be a by-product of the observation record, not an act. Craig's core use: *"we've used the EBRs as a chance of documenting every quarter that we've told them."* |

### Stage 6 · Close & Compound

| What | A/K | Build state |
|---|---|---|
| Capture commitments as they were actually agreed | K | `‹NOT-BUILT›`. Auto-drafting from the roadmap produces the *recommended* list, not the *agreed* list. Only someone in the room knows the difference. |
| Write commitments as observations with owner + status | A | `‹NOT-NAMED›` — WA-001. |
| Verify next cycle whether they were done | A | `‹NOT-NAMED›`. This is the product. |
| Diff this cycle against last | A | `‹NOT-NAMED›`. Nearest existing thing: `value_ledger_rollups.period_type` is `day`\|`month` — **no quarter, no fiscal period** — and `summary` takes one period with no comparand. |
| Paste the sent summary email | — | Human, and should stay human. Highest-fidelity record in the system, captured by copy-paste. |

---

## 5 · Things that do not exist yet — the register

### 5.1 Corrections to our own artifacts

| # | What we have wrong | Truth | Where |
|---|---|---|---|
| X-01 | Risk framework is NIST CSF 2.0 | Technica aligns to **NCSC 10 Steps to Cyber Security** + **Cyber Essentials**, and uses the government minimum as the sales lever | every finding in `qbr-hifi.html` carries a `nistCode`. Canonical ux.md has **zero hits** for NIST, CIS, NCSC, Cyber Essentials, GLBA |
| X-02 | PSA is ConnectWise | **HaloPSA** | `qbr-hifi.html` seed |
| X-03 | Awareness training is KnowBe4 | **uSecure** | `qbr-hifi.html` f8 |
| X-04 | Open-ticket count belongs in Current Climate | Craig excludes tickets, ticket counts and projects: *"This is not for the minutia."* | `drRenderClimate()` |
| X-05 | Copy-paste is the biggest manual cost | David: *"It doesn't take long, it's just more of the export."* The cost is Inforcer alignment (~1h of 3), in-tenant verification, N-central cross-checking, and re-verifying last cycle | my own earlier claim, retracted |

### 5.2 The greenfield journey — a second journey we have not designed

Technica's own origin: Stefanie bootcamp, early 2024; before that, *"let's go out, meet the
client, buy them a cup of coffee and job done."* A first-timer starting from Stef's template:

- **The continuity engine has nothing to diff.** Everything valuable at EBR #2 is worthless at
  EBR #1. The differentiator cannot be demonstrated for 3–6 months — a first-run value problem
  and a go-to-market risk.
- **No definition of good.** No golden tenant, no peer cohort. Baseline Read has nothing to read against.
- **They get 15 tabs.** Technica cut it to 8: *"the initial document was quite overwhelming."*
  Shipping the full template reproduces the problem they solved by hand.
- **No role split.** Orange/blue collapses; one person is both Vanessa and David.
- **EBR #1 is a disclosure event, not a review.** You tell a client everything wrong with an
  estate you have been managing without documenting. Craig's liability shield only accrues
  *forward*. The instinct to surface every finding is most dangerous exactly where there is no
  prior record of having raised any of them. Needs a deliberate staging decision that
  Technica's cycle 4 does not.
- **Flip side, and the stronger story:** for greenfield the tool can *be* the process. Technica
  spent two years evolving theirs and now only wants the labour removed. These may be two
  different products. `[?]` — Beth's call.

### 5.3 Platform-level absences

`‹NOT-NAMED›` unless noted. Each one blocks something above.

1. Shared observations store (WA-001)
2. End-client entity (GAP-002)
3. Any vendor connector — 0 of 15 in code
4. Normalization layer
5. Entity resolution
6. Observation-window alignment
7. Source arbitration
8. Fan-out across clients
9. Rate limiting on the run path
10. Source-failure / staleness handling
11. Cycle-over-cycle diff
12. Commitment closure tracking
13. Office document generation
14. Dual-surface artifact model — `‹NOT-BUILT›`, named non-configurable in canonical ux.md
15. Version history on a finalized section
16. Client-facing provenance — if the client disputes a number, the operator cannot show the trail
17. Who owns the severity weights driving a client-visible score
18. **Execution engine** — `‹NOT-BUILT›`. Referenced as a dependency by all four specs; exists as a spec nowhere. Owns trigger firing, ledger writes, scope enforcement, output-contract validation, and all vendor data movement.
19. **Runbook execution** — `‹SPEC-ONLY›`. Config store only, no execute endpoint, ports are in-memory stubs, `runs/` never imports `app.runbooks`, and `ValueLedgerEntry.runbook_id` has no FK to `runbooks`.
20. **Authentication** — `‹NOT-BUILT›`. `identity.py` hardcodes one MSP-admin actor; the control-plane MCP inherits it.
21. Skills cannot carry an Office template — allowlist rejects docx/xlsx/pptx; `PK\x03\x04` maps to zip so type-match fails anyway; 200 KB runtime read cap against a 25 MB packaging cap; `scripts/` rejected. `skill_packaging.py:27` claims the cap "accommodates .potx/.pptx templates" — dead code.

### 5.4 What is genuinely built and reusable

Credit where it is due — these are real and should be built *on*, not around:

- MCP gateway: 5 auth providers, OAuth discovery (RFC 9728 / 8414 / 401-probe), SSRF guards, envelope-encrypted credentials, tenant scoping returning 404 not 403, tool allowlists enforced in the gateway cache key rather than by prompt
- Runbook config store: 49/49 tasks, immutable versions, DB-trigger audit, version diff endpoint
- Value Ledger: 55/55, append-only, baseline cascade, rollups, CSV + WeasyPrint PDF, S3 presigned, async above 1,000 entries
- Steps DAG: concurrent on `depends_on`, `on_failure="continue"` with failure markers injected downstream, human approval gates via Temporal signal, cycle validation
- Skills packaging and the runtime plugin with prompt-injection escaping

---

## 6 · Decisions that are Beth's

1. X-01 — framework. NIST CSF, NCSC 10 Steps, or both with a per-client switch? Biggest downstream change; every finding in the prototype depends on it.
2. GAP-002 — is client-as-entity a thing we propose to Nicole, or do we design around it?
3. WA-001 — does the observations store go to Nicole as a spec proposal, or stay a prototype device?
4. Greenfield vs. mature: one product or two?
5. EBR #1 staging — does a first cycle deliberately hold findings back? Liability question, not a design one.
6. Whether the ux.md edits in §7 get applied to the canonical file.

---

## 7 · Proposed edits to `specs/_ux/qbr-ebr.ux.md` — unapplied

1. **Q2 status changes.** The file calls the operator study "the single biggest gap between what we have and what Will/eng need." David is the operator, now on record tool by tool. Q2 moves from unfielded to n=1-fielded. Highest-value edit.
2. **Add a compliance-framework finding.** Currently zero hits for any framework; the compliance surface is one untethered template tab. NCSC 10 Steps + Cyber Essentials is real primary evidence and contradicts our own NIST framing.
3. **Correct the stage count** — line 241 says "7 stages" then lists eight labels. Its own 47% rule.
4. **Qualify the 15-tab claim** — that is the template as shipped by Stefanie, not as delivered by an MSP. Technica runs 8.
5. **New RA rows:** commitment closure has no substrate · fan-out absent · no Office generation · connector count is zero · no rate limiting · no end-client entity.
6. **Defensibility tier needs a fifth state** — `Source-Unavailable`.
7. **Reframe Top Tasks around EBR #2/#3.** All six current tasks are first-cycle; Craig's answer to "biggest hassle" was cycle two.
8. **New DIV:** the buyer names Inforcer as the tool that will do this job — and Inforcer was bought *for* EBR reporting and has not delivered it. An incumbent failing at our job, inside the account.
9. **Add the greenfield journey** as a second journey. Build coverage is measured against one.

---

## 8 · Synthesis

[0% Claude — fill this in]
