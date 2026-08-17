---
feature: "ACP Headless Agent Dashboard"
gate: 30
fidelity: "Tier 1 — Concept"
owner: "Nicole Reineke"
problem_statement: "MSPs spend enormous time on repeatable operational tasks across multiple product surfaces (UEM, Cove, Adlumin). They must context-switch between tools, remember where controls live, and manually translate monitoring alerts into remediation steps."
okr_objective: "Validate whether MSPs will adopt a headless agent model where the ACP is the only interface they touch"
okr_key_result: "5 MSPs complete walkthroughs and rate 'would use this instead of opening products directly' ≥4/5 within 4 weeks"
counter_metric: "Time to value for new MSP onboarding must not increase (baseline: TBD)"
evidence_sources: ["01-control-plane.md", "02-ai-coworker.md", "02-coworker.md", "03-runbook.md", "03-runbooks.md", "04-apex-bridge-poc.md", "05-apex-bridge-unlock.md", "06-apex-bridge-adoption.md"]
status: "rerun-2026-05-28"
prior_runs:
  - "2026-05-27: claimed 55% [A]+[?] — wrong"
  - "2026-05-28 first pass: claimed 82% [A]+[?] — also wrong, conflated world-claims with meta-TODOs"
  - "2026-05-28 second pass: split into three numbers, lead with world-claims"
---

# ACP Headless Agent Dashboard — Three-Gate Brief

**Evidence ratios (grep-verified, three categories — see `experiments/.../math-recount.md` for full work):**

| What is measured | Calc | Ratio |
|---|---|---|
| World-claims about MSPs/market | 7 of 10 [A] or [?] | **70%** |
| Test-plan readiness | 5 of 8 [A] or [?] | **63%** |
| Plus meta-TODOs (gap inventory) | 28 of 34 | 82% — *this number is misleading; it counts the brief's transparency as a deficit* |

**Lead number: 70% [A]+[?] on world-claims.** 3 of 10 are sourced [R] (Control Plane, Coworker, Value Ledger docs). 7 of 10 are unverified hypotheses about MSP behavior. This is high but appropriate for Tier 1 (Concept) — the hypothesis is what's being tested.

**Gap inventory: 16 named [?] or [A] in "Known Gaps" + "What's Missing."** These are not evidence deficits — they are deliberate scope markers for Tier 2.

**Gate 1 still passes for Tier 1 exploratory prototype.** Two prior reporting failures (55% → 82%) led with the wrong number. This pass leads with 70% on world-claims and names the meta-TODO inflation.

This brief tests whether "ACP-First MSP" — where MSPs never open UEM, Cove, or Adlumin and interact only with AI Coworkers through the ACP — is a resonant vision worth building toward.

---

## Gate 1 — Problem

**Is the problem real and sourced, or assumed?**

MSPs operate across fragmented product surfaces. [R] Nicole's Coworker doc states: "MSPs spend enormous time on repeatable operational tasks." [CS: HIGH — sourced from product team positioning doc]

The claim that MSPs lose productivity to tool-switching is assumed based on common MSP workflow patterns. [A] No interview data confirming MSPs want a single control surface instead of product-native UIs.

The claim that MSPs trust product UIs more than agent-mediated interfaces is unknown. [?] Trust model (L0–L4 earned autonomy) has not been tested with MSPs. [CS: MEDIUM — concept sourced from Ewan Cameron experiment, not field-tested]

The specific friction points — where MSPs get stuck switching between Adlumin/Cove/UEM — are not documented. [?] We don't know which tasks hurt most or which products they avoid opening.

The problem statement assumes MSPs will prefer headless operation. [A] This is the hypothesis being tested, not a validated pain point.

**Gate 1 assessment for Tier 1:** Passes. Concept-tier prototypes exist to make assumptions visible and testable. World-claim [A]+[?] ratio of 70% (7 of 10) is expected at this fidelity — but must drop below 40% before Tier 2 (Direction) ships.

---

## Gate 2 — Right Thing

**Does this advance the mission? What outcome moves?**

N-able's mission (assumed): Reduce MSP operational burden through automation. [A — mission statement not sourced]

This prototype advances that mission if the headless model proves more efficient than multi-tool workflows. [A] Efficiency gain not yet measured.

**What outcome moves:**

- MSPs complete common tasks (patching, remediation, compliance checks) without opening product UIs. [?] Task list not yet defined.
- AI Coworkers handle L1–L2 operational work with graduated trust. [R] Trust model documented in Control Plane doc. [CS: HIGH]
- Value Ledger makes time saved visible and defensible. [R] Concept documented in Coworker doc. [CS: HIGH]

