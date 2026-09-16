# VALUE.md — what research and design actually contributed

A register, not a case study. One row per time research or design **changed the outcome**, with the counterfactual stated and labelled. Read by `./check-value.sh`.

## Why this exists

Design's value is normally asserted and unfalsifiable — "we de-risked it," "we made it more user-centered." Nobody can check that, so nobody has to believe it, which is why the function gets cut first in a squeeze. Three rules make the claim auditable:

1. **The counterfactual is the value.** Not "we did research" — *what would have shipped without it*. A row with no counterfactual records activity.
2. **Every row is `EVIDENCED` or `CLAIMED`.** Both are legitimate; conflating them is not.
3. **Costs and zero-value rows are mandatory.** `check-value.sh` **fails** if there are none. A value register with only wins is a case study, and a case study is what this file replaces.

## The kinds

`EVIDENCE` research changed a decision · `DECISION` design changed the artifact · `PREVENTION` something harmful did not happen · `CORRECTION` an error was caught · `COST` what this consumed, including mistakes · `ZERO` something we invested in that measurably did not work

## Rows

| id | kind | what happened | what it changed | counterfactual — what would have shipped | status |
|---|---|---|---|---|---|
| V-01 | PREVENTION | `check-gates.sh` fired during a live `/speckit-plan` run and blocked it | Planning stopped on a red gate instead of proceeding past it | A plan built on gate criteria that were never satisfied. Before this, the only thing connecting the script to the workflow was one sentence of constitution prose — a norm wearing a mechanism's hat | EVIDENCED — reproducible via `.specify/extensions.yml`, `optional: false` |
| V-02 | CORRECTION | Five independent breaks were found between the gate script and the workflow, four of them fixed | Enforcement travels with the repo: `.claude/` tracked, `extensions.yml` present, `feature.json` documented, the skill resolves its own root | A gate that looked configured and could never have fired. Nothing about that failure looks like a gate failure — it looks like a path error | EVIDENCED — documented in the README's difference table |
| V-03 | COST | The apparatus is 12 scripts and 5 registers, and the reasoning lives in long script headers | A team that will not read the headers gets the blocking without the judgment, which is the worst of both | — | CLAIMED — no team has been onboarded onto this skeleton yet, so the cost is predicted, not measured |
| V-05 | CORRECTION | Building this skeleton from the template surfaced four live defects in the template itself: a mandatory `check-open` hook registered in all three slots with no such skill anywhere in the tree; a constitution claiming "all four links are required" of a five-link chain; two undocumented `return 5` paths in `check-tier.py`; and a hook/script name indirection with nothing explaining it | All four fixed here before any clone could inherit them | A skeleton shipping a dead mandatory hook to every team that cloned it — the open-register gate would silently never fire, and nothing about that failure looks like a gate failure | EVIDENCED — `ls .claude/skills/`, `grep command: .specify/extensions.yml`, `diff` of the two `extensions.yml`, 2026-09-16 |
| V-04 | ZERO | Prose in the gate files was assumed to change behaviour | **Nothing.** A 12-agent controlled test in the sibling repo found 6 of 6 task pairs tied, with no citations of the gate documents | The same outcomes, reached the same way | EVIDENCED — see the doodle-journal example's `VALUE.md` V-11 |

## Counts

Computed, never asserted — run `./check-value.sh`.
