# Critic Pass 1 — Pre-Build Scorecard
**Brief:** ACP Control Plane + QBR Native (July 2026 Rerun)
**Fidelity:** Tier 1 · Concept
**Audience:** AI Council · Governance and Security Lens
**Date:** 2026-07-21
**Scorer:** Critic (pre-build)

---

## Dimension Scores

| # | Dimension | Score | Justification |
|---|-----------|-------|---------------|
| 1 | Problem clarity | 4/5 | Problem is specific and distinct from May 2026, but the narrowed N-able-native vs. cross-vendor job is not foregrounded in the problem statement as the core distinction being tested. |
| 2 | Evidence quality | 4/5 | 46% [A]+[?] disclosed and grep-verified; CS: tags applied at claim level; one point off for the secondhand Reineke claim carrying meaningful load for a governance audience. |
| 3 | Test design | 3/5 | Success metric is specific; counter-metric is named; test procedure (who captures, when, what prompt wording) is absent; the 15-minute edit path is P0 and unowned with no resolution in the test design. |
| 4 | Audience fit | 4/5 | Calibrated well to governance/security lens; one point off because council roster is [A] — not confirmed. |
| 5 | Failure mode visibility | 5/5 | Four named failure modes, all specific, all actionable; EU AI Act date real; counter-metric named and testable; gap inventory table complete. |
| 6 | Scope discipline | 4/5 | Tier 1 correctly bounded; build ingredients confirmed available; four "must show" items are all [A] and unsequenced — a 15-minute walkthrough cannot carry all four at equal weight. |

**Total: 24/30**

**Readiness state: READY**

---

## Punch List

**PASS:** Problem statement is specific and distinct from May 2026. The reframe from infrastructure to flagship is documented and sourced.

**PASS:** [A]+[?] ratio self-disclosed and grep-verified at 46%. CS: tags applied at claim level. Brief does not misrepresent its own confidence.

**PASS:** Failure modes section is complete and specific. Four modes named, all actionable. EU AI Act enforcement date (2026-08-02) is real and the ownership gap is named.

**PASS:** Scope correctly bounded to Tier 1 Concept. Build ingredients confirmed available (Runbook Engine 49/49, Value Ledger 52/52). Unresolved gates are named as out-of-scope, not hidden.

**FAIL:** Test protocol does not specify who captures council responses, when the success-metric question is asked, or how "unprompted articulation" is distinguished from a prompted answer. The metric exists; the procedure to measure it does not.

**FAIL:** The 15-minute edit path is P0, ~35% confidence, and unowned. The build must decide: show it (risking council evaluation of something that may not exist) or mark it explicitly as an assumption on the prototype surface. The brief names the tension but does not resolve it for the builder.

**FAIL:** Four things the prototype "must show" are all [A] and carry no sequencing or priority order. A 15-minute concept walkthrough cannot carry all four at equal weight. Build must sequence them or one drops silently and invisibly.

**MISSING:** Test prompt wording. "Articulate unprompted why QBR Native validates the Control Plane thesis" is a behavioral outcome, not a facilitation protocol. The OKR is not measurable without the exact question and timing.

**MISSING:** Council roster confirmation. Audience is [A]. If the session is scheduled, the roster should be verifiable before the build ships — otherwise the governance/security calibration may miss the actual room.

**RISK:** The secondhand Reineke licensing claim ([CS: MEDIUM], one reported conversation) is doing load-bearing work in Gate 1. A governance-lens council member will ask for the primary source. The brief cannot provide one. Highest live credibility risk in the room.

**RISK:** N-able-native scope confusion failure mode is named in the brief but not yet resolved for the prototype surface. A governance/security audience will assume cross-vendor capability because that is what they want. Without an explicit scope label visible in the prototype itself — not just the Bradley rail — the confusion failure will happen in the room regardless of how well the rail names it.

---

## Re-score targets for Pass 2

- Test design: 3 → 5 requires test protocol with prompt wording, capture method, and explicit handling of the 15-minute edit path assumption.
- Scope discipline: 4 → 5 requires the four "must show" items prioritized and sequenced for a 15-minute walkthrough.
- Audience fit: 4 → 5 requires council roster confirmed or [A] tag surfaced explicitly in the prototype fidelity banner.
