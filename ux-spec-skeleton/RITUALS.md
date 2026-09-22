# RITUALS.md — the four moments a person has to be in the room

Everything else in this repo runs on its own. These four do not, and no script can make
them happen.

## The cadence

Four clocks, running at different speeds. Mixing them up is how a practice either
collapses into one endless meeting or quietly stops happening.

| clock | how often | what it is | who |
|---|---|---|---|
| **Gather** | weekly, ~10 min | New sources land, get registered, get a relevance call | whoever is on rota |
| **Drift** | weekly, automatic | `./check-drift.sh` + `./check-skills.sh` in CI | nobody — it is a script |
| **Gate review** | fortnightly, 30 min | The one real meeting. See below. | design · research · eng · product |
| **Re-synthesis** | **on accumulation, not on the calendar** | When enough has changed that the synthesis is wrong, redo it | whoever owns the file |

That last one matters. Re-synthesising on a schedule produces churn when nothing has
changed and staleness when everything has. Trigger it on the register, not the diary:
enough new `[?]` rows, or a `CONFLICT` from `check-drift.sh`.

---

## 1 · Intake — something lands

**Trigger:** anyone notices something — a partner complaint, a competitor move, a support
pattern, a number that looks wrong.

**Who:** the person who noticed, and nobody else. Intake is not a meeting.

**How:** `CONTRIBUTE.md`. Four fields, no jargon, ten minutes. You do not need to know the
tags or the gates to contribute.

**Out:** a row in the datadump or a file in the source folder, registered in `MANIFEST.md`
with a shelf and a hash.

**The one control that matters:** everything new lands as *Review*. A human promotes it to
*Relevant* or dismisses it. That call is the only thing stopping the corpus growing without
bound, and it cannot be automated because relevance is a judgment about what you are
trying to learn.

---

## 2 · Gate review — the only standing meeting

**When:** fortnightly, 30 minutes, same slot. Cancel it when the build is frozen; do not
cancel it because the gates are red.

**Who is in the room:** design (chairs), research, one engineer who actually works on the
thing, product. Four people. A fifth attendee makes it a status meeting.

**What is on the table — in this order, and the order is the point:**

1. **The script output, read out.** Run `./check-gates.sh`, `./check-blocked.sh`,
   `./check-drift.sh` live. Nobody presents a summary of them. The numbers are not up
   for discussion; what to do about them is.
2. **`HUMAN` rows.** Every one has a named owner. For each: decided, or what is it waiting
   on? A `HUMAN` row with no movement for three reviews is either not actually blocking or
   the owner is wrong.
3. **New waivers,** and any waiver whose **actual cost** column can now be filled in. This
   is the step everyone skips and it is the one that calibrates whether the gates are worth
   keeping.
4. **One criterion, chosen at random, audited against its evidence.** Someone reads the
   cited source out loud and the room decides whether it says what the criterion claims.
   This is the only defence against the honest limit below, and fifteen minutes a fortnight
   is the whole cost of it.

**Out:** updated `OPEN.md`, updated `WAIVERS.md`, and at most three named actions with
owners. Not minutes.

**The honest limit, stated in the room every time:** the scripts check that a box is
ticked. They cannot check that the claim next to it is true. Step 4 is the only thing that
does, and it only samples. If the room stops doing step 4, this apparatus is theatre.

### If your team does not do standing meetings

Some don't, as a deliberate constraint rather than an accident, and a doc that ignores that
just gets ignored back. **Step 4 is the requirement. This meeting is one way to get it.**

The async version: one named person per sprint audits **one** criterion against its cited
source and writes two lines in `OPEN.md` — what they read, and whether it says what the
criterion claims. Rotate the name. Steps 1-3 work async too: script output goes to CI,
`HUMAN` rows already carry owners, and waiver costs can be filled in by whoever owns the
row.

**What you lose, so the trade is visible:** step 4 in a room means three other people hear
the source read out and can say "that's not what that means." Alone, one person's reading
goes unchallenged — which is the failure the whole apparatus is about, one level up. If you
go async, have a second person initial the audit line.

Neither version has been run. Pick one, run it four times, then change it — and record what
you changed rather than drifting.

---

## 3 · Waiver — someone needs to go around a gate

**Trigger:** a gate is red and the work needs to proceed anyway. This is legitimate and
expected. Read `SIGNOFF.md`.

**Who:** whoever is blocked, plus the signatory the tier names. Not the whole team.

**How:** run `python3 scripts/check-tier.py`, get the tier, ask the named person once, in
writing, with the consequence stated plainly. Write the row in `WAIVERS.md` **including a
predicted cost, before the fact.**

**Out:** a `WAIVERS.md` row. Status `PENDING` until the outcome is known, then `COSTLY` or
`VINDICATED`. Both are useful; only the guess-free version is.

---

## 4 · Handoff — the work moves

**Trigger:** research → design, design → eng, or a team picks up someone else's project.

**Who:** the person leaving and the person arriving, together, once. Not a document thrown
over a wall.

**What the arriving person gets, and should refuse the handoff without:**

- both gate files (`ux.md`, `design.md`), with `drift:` computed clean (`./check-drift.sh` exit 0)
- `OPEN.md` with every `HUMAN` row carrying a real owner, not the departing person
- `MANIFEST.md` with every source registered and hashed
- three decisions, named, that only a human can make — and who decides each

**Out:** the arriving person runs every script themselves, on their own machine, before
accepting. A fresh clone is the only honest test: the failure this repo was built from was
invisible precisely because it only reproduced on someone else's machine.

---

## Status

The cadence model is compiled from an existing internal loops-and-checks document, and the
intake ritual from a working weekly runbook. `[CS: HIGH — internal source docs]`
**The gate-review meeting in §2 is new and has never been run.** `[A]` Attendees, length
and the step-4 audit are a first proposal. Run it four times, then change it — and put
what you changed in `OPEN.md` rather than just drifting.
