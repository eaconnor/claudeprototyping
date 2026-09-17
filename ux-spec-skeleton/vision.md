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
artifact: vision.md              # documentary
template_version: 1.1             # documentary
kind: main                        # main | mini                      · documentary
parent:                           # REQUIRED if kind: mini           · documentary
project: ‹project name›           # documentary — project.conf PROJECT_NAME is the executable one
owner: ‹person who owns THIS file›  # documentary — project.conf ACCOUNTABLE_OWNER is what check-tier.py reads
work_type: new-product            # new-product | new-feature | bug-fix | rebuild-section · documentary
research_posture: researcher-backed  # researcher-backed | self-serve · documentary
status: SKELETON                  # SKELETON | DRAFT | LIVE          · documentary

# ---- gate wiring ------------------------------------------------------------
gate: 2                             # READ BY: check-gates.sh, via GATE_2 in project.conf
canonical_for: "direction and scope — Gate 2. A DERIVED checklist; judgment lives in the intent spec"  # documentary
                                  # documentary, but load-bearing for humans: the domain
                                  # this file is canonical for. Two files claiming the same
                                  # domain is a problem no script will catch for you.
eval_loop: "./check-gates.sh · ./check-drift.sh"  # documentary
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

# Vision — ‹project›

Gate 2. A **derived** checklist: direction and scope are decided in the intent spec
(`canonical_spec:`), and this file records whether that decision is coherent enough to build
against. Judgment lives upstream; this is the gate on it.

> **Ships red.** See the note in `ux.md` — it applies identically here.

## Direction

‹One paragraph. What we are making, for whom, and what changes for them if it works.›

## What this is not

Non-goals, stated so scope creep is visible as a diff rather than a feeling.

- ‹non-goal›

## The outcome variable

‹Name what success means, as targets under the three ISO 9241-11 measures plus the context of
use — not a single metric. Operator-side "time saved" is an *efficiency* measure; a
client-facing artefact is graded on *effectiveness* and *satisfaction*. Naming both is what
stops the "pick one metric" argument.› `[?]`

## Acceptance Criteria — Gate 2: Are we making the right thing?

- [ ] G2-01 — Goals decompose the stated problem, and the decomposition is design's named judgment · verified_by: a human traces each goal back to a problem in ux.md §1
- [ ] G2-02 — Tasks are Top Tasks tied to goals, not a feature list · verified_by: a human checks each task against ux.md §2
- [ ] G2-03 — Function structure maps 1:1 to tasks — an orphan function is scope creep, an unserved task is a gap · verified_by: a human walks the mapping both directions
- [ ] G2-04 — Each Must is a behavior tied to what fails when it is absent, not a decoration · verified_by: a human reads each Must and names the failure
- [ ] G2-05 — Divergences from `canonical_spec` are logged in the Decision Log, not resolved unilaterally · verified_by: ./check-trace.sh
- [ ] G2-06 — The outcome variable is named as ISO 9241-11 targets plus a context of use · verified_by: a human confirms the section is filled and not a single bare metric

## Decision Log

The only place a red gate may be overridden, and only by a named human with a dated reason.
An override recorded here is a legitimate move; an override taken silently is the thing the
whole apparatus exists to prevent.

| # | Date | Decision | Who | Why | Unwind cost |
|---|---|---|---|---|---|
| D-001 | ‹date› | ‹what was decided› | ‹person› | ‹reason› | ‹cheap / costly / irreversible› |
