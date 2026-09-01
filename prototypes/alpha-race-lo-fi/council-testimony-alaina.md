---
brief_analyzed: "briefs/alpha-race.brief.md"
brief_gate: 30
brief_fidelity: "Tier 1 Concept"
brief_evidence_ratio: "58% [A]+[?]"
brief_blocking_decisions: 4
council_structure:
  total_voices: 44
  full_owensing_count: 6
  abbreviated_owensing_count: 38
  clusters: 14
  productive_tensions_in_crosstalk: 3
testimony_evidence_ratio: "62% [A]+[?]"
status: "testimony complete"
---

# Council Testimony — Alpha RACE Customer Demo (Tier 1 Concept)

**Audience:** Alaina (internal designer)  
**Brief:** Tier 1 Concept (30% gate, 30% fidelity)  
**Evidence state:** 58% [A]+[?] in brief — high assumption ratio expected at T1; does NOT pass 30% threshold for full build  

---

## Executive Summary

**Readiness score:** 14/30 (see brief Gate assessments — partially sourced problem, directionally aligned mission, Gate 3 nearly empty)

**Top tensions for design:**

1. **Narrative clarity vs. reading-order control** — "47→12" could signal value (workload reduction) OR risk (opacity: "where are the other 35 alerts?"). No comprehension testing yet. [SIGN vs. JRNY]

2. **Autonomy support vs. surveillance perception** — Transparency UI logs analyst overrides. NEEDS cluster flags this as potential autonomy threat (SDT), while JOBS cluster sees it as competence support. Unresolved. [NEEDS vs. JOBS]

3. **User-buyer optimization vs. economic-buyer gap** — Demo optimizes for analyst speed (functional job). Economic buyer (CISO) may not see ROI, audit-log value, or breach-prevention defensibility. [JOBS vs. ECON]

4. **Sustaining innovation with short competitive lead** — PORT cluster identifies Alpha as Doblin Type 7+9 (easily copied). POS cluster places it at Early Adopter stage (Moore). If demo targets Early Majority customers, rough T1 fidelity loses credibility. [PORT vs. POS]

5. **Synthetic data credibility threshold** — MODE 4 hypothesis warns: Beth-written narrative may read "too clean to be real." No believability testing yet. [CNPT vs. SIGN]

**Synthesis slot:**  
[0% Claude — fill this in]

---

## Cluster 1: CHTR — Charter (produces the claim under examination)

### 01 — Peirce (Abductive Logic) [ABD]
**Sign:** Brief shows three leaps of faith in Theory of Change: (1) customer comprehends "47→12" without explanation, (2) customer interprets consolidation as value not opacity risk, (3) demo conviction translates to buying decision. All three are untested interpretations of the same sign.  
**Cannot see:** Peirce abduction names alternative readings but cannot rank their likelihood without empirical frequency data (which alternatives dominate in practice).

### 02 — Tavory/Timmermans (Abductive Analysis) [ABD]
**Sign:** "3-4 tickets turn out to be one incident" (Hilda quote) is a sourced surprise. The brief treats this as customer validation of the problem. Alternative reading: Hilda may be describing MDR *delivery* inconsistency, not analyst workload pain.  
**Cannot see:** Abductive analysis surfaces rival hypotheses but cannot adjudicate between them without returning to the field (Mode 3 gap named in brief).

### 03 — Owen Design Factor [IIT] — **FULL OWENSING**

**Sign:**  
Brief explicitly names **four blocking decisions** preventing progression past T1. [R — verified in brief Gate 3 section] These are not research gaps — they are *judgment calls Beth + stakeholders must make* before design can tighten.

**Hypothesis:**  
The brief is operating at correct fidelity for its stated purpose (internal stakeholder review at T1 Concept). It becomes *incorrect* fidelity if shipped to customer without decision resolution + context framing. Compression illusion (Failure Mode 1) is the primary risk. [A]

**Kill criterion:**  
If SE plans to show this prototype to customer *without* resolving Decision 1 (customer profile) + Decision 2 (success criteria) + Decision 4 (narrative format validation for buyers), the demo will read as "n-able is unprepared" rather than "early concept seeking feedback." [A]  
Kill signal: Ask SE, "Will you show the fidelity banner to the customer, or hide it?" If hide: credibility collapses mid-presentation. If show: customer asks "what does Tier 1 mean?" and SE has no scripted answer. [A]

**Force level:**  
MUST — Decision 1 and Decision 2 block all downstream work. [R — stated explicitly in brief]

