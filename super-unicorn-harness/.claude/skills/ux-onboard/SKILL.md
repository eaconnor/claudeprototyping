---
name: "ux-onboard"
description: "Checks that this project has somewhere its evidence actually lives, by running ./check-evidence.sh against EVIDENCE.md. Registered as a mandatory after_specify hook in .specify/extensions.yml. Blocks on exit 28 (nothing set up) and 29 (a locator points at nothing)."
user-invocable: true
disable-model-invocation: false
---

# ux-onboard

Run the script. Report its output verbatim. Obey its exit code.

**Then stop.** Read the next section before doing anything else.

## What you must NOT do when this blocks

If `check-evidence.sh` exits 28, the project has no evidence home set up. **Do not set one
up.** Specifically, you must not:

- copy `templates/DATADUMP.template.md` anywhere
- add, edit or fill a row in `EVIDENCE.md`
- choose a `method:` value
- pick which of Condens / Confluence / a local directory / anything else this project
  should use
- put a name in the `owner` column

**Setting this up belongs to the person assigned to research on this project, and the
form it takes is theirs to choose.** That is not a courtesy. Where a team's evidence
lives, and how they make sense of it, is a research judgment with consequences for
everything downstream — and it is one of the few decisions in this repo that an agent
cannot make even badly, because the agent has no evidence of its own to put anywhere.
An agent that scaffolds a plausible-looking datadump has produced a file that reads as
research and contains none, which is worse than the empty state it replaced.

This is the same class as an unfilled judgment slot: **human or empty, never drafted.**
`check-judgment.sh` enforces that rule inside a document; this enforces it for the
project's whole evidence layer.

## Steps

1. Resolve the project root as the nearest ancestor directory containing both `.specify/`
   and `check-evidence.sh`, walking up from the current directory. Do **not** use
   `git rev-parse --show-toplevel` — when this project sits inside a larger repository it
   returns the parent, and the script then reports on the wrong project's register.

2. Verify `check-evidence.sh` and `EVIDENCE.md` both exist in the resolved root. A missing
   register is a failed check, never a skipped one.

3. From that directory run `./check-evidence.sh`.

4. Report stdout verbatim. Do not summarise it and do not re-derive the verdict by reading
   `EVIDENCE.md` yourself.

## The exit code is the verdict

- **Exit 0** — at least one owned evidence home is named. Continue. Note aloud how many
  rows were `declared` rather than resolved, because that number is the honest measure of
  how much was actually verified.
- **Exit 28** — nothing is set up, or nothing set up has an owner. Emit this and stop:

```
BLOCKED — this project has no evidence home.
[verbatim script output]

This is the research owner's to set up, not mine. Two routes, neither of which is
adopting somebody else's method:
  A  copy templates/DATADUMP.template.md, fill method: with what you actually do
  B  register where the research already lives — Condens, Confluence, a shared drive,
     a notebook. A declared connector with a stated method is a complete answer.

Tell me which, or hand it to whoever owns research here. I am not going to choose.
```

- **Exit 29** — a row points at a path that is not there. Report it as a broken register;
  the fix is the owner's, since only they know whether the file moved or the row is wrong.
- **Exit 5** — `EVIDENCE.md` is missing or unparsable. That is a failure, not a skip.

## The two config values onboarding exists to settle

When this check blocks, surface both of these to the person doing the onboarding. Report
what they currently are; do not set either of them yourself.

1. **`RESEARCH_OWNER` in `project.conf`** — must be a real person. A function name
   ("UX", "research", "the team") is rejected by the script. This is whose job the setup
   is, so guessing it defeats the purpose of asking.

2. **`J4_MODE` in `project.conf`** — `note` (default) or `warn`. Whether `check-judgment.sh`
   treats §9b's three `PROCEED-FLAGGED` constraints as required wording or as a posture
   expressible in the team's own words. State the tradeoff and the evidence behind the
   default — 28 corpus files, two flagged, both correct — and let them choose. If they
   have no opinion, the default stands; do not talk them into `warn` because it sounds
   more rigorous.

## Why this is a hook and not a norm

`after_specify` is a slot `speckit-specify` actually reads and is instructed to execute.
A sentence in a constitution saying "projects should have a research corpus" is something
an agent may read and may act on — and the controlled test behind this repo found that
twelve agents holding 866 lines of such prose cited none of it. The hook is the difference.
