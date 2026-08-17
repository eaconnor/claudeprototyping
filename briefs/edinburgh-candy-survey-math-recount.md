# Edinburgh Candy Survey — Evidence Math Recount

## Three-Number Split

### 1. World-Claims Ratio (Lead Number)
Claims about the Edinburgh office, vending preferences, vendor behavior, current state, problem existence.

**Total world-claims: 15**

| Tag | Count | % | Lines |
|-----|-------|---|-------|
| [R] | 4 | 27% | UK vending top sellers verified; Scottish brands culturally significant and available in Scotland; Irn-Bru outsells Coca-Cola in Scotland; Tunnock's iconic status |
| [D] | 0 | 0% | No quantitative data on Edinburgh office vending satisfaction, waste, or preferences |
| [A] | 6 | 40% | Vending stocked by vendor defaults; problem exists (low satisfaction/waste); vendor will act on results; survey fatigue threshold 90 sec; monthly cadence tolerable; anonymity risk mitigation needed |
| [?] | 5 | 33% | Edinburgh office headcount; current vending stock; baseline satisfaction; current waste metrics; vendor agreement to act on results |

**[A] + [?] = 73%** — Gate 1 NOT satisfied for build-ready spec.

**World-claims tagged lines (bucketed):**

**[R] — 4 claims:**
1. UK top 10 vending products verified (Coca-Cola, Kinder Bueno, Walkers, etc.) from Vending Superstore UK sales data
2. Irn-Bru outsells Coca-Cola in Scotland and is widely available in Scottish vending machines
3. Tunnock's Caramel Wafers and Teacakes are iconic Scottish brands
4. Scottish brands have cultural significance in Edinburgh context

**[D] — 0 claims:**
(None)

**[A] — 6 claims:**
1. Edinburgh office vending machine is stocked by vendor defaults rather than employee preferences
2. This leads to waste and low satisfaction (problem statement assumes problem exists)
3. No employee complaints or requests have been documented (assumes lack of feedback = lack of problem visibility, not lack of problem)
4. Monthly cadence is tolerable if survey is <90 seconds
5. Vendor will act on survey results (no agreement obtained)
6. Small-population anonymity risk exists (best practice, not sourced for this context)

**[?] — 5 claims:**
1. Edinburgh office headcount (determines sample size validity)
2. Current vending stock (cannot measure satisfaction with current selection without knowing it)
3. Baseline vending satisfaction level
4. Current waste metrics
5. Vendor agreement to adjust stock based on survey results

---

### 2. Test-Plan Readiness Ratio
Claims about survey design, question order, sample size, methodology, completion time, attrition thresholds.

**Total test-plan claims: 11**

| Tag | Count | % | Lines |
|-----|-------|---|-------|
| [R] | 0 | 0% | No survey methodology sources in scout |
| [D] | 0 | 0% | No prior survey data |
| [A] | 9 | 82% | Duration <90 sec; 3-5 questions max; same questions every wave; randomize order; anonymity via anonymous_id; share results back; pilot with 10-15; response rate threshold TBD; attrition threshold TBD |
| [?] | 2 | 18% | Response rate threshold; attrition rate threshold |

**[A] + [?] = 100%** — No sourced survey methodology. All test-plan claims are assumed best practices or unknown thresholds.

**Test-plan tagged lines (bucketed):**

**[R] — 0 claims:**
(None)

**[D] — 0 claims:**
(None)

**[A] — 9 claims:**
1. Duration <90 seconds is tolerable for monthly surveys
2. 3-5 questions max to prevent fatigue
3. Same questions every wave for longitudinal consistency
4. Randomize candy option order to prevent order bias
5. Anonymous_id preserves anonymity without demographic questions
6. Share results back to respondents as retention strategy
7. Pilot with 10-15 respondents measures completion time and clarity
8. Completion time ≤ 90 seconds (median) is success criterion
9. Zero identifiability concerns is success criterion

**[?] — 2 claims:**
1. Response rate threshold (depends on office size, not yet determined)
2. Attrition rate threshold (depends on longitudinal survey benchmarks, not sourced)

---

### 3. Inflated Ratio (Includes Brief's Own Gap Inventory)
Same as world-claims but includes the brief's explicit "[?] waste," "[?] baseline," etc. — items the brief itself identifies as unknown.

**Total inflated claims: 20** (world-claims 15 + 5 explicit gaps named in "What's Missing")

| Tag | Count | % |
|-----|-------|---|
| [R] | 4 | 20% |
| [D] | 0 | 0% |
| [A] | 6 | 30% |
| [?] | 10 | 50% |

**[A] + [?] = 80%** — Reflects honest gap inventory. Brief explicitly names what is unknown rather than papering over gaps.

**Additional [?] claims from "What's Missing" section:**
1. Survey fatigue thresholds for monthly cadence (90-second assumption not verified in scout)
2. Edinburgh-specific candy preference data
3. Attrition rate benchmarks for 12-wave longitudinal surveys
4. Small-population survey validity thresholds
5. Survey methodology for small populations

---

## Summary

| Ratio | [R]+[D] | [A]+[?] | Verdict |
|-------|---------|---------|---------|
| **World-claims (lead)** | 27% | **73%** | Gate 1 NOT satisfied — problem assumed, not sourced |
| **Test-plan** | 0% | **100%** | No methodology sourced; all design choices assumed |
| **Inflated (with gaps named)** | 20% | **80%** | Honest gap inventory; brief does not fabricate to fill unknowns |

---

## Interpretation

**This is a 30% schematic brief (Tier 1 Concept).** High [A]+[?] is expected at this fidelity.

**Gate 1 readiness:** Not satisfied. Problem statement is assumed [A], not sourced. No evidence that Edinburgh office has expressed dissatisfaction, requested preference tracking, or measured waste.

**Test-plan readiness:** Not satisfied. No survey methodology sourced. All design choices (90 sec, 3-5 questions, monthly cadence) are best-practice assumptions [A], not requirements derived from research [R] or data [D].

**Honest gap inventory:** The brief names 10 critical and secondary gaps explicitly. It does not fabricate baseline satisfaction scores, headcount, or vendor agreements to make the spec appear more solid than it is.

**Next step:** Scout must obtain Edinburgh office headcount, current vending stock, baseline satisfaction data, and survey methodology for small populations before advancing to 60% (directional) fidelity.

---

**Math verified:** Every claim in the brief is tagged. Every tag is counted. Every count is bucketed. No fluency, no fabrication.
