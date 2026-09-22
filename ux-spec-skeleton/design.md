---
# ─────────────────────────────────────────────────────────────────────────────
# MERGED SCHEMA v1.1 — every field is annotated with the script that READS it,
# or with `documentary`. That annotation is the whole point of this version.
#
# A reader cannot otherwise tell an enforced field from decoration, and the
# difference matters enormously: an enforced field that is wrong fails a build,
# while a documentary field that is wrong just sits there reading like a fact.
# v1.0 of this schema had 22 fields and NOT ONE of them was read by any script
# (verified by grep, 2026-09-16) — a constitution nothing executed. If you add a
# field, you either write the script that reads it or you mark it documentary.
# There is no third option, because the third option is how false green happens.
# ─────────────────────────────────────────────────────────────────────────────
artifact: design.md              # documentary
template_version: 1.1             # documentary
kind: main                        # main | mini                      · documentary
parent:                           # REQUIRED if kind: mini           · documentary
project: ‹project name›           # documentary — project.conf PROJECT_NAME is the executable one
owner: ‹person who owns THIS file›  # documentary — project.conf ACCOUNTABLE_OWNER is what check-tier.py reads
work_type: new-product            # new-product | new-feature | bug-fix | rebuild-section · documentary
research_posture: researcher-backed  # researcher-backed | self-serve · documentary
status: SKELETON                  # SKELETON | DRAFT | LIVE          · documentary

# ---- gate wiring ------------------------------------------------------------
gate: 3                             # READ BY: check-gates.sh, via GATE_3 in project.conf
canonical_for: "the design system, the interaction canon, and the usability/accessibility standard — Gate 3"  # documentary
                                  # documentary, but load-bearing for humans: the domain
                                  # this file is canonical for. Two files claiming the same
                                  # domain is a problem no script will catch for you.
eval_loop: "./check-gates.sh · scripts/check-design.py · ./check-eng.sh · ./check-drift.sh"  # documentary
                                  # documentary INDEX of the scripts that check this file.
                                  # Keep it accurate by hand; it is the map, not the territory.

# ---- evidence regime --------------------------------------------------------
confidence_regime: BLOCKED        # READ BY: ./check-judgment.sh — PROCEED | PROCEED-FLAGGED | PROCEED-PARTIAL | BLOCKED
                                  # BLOCKED is the correct default for a skeleton: nothing
                                  # here is decided yet. Do not soften it to ship faster.
proceed_because:                  # READ BY: ./check-judgment.sh — one sentence; without it the default is BLOCKED (exit 24)
machine_behavior:                 # READ BY: ./check-judgment.sh — directives for the execute phase; must keep unfilled slots provisional
confidence_score: UNSCORED        # READ BY: scripts/ux-score.py — computed by grep, never asserted

# ---- source provenance (the part that is actually computed) -----------------
drift: FRESH                      # READ BY: ./check-drift.sh — RECOMPUTED, not trusted.
                                  # Typing FRESH here while the hashes disagree exits 22.
built_from:                       # READ BY: ./check-drift.sh — each path is hashed against MANIFEST.md
  - .specify/memory/constitution.md
reconciled_at: 2026-09-16         # documentary — the date a human last reconciled. `drift:` is
                                  # the computed field; this one is only a note about a person.

# ---- tooling ----------------------------------------------------------------
canonical_spec: spec.md           # READ BY: ./check-trace.sh, via INTENT_SPEC in project.conf
design_system: ‹your design system›  # documentary
design_lint: static-tokens        # READ BY: scripts/check-design.py — off | static-tokens | +components | live-figma
stress_test_method: none          # documentary — your concept-validation method, or "none"
skills:                           # READ BY: ./check-skills.sh — every name must resolve on disk.
                                  # SHIPS EMPTY ON PURPOSE. A borrowing team has none of one
                                  # project's tuned skills, and the coach falls back to its
                                  # built-in method guides. Empty passes; wrong exits 21.
mini_docs:                        # documentary — children, if kind: main
last_updated: 2026-09-16          # documentary
---

# design.md — ‹project›

Canonical for the design system, the interaction canon, and the usability and accessibility
standard. **§ Acceptance Criteria is Gate 3**, read by `./check-gates.sh` and
`scripts/check-design.py`.

> **Ships red.** See the note in `ux.md`.

Gate 3 is eng's stable layer, and it is the one gate that **cannot honestly be green before a
build exists and has been measured**. Usability per **ISO 9241-11**: the extent to which
specified users achieve specified goals with effectiveness, efficiency and satisfaction in a
specified context of use. `[CS: HIGH — ISO 9241-11:2018]` There is no universal usability —
name the context of use or the measures below mean nothing.

