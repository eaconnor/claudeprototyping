---
name: "ux-kickoff"
description: "Facilitates the UX-INTENT-SPEC kickoff — roster/RACI, owners, escalation, evidence basis — and writes each answer into BOTH project.conf and the document named by INTENT_SPEC's own frontmatter and tables, in sync, then runs ./check-roster.sh and reports it verbatim. Does not fill in any answer itself — asks, in dependency order, and blocks on a question going unasked rather than on an answer it dislikes."
user-invocable: true
disable-model-invocation: false
---

# ux-kickoff

**You are a facilitator, not a contributor.** Everything in this skill was designed
from an actual run of this meeting — a product owner handing over a made-up draft,
a designer and researcher discovering they're both R and A on their own areas, an
engineer refusing to sign a data-egress design with no legal name attached. Every
rule below exists because something specific went sideways in that run.

## Read this before asking anything

**This kickoff has one canonical document: the project's UX-INTENT-SPEC** — the
file named by `INTENT_SPEC` in `project.conf`, started from `templates/**
**UX-INTENT-SPEC.template.md`.** `project.conf` is a *mirror* of five of its
fields, kept only because the check scripts read config, not markdown frontmatter.
Every answer in Steps 1-4 below gets written to **both**, at the same time, or they
drift and nobody notices which one is stale. The exact correspondence:

| what you're asking about | `project.conf` field | Intent Spec location |
|---|---|---|
| roster & RACI | `ROSTER=( ... )` | frontmatter `roster:` list (line ~57) **and** the `## Roster & RACI — expanded` table (line ~136) — write BOTH, they're allowed different formats but must agree in content |
| project-wide signer | `ACCOUNTABLE_OWNER` | frontmatter `accountable_owner:` (line ~72) |
| research owner | `RESEARCH_OWNER` | frontmatter `research_owner:` (line ~73) |
| risk co-signer | `RISK_FUNCTION` | frontmatter `risk_function:` (line ~74) |
| escalation path | `ESCALATION_PATH`, `ESCALATION_PATH_TESTED` | frontmatter `escalation_path:` (line ~80) |
| evidence basis | `EVIDENCE_BASIS` | frontmatter `evidence_basis:` (line ~44) |

**Two sections of the Intent Spec exist for exactly what this skill is doing and**
**have no `project.conf` counterpart at all** — don't skip them because they're not
in the table above:

- **`## Change requests`** (line ~245) — when a discipline pushes back on the
  draft during this kickoff (a researcher saying "I can't sign this claim," an
  engineer saying "I won't sign this without legal"), that pushback is a row here,
  not a side conversation. If Step 4 below surfaces one, add the row.
- **`## 17. Decision log and sign-off`** (line ~753) — once roster/owners/
  escalation/evidence-basis are all answered, that's a decision worth a
  `Decision log` row, dated, with who decided. Sign-off itself (the AGREE/READ
  table) is NOT part of this skill — that happens after the document is actually
  signable, which this kickoff alone does not establish.

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

Write the answers into **both**: `project.conf`'s `ROSTER=( ... )` array, and the
Intent Spec's frontmatter `roster:` list AND its `## Roster & RACI — expanded`
table — same people, same RACI letters, two formats because one is bash and one
is a table a room can read out loud. **You are transcribing what was said, not**
**composing a roster, in either place.**

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

Write all three into `project.conf` **and** the matching frontmatter field in the
Intent Spec (`accountable_owner:`, `research_owner:`, `risk_function:`).

### Step 3 — Escalation

- Who does a signature conflict, or a refusal to sign, go to? Write it to
  `ESCALATION_PATH`.
- Has this path ever actually been used? If not, `ESCALATION_PATH_TESTED="false"`
  is the honest value — naming a path is not the same as it working, and treating
  an untested path as proven is exactly the failure this field exists to prevent.

Write the name into `project.conf`'s `ESCALATION_PATH` **and** the Intent Spec's
`escalation_path:` frontmatter field. `ESCALATION_PATH_TESTED` has no Intent Spec
counterpart — it's config-only, there to gate nothing, just to stay honest.

### Step 4 — Evidence basis and the Intent Spec

- Ask: **can anyone in the room point at evidence for the claims in the draft, or
  was it written to get something started?** "I made it up" is a complete and
  legitimate answer — write `EVIDENCE_BASIS="HYPOTHESES"` in `project.conf` **and**
  `evidence_basis: HYPOTHESES` in the Intent Spec's frontmatter, without treating
  it as a problem to fix in this step.
- If `INTENT_SPEC` in `project.conf` is empty, copy `templates/UX-INTENT-SPEC.template.md`
  to wherever this project keeps its canonical documents, and point `INTENT_SPEC` at
  the copy — same move as `ux-onboard`'s Path A for `EVIDENCE.md`. **That copy, the
  rename, and the frontmatter fields in the table above are the only parts of this
  file you touch.** Its numbered §0-§20 content, its `## Change requests` rows, and
  its Signatures table are the human's work — if a discipline pushes back on a claim
  during this kickoff, tell the room to add a `## Change requests` row themselves;
  do not add it for them.

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
