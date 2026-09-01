# Prototype Skill — Teams Copilot Setup

**What this is:** The Band Protocol prototyping pipeline, packaged for use with Microsoft Copilot in Teams.

---

## What's in this package

| File | What it does |
|---|---|
| `SKILL.md` | Full pipeline instructions — paste this as your system prompt or custom instruction block |
| `README.md` | Overview of the skill and how to invoke it |
| `test-cases-nicole.json` | 3 ready-to-run ACP prompts to test with |
| `references/ownership-attribution.md` | How to calculate and display X% attribution |
| `references/attribution-matrix.md` | Real scenarios with calculated percentages |

---

## How to use in Teams Copilot

Teams Copilot doesn't have a skill system like Claude Code. Two options:

### Option A — Paste as context at session start
Paste the contents of `SKILL.md` into the first message of a new Copilot session, prefixed with:

> "You are running the Band Protocol prototyping pipeline. These are your operating instructions:"
> [paste SKILL.md]

Then follow with your prototype request from `test-cases-nicole.json` or your own.

### Option B — Use as a reference document
Upload `SKILL.md` as a file attachment to a Teams Copilot chat. Then say:

> "Use the attached Band Protocol skill to build a prototype for [describe the thing]."

---

## What changes in Teams vs. Claude Code

Teams Copilot cannot:
- Spawn named subagents (scout, spec, build, critic, council, bradley)
- Run shell commands or write files to disk
- Access Confluence/Jira via MCP

**What still works:**
- The full pipeline logic (intake → scout → spec → critic → build → critic → council → handoff)
- Three-gate brief structure with [R]/[D]/[A]/[?] tagging
- Bradley rail with routing cards and ROI blocks
- Ownership attribution (X% Beth)
- [CS:] confidence tags on all factual claims
- The 47% rule (verify every stat before quoting)

**Adaptation:** Run each pipeline step as a sequential message exchange. One step per prompt. Copilot holds context across the conversation.

---

## Key non-negotiables (carry these into every session)

- Synthesis slot stays blank: `[0% Claude — fill this in]`
- Seed data must be fictional
- [CS:] tags on every factual claim
- The 47% rule: verify every stat before quoting it
- The tool works for Beth, not the vendor

---

## Start here

Copy this prompt from `test-cases-nicole.json` to test:

> "Prototype the ACP Trust-Level Model UI showing MSPs how their confidence score is calculated. Lo-fi fidelity. Audience: internal team. Source docs: ACP Control Plane + Coworker docs in Confluence space AI."
