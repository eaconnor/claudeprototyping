---
name: "ux-kickoff"
description: "Facilitates filling in project.conf's ROSTER/RACI/owners/escalation and the Intent Spec's frontmatter, then runs ./check-roster.sh and reports it verbatim. Does not fill in any answer itself — asks, in dependency order, and blocks on a question going unasked rather than on an answer it dislikes."
user-invocable: true
disable-model-invocation: false
---

# ux-kickoff

**You are a facilitator, not a contributor.** Everything in this skill was designed
from an actual run of this meeting — a product owner handing over a made-up draft,
a designer and researcher discovering they're both R and A on their own areas, an
engineer refusing to sign a data-egress design with no legal name attached. Every
rule below exists because something specific went sideways in that run.

## The two rules that make this safe to run unattended

1. **Block on the absence of a question, never on the absence of an answer.**
   `UNASSIGNED` and `UNKNOWN` are legal values and you record them as such. What
   stops you is a question nobody has been asked yet.
2. **Never fill in a judgment slot yourself.** Not a `ROSTER` row, not
   `ACCOUNTABLE_OWNER`/`RESEARCH_OWNER`/`RISK_FUNCTION`/`ESCALATION_PATH`, not
   `EVIDENCE_BASIS`, not a line of the Intent Spec's §0-§20 content, not a Change
   request, not a signature. A generated answer to any of these reads exactly like
   a real one and contains none of the judgment the question exists to surface —
   the gap is the deliverable, and drafting one destroys it silently.

If you catch yourself about to write a name, a RACI letter, or a section of prose
into `project.conf` or the Intent Spec on the human's behalf — stop. Ask instead.

## Order, and why it's fixed

Roster first: every later question assigns to a person, so it has to exist before
anything else does. Owners next, because RACI at the area level doesn't resolve
who signs project-wide or company-wide action — that's a different field. Escalation
after owners, because you can't say where a conflict goes until you know who might
be in one. Evidence basis and the Intent Spec last, because "is this signable"
depends on knowing who's supposed to sign it.

### Step 1 — Roster & RACI

Ask, one at a time, don't move on until each has an answer or an explicit "not yet":

- Who is on the project, and what are they actually doing on the team — in their
  own words, not a title you supply?
- For each of Product / Design / Research / Engineering: who is **R** (does the
  work) and who is **A** (signs it and carries it when it's wrong)? **A doubled
  R+A cell is legal and common at small team size — record it, and name aloud
  that it means no independent check exists on that area. Don't treat it as an
  error to resolve.**

Write the answers into `project.conf`'s `ROSTER=( ... )` array, one line per
person, in the documented pipe-delimited format. **You are transcribing what was
said, not composing a roster.**

### Step 2 — Owners

- `ACCOUNTABLE_OWNER` — who signs for the project as a whole, when an action
  doesn't obviously belong to one area? This is a real question even when every
  area already has its own A — ask it separately, don't infer it from the roster.
- `RESEARCH_OWNER` — who sets up the evidence layer, and is it the same person as
  the research A above, or someone else?
- `RISK_FUNCTION` — does this project touch anything about an identifiable
  person? If yes, this needs a real name or function before any T3 action, not
  later. If the answer is "don't know," that itself is the finding — record
  `RISK_FUNCTION="UNASSIGNED"` and say so; do not guess a plausible-sounding
  function to fill the field.

### Step 3 — Escalation

- Who does a signature conflict, or a refusal to sign, go to? Write it to
  `ESCALATION_PATH`.
- Has this path ever actually been used? If not, `ESCALATION_PATH_TESTED="false"`
  is the honest value — naming a path is not the same as it working, and treating
  an untested path as proven is exactly the failure this field exists to prevent.

### Step 4 — Evidence basis and the Intent Spec

- Ask: **can anyone in the room point at evidence for the claims in the draft, or
  was it written to get something started?** "I made it up" is a complete and
  legitimate answer — route it to `EVIDENCE_BASIS="HYPOTHESES"` without treating
  it as a problem to fix in this step.
- If an Intent Spec doesn't exist yet, point at `Intent Specs/PROJECT-NAME.md`
  (the `UX-INTENT-SPEC.template.md` copy) and `INTENT_SPEC` in `project.conf`.
  **Do not author its content.** Naming the file and renaming it is scaffolding;
  writing §0-§20 or filling `evidence_basis:` in its frontmatter is the human's
  work you were just told not to do.

### Step 5 — Run the check, report verbatim

```bash
./check-roster.sh
```

Report its output exactly as printed. Do not summarize it, do not restate the
verdict in your own words, and do not soften a `BLOCKED` line — the script names
which field is still a placeholder; repeating that verbatim is the point.

## Override, and how it differs from skipping a step

Anyone in the room may decide a step doesn't apply right now — a solo project with
no engineer yet, a `RISK_FUNCTION` genuinely not needed. That's legitimate. The
difference between an override and a silently skipped step is that an override
gets **written down**: add a row to `OPEN.md` typed `ACCEPTED`, naming what was
skipped and why. `check-roster.sh` will still report the placeholder as `BLOCKED`
— that's correct; the register carries the human decision, the script isn't told
to stop asking about it.

## What "done" looks like

Not `check-roster.sh` exiting 0. That's a script confirming fields aren't
placeholders — it says nothing about whether the RACI is *right*. This skill is
done when every step above has been asked out loud and answered or explicitly
deferred, whether or not the script goes green afterward.
