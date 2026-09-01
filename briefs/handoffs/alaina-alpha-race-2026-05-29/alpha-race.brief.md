---
feature: "Alpha RACE Customer Demo"
gate: 30
owner: "Beth Schwindt"
problem_statement: "MDR analysts experience alert fatigue from high-volume, low-context alerts. Hilda (customer feedback, Mar 2026) reported '3-4 tickets turn out to be one incident' and requested consolidation. Black Team (internal beta) validated 47 alerts → 12 incidents as the consolidation pattern."
okr_objective: "Increase customer conviction in Alpha RACE capability"
okr_key_result: "[?] Customer signs or expands contract after seeing Alpha consolidation demo"
counter_metric: "Demo credibility — customer must not perceive synthetic data as misleading or T1 fidelity as unpreparedness"
idea_score: 14
evidence_sources: ["prototypes/alpha-race-three-tier-test.html", "Hilda customer feedback Mar 2026", "Black Team internal beta PUT-1166", "ADL-1839 Epic"]
status: "draft"
---

# Alpha RACE Customer Demo — Tier 1 Concept Brief

**Fidelity level:** 30% / Tier 1 Concept (lo-fi stakeholder/exec review)

**World-claims evidence ratio:** 58% [A] + [?] (see math recount for breakdown)

**Status for Tier 1:** This passes the gate for concept exploration at T1 fidelity. High assumption ratio is expected at this stage. Does NOT pass the 30% threshold for full build (Band Protocol requires <30% [A]+[?] for production work).

---

## Gate 1 — Problem: Is it real and sourced?

### The problem claim
MDR analysts triage high volumes of alerts with insufficient context to distinguish noise from signal. [R] This creates alert fatigue (operational and emotional). [A] Multiple alerts often represent a single incident, requiring manual correlation work. [R]

### Evidence
- **Hilda (customer feedback, Mar 2026):** "3-4 tickets turn out to be one incident." [R] [CS: VERIFIED — sourced from customer interview]
- **Alert volume:** Prototype shows 47 alerts consolidated → 12 incidents. [D] [CS: VERIFIED — from Black Team internal beta, PUT-1166]
- **Investigation time:** 42 minutes median pre-Alpha → 17 minutes with Alpha. [D] [CS: MEDIUM — internal test data, not customer-validated]
- **Alert fatigue:** Described as "emotional, not operational" in council testimony. [A] [CS: UNKNOWN — no ethnographic study of analyst emotional state]

### What's assumed
- Customers experience the same alert:incident ratio (47:12) that Black Team observed. [A]
- Reducing investigation time from 42min → 17min translates to customer-perceived value. [A]
- Alert fatigue is a customer problem, not just an n-able MDR team problem. [A]
- The demo audience (unspecified customer) experiences this problem at sufficient scale to care. [?]

### Gap: No Mode 3 ethnography
The brief explicitly names the absence of ethnographic research into MDR analyst workflow. [CS: VERIFIED] We have one screen (incident detail view) with no journey map showing before (alert queue) or after (escalation handoff). [A] The screen shown may not be the bottleneck. [?]

**Gate 1 assessment:** Problem is partially sourced (Hilda quote, Black Team metrics) but context is assumed (no customer workflow observation, no vertical-specific validation, no buyer journey mapped). For T1 concept, this is acceptable. For T2+ build, Gate 1 must be strengthened.

---

## Gate 2 — Right thing: Does this advance the mission?

### Theory of Change (explicit)
Customer sees 47→12 consolidation ratio → customer believes Alpha reduces analyst workload → customer trusts n-able to ship it → customer signs/expands contract. [A]

**Three leaps of faith in that chain:**
1. Customer comprehends what "47→12" means without explanation. [?]
2. Customer interprets consolidation as value (not as opacity risk: "what happened to the other 35 alerts?"). [?]
3. Demo conviction translates to buying decision. [?]

### What outcome moves
- **Claimed:** Customer contract signature or expansion. [?] [CS: UNKNOWN — success criteria undefined, see Decision 2]
- **Measurable alternative:** Customer commits to next meeting (pilot scoping, technical validation, or procurement conversation). [A]

### Mission alignment
Alpha RACE advances n-able's MDR differentiation by reducing analyst cognitive load and increasing transparency. [A] This aligns with n-able's stated commitment to "making partners successful" by improving service delivery efficiency. [R] [CS: HIGH — mission statement]

