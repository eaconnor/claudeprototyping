# Handoff — Alpha RACE Lo-Fi for Alaina

**To:** Alaina  
**From:** Beth Schwindt  
**Date:** 2026-05-29  
**Status:** Tier 1 Concept

---

## What this is

A single-screen incident detail view prototype showing Alpha RACE's alert consolidation capability (47 alerts → 12 incidents) with narrative transparency. Built for internal design review with Alaina to evaluate whether three design tensions surface clearly enough in the UI for decision-making. Not customer-ready until four blocking decisions resolve.

---

## What's verified

### Math (grep-verified against source files)
- **[A]+[?] ratio:** 58% (world-claims) — verified in `briefs/alpha-race-math-recount.md` line 101
- **Fidelity level:** 30% / T1 Concept — appropriate for internal design review, not customer demo
- **Critic scores (pre → post):** 20/30 → 22/30 (+2 points)
  - Demo-ability: 4/5 → 5/5 (+1) — fully functional HTML with rail + tensions + fidelity banner delivered
  - Scope discipline: 3/5 → 4/5 (+1) — single-screen constraint respected, no feature creep, decisions flagged as [TBD]
  - All other dimensions stable (Coherence 4/5, Source-fidelity 2/5, Differentiation 2/5, Risk 5/5)
- **Council:** 44 voices (6 full Owensings + 38 abbreviated), 3 productive tensions in crosstalk
- **Consolidation ratio:** 47 alerts → 12 incidents — verified in brief line 11 (Black Team PUT-1166)
- **Investigation time:** 42min → 17min (25min saved) — verified in brief line 32-33 (Black Team metrics, [CS: MEDIUM])

### Evidence state
- **Source-fidelity score:** 2/5 — Content remains placeholder ("Acme Building Supply [TBD]"). Fidelity banner flags three gaps: customer profile, success criteria, incident story.
- **Four blocking decisions unresolved:** Customer profile (Decision 1), Success criteria (Decision 2), Incident story source (Decision 3), Narrative format validation (Decision 4).
- **Gate 3 nearly empty:** Test plan designed but not executed. Comprehension test, believability test, reading order test, economic buyer validation — all [A] (designed) or [?] (unwritten).

---

## Tensions named

### 1. JOBS (functional job) vs SDT (autonomy threat)
**JOBS says:** Alpha solves triage speed (functional job). The functional job for CISO is breach defensibility — override-logging serves CISO's job (audit trail: "we can show the board what our analysts saw and did"). [A]

**SDT says:** Override-logging may erode autonomy if perceived as surveillance. Controlled-autonomy (autonomy under surveillance) undermines intrinsic motivation. [CS: HIGH — Deci/Ryan research]

**Unresolved:** Does logging analyst overrides increase or decrease trust? [?] Design that serves CISO's functional job (defensibility) may undermine analyst's autonomy need (surveillance perception). Both readings are valid.

**Design question for Alaina:** Does the UI show override-logging, or imply it? If shown, is it framed as audit log (neutral, compliance-framed) or performance tracking (threatening, surveillance-framed)?

---

### 2. SIGN (narrative anchor) vs JRNY (reading order)
**SIGN says:** Customer reads "47→12" and infers workload reduction. Alternative reading: "What happened to the other 35 alerts?" (opacity risk). Cannot predict which reading dominates without comprehension testing. [Cannot see — Mode 1 Semiotics gap]

**JRNY says:** Reading order determines interpretation. If analyst reads Story first (narrative: "What happened / What we did / What to do next"), "47→12" becomes context for the story (supporting detail). Interpretation: workload reduction. If analyst reads Timeline first (procedural log), "47→12" is encountered cold, without narrative framing. Interpretation risk: opacity. [A]

**Unresolved:** A/B test Story-only vs Timeline-only to determine if both are needed. [A] Entry-point design (how does analyst land on this screen?) controls interpretation risk. [A] Prototype does not show Entry. [CS: VERIFIED — JRNY cluster, UX 5Es gap]

**Design question for Alaina:** Should Story / Timeline / Scoring sections each stand alone (modular), or require linear reading (sequential)? If customer anchors to Timeline and ignores Story, does the tool still make sense?

---

### 3. PORT (sustaining innovation) vs POS (Early Adopter stage)
**PORT says:** Alpha is Doblin Type 7+9 (Product Performance + Customer Engagement), both easily copied. [A] Short competitive lead (12–18 months per Wardley, [A]). Strategy: sell on urgency ("get this capability before competitors do"). For urgency-based sale, rough prototype is acceptable — it signals "early access, customer shapes the product." [A]

**POS says:** Alpha is Early Adopter stage. [R] Chasm = gap between Early Adopter (tolerates rough edges) and Early Majority (expects whole product). [CS: HIGH — Moore framework] If demo customer is Early Majority (Decision 1 unresolved [?]), T1 fidelity loses credibility. Customer expects integrations, pricing clarity, training, support. Rough prototype signals "not ready," not "early access." [A]

**Contradiction:** PORT says rough prototype supports urgency sale (Early Adopter strategy). POS says rough prototype loses Early Majority customers (whole product required). This is a sourced contradiction requiring a business decision, not a research question. [A]

**Design question for Alaina:** Should the prototype look "rough-edged" (Early Adopter signal: this is cutting-edge, tolerate incompleteness) or "polished" (Early Majority signal: this is production-ready, trust us)? Fidelity is a product positioning signal, not just aesthetics. Is the fidelity banner ("Tier 1 Concept — lo-fi stakeholder/exec review") shown to customer, or hidden? If shown, what does SE say when customer asks what Tier 1 means?

---

