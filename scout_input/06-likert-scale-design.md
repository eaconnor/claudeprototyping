# Likert Scale Design for Survey Methodology

**Primary Source:** Sopact — "Likert Scale Survey: Design, Analysis & Pitfalls"
**URL:** https://www.sopact.com/use-case/likert-scale-survey
**Supporting Sources:**
- TASO: https://taso.org.uk/libraryitem/designing-likert-scales/
- InMoment: https://inmoment.com/blog/likert-scale/
- Various methodology guides
**Confidence:** [CS: VERIFIED] — Established psychometric methodology
**Retrieved:** 2026-06-02

## Definition and History

[CS: VERIFIED]
Developed by sociologist Rensis Likert in the early 20th century, the Likert scale is a structured rating system that measures people's opinions and attitudes toward a series of statements, typically using a symmetrical scale ranging from "strongly disagree" to "strongly agree."

**Key characteristic:** Likert scales are 'summated' scales—respondent's answers on each item are aggregated to obtain a multifaceted measurement [CS: VERIFIED].

## Four-Decision Design Methodology

[CS: HIGH — Sopact framework]

### Decision 1: Define Analysis Output
Determine what specific analysis output the instrument must produce. Start with end goal, not question wording.

### Decision 2: Pick Format Type
[CS: VERIFIED — standard Likert formats]

Choose the format that matches the construct being measured:

1. **Agreement:** Strongly Disagree → Strongly Agree
2. **Frequency:** Never → Always
3. **Importance:** Not Important → Very Important
4. **Satisfaction:** Very Dissatisfied → Very Satisfied
5. **Quality:** Poor → Excellent

**For candy survey:** [ASSUMPTION] Likely uses Satisfaction format ("How satisfied are you with X candy?") or Quality format ("How would you rate X candy?") or custom Preference format.

### Decision 3: Choose Point Count

[CS: HIGH]

**Odd-numbered scale (5-point, 7-point):**
- Includes neutral midpoint option
- Allows truly undecided respondents to express ambivalence
- **5-point:** Use for binary-adjacent constructs (simple agree/disagree)
- **7-point:** Use for fine-grained gradation

**Even-numbered scale (4-point, 6-point):**
- Forces a choice (no neutral option)
- Prevents fence-sitting
- Use when you need directional commitment

**Academic guidance:** [CS: MEDIUM] More points provide finer discrimination but may exceed respondent's actual ability to differentiate. Diminishing returns beyond 7 points.

### Decision 4: Draft Individual Items

[CS: VERIFIED — psychometric best practices]

**Single-barreled:** Each item measures one concept only (avoid compound questions)

**Balanced anchors:** Ensure positive and negative endpoints are symmetrical in strength

**Reverse-coded items:** Include negatively worded items to detect acquiescence bias (tendency to agree regardless of content)

**Example:**
- Positive: "I enjoy Snickers bars"
- Reverse: "I dislike Snickers bars"

If respondent agrees with both, responses are inconsistent (possible inattention or acquiescence bias).

## Advanced Design Techniques

### Anchored Scales
[CS: HIGH]
Provide concrete examples or definitions at each response point to reduce ambiguity.

**Example for candy survey:** [ASSUMPTION]
- 5 = "I would choose this every time"
- 4 = "I would choose this most times"
- 3 = "I would choose this sometimes"
- 2 = "I would rarely choose this"
- 1 = "I would never choose this"

### Reverse Scoring
[CS: VERIFIED]
Add negatively worded items to discover inconsistent responses and reduce acquiescence bias. Requires recoding during analysis (reverse item scored 5→1, 4→2, etc.).

## Common Pitfalls

[CS: HIGH — multiple sources confirm]

1. **Mixing scale types** within same survey (e.g., some 5-point, some 7-point)
2. **Unbalanced anchors** (e.g., "Somewhat Agree" vs. "Strongly Disagree")
3. **Double-barreled items** (asking about two things in one question)
4. **No reverse-coded items** (cannot detect acquiescence or inattention)
5. **Too many points** (7+ may exceed discrimination ability for simple constructs)
6. **Midpoint interpretation ambiguity** (neutral vs. ambivalent vs. don't know)

## Analysis Considerations

[CS: MEDIUM — debate exists in statistical literature]

**Interval vs. Ordinal:**
Likert scales are technically ordinal (ordered categories) but often treated as interval (equal distances between points) for analysis purposes. This is widely accepted in practice [CS: HIGH] but theoretically imperfect [CS: MEDIUM].

**Aggregation:**
Individual item scores are typically summed or averaged to create composite scale scores for the construct being measured.

## Application to Monthly Candy Survey

### If Using Likert-Type Rating

**Recommended approach:** [ASSUMPTION — applying methodology to candy context]

**Format type:** Satisfaction or Preference
- "How much do you like [Candy X]?"
- Scale: 1 (Dislike strongly) → 5 (Like strongly)

**OR**

**Frequency format:**
- "How often would you choose [Candy X]?"
- Scale: 1 (Never) → 5 (Always)

**Point count:** 5-point likely sufficient for candy preferences (not requiring fine discrimination)

**Consistency requirement:** [CS: VERIFIED from longitudinal methodology]
Once chosen, must use SAME scale format and point count across all monthly waves.

**Randomization consideration:** [ASSUMPTION]
If using Likert scales for multiple candies, randomize which candy is rated first (per order bias guidance) BUT keep scale anchor wording identical.

### Alternative: Forced Choice

[ASSUMPTION]
Instead of Likert rating, could use forced-choice format: "Which candy would you choose?" with single selection. Simpler and faster (relevant for survey fatigue guidelines) but provides less granular data.

**Trade-off:**
- Forced choice = faster, less fatigue, clear preference
- Likert rating = more nuanced data, allows "I like both" responses, but longer survey

[WOBBLY] — No specific guidance found on "Likert scales for food preference tracking in small populations." Methodology is general psychometric practice applied to candy context.
