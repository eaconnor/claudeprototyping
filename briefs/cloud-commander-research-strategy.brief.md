---
feature: "Cloud Commander 2024 UX Research Strategy Visualization"
gate: 30
owner: "Beth"
problem_statement: "[A] Researchers need to see research strategy structure at a glance to audit sourcing quality and identify gaps"
okr_objective: "Demonstrate Band Protocol capability to visualize research planning documents"
okr_key_result: "Beth can identify [A] vs [R]/[D] claim ratios in under 60 seconds"
counter_metric: "Cognitive load (if visualization adds confusion rather than clarity)"
idea_score: null
evidence_sources: ["Confluence — Cloud Commander - 2024 UX Research Strategy", "https://n-able.atlassian.net/wiki/spaces/ProdUX/pages/59317715120"]
status: "draft"
---

# Cloud Commander 2024 UX Research Strategy — Prototype Brief

**Fidelity: Tier 1 / Concept (30%)**  
**Prototype purpose:** Demonstrate how Band Protocol visualizes research planning documents to surface sourcing quality.

---

## READINESS WARNING

**World-claims: 82% [A] or [?]**  
**Test-plan: 67% [A] or [?]**  
**Inflated (with gap inventory): 59% [A] or [?]**

This brief is Tier 1 / Concept. High [A]+[?] is expected and acceptable at this stage. The prototype tests whether visualization makes sourcing gaps visible — the source document's thin sourcing is the research finding, not a blocker.

---

## DOMAIN MODEL

### Entities

- **Research Strategy Document** [R] — Planning artifact that outlines learning goals, study roadmap, and baseline metrics
- **Study** [R] — Individual research activity with type, participants, date, and status
- **Learning Goal** [R] — Question the research intends to answer
- **Job Category** [R] — MSP task classification (Manage, Administration, Monitor, Security)
- **Roadmap Item** [R] — Feature planned for release in a future quarter
- **MSP** [R] — Managed Service Provider; Cloud Commander's customer segment
- **CSP** [R] — Cloud Solution Provider; subset of MSPs who resell Microsoft cloud services

### Value Objects

- **SUS Score** [R] — System Usability Scale; standardized usability metric (0-100)
- **CSAT** [R] — Customer Satisfaction; percentage-based satisfaction metric
- **Stickiness** [D] — TPG-defined metric; MAU/DAU ratio [ASSUMPTION: standard definition; doc provides no calculation detail]
- **Baseline Metric** [R] — Starting point measurement for tracking progress
- **Target Metric** [R] — Desired end-state measurement

### Services

- **Study Execution** [A] — Process by which learning goals are translated into completed studies [?] — no process documentation sourced
- **Metric Collection** [?] — How SUS/CSAT are gathered [WOBBLY] — SUS score of 73 with no sample size, method, or CI
- **Roadmap Prioritization** [?] — How roadmap items are sequenced and justified

### Ubiquitous Language

- **"Things that we know"** [WOBBLY] — Section in strategy doc with no sourcing; unclear if research findings, sales feedback, or assumptions
- **"Things that we do not know"** [R] — Explicitly framed unknowns; become learning objectives
- **Generative / Evaluative / Tactical / Strategic** [R] — Study type taxonomy used in doc
- **"Partner"** [R] — N-able's term for MSP/CSP customers

---

## GATE 1 — PROBLEM

### Is visualizing research strategy a real need?

**Claim 1:** Researchers need to audit sourcing quality in strategy documents. [A]  
**Evidence:** No user research provided. Assumption based on Beth's practice as a researcher. [CS: UNKNOWN — Beth's domain]

**Claim 2:** Linear text format obscures sourcing patterns that visualization would surface. [A]  
**Evidence:** No comparative study of text vs. visual strategy review. [CS: UNKNOWN]

**Claim 3:** The Cloud Commander strategy doc has sourcing gaps. [R]  
**Evidence:** Scout extraction confirmed:
- "Things that we know" section provides no research links, dates, or sample sizes [WOBBLY]
- Baseline SUS score (73) has no sample size or confidence interval
- All completed studies (10 total) have no links to findings documents
- Target metrics (SUS 68, CSAT 77%, "Behavioural Measurement 70%") have no rationale

**Claim 4:** Seeing sourcing gaps quickly matters more than reading linearly. [A]  
**Evidence:** No research on researcher cognitive workflow or strategy document review practices.

### Problem statement confidence: 75% [A]

The source document's gaps are real [R]. Whether visualization solves a researcher's actual workflow problem is assumed [A].

---

## GATE 2 — RIGHT THING

### Does this advance the mission?

**Mission:** Demonstrate Band Protocol's capability to work with research planning documents, not just product features.

**Claim 1:** Research strategy is a distinct document type that Band Protocol should handle. [A]  
**Evidence:** No user research on what document types researchers want to visualize. Beth brought this as a test case. [CS: UNKNOWN]

**Claim 2:** Visualizing sourcing quality advances research rigor. [A]  
**Evidence:** Plausible; aligns with evidence-based practice norms. No sourcing provided. [CS: MEDIUM]

**Claim 3:** This prototype demonstrates protocol capability, not a shipped product. [R]  
**Evidence:** Beth's explicit framing in the request.

### Does it advance TPG/UX objectives listed in the source doc?

**TPG Objectives:**
- 1200 MSPs using Cloud Commander [R]
- Self-service onboarding by 50% of population [R]
- Stickiness 30%+ (MAU/DAU) [R]
- Generate 20 blog/SM posts and 30 Boot Camps on Cloud [R]

**This prototype does not directly advance these.** It visualizes the research strategy *about* Cloud Commander; it is not a Cloud Commander feature. [R]

