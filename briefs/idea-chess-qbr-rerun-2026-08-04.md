---
artifact: idea-chess-rerun
date: 2026-08-04
played_against:
  - briefs/qbr-system-blueprint-2026-08-04.md (§0-§11, all today's synthesis)
  - briefs/laissez-faire-fellows-persona-2026-08-04.md (new — the concrete test-bed persona)
  - scout_input/msp-qbr-ebr-secondary-research-round2-2026-08-04.md
  - scout_input/MSP_QBR_EBR_Secondary_Research.docx (ConnectWise 8-practices, Korl, Salesforce, Urlocker overlays)
prior_board: briefs/idea-chess-qbr-rerun-2026-07-31.md
method: briefs/idea-chess-fleet-synthesis-2026-07-14.md
voices: adversarial, no cheerleading
note: naive survival = product of required-position probabilities under an independence assumption. Directional, not forecast. Every probability is [A] unless marked [CS: VERIFIED]/[CS: HIGH]. Correlated failures make every floor an optimistic ceiling, not a true floor. Stage 0 (Onboard & Customize) is NOT scored as a competing concept per Beth's 2026-08-04 call — "assume we will do that for everyone," treated as table-stakes infrastructure underlying every concept below, not a bet in its own right.
---

# Idea Chess Re-play — QBR/EBR Board, post-08-04 evidence

**Prior board:** [idea-chess-qbr-rerun-2026-07-31.md](idea-chess-qbr-rerun-2026-07-31.md) — six concepts, Package 3 led at ~2.9%.

**What changed the board today:** (a) §7b's PSA correction — N-able does have a native PSA option (MSP Manager), confirmed via datadump grep, overturning this pass's own earlier "no N-able PSA" claim. (b) A concrete, data-heavy persona (Laissez Faire Fellows) built specifically to stress-test Adopt-stage assumptions that were previously scored on no evidence at all. (c) Three deck-structure overlays (Urlocker, Korl, Salesforce) plus one MSP-native practices framework (ConnectWise) mapped against the actual process, surfacing a real liability-defusing mechanism (route incident detail to the internal surface only, per the existing dual-surface Must) and a convergent, three-times-independently-found cycle-memory gap. (d) The NONGOAL-002 wall got a genuine options table (A/B/C) instead of a binary kill.

---

## THE BOARD — six concepts, re-scored

| # | Concept | 07-31 | This pass | Direction | Dies first |
|---|---|---|---|---|---|
| 3 | Package 3 — N-able Native | ~2.9% | **~2.8%** | flat, but the weak link moved | **Adopt** (shifted from Defend) |
| 5 | Package 5 — Cross-Vendor | ~0.36% | **~0.64%** | ▲ nearly 2x, back near the original 07-20 floor | Build (unchanged — still never tested) |
| 4 | Readiness Assessment | ~2.6% | not re-scored | no new evidence this pass | Defend (unchanged) |
| ii | Pre-sales Aggregator | ~2.5% | not re-scored | no new evidence this pass | Build (unchanged) |
| 3-PC | Practice-Companion | ~2.3% | **~2.5%** | modest ▲ | Build (unchanged) |
| 6 | Continuous Business Visibility | ~1.35% | **~1.35%** | flat — but qualitatively resolved, not just unchanged | Genesis (unchanged — proven not escapable, see below) |

**Headline:** the one dramatic move is Package 5, which nearly doubled — not because the hard engineering question (normalization accuracy) moved at all, but because three separate things Beth and this session did today (the Q1 "assume coverable" call, a real liability-defusing mechanism borrowed from ConnectWise, and concrete Adopt-stage evidence from Laissez Faire Fellows) all landed on the same concept at once. The quieter, sharper finding is Continuous Business Visibility: its number didn't move, but today's work specifically closed off the two escape routes Beth was hoping might reopen it.

---

## 1 · Package 3 — Client-Facing Proof, N-able Native

**07-31:** ~2.9% naive, died at Defend (the liability gate).

**Required positions, re-scored:**

| Position | 07-31 P | Today's P | Reasoning |
|---|---|---|---|
| **Build** — native-stack data pull lands as the wedge | 0.60 | 0.60 | Unchanged — no new evidence this pass moves this specific position. |
| **Ship** — confidence-transfer features ship in v1 | 0.40 | 0.40 | Unchanged. |
| **Defend** — the auto-populated risk register clears a workable liability posture | 0.35 | **0.42** | Overlay 4's ConnectWise practice #6 ("do NOT discuss specific incidents") directly conflicts with Stefanie's Risk & Security Review tab — but it's reconcilable via the existing dual-surface Must (6): incident detail stays on the internal surface, only aggregate risk narrative crosses to the client-facing one. That's a real, sourced *mechanism* for defusing the gate, not just an open question anymore — worth a modest upward nudge, not a resolved gate. |
| **Adopt** — mixed-stack MSPs don't experience native-only scope as incomplete | 0.35 | **0.28** | **This is the new finding.** Laissez Faire Fellows — built today specifically as a realistic, heavily N-able-committed MSP (N-central + Adlumin + Cove all native) — *still* runs ConnectWise for PSA, Entra for identity, KnowBe4 for awareness. A concrete persona this N-able-favorable still experiences native-only scope as incomplete. This isn't abstract anymore; it's a named counter-example. Score moves down, not sideways. |

**Naive survival:** 0.60 × 0.40 × 0.42 × 0.28 = **~2.82%** (flat vs. 07-31's 2.9%).

**Dies first at:** **Adopt**, not Defend — the liability gate improved slightly (real mechanism now exists); the "mixed-stack MSPs are fine with native-only" assumption did not survive contact with a concrete, favorable-case persona. This is a genuine shift in which gate is the real risk, even though the headline number barely moved.

**Single test that moves the floor most:** show Laissez Faire Fellows's own Priya (delivery lead) a native-only Package 3 mock and ask directly whether she'd trust it knowing it can't see her PSA/identity/awareness data — the cheapest test of whether the Adopt position's new low score is real or an artifact of one persona's specific stack choices.

---

## 2 · Package 5 — Client-Facing Proof, Cross-Vendor

**07-31:** ~0.36% naive, at or below the 07-20 floor.

**Required positions, re-scored:**

| Position | 07-31 P | Today's P | Reasoning |
|---|---|---|---|
| **Build** — normalization clears real mixed-vendor data at ~75-80% accuracy | 0.30 | 0.30 | Unchanged — still "Not started," nothing today tests engineering accuracy. |
| **Legal** — Q1, data-egress | 0.30 | **0.35** | Beth's 2026-08-04 call: "flag it, but assume for planning purposes that we can cover it." This is a planning assumption, not a legal clearance — modest nudge, not a resolved gate. Still the single most decisive unresolved test on the whole board. |
| **Defend** — liability/documentation exposure for a cross-vendor aggregator | 0.20 | **0.26** | Same dual-surface mechanism as Package 3's Defend nudge, applied here — still scored lower than Package 3's equivalent (0.42) because the aggregation surface is structurally larger, per 07-31's own reasoning, which stands. |
| **Defend** — defensibility tiering holds under legal review | 0.45 | 0.45 | Unchanged — no new evidence retested this specifically. |
| **Adopt** — operator wants the mechanism, not just the destination | 0.45 | **0.52** | Laissez Faire Fellows is *positive* evidence here, for once — a concrete, realistic, N-able-favorable MSP that genuinely needs cross-vendor pulls (PSA/identity/awareness) regardless of which Package ships. This is the same persona that hurt Package 3's Adopt position; it helps Package 5's for the identical underlying reason. |

**Naive survival:** 0.30 × 0.35 × 0.26 × 0.45 × 0.52 = **~0.64%** — nearly double 07-31's floor, and landing almost exactly back at the original 07-20 floor (0.43-0.64%) before the liability gate crashed it in the 07-31 pass.

**Correlation flag, unchanged from 07-31:** the two Defend positions and Q1 are really one question asked three ways. Treat 0.64% as a ceiling.

**Dies first at:** Build (unchanged) — the actual engineering question (can normalization hit usable accuracy across real mixed vendor stacks) has now been scored *three separate times* across three passes and has never once been tested. That is itself the finding.

**Single test that moves the floor most:** unchanged from prior passes — a real normalization pilot against Laissez Faire Fellows's own six-category stack (N-central + Adlumin + Cove + ConnectWise + Entra + KnowBe4) would finally test the one position every pass has left alone.

---

## 3 · Readiness Assessment coworker — not re-scored

07-31 score (~2.6%, dies at Defend/competitive whitespace) carries forward unchanged. No evidence from today's session touches any of its four required positions. Stated plainly rather than silently repeated as if freshly derived.

## 4 · Pre-sales First-Meeting Aggregator — not re-scored

07-31 score (~2.5%, dies at Build/no-telemetry-moat) carries forward unchanged, same reasoning as above.

---

## 5 · Practice-Companion framing of Package 3

**07-31:** ~2.3% naive, died at Build.

| Position | 07-31 P | Today's P | Reasoning |
|---|---|---|---|
| **Genesis** — differentiated from every named competitor | 0.55 | **0.60** | Today's session grounded the confidence-first thesis in real theory for the first time — Goldhar's economies-of-scale-vs-scope (materials flow → information flow) and Meadows' leverage points (information flow, position 6 of 12, "consistently underused"). "Nobody's done it" moves from circumstantial white space to a differentiation claim with an actual mechanism behind it. Modest nudge, not a resolved question. |
| **Build** — rehearsal mode / fading scaffold are real mechanics | 0.30 | 0.30 | Unchanged — still the largest gap between "described in an interview" and "buildable." |
| **Adopt** — buyer funds a confidence-first v1 with less visible time-savings | 0.35 | 0.35 | Unchanged — no new WTP evidence this pass. |
| **Defend** — doesn't worsen the liability gate | 0.40 | 0.40 | Unchanged. |

**Naive survival:** 0.60 × 0.30 × 0.35 × 0.40 = **~2.52%** (up modestly from 2.3%).

**Dies first at:** Build (unchanged).

**Single test that moves the floor most:** unchanged from 07-31 — a cognitive-walkthrough of a grading + rehearsal-mode mock with real delivery leads (Priya-type, not Stefanie-type).

---

## 6 · Continuous Business Visibility

**07-31:** ~1.35% naive, died at Genesis (the NONGOAL-002 wall). 07-31's own note: *"A single 'state-keeper' coworker could approximate continuity without true multi-coworker orchestration — hence not zero."* Today's session named exactly this approximation, concretely, for the first time — Option A (MVP, read-only Value-Ledger read) and Option B (event-notify). This section tests whether either one actually rescues the concept.

**Required positions, re-scored:**

| Position | 07-31 P | Today's P | Reasoning |
|---|---|---|---|
| **Genesis** — the "six coworkers feed one capstone" architecture is buildable in v1 | 0.30 | **0.30, unchanged — see below** | |
| **Adopt** — buyers pay for an always-on visibility layer as a line item | 0.30 | 0.30 | Unchanged. |
| **Legal/Ethics** — continuous ingestion clears data-minimization scrutiny | 0.30 | 0.30 | Unchanged. |
| **Value/positioning** — the reframe explains real, independently-grepped data | 0.50 | 0.50 | Unchanged. |

**Naive survival:** 0.30 × 0.30 × 0.30 × 0.50 = **~1.35%** — identical to 07-31.

**Why Genesis didn't move, despite a whole session's worth of work aimed at exactly this gate:** today's NONGOAL-002 options table gives two concrete paths that don't require reopening the nongoal (A: read-only feed; B: event-notify). Testing them against 07-31's own stated bar — *does the smallest approximation still deliver the felt experience of "never goes cold"?* — the options table's own language answers this already: Option A is explicitly scoped as not delivering "the deck's full 'one job' thesis," and its actual mechanism (QBR Coworker reading Environment Health Monitor's Value Ledger entries) is **already what today's redesigned blueprint assumes Stage 1 · Always Current does for Package 3 anyway.** Option A isn't a rescued version of Continuous Business Visibility — it's a description of Package 3's own substrate. Option B is a real, smaller ask, but by its own framing in §10 it's still "not the deck's full operating-system vision." **Neither option is a distinct concept that survives being named clearly; both dissolve into either "part of Package 3" or "a smaller ask that still isn't this."** The only path that keeps Continuous Business Visibility as a *separate* concept is Option C — full orchestration — which is exactly the original Genesis gate, untouched, unresolved, requiring the same conversation with Nicole it always required.

**Dies first at:** Genesis, unchanged — but now for a sharper reason: it's not merely gated, it's been shown *not escapable* via either of the two paths that looked most promising this morning.

**DELTA vs. 07-31:** the number is flat; the finding is not. 07-31 left this as "not zero" and named a test. Today's session ran that test in substance (via the options table) and got a real answer: no, the smallest approximation does not deliver the felt experience — it just restates existing Package-3 scope under a different name.

**Single test that moves the floor most, revised:** the test isn't a scoping exercise anymore — it's a direct product call: does Beth still want to pursue Option C (the real orchestration conversation with Nicole), knowing now, concretely, that nothing short of it actually delivers this concept as distinct from Package 3?

---

## Cross-board read

**Which concept the 08-04 evidence most favors:** Package 5 — genuinely, for the first time across three scoring passes. Not because its hardest question moved (Build/normalization accuracy has never been tested, across 07-20, 07-31, and now this pass) but because three unrelated pieces of today's work — Beth's own "assume coverable" call on Q1, a liability-defusing mechanism borrowed from ConnectWise's practice conflict, and concrete Adopt-stage evidence from a persona built specifically to be N-able-favorable — all happened to land on the same concept in the same session.

**Which resolved without moving:** Continuous Business Visibility. This is the sharper story than any number on the board. Beth named the hope directly today — *"I think we can keep continuous visibility... may need to negotiate or interpret the non-goal."* The options table built in direct response to that hope is what closes it: negotiating the nongoal partway (Option A/B) doesn't rescue this concept, it reveals the concept was never separable from what Package 3 already assumes. If it stays alive, it survives only as Option C, unchanged, still requiring the conversation with Nicole nobody's had yet.

**A second-order finding, not asked for but load-bearing:** the same persona that helped Package 5 hurt Package 3 — for the identical underlying reason (a realistic, N-able-favorable MSP still needs cross-vendor pulls). This isn't two findings; it's one finding read from two concepts' Adopt positions. It's evidence *against* treating Package 3 and Package 5 as a clean either/or — Laissez Faire Fellows's own tech stack is already both.

## Board-level decisions only humans can make

- **Whether Continuous Business Visibility gets formally shelved as a named concept**, its substance folded into Package 3's Stage 1 documentation, or whether Beth wants to pursue Option C — the real orchestration conversation with Nicole — with eyes open, knowing now that it's the only path that isn't Package 3 wearing a different name. → route to a product call.
- **Whether Package 3's newly-identified Adopt weakness changes anything about the F1 cross-vendor decision Beth already made**, or whether it's simply confirmation she called it correctly — the same evidence that weakens Package 3 strengthens Package 5. → informational, not blocking; Beth's F1 call stands either way.
- **Whether to commission the shared counsel engagement named in 07-31** (still unresolved, three passes running) — now more urgent given Package 5 is a genuinely live option again, not a dead one. → route to a product call.
- **Whether the Laissez Faire Fellows persona itself is close enough to reality to keep using**, or whether Beth wants to adjust its tech-stack mix (e.g., toward MSP Manager instead of ConnectWise for PSA) before it becomes the standard test bed for prototyping. → Beth's call, cheap to change if wrong.

---

*[CS:] tags and the 47% rule applied throughout. Persona (Laissez Faire Fellows) is explicitly `[A]` fictional with `[CS: MEDIUM]` plausible-realistic numbers — treated as a reasoning tool in this pass, not as evidence of real-world adoption. No killed stat from prior passes ($300+/user, the 2.5× profitability figure, the prep-hours echo) is treated as fact here.*
