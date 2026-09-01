# Critic Pass 1 — QBR/EBR Tier-1 Concept Prototype
Reviewed against: briefs/qbr-ebr-prototype.brief.md, briefs/qbr-ebr-prototype.math-recount.md,
briefs/context/qbr-ebr.context.md, briefs/acp-problem-statement-2026-07-28.md
Stage: pre-build (no HTML exists yet)

## Score Table

| Dimension | Score | Justification |
|---|---|---|
| Coherence | 4/5 | Traces cleanly to the sourced problem (hand-assembly, prep time, no defensible number) and is explicitly anchored to Candidate 2 of the problem-statement doc — not drifted, scoped down deliberately. Loses a point because the altitude choice (Candidate 2 vs. 1 vs. 3) is named as "not a resolved organizational decision" — the brief is coherent to a problem nobody has confirmed is the right one to solve yet. |
| Source-fidelity | 2/5 | World-claims ratio is 43% [A]/[?] — over the pipeline's own 30% threshold, and the brief says so unprompted. Honest, but by the framework's own rule this brief is not ready; scoring it high would reward transparency over the actual evidence bar. |
| Demo-ability | 4/5 | Narrowed to one hybrid section (Risk & Security Review) + the confirm-gate, static single screen, no live data dependency required — genuinely demoable at Tier-1. Docked one point because only 2 of 8 Musts' Built-in Tests are runnable at this fidelity, so "demoable" and "testable" diverge sharply. |
| Differentiation | 3/5 | The confirm-gate/defensibility-tier reuse is real (no competitor scanned does PSA writeback except one unshipped roadmap item). But the brief's own source material names this exact feature shape as "the shape a competitor can commoditize fastest" — differentiation is thin and time-boxed, not durable. |
| Risk | 4/5 | Four failure modes named with teeth, including the uncomfortable one (Q2: this might be testing the wrong interaction entirely). Not a 5 because the risks are named but no mitigation-in-build is specified for any of them — naming is not the same as designing around. |
| Scope discipline | 4/5 | One section, one mechanism, explicit refusal to attempt all 15 tabs — disciplined. Docked one point: the brief inherits an unresolved positioning fork (delivery-lead vs. owner) that will still have to be decided implicitly the moment copy gets written for the build, whether or not the brief calls that scope. |

## Punch List

### PASS
- "Not ready per the 30% rule" stated in the brief's own second sentence, not buried at the bottom — matches the pipeline's naming requirement exactly.
- Scope correctly narrowed to one hybrid template section + confirm-gate, using the job-shop/production-line classification already done in source, rather than attempting all 15 tabs.
- Confirm-gate reuses an existing mechanism (Defensibility tier over `baseline_source` in the Value Ledger) rather than inventing new interaction design — grounded in what's already built, not speculative.
- Four failure modes named specifically, including the uncomfortable one: the prototype's core interaction (AI-drafts/human-edits) may be testing a mechanism the operator was never asked if they want.
- Math self-corrected through the pipeline's own verification gate (56% → 43%) with the recount shown line-by-line — the 47% rule caught a real miscount rather than letting it ship.
- Must 8 (no overclaiming legal/liability protection) is explicit and specific — a real constraint on client-facing copy, not decorative language.

### FAIL
- No OKR objective, key result, or counter-metric exists anywhere in the source corpus for this offering. Gate 2's central question — does this advance the mission — is structurally unanswerable right now, not just thinly answered. The brief names the gap but a prototype built against an unnamed mission has nothing to be scored against post-build except "did it look good."
- Only 2 of 8 Musts have a Built-in Test runnable at Tier-1 fidelity (25% test-plan-readiness). Six of eight defined "what counts as good" checks cannot be exercised against this build at all — the prototype can be shown but not meaningfully tested against most of its own quality bar.
- Q2 — does the operator want the drafts-then-edit mechanism or just the finished output — is named directly as "the single biggest gap," and it is precisely the mechanism this prototype's confirm-gate demonstrates. Building the riskiest-assumption interaction without a plan to test that assumption in this round is a hole between what's built and what's known.

### MISSING
- No usability-test plan for the prototype itself: no participants named, no protocol, no session count. Gate 3's "tested how, by whom" is explicitly unanswered.
- "Done" criteria for the prototype (the three inspection-checkable things: business-value-framed draft, visible blocking gate, real dual-surface distinction) is the brief's own proposal, not sourced or confirmed by Beth/Meaghan/Nicole — this needs an explicit yes before build, not tacit adoption.
- Positioning fork (delivery-lead/user vs. owner/buyer) is unresolved, but the build will have to pick a persona voice and tone for the screen the moment copy gets written — the brief doesn't say which lens the build should assume.
- No mitigation is specified in-build for any of the four named failure modes (e.g., "how the confirm-gate visually differs from a dismissible banner" is described as a requirement, not as a build spec).

### RISK
- Confirm-gate rendered as a dismissible banner instead of a hard block reproduces exactly the warning-fatigue failure it exists to prevent. [CS: MEDIUM] A static HTML mockup can visually imply "blocking" (grayed background, disabled button) without the gate actually being modal — a screenshot reviewer may not distinguish "looks blocking" from "is blocking," and this is a real gap between demo-ability and the thing being tested.
- Automation-regresses-Must-1 risk applies to the build itself: if the demo's own sample risk-register copy is written in technical/metric language rather than business-value framing, the prototype will demonstrate the exact failure mode it's supposed to argue against.
- Because only 2 of 8 Musts are checkable at this fidelity, a stakeholder watching a polished demo can easily over-read "mostly done" — 75% of the defined quality bar is invisible and unverifiable in this build, which is a scope-creep-in-perceived-readiness risk independent of anything the build team does wrong.
- Candidate 2's own named risk — this is the shape a competitor ships fastest — means a compelling demo of exactly this feature could as easily build internal urgency for a fast competitor response as internal conviction; worth naming explicitly to whoever this gets shown to, not just in the brief's prose.

## Design system compliance
Not assessed — no HTML exists yet at this pipeline step. Apex Bridge compliance (canonical `:root`
token block, Inter/JetBrains Mono via Google Fonts, `--radius-*` corners + soft shadows only, the
three-surface distinction — topbar/canvas/Bradley rail — the 3-way mode toggle persisting to
`apx-mode-pref`, and zero leftover Itten-palette colors) must be checked fresh in
`critic-pass-2.md` once the build exists. Do not assume compliance carries over from any other
prototype in this repo.

## Specific gaps to close before build
1. Confirm with Beth/Meaghan/Nicole: is Candidate 2 (tactical QBR-only) the altitude to build at, or is this brief scoping ahead of that call?
2. Confirm the proposed "done" criteria (3 inspection-checkable items) as accepted, or amend before treating them as the build's target.
3. Decide the persona lens for demo copy (delivery-lead operator vs. owner/buyer) — the positioning fork is open but the build needs one voice.
4. Specify, in the build spec, how the confirm-gate will be rendered so it reads as a hard block, not a dismissible warning — this is currently a stated requirement with no build-level answer.
5. Write demo copy for the risk-register draft in deliberately business-value framing (Must 1) — the sample content itself is a place this brief's own named failure mode can leak in unnoticed.
