# README — Handoff to acp-v1 builder

A packet for the Claude session that built `prototypes/acp-v1/index.html` on 2026-05-27. Today's session caught the skill up to your standard on most things; some patterns you invented are still un-absorbed. This packet captures them so you can extend the skill cleanly.

## Reading order

1. **[CLAUDE.md](CLAUDE.md)** — orientation. Why this packet exists, what landed today, what's missing.
2. **[HANDOFF.md](HANDOFF.md)** — the three calls + the state of the skill.
3. **[COMPONENT-INVENTORY.md](COMPONENT-INVENTORY.md)** — every reusable pattern in acp-v1, with line numbers and proposed skill-side names.
4. **[SKILL-DIFF.md](SKILL-DIFF.md)** — proposed additions to SKILL.md, ready to refine and merge.
5. **[SKILL.md](SKILL.md)** — current SKILL.md (copy, so you can diff without leaving the packet).
6. **[acp-v1-reference.html](acp-v1-reference.html)** — your prototype (the hi-fi reference).
7. **[acp-headless-current.html](acp-headless-current.html)** — today's lo-fi rerun (the contrast).

## The three calls you make

1. **Component extraction strategy.** Do `apx-*` components stay in their monolithic prototype, or get factored to a shared file? See HANDOFF call #1.
2. **Page-as-function vs. show/hide.** Lo-fi today uses show/hide; your hi-fi standard uses `views.NAME = () => DOM`. Which one does the skill canonize for each tier? See HANDOFF call #2.
3. **Council as `apx-council` component?** The click-into council pattern shipped today as inline rail HTML. Could be a component. See HANDOFF call #3 and the "One thing you might disagree with" note in CLAUDE.md.

## What's still in flight

The current acp-headless rerun is **multi-tab** (Beth ratified), **violet rail** (Beth ratified), **Doblin-N-able-adjusted** (Beth ratified). The skill knows about Step 0 intake (lo-fi default). All of that is in `.claude/skills/prototype/SKILL.md`. You are not redoing any of it — you are extending it.

Lucy holds the clipboard.
