# README — Adlumin Team / Prototype Skill Handoff

**Date:** 2026-06-03  
**Skill:** `/prototype` (Band Protocol Prototyping Pipeline)  
**Audience:** Adlumin PMs and team members

---

## Reading order

1. **CLAUDE.md** — Start here. What this is and how to get started.
2. **HANDOFF.md** — What the skill does, what v1 delivers, and what to expect.
3. **SKILL-SUMMARY.md** — One-page reference. Keep this open while you're running your first prototype.
4. **NEXT-STEPS.md** — What's coming in v2, and what feedback to send back.

---

## What this packet covers

- What the `/prototype` skill is and why it was built
- What v1 can do right now
- How to invoke it and what to expect
- The early-days context: how it came to be
- What's next

---

## The short version

The `/prototype` skill is a Claude-native prototyping pipeline. You give it a concept or a brief. It scouts source material, writes a three-gate spec, scores readiness, builds a working HTML prototype using Apex Bridge tokens, runs a 44-voice expert council, and packages everything into a handoff you can drop into the next session.

**What makes it different from just asking Claude to build something:**
- It tells you *how ready the idea is* before committing to build
- It runs the idea through 44 analytical traditions and surfaces where they disagree
- It routes decisions to the right people (Product, Design, Research, Eng) instead of hiding them
- It verifies its own math before it ships

---

## At a glance

| Capability | v1 Status |
|------------|-----------|
| Lo-fi prototypes (single page, Apex Bridge) | ✅ Live |
| Hi-fi prototypes (multi-page, web components, wizards) | ✅ Live |
| Readiness scoring (6-dimension critic) | ✅ Live |
| Fast Mode council (7 tensions + exec summary) | ✅ Live |
| Hard Mode council (44 voices, 14 clusters, cross-talk) | ✅ Live |
| Bradley rail (routed action cards) | ✅ Live |
| Claude-droppable handoff packets | ✅ Live |
| Confluence / Jira source grounding | ✅ Live |
| Proctor gate (47% rule verification) | ✅ Live |
| Apex UI MCP live component server | ⚠️ Package name unverified — confirm with platform team |
