# Pre-Build Scorecard — Alpha RACE Lo-Fi for Alaina
**Project:** Alpha RACE Customer Demo (T1 Concept refresh)  
**Audience:** Alaina (internal designer)  
**Review date:** 2026-05-29  
**Critic pass:** Pre-build (pass 1)

---

## Score Table

| Dimension | Score | Status |
|-----------|-------|--------|
| **Coherence** | 4/5 | Problem → solution chain mostly holds |
| **Source-fidelity** | 2/5 | 58% [A]+[?] — expected at T1, blocks T2+ |
| **Demo-ability** | 4/5 | Structure is prototype-ready, content has gaps |
| **Differentiation** | 2/5 | Competitive map missing, innovation type vulnerable |
| **Risk** | 5/5 | Four failure modes explicitly named with detection criteria |
| **Scope discipline** | 3/5 | Achievable if decisions resolve; otherwise sprawls into placeholder-land |

**Overall:** 20/30 — **Appropriate for T1 concept exploration with Alaina.** Not ready for customer-facing demo without decision resolution.

---

## Dimensional Analysis

### 1. Coherence — 4/5
**Score reasoning:** Problem statement (alert fatigue, manual correlation) traces cleanly to solution (47→12 consolidation + transparency UI). Theory of Change has three untested leaps (customer comprehends consolidation, interprets it as value, converts conviction to contract), but the brief names them explicitly rather than hiding them. One point deducted because the leaps are identified, not validated — the chain *holds structurally* but not *evidentially*.

**Evidence from brief:**
> "Theory of Change (explicit): Customer sees 47→12 consolidation ratio → customer believes Alpha reduces analyst workload → customer trusts n-able to ship it → customer signs/expands contract. [A]  
> **Three leaps of faith in that chain:**  
> 1. Customer comprehends what "47→12" means without explanation. [?]  
> 2. Customer interprets consolidation as value (not as opacity risk: "what happened to the other 35 alerts?"). [?]  
> 3. Demo conviction translates to buying decision. [?]"

### 2. Source-fidelity — 2/5
**Score reasoning:** 58% of world-claims are [A] or [?]. Hilda's "3-4 tickets turn out to be one incident" quote and Black Team's 47→12 metric are verified [R]/[D]. Everything else — customer workflow, competitive landscape, economic buyer needs, narrative format validation — is assumed or unknown. For T1 concept this ratio is acceptable (brief explicitly acknowledges this). For T2+ or customer-facing demo, this blocks build. Two points awarded for honest math discipline and explicit tagging; three points withheld because the gaps are real.

**Evidence from brief:**
> "**World-claims evidence ratio:** 58% [A] + [?] (see math recount for breakdown)  
> **Status for Tier 1:** This passes the gate for concept exploration at T1 fidelity. High assumption ratio is expected at this stage. Does NOT pass the 30% threshold for full build (Band Protocol requires <30% [A]+[?] for production work)."

Also:
> "**47% rule applied:** All metrics in this brief are grep-verified against source (prototype HTML, council testimony)."

### 3. Demo-ability — 4/5
**Score reasoning:** Structure is prototype-ready (incident story, timeline, scoring sections exist from prior build). Bradley rail format, fidelity banner, and design tensions are specified. Content gaps exist (Decision 1: customer profile; Decision 3: incident story source) but these are *content decisions*, not *structural blockers*. A working prototype can ship with placeholder content and be useful to Alaina for evaluating design tensions. One point deducted because four blocking decisions mean the prototype cannot be shown to a customer *as-is* without narration/framing.

**Evidence from brief:**
> "**Decision 1: Customer profile** — **What's decided:** Actual customer vertical, endpoint count, SOC maturity, tooling, and fictional proxy profile for prototype content  
> **Why it blocks:** Every content decision (asset type, attack surface, score context) scales from this call. [A]"

