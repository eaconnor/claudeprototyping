# OPEN.md — the register of everything unresolved

One index for every open question, riskiest assumption, and accepted risk. **If it is
unresolved and it matters, it has a row here.** Read by `./check-blocked.sh`, which is
why the table format is strict.

## The kinds — this is the load-bearing distinction

| kind | meaning | who unblocks it | machine behaviour |
|---|---|---|---|
| `HUMAN` | A **decision** only a person can make. No research resolves it. | named owner | **Stop and ask.** Do not infer, do not pick a sensible default, do not proceed "provisionally." |
| `RESEARCH` | **Evidence** is missing. The question has a findable answer nobody has found. | anyone who can do the work | Proceed flagged. May build, must not claim validation. |
| `ACCEPTED` | A known weakness being **deliberately carried**. | already decided | Proceed. Must stay visible; never silently dropped. |

An agent that hits a `HUMAN` row and guesses anyway has made the specific error this
file exists to prevent.

**The `blocks` column means "cannot be settled until you decide" — NOT "is relevant**
**to."** Conflating those produces false blockers, the same failure class `check-never.sh`
NE-1 exists to catch in the heavier `ux-spec-skeleton` toolkit.

## Open rows

| id | kind | question / assumption | owner | blocks | resolves_when |
|---|---|---|---|---|---|
| H-01 | HUMAN | `RISK_FUNCTION` in `project.conf` is a placeholder or `UNASSIGNED`. | ‹accountable owner› | any T3 signature; any action touching personal data | a real person or named function is entered |
| H-02 | HUMAN | `INTENT_SPEC` is empty — no canonical document exists yet. Author one, or accept that Gate 2/3 criteria are unanchored? | ‹you› | vision.md's traceability to a canonical source | an intent spec exists, or the decision is recorded here |

## Counts

HUMAN: 2 · RESEARCH: 0 · ACCEPTED: 0
