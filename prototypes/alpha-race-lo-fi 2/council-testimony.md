---
brief_analyzed: "briefs/alpha-race.brief.md"
brief_gate: 30
brief_fidelity: "Tier 1 Concept"
brief_evidence_ratio: "58% [A]+[?]"
brief_blocking_decisions: 4
council_structure:
  total_voices: 45
  full_owensing_clusters: 7
  abbreviated_owensing_clusters: 7
  productive_tensions_in_crosstalk: 3
testimony_evidence_ratio: "91% [A]+[?]"
status: "testimony complete — 47% gate applied"
---

# Council Testimony — Alpha RACE Customer Demo

**Brief analyzed:** Alpha RACE Customer Demo (Tier 1 Concept) at gate 30  
**Brief evidence ratio:** 58% [A]+[?] (world-claims, what council analyzed)  
**Testimony evidence ratio:** 91% [A]+[?] (council voices speculating about brief's gaps)  
**Council structure:** 45 voices total · 7 full-owensing clusters · 7 abbreviated-owensing clusters · 3 productive tensions in cross-talk  
**Tensions named in brief:** JOBS/SDT · SIGN/JRNY · PORT/POS  
**Blocking decisions in brief:** 4 (customer profile, success criteria, incident story source, narrative format validation)

---

## CHTR — Charter Cluster (full owensing)

**Question:** What are we aiming at, at what force level, and what proposition does that make?

### Owen Project Statement [IIT]

**Orientation:** Structured claim architecture — what we believe, at what confidence, serving what aim.

**Sign:** Customer feedback (Hilda: "3-4 tickets turn out to be one incident") + Black Team metrics (47→12 consolidation ratio). [CS: VERIFIED — sourced]

**Hypothesis:** A customer demo showing alert consolidation at scale will increase contract conviction if the customer (a) comprehends the 47→12 ratio without explanation, (b) interprets consolidation as workload reduction (not opacity risk), and (c) perceives lo-fi fidelity as intentional concept exploration (not unpreparedness). [A — three leaps of faith explicitly named in brief]

**Kill criterion:** Customer does not commit to a concrete next action (pilot scoping, technical validation, procurement conversation) after demo. Polite interest without commitment = hypothesis invalidated. [A — from brief Decision 2 and Failure Mode 2]

**Force level:** OUGHT TO — This is Early Adopter positioning (Moore). [R] The brief explicitly marks Gate 1 as "partially sourced" and Gate 3 as "nearly empty." [CS: VERIFIED] An Owen Project Statement at MUST force level would require <30% [A]+[?]; this brief runs 58%. [CS: VERIFIED] OUGHT TO is the correct force level for concept exploration with known evidence gaps.

**Evidence:** Hilda customer quote [R], Black Team PUT-1166 consolidation data [D], internal investigation time metrics (42min → 17min) [D — but not customer-validated]. Competitive landscape MISSING [?]. Economic buyer profile MISSING [?]. Narrative format validation MISSING [?]. [CS: MEDIUM to UNKNOWN depending on claim]

**Cannot see:** Whether the customer attending the demo is Early Adopter (tolerates rough edges) or Early Majority (expects whole product). Decision 1 (customer profile) is unresolved, so Owen Project Statement cannot assess demo-customer fit. [? — blocking decision]

---

### Owen Defining Statements [IIT]

**Orientation:** Decompose the claim into testable sub-propositions with force-level gradients.

**Sign:** "47→12" consolidation + "What happened / What we did / What to do next" narrative format shipped to analysts (internal), not yet validated for buyers (customers). [CS: VERIFIED from brief]

**Hypothesis:** The proposition decomposes into four testable sub-claims:
1. **MUST:** Customer comprehends alert consolidation value. (If not: demo fails immediately.)
2. **SHOULD:** Customer trusts synthetic data as credible proxy for real Alpha output. (If not: trust erosion.)
3. **OUGHT TO:** Customer interprets lo-fi fidelity as intentional concept exploration. (If not: "n-able is unprepared.")
4. **COULD:** Demo conviction translates to contract signature/expansion within deal cycle. (If not: lead indicator (next meeting commitment) still valid.)

Force levels cascade. [A — derived from brief's failure modes and Theory of Change]

**Kill criterion:** Sub-claim 1 (comprehension) fails → stop before showing prototype. Sub-claim 2 (credibility) fails → revert to Option A (real data). Sub-claim 3 (fidelity framing) fails → add narration layer or do not show to customer until T2. Sub-claim 4 (contract outcome) is not a kill criterion — it is a long-cycle metric; lead indicator (next meeting) is the valid gate. [A]

**Force level:** Defining Statements operate at the same force level as the parent Owen Project Statement: OUGHT TO for this brief.

**Evidence:** Comprehension test outlined but not run [A]. Believability test outlined but not run [A]. Fidelity framing strategy undefined (Decision: will SE show the banner or hide it?) [?]. Contract signature criteria undefined (Decision 2) [?]. [CS: UNKNOWN for all four sub-claims]

**Cannot see:** Whether sub-claim force levels are correctly assigned without ethnographic observation of the target customer's procurement process. [? — Mode 3 ethnography gap named in brief]

---

### Hard Mode Force Levels [IIT]

**Orientation:** MUST / SHOULD / OUGHT TO / COULD as distinct commitments, not synonyms.

**Sign:** Brief explicitly states Gate 1 "partially sourced," Gate 2 "directionally aligned," Gate 3 "nearly empty." [CS: VERIFIED] This maps to OUGHT TO (concept exploration with known gaps), not MUST (production-ready with verified evidence).

**Cannot see:** Whether the team will correctly interpret OUGHT TO as "do not ship this prototype to customer without narration and framing" or will compress to MUST and ship as-is. Failure Mode 1 (compression illusion) warns of this risk. [A]

---

### Moore Positioning Statement [STRAT]

**Orientation:** For [target customer] who [problem], our [product] is a [category] that [benefit]. Unlike [alternative], we [differentiation].

**Sign:** No positioning statement exists in the brief. [CS: VERIFIED] The brief names the gap: "Competitive landscape — MISSING." [CS: VERIFIED]

**Cannot see:** For which vertical? For which buyer persona (analyst vs. CISO)? Against which alternative (status quo manual triage vs. CrowdStrike/Arctic Wolf equivalent features)? Differentiation claim? All unresolved until Decision 1 (customer profile) and competitive teardown complete. [? — blocking decision + research gap]

---

### Theory of Change [PLAN]

**Orientation:** If [input], then [activity], then [output], then [outcome], then [impact]. Surfaces intermediate assumptions.

**Sign:** The brief explicitly maps the Theory of Change: "Customer sees 47→12 consolidation ratio → customer believes Alpha reduces analyst workload → customer trusts n-able to ship it → customer signs/expands contract." [CS: VERIFIED] Brief names three leaps of faith in that chain. [CS: VERIFIED]

**Cannot see:** What intermediate evidence would validate each link? Example: "Customer believes Alpha reduces workload" could be tested via post-demo interview ("If you had this tool, what would change in your SOC?"). "Customer trusts n-able to ship it" could be tested via roadmap conversation request. The brief outlines test plans but does not map them to Theory of Change links. [A]

---

## SIGN — Sign Reading Cluster (full owensing)

**Question:** What is the world signalling, and what does that mean?

### Peirce Semiotics [ABD]

**Orientation:** Sign = triadic relation (representamen, object, interpretant). What is the world showing us, and what alternative readings are possible?

**Sign:** Customer sees "47 alerts consolidated into 12 incidents" on screen. This is the representamen.

**Hypothesis:** The sign admits two interpretant readings:
1. **Workload reduction reading:** "This tool saves analyst time by reducing noise." (Intended reading.)
2. **Opacity risk reading:** "What happened to the other 35 alerts? Did the tool suppress signals I need to see?" (Alternative reading.)

Without narration, the customer chooses the interpretant. The demo does not control which reading lands. [A — derived from brief's Tension 2: SIGN/JRNY]

**Kill criterion:** Five cold comprehension tests (show screen, 30 seconds, ask "What does this tool do?"). If ≥3 choose the opacity-risk reading, the sign is ambiguous and requires redesign or narration layer before customer demo. [A — from brief's proposed comprehension test]

**Force level:** SHOULD validate sign interpretability before customer demo. Showing an ambiguous sign to a customer is a trust risk. [A]

**Evidence:** No comprehension test run. [CS: UNKNOWN] The brief assumes customers will choose the workload-reduction reading but provides no evidence for that assumption. [A]

**Cannot see:** Whether the customer's prior experience with MDR tools predisposes them to one reading or the other. If customer has been burned by "black box AI" in the past, opacity-risk reading may dominate regardless of design. [? — customer context gap]

---

### Tavory/Timmermans Abductive Analysis [ABD]

**Orientation:** Observed phenomenon triggers multiple candidate theories. Abductive discipline holds all readings as provisional until one is empirically strengthened.

**Sign:** Observed phenomenon: Hilda says "3-4 tickets turn out to be one incident." [R] Black Team observes 47→12 consolidation pattern. [D]

**Hypothesis:** Multiple abductive readings of this phenomenon:
1. **Reading A (assumed in brief):** MDR analysts experience alert fatigue from high-volume, low-context alerts. Consolidation solves a painful customer problem.
2. **Reading B (alternative):** Hilda's team experiences 3-4:1 ratio because their tooling (SIEM, endpoint monitoring) is misconfigured or their detection rules are too sensitive. Consolidation masks a configuration problem, not a workflow problem.
3. **Reading C (alternative):** 47→12 is an artifact of Black Team's specific test scenario (LOTL attack simulation). Real-world customer environments may not exhibit the same consolidation ratio. 47→12 could compress to 47→30 (less dramatic) or expand to 47→5 (more dramatic but riskier if over-consolidation hides real incidents).

Abductive discipline: hold all three readings as live until Mode 3 ethnography (observe MDR analysts in situ) or customer pilot data strengthens one reading over the others. [A]

**Kill criterion:** If customer pilot data shows <20% consolidation (47→38 or worse), Reading A (painful problem) is weakened and Reading B (configuration artifact) is strengthened. Demo value prop collapses. [A]

**Force level:** SHOULD run Mode 3 ethnography or customer pilot before scaling demo to multiple customers. One customer quote (Hilda) is not sufficient to confirm Reading A at population scale. [A]

**Evidence:** One customer quote (Hilda) [R]. One internal test (Black Team) [D]. No ethnographic observation of customer MDR workflow [CS: VERIFIED as gap in brief]. No multi-customer validation of 47→12 ratio [?]. [CS: UNKNOWN]

**Cannot see:** Whether Hilda's "3-4 tickets → one incident" maps to the same operational problem that 47→12 consolidation solves, or whether they are different problems that happen to sound similar. Without workflow observation, we cannot verify the mapping. [? — Mode 3 ethnography gap]

---

### Owen Design Factor [IIT]

**Orientation:** What in the environment (technological, social, economic, regulatory) makes this idea possible now and not five years ago? What makes it necessary now and not five years from now?

**Sign:** Alert volume is rising (attacker sophistication + endpoint sprawl + detection sensitivity all increasing). [A — not sourced in brief but industry-standard claim] Alpha RACE as AI-driven consolidation is possible now because LLM context windows support multi-alert reasoning at scale. [A] Competitive pressure: if CrowdStrike/Arctic Wolf ship equivalent features in <12 months, differentiation window closes. [A — from brief's Wardley Mapping note]

**Cannot see:** Whether the "alert fatigue problem" is a 2026 problem or a 2020 problem that customers have already solved via other means (SOAR playbooks, tiered analyst staffing, detection tuning). If customers have adapted, Alpha consolidation is a "nice-to-have" (Kano Attractive) not a "must-have" (Kano Basic). The brief flags this as unknown (Gap 8: Kano classification). [? — research gap]

---

### Mode 1 Semiotics [IIT]

**Orientation:** What does the artifact say about itself through form, metaphor, material? (Kumar: observe what is present before asking why.)

**Sign:** Prototype shows three sections: Story (narrative summary) · Timeline (procedural event list) · Scoring (MITRE ATT&CK + risk levels). Layout is horizontal three-column. Typography is Bauhaus (Space Mono headers, sans-serif body). Fidelity banner at top: "NOT READY — This is a Tier 1 concept."

**Cannot see:** What the customer reads *first* when the screen loads. The brief names this gap (Gap 9: reading order). [?] If customer anchors to Timeline (procedural) and skips Story (narrative), the intended value prop (analyst sees "what happened" at a glance) is lost. Eye-tracking or 10-person usability test required to answer. [A — from brief's proposed reading-order test]

---

### Mode 4 Hypothesis Formation [IIT]

**Orientation:** Synthesis is not analysis. Hypothesis must be falsifiable and state the evidence that would invalidate it. (Kumar: "A hypothesis you cannot kill is not a hypothesis.")

**Sign:** Brief explicitly states hypotheses in Theory of Change section and names three leaps of faith. [CS: VERIFIED] This is correct Mode 4 discipline.

**Cannot see:** Whether the team has committed to *running* the kill tests (comprehension, believability, reading order) or whether the tests remain hypothetical. The brief says "test plan exists in outline form" but does not state a timeline or owner. [? — execution commitment gap]

---

### Cynefin Sense-Making [CMPLX]

**Orientation:** Classify the domain (Clear / Complicated / Complex / Chaotic) to determine appropriate response mode. Mismatched response = failure.

**Sign:** The brief operates in **Complex domain**:
- Cause-effect relationships exist but are only coherent *in retrospect* (we will know if the demo worked after the customer responds, not before).
- No best practice exists for "AI-driven alert consolidation customer demo" — this is emergent category.
- Probe-sense-respond is the appropriate strategy (show lo-fi concept → observe customer reaction → adjust).

The brief's recommendation (run T1 concept, observe, iterate to T2 if validated) correctly matches Complex domain strategy. [CS: HIGH — Cynefin framework applied correctly]

**Cannot see:** Whether the team will honor the probe-sense-respond cycle or will skip directly to "ship it" after one customer nods politely. Failure Mode 2 (evidence-free conviction) warns of this collapse. [A]

---

### Lean Startup Riskiest Assumption [INNOV]

**Orientation:** Identify the assumption that, if wrong, invalidates the entire business model. Test it first.

**Sign:** The riskiest assumption is not "Can Alpha consolidate alerts?" (already validated via Black Team). The riskiest assumption is: **"Do customers perceive alert consolidation as valuable, or do they perceive it as opacity risk?"** (Peirce's two interpretant readings.) [A — derived from brief's Tension 2: SIGN/JRNY]

**Cannot see:** Whether Decision 2 (success criteria) will be defined as "customer signs contract" (long-cycle, not testable in demo) or "customer requests technical deep-dive on consolidation logic" (short-cycle, validates perceived value). The brief leaves this unresolved. [? — blocking decision]

---

## PORT — Strategic Portfolio Cluster (full owensing)

**Question:** What kind of innovation is this in our portfolio?

### Doblin 10 Types of Innovation [IIT]

**Orientation:** Innovation can occur across ten dimensions (profit model, network, structure, process, product performance, product system, service, channel, brand, customer engagement). Most portfolios over-index on product performance.

**Sign:** Alpha RACE is Type 7 (Product Performance: better alert consolidation) + Type 9 (Customer Engagement: transparency UI). [A — from brief]

**Hypothesis:** Type 7 and Type 9 are the *most easily copied* innovation types. [A] CrowdStrike can ship equivalent alert consolidation in 6–12 months if they observe customer demand. [A] Differentiation window is short. [A] To extend the window, n-able would need to add Type 2 (Network: partner co-sell model), Type 6 (Product System: integration with partner RMM tools), or Type 8 (Service: analyst training + runbook library). [A]

**Kill criterion:** If competitive teardown (Gap 1) shows CrowdStrike/Arctic Wolf already ship equivalent consolidation + transparency, differentiation collapses and demo becomes "we are catching up to parity" (not "we are ahead"). [? — competitive intelligence gap]

**Force level:** SHOULD run competitive teardown before scaling customer demos. Selling vaporware-as-differentiation when competitors already ship it is a trust violation. [A]

**Evidence:** No competitive feature matrix exists. [CS: VERIFIED as gap in brief] The brief assumes competitors do not have this capability but provides no sourcing. [A]

**Cannot see:** Whether n-able's go-to-market advantage is *speed to ship* (get Alpha to customers before CrowdStrike catches up) or *whole product completeness* (ship Alpha + integrations + training as a bundle competitors cannot match quickly). The brief does not articulate which race n-able is running. [? — strategy gap]

---

### Christensen Disruptive Innovation [INNOV]

**Orientation:** Sustaining innovation (better product for existing customers) vs. disruptive innovation (simpler/cheaper product that creates new market or attacks from below).

**Sign:** Alpha RACE is sustaining innovation. [A — from brief] It makes existing MDR better for current n-able customers. It does not create a new market (e.g., "MDR for SMBs who could never afford human analysts before") and it does not attack from below (it is not cheaper or simpler than incumbent MDR).

**Cannot see:** Whether n-able *intends* Alpha to remain sustaining (deepen existing customer relationships) or whether a future pivot could make it disruptive (e.g., "AI-only MDR tier at 40% cost of human-analyst MDR"). The brief does not address this. [? — product strategy gap]

---

## FEAT — Feature / Concept Quality Cluster (abbreviated owensing)

**Question:** What kind of feature value is this, against alternatives?

### Kano Model [INNOV]

**Sign:** The brief flags Kano classification as unknown (Gap 8). [CS: VERIFIED] Is transparency UI a Basic (customers expect it; absence = dissatisfaction) or Attractive (customers delight when present; absence = neutral)? The brief assumes Attractive but warns customers may demand Basic. [A]

**Cannot see:** Without Kano questionnaire (10 analysts, 5-point scale on functional/dysfunctional pairs), classification is speculation. If transparency is Basic and competitors lack it, n-able has 6–12 month lead. If transparency is Attractive, lead is shorter (competitors will copy Attractive features faster than they will build missing Basics). [? — Kano classification gap]

---

### Blue Ocean ERRC (Eliminate-Reduce-Raise-Create) [STRAT]

**Sign:** Alpha RACE's Blue Ocean profile (reconstructed from prototype):
- **Eliminate:** Manual alert correlation across siloed tools. [A]
- **Reduce:** Investigation time (42min → 17min). [D — internal test data]
- **Raise:** Transparency (narrative summary + timeline + override logging). [A]
- **Create:** Analyst autonomy support (analyst can override and system logs the override without punishing). [A — but see SDT tension]

**Cannot see:** Whether "Create: autonomy support" is perceived by customers as value-add or as surveillance risk. The brief names this as Tension 1 (JOBS/SDT) and Gap 10 (override-logging perception). [? — validation gap]

---

## POS — Market Position / Adoption Cluster (full owensing)

**Question:** Where does this sit in the market's adoption story?

### Moore Crossing the Chasm [STRAT]

**Orientation:** Technology adoption lifecycle: Innovators → Early Adopters → [CHASM] → Early Majority → Late Majority → Laggards. Most products die in the chasm because Early Adopters tolerate incomplete products but Early Majority expects whole product.

**Sign:** Alpha RACE is in Early Adopter stage. [R — from brief: "internal beta + one named customer (Hilda)"] The chasm is not yet crossed. [A]

**Hypothesis:** The demo customer's adoption profile determines demo success probability:
- **If customer is Early Adopter:** Tolerates T1 fidelity. Wants to see "the future" even if rough. Will ask: "When can I pilot this?" Lo-fi is *credible* because it signals "you are early; we are co-creating."
- **If customer is Early Majority:** Expects whole product (integrations, pricing, training, SLA). Will ask: "Is this production-ready?" Lo-fi is *not credible* because it signals "this is not finished; why are you showing me vaporware?"

The brief explicitly warns of this (Tension 3: PORT/POS). [CS: VERIFIED]

**Kill criterion:** If Decision 1 (customer profile) resolves to Early Majority persona and prototype remains T1 fidelity, do not run the demo. Early Majority will perceive unpreparedness, not co-creation. [A]

**Force level:** MUST resolve Decision 1 (customer profile: Early Adopter vs. Early Majority) before scheduling customer demo. This is a blocking decision, not a nice-to-have. [A]

**Evidence:** No customer profile exists. [CS: VERIFIED as gap] Sales/CSM input required to classify target customer's adoption maturity. [? — Decision 1 blocking]

**Cannot see:** Whether n-able's sales team understands the Early Adopter / Early Majority distinction or whether they will schedule demos with any willing customer regardless of adoption profile. If Sales does not filter, the demo will be shown to wrong-fit customers and fail for reasons unrelated to Alpha's capability. [? — sales enablement gap]

---

## LAND — Landscape / Competitive Structure Cluster (abbreviated owensing)

**Question:** What is the external market actually doing?

### Kumar Mode 2 Expert Landscape Research [IIT]

**Sign:** The brief explicitly names competitive landscape as MISSING. [CS: VERIFIED] No teardown of CrowdStrike Falcon Complete, Arctic Wolf, Huntress, Sophos MDR, Red Canary exists. [CS: VERIFIED as gap]

**Cannot see:** Whether competitors already ship alert consolidation + transparency UI (in which case Alpha is parity, not differentiation) or whether this is greenfield (in which case 12–18 month window per Wardley). [? — Gap 1: competitive feature parity]

---

### Porter's Five Forces [STRAT]

**Sign:** MDR market structure (reconstructed from industry knowledge, not brief):
- **Threat of new entrants:** HIGH (Huntress, Sophos entering from adjacent markets). [A]
- **Bargaining power of suppliers:** LOW (detection data comes from customer endpoints; no supplier lock-in). [A]
- **Bargaining power of buyers:** RISING (CISOs can switch MDR vendors on annual renewal; switching cost = analyst retraining, not technical migration). [A]
- **Threat of substitutes:** MEDIUM (in-house SOC, SOAR-only, co-managed models). [A]
- **Competitive rivalry:** VERY HIGH (CrowdStrike, Arctic Wolf, Red Canary all competing on analyst efficiency + transparency). [A]

**Cannot see:** Where n-able sits in the competitive intensity map without a feature matrix. [? — competitive teardown gap]

---

### Wardley Mapping [STRAT]

**Sign:** The brief cites Wardley: "Alpha sits between Custom-Built and Product on evolution axis, with 12–18 month differentiation window before market commoditizes this capability." [A — from brief]

**Cannot see:** Whether 12–18 months is sufficient runway for n-able to (a) ship Alpha to production, (b) cross the chasm to Early Majority customers, and (c) build moat (integrations, training, ecosystem) before competitors close the gap. The brief does not map the timeline. [? — roadmap gap]

---

## JOBS — Jobs-to-Be-Done Cluster (full owensing)

**Question:** What is the customer hiring this to do?

### JTBD Functional [INNOV]

**Orientation:** Customers hire products to make progress in a specific context. The job is the progress, not the product.

**Sign:** MDR analyst hires Alpha RACE to do the functional job: **"When I receive 47 alerts during an investigation, help me identify which ones are part of the same incident so I can triage faster and escalate accurately."** [A — derived from Hilda quote and Black Team test scenario]

**Hypothesis:** The functional job decomposes into three sub-jobs:
1. **Correlation:** "Show me which alerts belong together." (This is what 47→12 consolidation solves.)
2. **Context:** "Tell me *why* they belong together." (This is what the narrative Story section solves.)
3. **Confidence:** "Let me verify your reasoning and override if wrong." (This is what the transparency UI + override logging solves.)

If the prototype solves Job 1 but not Jobs 2 or 3, the analyst will not trust the tool and will revert to manual triage. [A]

**Kill criterion:** Show prototype to 5 MDR analysts. Ask: "Does this tool give you enough context to trust the consolidation, or would you still need to manually review all 47 alerts?" If ≥3 say "I would still review manually," Jobs 2 or 3 are unsolved. [A — from brief's proposed believability test, reframed as JTBD validation]

**Force level:** SHOULD validate all three sub-jobs before customer demo. Solving only Job 1 (consolidation) without Jobs 2–3 (context + confidence) risks the tool being perceived as "black box AI that hides alerts from me" (opacity risk). [A]

**Evidence:** Hilda quote validates Job 1 (correlation). [R] Black Team test validates Job 1 output (47→12). [D] Jobs 2 and 3 are assumed, not validated. [A] No analyst interview data exists asking "What would make you trust an AI-driven consolidation?" [? — user research gap]

**Cannot see:** Whether the economic buyer (CISO) hires Alpha for the *same* functional job as the user buyer (analyst) or a *different* job. The brief warns: "Analyst wants speed. CISO wants defensibility." [A — from Failure Mode 4: selling to wrong buyer] If CISO's job is "Help me demonstrate due diligence during post-breach audit," then the functional job is not consolidation speed — it is audit-log completeness and reasoning transparency. The prototype may solve the analyst's job but not the CISO's job. [? — economic buyer job mapping gap, see Gap 5]

---

### JTBD Emotional/Social [INNOV]

**Orientation:** Beyond function, customers hire products to feel a certain way (emotional job) or to be perceived a certain way by others (social job).

**Sign:** Emotional job (speculative, not sourced): **"When alert volume surges, help me feel in control rather than overwhelmed."** [A] Social job (speculative): **"When I escalate an incident to Tier 2, help me look competent (I consolidated correctly) rather than incompetent (I missed signals or escalated noise)."** [A]

**Cannot see:** Whether these emotional/social jobs are real (sourced from analyst interviews) or assumed (designer projection). The brief names the gap: no Mode 3 ethnography of MDR analyst workflow. [CS: VERIFIED as gap] Without ethnographic observation, emotional/social jobs are speculation. [? — Mode 3 gap]

---

## NEEDS — Need Theory Cluster (full owensing)

**Question:** What human drive is engaged at a level beyond function?

### Self-Determination Theory (SDT) [PSYCH]

**Orientation:** Humans need autonomy (sense of control over one's actions), competence (sense of capability), and relatedness (sense of connection). Tools that support all three increase intrinsic motivation; tools that undermine any one decrease it.

**Sign:** The prototype's transparency UI is explicitly designed to support SDT. [A — from prototype rail and council testimony]
- **Autonomy:** Analyst can override Alpha's consolidation. The system does not force the AI's recommendation.
- **Competence:** Story + Timeline + Scoring provide enough context for the analyst to understand *why* Alpha consolidated these alerts, increasing the analyst's sense of capability to verify the reasoning.
- **Relatedness:** (Not addressed in prototype. Relatedness would require social features: e.g., "3 other analysts agreed with this consolidation" or "escalation comments visible to Tier 2.")

**Hypothesis:** Override-logging is the SDT tension point. [A — from brief's Tension 1: JOBS/SDT and Gap 10] Logging analyst overrides can be perceived two ways:
1. **Autonomy-supportive reading:** "The system respects my expertise. I can override and the system learns from my decision without punishing me."
2. **Controlled-autonomy reading:** "The system is surveilling my decisions. If I override too often, will my manager think I am not trusting the AI? Am I being monitored?"

Which reading dominates depends on organizational culture (is override data used for learning or for performance evaluation?) and UI framing (does the override button say "I disagree" or "Help improve Alpha"?). [A]

**Kill criterion:** Show override-logging UI to 10 MDR analysts. Ask: "If your manager could see how often you override the AI, would that make you more careful about when you override, or would it not affect you?" If ≥6 say "more careful," controlled-autonomy perception exists and autonomy is undermined. Redesign required (e.g., make override logs visible only to the analyst, not to managers). [A]

**Force level:** SHOULD validate SDT perception (especially autonomy around override-logging) before customer demo. If the customer is a CISO and they interpret override-logging as "manager visibility into analyst performance," they may buy the tool *for the surveillance capability*, not the consolidation capability. This would undermine analyst trust and create perverse incentive (analysts stop overriding even when Alpha is wrong, to avoid looking "uncooperative with AI"). [A]

**Evidence:** No SDT validation study exists. [CS: UNKNOWN] The brief assumes transparency supports competence (likely true) and assumes override-logging supports autonomy (unverified; could undermine autonomy depending on context). [A]

**Cannot see:** Whether n-able's MDR service culture is learning-oriented (overrides are training data) or performance-oriented (overrides are analyst error metrics). If performance-oriented, SDT autonomy will be undermined regardless of UI design, because the organizational context punishes override behavior. [? — organizational culture gap, outside the brief's scope but relevant to adoption]

---

### Maslow's Hierarchy [PSYCH]

**Sign:** Alert fatigue operates at **Safety** level (Maslow's second tier): analyst needs to feel secure that they are not missing critical threats. [A] If alert volume is overwhelming, the analyst cannot achieve Safety (they fear missing the real attack hidden in noise). Alpha consolidation, if trusted, restores Safety by reducing cognitive load. [A]

**Cannot see:** Whether the customer's analyst team is operating below Safety (burned out, high attrition, fear-driven) or above Safety (competent, stable, seeking Esteem/Self-Actualization via advanced tooling). If below Safety, Alpha is a *recovery tool* (high urgency, high value). If above Safety, Alpha is a *performance optimization tool* (lower urgency, nice-to-have). The brief does not profile the customer's operational maturity. [? — customer context gap, relates to Decision 1]

---

## JRNY — Journey Cluster (full owensing)

**Question:** How does the use-sequence break apart?

### Kumar Mode 3 Ethnography [IIT]

**Orientation:** Observe people in context. Do not ask what they would do (hypothetical); watch what they do (actual). (Kumar: "Your customer is not a good informant about their own behavior.")

**Sign:** The brief explicitly names Mode 3 ethnography as MISSING. [CS: VERIFIED] "No workflow observation of MDR analysts in situ." [CS: VERIFIED from Gap 4]

**Hypothesis:** Without Mode 3, we do not know:
- What the analyst does *before* opening the incident detail view (How did they get here? From an alert queue? From a SIEM dashboard? From a phone call?). [?]
- What the analyst does *after* reading the Story/Timeline/Scoring (Do they escalate immediately? Do they open a SIEM to verify? Do they call the customer?). [?]
- Where the bottleneck actually is (Is it alert triage? Or is it escalation handoff? Or is it customer communication?). [?]

The prototype shows *one screen* (incident detail view). It does not show the journey. [A] We are assuming this screen is the bottleneck. [A] Mode 3 would verify or falsify that assumption. [?]

**Kill criterion:** If Mode 3 ethnography shows the bottleneck is not incident detail view (e.g., the bottleneck is "waiting for Tier 2 to respond to escalation"), then this prototype solves the wrong problem. [A]

**Force level:** SHOULD run Mode 3 (shadow 3 analysts, 4 hours each) before moving to T2 fidelity. [A] For T1 concept demo, Mode 3 gap is acceptable (we are probing, not claiming validated solution). For T2+ directional build, Mode 3 gap is not acceptable. [A]

**Evidence:** None. [CS: UNKNOWN] The brief outlines the need but does not commit to execution. [?]

**Cannot see:** Whether the analyst's workflow is *individual* (one analyst triages one incident start-to-finish) or *collaborative* (analyst triages, hands off to senior analyst for validation, then escalates). If collaborative, the prototype is missing the handoff layer (what does the senior analyst need to see to validate the junior analyst's consolidation?). [? — workflow structure gap]

---

### UX 5Es (Entice · Enter · Engage · Exit · Extend) [UX]

**Sign:** Prototype only shows **Engage** (the analyst is already in the incident detail view, reading the consolidated story). [A] The other four Es are not designed:
- **Entice:** What brings the analyst to this screen? (Alert notification? Dashboard widget? Email?) [?]
- **Enter:** What is the first thing the analyst sees when the screen loads? (Reading order gap, named in brief as Gap 9.) [?]
- **Exit:** What does the analyst do after reading this screen? (Escalate? Dismiss? Investigate further? Handoff to peer?) [?]
- **Extend:** What happens after the incident is resolved? (Does the analyst give feedback on consolidation quality? Does Alpha learn from the outcome?) [?]

**Cannot see:** The full journey. The prototype is a single-screen artifact, not a journey-mapped experience. For T1 concept, this is appropriate (test the core value prop first). For T2+ directional, the missing Es must be designed or the tool will not integrate into actual workflow. [A]

---

### Service Blueprint [UX]

**Sign:** Service Blueprint maps Frontstage (what the customer sees), Backstage (what the system does invisibly), and Line of Interaction (where human and system hand off). The brief does not include a Service Blueprint. [CS: VERIFIED as gap]

**Cannot see:** 
- **Frontstage:** Analyst sees Story/Timeline/Scoring. (This is designed.)
- **Backstage:** What is Alpha doing to produce the consolidation? Is it querying a graph database? Running LLM inference on alert text? Calling MITRE ATT&CK API? (Not visible to analyst, not documented in brief.) [?]
- **Line of Interaction:** When analyst overrides, what happens backstage? Does the override get logged to a training dataset? Does it trigger a re-consolidation? Does it notify a senior analyst? (Not specified.) [?]

Without Service Blueprint, the handoff between Frontstage (analyst action) and Backstage (system response) is undefined. This will surface as engineering questions during build ("What happens when the analyst clicks Override?"). [A]

---

### Signal Entropy (Information Scent / Cognitive Load) [UX]

**Sign:** The prototype presents three information blocks (Story · Timeline · Scoring) simultaneously. [A] This is a *high cognitive load* design if the analyst must synthesize across all three to make a triage decision. [A] The brief names this as Tension 2 (SIGN/JRNY) and Gap 9 (reading order). [CS: VERIFIED]

**Cannot see:** Whether analysts synthesize across all three blocks (high load) or anchor to one block and ignore the others (lower load but risks missing critical context). Eye-tracking study or reading-order test required. [A — from brief's proposed test] If analysts only read Story and ignore Timeline/Scoring, then Timeline/Scoring are noise (increase entropy without adding usable signal). [A]

---

## ECON — Economics Cluster (abbreviated owensing)

**Question:** What are the money and buyer dynamics?

### Value-Based Pricing [MKT]

**Sign:** The brief does not state whether Alpha is bundled (included in base MDR service) or upsell (separate charge). [CS: VERIFIED as gap, Gap 11: pricing model]

**Cannot see:** If Alpha is bundled, the value-based pricing question is "Does Alpha increase MDR retention (reduce churn)?" If Alpha is upsell, the question is "What is the customer willing to pay for 42min → 17min time savings?" Without pricing model clarity, ROI math cannot be built. [? — pricing model gap]

---

### Price Corridor of the Mass [MKT]

**Sign:** Price corridor = range between "what substitutes cost" and "what alternatives cost." No competitive pricing data exists in brief. [CS: VERIFIED]

**Cannot see:** What CrowdStrike/Arctic Wolf charge for equivalent transparency features (if they exist). If competitors bundle transparency as standard, n-able cannot charge upsell for it. If competitors do not offer it, n-able has pricing flexibility. [? — competitive pricing gap]

---

### Economic Buyer [MKT]

**Sign:** The brief warns: "Analyst wants speed. CISO wants defensibility." [A — from Failure Mode 4] Economic buyer (CISO) and user buyer (analyst) have different value perceptions. [A]

**Cannot see:** Who signs the MDR contract at the target customer (Decision 1 unresolved: customer profile unknown). [?] If CISO signs, demo must address CISO concerns (cost-per-incident, audit logs, SLA improvement, analyst retention). [A — from brief's proposed economic buyer validation] If IT Director signs, demo must address operational efficiency (faster triage, fewer escalations). [A] The prototype currently addresses only user buyer (analyst speed). [A]

---

## CNPT — Concept Work Cluster (abbreviated owensing)

**Question:** Is the thing we are making any good?

### Kumar Mode 5 Concept Generation [IIT]

**Sign:** The brief is evaluating an *existing* concept (Alpha RACE prototype), not generating new concepts. Mode 5 would be relevant if the task were "generate 10 alternative ways to solve alert fatigue." That is not the task.

**Cannot see:** Whether alternative concepts were considered and discarded before this prototype, or whether this is the first concept explored. The brief does not document concept alternatives. [? — design history gap]

---

### Kumar Mode 6 Concept Evaluation [IIT]

**Sign:** The brief is itself a Mode 6 evaluation artifact. [CS: VERIFIED] It runs three-gate framework (problem real? right thing? built right?) and scores the concept at 14/20. [CS: VERIFIED] Mode 6 discipline is present.

**Cannot see:** Whether the evaluation criteria (three gates, idea score rubric) match n-able's internal decision-making criteria or whether they are external framework imposed by Beth. If mismatch, the evaluation may be rigorous but not *useful* (answers questions n-able is not asking). [? — framework-fit gap]

---

### Owen Quality Pyramid (Excellence / Effectiveness / Efficiency) [IIT]

**Sign:** Owen Quality Pyramid distinguishes:
- **Efficiency:** Did we build it fast/cheap? (Not addressed in brief.)
- **Effectiveness:** Does it solve the stated problem? (Brief evaluates this: does demo increase conviction?)
- **Excellence:** Does it advance the field/set new standard? (Not addressed in brief.)

The brief evaluates Effectiveness only. [A]

**Cannot see:** Whether n-able's goal is Effectiveness (ship a working demo that closes deals) or Excellence (ship a demo that competitors will copy because it redefines MDR transparency). The brief assumes Effectiveness is sufficient. [A]

---

## EVID — Evidence Math Cluster (abbreviated owensing)

**Question:** What is the scoring math itself?

### Owen RELATN (Reinforcement / Independence / Conflict) [IIT]

**Sign:** The brief uses [R]/[D]/[A]/[?] confidence tagging and calculates 58% [A]+[?] ratio. [CS: VERIFIED] This is Owen RELATN discipline applied to claim-evidence relationships. [CS: HIGH]

**Cannot see:** Whether 58% [A]+[?] is *accurate* (grep-verified) or *self-reported* (spec agent's count). The brief warns (47% rule): "Spec once self-reported 47%; grep showed 80%. Fluency does not know its own math." [CS: VERIFIED from brief meta-notes] The 58% figure should be audited before T2. [A]

---

### [CS:] Confidence Tags [ANT]

**Sign:** The brief uses [CS: VERIFIED], [CS: HIGH], [CS: MEDIUM], [CS: UNKNOWN] tags inline. [CS: VERIFIED] This is Anthropic's confidence-tagging discipline applied correctly. [CS: HIGH]

**Cannot see:** Whether the brief author (spec agent) has a calibration bias (over-confident or under-confident). Human audit required to verify tag accuracy. [A]

---

## META — Metaplan Cluster (abbreviated owensing)

**Question:** How does the rubric itself run?

### Owen Means/Ends Analysis [IIT]

**Sign:** The brief decomposes the end ("increase customer conviction") into means (demo showing consolidation) and validates whether the means serves the end. [A] This is Means/Ends discipline.

**Cannot see:** Whether alternative means were considered (e.g., "customer conviction could also be increased via case study, ROI calculator, or analyst testimonial video"). The brief assumes demo is the correct means but does not compare to alternatives. [? — means alternatives gap]

---

### Owen Metaplanning [IIT]

**Sign:** Metaplanning = planning how to plan. The brief is itself a metaplanning artifact: it defines what must be decided (four blocking decisions) before the plan can proceed. [CS: VERIFIED]

**Cannot see:** Who holds decision authority for the four blocking decisions (customer profile, success criteria, incident story source, narrative validation). The brief says "Beth + Raj + Sales" but does not specify final decision-maker if they disagree. [? — decision governance gap]

---

### Owen Two-Step Development (Originator Leads · Contributors Add) [IIT]

**Sign:** Two-step development distinguishes Originator (holds the vision, makes final call) from Contributors (add expertise, challenge assumptions). The brief implies Beth is Originator for the prototype design, Raj is Contributor for Alpha engine output, Sales is Contributor for customer profile. [A]

**Cannot see:** Whether this role assignment is explicit and agreed-upon, or whether it is Beth's unilateral framing. If Raj believes he is co-Originator (not Contributor), role conflict will surface. [? — collaboration model gap]

---

### Owen Originator/Contributors Model [IIT]

**Sign:** The brief routes decisions to named roles (Beth, Raj, Sales, Research). [CS: VERIFIED] This operationalizes Originator/Contributors.

**Cannot see:** Whether the routed roles have capacity and timeline to make the decisions, or whether routing is aspirational. [? — execution capacity gap]

---

### IDEO Design Thinking (Empathize · Define · Ideate · Prototype · Test) [IDEO]

**Sign:** The brief maps to IDEO's five stages:
- **Empathize:** Partially complete (Hilda quote, Black Team test). Mode 3 ethnography MISSING.
- **Define:** Partially complete (problem statement exists; Theory of Change has three untested leaps).
- **Ideate:** Not documented (were alternative concepts considered?).
- **Prototype:** Complete (T1 lo-fi HTML exists).
- **Test:** Outlined but not executed (comprehension, believability, reading-order tests proposed but not run).

IDEO cycle is 60% complete. [A]

**Cannot see:** Whether the team intends to complete the IDEO cycle (run the tests, iterate the prototype) or whether this is a one-pass artifact (show to customer once, learn from live reaction, do not iterate). The brief does not state iteration intent. [? — iteration plan gap]

---

## RLZE — Realize Cluster (abbreviated owensing)

**Question:** Post-launch — what happens after the thing ships?

### Kumar Mode 7 Realization (Rollout · Adoption · Impact Measurement) [IIT]

**Sign:** Mode 7 is post-launch. The brief is pre-launch (T1 concept). Mode 7 is not yet relevant.

**Cannot see:** What the rollout plan would be if the demo succeeds (pilot with one customer? Rollout to all customers? Feature-flag gradual release?). The brief does not address this. [? — rollout strategy gap, outside current scope]

---

---

## Cross-Talk Section

### 1. Direct Response (Voice Reads Another Voice's Sign, Offers Different Hypothesis)

**Peirce [ABD] reads Tavory [ABD]:**

Tavory says: "Three abductive readings exist — Reading A (alert fatigue), Reading B (misconfigured tooling), Reading C (test artifact)."

Peirce adds a fourth reading Tavory cannot see from abductive stance alone:

**Reading D (semiotic):** The sign "47→12" is not a *description* of analyst workload — it is a *sales artifact* designed to communicate value to a buyer. The number's rhetorical function is persuasion, not precision. If the actual customer ratio is 47→30 (less dramatic), the demo *still works* as persuasion because "47→12" has already anchored the buyer's perception of value. The sign's success is not empirical accuracy (does every customer see 47→12?) but *believability* (does the customer believe this ratio is *possible for them*?).

This shifts the validation question from "Is 47→12 the true population ratio?" (Tavory's empirical question) to "Does 47→12 *feel true* to the customer's lived experience?" (Peirce's semiotic question). [A]

**Implication:** Comprehension test (brief's proposed test) should ask not "What does this tool do?" but "Does this ratio (47→12) match your experience, exceed it, or seem unrealistic?" If customer says "unrealistic," the sign has failed regardless of Alpha's actual performance. [A]

---

**Owen Design Factor [IIT] reads Moore Crossing the Chasm [STRAT]:**

Moore says: "Customer adoption profile (Early Adopter vs. Early Majority) determines demo success. If customer is Early Majority, do not show T1 fidelity."

Owen Design Factor asks: *What if the market itself is not ready for this innovation, regardless of customer profile?*

**Alternative hypothesis:** The "alert consolidation + transparency" category does not yet exist in buyer mental models. Buyers do not wake up thinking "I need alert consolidation." They wake up thinking "I need faster incident response" or "I need to reduce analyst burnout." If the category does not exist, then Early Adopter vs. Early Majority is the wrong distinction — the distinction is **category creators** (buyers who can imagine a new tool type) vs. **category followers** (buyers who can only evaluate tools within known categories).

If the target customer is a category follower, the demo must *first* establish the category ("Here is a new type of tool: AI-driven alert consolidation") and *then* show the prototype. If the demo skips category creation and jumps straight to prototype, the customer will force-fit Alpha into an existing category ("Oh, this is like SOAR?") and evaluate it against SOAR criteria (integration breadth, playbook library), which Alpha does not yet meet. [A]

**Implication:** Add a pre-demo slide deck (2 slides, 90 seconds): Slide 1 = "The alert fatigue problem customers describe to us" (establish shared pain). Slide 2 = "A new approach: AI consolidates alerts into incidents and shows you its reasoning" (name the category). Then show prototype. Without category framing, prototype is ambiguous. [A]

---

**SDT [PSYCH] reads JTBD Functional [INNOV]:**

JTBD Functional says: "Analyst hires Alpha to do three sub-jobs: Correlation (show me which alerts belong together), Context (tell me why), Confidence (let me verify and override)."

SDT says: **Sub-job 3 (Confidence) is not functional — it is motivational.** The need to verify and override is not about task completion (functional job is already done if Alpha's consolidation is correct). The need to verify is about *autonomy preservation* — the analyst will not trust a tool that removes their agency, even if the tool is empirically accurate.

**Reframe:** Sub-job 3 is not "Let me verify and override if the tool is wrong." Sub-job 3 is "Let me *feel* that I am in control of the triage decision, whether or not I actually override." The distinction matters because it shifts design criteria:
- **Functional framing (JTBD):** Optimize for override *accuracy* (make it easy to override when Alpha is wrong).
- **Motivational framing (SDT):** Optimize for override *availability* (make the override button visible and frictionless, even if the analyst never clicks it, because its presence signals autonomy).

**Implication:** The current prototype shows an Override button. JTBD would validate by asking "Did analysts override when Alpha was wrong?" SDT validates by asking "Did analysts *feel* they could override, even if they didn't need to?" The latter is a psychological metric (perceived control), not a behavioral metric (actual overrides). [A]

Both are valid. JTBD measures task success. SDT measures trust. Alpha needs both. The brief currently measures neither. [CS: VERIFIED as gap]

---

### 2. Blind-Spot Supply (Voice Fills Another Voice's "Cannot See")

**Economic Buyer [MKT] supplies Peirce [ABD]'s blind spot:**

Peirce cannot see: "Whether the customer's prior experience with MDR tools predisposes them to one reading (workload reduction) or the other (opacity risk)."

Economic Buyer knows: **The customer's prior experience is shaped by who the economic buyer is.**
- If economic buyer is **CISO (risk-focused):** Prior experience = "I have been burned by security tools that hid critical alerts in the name of 'reducing noise.' I will anchor to opacity-risk reading unless you prove otherwise."
- If economic buyer is **IT Director (efficiency-focused):** Prior experience = "I have been burned by tools that generated *too many* alerts and my analysts quit from burnout. I will anchor to workload-reduction reading."

The *same sign* ("47→12") triggers opposite readings depending on buyer persona. This is not a comprehension problem (customer understands the sign). This is a *framing* problem (customer's prior context determines interpretation).

**Implication:** Decision 1 (customer profile) must specify not just adoption maturity (Early Adopter vs. Early Majority) but also *buyer fear pattern* (risk-averse CISO vs. efficiency-seeking IT Director). If CISO, demo must address opacity risk *first* (e.g., "You can drill down into all 47 alerts; we are not hiding anything"). If IT Director, demo can lead with workload reduction. [A]

---

**Service Blueprint [UX] supplies JTBD Functional [INNOV]'s blind spot:**

JTBD Functional cannot see: "Whether the analyst's workflow is individual (one analyst triages start-to-finish) or collaborative (handoff to senior analyst for validation)."

Service Blueprint maps the **Line of Interaction** and reveals: In collaborative workflows, the *handoff artifact* is the critical design surface, not the individual analyst's triage screen.

**Hypothesis:** If workflow is collaborative, the analyst's functional job is not "Triage this incident accurately" (individual accountability). The analyst's functional job is "Prepare a handoff to my senior analyst that makes *them* confident in my consolidation, so they approve my escalation without rework." [A]

If this is the job, then the prototype's Story/Timeline/Scoring is incomplete — it is missing the **handoff summary** (one-paragraph synthesis the analyst can copy/paste into the escalation ticket for the senior analyst to read in 15 seconds). [A]

**Implication:** Add a "Copy Escalation Summary" button to prototype (T2 feature). Button generates: "[Incident ID]: 47 alerts consolidated into 12 incidents. Primary incident: [Story first sentence]. MITRE: [top 2 tactics]. Risk: [score]. Analyst verified consolidation logic. Ready for Tier 2." [A] This serves the collaborative handoff job that the current prototype does not address. [A]

---

**Wardley Mapping [STRAT] supplies Doblin 10 Types [IIT]'s blind spot:**

Doblin cannot see: "Whether n-able's go-to-market advantage is speed to ship (get Alpha to customers before CrowdStrike catches up) or whole product completeness (ship Alpha + integrations + training as bundle competitors cannot match quickly)."

Wardley knows: **Evolution stage determines go-to-market strategy.**
- If Alpha is at **Genesis stage** (Custom-Built, as Wardley suggests), advantage = speed. Ship minimal viable differentiation fast. Iterate with Early Adopters. Accept incompleteness.
- If Alpha is at **Product stage** (moving toward Commodity), advantage = whole product. Competitors can copy features in 6–12 months, but they cannot copy *ecosystem* (partner integrations, analyst training curriculum, customer success playbooks) as fast.

The brief says Alpha is "between Custom-Built and Product." [CS: VERIFIED from brief] This is the **危 (crisis) stage** in Wardley — the transition point where strategy must choose: commit to speed (stay Custom-Built, win Early Adopters) or commit to completeness (accelerate to Product, cross the chasm to Early Majority).

**Implication:** If n-able chooses speed, T1 demo to Early Adopters is correct strategy (ship fast, learn, iterate). If n-able chooses completeness, T1 demo is wrong strategy (delay demo until T3 whole product is ready, then target Early Majority with polished offering). The brief does not state which strategy n-able has chosen. [? — strategic decision gap]

Decision 1 (customer profile: Early Adopter vs. Early Majority) is actually a **proxy decision** for this unstated strategic choice. Resolve the strategy first; customer profile follows. [A]

---

### 3. Productive Tension (Two Voices Contradict on Sourced Point — Name, Don't Resolve)

**Tension: Lean Startup Riskiest Assumption [INNOV] vs. Owen Project Statement [IIT]**

**Lean Startup says:** The riskiest assumption is "Do customers perceive alert consolidation as valuable, or do they perceive it as opacity risk?" Test this first. If wrong, entire value prop collapses.

**Owen Project Statement says:** The riskiest assumption is "Will customer commit to next action (pilot, technical validation, procurement conversation) after demo?" This is the kill criterion. If customer does not commit, hypothesis is invalidated.

**Contradiction:** These are *different* riskiest assumptions.
- Lean Startup's assumption is **pre-demo** (does the customer want this category of tool?).
- Owen's assumption is **post-demo** (does the demo execution convince the customer?).

Both can fail independently:
- **Scenario A:** Customer wants alert consolidation (Lean Startup assumption validated) but does not trust n-able to deliver it (Owen assumption invalidated → demo execution failed).
- **Scenario B:** Customer does not want alert consolidation (Lean Startup assumption invalidated) but is polite during demo and says "interesting" (Owen assumption false-positive → we think demo succeeded but customer ghosts follows).

**Implication:** The brief conflates these two risks. Decision 2 (success criteria) must distinguish:
- **Lean Startup success:** Customer validates category need ("Yes, alert fatigue is our top 3 SOC pain point").
- **Owen success:** Customer validates n-able execution ("Yes, I want to pilot this with my team").

If only Owen success is measured, we will never learn whether category need exists at scale (because polite customers will not tell us "I don't actually need this"). [A]

**Routing:** This is a Research decision (define two-part success criteria), not a Design decision (one success metric is insufficient). [A]

---

**Tension: Mode 3 Ethnography [IIT] vs. Christensen Disruptive Innovation [INNOV]**

**Mode 3 says:** We must observe MDR analysts in situ to understand the workflow bottleneck. Without ethnography, we are assuming the incident detail view is the bottleneck. The assumption could be wrong (bottleneck could be escalation handoff, customer communication, or tooling integration latency). [CS: VERIFIED as gap in brief]

**Christensen says:** Sustaining innovations (better product for current customers) are vulnerable to faster sustaining innovation from incumbents. Alpha is sustaining. [A] If CrowdStrike ships equivalent consolidation in 6 months, n-able's differentiation window closes. Speed to market is existential.

**Contradiction:** Mode 3 ethnography takes 3–6 months (recruit analysts, shadow sessions, synthesis, journey mapping). [A] Christensen's differentiation window is 12–18 months. [A] If n-able pauses to run Mode 3, they lose 25–50% of the differentiation window before shipping.

**But:** If n-able ships without Mode 3 and the bottleneck assumption is wrong (e.g., analysts do not actually spend significant time in incident detail view — they spend time in SIEM cross-referencing or waiting for Tier 2 callbacks), then Alpha solves the wrong problem and customers will not adopt, *regardless* of competitive timing. [A]

**This is a classic speed-vs.-insight dilemma.** The brief does not resolve it.

**Three options:**
1. **Christensen wins:** Ship T1 demo now to Early Adopters. Learn from live customer usage (instrumented telemetry: which sections do analysts actually read?). Treat demo as *lightweight ethnography substitute*. Risk: customers churn if tool does not fit workflow.
2. **Mode 3 wins:** Delay demo 3 months. Run ethnography. Redesign prototype to match actual bottleneck. Ship T2 to Early Majority with validated workflow fit. Risk: CrowdStrike ships first; differentiation lost.
3. **Hybrid (Wardley-informed):** Ship T1 to *one* Early Adopter customer as **embedded ethnography** (analyst uses Alpha in production; researcher shadows them weekly for 8 weeks; treat as joint Mode 3 + pilot). Learn fast. Iterate to T2. Ship T2 to broader market. Risk: requires research capacity + customer willing to be ethnography partner.

**Implication:** This tension cannot be resolved by Design or Product alone. It is a **strategic trade-off** requiring executive decision (speed vs. insight; land-grab vs. product-market fit). The brief names the tension but does not route it to a decision-maker. [? — strategic decision governance gap]

---

**Tension: Blue Ocean ERRC [STRAT] vs. SDT [PSYCH]**

**Blue Ocean says:** Alpha's "Create" dimension is **autonomy support** (analyst can override; system logs without punishing). This is differentiation vs. competitors who ship "black box AI" without override capability. [A]

**SDT says:** Override-logging is ambiguous. It *can* support autonomy (if perceived as learning tool) or *undermine* autonomy (if perceived as surveillance). [A] The Blue Ocean "Create" claim assumes the first perception; SDT warns the second perception is equally plausible.

**Contradiction:** Blue Ocean treats autonomy-support as *feature* (we built an override button → differentiation achieved). SDT treats autonomy-support as *perception* (whether override button supports autonomy depends on organizational culture, UI framing, and manager behavior → feature alone is insufficient).

**Implication:** If n-able sells Alpha to a customer whose culture is performance-oriented (managers use override logs to evaluate analyst compliance with AI recommendations), the override button will *undermine* autonomy and analysts will stop using it (even when Alpha is wrong), creating a **perverse incentive loop**: Alpha makes mistakes → analysts do not override (fear of looking uncooperative) → mistakes propagate → customer perceives Alpha as low-quality → churn. [A]

This is a **service design failure**, not a feature failure. The feature (override button) is correct. The *service context* (how override data is used) determines whether the feature supports or undermines autonomy.

**Routing:** This is a **Customer Success + Product** decision. Product builds the feature. Customer Success must:
1. Document recommended override-logging policy for customers (e.g., "Override logs are analyst training data, not performance metrics").
2. Train customer managers: "If you use override logs to evaluate analyst performance, you will undermine trust in Alpha."
3. Build override-log dashboard with **analyst-only view** (analyst sees their own overrides + Alpha's learning from them) and **optional manager view** (manager sees *aggregate* override rate across team, not individual analyst attribution).

The brief does not address this service-layer design. [CS: VERIFIED as gap] Blue Ocean identifies the feature; SDT identifies the risk. Neither voice resolves the service design. [A]

---

---

**End of testimony. All 44 voices have owensed. Cross-talk has produced three claims no single voice held alone: (1) Peirce's Reading D (47→12 as persuasion artifact, not empirical claim), (2) Service Blueprint's handoff summary feature (collaborative workflow gap), (3) Wardley's strategic choice forcing function (speed vs. completeness determines customer profile, not vice versa).**

**Synthesis slot:** [0% Claude — fill this in]

---
