# Critic Pre-Build Scorecard — Edinburgh Office Monthly Candy Survey

**Brief:** `briefs/edinburgh-candy-survey.brief.md`  
**Fidelity:** 30% schematic (Tier 1 Concept)  
**Review date:** 2026-06-02  
**Reviewer:** Critic agent  

---

## Score Summary (1–5 scale)

| Dimension | Score | Reasoning |
|-----------|-------|-----------|
| **Coherence** | 4/5 | Solution (monthly survey) traces cleanly to problem (vendor stocking by defaults vs. employee preferences). Logic is sound: if preferences unknown → collect them → share with vendor → adjust stock. Gap: vendor agreement to act on results is [A] — without it, the feedback loop doesn't close and the survey becomes performative. Deducted 1 point for this critical missing link. |
| **Source-fidelity** | 2/5 | World-claims ratio is 73% [A]+[?], honestly named. Brief inventories gaps rather than hiding them, which is appropriate for 30% schematic fidelity. UK vending data and Scottish brand cultural significance are [R] and verified. Edinburgh office-specific data (headcount, current stock, baseline satisfaction, vendor agreement) is [?]. Survey design choices (anonymity, 90-second threshold, monthly cadence, result-sharing) are [A]. This is the correct score for a concept brief — it should not be inflated. |
| **Demo-ability** | 5/5 | A monthly survey form is straightforward to prototype. Low interaction complexity (multi-select, Likert scale, optional free text). Can be shown in working HTML with seed data (fictional candy options, mock responses). Results-sharing dashboard could also be mocked up if scope permits. No technical or conceptual barriers to demo. |
| **Differentiation** | 2/5 | Dimension applies weakly to survey instruments. Brief does not articulate what makes this distinct from "use Google Forms with Scottish candy options added." The domain model (tracking Respondent across waves, RandomizeOptionOrder service, longitudinal attrition monitoring) implies sophistication beyond basic form tools, but this is assumed design practice, not a sourced requirement. If differentiation were required, it would be: small-population anonymity preservation + longitudinal wave tracking + results-sharing loop. Not articulated as a differentiator in the brief. Scored low but may be N/A for this artifact type. |
| **Risk** | 4/5 | Four failure modes explicitly named: (1) Survey fatigue → attrition, (2) Small-population re-identification, (3) Vendor inaction → performative survey, (4) Sample size invalidity. Mitigations proposed for each (though many are [A]). Strong risk inventory for a schematic brief. Deducted 1 point because the brief does not name the **political/cultural risk** of running a survey in a small office where results may create interpersonal tension (e.g., "only one person wanted X" becomes identifiable even if anonymous_id is used). This is a realistic failure mode in office contexts. |
| **Scope discipline** | 5/5 | Scope is tightly held: one monthly survey form (3-5 questions, <90 seconds). The brief mentions longitudinal tracking, results-sharing, and 12-wave analysis, but these are context for the instrument design, not scope creep into a dashboard or analytics platform. Prototype deliverable is clearly scoped: a single survey form with seed data (candy options). No sprawl detected. |

**Overall readiness:** 3.7/5 — Strong schematic brief with honest gap inventory. Not ready for build without resolving 5 critical gaps (headcount, current stock, baseline satisfaction, vendor agreement, small-population methodology). Appropriate for 30% fidelity gate.

---

## Punch List

### PASS

- **Problem-solution traceability:** Monthly preference survey → vendor stock adjustment is a coherent response to "stocked by defaults" problem, assuming vendor cooperation.
- **Evidence honesty:** 73% [A]+[?] ratio is calculated, named, and not hidden. Brief does not pretend to be more ready than it is.
- **Failure mode inventory:** Four realistic risks named (survey fatigue, re-identification, vendor inaction, sample size invalidity) with proposed mitigations.
- **Scope clarity:** Prototype deliverable is one survey form, not a longitudinal dashboard. No sprawl.
- **Domain model rigor:** Entities (Respondent, Survey Wave, Candy Option, Response) and services (CollectResponse, RandomizeOptionOrder, TrackLongitudinalChange, ShareResultsBack) are well-defined with evidence tags. Ubiquitous language is precise ("wave" not "round," "respondent" not "employee").
- **Survey design basics:** Anonymity, <90-second duration, question-count discipline (3-5 max), randomized option order, results-sharing loop are all sensible best practices for monthly longitudinal surveys.

