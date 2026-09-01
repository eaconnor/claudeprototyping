---
feature: "EBR Coworker — 004 Assembly (Technica runbook × Vertesia runtime)"
gate: 30
owner: "Beth"
problem_statement: "MSP EBR review at Technica (Craig/David) is manual judgment work — gap-to-consequence-to-priority grading against NCSC 10/Cyber Essentials, continuity checks, liability logging — redone from a blank canvas each cycle; calendar-fired QBRs read as theater independent of renewal outcome."
okr_objective: "Prove the native EBR coworker (judgment + continuity engine, moat = C2) is customer-pulled, not vendor-pushed theater, ahead of the fixed Mon 2 Nov 2026 monetization date."
okr_key_result: "[?] — no metric is instrumented yet. Phase 1 (~1 month, ~21 Sept 2026) success is defined qualitatively — 'pulled and used, not politely tolerated' — not numerically. A number requires the trial to run."
counter_metric: "Liability exposure from a wrong red/amber/green grade shipped client-facing (Unverified tier must stay hard-blocked); David/Craig's trust in the artifact if the coworker's judgment diverges from his own."
idea_score: 13
evidence_sources:
  - "briefs/technica-ebr-runbook-draft-2026-08-21.md"
  - "briefs/ebr-coworker-phased-plan-2026-08-20.md"
  - "briefs/vertesia-brief-2026-08-21.md"
  - "scout_input/apex-sentient-design-deck-ref-2026-08-20.md"
  - "briefs/idea-chess-qbr-round3-2026-08-20.md"
status: "draft"
confidence_regime: PROCEED-FLAGGED
proceed_because: "Phase 1's own logic is 'cheap to disprove, on purpose' — the value of running the trial and surfacing what's still open exceeds the cost of waiting for full resolution; Beth's C-11 decision already treats Vertesia as given, so the assembly needs a spec to run against even though several of its parts are unverified."
machine_behavior: "build the Phase 1 assembly (dashboard surface only, write-back deferred); surface every [?]/[A] tag visibly in the artifact, not just this brief; do not claim adoption/ROI validation — none exists pre-trial; enforce dual-surface (Must 6) as structural, never a toggle; enforce sub-0.80 switch-affordance and Unverified hard-block regardless of sign-off status; treat risk-level and primitive-definition as blocking opens, not defaults to silently resolve."
---

# EBR Coworker — 004 Assembly Brief

**>30% flag, named per contract:** 64 tagged claims total (60 + 4 added 2026-08-24, real-build acceptance criteria). R+D (sourced) = 32 (50.0%). A+? (assumed/unknown) = 32 (50.0%). This brief is **not ready** by the stated threshold. Given where Phase 1 actually sits — a decision made (C-11, Bet A), a runbook drafted with its own explicit `⟨VERIFY⟩` slots, and a Defend-stage crux still open — this ratio is a plausible and honest outcome, not a defect to paper over. Do not read gate=30 as "close." Read it as: the mission call is made, the build-right dimensions are named, and roughly half of what makes this a *working* assembly rather than a *named* one is still owned by someone who hasn't weighed in yet.

## Gate 1 — Problem: real and sourced, mostly, with named verify-gaps

Craig/David's EBR practice at Technica is the anchor claim, and it's sourced, not assumed: EBR judgment (gap → consequence → priority grading against NCSC 10 / Cyber Essentials) is done by hand, and a new review starts from a blank canvas each cycle unless someone manually re-derives continuity [R — SRC-U-009, rows 190/191]. The corpus also shows demand for a governed, reusable version of this judgment — "a million versions flying around" [R — SRC-U-009, row 258/278, cited in the phased plan] — though that signal leans Phase 2 (template reuse), not Phase 1.

The theater problem is externally corroborated, not just Craig's opinion: a Reddit customer-success thread documents calendar-fired QBRs as theater, with renewal not tracking review quality [R — scout_input Reddit CS corpus, cited in ebr-coworker-phased-plan-2026-08-20.md]. That's the basis for design tenet 1 — signal-fired, not calendar-fired [D — ebr-coworker-phased-plan-2026-08-20.md].

