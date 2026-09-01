# NEXT-STEPS — Alpha RACE Design Review for Alaina

**Status:** Tier 1 Concept (30% fidelity)  
**Date:** 2026-05-29  
**For:** Alaina (internal designer)

---

## Immediate decisions (block T2 build)

These four decisions must resolve before the brief can re-run and the prototype can progress to Tier 2 (60% fidelity, directional).

### Decision 1: Customer profile
**Who decides:** Beth Schwindt + Raj Dhesi + Sales/CSM input  
**What's decided:** Actual customer vertical, endpoint count, SOC maturity, tooling, and fictional proxy profile for prototype content  
**Why it blocks:** Every content decision (asset type, attack surface, score context) scales from this call. Current placeholder ("Acme Building Supply") is generic and unusable for realistic demo.  
**If unresolved:** Demo runs with placeholder content. Customer asks "whose industry is this?" and credibility collapses mid-presentation. [A — from brief Failure Mode 1]  
**Deadline:** Before T2 build begins. If moving to customer demo before T2, this must resolve NOW.

---

### Decision 2: Success criteria
**Who decides:** Beth Schwindt + Sales lead  
**What's decided:** One sentence: "This demo succeeds when ___."  
**Why it blocks:** Without success definition, prototype cannot be validated and "it went well" means nothing. Post-demo, there is no way to distinguish real interest from polite deflection (Failure Mode 2: evidence-free conviction). [A]  
**If unresolved:** Demo runs, customer says "interesting," team interprets politeness as conviction. No learning happens. [A]  
**Deadline:** Before demo is scheduled. If demo already scheduled, this must resolve before demo date.

---

