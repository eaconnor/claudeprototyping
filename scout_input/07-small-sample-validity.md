# Survey Sample Size and Statistical Validity for Small Populations

**Primary Source:** Sopact — "Survey Sample Size Calculator: Cochran's Formula Guide"
**URL:** https://www.sopact.com/use-case/survey-sample-size-calculator
**Supporting Sources:**
- City of Ventura: https://www.cityofventura.ca.gov/DocumentCenter/View/9668/Item-4-Attach-E-FM3-Statistical-Validity
- Interaction Metrics: https://interactionmetrics.com/cx-tools/survey-sample-size-calculator/
- Great Brook Consulting: https://greatbrook.com/survey-statistical-confidence-how-many-is-enough/
**Confidence:** [CS: VERIFIED] — Mathematical formulas and established statistical principles
**Retrieved:** 2026-06-02

## Core Formula: Cochran's Formula

[CS: VERIFIED]

**For infinite or very large populations:**
n₀ = Z² · p · (1 − p) / e²

**Where:**
- Z = Z-score for desired confidence level (1.96 for 95% confidence)
- p = estimated proportion of population (0.5 used for maximum variability when unknown)
- e = margin of error (typically 0.05 for ±5%)

**For bounded populations under 5,000** (finite population correction):
n = n₀ / (1 + (n₀ − 1) / N)

**Where:**
- n₀ = sample size from infinite formula
- N = total population size

## Sample Size Requirements for Small Edinburgh Office Populations

[CS: VERIFIED — calculated using Cochran's formula]

**At 95% confidence level with ±5% margin of error:**

| Total Population (N) | Required Sample (n) | Percentage |
|---------------------|---------------------|------------|
| 50 | 45 | 90% |
| 100 | 80 | 80% |
| 200 | 132 | 66% |
| 500 | 217 | 43% |
| 1,000 | 278 | 28% |

**Key insight:** [CS: VERIFIED]
"For populations this small, achieving statistical validity often requires surveying the majority of available participants."

## Confidence Level Standards

[CS: HIGH — Sopact methodology guidance]

**95% confidence is the default for:**
- Program evaluation
- Board reporting
- Most funder-facing work

**90% confidence:**
- Reduces sample requirements by approximately 30%
- Acceptable for exploratory work
- [CS: MEDIUM — specific small-population examples at 90% not provided in sources]

**99% confidence:**
- Increases sample requirements substantially
- Rare in applied research unless high-stakes decisions

## Critical Distinction: Sample Size vs. Response Rate

[CS: VERIFIED — Sopact guidance]

**Sample size** = count of completed responses (what you need)
**Response rate** = share of invitations that turn into completions (what you'll get)

**Example for N=50 population:**
- Required completed responses: 45
- If response rate = 50%, must contact approximately 90 people
- **Problem:** Population only has 50 people

**Implication:** [CS: HIGH]
For small populations, achieving statistical validity may require:
1. Surveying entire population (census approach)
2. Implementing strategies to maximize response rate
3. Accepting lower confidence levels or wider margins of error

## When Statistical Validity Matters Less

[CS: MEDIUM — Great Brook Consulting]

"For directional insights, even 30-50 responses may help, but if you're making decisions that impact budget, product development, or customer experience strategy, a statistically valid sample usually starts around 100 and often exceeds 400."

**For candy survey:** [ASSUMPTION]
If goal is "directional preference tracking" rather than "statistically defensible procurement decisions," lower response counts may be acceptable. Beth must decide what level of rigor the use case demands.

## Definition of "Statistically Valid"

[CS: VERIFIED]

"Statistically valid" means results accurately reflect the broader population within the stated margin of error at the chosen confidence level.

**Critical caveat:** [CS: VERIFIED]
"It does NOT mean the survey is free of bias."

**Forms of bias that undermine validity even with adequate sample size:**
- Selection bias (who chose to respond vs. who didn't)
- Question bias (leading questions, order effects)
- Non-response bias (systematic differences between responders and non-responders)

## Practical Challenges for Edinburgh Office (Estimated 10-50 people)

[ASSUMPTION — applying formulas to stated scenario]

**Scenario 1: Office has 50 people**
- Need 45 responses for 95% confidence, ±5% margin
- Must achieve 90% response rate
- [CHALLENGE] Very high participation required; any non-response creates validity concern

**Scenario 2: Office has 30 people**
- Formula suggests need ~28 responses for 95% confidence, ±5% margin
- Must achieve 93% response rate
- [CHALLENGE] Near-census required; statistical validity may not be achievable

**Scenario 3: Office has 15 people**
- [CS: UNKNOWN] — Sources do not provide guidance for populations under 20
- [ASSUMPTION] At this size, traditional margin-of-error framework breaks down
- **Alternative approach:** Census (survey everyone) and present results as descriptive frequencies, not inferential statistics

## Alternative Approach: Repeated Measures Design

[ASSUMPTION — combining longitudinal and small-sample considerations]

For monthly candy survey with same participants over time:

**Statistical power comes from:**
- Repeated measures from same individuals (not just cross-sectional sample size)
- Ability to detect within-person changes over time
- Reduced variance from individual differences

**Implication:** [CS: MEDIUM — extrapolated from longitudinal methodology, not explicitly stated in sample size sources]
With 12 monthly measurements from 20 people = 240 total data points. Statistical analysis focuses on within-person trends, not just single-month snapshots.

**This requires different statistical approach:**
- Repeated measures ANOVA
- Mixed-effects models
- Time-series analysis

[WOBBLY] — No source directly addresses "sample size requirements for monthly repeated-measures preference tracking in populations of 10-50."

## Recommendations for Edinburgh Candy Survey

[ASSUMPTION — synthesizing all sources]

**If population is 10-20 people:**
- Census approach (survey everyone every month)
- Present as descriptive frequencies, not inferential statistics
- Focus on within-person preference changes over time
- Do NOT claim results "represent" a larger population

**If population is 30-50 people:**
- Aim for 90%+ response rate to approach statistical validity
- Use incentives/engagement strategies to maximize participation
- Consider confidence level / margin-of-error trade-offs
- Clearly state limitations in any reporting

**If population is 50+ people:**
- 80+ responses achievable for statistical validity (95% confidence, ±5% margin)
- Still requires strong response rate (~80%)
- Can make defensible claims about "office preferences"

**In ALL cases:**
- Address question bias, order effects, survey fatigue (per other source files)
- Track response rates and non-response patterns
- Maintain longitudinal consistency (same people, same questions)

[THIN DOMAIN] — Intersection of "small-population survey validity" + "longitudinal design" + "workplace food preferences" has minimal published methodological guidance. Principles are extrapolated from broader statistical and survey design literature.
