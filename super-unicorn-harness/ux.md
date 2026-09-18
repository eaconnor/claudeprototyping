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
artifact: ux.md              # documentary
template_version: 1.1             # documentary
kind: main                        # main | mini                      · documentary
parent:                           # REQUIRED if kind: mini           · documentary
project: ‹project name›           # documentary — project.conf PROJECT_NAME is the executable one
owner: ‹person who owns THIS file›  # documentary — project.conf ACCOUNTABLE_OWNER is what check-tier.py reads
work_type: new-product            # new-product | new-feature | bug-fix | rebuild-section · documentary
research_posture: researcher-backed  # researcher-backed | self-serve · documentary
status: SKELETON                  # SKELETON | DRAFT | LIVE          · documentary

# ---- gate wiring ------------------------------------------------------------
gate: 1                             # READ BY: check-gates.sh, via GATE_1 in project.conf
canonical_for: "the research corpus, the problem, the cast, and Gate 1"  # documentary
                                  # documentary, but load-bearing for humans: the domain
                                  # this file is canonical for. Two files claiming the same
                                  # domain is a problem no script will catch for you.
eval_loop: "./check-gates.sh · ./check-trace.sh · ./check-blocked.sh · ./check-drift.sh · ./check-skills.sh"  # documentary
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

# ux.md — ‹project›

**One breath:** ‹what this file is, one sentence — a person or an agent should know what they are holding.›

Canonical for the research corpus, the problem, and the cast. **§ Acceptance Criteria is Gate 1**, read by `./check-gates.sh`.

> **This file ships red.** Every criterion below is unticked because none of the work
> has been done. That is the correct state for a skeleton, and `./check-gates.sh`
> exits 1 to say so. Do not tick a box to make a script quiet — the script checks
> that a box is ticked, and only a person reading the evidence can check that the
> claim beside it is true.

## 1. The problem, and for whom

**Problem statement** — ‹sourced, not invented. Quote the intent spec verbatim if one exists.› `[?]`

| Who | Role in this story | Evidence quality |
|---|---|---|
| ‹persona› | ‹what they do here› | `[?]` |

Map the **full** cast, not just the primary persona. Where a role almost certainly exists
but you have no evidence for it, write the row and tag it `[?]`. A missing row reads as
"nobody plays that part"; a `[?]` row reads as "we have not looked" — which is true.

## 2. Top Tasks

The few things users actually care about, not a feature list. Ranked by real voting or
data where you have it, tagged `[A]` where you do not.

1. ‹task› `[?]`

## 3. Open items

Every assumption, decision and unknown lives in `OPEN.md`, not here — one register, riskiest
first, each with an owner. This section is a pointer on purpose: two lists of open questions
means one of them is stale and no script can tell you which.

## Acceptance Criteria — Gate 1: Do we understand the problem?

- [ ] G1-01 — Problem statement is sourced to a named artefact (spec, ticket, transcript, study), not assumed · traces_to: §1 · verified_by: a human reads the cited source and confirms it says this
- [ ] G1-02 — Primary persona(s) named and evidence-tagged, not invented · traces_to: §3 · verified_by: a human confirms each persona traces to real contact with a real person
- [ ] G1-03 — Full cast mapped; every role-gap named as a `[?]` row rather than omitted · traces_to: §3 · verified_by: a human reads the cast table against the journey
- [ ] G1-04 — Riskiest assumptions surfaced in OPEN.md, each with a named owner · verified_by: ./check-blocked.sh (exit 2 if a HUMAN row stands)
- [ ] G1-05 — `[A]`+`[?]` share of tagged claims is computed and, if over 30%, flagged rather than buried · verified_by: python3 scripts/ux-score.py — computed by grep, never asserted
- [ ] G1-06 — Every source this file was built from is registered in MANIFEST.md and hashes clean · verified_by: ./check-drift.sh (exit 22 if `drift:` misdeclares)
- [ ] G1-07 — Every `UXI-##` requirement in the intent spec's §5 (UX intent) traces back to a named problem, persona or task above — a UX intent nobody can point research at is asserted, not grounded · traces_to: §5 · verified_by: ./check-trace.sh's backward pass (exit 4 if a UXI-## is orphaned), plus a human confirming the grounding named is real, not merely present

**Why this file was wired to the intent spec on 2026-09-18, and not before:** none of the
three gate files carried a single `traces_to:` field until today — `check-trace.sh` would
have reported every one of them `BROKEN` the moment a real `INTENT_SPEC` was set, and
nothing had ever exercised that path. G1-07 is the direct answer to "wire ux.md to the
main intent spec's UX section" — Gate 1 doesn't assert UX intent, it verifies that
whatever UX intent exists in §5 is traceable to real research here, not free-standing.

**First real run of this mechanism, same day, caught something real.** Pointing G1-07 at
the section level (`§5`) rather than a specific `UXI-##` makes the forward check pass but
leaves `check-trace.sh`'s BACKWARD pass correctly reporting every `UXI-##` in a filled
intent spec as an orphan — nothing points at the specific id, only at the section it lives
in. On the template's own illustrative `UXI-01`/`UXI-02` rows that's expected. **On a real
filled project it is not** — once your intent spec has real `UXI-##` rows, add a criterion
here (or point G1-07 itself) at those specific ids, or the backward check will keep
reporting orphans, correctly, every time.

## Mini docs

(none yet — this is the spine)
