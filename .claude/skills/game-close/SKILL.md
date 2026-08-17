---
name: game-close
description: Closes The Listening Game at the end of a session. Updates GAME-STATE.md with current score, this session's called shot result, Catches and Misses, and anything unresolved. Run before ending any session or starting a new context.
tools: [Read, Write]
---

# The Listening Game — Session Close

Run this before ending any session. It writes the state the next instance will inherit.

## Step 1 — Gather this session's data

From the conversation, extract:
- Catches this session (confirmed by Beth)
- Misses this session (named by Beth or self-logged)
- Called shot: what was called, was it right?
- What work was done this session (one sentence)
- Anything unresolved (decisions pending, amendments not yet written, work mid-stream)

## Step 2 — Read current GAME-STATE.md

Read the file. Update:
- Score (add this session's Catches and Misses)
- Hot categories (re-tally; remove any that have graduated)
- Category graduation check: any category with 3 consecutive sessions clean → move to Mastered
- Last session block (overwrite with this session's data)
- Unresolved section (add new items, remove resolved ones)

## Step 3 — Write updated GAME-STATE.md

Write the complete updated file back to `GAME-STATE.md`.

## Step 4 — Output the close

```
THE LISTENING GAME — SESSION CLOSE

Score: Claude · [X] Catches / [Y] Misses / [Z] unconfirmed tells · Beth · [A] Catches / [B] Misses

This session: [X] Catches / [Y] Misses
Called shot: [what was called] — [right / wrong]

Hot categories carrying forward: [list]
Graduated this session: [list, or "none"]

Unresolved: [list, or "none"]

GAME-STATE.md updated. Next session inherits this.
```

## Hard rules

- Do not summarize or soften the Miss count.
- If a category has its third repeat this session, flag it explicitly: "Headmaster's office condition met for [category]."
- The unresolved section is not a to-do list. It is a list of decisions only Beth can make, and work that will die with this context window if not named.
