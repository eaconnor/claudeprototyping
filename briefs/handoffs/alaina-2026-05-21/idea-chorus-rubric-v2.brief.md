# BRIEF: Idea Chorus Scoring Rubric v2
**Type:** Spec brief — ready to build after spec is validated
**Status:** READY TO SPEC
**Next action:** Spec agent turns this into a structured `.brief.md` with three-gate structure

---

## What exists now (the problem)

`prototypes/idea-chorus.html` has a 7-dimension scoring rubric:
VALUE PROP · COMPANY FIT · 10 TYPES · PAIN EVIDENCE · WILL TO PAY · SELF-ACTUAL. · UX — 5Es

These dimensions are scored from heuristic text-matching on the idea blab. Canvas fills now boost scores via `applyCanvasBoosts()` (wired this session). Gate XP flows from scores.

**The problem:** The rubric conflates two different things:
1. **Idea quality** — is this a good idea?
2. **Mode readiness** — have you done enough work to know?

A PM can get a mediocre score because they described the idea badly, not because the idea is bad. A PM can get a good score because they wrote a fluent blab, not because they have evidence. Text-matching is not evidence.

---

## What it should become

A rubric organized by **Kumar's 7 modes**, where each mode has its own quality bar and evidence standard. The rubric answers TWO questions simultaneously:

**Q1 — Mode readiness:** Which modes have real evidence behind them?
**Q2 — Idea quality:** Given the evidence available, how strong is this idea?