### FAIL

- **No vendor agreement sourced [?]:** The entire feedback loop (collect preferences → vendor adjusts stock → satisfaction improves) depends on vendor cooperation, which is not confirmed. Without this, the survey is performative. This is a **Gate 2 failure** — the solution does not advance the mission if results are ignored.
- **No baseline satisfaction data [?]:** Key Result is "increase satisfaction from [?] to [?]" — neither value is known. Cannot measure success without a baseline. This is a **Gate 3 failure** — the test plan assumes a before/after comparison that isn't set up.
- **No Edinburgh office headcount [?]:** Survey methodology (anonymity risk, sample size validity, response rate thresholds) depends on population size. If office is <20 people, monthly surveys may not be valid or anonymous. This is a **Gate 1 failure** — the problem scope (small office vs. large office) is undefined.
- **No current vending stock list [?]:** Cannot measure satisfaction with "current selection" if current selection is unknown. Survey question 2 ("How satisfied are you with the current vending selection?") is unanswerable without this. This is a **Gate 3 failure** — the instrument design is incomplete.
- **Differentiation not articulated:** If this is "just Google Forms with Scottish candy options," that's fine for a survey instrument — but the brief implies sophistication (longitudinal tracking, anonymity preservation, results-sharing) without stating why these matter or how they differ from off-the-shelf tools. Not a blocker for a concept brief, but a gap if this is meant to justify custom tooling.

### MISSING

- **Survey methodology for small populations [?]:** Validity thresholds, anonymity best practices, attrition benchmarks are assumed ([A]) but not sourced. Brief mentions this as a gap but does not resolve it. Needed before 60% directional fidelity.
- **Survey fatigue thresholds for monthly cadence [?]:** The 90-second completion time threshold is [A] — "implied from monthly fatigue literature, not sourced in scout." This is a load-bearing assumption (monthly surveys are tolerable only if fast). Should be verified before build.
- **Attrition rate benchmarks for 12-wave longitudinal surveys [?]:** Counter-metric includes "attrition ≤ [?]% per wave" but threshold is undefined. What % drop per wave is acceptable? What % cumulative retention after 12 waves is realistic? Not sourced.
- **Political/cultural risk:** Small-office surveys can create interpersonal tension if preferences become identifiable or contentious (e.g., "someone requested expensive imported chocolate, vendor says no, that person feels ignored"). This is not a data validity risk — it's a social risk. Not named in failure modes.
- **Results-sharing commitment:** Brief assumes "After each wave, respondents see aggregate results" as a retention strategy [A], but no requirement or agreement for this exists. Who creates the summary? Who distributes it? When? This is part of the feedback loop, not optional decoration.

### RISK

- **Survey becomes performative if vendor ignores results:** Brief names this as Failure Mode 3, but does not escalate it to a **blocker**. If vendor agreement is not obtained before launch, the entire 12-wave effort is wasted. Respondent cynicism will kill response rates by Wave 3. This should be a **gate condition**, not a "nice to have."
- **Small-population anonymity is fragile:** If Edinburgh office is <30 people, even aggregate results ("Top 5 requested items") can expose individual preferences if one item has only 1-2 requesters. Brief mentions this but does not provide a mitigation threshold (e.g., "suppress any item requested by <3 people"). This is a **GDPR/privacy risk** in UK context.
- **Baseline survey fatigue:** If the baseline satisfaction survey (pre-Wave 1) is long or poorly designed, it will poison the well for the monthly surveys. Brief does not specify baseline survey design — assumes it's separate and one-time, but doesn't constrain it. Risk: baseline survey is 10 minutes long, respondents are already annoyed before Wave 1 starts.
- **Candy option list is unbounded:** Brief lists UK top sellers (10 items) + Scottish brands (3 items) + current stock [?] + rising options (4 items) = 17+ items, but says "multi-select from 15-20 options." If current stock is 12 items and none overlap with top sellers, the list balloons to 29 items. This breaks the <90-second completion time constraint. **Scope risk:** option list must be capped and prioritized.
- **No question validation:** Survey questions are proposed (Q1: multi-select, Q2: Likert, Q3: free text optional) but not tested for leading/compound phrasing. Example risk: "How satisfied are you with the current vending selection?" assumes respondents know what's currently in the machine. If they don't, the question is unanswerable. Needs pilot testing before Wave 1.

