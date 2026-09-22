# UX in the spec — try-this package

**→ Start with [`READ-THIS-FIRST.md`](READ-THIS-FIRST.md).** One page, and you don't need
anything else to begin.

## What this is, in three sentences

You already have an Intent Spec — the signed document saying what gets built. This adds the
layer *upstream* of it: what we actually know about the people we're building for, and how
strong those claims are allowed to be. It's two markdown files and three scripts, and the
whole point is that a claim can't quietly get stronger as it travels.

## Try it in two minutes

```bash
cd examples/alert-digest && ../../check-gates.sh
```

It **fails on purpose**. A document in there claims HIGH confidence; the evidence underneath
caps at MEDIUM; the check names the line. If it comes back clean, something is wrong with
your setup.

## What's in here

| | |
|---|---|
| [`READ-THIS-FIRST.md`](READ-THIS-FIRST.md) | **the front door** — read this |
| [`WHAT-IS-NOT-HERE.md`](WHAT-IS-NOT-HERE.md) | what was left out of this cut-down version, and why |
| [`THE-LONGER-EXPLAINER.md`](THE-LONGER-EXPLAINER.md) | the background, if you want it |
| `ux.md` · `design.md` | the two files that hold the standard |
| `findings.yaml` | the evidence rows the claims point at |
| `OPEN.md` | decisions waiting on a person |
| `project.conf` | the only file you have to edit |
| `check-gates.sh` · `check-claims.sh` · `check-blocked.sh` | the three checks |
| `examples/alert-digest/` | a small fictional project that demonstrates the mechanism |

There are also two **hidden** folders Finder won't show you: `.specify/` holds the hook
wiring and a short constitution, and `.claude/skills/` holds the `/ux-kickoff` setup
walkthrough. `ls -a` if you want to see them.

## Red is the normal state

Every check here exits non-zero on a fresh copy, and that is correct — nothing has been
decided yet, and each script says so rather than passing quietly. A green run on an empty
project would be the bug.

## What we want back

Questions, gaps, and anything that doesn't make sense — more than a clean trial. If a
sentence only makes sense to the person who wrote it, that's a defect. Say so.