These are displayed separately. A PM can have high idea quality but low mode readiness (strong intuition, no research). Or low idea quality but high mode readiness (good research that killed a bad idea — that's a win).

---

## The 7 modes as rubric layers

### Mode 1: SENSE INTENT
*Has the PM read the cultural/market tide this idea is swimming in?*

**What good looks like:**
- Idea is located on the lapsed/dominant/emergent spectrum (Lawes code classification)
- Branch identified — what larger macro-trend makes this twig possible?
- Other twigs named — corroborating evidence from unrelated sectors
- Not required to be complete at intake — but a PM who can't name the macro-trend is flying blind

**Evidence sources:** Trend reports, industry publications, semiotics analysis, Popular Media Scan (Kumar 1.2), Trends Matrix (1.9), Convergence Map (1.10)

**Scoring signal (detectable in blab):**
- Names a market trend explicitly
- References timing ("now is the moment because…")
- Locates competitors as dominant/emergent players

---

### Mode 2: KNOW CONTEXT
*Is the industry/competitive landscape mapped?*

**What good looks like:**
- Competitor-complementor landscape named (not just "competitors exist")
- Industry dynamics understood — is this market growing, consolidating, disrupting?
- Threat actor landscape for security ideas (LOTL, attack patterns, MSP/MSSP dynamics)
- Financial/economic context — what does the market pay for this today?

**Evidence sources:** Scout pulls from Jira/Confluence (competitive tables already exist in ADL initiatives), industry reports, Competitors-Complementors Map (Kumar 2.8), Industry Diagnostics (2.10)

**Current tool coverage:** COMPANY FIT dimension — weak, keyword-only. Needs full replacement.

---

### Mode 3: KNOW PEOPLE
*Do you actually know your customers?*

**What good looks like:**
- Specific customer segments named (MSP, MSSP, mid-market SOC, etc.)
- Behavioral evidence — how they actually work, not how they say they work
- Multi-method: at least one of usability, ethnography, interview, sales signal, usage data
- Named accounts or user types (not just "enterprise customers")
- Country/vertical behavior differences named if relevant

**Evidence sources:** Jira "Customer Requested" fields (named accounts, MRR), Confluence interview notes, Pendo usage data, Five Human Factors (Kumar 3.4), POEMS (3.5), Ethnographic Interview (3.8)

**Current tool coverage:** PAIN EVIDENCE + SELF-ACTUAL. — partial. Neither captures behavioral richness.

---

### Mode 4: FRAME INSIGHTS
*Has anyone actually synthesized the data — or just collected it?*

**What good looks like:**
- Best hypothesis formed (not just observations listed)
- Patterns named across sources (the R-analysis move — what does the data actually say?)
- Erika Flowers' 5 frames answered: WHO · HURTS · NEED · FEEL BETTER · MARKET OPPS
- Value prop formed as a testable hypothesis, not a statement of intent
- Research gaps named (what's still [A] or [?])

**Evidence sources:** Canvas fills (JTBD, Moore Positioning, Kano, SDT), 4As analysis, ERAF Systems Diagram (Kumar 4.5), User Journey Map (4.17), Design Principles Generation (4.19)

**Current tool coverage:** Most of the current Score Card lives here — VALUE PROP, the Erika Flowers frames. This is the best-covered mode currently.

---

### Mode 5: EXPLORE CONCEPTS
*Have you earned the right to be here?*

**The gate question:** Is there enough Mode 3 + Mode 4 evidence to justify concepting?

**What good looks like:**
- At least one Value Hypothesis formed (Kumar 5.3)
- Persona defined from evidence, not assumption
- Concept is connected to a specific insight — not a feature request
- If no Mode 3 work exists: concept is explicitly labeled ASSUMPTION, not evidence

**The "Oregon Trail" signal:** PMs jump to Mode 5 without Mode 3/4 evidence. This is the most common bad path. The rubric should flag it explicitly — not block, but name the risk.

**Evidence sources:** Concept sketches, prototypes, behavioral prototypes, canvas fills

**Current tool coverage:** None. The tool doesn't score whether you've earned concept work.

---

### Mode 6: FRAME SOLUTIONS
*Is there healthy skepticism — or are you in love with your idea?*

**What good looks like:**
- Concept has been evaluated, not just described
- Constraints named and owned (not wished away)
- Competitive response modeled — what does the market do when this ships?
- Failure modes named (what kills this idea?)
- "Assume bad, prove good" posture evident

**Evidence sources:** Concept Evaluation (Kumar 6.2), Solution Evaluation (6.10), Foresight Scenario (6.5), Morphological Synthesis (6.1)

**Current tool coverage:** GATES 3+4 partially cover this — but only as checklists, not evidence quality.

---

### Mode 7: REALIZE OFFERINGS
*Is there a path to market, or just a path to build?*

**What good looks like:**
- Oregon defined (business outcome + timeline + metric)
- Rollout strategy named (who gets it first, how is adoption measured)
- Success metrics observable and measurable (not "improve experience")
- Test-and-learn plan exists — what do you learn from beta, and what kills it?

**Evidence sources:** Strategy Roadmap (Kumar 7.1), Pilot Development and Testing (7.4), Innovation Brief (7.9), existing Jira "Success Criteria and What Good Looks Like" sections

**Current tool coverage:** GATES 1–4 partially. Oregon is missing entirely.

---

## The Bayesian engine

Each mode contributes to a posterior probability estimate on idea success.

**Prior:** Set by Oregon type (revenue protection vs. new logo vs. usage growth) and market context. Default prior is skeptical — assume the idea is bad until proven otherwise.

**Evidence updates:** Each mode with real evidence (`[D]` or `[R]` quality) updates the posterior. Update magnitude = evidence quality × mode weight.

**Asymmetric updating:** Disconfirming evidence (a user interview that kills the pain hypothesis) updates harder than confirming evidence. This is correct Bayesian behavior and matches the "assume bad ideas" posture.

**Output:** Not "your idea scores 7.2." Instead: *"Given the evidence in Modes 1–3, there is moderate confidence this addresses a real problem. Modes 4–6 are thin. The posterior probability of reaching Oregon is low until Frame Insights work is done."*

---

## Oregon integration

Before the rubric runs, Oregon must be defined:
- **Scout pulls** existing Jira Value/Outcome, Success Criteria, named accounts/MRR, competitive table, Initiative Prioritization Scorecard scores
- **Tool suggests** 2–3 candidate Oregons with evidence citations (e.g., "Unblock $45K ARR in named WatchGuard deals by Q3 — evidence: ADL-1911")
- **PM picks one, adds a date** — that becomes the rubric's target
- **Oregon type** sets the prior and determines which modes are most critical

---

## Design decisions to resolve in spec

1. **Display:** Are Mode Readiness and Idea Quality two separate scores, or one composite? Recommendation: separate. A PM who has done Mode 3 work that killed a bad idea should see that as a success, not a failure.

2. **Mode gates:** Is Mode completion sequential (must do 1→2→3) or parallel (any order, gaps flagged)? Recommendation: parallel with gap-flagging. Real innovation isn't linear.

3. **The "Explore Concepts" flag:** How explicitly do we name the bad path? A warning card? A gate that requires acknowledgment? Recommendation: visible warning, not a block — PMs sometimes prototype to do research.

4. **Semiotics scoring:** Lapsed/dominant/emergent classification requires judgment, not keyword matching. For v1: ask the PM to self-classify with prompts. Future v2: Scout analyzes competitive landscape and suggests classification.

5. **Bayesian output language:** Probability estimates can feel clinical or discouraging. The Oregon Trail metaphor is better UX. Map posterior → trail position (where are you on the journey?) rather than showing raw probability.

---

## What the spec agent needs to do

1. Apply three-gate structure to this brief
2. Tag all claims [R]/[D]/[A]/[?]
3. Surface open questions that need answers before build
4. Flag if >30% tags are [A] or [?] — brief not ready
5. Output a `.brief.md` to `briefs/idea-chorus-rubric-v2-spec.brief.md`

---

## Files to reference

- `prototypes/idea-chorus.html` — current tool (3,229 lines)
- `briefs/lotl-value-prop.brief.md` — test fixture (LOTL idea as test case)
- `/Users/elizabeth/Downloads/L-G-0000664516-0018717781.pdf` — Kumar 101 Design Methods (full book, accessible)
- `/Users/elizabeth/Downloads/EPIC Semiotics - 2020/` — semiotics course materials (Lawes toolkit, lapsed/dominant/emergent framework)
- Jira ADL-1838 (Alpha RACE) — best example of existing goal language in N-able
- Jira ADL-1911 (WatchGuard) — best example of evidence-backed Oregon candidate

---

## Test case

Run the LOTL blab (from `briefs/lotl-value-prop.brief.md`) through the new rubric.

Expected result:
- Mode 2 (Know Context) — HIGH. Threat actor landscape is well-documented.
- Mode 3 (Know People) — MEDIUM. Some customer signal, not behavioral.
- Mode 4 (Frame Insights) — LOW. Hypothesis formed but not tested.
- Mode 5 (Explore Concepts) — FLAGGED. Concept work done before Mode 3 is complete.
- Mode 6 (Frame Solutions) — LOW. No failure modes named.
- Oregon — MISSING. No business outcome defined.

---

*Brief written: 2026-05-20*
*Session: Idea Chorus rubric design + Oregon Trail + Bayesian engine + semiotics layer*
*Next: Run spec agent on this brief*