## How to fill this out — delete this block once the file is written

**This file authors THE BEHAVIOUR:** *"given this evidence, here is how it must behave."*

Four moves. Each names **what it has to produce** — how you get there is yours.

1. **Make the thing, evidence first.** → a prototype **plus** the honesty apparatus around
   it.
   *From scratch:* any prototyping process, as long as the brief is claim-tagged *before*
   the build starts and the fidelity tier is stated on the artifact itself.
2. **Critique it against the brief, twice.** → a pre-build and a post-build score, with the
   delta between them.
   *From scratch:* a written rubric and a reviewer who did not build it. The number of
   dimensions matters far less than the reviewer not being the author.
3. **Check the process ran.** → did the steps happen, or just get claimed.
   *From scratch:* ask someone to verify the artifacts exist. Unglamorous, catches real
   things.
4. **Write the criteria.** → the inherited `UXI-##` rows, plus the FLOOR items.
   Yours.

**This is where the loop closes.** Testing a prototype produces `observed_behavior` findings
at `population_fidelity: primary` — the only combination that reaches a HIGH ceiling. So
this file is not just a consumer of evidence, it is **the main manufacturer of the strongest
evidence in the system**, and the step that pays back whatever bet `vision.md` made on
secondary material. Those results go back into `findings.yaml`.

**Secondary evidence stops being enough here.** Converged desk research can tell you the
conversation is the human half of the job. It cannot tell you whether your approval step is
reachable by keyboard. This is the file where fidelity has to be primary.

**The one exception to needing evidence at all:** FLOOR items — WCAG, APEX, data integrity —
rest on **standards, not findings**, and need no evidence row. They are the only legitimately
unsourced claims in the whole system. Name them even when they cannot yet be assessed:
`[?]` means "no UI exists to measure," which is not the same as "unmet."

Longer version, with the toolkit routes: `AUTHORING.md`.

## Context of use

- **Users:** ‹who, specifically› `[?]`
- **Tasks:** ‹which tasks, from vision.md G2-02› `[?]`
- **Environment:** ‹where, on what, under what pressure, with what interruptions› `[?]`

## Rules pulled from the design system

`design_system:` names the system; `design_lint:` sets how hard it is checked. Tokens are read
from the build's own `:root` block — **no palette is hardcoded in any script here**, which is
what lets this repo work with any design system.

| id | rule | how it is checked |
|---|---|---|
| DS-01 | ‹token names, not raw hex› | scripts/check-design.py |
| DS-02 | ‹named type stack› | scripts/check-design.py |

## FLOOR and FIT

The split that makes this usable by engineering, and it is not a detail:

- **FLOOR** — accessibility, data integrity, lawfulness, security. **Never gated on problem
  validation.** You do not wait for a reaction test to label a form field. Hard CI failure.
- **FIT** — polish that only pays off if the concept survives. Visible warning, not a block.

"Don't build until Gate 1 passes" is right for FIT and dangerously wrong for FLOOR.

## Acceptance Criteria — Gate 3: Are we making the thing right?

- [ ] G3-01 — FLOOR · WCAG AA contrast met, measured not eyeballed · traces_to: §5 · verified_by: scripts/contrast.py computes the table; a real audit confirms it
- [ ] G3-02 — FLOOR · Keyboard-reachable and screen-reader labelled on every interactive element · traces_to: §5 · verified_by: a human drives the build with keyboard only, then with a screen reader
- [ ] G3-03 — FLOOR · No data loss on any destructive action, and nothing irreversible without confirmation · verified_by: a human attempts each destructive path
- [ ] G3-04 — FLOOR · Lawful basis for every piece of personal data touched; retention stated · verified_by: the risk function named in project.conf signs (T3)
- [ ] G3-05 — FIT · Effectiveness: users complete the Top Tasks correctly and completely · verified_by: an instrument in instruments/ — declare the threshold before collecting data
- [ ] G3-06 — FIT · Efficiency: reasonable effort to the goal, measured against a named baseline · verified_by: an instrument in instruments/
- [ ] G3-07 — FIT · Satisfaction: SUS ≥ 6 to ship, ≥ 8 on the top five tasks; trust eval where output is AI-generated and user-facing · verified_by: an instrument in instruments/
- [ ] G3-08 — FIT · Design-system conformance linted per `design_lint:`, with its coverage declared — never a bare "compliant" · verified_by: scripts/check-design.py
- [ ] G3-09 — Each Must from vision.md has a built-in test that could run against a real build · verified_by: a human checks one row per Must
- [ ] G3-10 — Tested how, by whom, against what — named, with the instrument linked · verified_by: a human reads the instrument file
