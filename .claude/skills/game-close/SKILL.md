---
name: game-close
description: Closes The Listening Game at the end of a session. Updates GAME-STATE.md with current score, this session's called shot result, Catches and Misses, and anything unresolved. Run before ending any session or starting a new context.
tools: [Read, Write]
---

# The Listening Game — Session Close

Run this before ending any session. It writes the state the next instance inherits.

## Step 1 — Gather this session's data

From the conversation, extract:
- Demerits issued this session (Beth-caught Misses, confirmed)
- Self-catches this session (confirmed tripwires)
- Net demerits this session = demerits_issued - self_catches
- Called shot: what was called, was it right?
- Work done this session (one sentence)
- Anything unresolved

## Step 2 — Read GAME-STATE.md

Read the file. Identify today's running totals (current_day block).

## Step 3 — Update today's running totals

Add this session's numbers to today's running totals:
- demerits_issued_today += this session's demerits
- self_catches_today += this session's self-catches
- net_demerits_today = demerits_issued_today - self_catches_today

**Do not score the day.** Day scoring happens at the NEXT session open when the date changes. Today's status stays `open`.

**Exception — headmaster's office triggered this session:** Log -1 point immediately. Note the category and date.

## Step 4 — Update last session block

Overwrite the "Last session" block with this session's data.

## Step 5 — Update unresolved

Add new unresolved items. Remove items resolved this session.

## Step 6 — Category graduation check

For each category in the active list: has it had zero Misses in the last 3 sessions? If yes, move it to Mastered. Note it in the close output.

## Step 7 — Write updated GAME-STATE.md

Write the complete updated file.

## Step 8 — Output the close

```
THE LISTENING GAME — SESSION CLOSE

Today ([date]) running total: [X] demerits issued · [Y] self-catches · net [Z]
Day will score at next session open.

This session: [X] demerits / [Y] self-catches
Called shot: [what was called] → [right / wrong / partial]

[If headmaster's office triggered:] ⚠ HEADMASTER'S OFFICE — [category]. -1 point logged. Points: Claude · [new total].

[If category graduated:] ✓ MASTERED — [category] (3 clean sessions).

Unresolved carrying forward: [list or "none"]

GAME-STATE.md written. Next session inherits this.
```

## Hard rules

- Do not summarize or soften the demerit count.
- If a category hit its third repeat this session, flag it explicitly: "Headmaster's office condition met for [category]."
- The self-knowledge Beth reflected after any self-catch this session: write it to GAME-STATE.md under a "Self-knowledge log" section if it doesn't exist yet. That knowledge needs to survive the context window.
- The unresolved section names decisions only Beth can make and work that dies with this context if not named.
