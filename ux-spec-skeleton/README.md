# UX in spec-driven design — a skeleton to clone

A working repo for wiring design and research judgment into a spec-kit engineering
workflow, so it survives contact with how software actually gets built.

**15 scripts · 5 registers · 1 config file.** Clone it, edit `project.conf`, run the chain.
Start at [`QUICKSTART.md`](QUICKSTART.md).

## The finding this is built on

**A gate written in prose does not fire.**

That is not a hunch. A controlled test ran **12 fresh agents on 6 trap tasks** — half with
866 lines of gate documentation present, half with it deleted. **Six of six pairs tied.**
Not one agent cited either document. One put an emoji in the markup while holding the file
that bans emoji; another built a confirmation dialog while holding the section stating that
discard must never be confirmed. `[CS: VERIFIED]`

The same rules, moved into scripts, then found: 10 live accessibility violations in a build
two review passes had cleared, 5 requirements tracing to no stated intent, 2 gate boxes
ticked while false, a cited claim contradicted by its own primary source.

**Rules belong in the execution path. Everything else is a reading assignment nobody does.**

## What is here

Three files hold the standard. Each ends in acceptance criteria a script reads.

| file | question | owner |
|---|---|---|
| `ux.md` | Do we understand the problem and the people? | design + research |
| `vision.md` | Are we building the right thing? | product, design-led |
| `design.md` | Are we building the thing right? | engineering |

Five registers hold what is unresolved. They are **data, not prose** — each is parsed.

| file | holds | script |
|---|---|---|
| `OPEN.md` | open questions, typed `HUMAN` / `RESEARCH` / `ACCEPTED` | `check-blocked.sh` |
| `HAZARDS.md` | what goes wrong, to whom, how badly, per destination | `check-risk.py` |
| `VALUE.md` | what design and research changed — **with the costs** | `check-value.sh` |
| `WAIVERS.md` | every gate someone went around, and what it cost | `check-waivers.sh` |
| `MANIFEST.md` | every source a gate file was built from, and its hash | `check-drift.sh` |
| `ux.README.md` | the hand-written human layer — orientation the spine cannot carry | `check-human.sh` |
| `EVIDENCE.md` | **where evidence lives** — homes, not individual sources. Owner required, method free | `check-evidence.sh` |

Four files hold the human process, because none of the above tells a person what to do.

| file | answers |
|---|---|
| `ROLES.md` | who owns which gate |
| `RITUALS.md` | the four moments a person has to be in the room |
| `SIGNOFF.md` | who signs — **by consequence, not by rank** |
| `WHAT-ONLY-HUMANS-DO.md` | what the automation structurally cannot do |
| `CONTRIBUTE.md` | the front door for anyone with customer contact |

## The scripts

Each exits with a **distinct code per kind of problem** — never a bare pass/fail. A single
pass/fail collapses "a box is unticked" and "this build can hurt someone" into one number
and loses the only information that tells you what to do next. Full contract:
[`EXIT-CODES.md`](EXIT-CODES.md).

| script | question | exit |
|---|---|---|
| `./check-gates.sh` | are the gate boxes ticked? | 1 open · **fails on zero parsable criteria** |
| `./check-blocked.sh` | are we waiting on a *person*? | 2 a `HUMAN` row stands · 3 register broken |
| `./check-trace.sh` | have criteria drifted from what they enforce? | 4 broken trace · 5 no intent spec |
| `./check-drift.sh` | are the **sources** still what we built on? | 18 stale · 19 conflict · **22 `drift:` misdeclared** |
| `./check-skills.sh` | does every registered capability **exist**? | 21 unresolved name |
| `./check-judgment.sh` | does the plan→execute **authorization** hang together? | 23 unacknowledged slot · 24 incoherent · 25 partial with no named gate |
| `./check-human.sh` | does the **human layer** still point at anything real? | 26 dangling reference · 27 fence stale (`--write` fixes) |
| `./check-evidence.sh` | is there **anywhere the evidence lives**? | 28 not set up · 29 broken locator |
| `./check-eng.sh` | the five gates eng owns | 10 can harm a user · 11 off-roadmap · 12 unevaluated |
| `./check-never.sh` | has something happened that never should? | 20 — stop and investigate, do not score |
| `./check-value.sh` | is the value register honest? | 13 if it records no costs |
| `./check-waivers.sh` | are the gates worth obeying? | 15 a never event was waived · 16 malformed |
| `scripts/check-design.py` | does the build obey the design system? | 6 violation · 7 unresolved · 5 no build |
| `scripts/check-risk.py <dest>` | risk of shipping **to a named destination**? | 9 ship-blocking · 2 no destination |
| `scripts/check-tier.py` | who has to sign? | 17 the tiering is a bottleneck |
| `scripts/ux-score.py` | conformance baseline and work list | 0 — reports, never blocks |
| `scripts/contrast.py` | computes the WCAG table | 0 — so ratios are reproducible, not asserted |

## Three design decisions worth knowing before you change anything

**Zero findings is never a pass.** Every script fails rather than reporting "nothing found"
when it could not parse anything. Three of the first nine scripts written here shipped with
that bug and all three were real. "No violations found" and "no violations looked for"
print almost identically, and that is the single most common way this apparatus gets
defeated.

**FLOOR is never gated on problem validation.** Accessibility, data integrity, lawfulness
and security hold whether or not the concept is right — you do not wait for a reaction test
to label a form field. Everything else waits. Eng gets a hard CI failure on FLOOR and a
visible warning on the rest. "Don't build until Gate 1 passes" is right for polish and
dangerously wrong for harm.

**Gates block artifacts, not people.** A pending signature never idles an engineer; what
waits is the specific risky action. Waivers are a feature — `check-waivers.sh` computes what
share of bypasses turned out costly versus vindicated, and **that number is the only
evidence anyone has about whether these gates are worth their overhead.** At 30% or less
costly, loosen them.

## Every frontmatter field says who reads it

The merged schema (v1.1) annotates every field with either the script that reads it or the
word `documentary`. Schema v1.0 had 22 fields and **not one was read by any script** — a
constitution nothing executed. A reader could not tell an enforced field from decoration,
which is the same false-green problem one level up. If you add a field, write the reader or
mark it documentary.

## What this cannot do

These scripts check that a box is ticked. **They cannot check that the claim written next
to it is true.** Only a person reading the evidence can do that — `RITUALS.md` §2 step 4 is
where that happens, and it only samples.

So this is not a system that makes design rigorous. It is a system that makes the *absence*
of rigour visible, and stops "nobody checked" from printing the same way as "someone checked
and it was fine." That is the whole value. Everything else is plumbing in service of it.

## Gate state on a fresh clone

Red, on purpose. `./check-gates.sh` exits 1 — **22 criteria, none ticked.**
`./check-blocked.sh` exits 2 on three real setup decisions. `scripts/check-design.py` exits
5 because there is no build yet. Nothing here is ticked to make a script quiet.

## What is ours and what is not

- `.specify/` and `.claude/skills/speckit-*` are **vendored from
  [github/spec-kit](https://github.com/github/spec-kit)** — not original work. They are
  committed rather than gitignored on purpose: those skills are the layer that reads
  `.specify/extensions.yml`, so enforcement only travels with the repo if they do.
- The `check-*` scripts, the gate files, the five registers, the human-process files, the
  constitution and the merged schema are original.
- Licensed MIT — see `LICENSE`. Fork it, teach it, build on it.
