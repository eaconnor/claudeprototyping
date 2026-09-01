# Critic Pass-1 — Alpha RACE (Pre-Build Scorecard)

Brief: `briefs/alpha-race.brief.md`
Recount: `briefs/alpha-race-math-recount.md`
Pass: PRE-BUILD (pass-1) · Tier 1 Concept · stakeholder/exec demo

## Score table

| Dimension | Score | One-line |
|---|---|---|
| 1. Coherence | 4/5 | Solution traces to Hilda's quote and the 47→12 pattern; clean line from problem to screen. |
| 2. Source-fidelity | 2/5 | Self-reported 58% [A]+[?] is the *most generous* of three counts; strict count is 75%. |
| 3. Demo-ability | 4/5 | One incident-detail screen with a concrete 47→12 number is highly showable at T1. |
| 4. Differentiation | 1/5 | No competitive map. Brief itself scores this 1/4. Differentiation is asserted, not shown. |
| 5. Risk | 5/5 | Four failure modes, each with detection criteria. Strongest section in the brief. |
| 6. Scope discipline | 3/5 | One screen is tight, but four blocking decisions sit upstream of a coherent build. |

## Punch list

**PASS** — Coherence holds. The chain problem (alert fatigue / manual correlation) → mechanism (consolidation) → artifact (47→12 incident view) is traceable. Hilda's quote and the Black Team metric anchor it. [CS: VERIFIED — read in brief lines 27-32, 51.]

**PASS** — Failure modes are the brief's spine. Four named, each with a "how to detect" hook (compression illusion, evidence-free conviction, synthetic-data trust erosion, wrong-buyer). This is what earns the 4/4 resilience sub-score. [CS: VERIFIED — lines 118-138.]

**PASS** — Demo-able at T1. A single screen with one legible number (47→12) and a median-time delta (42→17) is exactly the right surface for a lo-fi exec probe. [CS: VERIFIED — lines 31-32, 42.]

**FAIL** — Source-fidelity number is laundered. The brief leads with "58% [A]+[?]," but the recount's own work shows: strict count 75%, floor 63%, and 58% only reached by "an even more aggressive sourcing pass that credits the prototype's embedded council testimony as [R]." [CS: VERIFIED — recount lines 99-101, 168.] Counting 44 council voices' framework citations as research-sourced world-claims is the move that drops the number. That is not [R] about the customer's world; it's [R] that a framework exists. The honest lead is 68.5-75%. The 47% rule is invoked (line 222) while the lead number is the softest available reading — the discipline is named but not applied to the headline.

**FAIL** — Differentiation is empty, and the brief knows it (1/4, line 190). No CrowdStrike/Arctic Wolf/Huntress parity check. The 12-18 month window is [A]+[CS: LOW — outside training window] (line 160). For an *exec/buyer* demo, "why us not them" is the question in the room, and there is no answer staged. [CS: VERIFIED — lines 65-66, 145.]

**MISSING** — Success criteria (Decision 2). "This demo succeeds when ___" is blank. [CS: VERIFIED — lines 90-94.] The counter-metric (demo credibility) cannot be tested against a target that doesn't exist. Build can proceed visually; it cannot be *validated* without this.

**MISSING** — Customer profile (Decision 1). The build will ship with "Acme Building Supply" placeholder content, and the brief's own failure mode says that's where "credibility collapses mid-presentation." [CS: VERIFIED — lines 84-88.] Every content decision in the prototype inherits this gap.

**MISSING** — Incident story provenance (Decision 3). Real-anonymized vs. Beth-synthetic is unresolved, and the counter-metric explicitly forbids the customer perceiving synthetic data as misleading. [CS: VERIFIED — lines 8, 96-100, 130-133.] The build cannot honestly label its own data yet.

**MISSING** — Economic buyer view. Demo is user-buyer-optimized (analyst speed); no CISO ROI/defensibility surface. If a CISO is in the room, Failure Mode 4 fires. [CS: VERIFIED — lines 135-138, 161.]

**RISK** — The fidelity banner is itself a failure vector under realistic use. Failure Mode 1 says a "NOT READY" / Tier 1 banner reads to a *customer* as "n-able is unprepared," not "this is a probe." [CS: VERIFIED — lines 120-123.] The Bradley rail and fidelity banner are non-negotiable per pipeline — but for this audience they are the live risk. Build cannot drop them; it must stage how an SE narrates them, and that narration is undefined.

**RISK** — "47→12" carries an opacity reading: "what happened to the other 35 alerts?" (Tension 2 / SIGN). [CS: VERIFIED — lines 173-174.] Untested. If the screen shows only the collapsed number without the trail, the build can manufacture the exact misread the brief warns against.

**RISK** — Reading order uncontrolled (Story / Timeline / Scoring). Under demo time pressure the customer may anchor on the wrong section. [CS: VERIFIED — lines 111, 155, 174.] A multi-panel T1 layout amplifies this; the build will make a reading-order bet with no evidence behind it.

## Gaps to address before build

1. **Decide the lead fidelity number, defensibly.** Either build the rail on the 68.5-75% strict count, or state plainly that 58% is the generous floor and show both. Do not let the soft number ride into the prototype rail. (This is the same sin the meta-note flags in the *prior* artifact's "65%.")
2. **Stage the unresolved Decisions 1-4 as visible TODOs in the build**, not silent placeholders. The build will inherit Acme/synthetic/no-success-criteria whether or not anyone decides — name them on the surface so the gap is honest, per the Unknown-ROI rule.
3. **Decide what the 47→12 screen shows beyond the number** — the trail to the 35, or not. This is a build-content call that determines whether Tension 2's opacity misread happens.
4. **Decide the banner narration**, not just the banner. The build ships the fidelity banner regardless; what's missing is the one sentence an SE says when asked "what does Tier 1 mean?"