Also:
> "Prototype exists (T1). Four blocking decisions prevent full build. Test plan outlined but not run."

### 4. Differentiation — 2/5
**Score reasoning:** No competitive feature map exists. CrowdStrike Falcon Complete, Arctic Wolf, Huntress, Sophos MDR, Red Canary — none analyzed for parity on alert consolidation or transparency UI. Doblin classification (Type 7 Performance + Type 9 Engagement) and Christensen classification (sustaining innovation) both flag short competitive lead and easy copying. Wardley mapping suggests 12–18 month differentiation window, but this is [A] and unverified. Two points awarded because the *absence* of competitive intel is explicitly named as a gap; three points withheld because the gap is a real risk.

**Evidence from brief:**
> "**Competitive landscape — MISSING**  
> No competitive map exists in the brief or prototype. [CS: VERIFIED] CrowdStrike Falcon Complete, Arctic Wolf, Huntress, Sophos MDR, Red Canary — none appear in value prop positioning. [?]"

Also:
> "**Doblin:** Type 7 (Product Performance) + Type 9 (Customer Engagement). [A] Both are easily copied by competitors. [A]"

### 5. Risk — 5/5
**Score reasoning:** Four failure modes named with detection criteria: (1) Compression illusion (T1 fidelity misinterpreted as customer-ready), (2) Evidence-free conviction (politeness ≠ interest), (3) Trust erosion via synthetic data (credibility threshold), (4) Selling to wrong buyer (analyst vs CISO needs). Each failure mode includes "What happens / Why it fails / How to detect." This is exemplary risk transparency. Full marks.

**Evidence from brief:**
> "### Failure mode 1: Compression illusion  
> **What happens:** Team interprets "lo-fi / T1 Concept" as permission to skip decisions and ship the placeholder demo to customer.  
> **Why it fails:** T1 fidelity is appropriate for *internal* stakeholder review (Carla, Nicole, Zachary). It is *not* appropriate for customer demo without narration, context-setting, and explicit framing as "early concept, seeking feedback." [A]  
> **How to detect:** Ask SE: "Will you show the fidelity banner to the customer, or hide it?" If hide: why are we including it? If show: what will you say when customer asks what Tier 1 means? [?]"

### 6. Scope discipline — 3/5
**Score reasoning:** If Decisions 1–4 resolve, scope is tightly contained (single-screen incident detail view, no alert queue or escalation handoff). If decisions *don't* resolve, prototype sprawls into placeholder-land ("Acme Building Supply" generic content) and becomes unusable for validation. Brief explicitly flags this risk. Three points awarded for clear boundaries and explicit decision-gating; two points withheld because the *conditionality* means scope is not yet locked.

**Evidence from brief:**
> "**Decision 1: Customer profile** — [...] **If unresolved:** Demo runs with generic "Acme Building Supply" placeholder. Customer asks "whose industry is this?" and credibility collapses mid-presentation. [A]"

Also:
> "We have one screen (incident detail view) with no journey map showing before (alert queue) or after (escalation handoff). [A] The screen shown may not be the bottleneck. [?]"

---

## Punch List

### ✓ PASS — Ready for build (internal, Alaina-focused)

1. **Structural coherence:** Problem statement → solution chain holds. Theory of Change leaps are named, not hidden.
2. **Risk transparency:** Four failure modes with detection criteria. Honest about what's assumed vs verified.
3. **Fidelity discipline:** 30/60/90 framework applied correctly. T1 scope matches T1 claims.
4. **Honest math:** 58% [A]+[?] ratio calculated and verified. 47% rule applied (no fluent-but-wrong stats).
5. **Council tensions named:** JOBS vs SDT, SIGN vs JRNY, PORT vs POS — three major clashes surfaced for design exploration.
6. **Prototype structure exists:** Prior build (three-tier-test.html) provides skeleton. Not starting from blank canvas.

### ⚠ RISK — Flag for attention during build

