# Alpha RACE Lo-Fi Prototype — Next Steps (Decisions Only Beth Can Make)

**Project:** Alpha RACE Customer Demo (Tier 1 Concept)  
**Created:** 2026-05-29  
**Status:** Prototype showable at T1 for internal stakeholder review. NOT READY for customer demo without decision resolution below.

---

## Four blocking decisions (from brief Gate 3)

These four decisions prevent T2 build. Brief cannot re-run until all four resolve.

### Decision 1: Customer profile

**Who decides:** Beth Schwindt + Raj Dhesi + Sales/CSM input  
**What's decided:** 
- Actual customer vertical (healthcare? finance? manufacturing?)
- Endpoint count, SOC maturity, tooling
- Adoption profile: Early Adopter (tolerates rough edges) or Early Majority (expects whole product)?
- Buyer persona: CISO (risk-focused) or IT Director (efficiency-focused)?
- Fictional proxy profile for prototype content (replace "Acme Building Supply" placeholder)

**Why it blocks:** Every content decision in prototype scales from this. Incident narrative (asset type, attack surface), CISO metrics (cost-per-incident calculation), and SE narration script (what to say when customer asks "Is this real data?") all inherit customer profile.

**If unresolved:** Compression illusion (Failure Mode 1). Demo runs with generic placeholder content. Customer asks "Whose industry is this?" Credibility collapses mid-presentation.

**Timeline:** Resolve within 1 week of receiving this handoff, or do not schedule customer demo.

---

### Decision 2: Success criteria

**Who decides:** Beth Schwindt + Sales lead  
**What's decided:** One sentence: "This demo succeeds when ___."

**Options:**
- **Lean Startup success (category validation):** Customer validates category need ("Yes, alert fatigue is our top 3 SOC pain points").
- **Owen success (execution validation):** Customer commits to concrete next action (pilot scoping, technical validation, procurement conversation).
- **Both (two-part success criteria):** Measure category need AND next-action commitment.

**Why it blocks:** Without success definition, prototype cannot be validated. "It went well" means nothing. No way to distinguish real interest from polite deflection (Failure Mode 2: evidence-free conviction).

**If unresolved:** Demo runs, customer says "interesting," team interprets politeness as conviction. No learning. Post-demo debrief cannot answer "What did the customer commit to?"

**Timeline:** Resolve before scheduling customer demo (same timeline as Decision 1).

---

### Decision 3: Incident story source (real Alpha output vs. Beth synthetic)

**Who decides:** Raj Dhesi (Alpha engine) + Beth Schwindt  
**What's decided:** 
- **Option A (real Alpha output, anonymized):** Pull actual Alpha consolidation output from PUT-1166 Black Team test or live MDR environment. Anonymize customer/asset names. Use real narrative.
- **Option B (Beth-designed synthetic):** Beth writes incident story to match target customer profile (Decision 1). Story is illustrative, not real.

**Why it blocks:** Demo credibility depends on this call. Counter-metric (brief line 8) explicitly forbids "customer perceiving synthetic data as misleading."

**If unresolved:** Customer asks "Is this real data?" SE must answer:
- If Option A: "Yes, this is real Alpha output from our internal beta, anonymized." (Credible.)
- If Option B: "No, this is illustrative." (Customer infers: Alpha doesn't work yet, or n-able doesn't trust their own output. Trust erosion per Failure Mode 3.)

**Credibility threshold (Mode 4 Kumar claim):** Synthetic data that is "too polished" smells like design, not real system output. Current story is Beth-written (trained writer). May read as "too clean to be real." If Option B, add roughness (typo, ambiguous log entry, incomplete sentence) to increase believability.

**Timeline:** Resolve before T2 build. If moving to customer demo at T1 fidelity, resolve within 1 week.

---

### Decision 4: Narrative format validation (analyst-tested vs. buyer-untested)

**Who decides:** Beth Schwindt + Research (if available) + 5-10 MDR analyst testers  
**What's decided:** Does "What happened / What we did / What to do next" narrative format land with **buyers** (CISOs, IT Directors), or only with **users** (analysts)?

**Why it blocks:** Narrative format shipped to analysts (internal Black Team). Showing it to customers (buyers) is a different claim requiring validation. Economic buyer (CISO) may not see ROI, audit-log value, or breach-prevention defensibility in analyst-optimized narrative.

**If unresolved:** Demo is user-optimized. Economic buyer (CISO) sits in room, does not see their concerns addressed (cost-per-incident, audit logs, SLA improvement, analyst retention). Failure Mode 4 (selling to wrong buyer) fires.

