---
feature: ‹feature-name›
status: pre-spec
ux_ref: ux.md
design_ref: design.md
gates:
  gate_1: OPEN
  gate_2: OPEN
  gate_3: OPEN
---

# Feature Specification: ‹FEATURE NAME›

> **This is a skeleton, on purpose.** `/speckit-specify` generates this file properly from
> `.specify/templates/spec-template.md`. What is here is the *shape*, so you can see how the
> gate files hang off it — replace it with a generated one as soon as you have something
> real to specify.
>
> `plan.md` and `tasks.md` are deliberately **absent**. `/speckit-plan` and `/speckit-tasks`
> generate them, and hand-stubbing them makes `setup-plan.sh` skip its own template copy —
> so a stub is worse than nothing. Learned in a predecessor repo, where hand-written stubs
> in a shape no `/speckit-*` command recognised sat in the tree looking like progress.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - ‹Brief Title› (Priority: P1)

‹As a ‹persona from ux.md §1›, I want ‹outcome› so that ‹value›.›

**Why this priority:** ‹what breaks if this is not first›

### Edge Cases

- ‹what happens when …›

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001** — ‹requirement› · traces_to: ‹§N of the intent spec, or a `UXI-##`›

Every `FR-###` traces to a stated intent, and `./check-trace.sh` validates the pointer. A
requirement tracing to nothing is scope that arrived without a decision — five of those
were found in a predecessor repo by this exact check.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001** — ‹measurable outcome›

These are the Gate 2 outcome variable made specific. Name them as targets under
effectiveness, efficiency and satisfaction in a named context of use — not as one metric.
See `ux.md` § The outcome variable.

## Assumptions

Every assumption here also gets a row in `OPEN.md`, typed `RESEARCH` if evidence could
settle it or `HUMAN` if only a person can decide. Two lists means one is stale.

- ‹assumption› `[A]`
