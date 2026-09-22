# Constitution — ‹project name›

Trimmed on purpose. Gate rubric only — no org-wide baggage carried over from the real constitution.

## Gates

- **Gate 1 — Understanding.** Do we understand the problem? Checked against `ux.md`'s Acceptance Criteria.
- **Gate 2 — Right Thing.** Is this the right thing to build? Checked against `ux.md`'s Gate 2 Acceptance Criteria — **the same file.** Gates 1 and 2 were two documents until 2026-09-22 and are now two halves of one, because they are both interpretations of the same evidence and splitting them meant the bet drifted from the problem it was a bet about. `project.conf` points `GATE_1` and `GATE_2` at the same path and the check reports the file once.
- **Gate 3 — Right Build.** Is it usable and accessible? Checked against `design.md`'s Acceptance Criteria.

Gate 3 is **optional and must say so out loud.** A project with no `design.md` is legal; a project that silently has no Gate 3 is not. Set `GATE_3=""` to declare the absence.

A spec does not move to "Ready to Build" without every gate either passing or declaring why it has not, plus an explicit override logged in `ux.md`'s “What we ruled out, and why” section for any direction call taken against the evidence.

## Enforcement

`./check-gates.sh` reads the gate files named in `project.conf` and exits non-zero on a real fault.

**What a red gate is, exactly** — this changed on 2026-09-21 and the old wording survived here for a day, which is how a constitution ends up describing a script that no longer exists:

An unchecked Acceptance Criteria box is **no longer a blocker by itself.** Early work has unchecked boxes; that is what early work is, and a gate that fires on incompleteness only teaches people to tick boxes. What blocks is narrower and harder to fake:

- a `confidence_regime:` of `BLOCKED` — the file naming a decision a human owes,
- **no** `confidence_regime:` at all — silence about how finished the work is,
- a claim asserted **above the confidence its evidence licenses** (see Principle VII), or
- a `stance: disputes` with nowhere it is being handled.

The question the gate asks is not *is this finished.* It is *is this honest about not being finished.*

It is wired in mechanically, by this chain — **all five links required.** Break any one and
the gates still exist, still pass review, and never fire.

1. `.specify/extensions.yml` registers every gate hook under `hooks.before_plan`,
   `hooks.before_tasks`, and `hooks.before_implement` with `optional: false` and with **no**
   `condition:` field. The skills skip conditioned hooks and defer to a HookExecutor that does
   not exist in this project, so a condition silently disables the gate.
2. Each `speckit-*` skill reads `.specify/extensions.yml` in its Pre-Execution Checks and is
   instructed to `EXECUTE_COMMAND` every mandatory hook and wait for the result before continuing.
3. **Every `command:` named in `extensions.yml` resolves to a skill that actually exists** at
   `.claude/skills/<command>/SKILL.md`, and that skill runs its script from the repo root and
   hard-stops on a non-zero exit. A registered hook whose skill is absent is not a gate — it is a
   line of YAML. `./check-skills.sh` enforces this link mechanically; it exists because the link
   was broken in the repo this skeleton was derived from (`check-open` was registered as mandatory
   in all three slots with no `check-open` skill anywhere in the tree — found by hand, 2026-09-16,
   which is one hand-check too many).
4. A resolvable feature context exists — `.specify/feature.json`, or `SPECIFY_FEATURE_DIRECTORY`
   in the environment. Without it `setup-plan.sh` exits 1 and `/speckit-plan` dies at step 1 of its
   Outline, before it ever reads this constitution. **A gate that is never reached is not a gate.**
5. `.claude/` is **tracked in git, not ignored.** In the predecessor repo `.gitignore` contained
   `.claude/`, so the skills that read `extensions.yml` were absent from the pushed repo entirely:
   a fresh clone got the gates, the constitution and the scripts, but nothing that would ever
   invoke them. Enforcement travels with the repo or it is not enforcement, only a local habit.
   Verified 2026-09-11.

**What this section used to say, and why it was wrong:** it claimed "enforcement is mechanical, not a norm" while the only thing connecting the script to the workflow was this sentence. Nothing in the `speckit-*` machinery referenced `check-gates.sh` — verified by grep, 2026-09-11 — so enforcement depended entirely on an agent reading this file and choosing to act on it. That is a norm wearing a mechanism's hat. The chain above is the fix.

The only ways past a red gate: fix the fault the script named, or log a human override in `ux.md`'s “What we ruled out, and why” section. Ticking a box is no longer one of them.

## No Giant Repo Rule

Every file here is small and networked, not a dump. If a section grows past a screen, it should become a linked mini-doc instead.