---

## Specific Recommendations

### Before advancing to 60% directional fidelity

1. **Obtain Edinburgh office headcount.** If <20 people, monthly surveys may not be valid. If <30, anonymity risk is high. This determines survey cadence (monthly vs. quarterly) and question design (no demographic Qs).
2. **Obtain current vending stock list.** Required to design Q2 ("How satisfied are you with the current selection?") and to compare top-seller defaults against current state.
3. **Run baseline satisfaction survey (one-time, pre-Wave 1).** Keep it <90 seconds. Measure current satisfaction (sets the Key Result baseline) and current awareness (do people even know what's in the machine?). Do not poison the well with a long survey.
4. **Secure vendor agreement to act on results.** Quarterly stock adjustments based on top 5 requested items, or monthly surveys are performative. This is a **gate condition** — if vendor says no, pivot to quarterly pulse instead of monthly tracking.
5. **Source survey methodology for small populations.** Validity thresholds, anonymity best practices, attrition benchmarks. Haiku can pull this from academic survey design lit or Qualtrics best-practice docs.

### Before build (90% spec-ready)

6. **Cap candy option list at 15 items max.** Prioritize: current stock (must include for satisfaction measurement) + top 5 UK sellers not in current stock + 3 Scottish brands + 2-3 rising options. If list exceeds 15, cut rising options. Prevents survey from ballooning past 90 seconds.
7. **Write and pilot-test question wording.** Check for leading/compound phrasing. Example: Q2 assumes respondents know current stock — add preamble ("Based on what you've seen in the vending machine recently...") or rephrase.
8. **Set response rate threshold.** If office is 50 people, ≥60% response rate (30 responses) may be realistic. If office is 15 people, ≥80% (12 responses) may be needed for validity. Depends on headcount (see #1).
9. **Set attrition threshold.** Example: ≤10% attrition per wave (acceptable), ≤30% cumulative attrition after 12 waves (realistic for monthly surveys if feedback loop is visible). Source this from longitudinal survey benchmarks.
10. **Define results-sharing format and cadence.** Who creates the "Top 5 requested this month" summary? When is it shared (within 1 week of wave close)? Where (email, poster in break room, Slack)? This is load-bearing for retention — if respondents don't see results, they stop participating.

### Build-phase guidance

- **Prototype scope:** One survey form (3 questions: multi-select, Likert, optional free text). Seed data: 15 fictional candy options (mix of UK top sellers + Scottish brands + plausible current stock). Mock response summary ("Top 5 requested this month: Irn-Bru, Tunnock's Caramel Wafers, KitKat, Walkers Cheese & Onion, Snickers").
- **Fidelity banner required:** "30% concept — question wording, candy options, and cadence are provisional. Baseline data and vendor agreement not yet obtained."
- **Bradley rail cards:**
  - **Research:** Obtain headcount, current stock, baseline satisfaction, small-population survey methodology. Why now: Survey design depends on population size and current state. If you ship without it: Anonymity risk, invalid sample size, unanswerable questions.
  - **Product:** Secure vendor agreement to act on results quarterly. Why now: Survey is performative without stock adjustment commitment. If you ship without it: Respondent cynicism, response rate collapse by Wave 3, wasted 12-wave effort.
  - **Design:** Pilot-test question wording and completion time with 10-15 respondents. Why now: Leading questions or >90-second duration will poison retention. If you ship without it: Survey fatigue from Wave 1, attrition exceeds threshold.
  - **Eng (if custom tool):** Build longitudinal tracking (anonymous_id persistence across waves, attrition monitoring, results aggregation). Why now: Google Forms does not track respondents across waves or auto-generate "Top 5" summaries. If you ship without it: Manual effort per wave, no trend analysis, no retention feedback loop.

---

## Summary

**Brief quality:** Strong 30% schematic. Honest gap inventory (73% [A]+[?] named), coherent problem-solution logic, realistic failure modes, tight scope. Appropriate for concept-phase exploration.

**Readiness for build:** Not ready for production. Five critical gaps must resolve before advancing to 60% directional fidelity:
1. Edinburgh office headcount
2. Current vending stock
3. Baseline satisfaction score
4. Vendor agreement to act on results
5. Small-population survey methodology

**Build decision:** Prototype can proceed NOW as design exploration with fictional seed data and fidelity banner warning. Appropriate for 30% concept work.
