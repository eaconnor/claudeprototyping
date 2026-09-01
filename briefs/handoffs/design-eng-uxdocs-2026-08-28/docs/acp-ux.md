---
artifact: ux.md
template_version: 1.0
kind: main
project: Harness (formerly ACP — Agent Control Plane)
owner: Beth Connor
work_type: new-product
research_posture: researcher-backed
status: DRAFT
drift: STALE                     # flipped 2026-08-21. STALE because: (a) acp-core-main-3 is a STATIC download, live repo has moved (see loop C-14); (b) Vertesia execution plan (Confluence 62302388241) changes the delivery surface, not reflected here; (c) Gate 2 still 🔴 at ACP level. Re-scoping is Beth's, not the refresh's.
confidence_regime: PROCEED-FLAGGED
proceed_because: content landed 2026-07-30 from real sources (FSN-83143, vision synthesis, systems maps) — more useful in draft now than withheld until every section is scored
machine_behavior: surface [CS:] tags visibly · do not claim validation · treat §7 as unscored until a real grep pass runs
canonical_spec: acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md
stress_test_method: Idea Chess / Council (44-method matrix available; queued, not run at ACP level)
design_system: Apex
design_lint: static-tokens
skills:
  gate1_evidence: /scout          # read-only; orchestrator persists output (GATE 15)
  journey: /journey-map
  coding: /abductive-tag · /code-rows
  stress_test: idea-chess (via council)
  gate3_build: bethproto
  loop: /refresh-datadump
  handoff: /handoff
  design_lint: apex-check (static-tokens)
confidence_score: UNSCORED        # see §7 — computed by grep, not asserted; do this last, once content settles
mini_docs:
  - briefs/context/qbr-ebr.ux.md  # QBR/EBR offering — DRAFT, 2026-07-28
built_from:
  - briefs/qbr-ebr-experience-map-2026-07-28.md
  - scout_input/SECONDARY-SOURCES-REGISTER-qbr-ebr-2026-07-28.md
  - datadump-manual-human-steps.md
  - Confluence "ACP Research Datadump (living)" (AI space, 62175674556)
  - acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (canonical build spec)
  - acp-core-main-3/Intent Specs/ACP-Management-Plane-AI-Operator-Model.md
  - briefs/vision-synthesis-2026-07-27.md
  - briefs/systems-maps-2026-07-27.md
  - scout_input/lewis-persona-library-cast-2026-07.md
  - scout_input/01-control-plane.md
last_updated: 2026-08-27
---

# Harness — ux.md (main spine)

**One breath:** the machine-and-human-readable research spine for Harness (N-able's Agent Control Plane) — what we know about the problem, who it's for, and what "right" and "built right" mean, cited and confidence-tagged, so design and acp-core eng can open one file and trust it's current. Human orientation (who reads what, how the file is used) lives in [`acp-ux.README.md`](acp-ux.README.md). *(Naming: product-facing name is Harness; spec/repo citations keep "ACP"/`acp-core-main-3` — that's the real source name.)*

---

## [AGENT GATE] — read before generating

> This file is Beth Connor's (Manager, User Experience) research judgment made legible. When an AI reads it, the researcher is present. These rules override default generation behavior.

1. **Confirm read** before generating. If you haven't read this file in full, stop and read it.
2. **Check `confidence_regime`.** `PROCEED-FLAGGED` → mark outputs provisional, surface `[CS:]` tags. `BLOCKED` → stop and name the blocker.
3. **Flag `[A]`/`[?]` you build on.** `[FLAG: output treats ‹claim› as settled — still [A]/[?] in §n. Confirm before spec freezes.]`
4. **Name conflicts with `[CS: VERIFIED]`/`[CS: HIGH]`.** `[CONFLICT: ‹your claim› contradicts §n — "‹quoted claim›".]` Surface, don't resolve.
5. **Do not promote `PROPOSED`.** It's an interpretive call, not settled evidence.
6. **Do not resolve open decisions or any `[?]` (they live in §5).** Surface as named gaps. Resolution routes Beth → Meaghan → Nicole (CLAUDE.md §18). An AI cannot close what the researcher left open.
7. **Gate on >30% `[A]`/`[?]`.** `[GATE: §n is >30% [A]/[?]. Output provisional until confirmed.]`
8. **Mini-doc is required reading.** If an offering has a `mini_docs` entry, read it before generating — deriving acceptance criteria from scratch when a verified mini exists is the failure mode this apparatus prevents.
9. **Verify any ratio or count before quoting it (47% rule).** Grep the source. Fluency does not know its own math.
10. **Note divergence from `canonical_spec` — log, don't resolve.** UX pushing on the spec to deliver value is healthy tension. Log every one in the Divergence Log; an AI does not pick a side. Offerings may carry alternate/additional personas — that's expected; map the full cast and log where it extends the spec.
11. **`self-serve` posture bites harder** — n/a here (this file is `researcher-backed`), but if a child mini is self-serve, an unfilled slot is `[?]`, never draft-license.
12. **Surface unknowns into §5.** Every `[?]`/`[A]`/open-decision goes into §5 (the Open-items register), not left inline only. Its 🔴 rows are the datadump intake.
13. **Invoke the registered skill.** Before generating a section fresh, check the `skills:` registry and invoke the registered skill/agent instead of re-deriving.
14. **Offer the coach on a gap.** When a gate criterion is missing, offer the route (registered skill, else the built-in method guide). The coach does mechanics; it never fills a judgment slot.
15. **Persist read-only agent output in the same turn.** `/scout` is read-only — write its dossiers to disk immediately or they die with the context window (learned 2026-07-28).

