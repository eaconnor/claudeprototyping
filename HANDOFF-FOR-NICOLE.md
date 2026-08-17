# Handoff — ACP Trust-Level Model Prototype

**To:** Nicole Reineke  
**From:** Beth  
**Date:** 2026-05-28  
**Status:** Tier 2 Direction prototype — tested the Band Protocol pipeline

---

## What This Is

A complete prototype pipeline run testing the new Band Protocol skill. You can use this folder to see how the full 7-step pipeline works:

1. **Scout** pulled your Confluence docs (Control Plane, Coworker, Runbooks)
2. **Spec** wrote a three-gate brief with [A]+[?] tagging (55% — appropriate for Tier 2)
3. **Critic** scored the brief pre-build (24/30)
4. **Build** created working HTML with Apex Bridge + Bradley rail + ownership attribution
5. **Critic** re-scored post-build (43/60) with delta table
6. **Council** ran 5 expert frameworks — found 2 contradictions for you to decide
7. **Bradley handoff** (this note)

---

## What You Have

### Files in This Folder

**Source material:**
- `scout_input/01-control-plane.md` — Your ACP positioning doc
- `scout_input/02-coworker.md` — Your AI Coworker definition
- `scout_input/03-runbooks.md` — Your Runbooks definition

**Brief:**
- `briefs/acp-trust-level.brief.md` — Three-gate brief, 55% [A]+[?] ratio

**Prototype:**
- `prototypes/acp-trust-level/index.html` — Working HTML (open in browser)
  - Shows Trust-Level Model UI for fictional MSP "Summit IT Partners"
  - Apex Bridge overlay with 5 trust components visualized
  - Bradley rail with 4 routed cards (Product, Design, Research, Eng)
  - Ownership attribution: 65-80% Nicole

**Reviews:**
- `critic-pass-2.md` — Post-build scorecard + punch list
- `council-testimony.md` — 5 framework voices

---

## What Council Found (Two Contradictions for You to Decide)

### 1. JTBD vs. Service Blueprint — Should calculation be always visible?

**Jobs-to-Be-Done says:** MSPs may be hiring for *permission* ("tell me it's safe") not *comprehension* ("explain the math"). Showing calculation might be overservice.

**Service Blueprint says:** Calculation may only be relevant at specific moments (investigating failure). Should be hidden by default, surfaced on-demand.

**Your decision:** Should the trust-score calculation be:
- Always visible (default expanded)
- Collapsed by default (expandable "View details")
- Contextual only (shown when trust level changes or when investigating failure)

### 2. SDT vs. Value Chain — Should thresholds be configurable?

**Self-Determination Theory says:** View-only risks pseudo-autonomy (feels like surveillance). MSPs should be able to tune thresholds to support true control.

**Value Chain says:** Adlumin controls trust calculation as platform chokepoint. Making thresholds configurable surrenders control and risks fragmentation.

**Your decision:** Is the trust calculation:
- Fixed (Adlumin owns algorithm, MSPs view-only)
- Configurable (MSPs can tune thresholds within guardrails)

This is a product philosophy question: opinionated platform vs. flexible toolkit.

---

## Three Calls You Need to Make

1. **Decide transparency pattern** (always visible / collapsed / contextual) — by end of week if testing with beta MSPs
2. **Decide configurability** (fixed / tunable) — blocks implementation, need this before engineering starts
3. **Confirm beta population exists** — brief assumes 5-8 MSPs in ACP beta for testing. If beta doesn't exist, prototype is demo-only.

---

## To Run This Prototype Yourself

1. Open the skill: **[prototype-v2.skill](file:///Users/elizabeth/Desktop/prototype-v2.skill)** on Desktop (updated version with Apex Bridge)
2. Install it: `claude skill add prototype-v2.skill`
3. Use any of the test prompts from [test-cases-nicole.json](file:///Users/elizabeth/Desktop/prototype-source/test-cases-nicole.json)
4. Claude will run the full 7-step pipeline automatically

**What's in v2:**
- ✅ Apex Bridge design system (dark enterprise UI, not Band Protocol)
- ✅ Big readiness score (72%) with 4 gates (concept/direction/build/release)
- ✅ Critic scores with drill-downs (explains why each dimension scored what it did)
- ✅ Council testimony with contradictions highlighted
- ✅ Mock product top nav (shows overlay context)
- ✅ Bradley rail with distinct background color

The skill will:
- Pull from your Confluence docs
- Create briefs with evidence tagging
- Build working prototypes with Apex Bridge
- Run council to surface contradictions
- Generate handoff packets

---

## What Makes This Different

**Ownership attribution ("owensing"):** Every Bradley rail card shows X% Nicole based on how much came from your source docs vs. tool generation. Centers you as author, not the tool as contaminant.

**Council contradictions:** The 5 frameworks ran independently and disagreed on key points. Those disagreements are *your* design decisions, not research gaps.

**47% rule:** All stats verified. The 55% [A]+[?] ratio was grep-counted, not guessed.

---

**Questions?** The skill is packaged and ready. Test it yourself with your ACP prototypes.

— Beth
