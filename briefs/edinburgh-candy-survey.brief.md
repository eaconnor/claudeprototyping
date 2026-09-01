---
feature: "Edinburgh Office Monthly Candy Survey"
gate: 30
owner: "Beth"
problem_statement: "Edinburgh office vending machine may be stocked by vendor defaults rather than employee preferences, potentially leading to waste and low satisfaction [A — no current satisfaction data, no waste metrics, no employee feedback sourced]"
okr_objective: "Improve Edinburgh office vending satisfaction"
okr_key_result: "Increase 'satisfied with candy selection' from [?] baseline to [?] target by December 2026"
counter_metric: "Survey response rate must not drop below [?]% across 12 monthly waves; survey fatigue incidents reported must remain at zero"
idea_score: "N/A — survey instrument, not product feature"
evidence_sources: 
  - "scout_input/01-uk-vending-top-sellers.md"
  - "scout_input/02-scottish-brands.md"
status: "draft"

domain_model:
  entities:
    - name: "Respondent"
      identity: "Unique person in Edinburgh office tracked across monthly survey waves"
      attributes: ["anonymous_id", "wave_participation_history", "first_participation_date"]
      evidence: "[A] — no Edinburgh office roster provided, no headcount data"
    
    - name: "Survey Wave"
      identity: "Each monthly survey instance (e.g., June 2026, July 2026)"
      attributes: ["wave_date", "response_count", "candy_options_presented", "completion_rate", "median_time_to_complete"]
      evidence: "[A] — monthly frequency assumed; no requirement doc sourced"
    
    - name: "Candy Option"
      identity: "Specific product available for rating or selection"
      attributes: ["brand", "product_name", "type (chocolate/crisps/drink/biscuit)", "scottish_origin", "current_vending_availability"]
      evidence: "[R] — UK vending top sellers verified; [?] Edinburgh-specific popularity unknown; [?] current office vending stock unknown"
    
    - name: "Response"
      identity: "One respondent's answer in one wave"
      attributes: ["respondent_id", "wave_id", "candy_selections", "preference_ratings", "timestamp", "completion_time_seconds"]
      evidence: "[A] — response schema assumed, not specified in requirement"
  
  value_objects:
    - name: "Preference Rating"
      describes: "Response — scalar or ranked preference for a candy option (e.g., 1-5 Likert, or top-3 ranking)"
      evidence: "[A] — rating method is design decision, not sourced requirement"
    
    - name: "Participation Status"
      describes: "Respondent — active (responded this wave) / dropped (missed N consecutive waves) / returned (rejoined after absence)"
      evidence: "[A] — longitudinal tracking method assumed; [R] if survey methodology lit sourced attrition tracking, but none in scout"
  
  services:
    - name: "CollectResponse"
      acts_on: ["Respondent", "Survey Wave"]
      trigger: "Monthly survey launch (first Monday of month [A])"
      evidence: "[A] — no launch schedule specified"
    
    - name: "RandomizeOptionOrder"
      acts_on: ["Candy Option"]
      trigger: "Survey render per respondent"
      evidence: "[A] — order bias mitigation is best practice but not sourced as requirement"
    
    - name: "TrackLongitudinalChange"
      acts_on: ["Response", "Respondent"]
      trigger: "Analysis after wave closes (monthly close date [?])"
      evidence: "[A] — longitudinal goal implied by 'monthly' but no analysis plan sourced"
    
    - name: "ShareResultsBack"
      acts_on: ["Survey Wave", "Respondent"]
      trigger: "After each wave analysis completes"
      evidence: "[A] — retention strategy implied, not explicit requirement"
  
  ubiquitous_language:
    - term: "candy option"
      means: "A product available in the vending machine or potentially available (includes chocolate bars, crisps, drinks, biscuits)"
    
    - term: "wave"
      means: "One monthly survey instance — NOT 'round', 'cycle', or 'iteration'"
    
    - term: "respondent"
      means: "A person in the Edinburgh office participating in the survey — NOT 'participant', 'user', or 'employee' (to preserve anonymity)"
    
    - term: "scottish brand"
      means: "Product manufactured by Scottish company (Tunnock's, Irn-Bru) — cultural relevance flag for Edinburgh context"
---

# Edinburgh Office Monthly Candy Survey — Spec Brief

**Fidelity:** 30% schematic (Tier 1 Concept). High [A] and [?] ratios expected and named below.

**Evidence readiness warning:** World-claims ratio is 73% [A]+[?] (see math-recount). This brief proceeds because it is explicitly schematic (30% gate), but Gate 1 is not satisfied for a build-ready spec.

---

## Gate 1: Problem — Is it real and sourced?

### Problem Statement

