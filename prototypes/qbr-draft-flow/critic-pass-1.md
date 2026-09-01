# Critic Pass 1 — Pre-Build Scorecard
**Brief:** `briefs/qbr-draft-flow-proto-2026-08-07.brief.md`
**Date:** 2026-08-07
**Context files read:** `briefs/laissez-faire-fellows-persona-2026-08-04.md` · `briefs/qbr-system-blueprint-2026-08-04.md`
**Pass type:** Pre-build

---

## Against Gate 1 (Problem)

Addresses the sourced problem. No drift. David's 1.5–3hr prep across 7 sources is primary research (Craig Fisher, named, dated). Cycle memory gap has five-overlay convergence cited through qbr-system-blueprint §9. Stefanie's 4-part translation formula is verbatim-timestamped (07:30 and 48:52). The brief did not invent its own problem statement.

One flag: Stefanie is used as the Vanessa/Priya (delivery-lead) proxy throughout. The system blueprint §9 calls this "resolved in Stefanie's favor" — but the resolution is by assertion, not by new primary-source interview with an actual delivery lead. The proxy is the best available material. It is still a proxy.

---

## Against Gate 2 (Right thing)

Prototype scope is traced directly to deck p11 ("Prototype the QBR draft-to-send flow. Stimulus: mid-size customer, one gap = 3 devices missing backup.") — the brief didn't invent its own scope. Package 3 leads Idea Chess at ~2.9%. Building the translation layer + confirm gate UI before engineering is the correct Gate 2 move.

Counter-metric not explicitly named in the brief. The system blueprint §3 names it sharply: "a naive build actively risks making the known failure mode easier to commit." The brief's Bradley rail gets close ("reads as another approval checkbox") but never formally surfaces this as a named counter-metric to protect. The thing most worth protecting is implicit.

---

## Against Gate 3 (Built right)

Test protocol is `[?]` — explicitly open, honestly named. The Research routing card names a method (test confirm gate with one real delivery lead, Stefanie or David) but David is Craig Fisher's analog — a buyer/owner, not a delivery lead. That is a casting error in the test protocol. Priya is the delivery-lead analog in the brief; Priya has no real-person counterpart who has agreed to test.

No operationalized success criterion. "Reads as a real human judgment moment" is the hypothesis but the brief does not state what a tester would need to say or do for that to register as pass vs. fail.

---

## Six-Dimension Scorecard

### 1. Problem Clarity — 4/5
Primary research is strong: named sources, timestamps, verbatim formula. Stefanie-as-Vanessa proxy is acknowledged but not closed by new primary research. One degree of indirection on the delivery-lead perspective.

### 2. Scope Integrity — 3/5
Two stages, one scenario, explicitly bounded (Stage 5 out of scope). Loses two full points because Stage 4's core interaction pattern — sidebar, step-through, overlay, or inline prompt — is explicitly unresolved and kicked to a Design routing card. That pattern IS the primary test object. Additionally: the Rehearse toggle names four options with no interaction design; the consultative-question checklist mechanism has no pattern specified. These are not polish items — they are the thing the prototype is for.

### 3. Evidence Quality — 4/5
`[A]+[?]` self-reported at ~12%, below the 30% gate. Primary source citations are specific (interview file names, timestamps, verbatim quotes). Docked one point: the brief's five-overlay convergence cite routes through qbr-system-blueprint §9, which itself is a synthesis doc whose claim ratios were not grep-verified per that file's own admission. One step removed from the primary sources on that specific claim.

### 4. Design Hypothesis — 3/5
Hypothesis is named and directional: "does the confirm gate read as a real human judgment moment, or as another approval checkbox?" Falsifiable in principle. But: no success criterion is operationalized; the test protocol has a casting error (David = technician, not delivery lead); and the interaction pattern being tested is undecided — so the prototype will test the builder's assumption about what ownership feels like, not a considered design direction.

### 5. Seed Data Integrity — 5/5
Laissez Faire Fellows is cleanly fictional with explicit tagging. All financial figures are `[CS: MEDIUM]` estimates, properly disclosed. Ridgemont Financial Services is fictional, GLBA application is realistic. Real-person references (Craig Fisher, Stefanie Hammond) stay in source citations, not seed data. Publicity test called out explicitly.

### 6. Buildability — 3/5
Enough to start: one concrete scenario, named cast, content block list, tier badge taxonomy, one confirm flow (Option A/B). Not enough to finish without making five binding design choices the brief leaves open: Stage 4 interaction pattern, Accept/Edit/Dispute UI per finding, consultative-question checklist UI, Rehearse toggle layout for 4 options, and whether NIST/NCSC/Cyber Essentials configurability is shown as a control or hardcoded. The builder makes all five by default.

---

## Punch List

