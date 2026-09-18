---
artifact: design.md              # documentary
project: ‹project name›           # documentary
owner: ‹person who owns THIS file›  # documentary
status: SKELETON                  # SKELETON | DRAFT | LIVE          · documentary

gate: 3                             # READ BY: check-gates.sh, via GATE_3 in project.conf
canonical_for: "the design system, the interaction canon, and the usability/accessibility standard — Gate 3"  # documentary
eval_loop: "./check-gates.sh"       # documentary — vendor scripts/check-design.py and check-eng.sh from
                                  # ux-spec-skeleton if you need automated design-token or FLOOR/FIT linting

last_updated: ‹YYYY-MM-DD›        # documentary
---

# design.md — ‹project›

Canonical for the design system, the interaction canon, and the usability and accessibility
standard. **§ Acceptance Criteria is Gate 3**, read by `./check-gates.sh`.

> **Ships red.** See the note in `ux.md`.

Gate 3 is eng's stable layer, and it is the one gate that **cannot honestly be green before a
build exists and has been measured**. Usability per **ISO 9241-11**: the extent to which
specified users achieve specified goals with effectiveness, efficiency and satisfaction in a
specified context of use. `[CS: HIGH — ISO 9241-11:2018]` There is no universal usability —
name the context of use or the measures below mean nothing.

## Context of use

- **Users:** ‹who, specifically› `[?]`
- **Tasks:** ‹which tasks, from vision.md G2-02› `[?]`
- **Environment:** ‹where, on what, under what pressure, with what interruptions› `[?]`

## FLOOR and FIT

The split that makes this usable by engineering, and it is not a detail:

- **FLOOR** — accessibility, data integrity, lawfulness, security. **Never gated on problem
  validation.** You do not wait for a reaction test to label a form field. Hard CI failure.
  **Live from `EVIDENCE_BASIS: HYPOTHESES` on** — an unevidenced concept still owes a real
  user a lawful basis and a keyboard-reachable UI the day it ships anywhere real.
- **FIT** — polish that only pays off if the concept survives. Visible warning, not a block.

"Don't build until Gate 1 passes" is right for FIT and dangerously wrong for FLOOR.

## Acceptance Criteria — Gate 3: Are we making the thing right?

- [ ] G3-01 — FLOOR · WCAG AA contrast met, measured not eyeballed · verified_by: a real audit, tool of your choice
- [ ] G3-02 — FLOOR · Keyboard-reachable and screen-reader labelled on every interactive element · verified_by: a human drives the build with keyboard only, then with a screen reader
- [ ] G3-03 — FLOOR · No data loss on any destructive action, and nothing irreversible without confirmation · verified_by: a human attempts each destructive path
- [ ] G3-04 — FLOOR · Lawful basis for every piece of personal data touched; retention stated · verified_by: the RISK_FUNCTION named in project.conf signs (T3)
- [ ] G3-05 — FIT · Effectiveness: users complete the Top Tasks correctly and completely · verified_by: an instrument — declare the threshold before collecting data
- [ ] G3-06 — FIT · Efficiency: reasonable effort to the goal, measured against a named baseline · verified_by: an instrument
- [ ] G3-07 — FIT · Satisfaction: SUS ≥ 6 to ship, ≥ 8 on the top five tasks; trust eval where output is AI-generated and user-facing · verified_by: an instrument
- [ ] G3-08 — Each Must from vision.md has a built-in test that could run against a real build · verified_by: a human checks one row per Must
- [ ] G3-09 — Tested how, by whom, against what — named, with the instrument linked · verified_by: a human reads the instrument file
