# ux.md — README

Human orientation for [`ux.md`](ux.md). The `ux.md` itself is the machine-first spine —
frontmatter, tags, acceptance criteria. **This file is the narrative that would otherwise sit
at its top, and it is written by hand on purpose.** If the two ever disagree, `ux.md` wins.

<!-- BEGIN STATUS -->

**Machine state of [`ux.md`](ux.md) — regenerated, not typed.**

| field | value |
|---|---|
| status | `SKELETON` |
| confidence_regime | `BLOCKED` |
| drift | `FRESH` |
| acceptance criteria ticked | 0 of 6 |
| unfilled judgment slots | 0 |

Regenerate with `./check-human.sh --write`. If this block disagrees with the
prose below it, the block is right and the prose needs a human.

<!-- END STATUS -->

> **Why this file is not generated.** Everything below — how each reader should use the spine,
> which two ideas people reliably conflate, what to do when the owner is away — is judgment.
> None of it can be derived from the spine, so no generator can write it. Only the machine-state
> block above is generated. `./check-human.sh` checks that this file still points at real
> things; it makes no attempt to check that the prose is still *true*. That is a human job, and
> `RITUALS.md` §2 is where it happens.

## How each reader uses it — not just reads it

- **Design:** read the Gate 1 and Gate 2 material *before* sketching — the "am I solving the
  right problem for the right person" check. When reviewing a build, check it against Gate 3's
  criteria and their `verified_by:` clauses, not against taste.
- **Eng:** Gate 3 is the literal acceptance-criteria layer — build against it. Treat Gate 1 and
  Gate 2 as context you need, not as spec to build against; they are still design's to change.
- **An AI asked to spec or build this:** the spine is **required reading before
  `speckit-specify` runs**, not optional background. Re-deriving its content instead of citing
  it is the exact failure this apparatus exists to prevent. An agent may read and flag a
  conflict in Gate 1/2 material; it may not resolve an open decision or fill a judgment slot.

## Gate vs. confidence — the two axes people conflate

A Gate 1 section can be `[CS: VERIFIED]` and still be wide open — a well-sourced persona is
still a live judgment about *which* problem to prioritise. A Gate 3 section can be fully
decided and still `[PENDING]` evidence.

**Gate tag = how much of this is still design's to change. Confidence tag = how well-evidenced
it is right now.** They move independently. A third axis, `design_tier`, is about how built-out
the prototype is — see `ROLES.md`. Conflating any two of the three is the most common misreading
of this whole system.

## If the owner isn't around

This file is built to keep working without them.

**What you can do alone:** add evidence (save the source with its provenance, register it in
`MANIFEST.md`, add it to `built_from:`); correct a claim (change the text, change the tag if the
evidence changed, date it in the changelog — never silently delete a wrong number, mark it ☠);
improve a `verified_by:` clause; build prototypes with fictional data.

**What you route rather than decide:** anything open in `OPEN.md` typed `HUMAN` goes to the
owner named in the row. A `HUMAN` row is a decision no amount of research resolves.

**The one thing never to do:** fill an unfilled judgment slot with AI text. Those are
human-or-empty. `./check-judgment.sh` enforces the contract around them, and
`WHAT-ONLY-HUMANS-DO.md` says why.

## Adding what you're seeing

Use [`CONTRIBUTE.md`](CONTRIBUTE.md). You do not need to learn the tag vocabulary or touch the
spine to contribute an observation.