**Test plan (if validating):** Show incident story to 5 CISOs (not analysts). Ask: "Does this format give you what you need to justify MDR spend to your CFO?" Pass threshold: ≥4 say yes.

**Timeline:** If moving to T2, validate within 3 weeks (recruit CISOs, run 15-minute sessions). If no research capacity, add CISO-specific section to prototype (already present in lo-fi as placeholder; fill it with real metrics from Decision 1).

---

## Pipeline re-run plan (if moving to T2 directional fidelity)

**Trigger:** Decisions 1-4 resolve.

**Steps:**

1. **Product resolves Decisions 1-2** (customer profile + success criteria). Timeline: 1 week.

2. **Eng (Raj) resolves Decision 3** (incident story source: real vs synthetic). Timeline: concurrent with step 1.

3. **Research (or Beth + analyst testers) resolves Decision 4** (narrative format validation). Timeline: 2-3 weeks if running CISO validation test.

4. **Scout re-runs** with new inputs:
   - Competitive teardown (CrowdStrike Falcon Complete, Arctic Wolf, Huntress, Sophos MDR, Red Canary — do they ship alert consolidation + transparency UI?)
   - Customer vertical research (if Decision 1 specifies healthcare, pull HIPAA audit-log requirements; if finance, pull PCI-DSS incident response requirements)

5. **Spec re-runs brief** with Decisions 1-4 resolved + competitive teardown added. Target evidence ratio: <40% [A]+[?] for T2 directional fidelity.

6. **Critic runs pre-build pass-3** on updated brief. Scorecard should show improved source-fidelity (currently 2/5) and differentiation (currently 1/5).

7. **Build runs T2 prototype** with:
   - Real or credibly roughened synthetic incident story (Decision 3)
   - Customer-specific content (Decision 1: replace Acme placeholder with target vertical)
   - CISO section filled with real metrics (not placeholder)
   - SE narration script included in Bradley rail (what to say when customer asks about fidelity banner, synthetic data, or "Is this production-ready?")

8. **Critic runs post-build pass-4** on T2 prototype. Delta table vs pass-3.

9. **Council re-runs** (optional, only if brief changes significantly after Decisions 1-4 resolve). New tensions may surface (e.g., if Decision 1 specifies healthcare, HIPAA compliance tension may appear).

10. **Handoff packet re-ships** to Beth with updated HANDOFF.md, NEXT-STEPS.md, and grep-verified stats.

---

## What Beth must do before next stakeholder review (Carla, Nicole, Zachary)

**Immediate (before showing prototype):**

1. **Council synthesis (Call 3 from HANDOFF.md):** Decide Option A (Beth writes synthesis), Option B (Claude writes synthesis after Beth invokes Copilot Exception), or Option C (remove synthesis slot from modal). Timeline: <48 hours if stakeholder review is imminent.

2. **Stakeholder framing script:** Write 2-3 sentences Beth will say before opening `index.html`. Example:
   > "This is Tier 1 concept fidelity — lo-fi stakeholder review, not customer-ready. Fidelity banner is honest disclosure, not apology. I am testing: Does '47→12' communicate value in a 30-second read? Four decisions are unresolved (customer profile, success criteria, incident story source, narrative validation). This is a probe, not a pitch."

**Within 1 week (before scheduling any customer demo):**

3. **Resolve Decisions 1-2** (customer profile + success criteria). Route to Product + Sales.

4. **Decide whether to run comprehension test (Call 2 from HANDOFF.md)** or accept opacity risk as unmitigated. If running test, route to Design + Research. Timeline: 2 weeks.

**Within 3 weeks (if moving to T2):**

5. **Resolve Decisions 3-4** (incident story source + narrative format validation). Route Decision 3 to Raj (Eng). Route Decision 4 to Research or Beth + analyst testers.

6. **Kick off competitive teardown** (Scout pulls CrowdStrike/Arctic Wolf feature parity data).

7. **Schedule Spec re-run** after all four decisions resolve. Target: <40% [A]+[?] for T2.

---

## What Beth does NOT need to do (pipeline handles this)

- Rewrite the brief (Spec agent reruns after decisions resolve)
- Rebuild the prototype HTML (Build agent applies T2 fidelity after brief updates)
- Recount evidence ratio (Critic + Bradley grep-verify after re-run)
- Synthesize council voices (unless Beth chooses Option A in Call 3)

**Beth's job:** Make the four decisions. Name customer profile. Define success. Choose real vs synthetic. Validate narrative format. Pipeline reruns from there.

---

**End of NEXT-STEPS.md. All routing complete. All decisions named. All timelines set.**