---

## Legends — canonical here · mini-docs inherit, do not re-print

**Confidence tags:**

| Tag | Means |
|---|---|
| `[CS: VERIFIED]` | We have the document, or confirmed the person/fact ourselves |
| `[CS: HIGH]` | Well-sourced; not personally verified |
| `[CS: MEDIUM]` / `[CS: LOW]` | Partially sourced / thin — treat with care |
| `[R]` / `[D]` | Backed by research / data |
| `[A]` | Assumed — reasonable guess, not sourced. Fine to use, never to bet on |
| `[?]` | Unknown; needs research |
| `[WOBBLY]` | Single source or narrow tradition — not consensus |
| `[THIN]` | The honest version of a claim we *want* to be true but can't yet support |

**Gate labels:**

| Gate | Question | Who owns it |
|---|---|---|
| **Gate 1** | Do we understand the problem and the people? | Design's live judgment — expect it to move |
| **Gate 2** | Are we building the *right* thing? | Design-led; eng weighs feasibility |
| **Gate 3** | Are we building the thing *right*? | Eng's stable layer — build against it |

Gate ≠ confidence. A Gate 1 section can be `[CS: VERIFIED]`; a Gate 3 section can be `[PENDING]`. Gate = how much is still design's to change. Confidence = how well-evidenced now.

---

**Work-type: `new-product`** — full spine, every section required.

**Scorecard** — colors are *earned*, not asserted (rubric: `_ux-template/GUIDE.md` § Gate rubric). Cite met/missing:

🟡 **Gate 1** (understand the problem) — met: FSN-83143 problem statement + alpha=USER-001 lock; cast mapped from the persona library. Missing: Map 1/4 not rendered as diagrams, Chris Dunlop architecture map not found.
🔴 **Gate 2** (right thing / UX acceptance criteria) — met: nothing at the ACP-wide level yet. Missing: no ACP-level Idea Chess/Council pass (only QBR/EBR sub-offering has one). Outcome variable: named at QBR level (business growth, per mini DIV-004) but **not settled ACP-wide**.
🟡 **Gate 3** (thing right / usability standards) — met: §6 acceptance criteria populated from FSN-83143 REQ-001–024 + SUS ship-gate + trust eval. Missing: §7 not computed; `design_lint` not run; a11y not assessed.

---

## 1. The problem, and for whom — `Gate 1`

> **TL;DR:** Named persona(s), sourced not invented. The call about which problem to prioritize stays live design judgment until Gate 1 is settled — this section moves.

**Problem statement — canonical, FSN-83143 §2, verbatim:** "MSPs spend an enormous fraction of their operational time on repeatable, high-volume IT tasks: patching, alert triage, endpoint health checks, ticket resolution, compliance audits, and QBRs. Evidence from 22 partner interviews confirms these tasks are scriptable but are rarely fully automated because scripts are risky without governance, expertise is unequally distributed across technician teams, and MSPs have no trusted mechanism to encode their SOPs into agents." `[CS: VERIFIED — canonical_source: true]`

**Core value proposition, same source:** "take labor and turn it into software." The outcome for the MSP is reducing the number of technicians needed to deliver contracted services. `[CS: VERIFIED — FSN-83143 §2]`

