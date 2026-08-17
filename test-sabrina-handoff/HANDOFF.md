# HANDOFF — Prototype Skill v1

**To:** Adlumin PMs and team  
**Date:** 2026-06-03  
**Status:** v1 — live

---

## Where this came from

The `/prototype` skill grew out of a real need: PMs at Adlumin were running prototype sessions in Claude, but the outputs were inconsistent. Sometimes you got a beautiful mock. Sometimes you got something that looked right but had no analytical backbone — no readiness score, no evidence of where the assumptions were, no routing for the decisions that needed to be made before anything could be built.

The skill was built to fix that. It wraps a structured pipeline around Claude's existing ability to build HTML prototypes — one that front-loads the questions that matter (is this idea ready? who needs to make which calls?) and makes the output verifiable rather than just fluent.

It was stress-tested against real Adlumin product concepts using the ACP (AI Control Plane) feature space as a proving ground. The reference prototype — `prototypes/acp-v1/index.html` — is a 4,675-line hi-fi prototype with 9 pages, a 5-step Coworker wizard, a runbook editor modal, and live Apex Bridge tokens. That's the ceiling. Most work happens at lo-fi.

---

## What v1 delivers

### A working HTML prototype
Built with Apex Bridge semantic tokens — the same design system used in Adlumin production. Light · dark · system mode toggle. Fictional seed data with visible stamps. One CTA per row. No invented colors.

Lo-fi: single page, ~600–1,200 lines, one session.  
Hi-fi: multi-page, ~3,500–5,000 lines, multiple sessions.

### A readiness score
Before the prototype is built, the critic scores the brief on 6 dimensions. After the build, it re-scores and shows the delta. You know where the idea got stronger and where it didn't.

### A Bradley rail
A visually distinct sidebar attached to every prototype. Contains three action cards routed to the right people:
- **Product card** — readiness state, what decisions are open
- **Design card** — what needs design review
- **Research card** — what claims need evidence
- **Eng card** — what needs a feasibility call

The rail is violet-tinted, structurally separate from the app, and ships with every prototype regardless of fidelity.

### A council of expert voices
The 44-voice council runs 44 analytical traditions (JTBD, Service Blueprint, Porter, SDT, Challenger, and 39 others) against the brief and surfaces where they agree, where they contradict, and what none of them can see.

- **Fast Mode** (default): 7 key tensions + executive summary. ~2 minutes to read.
- **Hard Mode**: All 44 voices across 14 clusters + cross-talk. ~15–20 minutes. For strategic decisions or board-level briefs.

Council contradictions are named and routed — never resolved by the tool. The synthesis sentence is always `[0% Claude — fill this in]`. That's the PM's job.

### A handoff packet
A Claude-droppable folder containing the brief, prototype, critic scores, council testimony, and a HANDOFF.md with verified math, named tensions, and three specific calls with owners. Drop it in a new session and the next Claude picks up exactly where you left off.

---

## What the skill does not do

- Make product decisions
- Fill in the council synthesis
- Fabricate ROI numbers (unknown ROI is labeled Unknown)
- Quote a stat it hasn't verified (47% rule — every ratio is grep-checked before it ships)
- Drop pipeline steps because you said "just build it"

---

## The 47% rule

Named for a recurring failure mode: a brief says "47% of MSPs report X" and nobody checks whether that number is real. The proctor gate grep-verifies every ratio, count, and stat in a handoff before it ships. Fluency does not know its own math. The tool does.

---

## Early days — what we learned

Three things that didn't work before v1 fixed them:

**1. Manual heredoc truncation breaks prototypes.**  
The first time build returned a large output (59KB), we wrote a truncated heredoc manually — 1,251 lines instead of 1,611. Buttons didn't work. Rail cards were incomplete. The fix: extract programmatically from the persisted JSON. Never truncate. The full file or nothing.

**2. One [A]+[?] number is misleading.**  
The brief's assumption ratio looks much worse if you count the brief's own gap inventory as assumptions. v1 reports three numbers: world-claims ratio (the honest one), test-plan readiness (borderline), and inflated-with-meta-TODOs (misleading on its own). The brief leads with world-claims.

**3. The synthesis slot must be blank.**  
Early runs had Claude filling in the 3-sentence council summary. It was fluent. It was also subtly wrong — it resolved tensions the tool isn't qualified to resolve. The slot now ships empty with a label: `[0% Claude — fill this in]`. The PM writes it. That's the whole point.