Two load-bearing claims are explicitly unverified in the source runbook itself — carried here, not resolved:
- **Risk level.** Tagged **high** (client-facing + liability claims) but flagged `⟨VERIFY⟩` — Beth has not confirmed high vs. medium [? — owner: Beth, technica-ebr-runbook-draft-2026-08-21.md].
- **David's actual judgment.** The 8-tab structure, the opening move (does he open on the delta?), and the exact gap-logic are encoded documented practice, not confirmed as his real judgment [? — owner: David/Beth, same file, §18].

Trial-phase data sources are named and sourced: N-Central, Enforcer, Usecure, Halo, Roost, Cloud Capsule, plus the operator's own 8-tab Excel [R — SRC-U-009, runbook intent step 1]. One count doesn't reconcile: the coworker wrapper says "manual paste (trial) → 8 connectors (later)," but only 6 third-party sources are named — whether "8" means 6 + 2 unnamed, or is conflated with the Excel's 8 tabs, is unresolved [? — not attempted in this pass].

Business-commitment context is independently verified: N-able-branded Vertesia console, 5 coworker runbooks, 8 integrations, paid SKU by Mon 2 Nov 2026 [D — Confluence 62302388241, Nicole Reineke, 2026-08-19, cited verified in vertesia-brief-2026-08-21.md].

## Gate 2 — Right thing: the mission call is made; the terms it was made on aren't fully settled

