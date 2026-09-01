# HANDOFF — ACP Trust-Level Model UI

**To:** Nicole Reineke  
**From:** Bradley (Band Protocol)  
**Date:** 2026-05-28  
**Fidelity:** Tier 2 — Direction  
**Status:** Research instrument ready for decision

---

## Executive Summary

You have a working prototype that shows MSPs the five-component math behind trust-level calculation (track record, risk classification, scope boundaries, escalation rules, audit trail). The prototype tests whether transparency builds confidence or creates cognitive load.

**Verified math:** The brief contains 20 tagged claims. 9 are sourced [R], 9 are assumed [A], 2 are unknown [?]. [A]+[?] ratio = 55%. This passes the gate for Tier 2 (Direction) prototyping. Expected range at this fidelity: 40-60%.

**The core tension:** You're building transparency into a calculation that may not need to be visible. Ewan Cameron's L4 earned autonomy experiment validated the concept as "self-evident UX" for mature MSPs [CS: VERIFIED from Control Plane doc]. That may mean they trust the outcome without needing to see the formula.

**What's missing:** User research. We have no evidence MSPs asked to see this math. The problem statement assumes under-trust and over-trust are caused by opacity. That assumption is not sourced.

---

## Verified Numbers (The 47% Rule)

**Claim ratio verification:**
- Brief states: 20 total claims, 9 [R], 0 [D], 9 [A], 2 [?]
- Math: 9+0+9+2 = 20 ✓
- [A]+[?] = 11/20 = 55% ✓
- Source: acp-trust-level.brief.md, lines 86-94

**Gate tolerance:**
- Tier 2 (Direction) expects 40-60% [A]+[?]
- Actual: 55%
- Status: **PASSES**

**Seed data in prototype:**
- Coworker name: "Patch Deployment Coworker" (fictional)
- MSP: "Summit IT Partners" (fictional)
- Track record: 97% success over 32 executions
- Time range: 45 days to L4, 14 days at L4
- Time saved: 4.5 hours (18 deployments × 15 min)

All seed data is plausible but invented. No real MSP data, customer names, or production metrics were used.

**Pete Hegseth test:** This prototype is safe for public viewing.

---

## Named Tensions (Council Not Run)

Council testimony was not generated for this prototype, but two implicit tensions appear in the brief and routing cards:

### Tension 1: Transparency vs. Outcome Focus
- **Jobs-to-Be-Done framing** would say: MSPs hire the coworker to reduce labor cost. They care about "Is this safe?" not "Why is this safe?"
- **Service Blueprint framing** would say: Surfacing the calculation builds system literacy and trust in the platform over time.
- **The collision:** If MSPs ignore the breakdown, you've added UI complexity to solve a non-problem. If they engage with it but don't comprehend it, you've created cognitive load without delivering understanding.

**Nicole's call:** Does trust-level transparency serve the MSP's job-to-be-done, or is it Product's assumption about what builds confidence?

### Tension 2: Autonomy Through Understanding vs. Efficiency Through Automation
- **Self-Determination Theory** would say: People feel more autonomous when they understand the system's decision-making logic. Showing the math increases perceived control.
- **Value Chain framing** would say: The point of L4 is to remove the human from the loop. Surfacing the calculation re-introduces cognitive work that automation was meant to eliminate.
- **The collision:** If the goal is labor reduction (Layer 3 monetization), every second an MSP spends reviewing trust scores is a second they're not saving. But if they don't trust the system, they won't graduate coworkers to L4 at all.

**Nicole's call:** Is configurability (understanding and adjusting thresholds) part of the value proposition, or is "set it and forget it" the ideal state?

---

## What's Sourced vs. What's Assumed

### Sourced [R] (9 claims)
1. MSPs spend enormous time on repeatable operational tasks [R — Confluence, AI Coworker doc]
2. AI Coworkers reduce technician headcount [R — same]
3. L4 earned autonomy model: graduate from "human confirms" to "AI executes, human audits" [R — Control Plane doc]
4. Trust score combines five components (track record, risk classification, scope boundaries, escalation rules, audit trail) [R — Control Plane doc]
5. Ewan Cameron experiment validated L4 as "self-evident UX" for mature MSPs [R — Control Plane doc]
6. Layer 3 monetization (Expert Licensing) depends on trust level [R — Control Plane doc]
7. Value Ledger tracks time saved per action [R — Coworker doc]
8. L4 is the permission structure that determines whether value compounds [R — Control Plane + Coworker docs]
9. Trust level determines labor replacement value [R — Control Plane doc, monetization context]

### Assumed [A] (9 claims)
1. Without transparency, MSPs may under-trust or over-trust coworkers [A]
2. Cognitive load without benefit is a failure mode [A — logical, but not sourced]
3. False precision is a risk (numeric score implies certainty the model may not have) [A]
4. If MSPs don't trust the trust level, they won't pay for Experts [A — logical link, not sourced]
5. Counter-metric threshold: <10% increase in task completion time [A — invented threshold]
6. Testing plan (entire Gate 3 section) [A]
7. Success criteria: 70% can identify 2+ components [A]
8. Failure criteria: >90 seconds without comprehension = cognitive load [A]
9. What counts as done (HTML prototype, Bradley rail, handoff packet) [A — process, not product claim]

### Unknown [?] (2 claims)
1. Do MSPs currently struggle to understand trust levels? [?]
2. Is there an active ACP beta with participants available for testing? [?]

---

## Routing Summary

