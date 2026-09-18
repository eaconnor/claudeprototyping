---
# ─────────────────────────────────────────────────────────────────────────────
# SIMPLIFIED FROM ux-spec-skeleton's v1.1 MERGED SCHEMA. That schema has fields
# for check-judgment.sh, check-drift.sh, check-design.py and check-skills.sh —
# none of which are vendored into THIS minimal skeleton. Claiming "READ BY:
# ./check-drift.sh" for a script that isn't in the repo is exactly the false
# claim this whole toolkit exists to catch elsewhere, so those fields are cut
# rather than carried over decorative. If you outgrow this and need them, copy
# ux.md/vision.md/design.md from ux-spec-skeleton directly — do not re-add the
# fields here without also vendoring the script that reads them.
# ─────────────────────────────────────────────────────────────────────────────
artifact: ux.md                   # documentary
project: ‹project name›           # documentary — project.conf PROJECT_NAME is the executable one
owner: ‹person who owns THIS file›  # documentary — project.conf ACCOUNTABLE_OWNER is what a signature resolves to
status: SKELETON                  # SKELETON | DRAFT | LIVE          · documentary

gate: 1                             # READ BY: check-gates.sh, via GATE_1 in project.conf
canonical_for: "the research corpus, the problem, the cast, and Gate 1"  # documentary
eval_loop: "./check-gates.sh · ./check-blocked.sh · ./check-roster.sh"   # documentary — the three scripts this skeleton actually ships

evidence_basis: "‹HYPOTHESES | FINDINGS | MIXED› — see EVIDENCE_BASIS in project.conf; documentary here"
last_updated: ‹YYYY-MM-DD›        # documentary
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

- [ ] G1-01 — Problem statement is sourced to a named artefact (spec, ticket, transcript, study), not assumed · verified_by: a human reads the cited source and confirms it says this
- [ ] G1-02 — Primary persona(s) named and evidence-tagged, not invented · verified_by: a human confirms each persona traces to real contact with a real person
- [ ] G1-03 — Full cast mapped; every role-gap named as a `[?]` row rather than omitted · verified_by: a human reads the cast table against the journey
- [ ] G1-04 — Riskiest assumptions surfaced in OPEN.md, each with a named owner · verified_by: ./check-blocked.sh (exit 2 if a HUMAN row stands)
- [ ] G1-05 — Roster & RACI are filled — a real name and role per person, not a placeholder · verified_by: ./check-roster.sh
