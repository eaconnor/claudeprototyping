# README-SKINNY.md — the mechanical-only path

**For a team whose human process is already tight** — RACI, escalation, who owns
evidence, are already settled somewhere else, formally or by habit — and doesn't
want or need to adopt this repo's version of that loop. You still get the three
gates checked mechanically. You skip everything that facilitates a *decision*.

The full `README.md` stays the canonical doc; this is the shorter path through the
same repo, not a fork of it. Set one field and half the apparatus goes quiet.

## The one thing to decide

```
PROCESS_TIER="skinny"
```

in `project.conf`. That's the whole onboarding decision this path asks you to make.

## What you get

| keeps checking | why it's not a process question |
|---|---|
| `./check-gates.sh` | are Gate 1/2/3's acceptance criteria ticked — a markdown fact |
| `./check-trace.sh` | does a criterion's `traces_to:` point at something real |
| `./check-drift.sh` | have the sources a gate file was built from changed since |
| `./check-eng.sh` | can the build harm a user — FLOOR, never optional regardless of process maturity |
| `scripts/check-design.py` · `scripts/contrast.py` | does the build obey its own design tokens |
| `scripts/check-risk.py <dest>` | risk of shipping to a named destination |
| `scripts/ux-score.py` | conformance report — never blocks either tier |

## What goes quiet

| skips | because it's asking a question your team already has an answer to elsewhere |
|---|---|
| `./check-roster.sh` | reports "not applicable, `PROCESS_TIER=skinny`" instead of `BLOCKED` |
| `/ux-kickoff` | stops after reading this field back to you — does not run the RACI/owner walkthrough |
| `./check-blocked.sh` | `OPEN.md`'s `HUMAN`-row loop |
| `./check-evidence.sh` · `./check-condens.sh` | where research lives, and whether it's drifted |
| `./check-judgment.sh` | the `confidence_regime:`/`proceed_because:` contract |
| `./check-human.sh` | the human-status-fence check |
| `./check-never.sh` · `./check-waivers.sh` · `./check-value.sh` | never-event investigation, bypass tracking, value honesty |
| `scripts/check-tier.py` | T0-T4 signature tiering |

None of these are deleted. `PROCESS_TIER="full"` (the default) turns them back on
with nothing to migrate — the registers and scripts are still sitting there.

## Honest limit

**This split is a judgment call, made 2026-09-18, not something that's been run**
**against a real skinny-tier team yet.** The seam — mechanical build-correctness
vs. human-process facilitation — is a real one, but where exactly `check-risk.py`
or `check-eng.sh` fall could reasonably be argued the other way. If skinny mode
ships a false confidence that a project is fine when its actual human process has
a gap this repo would have caught, that's the risk of choosing it — say so to
whoever signs off on using this tier, don't let the field default silently.