### Product
**Do this:** Define risk taxonomy for trust-level calculation (severity-based? reversibility-based? scope-based?) and map to L3/L4 thresholds.

**Why now:** Trust level is the permission structure that determines whether Expert Licensing value compounds (L4) or plateaus (L3). Layer 3 monetization depends on MSPs believing trust level accurately reflects risk.

**If you skip it:** Engineering implements arbitrary thresholds. MSPs see coworkers downgraded for unclear reasons. Trust in the system erodes. Expert Licensing adoption stalls.

### Design
**Do this:** Run task-based usability test with 5-8 MSPs: "Your coworker's trust level just changed. Why? What would trigger a rollback?" Measure comprehension vs. time spent reviewing UI.

**Why now:** The brief assumes transparency builds confidence, but we have no evidence MSPs asked to see the calculation. If this creates cognitive load without benefit, the UI becomes a tax on every trust-level interaction.

**If you skip it:** You build a feature no one needs. MSPs ignore the breakdown, or worse, spend time trying to understand it and resent the complexity.

### Research
**Do this:** Discovery interviews with 8-10 MSPs (mix of new and experienced ACP users). Core question: "Walk me through how you decide whether to let this coworker execute autonomously."

**Why now:** The entire problem statement is assumed. We have no evidence MSPs under-trust or over-trust coworkers. Ewan Cameron's experiment validated L4 as "self-evident UX" for mature MSPs—which may mean they don't need the math exposed.

**If you skip it:** You build based on Product's hypothesis about MSP behavior instead of observed reality. If MSPs already trust the outcome, you've added UI complexity to solve a non-problem.

### Engineering
**Do this:** Instrument live trust-level calculation in ACP backend. Pull baseline data: What % of coworkers are currently L3 vs. L4? Average time to graduation? Rollback frequency?

**Why now:** The prototype uses realistic but fictional data (97% success rate over 32 executions). Without real distribution data, we don't know if this UI is showing an edge case or the norm.

**If you skip it:** Design tests a UI with seed data that doesn't reflect production reality. MSPs see the real UI and it feels wrong because the numbers don't match their lived experience.

---

## Three Decisions Nicole Must Make

### Decision 1: Test the hypothesis before building production UI
**The call:** Run Design's usability test (5-8 MSPs, task-based, measure comprehension vs. time spent) before Engineering builds the production-ready trust-level calculation UI.

**Timeline:** 2 weeks for recruitment + testing, 1 week for analysis.

**If the test fails (cognitive load without comprehension):** Pivot to outcome-only UI ("This coworker is trusted to execute autonomously. View details →" collapsed by default) or badge system ("Supervised" / "Trusted" / "Autonomous") without exposing numeric score.

**If the test passes:** Engineering gets validated requirements for what to surface and how.

**Nicole's call by:** 2026-06-15 (before Engineering starts production work)

---

### Decision 2: Define risk taxonomy or accept engineering's default
**The call:** Product defines risk categories (severity-based? reversibility-based? scope-based?) and maps them to L3/L4 thresholds, or Engineering invents arbitrary thresholds and Product accepts the outcome.

**Timeline:** 1-week workshop (Product + Engineering) to define taxonomy and threshold logic.

**If Product defines it:** MSPs see consistent, defensible risk classification. Trust-level changes are explainable.

**If Engineering defaults it:** MSPs see coworkers downgraded for reasons that don't match their intuition. Trust erodes.

**Nicole's call by:** 2026-06-15 (before usability testing, so test participants see realistic risk labels)

---

### Decision 3: Run discovery research or ship based on assumption
**The call:** Research runs 8-10 discovery interviews to validate that MSPs want to see the trust-level calculation, or Product accepts the 55% [A]+[?] ratio and ships based on hypothesis.

**Timeline:** 3 weeks (recruitment + interviews + synthesis).

**If Research validates the problem:** The prototype becomes a Tier 3 spec. Engineering builds production UI with confidence.

**If Research invalidates the problem:** Product pivots to simpler trust indicator (badge/icon) or buries the calculation behind "View details" that <10% of users will ever click.

**Nicole's call by:** 2026-06-30 (discovery research takes longer than usability testing, can run in parallel)

---

## What Happens If Nicole Doesn't Decide

- **Decision 1 (usability testing):** Engineering builds production UI without validation. If it's wrong, the cost to rebuild is 80+ hours vs. 8-hour prototype investment.
- **Decision 2 (risk taxonomy):** Engineering invents thresholds. MSPs see trust levels change for reasons they don't understand. Product inherits technical debt disguised as UX debt.
- **Decision 3 (discovery research):** Product ships a feature based on 55% assumed claims. If the assumption is wrong, you've built cognitive load disguised as transparency.

---

## Smell Test

**Does this brief pass the Lucy test?** (Work for Nicole, not the vendor)

✓ Yes. The prototype surfaces the core tension: transparency may not serve the MSP's job-to-be-done. The routing cards name specific actions Nicole must take or delegate. The [A]+[?] ratio is visible and verified. Nicole is not being sold a solution—she's being handed a research instrument and told what's missing.

**Does this brief pass the Pete Hegseth test?** (Safe for public viewing)

✓ Yes. All seed data is fictional. No real MSP names, customer data, or production metrics.

**Does this brief pass the 47% rule?** (Verify the math before quoting it)

✓ Yes. The [A]+[?] ratio was grep-verified against the brief. The brief's self-reported math matches the source.

---

*Bradley works for Nicole. Not for the business model.*