**UX Objectives:**
- Deliver intuitive and user-friendly product experience [R]
- Understand key features partners need to see value [R]
- Develop features satisfying MSP/CSP business needs [R]

**This prototype does not advance these either.** It is a meta-artifact: a tool for Beth the researcher, not for MSPs. [R]

### Right-thing confidence: 100% [R]

The prototype advances *Band Protocol* objectives (demonstrate research doc handling). It does not advance *Cloud Commander product* objectives. These are separate domains. No confusion present.

---

## GATE 3 — BUILT RIGHT

### How will Beth test this?

**Test 1:** Can Beth identify [A] vs [R]/[D] claim ratios in under 60 seconds? [A]  
**Method:** [?] — No test protocol defined. Assumption: Beth will time herself and report.  
**Success criteria:** [?] — "Under 60 seconds" is stated but not validated as meaningful threshold.

**Test 2:** Does visualization surface sourcing gaps faster than reading the Confluence doc linearly? [A]  
**Method:** [?] — No A/B test or comparative protocol defined.  
**Success criteria:** [?] — "Faster" has no baseline or target delta.

**Test 3:** Does Beth find the visualization useful? [A]  
**Method:** [?] — No definition of "useful" or measurement approach.  
**Success criteria:** [?] — Subjective; no rubric provided.

### What counts as done?

**Prototype delivers:**
1. Visual representation of 10 completed studies (Q1-Q4) [R]
2. Display of 7 learning objectives mapped to unknowns [R]
3. Baseline metrics table (SUS 73, CSAT "Not enough data") [R]
4. Target metrics display (SUS 68, CSAT 77%, Behavioural 70%) [R]
5. Roadmap items for Q3-Q4 (8 features) [R]
6. Sourcing tags visible inline: [R] [D] [A] [?] [WOBBLY] [A]

**Done = Beth can see the structure.** [A]  
Test protocol to validate utility is not defined. [?]

### Built-right confidence: 67% [A] or [?]

Deliverable scope is clear [R]. Test method and success criteria are assumed or unknown.

---

## FAILURE MODES

**Failure 1: Visualization adds cognitive load instead of reducing it.** [A]  
If the visual layout is cluttered or non-intuitive, Beth spends more time decoding the visualization than she would have reading the Confluence doc linearly. No mitigation plan. [?]

**Failure 2: Sourcing tags are not surfaced prominently enough.** [A]  
If [R]/[D]/[A]/[?] tags are present but not visually distinct, the core value (seeing sourcing quality at a glance) fails. No design validation planned. [?]

**Failure 3: Prototype scope creep into product design.** [A]  
If build agent interprets this as "design a research dashboard product" instead of "visualize one strategy doc as proof of concept," the prototype will exceed Tier 1 fidelity and miss the point. Mitigation: Explicit fidelity banner in prototype. [R]

---

## WHAT'S MISSING

### Unknowns [?]

1. **Beth's actual workflow for reviewing research strategy docs.** No ethnography or process observation.
2. **Whether other researchers have this problem.** Sample size: 1 (Beth).
3. **Comparative baseline.** How long does it take Beth to identify sourcing gaps in the current Confluence format?
4. **What visualization type serves the need.** Gantt chart? Card layout? Timeline? Table? Assumed by build agent.
5. **Whether the source doc's thin sourcing is representative.** Is this one weak doc, or is thin sourcing common in research strategy artifacts?

### Assumptions [A]

1. Visualization is better than text for this task.
2. Beth will know "useful" when she sees it.
3. Sourcing quality matters enough to warrant a dedicated visualization.
4. The Band Protocol should handle research planning documents, not just product specs.
5. A Tier 1 / Concept prototype is sufficient to test the premise.

### Known gaps in source material [R — gaps are real; content of gaps is ?]

1. **Study findings:** 10 studies completed; zero links to findings documents.
2. **Sample sizes:** No participant counts for any study.
3. **Metric rationale:** Target SUS (68), CSAT (77%), and "Behavioural Measurement" (70%) have no sourcing for why those thresholds.
4. **"Things that we know" sourcing:** 5 claims presented as facts with no research links.
5. **Roadmap justification:** 8 features listed with no link to requirements or research supporting priority.

---

## PROTOTYPE SCOPE (Tier 1 / Concept)

**In scope:**
- Visualize 10 completed studies with type, date, status
- Display 7 learning objectives
- Show baseline + target metrics
- List Q3-Q4 roadmap items (8 features)
- Apply sourcing tags inline: [R] [D] [A] [?] [WOBBLY]
- Fidelity banner: "Tier 1 / Concept — tests whether visualization surfaces sourcing gaps"

**Out of scope:**
- Interactive filtering or sorting
- Drill-down to study findings (none exist in source)
- Comparative view across multiple strategy docs
- Data visualization of metrics over time (only 1 baseline data point exists)
- Product-grade UI polish

**Seed data:** All content from the 11 scout files. No fabrication.

---

## EVIDENCE RATIO SUMMARY

**World-claims (about MSPs, research practice, visualization value):**  
23 claims tagged / 19 [A] or [?] = **82% assumed or unknown**

**Test-plan readiness (about this prototype's validation):**  
9 claims tagged / 6 [A] or [?] = **67% assumed or unknown**

**Inflated (includes gap inventory as part of claim set):**  
61 claims tagged / 36 [A] or [?] = **59% assumed or unknown**

**Tier 1 / Concept fidelity makes high [A]+[?] acceptable.** The prototype tests a hypothesis. The source document's thin sourcing is a research finding, not a blocker — Beth can see it clearly when visualized. That's the point.

---

## NEXT

Build agent receives this brief + 11 scout files. Critic runs pre-build scorecard. Build delivers working HTML with Bradley rail. Critic re-scores post-build.
