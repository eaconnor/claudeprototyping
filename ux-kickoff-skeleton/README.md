# ux-kickoff-skeleton

**The minimal sibling of `ux-spec-skeleton`.** Three scripts instead of thirteen,
built around the thing a real UX/research-led kickoff produces before any gate
content exists: a roster, a RACI, an evidence-basis call, and an escalation path.

## Why this exists as its own repo shape, not an extension of the bigger toolkit

A cognitive walkthrough of a real kickoff (product hands over a spec that turns out
to be hypotheses; the room has to assign RACI, name owners, agree an escalation path,
and decide what "signable" means — before anyone touches `ux.md`) found that none of
that groundwork had anywhere to live in `ux-spec-skeleton`. It got written once as an
82-line addendum buried in someone else's document, which was the wrong call — that
groundwork is the point of a kickoff, not a footnote to one. This skeleton is where
it lives instead: in the first commit, in `project.conf`, checked by a script of its
own.

**This is not a competing toolkit.** `ux.md`, `vision.md`, `design.md`,
`OPEN.md` and `check-gates.sh`/`check-blocked.sh` are the same shapes
`ux-spec-skeleton` uses (the latter two copied verbatim — they're already
self-contained and didn't need changing). The one real addition is
`check-roster.sh` and the `ROSTER`/`ACCOUNTABLE_OWNER`/`RESEARCH_OWNER`/
`RISK_FUNCTION`/`ESCALATION_PATH`/`EVIDENCE_BASIS` fields in `project.conf`.

## The scripts

| script | question | exit |
|---|---|---|
| `./check-roster.sh` | has the kickoff's own output actually been written down? | 3 nothing to check · 33 a field is a placeholder |
| `./check-gates.sh` | are the gate boxes ticked? | 1 open · fails on zero parsable criteria |
| `./check-blocked.sh` | are we waiting on a *person*? | 2 if a HUMAN row stands · 3 register missing |

None of these block CI — they warn. "Gates do not block work" is inherited whole
from `ux-spec-skeleton`: a gate that idles people gets removed, deservedly, and a
red roster or a red gate at kickoff is the normal state of honest work in progress.

## What's simplified relative to `ux-spec-skeleton`

`ux.md`/`vision.md`/`design.md` here carry a cut-down frontmatter. The full toolkit's
v1.1 schema has fields for `check-judgment.sh`, `check-drift.sh`,
`scripts/check-design.py` and `check-skills.sh` — none of which are vendored into
this repo. Keeping those fields with "READ BY: ./check-drift.sh" annotations for a
script that isn't here would be exactly the false claim the bigger toolkit exists to
catch elsewhere, so they're cut rather than carried as decoration. Copy the relevant
gate file across from `ux-spec-skeleton` (and the script it names) if you need one.

## Setup

```
/ux-kickoff
```

Runs the kickoff as a facilitated session — roster & RACI, owners, escalation,
evidence basis, in that order — and writes the answers into `project.conf` for
you. It asks; it never answers on your behalf. `.claude/skills/ux-kickoff/
SKILL.md` names exactly what it will and won't fill in.

Or skip straight to the scripts once `project.conf` is filled, by hand or by the
skill:

```bash
./check-roster.sh && ./check-gates.sh && ./check-blocked.sh
```

See `QUICKSTART.md` for the full walkthrough.

## Where the intent-spec template comes from

`Intent Specs/PROJECT-NAME.md` is a copy of `ux-spec-skeleton/templates/
UX-INTENT-SPEC.template.md`, itself a derivative of the org's real intent-spec
format (`briefs/handoffs/.../Intent_Spec_Example.md`, confirmed as the real
standard by matching two independent production documents section-for-section).
RACI, evidence status, change requests and scoped sign-off are load-bearing
sections in it, not an addendum — that was the specific correction this skeleton
exists to carry forward.

## What's ours and what isn't

Licensed the same as `ux-spec-skeleton` — fork it, teach it, build on it.