The bet is named: **Bet A**, native wedge, moat = C2, chosen against Beth's win-definition (Desirability × Viability × Feasibility) [A — Beth's decision, dated 2026-08-20; a call, not evidence — ebr-coworker-phased-plan-2026-08-20.md]. The runtime question that used to gate this bet is resolved the same way: **C-11 treats Vertesia as a given** [A — Beth's decision, dated 2026-08-21; a call, not evidence — same file, §C-11].

What that decision does and doesn't buy is documented: N-able owns the runbooks (C2) and every connector; Vertesia owns the console/orchestration surface only — "Vertesia ships zero PSA connectors" [D — vertesia-brief-2026-08-21.md, sourced to Confluence 62302388241]. This is the *opposite* allocation from the one that killed Narmada-as-substrate (N3) in Idea Chess, where margin and C2 relationship accrued to the partner [R — idea-chess-qbr-round3-2026-08-20.md]. N3's verdict is only *partially* superseded: the commodity-pipe half doesn't apply here, but its warning about margin split (unstated) and relationship attribution ("Powered by Vertesia") still does [R — same file, "RE-SCOPED" section].

The monetization gate has moved: Nov 2 2026 now governs the calendar, and Phase 1–3's proof-gates are demoted to reporting milestones rather than go/no-go [D — Confluence 62302388241, cited in ebr-coworker-phased-plan-2026-08-20.md]. Beth's own win-definition — "a longer build is earned by proof it's worth monetizing" — is inverted by a fixed date; the plan names this consequence rather than re-arguing it [D — same file, referencing mvp-thread-banked row 9].

Does this advance the mission? Only if the moat survives contact with the runtime it now runs on. That's the single named Defend crux, unresolved: **does the runbook stay portable, or does it accumulate inside Vertesia's schema?** [? — owner: Beth + Nicole, idea-chess-qbr-round3-2026-08-20.md + vertesia-brief-2026-08-21.md]

*Note on idea_score (13/20): estimated from the Idea Chess Round 3 survival pattern — N2's reasoning cleared Build/Adopt and reaches Defend, but Defend itself is unresolved — not from a formal 1–20 rubric run. No rubric text was in the source set for this pass. Treat 13 as provisional.*

## Gate 3 — Built right: the assembly's dimensions are namable; several load-bearing pieces are undefined

**Guardrails.** Risk = high [? — unverified, see Gate 1] maps to the runbook's rule: explicit individual sign-off before any client-facing artifact renders [D — technica-ebr-runbook-draft-2026-08-21.md, chooser gate]. Internal working-notes carry no sign-off gate — candid, all-findings, room-only [D — same file, Must 6]. One rule holds regardless of tier: liability logging (risk surfaced + declined) is append-only and mandatory [R — SRC-U-009 row 280, cited in runbook].

**Trigger.** File-drop / on-demand / signal-fired — explicitly **not** calendar-fired, design tenet 1, non-negotiable [D — ebr-coworker-phased-plan-2026-08-20.md]. What counts as a "signal" (churn flag, ticket spike, renewal window, explicit ask) is not specified anywhere in the source set [? — undefined].

**Autonomy — Assisted (trial), operationalized.** Runs unattended: ingest + staleness-flagging, continuity/delta comparison, the 8-tab grading pass, technical-to-business translation, upsell-surfacing from gaps, liability-log writing, the ranked chooser draft [D — technica-ebr-runbook-draft-2026-08-21.md, intent steps 1–8]. Waits for a human: anything rendering on the client-facing surface (sign-off guardrail), and any finding below 0.80 confidence, which must expose a switch/verify affordance rather than render silently — Unverified is hard-blocked from the client surface regardless of sign-off [R — apex-sentient-design-deck-ref-2026-08-20.md, intent-signal rule; D — runbook, chooser step].

**Model.** Vertesia, multi-model and model-agnostic — "over 100 models with seamless switching," not a single named LLM [D — vertesia-brief-2026-08-21.md, CS: HIGH, vertesiahq.com]. Which model(s) actually get invoked per step, and whether any eval has run against Vertesia's roster for this task, is undetermined [? — not addressed in source set].

**Data-in.** Manual paste for the trial: N-Central, Enforcer, Usecure, Halo, Roost, Cloud Capsule, plus the operator's 8-tab Excel [R — SRC-U-009, runbook intent step 1]. The 8 N-able-built connectors are explicitly a later phase (Phase 3, gated on a legal Q1 read on client-facing cross-vendor data), not v1 [D — ebr-coworker-phased-plan-2026-08-20.md, Phase 3]. The count mismatch noted in Gate 1 is unreconciled [? — carried from Gate 1].

**Output contract, in Apex Sentient Design terms.** This is the part the runbook draft explicitly asked to be built in this vocabulary, not restated as a screen [R — apex-sentient-design-deck-ref-2026-08-20.md].

*(a) Primitives.* Operates over Apex's existing four — Customer, Device, Policy, Audit Log [R — apex-sentient-design-deck-ref-2026-08-20.md]. Whether the EBR *review itself* needs its own primitive (anatomy, lifecycle states, relationships, render rules) is flagged undefined in the runbook and unresolved here — routed to the handoff thread [? — owner: handoff thread / Beth + Nicole, technica-ebr-runbook-draft-2026-08-21.md + vertesia-brief-2026-08-21.md open Q3].

*(b) Surfaces.* Two named, not equally ready. **Dashboard/review surface** (Apex/Vertesia render) is the near-term path — the runbook calls it "straightforward" [D — technica-ebr-runbook-draft-2026-08-21.md]. **Their-own-form-filled** (write-back into the operator's Excel/format) is heavier and phase-dependent: it runs into the M365-write gap tracked as RA-018 [D — cited in runbook as RA-018; the ticket itself wasn't independently pulled for this brief]. Phase 1 should read dashboard-surface-first; write-back isn't this brief's v1 bet [A — inference from the runbook's "straightforward" framing, not a stated decision].

*(c) Intent-signal map.* Draft structure only — no trial has run, so no score below is measured; every row is proposed and untested [A — draft, this brief]:

| Query / goal pattern | Surface | Confidence band (draft) | Sub-0.80 rule |
|---|---|---|---|
| "what changed since last EBR" | Card (continuity summary) | likely-high | — |
| "open/review this finding" | Canvas | likely-high | — |
| "compare to last quarter" | Table | mid | expose switch if measured <0.80 |
| "what should I flag to the client" | List (chooser, ranked) | borderline | expose switch if measured <0.80 |
| "generate the client-facing view" | Dialog (confirmation / sign-off) | high — gated by guardrail regardless of score | — |
| "show me what was declined last time" | Table (liability log) | mid | expose switch if measured <0.80 |

The rule governing the right-hand column is real and sourced even though the scores in this table aren't: below 0.80, render the best guess and expose a switch/verify affordance; Unverified is hard-blocked from the client surface [R — apex-sentient-design-deck-ref-2026-08-20.md].

*(d) Dual-surface split.* Structural, not optional — internal working notes (candid, all findings) and client-facing (chooser-selected) are two artifacts, never a redaction toggle on one [D — technica-ebr-runbook-draft-2026-08-21.md, Must 6].

**Tested how, by whom, what counts as done.** Success is qualitative, not numerical: does Technica + a small set of EBR-practicing MSPs *pull and use* the artifact — request the sync, get faster on EBR #2 than a blank-canvas re-check — rather than politely tolerate it [D — ebr-coworker-phased-plan-2026-08-20.md, Phase 1]. No instrumentation for measuring "pulled and used" is defined [? — undefined]. Runtime readiness is itself unverified: the spec-004 "0/40" figure is checked against a static snapshot the live repo has reportedly moved past [? — C-14, ebr-coworker-phased-plan-2026-08-20.md].

**Real-build acceptance criteria, added 2026-08-24 — Beth's stated bar, not yet sourced.** For the *real* (non-simulated) build to count as done: (1) Marcus/Priya's report-prep time must drop **50%** [A — Beth's target, 2026-08-24, no baseline exists yet]; (2) the coworker must surface findings that win Technica **25% more business** [A — Beth's target, 2026-08-24, no baseline or definition of "win" exists yet]. Two measurement gaps block testing either number: no current baseline for how long Marcus's prep actually takes today [? — owner: Beth/Marcus, unmeasured], and no agreed definition of "win" (renewal? upsell? net-new?) or baseline rate to measure a 25% lift against [? — owner: Beth, undefined]. Neither gap blocks the role-play simulator already built (`prototypes/ebr-coworker-004-assembly/role-play-simulator.html`); both block calling the real build done.

## Failure modes

1. **C2 leaks to the platform.** If the runbook format Vertesia executes is Vertesia-native rather than N-able-owned-and-merely-hosted, David's encoded judgment accumulates inside Vertesia's schema — reproducing the exact failure that killed Narmada-as-substrate (N3: margin + relationship accrue to the partner) [R — idea-chess-qbr-round3-2026-08-20.md]. This is the single named Defend crux and it is unresolved [? — owner: Beth + Nicole].

2. **A wrong grade ships as a liability event, not a UX miss.** Findings carry consequence + liability framing by design (NCSC/Cyber Essentials gap → business + liability consequence) [D — technica-ebr-runbook-draft-2026-08-21.md]. If a stale/absent source gets graded instead of flagged Source-Unavailable, or a sub-0.80 finding gets signed off without the operator exercising the switch/verify affordance, the coworker ships a wrong red/amber/green grade as if reviewed — and because the risk tier itself is unverified [? — see Gate 1], the guardrail meant to catch this rests on an unconfirmed premise.

3. **Theater relapse under a fixed date.** The Phase 1–3 proof-gates ("pulled and used, not politely tolerated") were demoted to reporting milestones by the Nov 2 decision [D — ebr-coworker-phased-plan-2026-08-20.md, DECISION section]. That creates pressure to declare "not theater" on the calendar rather than on actual pull — the exact pattern the plan's own corpus already names as having killed a prior version [D — same file, citing mvp-thread-banked row 9].

## What's missing

- David's actual 8 tabs, opening move, and gap-logic — owner: David/Beth [?]
- Risk level, high vs. medium — owner: Beth [?]
- EBR-review primitive definition + its mapping to Vertesia's content/agent model — owner: handoff thread / Beth + Nicole [?]
- Runbook portability off Vertesia (the Defend crux) — owner: Beth + Nicole [?]
- Current runtime state (spec 004) — "0/40" is checked against a stale snapshot — owner: unspecified [?]
- Margin split between N-able and Vertesia — unstated in the plan — owner: Nicole/Meaghan [?]
- What the MSP believes it bought — the "Powered by Vertesia" badge's effect on the C2 relationship — owner: Beth [?]
- Definition of "signal" for the signal-fired trigger — owner: unspecified [?]
- Reconciliation of "8 connectors" (wrapper) against the 6 named trial sources — owner: unspecified [?]
- Actual intent-signal confidence scores — none exist; the table above is a draft structure, not trial output — owner: requires Phase 1 to run [?]
- Adoption/ROI numbers for this assembly — none exist; Phase 1 hasn't run — owner: requires the trial [?]
- Baseline: how long Marcus's EBR prep actually takes today, pre-coworker — owner: Beth/Marcus [?]
- Definition + baseline rate for "wins more business" (renewal / upsell / net-new) — owner: Beth [?]
