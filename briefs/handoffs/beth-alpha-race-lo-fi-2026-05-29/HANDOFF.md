# Alpha RACE Lo-Fi Prototype — Verified Handoff

**Project:** Alpha RACE Customer Demo (Tier 1 Concept)  
**Recipient:** Beth Schwindt  
**Created:** 2026-05-29  
**Verification:** Bradley (47% grep-gate applied)

---

## Section 1: What the math actually says

**Lead number (grep-verified):** 58% [A]+[?] world-claims evidence ratio.

**Source:** `briefs/alpha-race-math-recount.md` lines 99-101, 168.  
**Verification method:** Three-ratio count (world-claims / test-plan / inflated-with-meta). Lead number is world-claims ratio with generous sourcing (credits council testimony embedded in prototype + framework citations as implicit [R]).

**Strict count (conservative sourcing):** 68.5% [A]+[?] (`alpha-race-math-recount.md` line 92).  
**Floor count (most aggressive sourcing):** 62.7% [A]+[?] (`alpha-race-math-recount.md` line 96).

**Spec's judgment call:** Report 58% as lead number — midpoint between floor (63%) and an even more generous pass that credits framework citations as sourced scholarship (line 174).

**Band Protocol threshold:** <30% [A]+[?] for production build. This brief does not pass. It DOES pass the gate for Tier 1 Concept (lo-fi exploration where high assumption ratio is expected).

**Blocking decisions (grep-verified):** 4 (`alpha-race.brief.md` — Decision 1: customer profile, Decision 2: success criteria, Decision 3: incident story source, Decision 4: narrative format validation). All four are in Gate 3 section (lines 84-107).

**Council voices (grep-verified):** 45 total (`council-testimony.md` frontmatter line 8: `total_voices: 45`). Not 44 as prototype HTML button claims (discrepancy: HTML button was coded before final council count).

**Critic delta (grep-verified):**  
- Coherence: 4/5 pre → 5/5 post = **+1** (`critic-pass-2.md` line 14)  
- Demo-ability: 4/5 pre → 5/5 post = **+1** (`critic-pass-2.md` line 16)  
- Risk: 5/5 pre → 4/5 post = **-1** (`critic-pass-2.md` line 18)  
- Net: +2 gain (24/30 pre → 26/30 post)

---

## Section 2: Three productive tensions (council cross-talk)

Council surfaced three framework clashes in cross-talk section (`council-testimony.md` lines 598-762). These are **decisions, not gaps** — frameworks contradict on sourced points. Beth must route each to its owner.

### Tension 1: JOBS-to-Be-Done × Self-Determination Theory

**JOBS says:** Alpha solves the functional job (triage faster: 42min → 17min) and emotional job (feel in control during alert surge). Sub-job 3 (Confidence: "Let me verify and override") is part of the functional job. (`council-testimony.md` lines 326-346)

**SDT says:** Sub-job 3 is not functional — it is motivational. The need to verify and override is about autonomy preservation (analyst will not trust a tool that removes agency, even if empirically accurate). Override-logging may feel like controlled-autonomy (surveilled, not empowered). (`council-testimony.md` lines 363-386, 634-646)

**Reframe (SDT):** Sub-job 3 is not "Let me verify when tool is wrong." Sub-job 3 is "Let me *feel* I am in control of the triage decision, whether or not I actually override." This shifts design criteria:
- JOBS framing: Optimize for override *accuracy* (make it easy to override when Alpha is wrong).
- SDT framing: Optimize for override *availability* (make the override button visible and frictionless, even if analyst never clicks it, because its presence signals autonomy).

**Unresolved:** Does logging analyst overrides increase or decrease trust? If customer's MDR culture is performance-oriented (managers use override logs to evaluate analyst compliance), override button will undermine autonomy and analysts will stop using it — even when Alpha is wrong. (`council-testimony.md` lines 742-762)

**Route to:** Product + Customer Success. Product builds the feature. Customer Success must document recommended override-logging policy for customers (e.g., "Override logs are analyst training data, not performance metrics").

---

### Tension 2: SIGN (Peirce semiotics) × JOURNEY (reading order)

**SIGN says:** Customer sees "47 alerts consolidated into 12 incidents" and infers workload reduction. This is the representamen (sign). But the sign admits two interpretant readings:
1. Workload reduction reading: "This tool saves analyst time by reducing noise." (Intended)
2. Opacity risk reading: "What happened to the other 35 alerts? Did the tool suppress signals I need to see?" (Alternative)

Without narration, customer chooses the interpretant. Demo does not control which reading lands. (`council-testimony.md` lines 107-126)

**JRNY says:** Reading order is uncontrolled. Customer may anchor to Story (narrative) or Timeline (procedural) or Scoring (MITRE). Prototype presents all three simultaneously = high cognitive load. If customer anchors to wrong section, intended value prop is lost. Under demo time pressure, synthesis across three panels is cognitively expensive. (`council-testimony.md` lines 449-453)

**Tension:** SIGN assumes "47→12" headline metric sells itself. JRNY says reading order determines whether customer even *sees* the consolidation logic (correlation grid) that addresses opacity risk. If customer reads only Story section and ignores Timeline + correlation grid, opacity misread may fire.

**Unresolved:** A/B test Story-only vs Timeline-only to determine if both are needed. Comprehension test: show "47→12" to 5 people cold, 30 seconds, ask "What does this tool do?" Pass threshold: ≥4 can explain without choosing opacity-risk reading.

**Route to:** Design (comprehension test) + Research (reading order test: eye-tracking or 10-person usability).

---

### Tension 3: PORTER (value chain) × POSITIONING (Moore)