The Edinburgh office vending machine may be stocked by vendor defaults rather than employee preferences [A — no vendor contract reviewed, no current stock list obtained], potentially leading to waste [?] and low satisfaction [?]. No baseline satisfaction data exists [?]. No employee complaints or requests have been documented [A — assumption that problem exists].

**Hypothesis [A]:** Monthly preference tracking will surface Scottish brand preferences (Tunnock's, Irn-Bru) [R — culturally significant in Scotland, verified] that may not appear in UK-wide vending defaults [A — vendor stocking practice unknown].

### Evidence Found by Scout

**UK-wide vending data [R]:**
- Top 10 UK vending products verified (Coca-Cola, Kinder Bueno, Walkers Ready Salted, Walkers Cheese & Onion, Mini Cheddars, Twix, Cadbury Twirl, Snickers, Mars Bar, KitKat 4 Finger) [CS: VERIFIED] from Vending Superstore UK sales data
- Source: https://vendingsuperstore.co.uk/blogs/news/top-10-best-selling-vending-machine-snacks-drinks-in-the-uk

**Scottish brand cultural significance [R]:**
- Irn-Bru outsells Coca-Cola in Scotland [CS: HIGH] and is available in Scottish vending machines widely [CS: HIGH]
- Tunnock's Caramel Wafers and Teacakes are "iconic Scottish brands" [CS: VERIFIED] but vending availability unknown [CS: UNKNOWN]
- Sources: Tunnock's official site, Irn-Bru coverage, vending provider sites

**Edinburgh office-specific data [?]:**
- Current vending stock: unknown
- Current satisfaction level: unknown
- Headcount: unknown
- Prior preference surveys: none found
- Vendor contract/stocking agreement: unknown

**Small-population survey concerns [?]:**
- No methodology guidance in scout
- Anonymity risk in small populations: not addressed [A — known concern in survey design but not sourced for this context]
- Sample size validity: not calculated [?]

### Evidence Ratio (World-Claims Only)

**World-claims** = claims about the Edinburgh office, vending preferences, vendor behavior, current state.

Total world-claims: 15

- [R] Research: 4 (27%)
- [D] Data: 0 (0%)
- [A] Assumed: 6 (40%)
- [?] Unknown: 5 (33%)

**[A] + [?] = 73%** — Gate 1 not satisfied for build-ready spec. Proceeding because this is 30% schematic fidelity.

---

## Gate 2: Right Thing — Does it advance the mission?

### OKR

**Objective:** Improve Edinburgh office vending satisfaction [A — assumes satisfaction is currently low]

**Key Result:** Increase "satisfied with candy selection" from [?] baseline to [?] target by December 2026 (12 monthly waves)

**Alternative Key Result (if waste is the goal):** Reduce vending product waste from [?] baseline to [?] target by December 2026 [A — assumes waste is measurable and currently tracked]

**Counter-Metric:** 
- Survey response rate must not drop below [?]% across 12 waves [A — threshold not determined]
- Survey fatigue incidents (complaints, opt-out requests) must remain at zero [A]
- Completion time must remain under 90 seconds per wave [A — fatigue threshold implied but not sourced]

### Mission Alignment [A]

Monthly tracking advances vending satisfaction goal IF:
1. Results are acted upon (vendor adjusts stock based on survey) [A — no vendor agreement to act on results]
2. Respondents see changes (feedback loop closes) [A — no commitment to share results or timeline]
3. Sample size is valid for population [? — Edinburgh office headcount unknown]

**Risk [A]:** Survey becomes performative (data collected, no action taken), leading to respondent cynicism and attrition.

---

## Gate 3: Built Right — Tested how?

### Survey Design Requirements

**Anonymity [A — best practice, not explicit requirement]:**
- Small populations (under 50 people) risk re-identification if demographic questions asked
- Edinburgh office size unknown [?]
- Mitigation: No demographic questions; anonymous_id generated, not tied to name/email

**Duration <90 seconds [A — implied from monthly fatigue literature, not sourced in scout]:**
- Monthly surveys tolerable if completion time is minimal
- Target: 60-90 seconds max per wave
- Test: Time pilot respondents

**Longitudinal consistency [A]:**
- Same questions every wave (enables trend tracking)
- Same respondents tracked across waves (requires anonymous_id persistence)
- Randomize candy option order to prevent order bias [A — best practice]

**Question count: 3-5 max [A]:**
1. "Which candy options would you like to see in the vending machine?" (multi-select from 15-20 options)
2. "How satisfied are you with the current vending selection?" (5-point Likert: Very dissatisfied → Very satisfied)
3. Optional: "Any candy not listed that you'd like added?" (free text, optional)

**Candy options to include [R + A]:**
- UK top sellers [R]: Coca-Cola, Kinder Bueno, Walkers Ready Salted, Walkers Cheese & Onion, Mini Cheddars, Twix, Cadbury Twirl, Snickers, Mars Bar, KitKat
- Scottish brands [R]: Irn-Bru, Tunnock's Caramel Wafers, Tunnock's Teacakes
- Current office stock [?] — unknown, must be added if survey is to measure satisfaction with *current* selection
- Rising options [R]: Double Decker, Cadbury Boost, Vimto, Aero

**Results shared back [A]:**
- After each wave, respondents see aggregate results (e.g., "Top 5 requested items this month")
- Retention strategy: Respondents who see their input reflected are more likely to continue participating

### Test Plan

**Pilot (Wave 0) [A]:**
- Run with [?] respondents (10-15 if office size allows)
- Measure: Completion time, question clarity, attrition risk signals
- Validate: Anonymity preserved, candy options comprehensive, no compound/leading questions

**Success Criteria (per wave):**
- Response rate ≥ [?]% (threshold TBD based on office size)
- Completion time ≤ 90 seconds (median)
- Attrition ≤ [?]% per wave (threshold TBD)
- Zero identifiability concerns flagged by respondents

**Longitudinal success (12 waves):**
- At least [?]% of respondents participate in 6+ waves (measures survey fatigue)
- Vendor acts on results at least quarterly [A — requires vendor agreement not yet obtained]
- Satisfaction score increases [?] points from baseline [?] to target [?]

### What Counts as "Working"

**For the survey instrument:**
- Respondents complete it in <90 seconds
- Response rate stays above threshold across 12 waves
- Data is clean (no duplicate responses, no identifiability leaks)

**For the broader goal (vending satisfaction):**
- Vendor adjusts stock based on survey results [A — agreement not sourced]
- Satisfaction score improves [?] or waste decreases [?]
- Feedback loop closes (respondents see their input reflected in vending machine changes)

---

## Failure Modes

1. **Survey fatigue → attrition:** Monthly cadence tolerable only if survey is <90 seconds and respondents see action taken. If results are ignored, participation drops. Mitigation: Share results visibly, commit to quarterly vendor stock adjustments [A].

2. **Small-population re-identification risk:** If Edinburgh office is <30 people, anonymity may be compromised even without demographic questions (e.g., "only one person requested X"). Mitigation: Aggregate results, suppress low-count items, consider quarterly instead of monthly cadence for smaller populations [A].

3. **Vendor does not act on results:** Survey becomes performative, respondent cynicism increases, response rate collapses. Mitigation: Secure vendor agreement to adjust stock quarterly based on top 5 requested items [A — agreement not yet obtained].

4. **Sample size invalidity:** If office size is <20, monthly survey results may not be statistically meaningful. Mitigation: Determine headcount [?], consult survey methodology for small-population best practices [?].

---

## What's Missing

**Critical gaps (must resolve before build):**
1. **Edinburgh office headcount [?]** — Determines sample size validity, anonymity risk, response rate thresholds
2. **Current vending stock [?]** — Cannot measure satisfaction with current selection without knowing what it is
3. **Baseline satisfaction [?]** — Key result target cannot be set without baseline
4. **Vendor agreement to act on results [?]** — Survey is performative without commitment to stock adjustment
5. **Survey methodology for small populations [?]** — Validity thresholds, anonymity best practices not sourced

**Secondary gaps (nice to have):**
6. **Survey fatigue thresholds for monthly cadence [?]** — 90-second assumption not verified in scout
7. **Edinburgh-specific candy preference data [?]** — Scout found Scottish cultural significance of Irn-Bru/Tunnock's but not Edinburgh office-specific consumption
8. **Attrition rate benchmarks [?]** — What attrition % per wave is acceptable for 12-wave longitudinal survey?

---

## Next Steps

**Before spec advances to 60% (directional fidelity):**
1. Obtain Edinburgh office headcount
2. Obtain current vending stock list
3. Run baseline satisfaction survey (one-time, before monthly tracking begins)
4. Secure vendor agreement to act on quarterly results
5. Source survey methodology for small-population validity

**Before build (90% spec-ready):**
6. Finalize question wording (no compound/leading questions)
7. Set response rate threshold based on headcount
8. Set attrition threshold based on longitudinal survey benchmarks
9. Pilot with 10-15 respondents, measure completion time and clarity
10. Lock candy option list (UK top sellers + Scottish brands + current stock)

---

**Status:** Draft, 30% schematic fidelity. World-claims ratio 73% [A]+[?] — not ready for build without resolving critical gaps 1-5 above.
