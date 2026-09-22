#!/bin/bash
# make-v1.sh — build the skinny v1 from this repo. ONE COPY, NOT TWO.
#
# WHY THIS IS A SCRIPT AND NOT A SECOND FOLDER YOU MAINTAIN.
# A hand-made small version is a second repo, and a second repo drifts. This toolkit
# already paid that bill once: a separate skeleton existed alongside this one for a day
# in September 2026 with its own copies of the gate files and its own check-roster.sh,
# and consolidating them was a day's work. The rule that came out of it: edit the big
# one, regenerate the small one. Never edit the output.
#
# Everything in ../ux-spec-v1/ is either copied verbatim from here or generated below.
# If you need to change v1, change THIS FILE or the source it copies — then re-run.
#
#   ./make-v1.sh          build ../ux-spec-v1
#   ./make-v1.sh --check   build, then run the checks in it and report

set -e
OUT="../ux-spec-v1"

echo "building $OUT from $(basename "$PWD")"
rm -rf "$OUT"
mkdir -p "$OUT" "$OUT/examples" "$OUT/assets" "$OUT/.specify/memory" "$OUT/.claude/skills"

# ---------------------------------------------------------------- copied verbatim
# Three scripts. These are the ones that answer "is this claim allowed to be this
# strong", "is it well-formed", and "who owes us a decision". Everything else in the
# full toolkit answers a question a trial does not need to ask yet.
for f in check-gates.sh check-claims.sh check-blocked.sh; do
  cp "$f" "$OUT/"; done