### Decision 3: Incident story source
**Who decides:** Raj Dhesi (Alpha engine) + Beth Schwindt  
**What's decided:** Option A (real Alpha output, anonymized) or Option B (Beth-designed synthetic with credibility mitigations)  
**Why it blocks:** Demo credibility depends on whether story reflects what Alpha actually produces. If customer asks "is this real data?" and SE says "no, it's illustrative," customer infers: Alpha doesn't work yet, or n-able doesn't trust their own output. (Failure Mode 3: trust erosion via synthetic data) [A]  
**If unresolved:** Current story is Beth-written (trained writer) and may read as "too clean to be real." [A] Believability test will fail (Alaina's validation test 2). [A]  
**Deadline:** Before T2 build begins. If Option A (real output), Raj must provide anonymized Alpha output. If Option B (synthetic), Beth must roughen narrative (add typo, add ambiguous log entry) to avoid "too polished" smell.

---

### Decision 4: Narrative format validation
**Who decides:** Beth Schwindt + Research (if available) + 5-10 MDR analyst testers  
**What's decided:** Does "What happened / What we did / What to do next" format work for buyers (CISOs), or only users (analysts)?  
**Why it blocks:** Narrative shipped to analysts (internal users). Showing it to customers (buyers) is a different claim requiring validation. Economic buyer (CISO) may not see ROI, audit-log value, or breach-prevention defensibility in analyst-facing narrative. (Failure Mode 4: selling to wrong buyer) [A]  
**If unresolved:** Demo is user-optimized. Economic buyer (CISO) sits in room and does not see their concerns addressed (cost-per-incident, audit logs, analyst retention, SLA). [A]  
**Deadline:** Before customer demo if CISO/VP Security will attend. Can defer to T2 if demo audience is analysts only.

---

## Alaina's validation tests (can do now)

These tests can run with the current T1 prototype. They do not require decision resolution. Results inform which design tensions matter most.

### Test 1: Comprehension (30-second cold read)
**What:** Show "47 alerts → 12 incidents" consolidation visual (lines 719-729 in index-alaina.html) to 5 people. No context. 30 seconds. Ask: "What does this tool do?"  
**Pass criterion:** ≥4 people can explain consolidation + analyst workload reduction without prompting.  
**Fail criterion:** <4 comprehend, OR alternative reading dominates ("What happened to the other 35 alerts?" — opacity risk).  
**Why run it:** Tests Tension 2 (SIGN vs JRNY). If comprehension fails, the "47→12" visual does not land without narrative framing. Reading order becomes critical (Story must come before consolidation visual). [A]  
**Time required:** 15 minutes (5 people × 3 min each).

---

### Test 2: Believability (synthetic data credibility)
**What:** Show incident story section (lines 732-737 in index-alaina.html) to yourself or 5 MDR analysts (if available). Ask: "Does this look like real Alpha output, or does it smell like design fiction?"  
**Pass criterion:** Respondent says "real" or "plausibly real."  
**Fail criterion:** Respondent says "too clean," "too polished," or "no way an AI wrote this."  
**Why run it:** Tests Tension 5 (synthetic data credibility threshold). If story smells synthetic, Decision 3 must resolve to real Alpha output (Option A) OR synthetic narrative must be roughened (add typo, add ambiguous log entry). [A]  
**Time required:** 5 minutes (self-review) or 30 minutes (5 analysts × 6 min each).

---

### Test 3: Reading order (modular vs sequential)
**What:** Open index-alaina.html in browser. Cover two of the three sections (Story / Timeline / Scoring) using browser DevTools or a sticky note. Can you understand what Alpha does from the remaining section alone?  
**Test variants:**
  - **Story-only:** Hide Timeline + Scoring. Does narrative alone explain Alpha's value?
  - **Timeline-only:** Hide Story + Scoring. Does procedural log alone explain Alpha's value?
  - **Scoring-only:** Hide Story + Timeline. Do confidence/impact/urgency scores alone explain Alpha's value?

**Pass criterion:** At least one section works in isolation. If all three fail, design is fragile under uncontrolled reading order.  
**Fail criterion:** No section works alone. Customer must read all three sections linearly to understand Alpha.  
**Why run it:** Tests Tension 2 (SIGN vs JRNY). If sections cannot stand alone, reading order becomes critical and demo must control Entry (how customer lands on this screen). [A]  
**Time required:** 10 minutes (3 variants × 3 min each).

---

### Test 4: Economic buyer presence (CISO concerns)
**What:** Open index-alaina.html in browser. Cover the Story section (lines 732-737). Look at Timeline (lines 740-755) + Scoring (lines 757-776) only. Ask yourself (or a CISO, if available): "If I care about cost, compliance, and SLA defensibility — do I see my concerns addressed here?"  
**Pass criterion:** Timeline + Scoring address at least one CISO concern (cost-per-incident, audit logs, analyst retention, SLA).  
**Fail criterion:** <30% of screen content addresses economic buyer concerns. Demo is analyst-optimized only. (Failure Mode 4: selling to wrong buyer)  
**Why run it:** Tests Tension 4 (narrative clarity vs economic buyer gap). If CISO will attend demo, prototype needs section addressing their concerns OR SE must script narration to bridge the gap. [A]  
**Time required:** 5 minutes (self-review) or 20 minutes (if CISO available for 1:1 review).

---

## If moving to T2 (60% fidelity, directional)

### Prerequisites
1. **Decisions 1-4 resolved** — Customer profile, success criteria, incident story source, narrative format validation must be decided.
2. **Brief re-run** — Spec agent reruns brief after decisions resolve. Target: <40% [A]+[?] for T2. Current: 58% [A]+[?].
3. **Comprehension test executed** — Test 1 (does "47→12" land?) must run and pass before T2 build.
4. **Competitive teardown** — Feature matrix for CrowdStrike Falcon Complete, Arctic Wolf, Huntress (alert consolidation + transparency UI parity check). If competitors ship equivalent, design for execution quality (speed, clarity, trust), not novelty.

### What changes at T2
- **Fidelity level:** 60% / T2 Directional (mid-fidelity for stakeholder alignment, not customer demo)
- **Content depth:** Customer-specific asset types, attack surface, industry-specific score context (Decision 1 informs all content)
- **Narrative voice:** If Decision 3 resolves to real Alpha output (Option A), narrative is engine-determined. If synthetic (Option B), narrative is roughened to avoid "too polished" smell.
- **Economic buyer section (conditional):** If Decision 4 validates that CISO needs separate value prop, T2 adds fourth section (cost-per-incident, audit logs, analyst retention, SLA). If Decision 4 shows narrative format works for buyers, no change.
- **Multi-page navigation (conditional):** If Alaina's Test 3 (reading order) shows sections cannot stand alone, T2 may add linear wizard (Step 1: Story → Step 2: Timeline → Step 3: Scoring). If sections work in isolation, single-screen stays.

### T2 build gate check
- **Evidence ratio:** <40% [A]+[?] required. If brief re-run yields ≥40%, decisions are still insufficient. More research required.
- **Critic pass:** Pre-build scorecard must show Demo-ability ≥4/5 and Source-fidelity ≥3/5 before build proceeds.
- **Decision 2 verified:** Success criteria must be testable. "Customer expresses interest" is vanity metric (Failure Mode 2). "Customer commits to next meeting (pilot scoping or procurement conversation)" is concrete.

---

## If moving to T3 (90% fidelity, spec-ready / production)

### Prerequisites (all T2 prereqs PLUS)
5. **Mode 3 ethnography** — Shadow 3 MDR analysts, 4 hours each. Map workflow. Identify bottlenecks. Validate that incident detail view (the screen shown in prototype) is the actual bottleneck, not alert queue (before) or escalation handoff (after).
6. **Economic buyer validation** — Rebuild value prop for CISO (cost-per-incident, audit logs, analyst retention, SLA defensibility). Test with 3-5 CISOs or VPs Security.
7. **Kano questionnaire** — 10 analysts, 5-point scale. Classify transparency UI as Basic (must-have) or Attractive (delighter). If Basic, competitors will copy fast. If Attractive, differentiation window is longer.
8. **Service Blueprint** — Map Frontstage (what analyst sees) + Backstage (what Alpha/SOAR do) + Line of Interaction. Identify failure points (what happens if Alpha correlation is wrong? Can analyst override? Is override logged?).
9. **A/B test** — Story-only vs Timeline-only. Run with 20 people (10 per variant). Measure comprehension + time-to-understanding. If both work equally, choose one (reduce cognitive load). If one dominates, kill the other.
10. **Brief re-run** — Target <30% [A]+[?] for T3.

### What changes at T3
- **Fidelity level:** 90% / T3 Spec-ready (production-quality, customer-facing demo)
- **Journey map:** Before (alert queue) → During (incident detail view) → After (escalation handoff). Full workflow shown, not just one screen.
- **Entry-point design:** How does analyst land on incident detail screen? From alert queue (clicked "consolidated incident")? From dashboard (clicked summary tile)? Entry controls reading order (Story-first vs Timeline-first). [A — from JRNY cluster]
- **Override-logging UI:** If Alaina's Test 1 (JOBS vs SDT) shows override-logging feels like surveillance, T3 reframes it as audit log (compliance, neutral). If feels supportive, no change.
- **Real data (conditional):** If Decision 3 resolved to real Alpha output (Option A), T3 uses anonymized real incidents. If synthetic (Option B), credibility mitigations applied (typo, ambiguous log entry, roughened narrative).
- **Competitive differentiation callout (conditional):** If competitive teardown shows Alpha is first-to-market with consolidation + transparency, T3 highlights urgency ("get this before competitors do"). If competitors already ship equivalent, T3 focuses on execution quality (faster, clearer, more trustworthy).

### T3 build gate check
- **Evidence ratio:** <30% [A]+[?] required. This is Band Protocol threshold for production work.
- **Critic pass:** Pre-build scorecard must show Source-fidelity ≥4/5, Demo-ability 5/5, Differentiation ≥3/5.
- **Test plan executed:** Comprehension test, believability test, reading order test, economic buyer test — all run and passed.
- **Success criteria locked:** Decision 2 resolved with concrete commitment metric (not "customer liked it").

---

## Pipeline re-run plan

When to refresh this prototype (re-run scout → spec → critic → build → critic → council):

### Trigger 1: Decisions 1-4 resolve
**What changes:** Content (customer vertical, incident story), success criteria (validation anchor), narrative format (buyer vs user optimization).  
**Pipeline steps to re-run:** Scout (if new source docs), Spec (brief re-run to lower [A]+[?] ratio), Build (content refresh), Critic (post-build re-score).  
**Council:** Re-run if new tensions surface. If tensions stay stable (JOBS/SDT, SIGN/JRNY, PORT/POS), council pass can skip.

---

### Trigger 2: Competitive teardown completes
**What changes:** Differentiation strategy (novelty vs execution quality), fidelity positioning (rough-edged vs polished).  
**Pipeline steps to re-run:** Spec (update Gate 2 competitive landscape section), Council (re-run PORT cluster: Doblin 10 Types, Disruptive Innovation, Wardley Mapping), Critic (Differentiation score should improve from 2/5).

---

### Trigger 3: Mode 3 ethnography completes
**What changes:** Validated bottleneck (incident detail view vs alert queue vs escalation handoff), workflow Entry design, reading order control.  
**Pipeline steps to re-run:** Spec (update Gate 1 with ethnographic evidence), Build (add journey map: before/during/after), Council (re-run JRNY cluster: Service Blueprint, UX 5Es).

---

### Trigger 4: Alaina's validation tests fail
**What changes:** If comprehension test fails (<4/5 comprehend "47→12"), reading order becomes critical. If believability test fails (story smells synthetic), Decision 3 must resolve to real output. If economic buyer test fails (<30% of screen addresses CISO), T2 must add fourth section.  
**Pipeline steps to re-run:** Spec (update Gate 3 test results), Build (structure changes based on test failures), Critic (Demo-ability and Scope discipline may regress if structure changes are large).

---

## ROI targets (honest unknowns)

### Business ROI
- **Current state:** Unknown — contract signature criteria undefined (Decision 2). [?]
- **Lead indicator (measurable now):** Customer commits to next meeting (pilot scoping, technical validation, or procurement conversation). [A]
- **Lagging indicator (requires Decision 2):** Customer signs or expands contract after seeing Alpha demo. [?]

### User (analyst) ROI
- **Current state:** Time savings quantified (42m → 17m per incident, 25min saved). [D — Black Team metrics, CS: MEDIUM] Alert fatigue reduction claimed [A] but not measured. [CS: UNKNOWN]
- **Measurable target:** Reduce median investigation time from 42min to <20min (validated with customer analysts, not just Black Team internal). [A]
- **Gap:** No ethnographic study of analyst emotional state. Alert fatigue described as "emotional, not operational" in council testimony [A] but no validation. [CS: UNKNOWN]

### Economic buyer (CISO) ROI
- **Current state:** Unmapped. Cost-per-incident, audit-log value, analyst retention, SLA defensibility — all absent from prototype. [?]
- **Measurable target (if Decision 4 validates need):** 
  - **Cost-per-incident:** Calculate analyst time savings × hourly cost. 25min × $X/hour = $Y saved per incident. [A]
  - **Audit-log completeness:** Track % of incidents with full analyst override logs (for board reporting, compliance). [A]
  - **Analyst attrition reduction:** Track analyst tenure before/after Alpha rollout. [A]
  - **SLA improvement:** Track % of incidents resolved within SLA before/after Alpha. [A]

---

## Summary

### Immediate (this session)
- Alaina runs four validation tests (comprehension, believability, reading order, economic buyer)
- Beth + Raj + Sales resolve Decisions 1-2 (customer profile, success criteria)

### Before T2
- Decisions 3-4 resolve (incident story source, narrative format validation)
- Comprehension test + competitive teardown complete
- Brief re-runs, target <40% [A]+[?]

### Before T3
- Mode 3 ethnography + economic buyer validation + Kano + Service Blueprint + A/B test complete
- Brief re-runs, target <30% [A]+[?]

### Pipeline re-run triggers
- Decisions resolve, competitive teardown completes, ethnography completes, or Alaina's tests fail

---

**End of NEXT-STEPS.**
