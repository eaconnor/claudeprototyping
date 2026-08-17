---
artifact: "Research Methodology Specifications"
type: "build dependency"
status: "v1 draft — rules captured from NN/g and MeasuringU public guidance; cite sources, verify before build"
owner: "Beth (IIT-trained researcher)"
referenced_by: ["briefs/idea-chorus-rubric-v2-spec.brief.md — Decision 9 (typed ROLL OUT — Research cards), Decision 13 (Research Methodology Compliance check)"]
---

# Research Methodology Specifications

This artifact captures established sample-size and method rules from two canonical sources, so Bradley's `ROLL OUT — Research` cards recommend the right thing with the right N and a citable source.

**Two source traditions:**

- **Nielsen Norman Group (NN/g)** — Jakob Nielsen / Don Norman / Kara Pernice and team. Qualitative UX research, usability testing, qualitative discovery. Established the "5 users" rule and most modern qual UX research norms.
- **MeasuringU (Jeff Sauro, Jim Lewis)** — Quantitative UX research methodology. SUS, UMUX-Lite, CSAT scoring, sample size calculations, statistical significance for UX metrics.

Bradley cites the source whenever he recommends a sample size. *"Run 5 users — Nielsen 5-user rule (NN/g, 1993)."* / *"Survey 200+ — MeasuringU sample-size calculator for ±7% MoE at 95% confidence."*

---

## Qualitative research sample rules (NN/g lineage)

| Method | Recommended sample | Source | Notes |
|---|---|---|---|
| **Usability testing (iterative)** | **5 users per iteration** | Nielsen 1993, *"Why You Only Need to Test with 5 Users"* | Catches ~85% of issues; 3 iterations of 5 > 1 iteration of 15. The canonical NN/g rule. |
| **Usability testing (formal/summative)** | **20+ users** | NN/g | When you need stat-grade findings, not iterative discovery. |
| **Testing AI features** | **10–12 users** | NN/g 2023+ guidance | AI features have stochastic outputs; more users needed to see the range of model behaviour and user response. *Critical for Idea Chorus's own validation — the LOTL fixture's AI features need this N, not the 5-user N.* |
| **Generative interviews** | **5–8 per segment** | NN/g | When you have multiple user segments, multiply by segments. Don't blend. |
| **Diary studies** | **5–7 users** | NN/g | Lower N because data volume per participant is much higher. |
| **Card sorting (open or closed)** | **15+ users** | NN/g + Tullis & Wood 2004 | Below 15, cluster confidence is unstable. |
| **Tree testing** | **30+ users** | NN/g | Quantitative-leaning qual method; statistical confidence at 30+. |
| **First-click testing** | **30+ users** | NN/g | Same statistical floor as tree testing. |
| **Concept testing (qualitative)** | **8–12 per concept** | NN/g | Sufficient to surface major reactions and misreadings. |
| **Ethnography (Mode 3) — site visits** | **3–5 sites, 1–3 days each** | NN/g + Kumar | Quality of observation > quantity of subjects. |

## Quantitative research sample rules (MeasuringU lineage)

| Method | Recommended sample | Source | Notes |
|---|---|---|---|
| **SUS (System Usability Scale)** | **30+ users** | Sauro & Lewis, *Quantifying the User Experience* (2nd ed.) | For stable SUS score with reasonable CI. 50+ preferred. |
| **UMUX-Lite** | **30+** | Sauro / MeasuringU | Shorter alternative to SUS. |
| **CSAT / NPS** | **50+ per segment** | MeasuringU | Need stability across response distribution; verbatims need additional N. |
| **Surveys (confidence interval based)** | **Depends on population, MoE, confidence level** | MeasuringU sample-size calculator | Rough rules: 200 for ±7% MoE at 95% on N≈1000; 384 for ±5% MoE on N=infinite. |
| **Segmented analysis** | **100+ per segment** | MeasuringU | Cross-tabs need adequate cells. |
| **A/B testing** | **Depends on baseline conversion rate + MDE** | MeasuringU + Optimizely / Evan Miller calculators | Pre-register, don't peek, don't multiply-test. |
| **Time-on-task / Success-rate studies** | **30+ for adequate CI** | Sauro | Continuous + binary metrics behave differently. |

