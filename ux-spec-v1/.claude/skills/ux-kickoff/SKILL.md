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