**FAIL: Stage 4 interaction pattern is unresolved and is the prototype's primary test object.**
The brief explicitly defers this to the Design routing card: "decide the interaction pattern — sidebar, step-through, overlay, or inline prompt." The hypothesis being tested ("ownership vs. rubber-stamp") is entirely a function of which pattern is chosen. The builder picks by default, and whatever they pick is what the prototype tests.

**FAIL: Accept/Edit/Dispute pattern is unspecified.**
Three actions per finding in Stage 4. No visual direction, no interaction pattern, no sense of whether dispute escalates inline or routes to a separate surface. Builder invents this from nothing.

**FAIL: Consultative-question checklist mechanism is unspecified.**
"Priya drafts the consultative-question checklist. Jordan and team agree on which discussions are valuable." No pattern given. Open text field? Prompted list? Cards to accept/reject? This is the third job in Stage 4 and it has zero interaction design.

**FAIL: Research routing card has a casting error.**
"Test the confirm gate with one real delivery lead (Stefanie or David)" — David is Craig Fisher's analog, explicitly named in the brief as a technician. He is not a delivery lead. Priya Shah's real-world analog has not been named or recruited. The test protocol cannot be acted on as written.

**FAIL: Design system conflict not resolved for this prototype.**
CLAUDE.md §11 specifies the Band's own design: Space Mono + Kalam, Itten palette (vermillion/ochre/ultramarine). The brief's `machine_behavior` specifies "Apex design system" — which per Apex Bridge means Inter + JetBrains Mono, canonical `:root` token block (`--bg-app`, `--bg-surface`, `--brand`, `--radius-*`), three distinct surfaces, 3-way mode toggle, soft shadows only. These are directly contradictory. The brief does not explicitly state that Apex Bridge overrides §11. A builder following project CLAUDE.md will produce the wrong design system.

**MISSING: Counter-metric named explicitly.**
System blueprint §3 names the sharpest design tension: a naive build makes the known failure mode (operator falls back to production-line display instead of job-shop translation) easier to commit. The brief's Bradley rail gestures at this but never formally names it as the counter-metric. Without it the builder has no guard rail against producing a clean-looking approval form that passes the aesthetic test and fails the hypothesis.

**MISSING: Operationalized success criterion for the hypothesis.**
"Does the confirm gate read as a real human judgment moment?" needs a testable threshold — what does a tester have to say, hesitate on, or do for that to register as pass vs. fail? Without this, the Research routing card's recommendation cannot be executed consistently.

**MISSING: Value Ledger appearance decision.**
The brief says "UI deferred to prototype review — needs to be seen." If the builder shows nothing, the reviewer cannot evaluate it. If the builder shows something, they are making the call that was deferred. The brief needs to state explicitly: show a placeholder / show nothing / show Jordan's minimal view.

**RISK: Industry briefing content block is `[?]`.**
Tone direction given ("Head Nerd register, confident, not FUD"), content not. The builder will generate placeholder content. Realistic-sounding fabricated financial-sector security context is a different contamination risk than lorem ipsum — it may shape how testers respond to the prototype's judgment moments in ways that are not attributable to the design.

**RISK: `[A]+[?]` ratio is self-reported, not grep-verified.**
The brief states ~12%. Per the 47% rule, ratios must be grep-verified before the handoff packet ships. Not blocking at pre-build; must be resolved before post-build close.

---

## What Passes

**PASS:** Fictional seed data is clean. Laissez Faire Fellows, Ridgemont Financial Services, Jordan Ellis, Priya Shah — all properly fictional, no real-company or real-person contamination in the seed layer.

**PASS:** Scenario is specific and sourced. The 3-device backup gap, Cove 47/50, Inforcer 6/9 (up from 5/9), September renewal — grounded in deck p11 and a named interview.

**PASS:** Fidelity tier is correctly set at Tier 1 Concept. `machine_behavior` says "do not claim validation." The brief does not overclaim what this prototype proves.

**PASS:** Cycle memory and 4-part translation formula are properly evidenced. Five-overlay convergence and Stefanie's verbatim formula are the strongest sourced elements and the ones that matter most for Stage 3 buildability.

**PASS:** `confidence_regime: PROCEED-FLAGGED` is honest. Gate UI mechanics are genuinely undesigned, and the brief names this rather than papering over it.

---

## Overall Readiness

**PROCEED WITH FLAGS**

The problem is real and sourced. The scenario is specific. The fidelity claim is honest. This brief can produce a prototype.

It cannot produce the right prototype without five pre-build decisions: Stage 4 interaction pattern, Accept/Edit/Dispute UI, consultative-question mechanism, Value Ledger placeholder call, and an explicit statement that Apex Bridge overrides CLAUDE.md §11 for this N-able customer-facing prototype. The most dangerous gap is the first one — the interaction pattern is the hypothesis, and the builder will default-pick it.

---
*Critic Pass 1 — pre-build. Re-score after build at `critic-pass-2.md`.*
