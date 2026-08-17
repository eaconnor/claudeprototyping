---
artifact: idea-chess-qbr-prep-sim
date: 2026-08-03
played_against:
  - briefs/qbr-prep-sim.brief.md
  - briefs/qbr-prep-sim-council-testimony-2026-08-03.md
  - briefs/idea-chess-fleet-synthesis-2026-07-14.md (death-pattern library, cross-referenced)
  - briefs/idea-chess-qbr-rerun-2026-07-31.md (prior board, Package 3 line)
method: briefs/idea-chess-fleet-synthesis-2026-07-14.md
voices: adversarial, no cheerleading
note: naive survival = product of required-position probabilities under an independence assumption. Directional, not forecast. Every probability is [A — Claude estimate, Beth's call to correct] unless marked [D]/[R]. First run pairing council + Idea Chess on the same live brief per shift-left-playbook.md step 4 — the point is cross-method agreement on dies-first, not the absolute number.
---

# Idea Chess — qbr-prep-sim, first play

**This is not the fleet-level Package 3 board** (`idea-chess-qbr-rerun-2026-07-31.md` already scored that at ~2.9%, dies at Defend/liability). This is the sim itself — the Tier 1 instrument built to answer Q2, scored as its own concept: does running this prototype in front of an operator produce a usable signal before spec 004 locks?

---

## Required positions

| Position | [A] P | Reasoning |
|---|---|---|
| **Sim** — the three-surface prototype executes and the three ux.md §6 tests run cleanly by 2026-08-14 | 0.75 | Tier 1 lo-fi, show/hide pattern, no wizards — the brief's own scope discipline (concept-sketch round 2 replaced "one screen" after critic pass 1 scored scope 2/5) makes this mostly a finish-the-build risk, not a design-unknown. Highest position on the board, and the only one that's substantially execution rather than validity. |
| **Adopt (Q2)** — the test yields a clear mechanism-vs-destination read, not an ambiguous one | 0.50 | This is the brief's own stated OKR (line 6) and idea-chess-fleet-synthesis's Q2 — "does the operator want the mechanism, not just the destination" — gating A, B, C, D on the fleet board. n=1 evidence so far (Vanessa via Stefanie, one transmission line, U5 "echo baseline"); one operator session may not be powered to resolve a question the fleet board calls decisive across four ships. |
| **Defend (Judge)** — leaving the Judge step untooled reads to the operator as the right call, not an obvious gap | 0.40 | Council's Service Blueprint testimony (2026-08-03): "the one moment with no tool at all" (brief's own G1-7) stays untooled in both v1 and v2, while AMENDMENT 2's redesign effort went to the pull batch instead — a step the evidence says the operator doesn't even do (G1-6). JTBD's testimony reads the same fact as a correct preservation of human-only judgment. Both readings are live; the operator's actual reaction in-session is the tiebreaker neither council nor this board can settle in advance. |
| **Build (Ledger)** — the Value Ledger producer gets wired so the sim's ROI story renders non-zero, not $0 | 0.30 | Council's Value Chain testimony: "the Value Ledger producer for QBR is unwired and renders $0 (E5) — there is no mechanism anywhere in the brief's own model... that proves the margin claim." This is fleet-synthesis death pattern #6 by name ("the build built the substrate, not the demanded thing... the ledger renders $0") recurring on a *different* package than the one it was first scored against — the same root cause, not a new one. No date in the brief commits to wiring this before the 2026-08-14 test window. |
| **Market-fit** — the test population includes an operator outside Stefanie's own structured-QBR practice, not just her | 0.35 | The sim is built explicitly to Stefanie's 15-tab template and RAG scorecard (AMENDMENT 2b) — the friendliest possible rubric. Brief's own M9 [?] cites "only 20%" of MSPs running structured QBR discipline at all; council's Disruptive Innovation testimony names this directly: the brief "conflates 'build for Stefanie's peers' and 'build for the un-structured majority' as if they're the same product decision." If the 2026-08-14 test only runs against a Stefanie-shaped operator, it validates the easy 20%, not the harder 80% the fleet's actual TAM depends on. |
| **Competitive** — the test design accounts for Zomentum having built and killed this category in July 2024, rather than re-running its failure blind | 0.40 | [CS: MEDIUM] Council's Disruptive Innovation testimony: brief names the Zomentum kill (G2-10) "without examining why (pricing? adoption? build cost? feature-not-product?)" — fleet-synthesis death pattern #3 (buy-vs-build/commoditization) by name. A test that doesn't ask "what did Zomentum's customers actually reject" risks measuring operator enthusiasm for a demo, which Zomentum presumably also had, rather than the thing that actually killed it. |

**Naive survival:** 0.75 × 0.50 × 0.40 × 0.30 × 0.35 × 0.40 = **~0.63%**

**Correlation flag (stated, not modeled):** Adopt (Q2) and Market-fit are not independent — both are really "did we test the right operator," asked twice. Defend (Judge) and Competitive are also linked: if Zomentum's actual kill reason was liability/trust rather than pricing, the Judge-untooled question and the Zomentum question are one root cause wearing two names. Treat 0.63% as a ceiling, same caveat the fleet board already states for its own correlated Defend/Legal positions.

**Dies first at:** Build (Ledger, 0.30) — narrowly ahead of Defend/Judge (0.40) and Competitive (0.40) as the single lowest position.

---

## Cross-method check against council (same brief, same day)

**Agreement:** Idea Chess's dies-first gate (Build/Ledger, $0) is the *same* fact council's Value Chain voice independently flagged as its strongest objection, using a different analytical frame (margin/chokepoint control vs. sequential-gate probability). Two structurally different methods landing on the same weak point from the same underlying evidence (E5, the unwired producer) — this is the convergence worth trusting, not because two things agree, but because they agree via different logic.

**Disagreement worth naming, not resolving:** council's Service Blueprint testimony treated the Judge-untooled gap as its *top* structural concern (Verdict: Good, but the sharpest named objection); this board scores it second-lowest (0.40), not lowest. The difference is defensible — council is scoring "is this the right blueprint," Idea Chess is scoring "does the test in front of us resolve or expose it" — but it means the two methods don't fully agree on *rank*, only on the fact that both Ledger and Judge are live risks. `[0% Claude — Beth's call whether that rank difference matters for what gets fixed first before 2026-08-14.]`

**Criteria gap surfaced by running both:** neither method currently has a slot for "is the test itself powered to answer the question it claims to answer" (Adopt/Q2 and Market-fit both reduce to n=1-operator-session risk). That's not a finding about qbr-prep-sim — it's a gap in both the council voice list and the Idea Chess position library. Per the playbook's new rule: name it, don't just note it. Candidate fix: add a standing position/voice — "is n sufficient for the claim this test wants to make" — rather than re-discovering it per brief.

**Single test that moves the floor most:** wire the Value Ledger producer before 2026-08-14, even with placeholder/estimated values clearly tiered as [A]/Unverified per the brief's own defensibility vocabulary (V13). It's the cheapest of the six positions to move (a wiring task, not a research study) and it's tied for dies-first.
