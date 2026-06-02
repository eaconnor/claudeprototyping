---
name: handoff
description: Produce a paste-ready handoff block for any named recipient or session. Output is a single formatted block Beth can copy and drop into a new Claude Code session. Invoke when the user says "/handoff", "hand this off", "write a handoff for [name]", or "I want to paste this to [session]".
compatibility:
  required_agents:
    - bradley
---

# Handoff Skill

Produce a paste-ready handoff block. One thing, directly usable.

## What this skill does

Reads the current project state and produces a **single formatted block** the user can paste into a new Claude Code session. The recipient Claude opens with full context — no re-explanation needed.

This is not Step 7 of the prototype pipeline. That handoff creates a folder of files. This skill creates a **pasteable text block** for a specific recipient.

---

## How to invoke

```
/handoff                          → general session handoff (current state)
/handoff [name]                   → handoff to a named recipient (e.g. "Raj Claude", "Nicole", "spec")
/handoff [name] re: [topic]       → targeted handoff on a specific topic
```

---

## Output format

Produce one fenced block the user can copy wholesale:

````
```
HANDOFF — [recipient] — [date]

## Who I am
[One sentence: what session this is, what it did]

## What you're picking up
[2-4 bullets: the work that exists, where it lives, what state it's in]

## Your task
[What the recipient should do. Specific. Actionable.]

## Files to read first
[Ordered list: read these before doing anything]

## What's already been decided (don't re-open)
[Constraints Beth has settled. Do not revisit these.]

## What's still open (decisions that are the recipient's)
[Calls the recipient can and should make]

## The non-negotiables
- The prototyper holds the clipboard. This tool works for the person running it, not the vendor.
- [CS:] tags on every factual claim.
- The 47% rule: grep-verify every stat before quoting it.
- Synthesis slot stays blank: [0% Claude — fill this in]
```
````

---

## For Raj Claude specifically (the acp-v1 builder)

When the recipient is "Raj Claude" or "the session that built acp-v1," read:
- `briefs/handoffs/claude-acp-v1-skill-extension-2026-05-28/CLAUDE.md`
- `briefs/handoffs/claude-acp-v1-skill-extension-2026-05-28/HANDOFF.md`

Then condense to a paste-ready block. Do not reproduce the whole packet — distill what Raj Claude needs to act.

---

## Rules

- Output the paste block directly in the conversation. Do not save it to a file unless asked.
- No preamble. Produce the block and stop.
- If the recipient is ambiguous, ask one question: "Who is this handoff for?"
- Keep it under 40 lines. If it needs more, the recipient should open the full packet instead.