### 4. Narrative clarity (transparency value prop) vs economic buyer gap
**Brief claims:** Transparency UI supports analyst competence (JOBS cluster: "feel in control during alert surge"). Narrative format ("What happened / What we did / What to do next") shipped to analysts (users). [R]

**Gap:** Showing narrative to customers (buyers) is a different claim requiring validation. [A] Economic buyer (CISO) may not see ROI, audit-log value, or breach-prevention defensibility in analyst-facing narrative. [A] Demo may win analyst enthusiasm but lose economic buyer approval. [A]

**Design question for Alaina:** Cover the Story section (analyst-facing narrative). Look at Timeline + Scoring only. If you're a CISO who cares about cost, compliance, and SLA defensibility — do you see your concerns addressed here? If no, flag as Failure Mode 4 risk (selling to wrong buyer).

---

### 5. Synthetic data credibility threshold (Mode 4 Kumar hypothesis)
**Mode 4 (Kumar) warns:** Synthetic data has a credibility threshold. Too polished = smells like design. [A] Current story is Beth-written (trained writer) and may read as "too clean to be real." [A]

**Gap:** Decision 3 unresolved. Real Alpha output (Option A) or Beth-designed synthetic (Option B)? If real output, narrative voice is determined by engine. If synthetic, must roughen to avoid "too polished" smell (add typo, add ambiguous log entry). [A]

**Design question for Alaina:** Show incident story to yourself (or 5 MDR analysts if available). Ask: "Does this look like real Alpha output, or does it smell like design fiction?" Pass: "real" or "plausibly real." Fail: "too clean" or "no way an AI wrote this."

---

## Three calls

### Call 1 (for Alaina): Design tension validation
**Owner:** Alaina  
**Action:** Evaluate whether the three design tensions (JOBS vs SDT, SIGN vs JRNY, PORT vs POS) surface clearly enough in the UI for decision-making. Run four validation tests:
  1. **Comprehension test:** Show "47→12" consolidation visual to 5 people (cold, 30 sec). Ask: "What does this tool do?" Pass: ≥4 can explain consolidation + analyst workload reduction without prompting.
  2. **Believability test:** Does incident story look like real Alpha output, or smell like design fiction?
  3. **Reading order test:** Cover two of three sections (Story / Timeline / Scoring). Can you understand what Alpha does from one section alone?
  4. **Economic buyer test:** Cover Story section. Do Timeline + Scoring address CISO concerns (cost, compliance, SLA)?

**Why now:** Four blocking decisions must resolve before T2 build. Design can flag tension visibility gaps now (before investing in multi-page structure, wizards, or expanded content). [R]

**If unresolved:** T2 build invests in structure without knowing which tensions matter most. Design rework after build ships. [A]

---

### Call 2 (for Beth + Product): Resolve blocking decisions 1-4
**Owner:** Beth Schwindt + Raj Dhesi + Sales/CSM input (Decision 1, 2) + Research if available (Decision 4)  
**Action:** Resolve four blocking decisions:
  1. **Decision 1 (customer profile):** Actual customer vertical, endpoint count, SOC maturity, tooling, and fictional proxy profile for prototype content. Every content decision (asset type, attack surface, score context) scales from this call. [A]
  2. **Decision 2 (success criteria):** One sentence: "This demo succeeds when ___." Without this anchor, prototype cannot be validated and "it went well" means nothing. [A]
  3. **Decision 3 (incident story source):** Real Alpha output (anonymized) or Beth-designed synthetic? Credibility hinges on this. If story is too polished, it smells synthetic. If too rough, it may expose Alpha's current limitations.
  4. **Decision 4 (narrative format validation):** Does "What happened / What we did / What to do next" format work for buyers (CISOs), or only users (analysts)? Test with 5-10 MDR analysts + Research if available.

**Why now:** Brief is 58% [A]+[?]. Cannot build T2 until decisions resolve and brief reruns to <40% [A]+[?]. [R — Band Protocol threshold documented in CLAUDE.md]

**If unresolved:** Prototype stays generic ("Acme Building Supply"). Customer asks "whose industry is this?" and credibility collapses mid-presentation. Demo runs with no success criteria — no way to distinguish real interest from polite deflection (Failure Mode 2: evidence-free conviction). [A]

---

### Call 3 (for Research or Beth): Run comprehension test + competitive teardown
**Owner:** Research (if available) OR Beth Schwindt + 5 people (comprehension test) + Competitive intelligence (teardown)  
**Action:**
  1. **Comprehension test:** Show "47→12 alerts consolidated into 12 incidents" screen to 5 people (cold, no context). 30 seconds. Ask: "What does this tool do?" Pass: ≥4 can explain consolidation + analyst workload reduction. Fail: <4 comprehend, or alternative reading dominates ("What happened to the other 35 alerts?" opacity risk).
  2. **Competitive teardown:** Feature matrix for CrowdStrike Falcon Complete, Arctic Wolf, Huntress (alert consolidation + transparency UI parity check). Do competitors ship equivalent features? If yes, Alpha's differentiation is execution quality, not novelty. Design implications: do not design for uniqueness until competitive map exists. [A]

**Why now:** Theory of Change has three untested leaps. Leap 1 (customer comprehends "47→12") is testable now with 5 people and 30 seconds. [A] Competitive map absence means design differentiation is guesswork. If competitors ship equivalent UI within 12–18 months, Alpha's edge is execution speed, not feature set. [A]

**If unresolved:** Demo assumes customer understands consolidation. If wrong, demo fails immediately and no learning happens (Failure Mode 2: evidence-free conviction). [A] Design invests in novelty that may already be commoditized. [A]

---

## Next steps

See **NEXT-STEPS.md** for full decision sequencing, Alaina's validation test details, and pipeline re-run plan (T2/T3 thresholds).

---

**End of handoff.**
