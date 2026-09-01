# SESSION HANDOFF — 2026-05-20
**Project:** Idea Chorus / Band Protocol × Adlumin
**Picking up from:** idea-chorus.html canvas evidence wiring (completed this session)
**Setting up for:** Rubric v2 spec

---

## What happened this session

### 1. Canvas evidence wired into gate XP
`applyCanvasBoosts()` added to `prototypes/idea-chorus.html`. Canvas fills now boost dimension scores and upgrade tags to `[D]`. CANVAS_DIM_MAP routes each canvas to its target dimensions. Works at runtime — not yet tested end-to-end in browser.

### 2. Full framework inventory built
- Current tool: 8 canvases, 7 scoring dimensions, Erika Flowers 5 frames, 4 gates
- The House (earlier project): POEMS, AEIOU, 4As, Five Human Factors, Value Web, Activity System, BMC — not yet in Idea Chorus
- Kumar 101 Design Methods: full table of contents extracted from the actual book (PDF at `/Users/elizabeth/Downloads/L-G-0000664516-0018717781.pdf`)
- EPIC Semiotics 2020 course materials read (`/Users/elizabeth/Downloads/EPIC Semiotics - 2020/`)

### 3. Semiotics layer mapped to Sense Intent
Lawes' toolkit: visual/linguistic/aural signs, code classification (lapsed/dominant/emergent), twig-to-branch formula for macro-trends. Maps to Kumar Mode 1 (Sense Intent). Scored as: has the PM located their idea on the emergent/dominant/lapsed spectrum?

### 4. Full system architecture sketched
Three connected tools:

**Tool 1 — Scorer (Idea Chorus evolution):**
- Kumar 7-mode rubric replaces current 7-dimension rubric
- Each mode has its own quality bar and evidence standard
- Mode Readiness and Idea Quality displayed separately
- Bayesian engine: skeptical prior, asymmetric evidence updates

**Tool 2 — Oregon definition module:**
- Scout pulls Jira briefs (Value/Outcome, Success Criteria, named accounts/MRR, competitive tables, scorecard scores)
- Tool assembles 2–3 evidence-backed Oregon candidates with citations
- PM picks one, adds a date
- Oregon type sets the Bayesian prior

**Tool 3 — Oregon Trail simulator (future):**
- Three wagons = three product decision paths on the same idea
- Trail events = real Adlumin product risks (security review, wrong buyer, competitor move, usability fail)
- Probabilistic outcomes from Bayesian engine
- Knowledge graph: 101 methods as nodes, mode completion as layers, bad paths flagged

### 5. Jira/Confluence scan completed
Atlassian MCP connected and working (from main context, not scout — scout hit 403 in isolation).

Key finding: ADL initiatives have a consistent "Value/Outcome + Benefits + Success Criteria and What Good Looks Like" template. Initiative Prioritization Scorecard exists (Revenue/Strategic/Customer Demand/Usage/Competitive/Marketing/Billing/DIR). **Gap: goals stop at feature behavior, not business outcome.** The scorecard is proto-Oregon — not yet wired to timeline or target.

Best examples read in full:
- ADL-1838 (Alpha RACE) — scored 2.57, most complete brief, good goal language
- ADL-1911 (WatchGuard) — has named partners with MRR, competitive table, strong Oregon candidate material
- ADL-1920 (Abakis custom detections), ADL-1918 (Syslog), ADL-1932 (ShadowAI)

---

## What's next

**Immediate:** Run spec agent on `briefs/idea-chorus-rubric-v2.brief.md`

The brief is complete. It covers:
- 7-mode rubric design with scoring signals for each mode
- Bayesian engine architecture
- Oregon integration
- Design decisions to resolve
- Test case (LOTL blab as fixture)

**Then:** Build agent implements the new rubric in `prototypes/idea-chorus.html`

**Later sessions:** Oregon Trail simulator, knowledge graph visualization, Control Tower MCP shim

---

## How to start the next session

Paste this into the new chat:

> HANDOFF — continuing Idea Chorus rubric redesign. Brief is at `briefs/idea-chorus-rubric-v2.brief.md`. Read it, then run the spec agent. The test case is the LOTL blab from `briefs/lotl-value-prop.brief.md`. Jira MCP is connected (cloud ID: 21ab04ef-0acf-4e62-b163-a12e66774c17) — use it directly from main context, scout hits 403 in isolation.

---

## Active files

| File | Status | Notes |
|------|--------|-------|
| `prototypes/idea-chorus.html` | Modified this session | Canvas boosts wired, 3,229 lines |
| `briefs/idea-chorus-rubric-v2.brief.md` | NEW | Full rubric spec brief, ready for spec agent |
| `briefs/lotl-value-prop.brief.md` | Existing | Test fixture for rubric |
| `briefs/SESSION_HANDOFF_2026-05-20.md` | NEW | This file |

---

## Key decisions made this session (don't re-litigate)

- Rubric organizes by Kumar 7 modes, not arbitrary dimensions
- Mode Readiness and Idea Quality are separate outputs
- Oregon is a precondition, not a destination — defined before rubric runs
- Scout pulls Jira evidence for Oregon suggestions; PM confirms + dates
- Bayesian prior is skeptical (assume bad ideas, prove good)
- Disconfirming evidence updates harder than confirming (asymmetric Bayes)
- Oregon Trail metaphor is the UX for the simulator (not probability scores)
- Three wagons = three product decision paths on same idea
- Jira MCP works from main context; scout subagent hits 403

---

## Open questions (for spec agent to surface)

1. Mode Readiness vs. Idea Quality — one composite score or two separate?
2. Mode completion — sequential gates or parallel with gap-flagging?
3. Explore Concepts flag — warning card or acknowledgment gate?
4. Semiotics scoring — PM self-classifies v1, Scout-analyzed v2?
5. Bayesian output language — probability % or trail position metaphor?

---

*Handoff written: 2026-05-20*
*Band Protocol × Zero Vector — values over rules, always*
