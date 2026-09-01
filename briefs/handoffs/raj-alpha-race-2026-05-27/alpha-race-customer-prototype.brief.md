---
feature: "Alpha RACE Customer Prototype — Multi-Event Correlation Dashboard"
gate: 30
owner: "Beth"
problem_statement: "MDR analysts and customers receive individual detections in isolation, even when they're part of the same incident [R: ADL-1839]"
okr_objective: "Demonstrate Alpha's value proposition: analysts investigate incidents, not alerts"
okr_key_result: "[?] Customer signs/expands after prototype demo"
counter_metric: "[?] Cognitive load during demo / prototype comprehension time"
idea_score: null
evidence_sources: ["ADL-1839", "Beth handoff"]
status: "draft"
---

## Gate 1 — Problem

**Is the problem real and sourced?**

Current state [R: ADL-1839]:
- Analysts receive detections in isolation, even when related to same incident
- Causes increased investigation time [R]
- Loss of situational awareness [R]
- Redundant escalations/notifications [R]
- Alert fatigue [R]

**Primary impact:**
- Investigation time [R: ADL-1839 states "increased" but no quantified baseline]
- Alert volume [A: implied high, no data cited]
- Customer/analyst satisfaction [A: no measurement cited]

**Use case cited [R: ADL-1839]:**
"Multiple auth anomalies + suspicious process = one lateral-movement incident story"

**Evidence quality: 60% [R], 40% [A] or [?]**
Problem statement is sourced from ticket. Magnitude, frequency, and customer impact are assumed. No customer interviews, support tickets, or analyst time studies cited.

**What's real:**
- Detections currently arrive individually [R]
- Alpha engine exists/is being built [R: ticket in progress, assigned to Raj Dhesi]
- Primary users are MDR analysts, internal beta [R]

**What's assumed:**
- Customer prototype will be effective sales tool [A]
- Demonstrating correlation → customer value perception [A]
- Narrative format (what/why/next) is sufficient for comprehension [A]

---

## Gate 2 — Right Thing

**Does this advance the mission?**

Adlumin mission context [A: not stated in ticket; Beth to confirm]:
- Presumed: reduce SOC burden, improve threat detection, deliver actionable intelligence

Alpha positioning statement [R: ADL-1839]:
"Unlike competitors that send every alert, Alpha consolidates related detections into a ranked incident story, cutting noise dramatically."

**Outcome that moves [A]:**
- Sales: Customer signs or expands after seeing prototype
- Product: Validates Alpha's value prop before GA launch
- Strategic: Differentiator vs. "alert firehose" competitors

**This prototype serves sales validation, not product discovery.** [A: Beth's stated intent is "show a customer"]

**Alignment check [?]:**
- Is customer target profile defined? (Company size, current SOC maturity, pain threshold)
- Is this prototype for one specific customer or a reusable demo?
- What decision does the customer make after seeing this?

---

## Gate 3 — Built Right

**How is this tested? By whom? What counts as done?**

Success criteria from ADL-1839 [R]:
- Multiple detections → one correlated incident ✓
- Complete narrative view (what/why/next) ✓
- Example: lateral movement incident story ✓

**Prototype-specific success [?]:**
- Customer comprehends the incident story in <X seconds/minutes [?]
- Customer can articulate value prop back to Beth [?]
- Prototype triggers follow-up meeting / commitment to pilot [?]

**Testing approach [A: not defined]:**
- Internal review (Beth + ?)
- Dry run with sales/CSM team?
- Live demo with customer (which one?)

**What counts as done [?]:**
- HTML prototype showing:
  - Before view: X individual alerts [? — how many? which types?]
  - After view: 1 consolidated incident story with narrative
  - Risk scoring visualization [? — format undefined]
  - Timeline or event sequence [? — UI pattern not specified]

**Who validates [?]:**
- Beth (design fidelity)
- Sales/CSM (customer-facing accuracy)
- Raj Dhesi or Alpha product owner (technical accuracy)
- Customer (comprehension and perceived value)

---

## Failure Modes

1. **Prototype shows capability, not value.** Customer sees "cool tech" but doesn't connect to their pain. No analyst time saved, no alert fatigue reduced — just a different UI for the same work.

2. **Narrative is too simple or too complex.** Too simple: customer dismisses as trivial correlation. Too complex: cognitive load during demo prevents comprehension. The "what/why/next" structure is assumed effective [A], not tested.

3. **Customer asks "how does Alpha know these events are related?"** Prototype shows output but not confidence/accuracy. If correlation logic is opaque and customer doesn't trust it, value prop collapses.

4. **Prototype is static; customer wants to "try it."** If customer expects interactivity (filter incidents, drill into detections, adjust scoring) and prototype is a fixed HTML demo, engagement drops.

---

## What's Missing

**Customer context:**
- Who is the customer? (Industry, size, current tooling)
- What is their current alert volume and investigation workflow?
- What triggers the buying decision? (Pain threshold, budget cycle, incumbent dissatisfaction)

**Prototype scope:**
- How many incident stories to show? (1 detailed example vs. list of 5-10?)
- Real vs. synthetic data? (If synthetic, does it map to customer's environment?)
- Interactive vs. static? (Click-through or screenshot walkthrough?)

**Success measurement:**
- What does Beth need to learn from this prototype demo?
- What commitment/next step counts as success?
- How will Beth know if the narrative structure works?

**Alpha product state:**
- Is correlation engine functional enough to generate real incident stories?
- Is this prototype ahead of product readiness? (Selling future capability vs. current state)

**Handoff dependencies:**
- Does Raj/Alpha team provide sample correlated incidents, or does Beth invent them?
- Does Sales/CSM team brief Beth on customer's specific pain points before demo?

---

## Evidence Summary

| Claim Type | Count | % |
|------------|-------|---|
| [R] Research/Sourced | 9 | 35% |
| [D] Data | 0 | 0% |
| [A] Assumed | 12 | 46% |
| [?] Unknown | 5 | 19% |

**This brief is not ready for build.** 65% of claims are assumed or unknown. Gate 1 problem is sourced from ticket but lacks customer validation. Gate 3 (how to test, what counts as done) is mostly undefined.

**Next steps before build:**
1. Beth confirms: which customer, what decision, what context
2. Define success: what does customer need to understand/feel/do after seeing prototype
3. Source incident story content: real Alpha output or Beth-designed synthetic example
4. Validate narrative structure: has "what/why/next" been tested with any analyst or customer?

**Brief status: DRAFT — needs customer context and success criteria before proceeding to build.**
