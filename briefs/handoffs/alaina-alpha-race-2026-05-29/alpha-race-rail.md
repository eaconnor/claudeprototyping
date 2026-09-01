# Bradley Rail — Alpha RACE Design Review for Alaina

**Extracted from:** `index-alaina.html` (lines 786-886)  
**Audience:** Alaina (internal designer)  
**Status:** Tier 1 Concept (30% fidelity)

---

## For Alaina

**Badge:** Design Review

**Purpose:**  
This prototype surfaces three design tensions from the brief. Evaluate whether the UI makes these tensions visible enough for decision-making.

---

## What This Prototype Tests

Single-screen incident detail view showing alert consolidation (47→12). Designed to answer: **Does the customer comprehend consolidation value without explanation?**

**Evidence ratio:** 58% [A]+[?] (world-claims) — concept-level fidelity. Four blocking decisions unresolved (customer profile, success criteria, incident story source, narrative format).

---

## Three Design Tensions to Evaluate

### Tension 1: JOBS vs SDT

**JOBS says:** Alpha solves triage speed (functional job).

**SDT says:** Override-logging may feel like surveillance, not autonomy-support.

**Design question:** Is override-logging shown in the UI? If yes, is it framed as audit log (neutral) or performance tracking (threatening)?

**Evaluate:** Does the UI show logging, or imply it? How does it feel — supportive or surveilling?

---

### Tension 2: SIGN vs JRNY

**SIGN says:** Customer reads "47→12" and infers workload reduction.

**JRNY says:** Reading order is uncontrolled. Customer may anchor to Timeline and ignore Story.

**Design question:** Should Story / Timeline / Scoring sections each stand alone (modular), or require linear reading (sequential)?

**Evaluate:** Cover two of the three sections. Can you still understand what Alpha does from the remaining section alone?

---

### Tension 3: PORT vs POS

**PORT says:** Alpha is Type 7+9 Doblin (easily copied). Short competitive lead (12–18 months [A]).

**POS says:** Alpha is Early Adopter stage. Moore warns: Early Majority expects polish. T1 fidelity loses them.

**Design question:** Should the prototype look "rough-edged" (Early Adopter signal) or "polished" (Early Majority signal)?

**Evaluate:** Is the fidelity banner shown to customer or hidden? If shown, what does SE say when customer asks what Tier 1 means?

---

## Validation Questions for You

- **Comprehension test:** Show "47→12" to 5 people (cold, 30 sec). Can ≥4 explain consolidation without prompting?
- **Believability test:** Does the incident story look like real Alpha output, or smell like design fiction?
- **Reading order test:** Remove one section at a time. Does Story-only work? Timeline-only? Scoring-only?
- **Economic buyer test:** Cover the Story section. Do Timeline + Scoring address CISO concerns (cost, compliance, SLA)?

---

## Do NOT Design Yet

- **Customer-specific content:** Decision 1 unresolved. Use generic placeholder ("Acme Building Supply") and mark as [TBD].
- **Uniqueness:** Competitive map missing. Design for execution quality (speed, clarity, trust), not novelty.
- **Economic buyer section:** Decision 4 unresolved. Flag where CISO section would go; do not build it yet.
- **Narrative voice:** Decision 3 unresolved. If real output (Option A), voice is determined by engine. If synthetic (Option B), must roughen to avoid "too polished" smell.

---

## Routing Cards

### Design (Alaina) Does

**Evaluate:** Do the three design tensions surface clearly enough to inform decisions?

**Why now:** Four blocking decisions must resolve before T2 build. Design can flag tension visibility gaps now. [R]

**If you ship without it:** T2 build invests in structure (multi-page, wizards) without knowing which tensions matter most. Design rework.

**Attribution:** 60% Beth

---

### Product (Beth + Raj) Does

**Resolve:** Decision 1 (customer profile) + Decision 2 (success criteria) + Decision 3 (incident story source).

**Why now:** Brief is 58% [A]+[?]. Cannot build T2 until decisions resolve and brief reruns to <40% [A]+[?]. [R]

**If you ship without it:** Prototype stays generic ("Acme Building Supply"). Customer asks "whose industry is this?" Credibility collapses mid-demo. [A]

**Attribution:** 80% Beth

---

### Research (if available) Does

**Run:** Comprehension test (does "47→12" land?) + Competitive teardown (CrowdStrike, Arctic Wolf, Huntress parity check).

**Why now:** Theory of Change has three untested leaps. Leap 1 (comprehension) is testable now with 5 people and 30 seconds. [A]

**If you skip it:** Demo assumes customer understands consolidation. If wrong, demo fails immediately and no learning happens. [A]

**Attribution:** 75% Beth

---

## ROI (Honest)

**Business:** Unknown — contract signature criteria undefined (Decision 2). Lead indicator (next meeting commitment) measurable but not yet defined. [?]

**User (analyst):** Time savings quantified (42m → 17m per incident) [D], but not customer-validated. Alert fatigue reduction claimed [A] but not measured. [CS: MEDIUM to UNKNOWN]

**Unknown:** Economic buyer (CISO) ROI unmapped. Cost-per-incident, audit-log value, analyst retention, SLA defensibility — all absent from current design. [?]

---

**End of Bradley rail.**