7. **Placeholder content risk (Failure Mode 1):** If Decisions 1 + 3 don't resolve before build, prototype ships with "Acme Building Supply" generic content. This is fine for Alaina (internal design review) but *cannot* be shown to customer without explicit framing. **Mitigation:** Add banner to prototype: "Content is illustrative. Customer vertical + incident story TBD."

8. **Reading order uncontrolled (Tension 2: SIGN vs JRNY):** Prototype will show Story + Timeline + Scoring sections, but no eye-tracking or usability data exists on which section customers read first. Customer may anchor to Timeline (procedural) and ignore Story (narrative), or vice versa. **Mitigation:** Design all three sections to stand alone. Do not assume linear reading order.

9. **Override-logging perception untested (Tension 1: SDT):** Transparency UI logs analyst overrides. Brief flags risk: does this feel like autonomy-support (competence) or surveillance (controlled-autonomy)? **Mitigation:** Alaina should evaluate: does the UI *show* logging, or *imply* it? If shown, how is it framed — audit log (neutral) or performance tracking (threatening)?

10. **Competitive vulnerability (Differentiation gap):** No feature map for CrowdStrike, Arctic Wolf, Huntress. If competitors already ship alert consolidation + transparency, Alpha's differentiation collapses. **Mitigation:** Do not design for uniqueness until competitive parity is verified. Assume commoditization and design for execution quality, not novelty.

11. **Economic buyer blind spot (Failure Mode 4):** Demo optimizes for analyst (speed) but CISO (economic buyer) cares about cost-per-incident, audit logs, analyst retention, SLA defensibility. Prototype may not surface these. **Mitigation:** Alaina should identify which UI elements serve analyst vs economic buyer. If <30% of screen addresses CISO concerns, flag as risk.

### ✗ MISSING — Gap that will hurt the prototype

12. **Decision 1: Customer profile unresolved.** Without vertical, endpoint count, and SOC maturity, every content decision (asset type, attack surface, score context) is arbitrary. Prototype will feel generic. **Impact:** Alaina cannot evaluate whether design choices match customer context, because context doesn't exist yet.

13. **Decision 2: Success criteria undefined.** "This demo succeeds when ___" is blank. Prototype cannot be validated without this anchor. **Impact:** Design review with Alaina has no north star. "Does this work?" cannot be answered without knowing what "work" means.

14. **Decision 3: Incident story source unresolved.** Real Alpha output (anonymized) vs Beth-designed synthetic. Credibility hinges on this. **Impact:** If story is too polished (Beth-written, trained writer), it smells synthetic. If story is too rough (real output), it may expose Alpha's current limitations. Alaina needs to know which risk to design for.

15. **Decision 4: Narrative format validation missing.** "What happened / What we did / What to do next" shipped to analysts (users). Showing it to customers (buyers) is a different claim requiring validation. **Impact:** Prototype may solve for wrong audience. If CISO sees narrative and asks "where's the audit log?", format fails.

16. **Competitive feature map absent.** No teardown of CrowdStrike Falcon Complete, Arctic Wolf, Huntress for alert consolidation + transparency parity. **Impact:** Design differentiation is guesswork. If competitors ship equivalent UI, Alpha's edge is execution speed, not feature set. Design implications unknown.

17. **Mode 3 ethnography gap.** No workflow observation of MDR analysts in situ. One screen (incident detail) shown, but bottleneck may be elsewhere (alert queue, escalation handoff). **Impact:** Prototype may be high-fidelity design of the wrong screen.

18. **Economic buyer needs unmapped.** CISO, VP Security, or IT Director signs MDR contracts. Their concerns (cost, compliance, retention, SLA) not addressed in current design. **Impact:** Prototype may win analyst enthusiasm but lose economic buyer approval.

### ? DECISION — Requires human call before build

