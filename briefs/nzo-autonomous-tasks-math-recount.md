# Math Recount — N-zo Autonomous Tasks Brief
**Date:** 2026-06-02  
**Brief:** `briefs/nzo-autonomous-tasks.brief.md`

## Purpose
Verify the [R]/[D]/[A]/[?] ratios claimed in the brief. Every tagged line is categorized into one of three buckets:

1. **World-claims** (about MSPs, market, users — the lead number)
2. **Test-plan readiness** (claims about the prototype's own validation)
3. **Meta-TODOs** (the brief's gap inventory — "What's Missing" section)

---

## Bucket 1: World-Claims (MSPs, Market, Users)

### [R] — Research/Verified (5 claims)
1. Current N-zo does NOT execute autonomous actions (scout: 01-nzo-documentation-capabilities.md, line 30)
2. Current N-zo provides diagnostic analysis, security risk ID, remediation recommendations (scout: 01, lines 9-26)
3. Data never used to train external LLMs (scout: 02-nzo-faqs.md, line 26)
4. Tenant isolation enforced (scout: 02, line 28)
5. 100 credits per technician per month (scout: 02, line 18)

### [D] — Data/Quantitative (0 claims)
*(None available in scout material)*

### [A] — Assumed (18 claims)
1. MSP technicians spend time executing repetitive, low-risk remediation tasks (problem statement)
2. Context-switching cost between N-zo recommendation and manual execution
3. Latency between recommendation and action adds delay
4. Cognitive load: technician must validate recommendation is still correct when executing
5. Technicians treat N-zo as diagnostic assistant, then manually execute in N-central/N-sight (current workaround)
6. Autonomous execution reduces toil → aligns with N-able mission (Gate 2)
7. Primary outcome: time-to-resolution reduction for routine tasks
8. Secondary outcome: increased N-zo engagement
9. Secondary outcome: reduced support load
10. Trust erosion risk if N-zo breaks something
11. Support load spike during early rollout
12. Counter-metric: rollback rate target <2%
13. Counter-metric: override rate target <10%
14. Counter-metric: zero "N-zo broke something" tickets in first 90 days
15. Credit burn rate may require model redesign
16. Trust cliff failure mode (single failure erodes trust in all N-zo features)
17. Policy sprawl failure mode (hundreds of granular policies become unmaintainable)
18. Rollback failure cascade (inconsistent device state increases resolution time)

### [?] — Unknown (18 claims)
1. Which tasks do MSP technicians execute most frequently after N-zo recommendations?
2. What % of N-zo recommendations are acted upon vs. ignored?
3. What is median time-to-execution for N-zo-recommended tasks? (baseline for OKR)
4. What tasks would MSPs trust N-zo to execute autonomously?
5. What tasks are too risky for autonomous execution?
6. Do MSPs have compliance/audit requirements prohibiting autonomous remediation?
7. Does autonomous execution increase retention/upsell or damage brand? (trust research)
8. Revenue impact: Does autonomous execution justify price increase or prevent churn?
9. Competitive landscape: Do competitors already offer autonomous remediation?
10. Sandbox environment availability for testing
11. Approval flow test cases
12. Rollback validation acceptance criteria (% of task types requiring rollback support)
13. Failure mode testing plan (wrong device, rollback failure, intermediate state)
14. Stakeholder validation process (Product, Security, MSP customers, Legal)
15. MSP interview plan (n≥8, task taxonomy, trust boundaries)
16. Competitive analysis scope (ConnectWise, Datto, Kaseya)
17. Credit model impact (do autonomous tasks cost more/less than Q&A?)
18. Rollback feasibility (which N-central/N-sight APIs support state snapshots?)

### World-Claims Ratio
- **[R]: 5 | [D]: 0 | [A]: 18 | [?]: 18**
- **[A]+[?]: 36/41 = ~88%**

**Flag:** Exceeds 70% caution threshold. Problem statement is unverified. No sourced MSP pain.

---

## Bucket 2: Test-Plan Readiness (Prototype Validation)

### [R] — Verified (0 claims)
*(No test plan exists at Tier 1 fidelity)*

### [D] — Data (0 claims)
*(No baseline metrics for testing)*

### [A] — Assumed (2 claims)
1. Tier 1 definition of done: Domain model defined, three-gate analysis complete, gap inventory named, [A]+[?] ratio calculated
2. Approval fatigue failure mode (if trust boundaries too conservative, tasks never execute)

### [?] — Unknown (9 claims)
1. Sandbox environment for isolated testing
2. Approval flow testing methodology
3. Rollback validation criteria
4. Failure mode testing scenarios
5. Stakeholder validation process
6. Next-gate requirements (MSP interviews, task taxonomy, competitive analysis, credit model analysis, rollback feasibility)
7. Approval UX design (in-app? Email? Slack?)
8. Rollback UX design (success notification? impossible-to-rollback handling?)
9. Latency acceptance criteria (immediate? 30 seconds? 5 minutes?)

### Test-Plan Ratio
- **[R]: 0 | [D]: 0 | [A]: 2 | [?]: 9**
- **[A]+[?]: 11/11 = 100%**

**Flag:** Test plan is entirely undefined at this fidelity. Expected for Tier 1 Concept, but blocks progression to Tier 2 (Direction).

---

## Bucket 3: Meta-TODOs (Brief's Gap Inventory)

From "What's Missing" section:

### Research Gaps (4 claims)
1. [?] MSP interviews on task frequency, trust boundaries, compliance constraints
2. [?] Behavioral data: % of N-zo recommendations acted upon
3. [?] Time-to-execution baseline
4. [?] Competitive landscape

### Design Gaps (4 claims)
5. [?] Approval UX
6. [?] Rollback UX
7. [?] Policy builder UX
8. [?] ExecutionRecord visibility

### Engineering Gaps (4 claims)
9. [?] N-central/N-sight API coverage for autonomous actions
10. [?] Rollback implementation feasibility
11. [?] Credit model impact
12. [?] Latency acceptance criteria

### Business Gaps (4 claims)
13. [?] Revenue model (included in current pricing or premium tier?)
14. [?] Support impact forecast
15. [?] Go-to-market segmentation
16. [?] Early access targeting

### Meta-TODOs Total
- **[?]: 16 additional claims**

---

## Combined Ratios (All Three Buckets)

### If Including Meta-TODOs (Inflated Ratio)
- **[R]: 5 | [D]: 0 | [A]: 20 | [?]: 34**
- **[A]+[?]: 54/59 = ~92%**

### Excluding Meta-TODOs (World + Test Plan Only)
- **[R]: 5 | [D]: 0 | [A]: 20 | [?]: 27**
- **[A]+[?]: 47/52 = ~90%**

---

## Verdict

**Lead number: 88% [A]+[?] in world-claims bucket.**

This brief is thin. The problem statement itself is unverified — no sourced MSP pain, no task taxonomy, no behavioral data on how technicians use current N-zo recommendations. Tier 1 Concept (30% fidelity) expects high assumption, but **>70% signals the problem is speculative**, not validated.

**Do not proceed to Tier 2 (Direction / 60% fidelity) without:**
1. MSP interviews (n≥8) validating the problem and trust boundaries
2. Behavioral baseline from current N-zo usage analytics
3. Competitive analysis (table stakes vs. differentiator?)
4. Engineering feasibility (API coverage, rollback support)

**This brief is a skeleton for research, not a spec for shipping.**

---

**End of Math Recount**
