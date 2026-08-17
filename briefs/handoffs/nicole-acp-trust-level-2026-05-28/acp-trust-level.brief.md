---
feature: "ACP Trust-Level Model UI"
gate: 60
fidelity: "Tier 2 — Direction"
owner: "Nicole Reineke"
problem_statement: "MSPs need to understand why an AI Coworker is allowed to execute autonomously vs. requiring human approval, but the trust-level calculation is currently invisible. Without transparency into the math, MSPs may either under-trust (forcing manual approval on safe tasks) or over-trust (allowing execution on risky tasks without understanding the boundaries)."
okr_objective: "Increase MSP confidence in AI Coworker autonomy decisions"
okr_key_result: "70% of MSPs in beta testing report understanding why their coworker's trust level changed after viewing the calculation breakdown (Q3 2026)"
counter_metric: "Time spent reviewing trust-level UI does not increase average task completion time by >10%"
idea_score: 
evidence_sources: ["01-control-plane.md", "02-coworker.md", "03-runbooks.md"]
status: "draft"
---

# ACP Trust-Level Model UI — Three-Gate Brief

**Fidelity level:** Tier 2 — Direction  
**[A]+[?] percentage:** 55% (11 of 20 tagged claims)  
**Gate readiness:** PASSES for Tier 2 prototype (40-60% expected at this stage)

---

## Gate 1 — Problem: Is it real and sourced?

### The Problem
MSPs spend enormous time on repeatable operational tasks. [R — Confluence, AI Coworker Description, Problem Statement section] AI Coworkers are designed to reduce the number of technicians needed to deliver services. [R — same source, Value Statement]

AI Experts and Coworkers can graduate from "human confirms" to "AI executes, human audits" based on track record. [R — Control Plane doc, Ewan Cameron experiment] This is the L4 earned autonomy model. [R — same]

**The invisible calculation:** The trust score combines five components: track record, risk classification, scope boundaries, escalation rules, and audit trail. [R — Control Plane doc, Trust-Level Calculation Components] But there is no evidence in the source material that MSPs currently struggle to understand trust levels. [?]

**Assumed problem:** Without transparency, MSPs may under-trust (forcing manual approval on safe tasks) or over-trust (allowing execution on risky tasks). [A — not sourced; logical extension of earned autonomy model]

**Real or assumed?** The architecture for trust-level calculation exists. [R] The L4 earned autonomy concept has been validated as "self-evident UX" for mature MSPs. [R — Ewan Cameron experiment] But we have no user research showing MSPs *asked* to see the math. [?]

### Failure Mode 1: Cognitive Load Without Benefit
If MSPs don't care why the score is what it is — if they only care about the outcome ("can I trust this?") — then surfacing the calculation creates work without value. [A]

### Failure Mode 2: False Precision
Showing a numeric trust score may imply more precision than the model actually has, especially early in a coworker's lifecycle when track record is thin. [A]

---

## Gate 2 — Right Thing: Does it advance the mission?

### Mission Alignment
Layer 3 monetization (Expert Licensing) depends on MSPs believing that trust level determines how much labor each Expert replaces. [R — Control Plane doc, Monetization Context] If MSPs don't trust the trust level, they won't pay recurring fees for Experts. [A — logical link, not sourced]

The Value Ledger tracks time saved per action and cumulative value over time. [R — Coworker doc] Trust level is the *permission structure* that determines whether that value compounds (AI executes autonomously) or plateaus (human confirms every action). [A]

**What outcome moves:** MSPs graduate more coworkers from L3 (human confirms) to L4 (AI executes, human audits) faster, because they understand the boundaries. [A]

**Counter-metric:** Time spent reviewing trust-level UI does not increase average task completion time by >10%. [A — threshold invented; no baseline data]

---

## Gate 3 — Built Right: How is it tested?

### Testing Plan [A — entire section assumed; no testing plan in source material]
- **Who:** 5-8 MSPs currently in ACP beta (assumes beta exists) [?]
- **What:** Task-based usability test: "Your coworker's trust level just increased from L3 to L4. Why did that happen? What would need to change for it to drop back to L3?"
- **Success criteria:** 70% of participants can correctly identify at least two of the five calculation components (track record, risk classification, scope boundaries, escalation rules, audit trail) without prompting. [A]
- **Failure criteria:** If participants spend >90 seconds reviewing the trust-level breakdown but cannot answer the "why" question, the UI is creating cognitive load without delivering comprehension. [A]

### What Counts as Done [A]
- Working HTML prototype with fictional seed data (coworker name, task category, trust score components)
- Bradley rail with readiness badge (Tier 2 — Direction)
- Post-build critic pass with delta table vs. pre-build scorecard
- Handoff packet for Nicole Reineke with verified math (no invented percentages in seed data)

---

## What's Missing

1. **User research on trust transparency.** Do MSPs want to see the math, or do they just want to know "safe to proceed"? [?]
2. **Baseline trust-level data.** What percentage of coworkers are currently at L3 vs. L4? How long does graduation typically take? [?]
3. **Testing plan.** Is there an active ACP beta? Who are the participants? [?]
4. **Design precedent.** Have we tested any similar "show your work" UI in other N-able products? What did we learn? [?]
5. **Risk taxonomy.** The source mentions "risk classification" as a trust component, but doesn't define the risk categories. Are they severity-based? Scope-based? Reversibility-based? [?]
6. **Threshold logic.** At what point does a coworker graduate from L3 to L4? Is it a fixed threshold (e.g., 95% success rate over 30 days) or adaptive? [?]
7. **Rollback conditions.** If a coworker at L4 makes a mistake, does it drop back to L3 immediately, or is there a grace period? [?]

---

## Evidence Ratio

**Total claims:** 20  
**[R] Research/sourced:** 9 (45%)  
**[D] Data:** 0 (0%)  
**[A] Assumed:** 9 (45%)  
**[?] Unknown:** 2 (10%)

**[A]+[?] total:** 55%

**Readiness:** This brief passes the gate for Tier 2 (Direction) prototyping. We are testing whether surfacing the calculation builds confidence or creates cognitive load. The prototype is a research instrument, not a production spec. The high [A] ratio is appropriate at this fidelity level.

---

## Next Steps After Prototype

If the prototype tests well:
1. **Run discovery research** — 8-10 MSPs, mix of new and experienced ACP users. Task: "Walk me through how you decide whether to let this coworker execute autonomously."
2. **Define risk taxonomy** — Engineering + Product workshop to map risk categories to trust-level thresholds.
3. **Instrument the real trust-level calculation** — Pull live data from ACP backend to establish baseline graduation rates.
4. **Design for failure** — What does the UI show when a coworker at L4 makes a mistake? Rollback notification? Audit log surface?

If the prototype tests poorly (cognitive load without comprehension):
1. **Simplify to outcome-only UI** — "This coworker is trusted to execute autonomously. View details →" (collapsed by default)
2. **Test trust indicators instead of numeric score** — Icon/badge system (e.g., "Supervised" / "Trusted" / "Autonomous") without exposing calculation.