**PORTER says:** Alpha is Type 7 (Product Performance: better consolidation) + Type 9 (Customer Engagement: transparency UI) per Doblin 10 Types. Both are easily copied innovation types. CrowdStrike/Arctic Wolf can ship equivalent in 6-12 months if they observe customer demand. Short competitive lead. Must sell on urgency. (`council-testimony.md` lines 211-227)

**POSITIONING says:** Alpha is Early Adopter stage (internal beta + Hilda). Moore warns: Early Majority customers expect whole product (integrations, training, pricing clarity). T1 fidelity will lose them. Demo customer's adoption profile determines demo success probability:
- If Early Adopter: Tolerates T1. Wants to see "the future" even if rough. Lo-fi is *credible* because it signals "you are early; we are co-creating."
- If Early Majority: Expects whole product. Lo-fi is *not credible* because it signals "this is not finished; why are you showing me vaporware?" (`council-testimony.md` lines 267-287)

**Tension:** PORTER says "ship fast before competitors close the window." POSITIONING says "ship to wrong adoption profile and you lose credibility, not just the deal."

**Unresolved:** Is the demo customer Early Adopter (tolerates rough edges) or Early Majority (expects polish)? Decision 1 (customer profile) must resolve this. If Early Majority, do not run T1 demo — customer will perceive unpreparedness, not co-creation.

**Route to:** Product + Sales (Decision 1: customer profile must specify adoption maturity, not just vertical/endpoint count).

---

## Section 3: Three calls (decisions Beth must make)

Every handoff ends with three specific decisions Beth must make, with names and timelines. Not open-ended questions.

### Call 1: Resolve Decisions 1-2 before scheduling any customer demo (Product + Sales, 1 week)

**Decision 1 (customer profile):** Actual customer vertical, endpoint count, SOC maturity, tooling, adoption profile (Early Adopter vs. Early Majority), and fictional proxy profile for prototype content.

**Decision 2 (success criteria):** One sentence: "This demo succeeds when ___." Options:
- Lean Startup success: Customer validates category need ("Yes, alert fatigue is our top 3 SOC pain points").
- Owen success: Customer validates n-able execution ("Yes, I want to pilot this with my team").
- Both (two-part success criteria).

**Why this is Call 1:** Every other decision inherits from these two. Prototype content (Acme Building Supply placeholder), SE narration script (what to say when fidelity banner draws questions), and comprehension test design (Early Adopter vs Early Majority framing) all scale from customer profile + success criteria.

**If Beth does not make this call:** Compression illusion fires (Failure Mode 1). Team ships T1 prototype to customer without framing. Customer perceives "NOT READY" banner as "n-able is unprepared" rather than "this is a probe." Credibility collapses mid-presentation.

**Routing:** Product (Beth or delegate) + Sales lead. Timeline: Resolve within 1 week of receiving this handoff, or do not schedule customer demo.

---

### Call 2: Run comprehension test OR accept opacity risk (Design + Research, 2 weeks if running test)

**The test:** Show "47 alerts consolidated into 12 incidents" screen to 5 people cold (no context, no narration). 30 seconds. Ask: "What does this tool do?"

**Pass threshold:** ≥4 can explain consolidation as workload reduction (not opacity risk: "What happened to the other 35 alerts?").

**If test fails:** Redesign required. Options:
- Add narration layer (SE says "You can drill down into all 47 alerts; we are not hiding anything" before showing screen).
- Redesign hero metric to surface correlation grid above the fold (make "all 47 visible" the first thing customer sees, not the last).
- A/B test Story-only vs Timeline-only (remove cognitive load of multi-panel synthesis).

**If Beth skips this test:** Accept opacity risk as unmitigated. Customer may misread "47→12" as signal suppression, not workload reduction. Value prop collapses. No way to detect this in advance.

**Routing:** Design (run test) + Research (analyze results, recommend redesign if needed). Timeline: 2 weeks (recruit 5 testers, run 30-second sessions, synthesize findings). If Beth does not have 2 weeks before demo, skip test and add SE narration script to mitigate opacity risk.

---

### Call 3: Decide council synthesis ownership (Beth, before next stakeholder review)

**The gap:** Council modal in prototype shows `[0% Claude — fill this in]` in synthesis slot (`index.html` line 1080, `council-testimony.md` line 768).

**The decision:** Who writes the synthesis?
- **Option A (Beth):** Beth reads 45 council voices, writes 2-3 sentence synthesis in her own words. This honors Band Protocol principle (substitution is not assistance; judgment is Beth's). Synthesis becomes her read of the tensions.
- **Option B (Claude):** Claude synthesizes council voices into 2-3 sentences. This violates Band Protocol unless Beth explicitly invokes Copilot Exception ("I hold the judgment; Claude handles mechanics"). Synthesis becomes fluency, not judgment.
- **Option C (No synthesis):** Leave slot empty or remove it. Council testimony stands as-is (45 voices, no editorial layer). Stakeholder reads tensions directly.

**Why this is Call 3:** Stakeholders (Carla, Nicole, Zachary) will click "Council · 44 voices" button. If synthesis slot is empty, it reads as incomplete. If synthesis is Claude-written without Beth's judgment, it's sycophancy. If synthesis is Beth-written, it becomes her strategic read — and that read may inform Decision 1 (customer profile) and Decision 2 (success criteria).

**Routing:** Beth (this is a Band Protocol meta-decision about ownership, not a delegation). Timeline: Before next stakeholder review. If stakeholder review is <48 hours away, remove synthesis slot from modal (Option C).

---

**End of HANDOFF.md. See NEXT-STEPS.md for full decision routing + pipeline re-run plan.**