19. **Decision 1 (customer profile):** Beth Schwindt + Raj Dhesi + Sales/CSM input must resolve before content can be realistic. **Call:** Is the demo customer Early Adopter (tolerates rough edges, wants speed) or Early Majority (expects polish, wants whole product)? This determines fidelity tolerance and content depth.

20. **Decision 2 (success criteria):** Beth + Sales lead must define "This demo succeeds when ___." One sentence. **Call:** Is success "customer schedules pilot scoping meeting" (concrete) or "customer expresses interest" (vanity metric)?

21. **Decision 3 (incident story source):** Raj Dhesi (Alpha engine) + Beth must choose: Option A (real Alpha output, anonymized) or Option B (Beth-designed synthetic with credibility mitigations). **Call:** Does real output expose Alpha's current limitations in ways that hurt demo credibility? Or does synthetic output smell "too clean to be real"?

22. **Decision 4 (narrative format validation):** Beth + Research (if available) + 5-10 MDR analysts must test whether "What/Why/Next" format works for buyers (CISOs), not just users (analysts). **Call:** Does narrative need a fourth section for economic buyer concerns (cost, compliance, SLA), or does it stay analyst-focused and rely on SE narration to bridge to CISO?

---

## Design Callouts for Alaina

### Which design tensions should the prototype surface?

1. **JOBS vs SDT (functional job vs autonomy threat):**  
   - **Tension:** Alpha solves triage speed (functional job) but override-logging may feel like surveillance (controlled-autonomy) rather than competence-support.  
   - **Design question:** How is override-logging shown in the UI? As audit log (neutral, compliance-framed) or performance tracking (threatening, surveillance-framed)? Does the analyst see "Override logged for compliance" or "Your override was recorded"?  
   - **Prototype should test:** Two variants — logging implied vs logging visible. Which feels more autonomy-supportive?

2. **SIGN vs JRNY (narrative anchor vs reading order):**  
   - **Tension:** Customer may read "47→12" and infer workload reduction, OR read "What happened to the other 35 alerts?" (opacity risk). Reading order is uncontrolled under demo pressure.  
   - **Design question:** Should Story / Timeline / Scoring sections each stand alone (modular), or do they require linear reading (sequential)? If customer anchors to Timeline and ignores Story, does the tool still make sense?  
   - **Prototype should test:** Remove one section at a time. Does Story-only work? Timeline-only? Scoring-only? Or does synthesis require all three?

3. **PORT vs POS (sustaining innovation vs Early Adopter stage):**  
   - **Tension:** Alpha is Type 7+9 Doblin (performance + engagement), easily copied. Competitive lead is short (12–18 months, [A]). But Alpha is also Early Adopter stage (internal beta + Hilda). Moore warns: Early Majority expects whole product (integrations, training, pricing clarity). T1 fidelity loses them.  
   - **Design question:** Should the prototype look "rough-edged" (Early Adopter signal: this is cutting-edge, tolerate incompleteness) or "polished" (Early Majority signal: this is production-ready, trust us)? Fidelity is a product positioning signal, not just aesthetics.  
   - **Prototype should clarify:** Is the fidelity banner ("Tier 1 Concept — lo-fi stakeholder/exec review") shown to customer, or hidden? If shown, what does SE say when customer asks what Tier 1 means?

### What design validation questions should the prototype help answer?

4. **Comprehension test (30-second cold read):** Show "47→12 alerts consolidated into 12 incidents" screen to Alaina (or 5 people cold). 30 seconds. Ask: "What does this tool do?" Pass: ≥4 can explain consolidation + analyst workload reduction without prompting.

5. **Believability test (synthetic data credibility):** If Decision 3 resolves to Option B (Beth-designed synthetic), show incident story to Alaina. Ask: "Does this look like real Alpha output, or does it smell like design fiction?" Pass: Alaina says "real" or "plausibly real." Fail: Alaina says "too clean" or "no way an AI wrote this."