**Alignment risk:**

If MSPs trust product-native UIs more than agent interfaces, headless design removes the safety rail they rely on. [?] Unknown whether MSPs feel safer with visual confirmation in product or with agent audit trails.

If the ACP becomes a single point of failure, MSPs may resist putting all operational control behind one surface. [A] Resilience requirements not documented.

**Gate 2 assessment:** Conditional pass. The mission alignment is strong *if* the trust and efficiency hypotheses hold. Prototype must test those assumptions explicitly.

---

## Gate 3 — Built Right

**Tested how? By whom? What counts as done?**

**Testing plan (Nicole's call):**

- Tier 1 prototype shown to 5 MSPs in moderated walkthroughs. [A] MSP recruitment plan not documented.
- Interview prompts test: "Would you use this instead of opening [product] directly?" [A] Full interview guide not written.
- Success = ≥4/5 average rating on willingness to adopt. [A] Threshold arbitrary; not sourced from adoption benchmarks.

**What counts as done:**

- Working HTML prototype with representative tasks (e.g., patch deployment, security alert triage, compliance check). [A] Task selection not finalized.
- Value Ledger visible per Coworker with time-saved calculations. [R] Concept documented; implementation details TBD.
- Trust-level indicators (L0–L4) shown per AI Expert. [R] Model documented in Control Plane doc.
- Fidelity banner clearly states this is Tier 1 (Concept). [R] Protocol requirement.

**Known gaps:**

- [?] Which MSP segment? (SMB-focused? Enterprise-tier?) Personas not defined.
- [?] Which AI Experts ship in prototype? (Patching Coworker? Security Coworker?) Scope not set.
- [?] How do MSPs override or escalate when they don't trust agent recommendations?
- [?] What happens when a Coworker fails? Error states not designed.
- [?] How do MSPs audit what Coworkers did? Audit trail design not specified.

**Gate 3 assessment:** Does not pass for production. Passes for Tier 1 concept validation if testing plan is defined before prototype ships.

---

## Failure Modes

1. **MSPs reject headless model because they trust visual product UIs more than agent logs.** If MSPs feel "blind" without seeing device lists, security graphs, or patch status in-product, the ACP-first model fails regardless of efficiency gains. Mitigation: Prototype must include visual affordances that make agent actions legible (not just logged).

2. **Single point of failure risk kills adoption.** If the ACP is the only interface and it's unavailable, MSPs cannot operate. They may refuse to consolidate control in one surface. Mitigation: Prototype must communicate resilience model (fallback paths, agent queue persistence, offline/online states).

3. **Trust model is too abstract.** If MSPs don't understand L0–L4 progression or don't believe the track record data, they won't graduate Coworkers to higher autonomy. Prototype must make trust levels self-evident with concrete examples (e.g., "This Coworker has successfully patched 847 devices with zero rollbacks").

4. **Value Ledger feels like surveillance.** If time-saved metrics are used to justify headcount reduction, MSPs may resist surfacing value data. Mitigation: Frame Value Ledger as MSP's tool to demonstrate their efficiency to customers, not as management oversight.

---

## What's Missing

- [?] MSP interview data on current tool-switching pain
- [?] Baseline time-to-value for new MSP onboarding (counter metric has no baseline)
- [?] MSP segment and persona definition
- [?] Task scope for prototype (which workflows? which products?)
- [?] Error and escalation interaction design
- [?] Audit trail design (how do MSPs see what Coworkers did?)
- [?] Resilience model (what happens if ACP is unavailable?)
- [?] Competitive landscape (do other RMM/security vendors offer headless agent models?)
- [A] Full interview guide for MSP testing
- [A] Recruitment plan for 5 MSPs
- [A] Success threshold sourced from adoption benchmarks

---

## Recommendation

**Proceed to build Tier 1 prototype** with the following constraints:

1. Limit scope to 2–3 representative tasks (e.g., patch deployment, security alert triage, compliance check).
2. Include visual affordances that make agent actions legible (device lists affected, status changes, recommended next steps).
3. Make trust levels self-evident with example track records.
4. Include error state and escalation path in at least one workflow.
5. Pair prototype with structured interview guide that tests adoption willingness and trust thresholds.
6. Name [A]+[?] ratio in prototype rail so Nicole and team know what questions the prototype must answer.

**This is a good use of a Tier 1 prototype.** The [A]+[?] ratio is high because the hypothesis *should* be tested before building production architecture. Do not skip MSP walkthroughs. The vision is coherent; the adoption risk is real.