chmod +x "$OUT"/*.sh

# Gate 1+2, the evidence layer, and the open register.
for f in ux.md findings.yaml OPEN.md; do cp "$f" "$OUT/"; done

cp assets/ux-and-intent-spec.png "$OUT/assets/"
cp -R examples/alert-digest "$OUT/examples/"
cp -R .claude/skills/check-gates "$OUT/.claude/skills/"

# ---------------------------------------------------------------- design.md, trimmed
# Strips the << … >> annotation blocks — the "how to fill this out" teaching text.
# They are genuinely useful when you sit down to write the file for the first time, and
# they are more than a third of its length, which is the wrong trade for a trial.
# The full version with all of them is in the source repo.
awk '/<</{skip=1} !skip{print} />>/{skip=0}' design.md \
  | awk '/^### Two markers, and they mean different things/{skip=1; next} /^## /{skip=0} !skip' \
  | cat -s > "$OUT/design.md"

# ---------------------------------------------------------------- generated
cat > "$OUT/project.conf" <<'CONF'
# project.conf — the only file you have to edit.
#
# This is the SKINNY V1 config. It carries only the keys the three v1 scripts actually
# read, verified by grepping them rather than by copying the full template. The full
# toolkit's config has roughly twenty more; none of them would do anything here, and a
# key that looks like a setting but is read by nothing is worse than no key at all.

PROJECT_NAME="‹your project›"

# ---- the gate files -------------------------------------------------------------
# ux.md answers TWO gates: "do we understand the problem" (1) and "is this the right
# thing to build" (2). They were separate files until September 2026. Pointing both
# names at one file is correct and the checks report it once, not twice.
GATE_1="ux.md"
GATE_2="ux.md"
GATE_3="design.md"

# ---- the evidence layer ---------------------------------------------------------
# Both keys, on purpose. check-claims.sh prefers FINDINGS_FILE and falls back to
# FINDINGS; older copies read only one of them.
FINDINGS="findings.yaml"
FINDINGS_FILE="findings.yaml"

# ---- your existing spec ---------------------------------------------------------
# Path to the Intent Spec you already have. Leave EMPTY if you don't have one yet, or
# don't want to wire it for the trial — empty is a legal answer and the checks will say
# "ids are local to these files only" rather than failing.
#
# A requirement id in a gate file resolves against this document. With no spec named,
# nothing resolves and nothing pretends to.
INTENT_SPEC=""

# ---- the one judgment slot v1 keeps --------------------------------------------
# WHO SETS A CONFIDENCE GRADE. No script will ever fill one in — only the person named
# here. Leave it UNASSIGNED and that is a real answer that the checks will report: it
# means every finding stays ungraded and every claim resting on one gets flagged.
#
# Do not put a team name here. A grade owned by everyone is owned by nobody.
RESEARCH_OWNER="UNASSIGNED"
CONF

cat > "$OUT/.specify/extensions.yml" <<'YML'
# Basic hook wiring for the skinny v1 — one check, two moments.
#
# The full toolkit registers six hooks across four moments. This registers the gate
# check before planning and before implementing, which are the two points where an
# unchecked claim would actually cost something.
#
# NO `condition:` FIELD ON PURPOSE. The speckit-* skills skip any hook that declares a
# condition and hand it to a HookExecutor that does not exist in this project — so a
# condition here silently disables the gate instead of narrowing it.
#
# `command:` must match a directory at .claude/skills/<command>/SKILL.md. A registered
# hook whose skill is absent is not a gate, it is a line of YAML.

version: 1

hooks:
  before_plan:
    - extension: three-gate
      command: check-gates
      description: "Blocks planning on a real gate fault: a BLOCKED or undeclared confidence_regime, a claim asserted above what its evidence licenses, or a dispute with nowhere it is being handled. Unticked criteria are NOT a fault."
      prompt: "Run ./check-gates.sh from the repo root. If it exits non-zero, stop and report its output verbatim. Do not plan, do not summarise, do not re-derive the verdict by reading the markdown yourself."
      optional: false
      enabled: true

  before_implement:
    - extension: three-gate
      command: check-gates
      description: "Same check, before code gets written."
      prompt: "Run ./check-gates.sh from the repo root. If it exits non-zero, stop and report its output verbatim. Do not implement."
      optional: false
      enabled: true
YML

cat > "$OUT/.specify/memory/constitution.md" <<'CONST'
# Constitution — ‹project name› (skinny v1)

## The gates

- **Gate 1 — do we understand the problem?** Checked against `ux.md`.
- **Gate 2 — is this the right thing to build?** Checked against `ux.md`, the same file.
- **Gate 3 — is this one built right?** Checked against `design.md`. Optional — but a
  project with no Gate 3 has to *say* so by setting `GATE_3=""`. Silence is what is
  disallowed.

## What a red gate is, exactly

An unticked acceptance-criteria box is **not** a blocker. Early work has unticked boxes;
a gate that fires on incompleteness only teaches people to tick boxes. What blocks:

- a `confidence_regime:` of `BLOCKED` — the file naming a decision a human owes,
- **no** `confidence_regime:` at all — silence about how finished the work is,
- a claim asserted **above the confidence its evidence licenses**, or
- a `stance: disputes` with nowhere it is being handled.

The question is not *is this finished.* It is *is this honest about not being finished.*

## The one rule about evidence

How strong a claim you may make is set by how the evidence was gathered, not by how sure
anyone feels. Watched people do it → HIGH. Asked them → MEDIUM. Worked it out ourselves →
MEDIUM. Somebody recommended it → LOW. Then: if the people studied were not the actual
users, everything drops to LOW. Lowest cap wins.

More of the same evidence widens *who* a claim covers. It does not raise confidence.

**Only the person named in `RESEARCH_OWNER` sets a confidence grade.** No script fills one
in, and agents must not either — that is policy here, not something enforced. What is
enforced: no script writes to `findings.yaml`, and `check-gates.sh` fails any document
claiming more than a finding licenses.
CONST

mkdir -p "$OUT/.claude/skills/ux-kickoff"
cat > "$OUT/.claude/skills/ux-kickoff/SKILL.md" <<'SKILL'
---
name: "ux-kickoff"
description: "Minimal kickoff for the skinny v1 — asks only the three questions ux.md needs in order to function, writes them to project.conf, then runs the checks and reports them verbatim. Does not answer anything itself. The full nine-question roster/RACI/escalation kickoff is in the source toolkit."
user-invocable: true
disable-model-invocation: false
---

# ux-kickoff (skinny)

**You are a facilitator, not a contributor.** You ask. The human answers. If you catch
yourself about to write a name or a judgment into `project.conf` on their behalf — stop.

The full version of this skill asks nine questions covering roster, RACI, accountable
owner, risk function and escalation. **This one asks three**, because three is what
`ux.md` needs to work. The other six are about who is accountable for what, which is a
real question and a separate one — do not improvise it here.

## The two rules

1. **Block on a question nobody has been asked. Never on an answer you dislike.**
   `UNASSIGNED` and "we made it up" are complete, legal answers. Record them as given.
2. **Never fill in a judgment slot.** Not `RESEARCH_OWNER`, not a line of the gate files.
   A generated answer reads exactly like a real one and contains none of the judgment the
   question exists to surface. Asking is the whole job.

## Step 0 — is the toolkit here?

Confirm `project.conf`, `check-gates.sh` and `ux.md` are in the current directory. If any
is missing, say so plainly and stop. Do not create them.

## Step 1 — where is the existing spec?

> "Do you already have an Intent Spec, PRD or equivalent for this work — and where does
> it live?"

Write the path to `INTENT_SPEC`. **Empty is a legal answer** — say what it costs: requirement
ids stay local to the gate files and resolve to nothing. That is fine for a trial, and the
check will report it as a flag rather than a failure.

## Step 2 — who sets a confidence grade?

> "Who decides how strong a research finding is? One person, by name."

Write it to `RESEARCH_OWNER`. This is the only judgment slot v1 keeps, because it is the
one the mechanism depends on: no script will ever set a grade, so if nobody is named, every
finding stays ungraded and every claim resting on one is flagged indefinitely.

`UNASSIGNED` is a legal answer. Say what it means out loud rather than letting it pass:
nothing is wrong yet, and nothing will get graded either. Offer to log it as an `OPEN.md`
row with a revisit date — offer, do not write it without being asked.

**Do not accept a team or a function.** "Research", "the design team", "whoever picks it
up" — a grade owned by everyone is owned by nobody. Ask again for a person.

## Step 3 — is any of this actually evidenced?

> "The claims in `ux.md` right now — is there evidence behind them, or was it written to
> get something started?"

**"We made it up" is a complete and legitimate answer**, and the honest one for most new
work. It is not a problem to fix in this step. What matters is that it is written down
rather than assumed, because everything downstream calibrates against it.

There is no config key for this in v1. Tell them to put the answer in `ux.md`'s
`confidence_regime:` — `PROCEED-FLAGGED` with a one-line `proceed_because:` is the normal
state of honest early work.

## Step 4 — run the checks, report verbatim

```bash
./check-gates.sh; ./check-claims.sh; ./check-blocked.sh
```

Report the output **exactly as printed.** Do not summarise it, do not restate the verdict
in your own words, and do not soften a `BLOCKED` line. The scripts name which file and
which line; repeating that is the point.

Then, separately from the script output, say in plain language: what is set up now, what is
still open, and who needs to be asked for each open thing. Keep it to a few sentences.

## What "done" looks like

Not a green run. A green run on a fresh project would be the bug. Done is: all three
questions asked out loud, and answered or explicitly deferred.
SKILL

# ---- the front door: READ-THIS-FIRST with v1-accurate onward links --------------
awk '/^## If you want more/{exit} {print}' READ-THIS-FIRST.md > "$OUT/READ-THIS-FIRST.md"
cat >> "$OUT/READ-THIS-FIRST.md" <<'DOC'
## The three scripts, and what their exit codes mean

This is the whole contract. Your CI decides which of these fail a build; the scripts only
report what kind of problem it is.

| script | asks | exit |
|---|---|---|
| `./check-gates.sh` | is any claim stronger than its evidence allows? | `0` clean · `1` a real fault |
| `./check-claims.sh` | is every claim well-formed and attributed? | `0` clean · `1` a malformed or unattributed claim |
| `./check-blocked.sh` | is a person holding this up? | `0` clean · `2` someone owes a decision · `3` the register is unreadable |

**Exit 1 on a fresh clone is correct.** Nothing has been decided yet and the scripts say so
rather than passing quietly.

## Setting it up

```bash
/ux-kickoff
```

Three questions: where your existing spec lives, who sets a confidence grade, and whether
the claims in `ux.md` are evidenced or were written to get started. "We made it up" and
"nobody yet" are both complete answers — it writes down what you say and doesn't guess.

Or edit `project.conf` by hand. It's the only file you have to change.

---

*This is the skinny v1 — three scripts and two gate files, generated from a larger toolkit
that has fifteen scripts, nine registers and a nine-question kickoff. Everything left out
was left out on purpose, and none of it is needed to try the idea. If you hit something
this version can't answer, that's useful: say so rather than working around it.*
DOC

# ---------------------------------------------------------------- what got left out
cat > "$OUT/WHAT-IS-NOT-HERE.md" <<'DOC'
# What is not in v1, and why

Generated by `make-v1.sh`. **Do not edit anything in this folder** — edit the source
toolkit and re-run the script, or your change is gone on the next build.

This file exists so that "we couldn't do X" is distinguishable from "X isn't in this
version." The full toolkit has 15 shell scripts, 6 Python scripts, 9 registers and 25
root documents. v1 has 3 scripts, 2 registers and 4 documents.

## Left out, and what you lose

| not here | what it did | why it can wait |
|---|---|---|
| `check-drift.sh` | recomputes whether a document's sources have moved under it, and fails a file that claims to be current when it isn't | needs a source manifest with hashes. Real value, but it is about maintenance over months, not about whether the idea works |
| `check-trace.sh` | checks every requirement id resolves both ways against the spec | only meaningful once `INTENT_SPEC` points at a real document |
| `check-eng.sh` · `check-risk.py` · `check-design.py` · `contrast.py` | the five gates engineering owns, the hazard register, design-system conformance, the WCAG contrast table | all need a build to point at. Three of them also hardcode a colour palette that is probably not yours |
| `check-evidence.sh` · `check-condens.sh` | is there anywhere the evidence lives, and has the research moved under a claim | these are about the research repository, which a trial does not touch |
| `check-never.sh` | has something happened that never should — e.g. a claim of validation with zero participants | the most interesting script here and the least useful before there is history to check |
| `check-roster.sh` + the full kickoff | roster, RACI, accountable owner, risk function, escalation path | this is process governance, and it is the part most likely to read as bureaucracy before anyone has seen the value. It is not optional forever — somebody does have to be accountable |
| `check-human.sh` · `check-skills.sh` · `check-judgment.sh` · `check-value.sh` · `check-waivers.sh` | the human documentation layer, skill resolution, plan-to-execute authorization, the value register, the waiver ledger | each answers a real question that a two-week trial will not reach |
| `HAZARDS.md` · `VALUE.md` · `WAIVERS.md` · `SIGNOFF.md` · `MANIFEST.md` · `EVIDENCE.md` | the registers the above scripts parse | they come with their scripts |
| `RITUALS.md` | the four moments a person has to be in the room | **read this one anyway if you can.** One thing in it is not optional — see below |

## The one thing left out that you should still do

A script can check that a box is ticked. **It cannot check that the claim written next to it
is true.** Only a person reading the source can.

So somebody should audit **one claim, picked at random, against its actual source** on a
regular basis — about fifteen minutes. In the full toolkit that happens in a fortnightly
review; async works too, one named person per sprint writing two lines in `OPEN.md`.

If nobody does it, this apparatus is theatre. That is the full toolkit's own wording, and
dropping the ritual files from v1 does not make it less true.

## The honest status of v1

- **It is not wired into your repository.** The hooks in `.specify/extensions.yml` fire if
  you run spec-kit's planning workflow. Nothing else connects.
- **The example is fictional.** `examples/alert-digest/` is invented data, on purpose —
  five findings from LOW to HIGH, one of which argues against its own project.
- **Nothing here has been agreed.** Every criterion in the gate files is a generic house
  rubric, not a claim about your product. Replacing them is the first real task, and
  `OPEN.md` carries that as an open row.
DOC

# ---- pointers that will not resolve, listed rather than left to be discovered -----
# The gate files and registers are copied verbatim, and they legitimately reference
# documents that v1 leaves out. Rewriting that prose programmatically would be fragile,
# so instead the build COMPUTES the list of dead pointers and writes it down. A
# reference that goes nowhere is a small thing; a reference that goes nowhere and is not
# acknowledged is someone spending ten minutes looking for a file that was never here.
set +e
DEAD=$( cd "$OUT" && for f in *.md .specify/memory/*.md .claude/skills/*/SKILL.md; do
    [ -f "$f" ] || continue
    [ "$f" = "WHAT-IS-NOT-HERE.md" ] && continue
    grep -ohE '`[A-Za-z0-9._/-]+\.(md|sh|py|yaml|yml|tsv|conf)`' "$f" 2>/dev/null \
      | tr -d '`' | sort -u | while read -r r; do
          [ -e "$r" ] || [ -e "scripts/$r" ] || echo "| \`$r\` | $f |"
        done
  done | sort -u )