## Mixed-methods rules

| Question shape | Recommended approach | Source |
|---|---|---|
| *"Is this usable?"* | Iterative usability testing: 5 users × 3 rounds | NN/g |
| *"How usable is this?"* | SUS or UMUX-Lite, 30+ users | MeasuringU |
| *"Why is this not usable?"* | Qual diagnostic: 5–8 users with think-aloud | NN/g |
| *"Does X work better than Y?"* | A/B with adequate sample OR qual comparison N≈12 | MeasuringU |
| *"What jobs is the customer hiring this to do?"* | Generative interviews: 5–8 per segment, JTBD framework | NN/g + Christensen |
| *"How do users feel about this?"* | Qual interviews + sentiment data | NN/g + Empathy Map (Decision 13) |

## Bradley's research recommendation format

When Bradley generates a `ROLL OUT — Research` card, he follows this template:

```
ROLL OUT — Research
What: [specific method, e.g., "Usability testing on the new key management page"]
Sample: [N from table above, e.g., "5 users per iteration × 3 iterations"]
Source: [citation, e.g., "Nielsen 5-user rule (NN/g, 1993)"]
Why this N: [one-line rationale, e.g., "Iterative discovery: 5 users catch ~85% of issues per round; 3 rounds > 1 round of 15."]
Closes: [which cluster gap, e.g., "SIGN verification + JOBS adjacency"]
Skip-risk: [Monte Carlo path-frequency, see Decision 9 / Decision 12]
```

## Anti-patterns Bradley flags

Bradley flags these common research-methodology errors when he sees them in a brief:

| Anti-pattern | What Bradley says |
|---|---|
| **"We tested with 3 users"** for any qual usability work | *"3 is not a NN/g-compliant qual sample. The Nielsen rule is 5. Re-run with 2 more, or your findings are below the qual reliability floor."* |
| **"We tested with 5 users"** for an AI feature | *"5 is the canonical qual rule, but AI features are stochastic. NN/g 2023+ guidance says 10–12 for AI. Re-run."* |
| **"We surveyed 50 customers"** for a quant claim with ±5% MoE | *"50 is below MeasuringU's threshold for ±5% MoE at 95% confidence on a typical population. Your survey is descriptive, not statistically projectable."* |
| **"SUS score of 73"** with N=10 | *"SUS needs 30+ for stable scoring. Your 73 has a CI wide enough to be anywhere from 60 to 86. Re-run or report with explicit CI."* |
| **Blended findings across segments** | *"You ran 5 users but they were 2 MSP techs + 3 enterprise admins. That's not 5 users per segment; that's 5 users blended. Run 5 per segment if segments matter."* |
| **Stated preferences without behavioural confirmation** | *"You have Say data (interview quotes). You don't have Do data (behavioural observation). Most common research failure mode. (See Decision 13 Empathy Map Coverage.)"* |
| **N=1 (single anecdote)** treated as evidence | *"One customer is a Sign (Decision 9 Patch A), not a verified problem. Run the 5-user discovery before treating this as confirmed."* |

## Open items

- [ ] Verify exact NN/g 2023+ AI testing N recommendation against current published guidance — *"10–12"* is from public memory; confirm against the published NN/g report before v1 build [?]
- [ ] Source MeasuringU sample-size calculator as a build dependency (web link or local copy of formulas) — Bradley's Survey-sample recommendations should call this calculator rather than hardcode N=200 [?]
- [ ] Capture Tavory & Timmermans abductive analysis sample-size guidance (qualitative research textbook excerpts Beth pasted in session 2026-05-21) — different epistemological frame than NN/g; complementary, not competing [?]
- [ ] Whether to surface anti-pattern flags as Skip-risk lines (Decision 9) or as a separate methodology-compliance check (Decision 13) is a build-time UX call [A]

---

*Artifact created: 2026-05-21*
*Sources: Nielsen Norman Group public articles 1993–present; Sauro & Lewis (2016) Quantifying the User Experience, 2nd ed.; MeasuringU public guidance*
*Verify all citations against current published sources before v1 ships*
