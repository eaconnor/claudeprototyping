# QUICKSTART — running this on your project

Ten minutes. Get this folder into a repo, edit `project.conf`, fill the roster, run
three scripts.

## 0. Get this into an actual GitHub repo

**`ux.md`, `vision.md` and `design.md` already exist in this folder right now —**
**nothing generates them, nothing "brings them in."** They ship as editable stubs,
exactly like every other file here. The only real question is how the *folder*
becomes a tracked, pushed repo, and that's ordinary git, done once:

```bash
cd ux-kickoff-skeleton              # or wherever you copied this folder
git init
git add .
git commit -m "start from ux-kickoff-skeleton"
```

Then either create the GitHub repo first and add it as a remote:

```bash
git remote add origin <your-new-repo-url>
git push -u origin main
```

or, if you have the `gh` CLI: `gh repo create <name> --private --source=. --push`.

**Ask before pushing anywhere if you're not sure which account or org it belongs**
**to.** Publishing to the wrong org isn't reversible by deleting a local file.

From here on, `ux.md`/`vision.md`/`design.md` are just files in your repo like any
other — edit them directly, commit the edits, same as you would `README.md`.

## 1. Point it at your project

Run the kickoff facilitator:

```
/ux-kickoff
```

It asks — roster & RACI, then owners, then escalation, then evidence basis — in
that order, and writes down what you say. It never picks an answer for you; if a
question hasn't been asked yet, it stops rather than guessing. See
`.claude/skills/ux-kickoff/SKILL.md` for exactly what it will and won't do.

**Or edit `project.conf` directly** if you'd rather skip the facilitated version —
it's the only file you have to touch either way.

Two things are not like the rest of the file:

**`ROSTER`** needs at least one real row before `check-roster.sh` will pass —
name, project role, and R/A/C/I per discipline. It is meant to change: correct it
as the room corrects it, don't treat the first draft as final.

**`ACCOUNTABLE_OWNER`, `RESEARCH_OWNER` and `ESCALATION_PATH`** must each be a real
person. `RISK_FUNCTION` may legitimately be `UNASSIGNED` — it becomes an `OPEN.md`
`HUMAN` row the moment anyone needs a T3 signature and there's nobody to give it.

## 2. Fill the intent spec, or don't yet

`Intent Specs/PROJECT-NAME.md` is a copy of `ux-spec-skeleton`'s
`UX-INTENT-SPEC.template.md` — RACI, `evidence_basis:`, change requests and scoped
sign-off as core sections, not an appendix. Rename it, fill what you know, and point
`INTENT_SPEC` in `project.conf` at it. Leaving it unfilled and `INTENT_SPEC=""` is
the pre-spec phase, not a missing step — say so rather than papering over it.

## 3. Run the three scripts

```bash
./check-roster.sh    # is the kickoff's own output actually written down?
./check-gates.sh      # are Gate 1/2/3's acceptance criteria ticked?
./check-blocked.sh    # is a HUMAN row in OPEN.md waiting on a person?
```

All three warn rather than block — "gates do not block work" is the rule this
skeleton inherits from `ux-spec-skeleton`. Nothing here stops you working; it stops
you from *not noticing* what's still open.

## 4. Outgrowing this skeleton

This is the minimal sibling of `ux-spec-skeleton` — three scripts, not thirteen. When
you need drift detection, the judgment-contract, design-system linting, or never-events,
copy the relevant `check-*.sh` / `scripts/*.py` files across and restore the frontmatter
fields they read (this skeleton's `ux.md`/`vision.md`/`design.md` deliberately cut any
field whose script isn't vendored here — see the note at the top of `ux.md`).