set -e

{
  echo ""
  echo "## Pointers in this folder that do not resolve"
  echo ""
  echo "Computed at build time by \`make-v1.sh\`, not maintained by hand. The gate files and"
  echo "registers are copied verbatim from the full toolkit, so they reference documents that"
  echo "v1 leaves out. Nothing is broken — these are the onward references, and the table"
  echo "above says why each target is absent."
  echo ""
  echo "| reference | appears in |"
  echo "|---|---|"
  printf '%s\n' "$DEAD"
} >> "$OUT/WHAT-IS-NOT-HERE.md"

echo "  $(find "$OUT" -type f | wc -l | tr -d ' ') files written"
echo "  dead pointers found and documented: $(printf '%s\n' "$DEAD" | grep -c '^|' || true)"
echo "  design.md: $(wc -w < design.md | tr -d ' ') words → $(wc -w < "$OUT/design.md" | tr -d ' ') words"

if [ "$1" = "--check" ]; then
  echo ""
  echo "── running the checks inside $OUT ──"
  # set +e — every script here exits non-zero on purpose. Leaving `set -e` on made this
  # verification block die silently on the first script, which would have shipped an
  # unverified v1 while printing a reassuring "19 files written".
  set +e
  ( cd "$OUT" || exit 1
    for s in check-gates.sh check-claims.sh check-blocked.sh; do
      out=$(./$s 2>&1); code=$?
      err=$(echo "$out" | grep -ciE "command not found|no such file|unbound variable|syntax error" || true)
      printf "  %-20s exit %-3s shell-errors: %s\n" "$s" "$code" "$err"
    done
    echo ""
    echo "── the example must still fail on its planted overclaim ──"
    cd examples/alert-digest && ../../check-gates.sh 2>&1 | grep -E "^  FAIL" || echo "  !! the planted FAIL did not fire"
  )
fi