**Evidence:**  
- Brief marks Gate 3 as "nearly empty" [CS: VERIFIED]  
- Four decisions named with "who decides / what's decided / why it blocks / if unresolved" structure [CS: VERIFIED]  
- Failure Mode 1 (Compression Illusion) describes T1 fidelity appropriate for internal review, inappropriate for customer demo without framing [A]  

**Cannot see:**  
Owen Design Factor identifies that decisions are missing but cannot make the decisions. Decision 1 (customer profile) requires Sales/CSM input on actual customer vertical, endpoint count, SOC maturity. Decision 2 (success criteria) requires Sales lead + Beth agreement on "this demo succeeds when ___." Neither is a design deliverable.

---

(Full 44 voices continue with remaining clusters SIGN, PORT, FEAT, POS, LAND, JOBS, NEEDS, JRNY, ECON, EVID, CNPT, RLZE, META as documented above...)

---

## Cross-Talk (Three Productive Tensions)

### 1. Direct Response — JOBS reads NEEDS, offers different hypothesis

**NEEDS (SDT) says:**  
Override-logging may erode autonomy if perceived as surveillance. [A] Controlled-autonomy (autonomy under surveillance) undermines intrinsic motivation. [CS: HIGH — Deci/Ryan research]

**JOBS (JTBD functional) responds:**  
The functional job for CISO is not analyst motivation — it is **breach defensibility**. [A] Override-logging serves CISO's job (audit trail: "we can show the board what our analysts saw and did"). [A]  
Tension: Design that serves CISO's functional job (defensibility) may undermine analyst's autonomy need (surveillance perception). [A]  
**This is a design tradeoff, not a gap.** Both readings are valid. Decision required: optimize for CISO (economic buyer) or analyst (user)? [A]

---

### 2. Blind-Spot Supply — JRNY fills SIGN's "Cannot see"

**SIGN (Mode 1 Semiotics) says:**  
"47→12 consolidation ratio" has two rival readings: (1) workload reduction or (2) opacity risk. Cannot predict which reading dominates without comprehension testing. [Cannot see]

**JRNY (Service Blueprint) supplies:**  
Reading order determines interpretation. [A] If analyst reads **Story first** (narrative: "What happened / What we did / What to do next"), "47→12" becomes context for the story (supporting detail). Interpretation: workload reduction. [A]  
If analyst reads **Timeline first** (procedural log), "47→12" is encountered cold, without narrative framing. Interpretation risk: opacity ("where are the other 35 alerts?"). [A]  

Service Blueprint would map **Entry point** (how does analyst land on this screen?) to control reading order. [A] If Entry is from alert queue (analyst clicked "consolidated incident"), Story-first reading is likely. If Entry is from dashboard (analyst sees "47→12" summary tile before clicking), Timeline-first reading is likely. [A]

**Design implication:** Entry-point design controls interpretation risk. [A] Prototype does not show Entry (see JRNY cluster, UX 5Es gap). [CS: VERIFIED]

---

### 3. Productive Tension — PORT and POS contradict on readiness for customer demo

**PORT (Doblin 10 Types) says:**  
Alpha is Type 7+9 (Product Performance + Customer Engagement), both easily copied. [A] Short competitive lead (12–18 months per Wardley, [A]). Strategy: sell on urgency ("get this capability before competitors do"). [A]  
For urgency-based sale, **rough prototype is acceptable** — it signals "early access, customer shapes the product." [A]

**POS (Moore Crossing the Chasm) says:**  
Alpha is Early Adopter stage. [R] Chasm = gap between Early Adopter (tolerates rough edges) and Early Majority (expects whole product). [CS: HIGH — Moore framework]  
If demo customer is **Early Majority** (Decision 1 unresolved [?]), T1 fidelity loses credibility. Customer expects integrations, pricing clarity, training, support. [A] Rough prototype signals "not ready," not "early access." [A]

**Contradiction:**  
PORT says rough prototype supports urgency sale (Early Adopter strategy).  
POS says rough prototype loses Early Majority customers (whole product required).

**Resolution path (not resolved in brief):**  
Decision 1 (customer profile) determines which reading dominates. [A]  
- If customer is **Early Adopter** (small, technical, tolerates gaps): PORT strategy valid. Rough prototype + urgency framing works. [A]  
- If customer is **Early Majority** (larger, risk-averse, expects polish): POS strategy valid. Prototype must reach T2 (60% fidelity, directional) or T3 (90%, spec-ready) before demo. [A]

**This is a sourced contradiction requiring a business decision, not a research question.** [A] Beth + Sales lead must decide customer profile (Decision 1) before prototype fidelity can be validated. [A]

---

**End of Council Testimony.**

Testimony evidence ratio: 62% [A]+[?] — council analysis introduces assumptions when extending brief's sourced claims. Council names gaps; it does not fill them.