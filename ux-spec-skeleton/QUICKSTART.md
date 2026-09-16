# QUICKSTART — running this on your project

Fifteen minutes to a working setup. You do not need to read the design system, the
research, or any of the long script headers to get started.

## 1. Point it at your project

Edit `project.conf`. It is the only file you have to change.

```
PROJECT_NAME="your-project"
INTENT_SPEC="path/to/your/spec.md"     # leave empty if you don't have one yet
BUILD="path/to/your/build.html"        # leave empty until something exists to check
ACCOUNTABLE_OWNER="a real person"      # who signs when a user could be affected
RISK_FUNCTION="legal / privacy"        # who co-signs when the company could be
GATE_1="ux.md"
GATE_2="vision.md"
GATE_3="design.md"
```

Placeholders are fine to start with. Empty is fine too — the scripts will tell you
what they could not check rather than pretending they checked it.

## 2. One required step, or nothing works

```bash
printf '{\n  "feature_directory": "."\n}\n' > .specify/feature.json
```

This file cannot be committed — spec-kit treats it as machine-local state. Without it
the planning workflow exits before it reaches any gate, and the error looks like a path
problem rather than a gate problem. If you take one thing from this page, take this one.

## 3. Run it

```bash
./check-gates.sh; ./check-blocked.sh; ./check-drift.sh; ./check-skills.sh
```

On a fresh clone you should see red. That is correct — the gate criteria ship unticked
because none of the work has been done yet. Green would mean the opposite of what you
want.

## 4. What you are looking at

Three files hold the standard, and each ends in a list of acceptance criteria that a
script reads:

| file | question it answers | who owns it |
|---|---|---|
| `ux.md` | Do we understand the problem and the people? | design, with research |
| `vision.md` | Are we building the right thing? | design-led, eng weighs feasibility |
| `design.md` | Are we building the thing right? | eng — this is the stable layer |

Five registers hold everything that is unresolved or worth recording. They are data,
not prose, and a script reads each one:

| file | what it holds |
|---|---|
| `OPEN.md` | Every open question, typed `HUMAN` (someone must decide) / `RESEARCH` (we need evidence) / `ACCEPTED` (known and carried) |
| `HAZARDS.md` | What actually goes wrong, to whom, how badly, and per destination |
| `VALUE.md` | What design and research changed, with the counterfactual — and the costs |
| `WAIVERS.md` | Every gate someone went around, and what it cost |
| `MANIFEST.md` | Every source a gate file was built from, and its hash |

## 5. Wire it into CI

A workflow is included at `.github/workflows/gates.yml`. It implements one rule:

- **Things that can hurt a user fail the build.** Accessibility, data integrity,
  lawfulness, security.
- **Everything else warns.** Unticked gates, open questions, stale sources, polish.

Read `EXIT-CODES.md` for which code means what. Every script exits with a distinct
code per kind of problem, so your CI can branch on what actually happened.

## The one thing to understand before you trust any of this

These scripts check that a box is ticked. They cannot check that the claim written next
to the box is true. Only a person reading the evidence can do that.

So this is not a system that makes design rigorous on its own. It is a system that makes
the *absence* of rigour visible, and stops "nobody checked" from printing the same way as
"someone checked and it was fine." That distinction is the whole value. Everything else
here is plumbing in service of it.

## If you want the reasoning

Every script has a long header explaining why it works the way it does, including the
mistakes that shaped it. `README.md` has the finding the whole approach rests on. You do
not need either to use this — but if you are about to change something, read the header
first; most of the obvious improvements were tried and are documented as failures.
