# OPEN.md — the register of everything unresolved

One index for every open question, riskiest assumption, and accepted risk. **If it is unresolved and it matters, it has a row here.** Read by `./check-blocked.sh`, which is why the table format is strict.

## The kinds — this is the load-bearing distinction

| kind | meaning | who unblocks it | machine behaviour |
|---|---|---|---|
| `HUMAN` | A **decision** only a person can make. No research resolves it. | named owner | **Stop and ask.** Do not infer, do not pick a sensible default, do not proceed "provisionally." |
| `RESEARCH` | **Evidence** is missing. The question has a findable answer nobody has found. | anyone who can do the work | Proceed flagged. May build, must not claim validation. |
| `ACCEPTED` | A known weakness being **deliberately carried**. | already decided | Proceed. Must stay visible; never silently dropped. |

An agent that hits a `HUMAN` row and guesses anyway has made the specific error this file exists to prevent.

**The `blocks` column means "cannot be settled until you decide" — NOT "is relevant to."** Conflating those produces false never events in `check-never.sh` NE-1, and a false never event is how the whole mechanism gets switched off.

## Open rows

| id | kind | question / assumption | owner | blocks | resolves_when |
|---|---|---|---|---|---|
| A-01 | ACCEPTED | `BUILD` points at `../prototypes/harness-live/harness-live.html`, inherited from the harness-live prototype rather than authored fresh here — `scripts/check-design.py` and `check-eng.sh` EG-1 will lint that existing build, not a build made for this Intent Spec. | — | treating a design-lint pass against a pre-existing artifact as if it validated this project's own criteria | this project's own gate files (`ux.md`/`vision.md`/`design.md`) are rewritten against harness-live specifically, per H-03 below |
| H-03 | HUMAN | The 22 criteria shipped in the three gate files are the **generic house rubric**, inherited from the skeleton, not this project's. Gating on generalities passes without proving anything about your product. Which of them do you replace with project-specific criteria, and which are genuinely universal? | ‹you› | whether Gate 1–3 mean anything here | Each criterion is either rewritten for this project or consciously kept |

## Counts

Computed, never asserted — run `./check-blocked.sh`.

## Resolved

Rows move here with a date and an outcome. Nothing is deleted; a register you can rewrite silently is not a record.

| id | kind | outcome | date |
|---|---|---|---|