### Competitive landscape — MISSING
No competitive map exists in the brief or prototype. [CS: VERIFIED] CrowdStrike Falcon Complete, Arctic Wolf, Huntress, Sophos MDR, Red Canary — none appear in value prop positioning. [?] If competitors ship equivalent consolidation + transparency in <12 months, differentiation window closes. [A] Wardley mapping suggests Alpha sits between Custom-Built and Product on evolution axis, with 12–18 month differentiation window before market commoditizes this capability. [A]

### Innovation classification
- **Doblin:** Type 7 (Product Performance) + Type 9 (Customer Engagement). [A] Both are easily copied by competitors. [A]
- **Christensen:** Sustaining innovation (better MDR for current customers), not disruptive. [A] Vulnerable to faster sustaining innovation from incumbents. [A]
- **Moore:** Early Adopter stage (internal beta + one named customer). [R] Chasm not yet crossed. [A]

**Gate 2 assessment:** Directionally aligned with mission (better MDR = partner success), but competitive differentiation is unverified [?] and innovation type suggests short competitive lead. [A] Theory of Change has three untested leaps. For T1 concept, this identifies the right risks. For T2+ build, competitive teardown + customer comprehension testing required.

---

## Gate 3 — Built right: Tested how? By whom?

### Current state
Gate 3 is nearly empty. [CS: VERIFIED] The brief marks this explicitly: success criteria undefined, test plan unwritten, recruitment plan TBD.

### What "done" means — FOUR BLOCKING DECISIONS

**Decision 1: Customer profile**
- **Who decides:** Beth Schwindt + Raj Dhesi + Sales/CSM input
- **What's decided:** Actual customer vertical, endpoint count, SOC maturity, tooling, and fictional proxy profile for prototype content
- **Why it blocks:** Every content decision (asset type, attack surface, score context) scales from this call. [A]
- **If unresolved:** Demo runs with generic "Acme Building Supply" placeholder. Customer asks "whose industry is this?" and credibility collapses mid-presentation. [A]

**Decision 2: Success criteria**
- **Who decides:** Beth Schwindt + Sales lead
- **What's decided:** One sentence: "This demo succeeds when ___."
- **Why it blocks:** Without success definition, prototype cannot be validated and "it went well" means nothing. [A]
- **If unresolved:** Demo runs, customer nods politely, no next meeting scheduled. No learning. [A]

**Decision 3: Incident story source**
- **Who decides:** Raj Dhesi (Alpha engine) + Beth Schwindt
- **What's decided:** Option A (real Alpha output, anonymized) or Option B (Beth-designed synthetic)
- **Why it blocks:** Demo credibility depends on whether story reflects what Alpha actually produces. [A]
- **If unresolved:** Customer asks "is this real data?" — SE must answer honestly (no = credibility loss) or dishonestly (ethics violation). [A]

**Decision 4: Narrative format validation**
- **Who decides:** Beth Schwindt + Research (if available) + 5-10 MDR analyst testers
- **What's decided:** Does "What happened / What we did / What to do next" format land with buyers (CISOs), or only with users (analysts)?
- **Why it blocks:** Narrative shipped to analysts (internal). Showing it to customers is a different claim requiring validation. [A]
- **If unresolved:** Demo is user-buyer-optimized. Economic buyer (CISO) may not see ROI, audit-log value, or breach-prevention defensibility. [A]

### Test plan (when decisions resolve)
- **Comprehension test:** Show "47→12" screen to 5 people (cold, no context). 30 seconds. Ask: "What does this tool do?" Pass: ≥4 can explain. [A]
- **Believability test:** Show incident story to 5 MDR analysts without disclosing it's synthetic. Ask: "Does this look like real output?" Pass: ≥4 say yes. [A]
- **Reading order test:** Eye-tracking or 10-person usability test. Track which section customers read first (Story / Timeline / Scoring). [A]
- **Economic buyer validation:** Rebuild value prop for CISO: cost-per-incident, audit-log completeness, analyst attrition reduction, SLA improvement. [A]

**Gate 3 assessment:** Not ready. Four decisions block full build. Test plan exists in outline form but requires decision resolution first. For T1 concept, this is the correct state — identify what's missing. For T2+ build, all four decisions must resolve and brief must re-run to <30% [A]+[?].

---

## Failure modes

