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
RESEARCH_OWNER="a real person"         # who sets up the evidence layer — REQUIRED
J4_MODE="note"                         # a judgement call — see below
GATE_1="ux.md"
GATE_2="vision.md"
GATE_3="design.md"
```

Placeholders are fine to start with for most of these. Empty is fine too — the scripts
will tell you what they could not check rather than pretending they checked it.

**Two of them are not like the others.**

`RESEARCH_OWNER` **must be a real person's name before anything passes.** Not "UX", not
"research", not "the team" — those are rejected, and `check-evidence.sh` exits 28 until a
person is named. Setting up where this project's evidence lives is that person's job and
their call, and neither CI nor an agent is allowed to do it for them. See `ROLES.md`.

## 1b. The one judgement call in the config

`J4_MODE` is a genuine choice about your house style, and it is worth thirty seconds now
rather than an argument later.

`CLAUDE.md` §9b says a brief marked `confidence_regime: PROCEED-FLAGGED` should "mark
outputs provisional, surface `[CS:]` tags visibly, do not claim validation." The question
is whether those are **required wording** or **a posture you can express your own way**.

| value | behaviour | pick this if |
|---|---|---|
| `note` *(default)* | prints which of the three are missing, does not affect the exit code | you trust people to express the posture in their own words |
| `warn` | absence of all three is a finding — exit 25 | your team has decided the three phrasings are literal required vocabulary |

**The default is evidence-backed.** Swept against the corpus this skeleton came from: 28
files declared `PROCEED-FLAGGED` with a `machine_behavior:`, exactly two lacked all three
phrasings, and **both were correct** — they said *"no synthesis presented as settled"* and
*"do not claim any of this is committed to their roadmap."* That is a 100% false-positive
rate, and a check that reddens correct files is one people learn to route around. Choose
`warn` deliberately, not by default.

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
