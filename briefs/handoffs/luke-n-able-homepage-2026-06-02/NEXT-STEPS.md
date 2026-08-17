# NEXT-STEPS — n-able Homepage

**Project:** n-able Homepage — Gray-Led Aesthetic  
**Tier:** 1 (Concept — 30% fidelity)  
**Recipient:** Luke (designer)  
**Date:** 2026-06-02

---

## Decisions only Luke/Beth can make

These are **not recommendations** — they're decision points the pipeline cannot resolve. Luke (or Luke + Beth) must make these calls before advancing to 60% schematic tier.

---

## Decision 1: Advance or pivot?

**Question:** Is gray-led direction worth investing in a 60% schematic iteration, or should we validate the problem statement first?

**What you'd need to advance to 60%:**
1. Brand guidelines review: Is gray permissible in n-able's identity system? [?]
2. Competitive audit: Screenshots of Kaseya, Datto, ConnectWise homepages. What palette/tone do they use? [?]
3. Stakeholder alignment: Which strategy direction? Sustaining upmarket? Disruptive low-end? New market? (See Council tension #4)
4. Frontstage vs. backstage decision: Is gray a brand signal or a usability scaffold? (See Decision 2 below)
5. Test plan scoped: A/B test or stakeholder validation? (See Decision 3 below)

**Timeline if you advance:** 1–2 weeks to gather the above, then 1 week for 60% schematic build.

**What you'd need to pivot to problem validation:**
1. Current homepage metrics: conversion rate, demo request rate, bounce rate, time-on-page [?]
2. User research: What do MSP decision-makers respond to visually? (interviews or surveys)
3. Business case: What outcome are we trying to move? Why does the homepage need to change?
4. Problem statement: Gate 1 brief must answer "What's broken?" before Gate 2 ("What do we build?")

**Timeline if you pivot:** 2–4 weeks to run user research + metric baseline, then re-brief.

**Who decides:** Luke + Beth (or Luke + product owner if Beth delegated)

**When to decide:** Before scheduling 60% schematic work.

---

## Decision 2: Frontstage or backstage?

**Question:** Is gray a brand signal ("we're enterprise") or a usability scaffold (recedes to let content emerge)?

**Context:** Council tension #3 flagged this conflict. The brief says gray should "communicate enterprise credibility" (frontstage signal) and "reduce visual noise" (backstage scaffold). These are incompatible. Credible signals must be visible. Scaffolds must recede.

**If gray is frontstage (brand signal):**
- You're claiming gray = enterprise, premium, neutral.
- Requires brand guidelines verification [?]
- Requires competitive audit [?]
- Requires premium reinforcement cues: typography (serif or large scale), elevation, content (case studies, certifications)
- Test hypothesis: "Gray increases perceived enterprise credibility." Counter-metric: brand recall.

**If gray is backstage (usability scaffold):**
- You're optimizing for hierarchy, readability, CTA prominence.
- Gray is the stage, not the actor.
- Requires strong type scale (prototype has this), elevation tokens (prototype has this), CTA contrast (prototype has this).
- Test hypothesis: "Gray improves evaluation speed and CTA click-through." No brand claim.

**Who decides:** Beth or n-able brand owner

**When to decide:** Before advancing to 60% schematic. This decision affects copy, test plan, and success metrics.

**How to decide:** Ask Beth: "Is gray a brand choice or a usability choice?" If she says both, name the conflict and ask her to pick one.

---

## Decision 3: Test plan or stakeholder alignment first?

**Question:** Do we A/B test this with real MSPs, or do we need brand/product/marketing buy-in before testing?

**Context:** The brief has no test plan [A]. Council tensions #1 (Kano vs. Brand Equity) and #7 (Self-Determination Theory) flag risks that can only be validated with real users. But testing without stakeholder alignment is risky — if gray wins on conversion but violates brand guidelines, the test is wasted.

**If you A/B test first:**

**What you need:**
- Metric baseline: current homepage conversion rate, demo request rate, bounce rate, time-on-page [?]
- Test variant: gray-led homepage (prototype is ready, needs production integration)
- Success metric: conversion rate to demo/trial [A]
- Counter-metric: brand recall survey ("Do you recognize this as n-able?") [A]
- Test duration: 2–4 weeks, 10k unique visitors per variant [A]
- Stratification: Test one mode (light or dark), or stratify by mode preference. Mode toggle is a confounding variable.

**Timeline:** 4–6 weeks (2 weeks setup + 2–4 weeks test + analysis)

**Risk:** If Marketing says "this violates brand guidelines" after the test, you've wasted 6 weeks + test budget.

**If you align stakeholders first:**

**Who to align:**
- Brand owner: "Is gray permissible in n-able's identity system?" [?]
- Product owner: "What outcome are we trying to move?" (conversion? brand perception? something else?)
- Marketing: "Does gray support or conflict with brand strategy?"
- Sales: "Do larger deals come from prospects who value enterprise credibility?" (tests the JTBD hypothesis)

**Timeline:** 1–2 weeks (brand guidelines review + 1–2 alignment meetings)

**Risk:** Stakeholders may reject gray without evidence. You'd need to argue for "gray as a hypothesis worth testing" based on design intuition, not data.

**Who decides:** Luke + Beth + product owner (or whoever controls test budget)

**When to decide:** Before investing in A/B test setup.

**Recommendation from Bradley:** Stakeholder alignment first. Get brand, product, and marketing buy-in on "gray as testable hypothesis." Then run A/B test with their blessing. This de-risks the test — if stakeholders are aligned, winning test results can ship. If you test without alignment, even winning results may not ship.

---

## If you decide to advance: 60% schematic pipeline re-run

**Prerequisites (must resolve before re-running pipeline):**
1. Decision 1 resolved: Advancing (not pivoting)
2. Decision 2 resolved: Frontstage or backstage (pick one)
3. Decision 3 resolved: Stakeholder alignment complete (or test plan scoped with stakeholder buy-in)
4. Brand guidelines: Gray permissibility verified [?] → becomes [R] or [D]
5. Competitive audit: Kaseya/Datto/ConnectWise screenshots [?] → becomes [R] or [D]
6. Metric baseline: Current homepage conversion/bounce/time-on-page [?] → becomes [D]

**Pipeline re-run steps:**

1. **Scout (Haiku)** — Pull:
   - n-able brand guidelines (if available)
   - Competitor homepage screenshots (Kaseya, Datto, ConnectWise)
   - Current n-able homepage metrics (if available)
   - Stakeholder alignment notes (strategy direction, frontstage/backstage decision)

2. **Spec (Sonnet)** — Update brief:
   - Add problem statement (if one exists after stakeholder alignment)
   - Update claim tags: [?] → [R] or [D] where new data exists
   - Add frontstage vs. backstage decision to design constraints
   - Add competitive positioning section (differentiate vs. Kaseya/Datto or align with SaaS norms?)
   - Add test plan (if scoped)
   - Target ratio: <50% [A]+[?] for 60% schematic tier

3. **Critic (Sonnet)** — Pre-build scorecard:
   - Score updated brief against 6 dimensions
   - Verify claim ratio <50% [A]+[?]
   - Generate punch list for 60% schematic build

4. **Build (Sonnet)** — 60% schematic prototype:
   - Higher fidelity: real n-able logo, real product screenshots (if available), real customer testimonials (with permission)
   - Full homepage sections: features, pricing (if applicable), footer, navigation
   - Interaction states: hover, focus, active, disabled (for CTAs and navigation)
   - Responsive breakpoints: desktop, tablet, mobile
   - Bradley rail updated with new readiness checks (6→12 checks for 60% tier)

5. **Critic (Sonnet)** — Post-build re-score:
   - Domain-model fidelity check
   - Design system compliance check
   - Delta table (pre-build vs. post-build scores)

6. **Council (optional, via `--council`)** — Re-run on updated brief:
   - Verify whether 7 tensions resolved or new tensions emerged
   - Check whether stakeholder alignment addressed JTBD, margin story, disruption direction

7. **Handoff (Bradley)** — Updated packet for Luke:
   - 60% schematic prototype
   - Updated brief with <50% [A]+[?]
   - Critic passes (pre + post)
   - Council re-run (if requested)
   - Test plan (if scoped)
   - Verified math (47% rule)

---

## If you decide to pivot: Problem validation pipeline

**Steps:**

1. **Scout (Haiku)** — Pull:
   - Current n-able homepage metrics (conversion, bounce, time-on-page)
   - User research (if any exists): MSP decision-maker interviews, surveys, usability tests
   - Competitor homepages: screenshots + conversion best practices
   - n-able business goals: What outcome does homepage need to move?

2. **Spec (Sonnet)** — Write problem brief:
   - Gate 1: What's broken? What outcome is at risk?
   - Evidence: [R] or [D] tags only — no [A] or [?] in problem statement
   - Success criteria: What metric moves if we fix this?
   - Failure modes: What happens if we don't fix it?
   - Target ratio: <30% [A]+[?] for problem brief

3. **Research plan (if no user data exists):**
   - 8–12 MSP decision-maker interviews (directors, CTOs, ops leads)
   - Questions: What do you look for on a vendor homepage? What makes you trust a vendor? What visual tone signals "enterprise-grade" to you? Have you heard of n-able? (brand recall)
   - Timeline: 2–3 weeks (recruit + interview + synthesis)

4. **After problem validated:** Re-run solution pipeline (scout → spec → critic → build → council → handoff) with sourced problem statement.

---

## Who does what

**Luke decides:**
- Decision 2 (frontstage vs. backstage) — but may need Beth or brand owner input

**Beth decides:**
- Decision 1 (advance or pivot) — Luke can recommend, but Beth owns the call

**Product owner decides:**
- Decision 3 (test plan or stakeholder alignment) — unless Beth is also product owner

**Bradley does:**
- Nothing. Bradley is the pipeline gate. Bradley verifies math, names tensions, routes decisions to humans. Once Luke decides, the pipeline re-runs (if advancing) or parks (if pivoting).

---

## Timeline summary

| Path | Timeline | Prerequisites |
|------|----------|---------------|
| **Advance to 60% schematic** | 2–3 weeks | Decisions 1–3 resolved + brand guidelines + competitive audit + stakeholder alignment |
| **Pivot to problem validation** | 4–6 weeks | Current metrics + user research (interviews) + business case |
| **A/B test (if advancing)** | 4–6 weeks | Stakeholder alignment + metric baseline + test variant ready |

---

## Final note

This prototype is **handoff-ready at 30% fidelity**. Luke can:
- Show it to stakeholders for visual direction feedback
- Use it as a conversation starter for brand/product/marketing alignment
- Park it if problem validation reveals gray isn't the right direction
- Advance it to 60% schematic if decisions 1–3 resolve in favor of gray

The pipeline did its job. The brief is honest (98% [A]+[?]). The prototype executes the brief with 100% fidelity. The council named 7 tensions. The handoff verified the math (47% rule). Luke has everything needed to make the next call.

---

**Bradley · Band Protocol pipeline gate · 2026-06-02**