### Failure mode 1: Compression illusion
**What happens:** Team interprets "lo-fi / T1 Concept" as permission to skip decisions and ship the placeholder demo to customer.
**Why it fails:** T1 fidelity is appropriate for *internal* stakeholder review (Carla, Nicole, Zachary). It is *not* appropriate for customer demo without narration, context-setting, and explicit framing as "early concept, seeking feedback." [A] Customer perceives "NOT READY" banner as "n-able is unprepared" rather than "this is a probe." [A]
**How to detect:** Ask SE: "Will you show the fidelity banner to the customer, or hide it?" If hide: why are we including it? If show: what will you say when customer asks what Tier 1 means? [?]

### Failure mode 2: Evidence-free conviction
**What happens:** Demo runs, customer says "interesting," team interprets politeness as conviction.
**Why it fails:** Without Decision 2 (success criteria), there is no way to distinguish real interest from polite deflection. [A] Lean Startup calls this "vanity metric" — activity without learning. [A]
**How to detect:** Post-demo debrief. If SE cannot answer "What did the customer commit to?" with a concrete next action (not "they liked it"), conviction did not happen. [A]

### Failure mode 3: Trust erosion via synthetic data
**What happens:** Customer asks "is this real data?" SE says "no, it's illustrative." Customer infers: Alpha doesn't work yet, or n-able doesn't trust their own output.
**Why it fails:** Mode 4 (Kumar) warns: synthetic data has a credibility threshold. Too polished = smells like design. [A] Current story is Beth-written (trained writer) and may read as "too clean to be real." [A]
**How to detect:** Decision 3 must resolve to Option A (real output) OR Option B (synthetic) with explicit credibility mitigations (add typo, add ambiguous log entry, roughen the narrative). [A]

### Failure mode 4: Selling to the wrong buyer
**What happens:** Demo optimizes for analyst (user buyer: faster triage). CISO (economic buyer: ROI, risk, compliance) sits in the room and does not see their concerns addressed.
**Why it fails:** Challenger Sale framework: user buyer ≠ economic buyer. [A] Analyst wants speed. CISO wants defensibility. [A] Demo shows speed, not defensibility. [A]
**How to detect:** Ask Sales: "Who will be in the room?" If CISO or VP Security attends, demo needs T3 section addressing their concerns (cost-per-incident, audit logs, analyst retention). [?]

---

## What's missing

### Research gaps (high-priority)
1. **Competitive feature parity:** Do CrowdStrike, Arctic Wolf, Huntress ship alert consolidation + transparency UI? [?] [CS: UNKNOWN]
2. **Customer vertical + profile:** Who is this demo actually for? [?] [Decision 1]
3. **Success criteria:** What commitment = win? [?] [Decision 2]
4. **Mode 3 ethnography:** No workflow observation of MDR analysts in situ. [CS: VERIFIED as gap]
5. **Economic buyer:** Who signs the MDR contract at target customer? CISO? IT Director? CFO? [?] [CS: UNKNOWN]

### Design/validation gaps
6. **Incident story source:** Real or synthetic? [?] [Decision 3]
7. **Narrative format validation:** Does "What/why/next" work for buyers, or only users? [?] [Decision 4]
8. **Kano classification:** Is transparency UI Basic (must-have) or Attractive (delighter)? [?] Assumed Attractive; customers may demand Basic. [A]
9. **Reading order:** Which section do customers anchor to first — Story, Timeline, or Scoring? [?]
10. **Override-logging perception:** Does logging analyst overrides feel like autonomy-support or surveillance? [?] [SDT concern]

### Business/strategy gaps
11. **Pricing model:** Is Alpha bundled (included in MDR) or upsell (separate charge)? [?] [CS: UNKNOWN]
12. **Differentiation window:** How fast can competitors ship equivalent features? Wardley suggests 12–18 months. [A] [CS: LOW — outside training window for 2026 competitor moves]
13. **ROI translation:** Time savings (17min vs 42min) not translated to dollar value for economic buyer. [A]

---

## Council tensions (3 major clashes)

### Tension 1: JOBS (functional) vs. SDT (autonomy threat)
**JOBS says:** Alpha solves the functional job (triage faster) and emotional job (feel in control during alert surge).
**SDT says:** Transparency UI supports competence, but override-logging may feel like controlled-autonomy (surveilled, not empowered).
**Unresolved:** Does logging analyst overrides increase or decrease trust? [?]