6. **Reading order inference:** Without eye-tracking (not available at T1), Alaina can simulate: "Cover two of the three sections (Story / Timeline / Scoring). Can you still understand what Alpha does from the remaining section alone?" If no section works in isolation, the design is fragile under uncontrolled reading order.

7. **Override-logging perception:** Show override-logging UI to Alaina. Ask: "Does this feel like the tool is supporting you or watching you?" If "watching," revise framing. If "supporting," validate with 5 MDR analysts (Decision 4 territory).

8. **Economic buyer presence test:** Cover the Story section (analyst-facing narrative). Look at Timeline + Scoring only. Ask Alaina: "If I'm a CISO who cares about cost, compliance, and SLA defensibility — do I see my concerns addressed here?" If no, flag as Failure Mode 4 risk.

### What should NOT be designed yet (decisions still blocking)?

9. **DO NOT design customer-specific content (Decision 1 unresolved):** Asset types, attack surface, industry-specific score context — all hinge on customer profile (vertical, endpoint count, SOC maturity). Use generic placeholder ("Acme Building Supply") and mark it as [TBD]. Designing specifics now = rework when Decision 1 resolves.

10. **DO NOT design for uniqueness (competitive map missing):** No feature differentiation is verified. Assume competitors may ship equivalent consolidation + transparency UI within 12–18 months. Design for execution quality (speed, clarity, trust), not novelty. Do not lean on "we're the only ones who do this" as a value prop — it may be false.

11. **DO NOT design economic buyer section yet (Decision 4 unresolved):** CISO concerns (cost-per-incident, audit logs, analyst retention, SLA) are identified but not validated. Adding a "For CISOs" section now is premature. Instead, Alaina should *flag where* such a section would go (Timeline? Scoring? Separate tab?) and note it as [TBD].

12. **DO NOT finalize narrative voice (Decision 3 unresolved):** If incident story source is real Alpha output (Option A), narrative voice is determined by the engine. If Beth-designed synthetic (Option B), voice must be roughened to avoid "too polished" smell. Designing final narrative copy now = rework when Decision 3 resolves.

13. **DO NOT design test protocol UI (Decision 2 unresolved):** Success criteria undefined. Prototype cannot include validation hooks (e.g., "Click here when you understand the consolidation ratio" comprehension test) until Decision 2 clarifies what success looks like.

---

## Baseline for Post-Build Comparison

### Scores expected to improve after build:
- **Demo-ability (currently 4/5):** Should reach 5/5 if prototype ships with working HTML, Bradley rail, and design tension exploration. Drop to 3/5 if content remains generic placeholder without Decision 1 resolution.
- **Scope discipline (currently 3/5):** Should reach 4/5 if build respects single-screen constraint and doesn't sprawl into alert queue or escalation handoff. Drop to 2/5 if feature creep occurs.

### Scores expected to stay stable (not changing at T1 build):
- **Coherence (currently 4/5):** Stable. Problem → solution chain holds. Build won't change this.
- **Source-fidelity (currently 2/5):** Stable. 58% [A]+[?] ratio won't change until Decisions 1–4 resolve and brief reruns. T1 build is not evidence-gathering.
- **Differentiation (currently 2/5):** Stable. Competitive map absence won't change until research runs. Build won't fix this.
- **Risk (currently 5/5):** Stable. Failure modes already named. Build should *reference* them in Bradley rail but won't add new ones.

### Red flags for post-build review:
- **If Demo-ability drops below 3/5:** Prototype shipped with broken structure (no fidelity banner, no Bradley rail, or sections missing).
- **If Scope discipline drops below 2/5:** Feature creep occurred. Alert queue or escalation handoff added despite brief's single-screen constraint.
- **If Source-fidelity improves to 3/5+ without decision resolution:** [CS: FABRICATION RISK] — build invented customer profile, success criteria, or incident story without human input. This violates Decision 1/2/3 gates.

---

**End of pre-build scorecard.**