**Locked 2026-07-30 (Beth's call — do not re-open):** Alpha persona (the owner/growth-squeezed operator, per the vision-synthesis corpus) **and USER-001 (MSP Admin, FSN-83143 §3) are the same person, not two personas.** In the target small-shop MSP, the owner wears the Admin/configurator hat too — the *persona library* (a 26-role catalogue of MSP jobs we draw the fuller cast from; see Glossary) says it plainly in its `owner` entry: "in a small shop, the buyer, escalation point, salesperson, and often still a technician." `[CS: VERIFIED — Beth]`

**Cast list — who this is actually about:**

| Who | Role in this story | Evidence quality |
|---|---|---|
| **Alpha persona = USER-001 (MSP Admin)** — owner/growth-squeezed operator | Primary creator/configurator of Coworkers *and* the business owner in a small shop — one person, two functions | `[CS: VERIFIED — Beth, 2026-07-30]` |
| **Buyer/decision-maker at scale** — the persona library's `owner` card's "Owner-operator (PE-backed contrast)" | At larger/PE-backed MSPs, Admin and owner split: owner becomes a PE-backed CEO/CFO wanting "portfolio roll-ups, board-ready exports, unit economics — running to a thesis and a clock," while a distinct `tenadmin` absorbs the USER-001 configurator work. Split point is *scale-driven*, named in the library's card, not invented. | `[CS: MEDIUM]` — [`lewis-persona-library-cast-2026-07.md`](../../scout_input/lewis-persona-library-cast-2026-07.md), not independently verified vs. Nicole's model |
| **Adjacent roles** — 26-persona library | `tenadmin` (likely large-shop USER-001 split-off) · `sdm` (service delivery manager — oversees fleet adoption) · `am` (account manager/vCIO — presents Coworker value in QBRs; see `qbr-ebr.ux.md` §1) · `intaud`/`extaud` (human counterpart to FSN-83143 USER-005) · `autoeng` (centralized-services/automation engineer — the labor the value prop most directly targets; nobody currently interviews this persona) | `[CS: MEDIUM]` — same source; named gaps become named hypotheses, not yet fielded |

**4A's** (basic pass, 2026-07-30; `[?]` where unsourced, not invented):

| Persona | Ambitions | Attitudes | Actions | Anxieties |
|---|---|---|---|---|
| **Alpha (USER-001 / owner-operator, small shop)** | Grow without proportionally growing headcount — "take labor and turn it into software" is written for this person `[CS: VERIFIED — FSN-83143 §2]`. the library's `owner` card: "grows recurring revenue and margin, keeps clients and staff, tries not to get blindsided." `[CS: MEDIUM]` | Wants "a trustworthy signal that things are under control — not to live in the platform" `[CS: MEDIUM — persona library]`. Likely risk-averse about ceding judgment to AI (Map 3 fishbone: no certification, unresolved liability) — `[A]`, not this persona's own words. | "The buyer, escalation point, salesperson, and often still a technician" in a small shop `[CS: MEDIUM]`; configures/creates/activates Coworkers per USER-001 `[CS: VERIFIED]`. | `[?]` — no first-person evidence of what this persona fears. Plausible from Map 3's liability spine, but inferred. |
| **Buyer at scale (PE-backed CEO/CFO)** | "Running to a thesis and a clock" — portfolio growth, exit multiple `[CS: MEDIUM — persona library]`. | Numbers-first, board-facing; roll-ups and unit economics, not console time. `[CS: MEDIUM]` | Consumes portfolio dashboards/board exports; delegates config to `tenadmin`. `[CS: MEDIUM]` | `[?]` — unsourced. Plausibly acquisition/integration risk, not evidenced. |

Full 4A's on the adjacent-roles row not attempted — five roles bundled in one cast row would need to split out first. Flagged, not done.

## 2. Journey / orienting map — `Gate 1`

> **TL;DR:** Two ACP-wide process maps exist, ready to render — the Head-Nerd advisory flow (bottleneck marked) and the fleet dependency/gate map. QBR/EBR has its own offering-level experience map.

- **ACP-wide:** [`systems-maps-2026-07-27.md`](../systems-maps-2026-07-27.md) — five text maps, grounded in the Joe L. / Lewis P. / Stef H. interviews, flagged ready to render as diagrams: **Map 1** — the expert-advisory flow (Diagnose → Kit → Fit → Certify → Deliver), with the bottleneck marked at the three steps that need scarce expert judgment; **Map 4** — which offerings can't ship until an open gate (Q1, Q2, or "Gate C") is answered. `[CS: HIGH — grounded in interview transcripts; the strategic overlays are tagged [A] in the source]`
- **Offering-level (QBR/EBR only, so far):** six-phase experience map + canonical service blueprint — see `qbr-ebr.ux.md` §2.
- **Not yet found:** an engineering-side architecture diagram (Chris Dunlop, eng owner on the Intent Specs) to ground the systems/technical half. Checked locally — none in this repo. `[?]` — likely in Confluence or only in Chris's head; ask him directly.
- 5Es, PICNIC worksheet remain `[PENDING]`.
- **Rendering status:** Map 1 and Map 4 are mechanical next steps (SVG/FigJam via `/journey-map`), not new research. `[PENDING — render on next pass]`

## 3. Four-angle view — see Appendix A

Full POEMS / Five Human Factors / Value Webs synthesis is in **Appendix A**. The build-relevant pieces already live in the spine: the **production-line vs. job-shop split** (what to automate vs. protect), the Coworker **objects** (§1), and the **value/pricing items** (§5).

## 4. Sustaining or disruptive — see Appendix A

Full analysis in **Appendix A**. In brief: classification is open per-offering `[?]`. QBR/EBR's cross-vendor branch may reach a *new* market (disruptive) while its native branch is incremental (sustaining); the other four agents skew "better tooling," because N-central already automates much of their territory — an internal-cannibalization risk that now has evidence.

## 5. Open items — assumptions · decisions · questions — `Gate 1 / Gate 2`

> **TL;DR:** everything uncertain in one register — what we're betting on (assumption), what we haven't chosen (decision), what we don't know (question). Two cheap gates (Q1, Q2) unlock most of the fleet and neither has run. **Riskiest first.** Also the datadump intake: 🔴 rows are the next agenda (feeds `/refresh-datadump`). An item closes 🟢 only when its answer folds into the body *and* its tag upgrades. Pulled from the reconciled vision synthesis, not invented.

| Item | Type | Status | Owner |
|---|---|---|---|
| **Q1 — data-egress/DPA.** Can N-able legally pull non-N-able vendor data into a client-facing artifact? ~40% viable. Gates Offerings A (Cross-Vendor), C, E. A legal read + one competitor ToS check, not a build. | assumption (evidence) → legal | 🔴 | Beth (to commission) |
| **Q2 — does the operator want the (kitted) mechanism**, or just the destination? ~93% adoption assumed, never tested — all demand signal so far is buyer intent, not operator pull. Needs operator ethnography + one solution-fit session. | assumption (evidence) | 🔴 | Beth (to commission) |
| **Env Health divergence** — drag-rank puts QBR #1; n=119 survey puts Env Health highest per-agent (3.59). Which leads the fleet? | decision | 🔴 | Beth |
| **Day-1 coworker sequencing** — build ships Ticket Triage (ranked lower); vision leads with QBR (#1). | decision | 🔴 | Beth/Nicole |
| **Positioning fork** — delivery-lead (user) vs owner (buyer): who does the offering speak to? | decision | 🔴 | Beth |
| **MVP spine** — Env Health assembly vs. severing the service-desk dependency. | decision | 🔴 | Beth |
| **Confidence scope** — differentiator vs. enablement problem vs. research-first. | decision | 🔴 | Beth |
| **Autonomy model** backed into risk-tier defaults, not ratified against tested alternatives; QBR/IR-RCA/normalization have no spec yet. | decision | 🔴 | Beth/Nicole |
| **ACP-wide wicked-problem + goal-decomposition** (§6 steps 1–2) — candidate framings named, not chosen. | decision (judgment) | 🔴 | Beth |
| **Value Ledger renders $0 at launch** — built, no wired producer. FIX FIRST — the enterprise-value story is empty until one runbook emits a real entry. | assumption (build-seq) | 🟡 resolving | Eng |
| **Normalization ≥75% on real mixed-vendor data, and the 15-min operator edit-and-send flow fits in 15 min** — both load-bearing for Offering A/Package 5, neither tested. | assumption (evidence) | 🔴 | — |
| **Chris Dunlop engineering architecture map** — does one exist? (would ground the systems half of §2) | question → ask Chris | 🔴 | Beth |
| **Cultural human factor at ACP-wide level** — only QBR has a UK finding; does it generalize? | question (evidence) | 🔴 | — |
| **102 empty `[0% Claude — fill this in]` bet sentences** across 27 files (grep-confirmed) — nobody has written a synthesis sentence yet. | decision (judgment · human-only) | 🔴 | Beth |
| **44-method Council pass** — queued, not run (fuller stress-test than the 5-voice default; see [`CHORES.md`](../../CHORES.md)). | question / action | 🔴 | Beth |

**Spec divergences** are logged separately (Divergence Log below): offering-specific ones live in each mini (QBR/EBR's is `qbr-ebr.ux.md` §5a); no ACP-wide divergence identified yet — its 🔴 rows, when they exist, list here by reference.

Type preserves the §9b split — assumption/question = evidence-gap (→ research); decision = a human's call (→ Beth → Meaghan → Nicole). Source: [`vision-synthesis-2026-07-27.md`](../vision-synthesis-2026-07-27.md), [`systems-maps-2026-07-27.md`](../systems-maps-2026-07-27.md) (Map 4, Map 5).[^3]

## 6. Problem → Goals → Tasks → Function — `Gate 3` (+ Gate 1/2 for steps 1–2)

> **TL;DR:** The acceptance-criteria spine. Steps 1–2 are design's live judgment. Steps 3–4 are where eng builds. Quality bar applies to *how well* a task executes — not which tasks are right (Top Tasks' job).

**Steps 1–2 — `Gate 1 / Gate 2` (design's live judgment; eng: context, not spec):**

1. **Wicked problem** — from §1. `[PENDING — Beth's call]`. Candidate framing (not a decision): Map 3 fishbone names five root causes in two spines — **capability** (generic/untested runbooks built with no time) and **accountability** (no certification/sign-off, owner-vs-technician confusion, unresolved liability). Raw material, not the statement.
2. **Sub-problems / goals** — `[PENDING — Beth's call]`. Candidate: the vision synthesis's "dominant strategy" (answer Q1/Q2 first; lead with A; frame A as vCIO/vCISO packaging; reprice B; buy/partner past the data-egress wall) reads as a candidate goal-decomposition, not confirmed.

**Steps 3–4 — `Gate 3` (eng mostly lives here; stable, build against it):**

3. **Tasks** — Top Tasks (Gerry McGovern), not an exhaustive feature list. FSN-83143's three primary journeys are the creation-layer candidate: **(a)** Admin creating a Coworker from scratch (assemble Identity/Experts/Scripts/Runbook/Guardrails/Trigger → review Draft → activate); **(b)** cloning a platform default; **(c)** AI-assisted creation (N-zo/Claude Code proposes a changeset → admin reviews/activates). `[CS: VERIFIED — FSN-83143 §3]`. Creation-layer only — what a specific Coworker's runbook does once running is each mini's job.
4. **Function/feature structure** — FSN-83143 §6 enumerates REQ-001–024 (assemble, clone, Draft→Active→Paused→Archived, three trigger types, guardrail/risk-tier enforcement, Value Ledger writes, execution-history, autonomy promotion, AI-operator drafting via MCP). `[CS: VERIFIED — FSN-83143 §6]`. On first pass REQ-001–024 map cleanly onto (a)/(b)/(c); no orphaned function or unserved task found yet — not checked function-by-function in a dedicated pass.

**Quality bar — `Gate 3`, at the task/interaction level. Default floor (until product-specific usability research overrides):**

| Standard | Why it applies to Harness |
|---|---|
| Nielsen #6 — Recognition over recall | Users task-switch under pressure. `[CS: HIGH]` |
| Nielsen #1 — Visibility of system status | Agent runs are async/durable (Temporal); status must be unambiguous. `[CS: HIGH]` |
| Nielsen #5 — Error prevention | AI-generated content must make errors hard to ship, not easy to approve. `[CS: HIGH]` |
| Nielsen #4 — Consistency | Confirm-gates, defensibility tiers, approval signals render the same everywhere. `[CS: HIGH]` |
| Accessibility — WCAG AA · keyboard · contrast · screen-reader | Baseline for any shipping surface. `[?]` — not assessed here yet. |
| ISO 9241-11 (effectiveness / efficiency / satisfaction + context of use) | Usability definition adopted UEM-wide — see `_ux-template/GUIDE.md` § Gate rubric. `[CS: HIGH — ISO 9241-11:2018]` |
| N-able Tenets & Traps (Medlock & Herbst) | 9 Tenets / 26 Traps — shared vocabulary across UX/eng/product/business. `[CS: HIGH]`[^4] |
| N-able Apex design system | `design_lint: static-tokens` — linted against the static Apex snapshot, coverage-declared. See GUIDE § Design-system lint. `[?]` — lint not run here yet. |

**Placeholder usability methods — self-serve fallback** (if working without a researcher): cognitive walkthrough (walk each §6 task as the primary persona, ~2h) · 5-second test on any confirm-gate/approval UI (3 people: "what does this mean? what next?") · content audit on AI-generated output (grep the ratio, don't eyeball).

**Usability ship gate (Beth, 2026-07-30):** ≥6 SUS to ship; ≥8 SUS on the top five key tasks. Applies to any Harness offering unless a mini names a different bar.

**Trust-in-AI-output eval (Beth, 2026-08-04) — `[A]`, custom instrument, unvalidated:** applies alongside SUS to any AI Coworker/Expert output. Built from construct themes in Jian, Bisantz & Drury (2000) Trust in Automation scale — **not** that scale's item text (gated pending author permission). `[CS: LOW — construct themes only; do not attribute exact wording to Jian et al.]` 5-point Likert, no reverse-scoring:

1. I understand why this output turned out the way it did.
2. This output would hold up if I checked it myself.
3. I trust this enough to act on without independently re-verifying.
4. This tool has not misrepresented what it actually did or found.
5. I feel confident, not wary, using this.
6. I'm familiar enough with how this works to know its limits.

Score = mean of 6. No ship-gate threshold yet — first administrations establish a baseline before any number becomes a bar. Administer per-offering, same cadence as the placeholder methods.

**Ruled out:** a separate "IIT principles" canon — no discrete numbered-principles list exists distinct from Whitney's methodology (§3). `[CS: LOW — no canon found]`
**Future merge point:** joins Beth Nam's heuristics/usability work once located (owner + location `[?]`).

## 7. Confidence score — `cross-cutting`

> **TL;DR:** If [A]+[?] > 30%, this file isn't ready to hand to eng as acceptance criteria. Computed by grep — don't self-report it. Not yet computed this pass.

*(The >30% [A]/[?] rule as a literal rollup: `% [R]/[D]` vs `% [A]/[?]`, grep across this file — same discipline as the 47% rule. In practice tracks how settled Gates 1–2 are; §6 steps 3–4 hold a high [R]/[D] ratio even while §1/§5 are open.)*

`[NOT YET SCORED — run the grep pass on the next reconcile, not in the same edit that added content]`

## 8. Sources

*(Link index. If it's not linked, it's not a source.)*

**Canonical specs:**
- [`FSN-83143_AI_Coworkers_in_ACP.md`](../../acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md) — canonical build spec. `canonical_source: true`.
- [`ACP-Management-Plane-AI-Operator-Model.md`](../../acp-core-main-3/Intent Specs/ACP-Management-Plane-AI-Operator-Model.md) — AI-operator permissions, proposed-changes flow.
- [`acp-problem-statement-2026-07-28.md`](../acp-problem-statement-2026-07-28.md) — three ACP-level problem-statement candidates.

**Vision / concepting corpus:**
- [`vision-synthesis-2026-07-27.md`](../vision-synthesis-2026-07-27.md) · [`systems-maps-2026-07-27.md`](../systems-maps-2026-07-27.md) · [`tier0-sketches-reconciled-2026-07-27.md`](../tier0-sketches-reconciled-2026-07-27.md) · [`persona-scorecard-acp-concepts-2026-07-24.md`](../persona-scorecard-acp-concepts-2026-07-24.md)
- [`acp-offerings-2026-07-14.md`](../acp-offerings-2026-07-14.md), [`acp-word-sketches-2026-07-14.md`](../acp-word-sketches-2026-07-14.md), [`acp-word-sketches-four-complete-2026-07-15.md`](../acp-word-sketches-four-complete-2026-07-15.md), [`acp-vision-synthesis-2026-07-14.md`](../acp-vision-synthesis-2026-07-14.md), [`acp-why-nable-build-map-2026-07-14.md`](../acp-why-nable-build-map-2026-07-14.md)

**Idea Chess:**
- [`idea-chess-fleet-synthesis-2026-07-14.md`](../idea-chess-fleet-synthesis-2026-07-14.md), [`idea-chess-five-to-build-2026-07-15.md`](../idea-chess-five-to-build-2026-07-15.md), [`idea-chess-build.md`](../idea-chess-build.md), [`idea-chess-offering-a.md`](../idea-chess-offering-a.md) through `-e.md`
- [`acp-idea-chess-play-to-win-2026-07-20.md`](../acp-idea-chess-play-to-win-2026-07-20.md), [`acp-vendor-deep-dives-and-idea-chess-2026-07-20.md`](../acp-vendor-deep-dives-and-idea-chess-2026-07-20.md), [`concept-sketches-qbr-2026-07-20.md`](../concept-sketches-qbr-2026-07-20.md), [`acp-concept-brief-2026-07-20.md`](../acp-concept-brief-2026-07-20.md)

**Council testimony:**
- [`qbr-ebr-council-testimony-2026-07-30.md`](../qbr-ebr-council-testimony-2026-07-30.md) — QBR/EBR, 5-voice, fresh.
- `council-mini-{alert-flood,ir-rca,env-health,tabletop}.md` (2026-07-06) + their `-erratum-2026-07-30.md` companions.
- [`council-testimony-department-reframe.md`](../council-testimony-department-reframe.md) — erratum-layer precedent. · [`acp-trust-level-council-44.md`](../acp-trust-level-council-44.md) — 44-method format worked example, queued per §5.

**Persona / interview:**
- [`lewis-persona-library-cast-2026-07.md`](../../scout_input/lewis-persona-library-cast-2026-07.md) — 26-persona library. · [`joe-lewis-julian-interview-2026-07.md`](../../scout_input/joe-lewis-julian-interview-2026-07.md) — SME interview. · [`adlumin-proto-personas-pptx-2026-07.md`](../../scout_input/adlumin-proto-personas-pptx-2026-07.md) — pointer only, image-locked.

**Architecture / platform:**
- [`01-control-plane.md`](../../scout_input/01-control-plane.md), [`02-ai-coworker.md`](../../scout_input/02-ai-coworker.md), [`03-runbook.md`](../../scout_input/03-runbook.md) — trust-level, Value Ledger, 5-layer stack, script/risk model, Runbook Engine.
- Confluence (this file, registered): [ux.md — ACP synthesis spine (2026-07-28)](https://n-able.atlassian.net/wiki/spaces/AI/pages/62227775577) — Synthesis-briefs shelf.

## 9. Mini-docs

*(Each mini is required reading before any agent specs or builds the offering it covers.)*

- [`qbr-ebr.ux.md`](qbr-ebr.ux.md) — QBR/EBR offering · status: DRAFT · 2026-07-28

**Confirmed 2026-07-30 (Beth): the other four default Coworkers need their own mini-docs eventually** — Alert Flood Suppressor, Incident Response Analyst, Environment Health Monitor, Security Tabletop have Council testimony but no full mini (no persona cast, no four-angle, no Top-Tasks spine). A named, deferred gap. Build when there's a real reason (a spec/build request), not speculatively.

---

## Divergence Log — vs. FSN-83143 (canonical) — `[SPEC DIVERGENCE]`

> ACP-wide divergences from the canonical spec. Status is grep-checkable — count the emoji. Resolved rows stay.

*No ACP-wide (this-file-level) divergence against FSN-83143 has been identified yet.* The four divergences found so far are all QBR/EBR-specific and live in [`qbr-ebr.ux.md`](qbr-ebr.ux.md) §5a. Re-check once minis exist for the other four offerings.

---

## Appendix A — Framework analysis

> **Moved here 2026-08-28.** Frameworks — valuable, but appendix material: *how* the conclusions were reached, not the build spec. Build-relevant conclusions live in §1 / §5 / §6.

### A1 · Four-angle view (POEMS · Five Human Factors · Value Webs) — Whitney Quesenbery's Four Lenses[^2]

| Lens | Prompt | Content |
|---|---|---|
| Activities (Porter) | How do they do it? | Two task families ([`systems-maps-2026-07-27.md`](../systems-maps-2026-07-27.md) Map 2): **production-line** (triage, patching, alert suppression — low-variety, ~zero marginal cost, "ride it," Offering D) and **job-shop** (runbook design, EBR, tabletop, coaching — high-variety, needs the craftsman, the moat, "own it," Offering A/vCISO). Advisory flow (Map 1): Diagnose → Kit (~75% skeleton) → Fit-to-asset (~25% human) → Certify → Deliver, feedback loop via Value Ledger. `[CS: HIGH — transcript-grounded; strategic framing [A]]` |
| POEMS | What is it? | **People:** §1 cast. **Objects:** per FSN-83143 §3 a complete Coworker requires Identity, AI Experts, Scripts (risk-tiered), Runbook, Guardrails, Trigger. **Environment:** the production-line/job-shop split *is* the environment split. **Message:** "Value is the north star" (FSN-83143 §5); business-value-not-technical-metrics at client-facing level (see qbr-ebr.ux.md Must 1). **Systems/Services:** MCP gateway, Runbook Engine, Value Ledger, Script Repository, Temporal, plus the MSP's own N-central, Adlumin, PSA (Halo/ConnectWise/Autotask). `[CS: VERIFIED for FSN-83143 items; CS: HIGH for architecture]` |
| Five Human Factors | Who is it for? | **Physical:** people juggling several tasks under pressure (Nielsen #6). **Social:** the accountability chain from Map 3's root-cause diagram (a "fishbone") — who's answerable, no certification, an unresolved liability gap. `[R internal — Joe L. 11:12–17:41]`. **Emotional:** an SDT question (competence and control) — does the tool build the operator's confidence or erode it? Unresolved. **Cultural:** `[?]` platform-wide; the mini has a UK-specific finding. **Cognitive:** the "curse of the expert" recurs at the QBR level — `[THIN]`. |
| Value Webs (Porter) | How create value? | Platform 5-layer monetization stack: **Platform Access · Workflow Execution · Expert Licensing** ("trust-level becomes monetizable") **· Vendor Ecosystem · MCP & Tool Transactions**. `[CS: VERIFIED — scout_input/01-control-plane.md]`. Layered over: vCISO/vCIO as a **packaging** exchange — "Survival = a PRICING decision, not a build." `[CS: HIGH]`. What N-able gets (attach, upsell, churn reduction) is `[A]` — no revenue figure in the corpus. |

*(Footnote [^2] for the source worksheet.)*

### A2 · Sustaining / disruptive

Classification open per-offering; real testimony now exists for five offerings:
- **QBR/EBR** — five analytical lenses (2026-07-30). N-able-only version = incremental (*sustaining*); cross-vendor version could reach MSPs who run *no* reviews (*disruptive*) — some successful MSPs skip reviews entirely, so that market is real. Two lenses disagree on what the cross-vendor version *is* (market-timing bet vs. chokepoint control). Named, not resolved.
- **The other four agents** (Alert Flood, Incident Response, Environment Health, Security Tabletop): a seven-lens review (2026-07-06) + 2026-07-30 corrections skew them toward "better tooling" — N-central already automates much of their territory, so the internal-cannibalization risk now has evidence.
- Ten Types of Innovation (Doblin/Keeley) confirmed 2026-07-28. Classification is a synthesis move to stress-test, not a `[CS:]` data point. Credits: Christensen (Disruptive Innovation), Keeley/Doblin (Ten Types).

---

## CHANGELOG

*(Newest first. Never silently delete a wrong number — mark it ☠ with a note.)*

- **2026-08-28** — Step 2 (all-files pass): SME sources anonymized (Joe L. / Lewis P. / Stef H.); persona-library de-personalized in prose (file-path citation kept); §3 (four-angle) + §4 (sustaining/disruptive) demoted to **Appendix A**. Internal team kept as decision-owners in routing. Read-path: §1 → §2 → §5 → §6.
- **2026-08-28** — Merged §5 (Riskiest assumptions) + §7 (Open decisions) + the loop (Open questions → datadump) into one **§5 Open items** register with a Type column (assumption / decision / question) preserving the §9b evidence-vs-decision split. Renumbered §8→§7, §9→§8, §10→§9. Divergence Log stays standalone; its 🔴 rows list into §5 by reference. AGENT GATE rules 6 & 12 repointed to §5. No findings changed — structure only.
- **2026-08-27** — Refactored onto ux.md template v1.0: frontmatter schema, 15-rule AGENT GATE, work-type/registry/design_lint, Gate rubric scorecard, the loop, Divergence Log, this changelog. Human narrative moved to `acp-ux.README.md`. Project name updated to Harness (spec citations keep ACP). No findings changed — packaging only.
- **2026-08-21** — drift flipped to STALE (refresh Step 6): static-download drift, Vertesia execution plan unreflected, Gate 2 still 🔴.
- **2026-07-30** — Moved skeleton → draft: §1/§2/§3/§5/§6 populated from FSN-83143, vision synthesis, systems maps. Alpha=USER-001 locked. 4A's basic pass. Four Council errata folded into §3/§4.

---

## Glossary — terms used in this file

*Plain-language definitions so this file reads without inside knowledge. Trust tags (`[CS:]`, `[R]`, `[D]`, `[A]`, `[?]`, `[WOBBLY]`) are defined in the Legends near the top.*

**The world:** **MSP** — managed service provider; the IT company that runs technology for smaller businesses. N-able's customer. · **Harness / ACP** — N-able's Agent Control Plane, the platform this file is about; "Harness" is the product name, "ACP" / `acp-core-main-3` the internal spec name. · **Coworker** — a configurable AI agent an MSP builds on the platform (e.g. the QBR Advisor). · **QBR / EBR** — quarterly / executive business review; the recurring meeting where an MSP proves its value to a client. · **vCIO / vCISO** — "virtual" chief information (security) officer; the advisory service MSPs sell upmarket. · **N-central / Adlumin / Cove / PSA** — N-able's monitoring / security / backup products, and the MSP's ticketing system (Halo, ConnectWise, Autotask).

**The people:** **USER-001 / alpha persona** — the primary user the build spec targets: the small-shop MSP owner who is also the admin and often still a technician. · **persona library** — a 26-role catalogue of MSP jobs (owner · `tenadmin` platform admin · `sdm` service-delivery manager · `am` account manager · auditors · automation engineer…) used here to name the fuller cast; filed at [`lewis-persona-library-cast-2026-07.md`](../../scout_input/lewis-persona-library-cast-2026-07.md), `[CS: MEDIUM]` until its sourcing is confirmed. · **Head Nerd** — N-able's partner-education role.

**The method:** **4A's** — a persona summary: Ambitions, Attitudes, Actions, Anxieties. · **Four Lenses (Activities · POEMS · Five Human Factors · Value Webs)** — Whitney Quesenbery's observation checklists: what people do / what's in the environment / what people need / who exchanges value with whom. · **Production-line vs job-shop work** — repetitive, automatable tasks (triage, patching) vs. high-judgment per-client work (runbook design, EBRs); the split that decides what to automate vs. protect. · **Idea Chess** — an adversarial concept test: walk a concept through the stages where it could fail and name the first death. · **Council** — several analytical frameworks read the same brief and give testimony *without* agreeing; contradictions are kept, not resolved. · **Sustaining vs disruptive** — Christensen's terms: a better tool for people already doing the thing vs. reaching people who do none (a new market). · **Ten Types of Innovation** — Doblin/Keeley's catalogue of ten places innovation can happen.

**The bets & machinery:** **Q1 / Q2** — the two cheap tests that gate most of the fleet: **Q1** = may we legally use other vendors' data in a client-facing artifact? **Q2** = does the operator actually want the mechanism, or just the finished result? · **Value Ledger** — the platform's record of the value each Coworker run produced; renders $0 today because nothing writes to it yet. · **Runbook / Guardrails / Trigger / Script Repository** — the parts of a Coworker: what it does, its safety limits, what starts it, and its risk-tiered scripts. · **MCP gateway / Temporal** — the platform's tool-access layer and its durable task-execution engine. · **Map 1 / Map 3 / Map 4** — the systems maps (advisory-flow bottleneck / root-cause fishbone / fleet dependency map) in [`systems-maps-2026-07-27.md`](../systems-maps-2026-07-27.md). · **`[0% Claude — fill this in]`** — a judgment slot reserved for a human; never AI-filled.

**A few more:** **the moat** — a durable advantage a competitor can't easily copy. · **Offerings A–E** — the five candidate products in the fleet (A = Client-Facing Proof / QBR; D = production-line automation; etc.), named in the vision synthesis. · **SDT (Self-Determination Theory)** — a psychology framework on what makes people feel competent and in control. · **Fishbone** — a root-cause diagram that traces a problem back to its causes. · **"Curse of the expert"** — being so deep in a subject you can't see what a non-expert needs. · **SUS** — System Usability Scale, a standard usability score; here the ship-gate is ≥6 overall, ≥8 on the top five tasks. · **Defensibility tiers (Measured / Benchmarked / Estimated / Unverified)** — how well-backed a machine-made claim is; only "Measured" gets headlined to a client, "Unverified" is blocked.

---

### Footnotes

[^2]: `Four Lenses -- Clean Master.pdf` (Beth's own file — Whitney/IIT Institute of Design context-brief canvas). Whitney's published writing not yet pulled as a separate cited source.
[^3]: [`vision-synthesis-2026-07-27.md`](../vision-synthesis-2026-07-27.md) — supersedes the original North Star Confluence citation (62176526400); the vision synthesis reconciles against that North Star rather than duplicating it.
[^4]: Medlock & Herbst, Microsoft. [uitraps.com](https://uitraps.com/about/) · [MeasuringU overview](https://measuringu.com/frameworks-for-classifying-ui-problems/)

---

*Built from the Vault Q1 Shareout precedent (Beth's own past work, Capital One/Adaptive Path, 2018) — same Research/Design-track split, same Orienting-Tools naming. Not invented from scratch.*