### Tension 2: SIGN (narrative anchor) vs. JRNY (reading order)
**SIGN says:** Customer will read "47→12" and infer workload reduction. Alternative reading: "What happened to the other 35 alerts?" (opacity risk).
**JRNY says:** Reading order is uncontrolled. Customer may anchor to Timeline (procedural) and ignore Story (narrative), or vice versa. Synthesis requires cognitive effort under demo time pressure.
**Unresolved:** A/B test Story-only vs Timeline-only to determine if both are needed. [A]

### Tension 3: PORT (sustaining innovation) vs. POS (Early Adopter)
**PORT says:** Alpha is Type 7+9 Doblin (performance + engagement), easily copied. Short competitive lead. Must sell on urgency ("get this before competitors do").
**POS says:** Alpha is Early Adopter stage (internal beta + Hilda). Moore warns: Early Majority customers expect whole product (integrations, training, pricing clarity). T1 fidelity will lose them.
**Unresolved:** Is the demo customer Early Adopter (tolerates rough edges) or Early Majority (expects polish)? [?] [Decision 1 informs this]

---

## Idea score breakdown (14/20)

Using council rubric embedded in prototype:

- **Charter clarity:** 2/4 — Problem sourced (Hilda + Black Team), but Theory of Change has 3 untested leaps. No Owen Project Statement.
- **Evidence strength:** 2/4 — 58% [A]+[?] world-claims ratio. Hilda quote + Black Team metrics are solid; everything else assumed.
- **Competitive position:** 1/4 — No competitive map. Differentiation window untested. [CS: UNKNOWN]
- **Customer validation:** 1/4 — One customer (Hilda) named. No Mode 3 ethnography. No test plan executed.
- **Economic clarity:** 2/4 — Time savings quantified (17m vs 42m) but not translated to dollar ROI. Pricing model unknown. Economic buyer unmapped.
- **Execution readiness:** 2/4 — Prototype exists (T1). Four blocking decisions prevent full build. Test plan outlined but not run.
- **Resilience / failure modes:** 4/4 — Four failure modes explicitly named with detection criteria.

**Total: 14/20** — Promising concept with significant gaps. Appropriate for T1 (concept exploration). Requires decision resolution + evidence strengthening for T2+ (directional or spec-ready).

---

## Routing (next moves)

### Immediate (before any customer demo)
1. **Product + Sales:** Resolve Decision 1 (customer profile) + Decision 2 (success criteria). These two unblock all other work.
2. **Product + Eng (Raj):** Resolve Decision 3 (incident story source: real vs synthetic).

### If moving to T2 (directional fidelity)
3. **Research (or Beth + 5 analyst testers):** Run comprehension test (does "47→12" land without explanation?).
4. **Competitive intelligence:** Feature matrix for CrowdStrike, Arctic Wolf, Huntress (consolidation + transparency parity check).
5. **Brief re-run:** Spec agent reruns brief after Decisions 1-4 resolve. Target: <40% [A]+[?] for T2.

### If moving to T3 (spec-ready / production)
6. **Mode 3 ethnography:** Shadow 3 MDR analysts, 4 hours each. Map workflow, identify bottlenecks.
7. **Economic buyer validation:** Rebuild value prop for CISO (cost-per-incident, audit logs, SLA, attrition reduction).
8. **Kano questionnaire:** 10 analysts, 5-point scale. Classify transparency UI as Basic vs Attractive.
9. **Service Blueprint:** Map Frontstage (what analyst sees) + Backstage (what Alpha/SOAR do) + Line of Interaction.
10. **Brief re-run:** Target <30% [A]+[?] for production build.

---

## Meta-notes

**47% rule applied:** All metrics in this brief are grep-verified against source (prototype HTML, council testimony). The "65% [A]/[?]" figure cited in the prototype rail is NOT independently verified by Spec — it is a claim from a prior artifact. Spec's independent count: 58% [A]+[?] for world-claims only (see math recount file).

**Honest math discipline:** Three ratios calculated (world-claims / test-plan / inflated-with-meta). Lead number is world-claims (58%). See `briefs/alpha-race-math-recount.md` for full breakdown.

**Fidelity acknowledgment:** This brief is itself T1 (concept). It identifies shape, not substance. Four decisions must resolve before the brief can strengthen to T2.

**Council voices:** 44 voices embedded in prototype provided multi-framework analysis. Three major tensions surfaced (JOBS/SDT, SIGN/JRNY, PORT/POS). Council names gaps; it does not fill them.

---

**End of brief.**
