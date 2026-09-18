---
artifact: vision.md              # documentary
project: ‹project name›           # documentary
owner: ‹person who owns THIS file›  # documentary
status: SKELETON                  # SKELETON | DRAFT | LIVE          · documentary

gate: 2                             # READ BY: check-gates.sh, via GATE_2 in project.conf
canonical_for: "direction and scope — Gate 2. A DERIVED checklist; judgment lives in the intent spec"  # documentary
eval_loop: "./check-gates.sh"       # documentary

last_updated: ‹YYYY-MM-DD›        # documentary
---

# Vision — ‹project›

Gate 2. A **derived** checklist: direction and scope are decided in the intent spec
(`INTENT_SPEC` in `project.conf`), and this file records whether that decision is
coherent enough to build against. Judgment lives upstream; this is the gate on it.

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
- [ ] G2-05 — The outcome variable is named as ISO 9241-11 targets plus a context of use · verified_by: a human confirms the section is filled and not a single bare metric
- [ ] G2-06 — Every Change request in the intent spec against this document's claims is either accepted or rejected with a reason, none left silent · verified_by: a human reads the intent spec's Change requests table

## Decision Log

The only place a red gate may be overridden, and only by a named human with a dated reason.
An override recorded here is a legitimate move; an override taken silently is the thing the
whole apparatus exists to prevent.

| # | Date | Decision | Who | Why | Unwind cost |
|---|---|---|---|---|---|
| D-001 | ‹date› | ‹what was decided› | ‹person› | ‹reason› | ‹cheap / costly / irreversible› |
