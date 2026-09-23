# Secondary Market Signal — Dimension E: Governed AI / Agentic Automation in IT Operations

**Scout run:** 2026-09-23
**Target assumptions:** #3 "We can build an AI that does this reliably" · #4 "The AI will be reliable enough for people to trust it out of the gate" (internal usability baseline 2.5/5 on trust)
**Status:** Ingredients only. No synthesis. Assembly is Beth's.

---

## READ THIS FIRST — SCOPE FLAGS

- `[THIN DOMAIN]` — The operator-trust literature below is drawn from aviation, process control, driving, and (recently) lab studies of LLM decision support. It is Western, English-language, and predominantly student/MTurk-sampled. **There is essentially no peer-reviewed work on enterprise IT administrators trusting automated endpoint remediation.** Every transfer to the IT-ops population is an `[ASSUMPTION]`, not a finding.
- `[WOBBLY]` — The "levels of automation" lineage (Parasuraman/Sheridan/Wickens) is cited by nearly every vendor and consultancy as settled consensus. It is not. There is a live, named, 8-year dissent (Jamieson & Skraaning) with published rebuttals in both directions. See §1.4.
- **Gap I could not close:** no measured evidence found that *audit logs* or *completion confirmation* move adoption or trust. Approval gates, rollback, and explanation have evidence. Audit/completion is design folklore with only adjacent support. See §2.5.
- Model names and figures dated after May 2026 are from retrieved pages only, not recall.

---

## 1. OPERATOR TRUST IN SYSTEMS THAT TAKE ACTION — CAMPS, SEMINAL WORK, DISSENT

### 1.1 The foundational pair (cite these or you are not in the literature)

**Lee, J.D. & See, K.A. (2004). "Trust in Automation: Designing for Appropriate Reliance." *Human Factors* 46(1), 50–80.**
- DOI: 10.1518/hfes.46.1.50_30392 · PubMed: 15151155
- https://journals.sagepub.com/doi/10.1518/hfes.46.1.50_30392
- Core claim: people respond to technology *socially*; trust governs reliance specifically **when the system is too complex to fully understand** — which is the exact condition of a cross-signal correlation engine.
- ~4,170 citations. This is the canonical citation for "appropriate reliance" as the design goal rather than "maximum trust."
- `[CS: VERIFIED]` — citation, venue, and framing confirmed against SAGE and PubMed records.

**Parasuraman, R. & Riley, V. (1997). "Humans and Automation: Use, Misuse, Disuse, Abuse." *Human Factors* 39(2), 230–253.**
- DOI: 10.1518/001872097778543886
- https://journals.sagepub.com/doi/10.1518/001872097778543886
- Four-way taxonomy. The two that matter for Ecoverse: **misuse** = over-reliance (monitoring failure, decision bias) and **disuse** = neglect caused by **false alarms**, because designers set the miss/false-alarm tradeoff without accounting for the base rate of the condition being detected.
- `[CS: VERIFIED]` — citation and taxonomy confirmed.
- **Direct relevance to #4:** disuse is caused by false-alarm rate, not by absence of features. A 2.5/5 trust score is at least as likely to be a precision problem as a UI problem. That is a hypothesis, not a conclusion — Beth's call.

**Review of the review:** *Human Factors* 50(3), 2008 — retrospective on Parasuraman & Riley. PubMed: 18689046. Useful for "here is why this is still cited." `[CS: HIGH]`

### 1.2 The framework everyone quotes

**Parasuraman, R., Sheridan, T.B. & Wickens, C.D. (2000). "A Model for Types and Levels of Human Interaction with Automation." *IEEE Trans. SMC-A* 30(3), 286–297.**
- DOI: 10.1109/3468.844354 · https://dl.acm.org/doi/10.1109/3468.844354
- Four stages: (1) information acquisition, (2) information analysis, (3) decision & action selection, (4) action implementation. Ten levels per stage.
- `[CS: VERIFIED]`
- **Why it matters structurally for Ecoverse:** "correlates signals" is stages 1–2. "Takes action" is stages 3–4. The literature treats these as *different automation problems with different failure modes*. A product that ships both as one thing is making an unstated bet that trust transfers across the stage boundary. `[ASSUMPTION]` — not stated in the Ecoverse framing as given to me.
- `[STATISTICALLY CENTRAL]` — this is the default read any consultancy or LLM will give you. Divergent framing in §1.4.

### 1.3 The measured evidence on what higher autonomy costs you

**Onnasch, L., Wickens, C.D., Li, H. & Manzey, D. (2014). "Human Performance Consequences of Stages and Levels of Automation: An Integrated Meta-Analysis." *Human Factors* 56(3), 476–488.**
- DOI: 10.1177/0018720813501549 · PubMed: 24930170
- https://journals.sagepub.com/doi/10.1177/0018720813501549
- Open copy: https://depositonce.tu-berlin.de/bitstreams/6a0b7962-cb5f-4317-9d07-ee11707dd51f/download
- Meta-analysis, **18 experiments**. Findings: routine performance **improves** with higher degree of automation; workload **falls**; but **performance when the automation fails degrades**, and situation awareness degrades. This is the "lumberjack effect" — the higher you climb, the harder you fall.
- `[CS: VERIFIED]` — n=18 experiments and directional findings confirmed across PubMed, SAGE, and the TU Berlin deposit.
- **This is the single strongest published counter to "just make it more autonomous."**

**Wickens, C.D. & Dixon, S.R. (2007). "The Benefits of Imperfect Diagnostic Automation: A Synthesis of the Literature." *Theoretical Issues in Ergonomics Science* 8(3), 201–212.**
- DOI: 10.1080/14639220500370105 · https://www.tandfonline.com/doi/abs/10.1080/14639220500370105
- 20 studies, 35 data points. Regression of benefit against reliability. **Crossover point ≈ 0.70 reliability: below that, unreliable automation is worse than no automation at all.** Effect is stronger under high workload.
- `[CS: HIGH]` — the 0.70 figure and the 20-study/35-point method are consistently reported across SciSpace, T&F, ResearchGate, and PsycNet abstracts. I did not read the full text.
- **This is the closest thing in the literature to an answer to assumption #3.** It gives you a *number* to design an acceptance threshold against, and it is a peer-reviewed synthesis, not a vendor claim. Caveat: derived from diagnostic (stage-2) automation in lab tasks, not action-taking automation in enterprise IT. `[THIN DOMAIN]`

**Automation bias — the empirical base:**
- Skitka, L.J., Mosier, K.L. & Burdick, M. (1999). "Does automation bias decision-making?" *Int. J. Human-Computer Studies* 51(5), 991–1006. DOI: 10.1006/ijhc.1999.0252 · https://dl.acm.org/doi/abs/10.1006/ijhc.1999.0252 `[CS: HIGH]`
- Skitka, Mosier & Burdick (2000). "Accountability and automation bias." *IJHCS* 52(4). https://www.sciencedirect.com/science/article/abs/pii/S107158199990349X `[CS: HIGH]`
- Mosier, K.L. & Skitka, L.J. (1999). "Automation Use and Automation Bias." *Proc. HFES* 43(3). DOI: 10.1177/154193129904300346 `[CS: HIGH]`
- Mosier et al., "Automation bias: decision making and performance in high-tech cockpits." PubMed: 11540946 `[CS: HIGH]`
- Definition to quote: automation bias is "the tendency to use automation as a heuristic replacement for vigilant information seeking and processing," producing **omission** errors (missing what the automation missed) and **commission** errors (acting on what the automation wrongly said).
- `[CS: MEDIUM]` on the specific "55% omission error rate" figure that surfaced in search — I did not locate it in a primary text and cannot attribute it to a specific study. **Do not quote the 55%.**

### 1.4 THE STRONGEST DISSENTING POSITION — name it, it is the interesting one

**Jamieson, G.A. & Skraaning, G. (2018). "Levels of Automation in Human Factors Models for Automation Design: Why We Might Consider Throwing the Baby Out With the Bathwater." *Journal of Cognitive Engineering and Decision Making* 12(1).**
- DOI: 10.1177/1555343417732856 · https://journals.sagepub.com/doi/10.1177/1555343417732856
- Argument: LOA frameworks are abstractions in "a crisis of confidence that remedies cannot restore." They have questionable predictive value for real complex work and should not be the basis of design guidance.
- `[CS: VERIFIED]`

**The exchange that followed (this is a live fight, not a resolved one):**
- Jamieson & Skraaning (2020). "The Absence of Degree of Automation Trade-Offs in Complex Work Settings." *Human Factors*. DOI: 10.1177/0018720819842709 — **field/simulator data from complex settings showing the DOA trade-offs did NOT appear.**
- Wickens, Onnasch, Sebok & Manzey (2020). "Absence of DOA Effect but No Proper Test of the Lumberjack Effect: A Reply to Jamieson and Skraaning." *Human Factors*. DOI: 10.1177/0018720820901957
- Jamieson & Skraaning (2020). "The Harder They Fall? A Response to Wickens et al." DOI: 10.1177/0018720820904623
- Skraaning & Jamieson, and the 2024 response "When an Automation Fails in the System, Who Hears?" https://www.researchgate.net/publication/377797162
- `[CS: HIGH]` — all four DOIs/titles resolve; I read abstracts, not full texts.

**Systematic review of the critiques:** "Systematic Literature Review of Levels of Automation (Autonomy) Taxonomy: Critiques and Recommendations." *Int. J. Human–Computer Interaction* (2025). DOI: 10.1080/10447318.2025.2502978 · https://www.tandfonline.com/doi/full/10.1080/10447318.2025.2502978 `[CS: HIGH]`

**Also worth having on the table — the oldest and most quotable:**
Bainbridge, L. (1983). "Ironies of Automation." *Automatica* 19(6), 775–779. DOI: 10.1016/0005-1098(83)90046-8
- Free PDF: https://ckrybus.com/static/papers/Bainbridge_1983_Automatica.pdf
- Claim: automating most of the work leaves the human the un-automatable residue, degrades their skill through disuse, and makes them *less* able to handle the rare intervention. Operators need **more** training, not less.
- `[CS: VERIFIED]` — DOI, pagination, and free PDF all confirmed.
- **Divergent framing for the Bradley rail:** the lumberjack/Bainbridge line says the Ecoverse trust problem is not "will they trust it on day one" but "will they still be competent on day 400." Nobody's riskiest-assumption list usually contains that one.

### 1.5 Recent LLM-agent / AI-decision-support trust work (the live camp)

**Bansal, G. et al. (2021). "Does the Whole Exceed its Parts? The Effect of AI Explanations on Complementary Team Performance." *CHI '21*.**
- DOI: 10.1145/3411764.3445717 · https://dl.acm.org/doi/10.1145/3411764.3445717
- Free PDF: https://idl.cs.washington.edu/files/2021-AIExplanationsTeamPerformance-CHI.pdf
- Mixed-method studies, three datasets. **Explanations did not uniformly improve team performance and in some conditions increased over-trust in incorrect recommendations.**
- `[CS: VERIFIED]` — venue, authors, DOI, and finding confirmed; open PDF available.
- **This is the strongest published counter to "add explainability and trust will follow."**

**Buçinca, Z., Malaya, M.B. & Gajos, K.Z. (2021). "To Trust or to Think: Cognitive Forcing Functions Can Reduce Overreliance on AI in AI-Assisted Decision-Making." *PACM HCI* 5(CSCW1).**
- DOI: 10.1145/3449287 · Free PDF: https://www.eecs.harvard.edu/~kgajos/papers/2021/bucinca21trust.pdf · arXiv: 2102.09692
- **Cognitive forcing interventions reduced overreliance — but were rated worse by users and preferred less.** The effective design was the disliked design.
- `[CS: VERIFIED]`
- **Direct hit on assumption #4:** a measured trust/usability score and correct reliance can move in *opposite directions*. A 2.5/5 trust score is not automatically a failure signal, and a 4.5/5 is not automatically a success signal. Beth's interpretation.
- Follow-on: "Cognitive Forcing for Better Decision-Making: Reducing Overreliance on AI Systems Through Partial Explanations." *PACM HCI* (2025). DOI: 10.1145/3710946 `[CS: HIGH]`

**Schemmer, M., Kühl, N., Benz, C., Bartos, A. & Satzger, G. (2023). "Appropriate Reliance on AI Advice: Conceptualization and the Effect of Explanations." *IUI '23*.**
- DOI: 10.1145/3581641.3584066 · arXiv: 2302.02187 · https://arxiv.org/pdf/2302.02187
- Provides the **operational measurement construct** for appropriate reliance (relative AI reliance / relative self-reliance). If you want to measure trust in a usability test in a way a researcher will accept, this is the instrument-shaped source.
- `[CS: VERIFIED]`

**Survey / state-of-field:**
- "Trust, distrust, and appropriate reliance in (X)AI: a survey of empirical evaluation of user trust." arXiv: 2312.02034 · https://arxiv.org/pdf/2312.02034 `[CS: HIGH]`
- "To Rely or Not to Rely? Evaluating Interventions for Appropriate Reliance on Large Language Models." arXiv: 2412.15584 `[CS: MEDIUM]` — preprint, not peer-reviewed at time of retrieval.
- "Plan-Then-Execute: An Empirical Study of User Trust and Team Performance When Using LLM Agents As A Daily Assistant." arXiv: 2502.01390 · https://arxiv.org/pdf/2502.01390 `[CS: MEDIUM]` — preprint. **Directly about agents that plan then act; closest available analogue to the Ecoverse interaction model.**
- "From Trust to Appropriate Reliance: Measurement Constructs in Human-AI Decision-Making." arXiv: 2604.23896 `[CS: LOW — outside training window]` — retrieved reference only; I have not verified this preprint exists in the form the search returned. **Verify before citing.**

### 1.6 Measurement instruments (for the 2.5/5 baseline)

**Jian, J.-Y., Bisantz, A.M. & Drury, C.G. (2000). "Foundations for an Empirically Determined Scale of Trust in Automated Systems." *Int. J. Cognitive Ergonomics* 4(1), 53–71.**
- DOI: 10.1207/S15327566IJCE0401_04 · Free: https://apps.dtic.mil/sti/tr/pdf/ADA395339.pdf
- The 12-item "Checklist for Trust between People and Automation." Most-used self-report trust measure in the field; used unaltered in 100+ reports.
- `[CS: VERIFIED]` — DTIC full text is public.
- **Known critique:** documented **positivity bias** and lower sensitivity than alternatives. See "Positive bias in the 'Trust in Automated Systems Survey'? An examination of the Jian et al. (2000) scale." https://www.academia.edu/51068582 `[CS: MEDIUM]`

**Kohn, S.C. et al. (2021). "Measurement of Trust in Automation: A Narrative Review and Reference Guide." *Frontiers in Psychology* 12:604977.**
- DOI: 10.3389/fpsyg.2021.604977 · https://pmc.ncbi.nlm.nih.gov/articles/PMC8562383/
- `[CS: VERIFIED]` — open access. **If you need to defend or replace the 2.5/5 instrument, start here.**

**Holland, C., Perry, G. & Neyedli, H.F. (2024). "Calibrating trust, reliance and dependence in variable-reliability automation." *Proc. HFES* 68(1), 604–610.**
- DOI: 10.1177/10711813241277531 · https://pmc.ncbi.nlm.nih.gov/articles/PMC11655268/
- n=80 (40/condition), MTurk, reliability ramped 50→100% or 100→50%, six blocks × 50 trials. **Self-reported trust did not differ between conditions. Behavioural dependence tracked actual reliability.** Trust and usage move through distinct mechanisms.
- `[CS: VERIFIED]` — read the article; design, n, and findings confirmed.
- **Sharpest ingredient for #4 in this whole dossier:** a self-report trust score may be insensitive to the thing you actually care about. The 2.5/5 may be measuring attitude while adoption is governed by behaviour.

**Trust repair / longitudinal:**
de Visser, E.J. et al. (2020). "Towards a Theory of Longitudinal Trust Calibration in Human–Robot Teams." *Int. J. Social Robotics* 12, 459–478. DOI: 10.1007/s12369-019-00596-x · https://link.springer.com/article/10.1007/s12369-019-00596-x
- Introduces "relationship equity"; covers **dampening** overtrust and **repairing** undertrust, and notes trust violations are typically unanticipated.
- `[CS: VERIFIED]` · `[TRADITION: human-robot interaction]` — transfer to enterprise software is unestablished.

---

## 2. WHAT ACTUALLY MOVES TRUST IN AUTOMATED REMEDIATION — EVIDENCE vs. FOLKLORE

Your five interview-derived trust conditions were: **approvals · accuracy · governance · auditability · proof the action completed.** Here is what each has behind it.

### 2.1 ACCURACY — strongest evidence of the five
- Wickens & Dixon 2007 (§1.3): **0.70 reliability crossover.** Peer-reviewed synthesis. `[CS: HIGH]`
- Parasuraman & Riley 1997 (§1.1): **disuse is driven by false alarms.** `[CS: VERIFIED]`
- Holland et al. 2024 (§1.6): **behavioural dependence tracks reliability even when stated trust doesn't.** `[CS: VERIFIED]`
- SOC field evidence: Alahmadi, B.A., Axon, L. & Martinovic, I. (2022). "99% False Positives: A Qualitative Study of SOC Analysts' Perspectives on Security Alarms." *USENIX Security '22*, 2783–2800. Survey n=20 + qualitative n=21 security practitioners. Free PDF: https://www.usenix.org/system/files/sec22-alahmadi.pdf · https://www.usenix.org/conference/usenixsecurity22/presentation/alahmadi
  - `[CS: VERIFIED]` — venue, author order, n's, and pagination confirmed against USENIX and Oxford ORA.
  - **The closest thing to peer-reviewed field evidence in your actual domain.** Not endpoint remediation, but real practitioners, real tooling, published, and it names precision as the trust determinant.

**Read: accuracy is evidence-backed, and it is the only one of the five with a defensible numeric threshold.**

### 2.2 APPROVAL / CONFIRMATION GATES — evidence exists, and it cuts against the folklore
- Onnasch et al. 2014 meta-analysis: lower degree of automation (i.e. keeping the human in the decision loop) **preserves failure-state performance and situation awareness at the cost of routine efficiency.** So gates buy something real and measurable. `[CS: VERIFIED]`
- **The counter-evidence — this is the important one.** Akhawe, D. & Felt, A.P. (2013). "Alice in Warningland: A Large-Scale Field Study of Browser Security Warning Effectiveness." *USENIX Security '13*.
  - Free PDF: https://devd.me/papers/alice-in-warningland.pdf · https://www.usenix.org/conference/usenixsecurity13/technical-sessions/presentation/akhawe
  - **>25 million real warning impressions**, Chrome + Firefox telemetry, May–June 2013. Click-through rates: Firefox malware/phishing ~10%, Chrome malware/phishing ~25%, Firefox SSL ~33%, **Chrome SSL 70.2%.**
  - `[CS: VERIFIED]` — the 70.2% figure and the 25M scale are confirmed in the paper abstract and the authors' own slides.
  - **Why it belongs in an Ecoverse brief:** this is the largest field measurement of what happens to a confirmation gate at scale. Some gates hold. Some become a 70% rubber-stamp. Which one you get is an empirical property of the specific design, not a property of "having an approval step." An approval gate is a *research question*, not a mitigation.
- Buçinca et al. 2021 (§1.5): interventions that force engagement **work and are disliked.** `[CS: VERIFIED]`
- Adaptiva 2026 (§4.1) reports approvals as a named source of remediation *delay* — vendor survey, but it names the cost side of the gate. `[CS: MEDIUM — vendor survey]`

**Read: gates have real measured upside (Onnasch) and real measured failure modes (Akhawe & Felt, Buçinca). Not folklore. Also not a free win.**

### 2.3 EXPLANATION QUALITY — evidence exists and it is mostly negative
- Bansal et al. 2021: explanations **did not uniformly help; increased over-trust in wrong answers in some conditions.** `[CS: VERIFIED]`
- Schemmer et al. 2023: effect of explanations on appropriate reliance is **conditional, and needs the appropriate-reliance construct to even detect.** `[CS: VERIFIED]`
- "How explainable AI affects human performance: A systematic review of the behavioural consequences of saliency maps." arXiv: 2404.16042 `[CS: MEDIUM]` — preprint; review-level.
- `[STATISTICALLY CENTRAL]` warning: the default LLM/consultancy answer is "explainability builds trust." **The peer-reviewed evidence does not support that as stated.** The divergent and better-supported framing: explanations change *reliance*, sometimes in the wrong direction, and the effect depends on whether the explanation lets the user verify the answer independently.

### 2.4 UNDO / ROLLBACK — one strong, on-domain, vendor-sourced data point
- **0patch Survey Report 2017** (published March 2018): **"88% say they would apply patches faster if they had the option to quickly un-patch if needed."** Also: 72% of managers afraid to apply patches immediately because they could "break stuff"; 79% want security patches decoupled from functional changes.
  - https://blog.0patch.com/2018/03/security-patching-is-hard-survey.html
  - `[CS: MEDIUM — vendor survey, self-selected sample, no published n or methodology, and 0patch sells exactly the product this stat argues for.]` **This is a claim about 0patch's marketing as much as about the world.** But it is the single most on-domain, directly-on-point published number I found for "reversibility moves adoption." Treat as directional only.
- Tanium AEM "Confidence Scores" + ring deployment are the vendor-shipped instantiation of this logic (§6.2). Vendor doc, not evidence.
- Academic support is **weak/indirect.** The general finding that override capability raises baseline trust appears in secondary summaries of the trust literature, but **I could not trace it to a specific primary study.** `[CS: LOW]` — **do not cite "override increases trust" to a named source without finding the primary yourself.**

**Read: rollback is the condition with the best story and the worst sourcing. Single-source, and the source sells the feature.**

### 2.5 AUDITABILITY AND COMPLETION CONFIRMATION — I found nothing measured. Saying so.
- **No published study located that measures the effect of audit logs, or of action-completion confirmation, on trust or adoption of automated remediation.** `[CS: UNKNOWN]`
- What exists is *requirement*-side, not *evidence*-side: logging and traceability are mandated by governance frameworks (§3 — EU AI Act Art. 12 logging and Art. 14 human oversight for high-risk; ISO/IEC 42001 AIMS controls; NIST AI RMF MEASURE/MANAGE). That tells you a buyer will *ask* for it. It does not tell you it moves trust.
- Adjacent-only support: the automation transparency literature (Lee & See 2004 on the basis of trust; de Visser et al. 2020 on transparency and repair). Adjacent is not the same as measured.
- **What would resolve it:** a controlled study varying presence/absence of completion confirmation and audit trail in a remediation task, measuring both stated trust (Jian scale) and behavioural reliance (Schemmer construct). That study does not appear to exist. It is a research brief, not a gap to be papered over.

---

## 3. GOVERNANCE FRAMEWORKS A BUYER WILL CITE — AND WHAT ACTUALLY APPLIES

### 3.1 EU AI Act — be precise, because the dates moved and most secondary writing is stale

**Official Commission page:** https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai
**Official FAQ desk:** https://ai-act-service-desk.ec.europa.eu/en/faq

**THE TIMELINE CHANGED IN 2026. Anything written before mid-2026 is wrong on the high-risk date.**
- The Commission published the **Digital Omnibus on AI on 19 November 2025.**
- The **Omnibus was published in the Official Journal on 24 July 2026 and entered into force on 27 July 2026.**
- **Annex III high-risk obligations: moved from 2 August 2026 → 2 December 2027.**
- **Annex I (product-embedded) high-risk obligations: moved from 2 August 2027 → 2 August 2028.**
- **NOT delayed: Article 50 transparency obligations still apply from 2 August 2026** (with a ~4-month grace for watermarking on existing systems, to 2 December 2026).
- **NOT changed: GPAI obligations (Arts. 51–56) in force since 2 August 2025.**
- Sources: Gibson Dunn, "EU AI Act Omnibus Agreement — Postponed High-Risk Deadlines and Other Key Changes," 27 May 2026 — https://www.gibsondunn.com/eu-ai-act-omnibus-agreement-postponed-high-risk-deadlines-and-other-key-changes/ · White & Case, "EU AI Omnibus enters into force, amending the AI Act" — https://www.whitecase.com/insight-alert/eu-ai-omnibus-enters-force-amending-ai-act (403 to automated fetch; reachable in a browser) · Cloud Security Alliance research note — https://labs.cloudsecurityalliance.org/research/csa-research-note-eu-ai-act-omnibus-vii-deadline-delay-20260/
- `[CS: HIGH]` on the December 2027 / August 2028 dates — consistent across Gibson Dunn (read directly), White & Case, CSA, Sidley, and HLC. **Beth: verify against the Official Journal text before this goes in anything a customer reads.** Law firm alerts are secondary sources.
- `[CS: LOW — outside training window]` on my own recall here. Everything above is retrieved, not remembered.

**What applies to an IT-automation / endpoint-management tool:**

| Obligation | Applies to Ecoverse-type tool? | Basis |
|---|---|---|
| **Art. 4 AI literacy** — staff training, all providers and deployers, **regardless of risk tier** | **YES. In force since 2 February 2025.** | https://artificialintelligenceact.eu/article/4/ · `[CS: HIGH]` |
| **Art. 50 transparency** — inform people they are interacting with AI | **LIKELY YES** for any conversational/agent surface. From 2 Aug 2026. | https://artificialintelligenceact.eu/article/50/ · Commission FAQ: https://digital-strategy.ec.europa.eu/en/faqs/transparency-obligations-under-article-50-ai-act · `[CS: HIGH]` |
| **Art. 5 prohibitions** | No — none of the prohibited practices are in scope. | `[CS: HIGH]` |
| **Annex III high-risk regime** (risk management, data governance, **Art. 12 logging**, **Art. 14 human oversight**, conformity assessment, registration) | **PROBABLY NOT — but read the next row before you rely on that.** | `[CS: MEDIUM]` |
| **Annex III point 2** — critical infrastructure | **Verbatim: "AI systems intended to be used as safety components in the management and operation of critical digital infrastructure, road traffic, or in the supply of water, gas, heating or electricity."** https://artificialintelligenceact.eu/annex/3/ | `[CS: VERIFIED]` |

**The precision that matters most, and the one a competitor's legal team will get wrong:**
- "Safety component" is drawn **narrowly** — the system must *directly protect the physical integrity* of the infrastructure or the health and safety of persons/property.
- **Recital 55, verbatim: "Components intended to be used solely for cybersecurity purposes should not qualify as safety components."** https://artificialintelligenceact.eu/recital/55/ · `[CS: VERIFIED]` — read the recital page directly.
- **Read: an endpoint patch/vuln/config remediation tool sold for security purposes has a strong argument it is NOT Annex III high-risk.** It still carries Art. 4 and probably Art. 50. `[ASSUMPTION]` — this is a legal determination. Not mine to make. It needs N-able counsel, and the determination itself is a saleable artifact.
- Useful secondary on the narrow reading: McCann FitzGerald, "Critical Infrastructure Spotlight: EU AI Act — Draft Guidelines on High-Risk AI Classification" — https://www.mccannfitzgerald.com/knowledge/construction-and-infrastructure/critical-infrastructure-spotlight-eu-ai-act-draft-guidelines-on-high-risk-ai-classification `[CS: MEDIUM]`
- Also note: the Act's "critical infrastructure" definition borrows from the **Critical Entities Resilience Directive (EU) 2022/2557**, which is broad. Narrow "safety component" + broad "critical infrastructure" is where the argument will actually be had. `[CS: MEDIUM]`

### 3.2 ISO/IEC 42001:2023 — the one a procurement team can actually demand
- Official: https://www.iso.org/standard/42001
- AI Management System (AIMS). **The only certifiable AI management standard** — accredited third-party audit, 3-year cycle. Accreditation body list: https://anab.ansi.org/accreditation/iso-iec-42001-artificial-intelligence-management-systems/
- Applies to any organisation of any size that develops, provides, or uses AI-based products/services — covers model developers, product companies embedding third-party models, and internal deployers.
- Vendor attestations as precedent a buyer will cite: AWS — https://aws.amazon.com/compliance/iso-42001-faqs/ · Microsoft — https://learn.microsoft.com/en-us/compliance/regulatory/offering-iso-42001
- `[CS: HIGH]` on scope, certifiability, and the AWS/Microsoft holdings.
- `[CS: LOW]` on the "$20k–$60k, 4–9 months" cost/timeline figures — those came from a consultancy blog (Konfirmity), not from ISO or an accreditation body. **Do not quote the cost range.**
- **Buyer-facing read:** this is the box a large enterprise or MSP procurement function will want ticked, because it is the only one with a certificate attached. NIST AI RMF has no certificate.

### 3.3 NIST AI RMF 1.0 (NIST AI 100-1)
- Official: https://www.nist.gov/itl/ai-risk-management-framework · Core: https://airc.nist.gov/airmf-resources/airmf/5-sec-core/
- Published 26 January 2023. Four functions: **GOVERN · MAP · MEASURE · MANAGE.**
- Seven trustworthiness characteristics: valid and reliable · safe · secure and resilient · accountable and transparent · explainable and interpretable · privacy-enhanced · fair with harmful bias managed.
- **Voluntary and non-certifiable.** Not sector-specific. It does not tell you what you must do.
- `[CS: HIGH]` — publication date, functions, and characteristics confirmed against NIST/AIRC.
- `[CS: MEDIUM]` on "no 2.0 released as of 2026, revision underway" — came from a secondary blog, not from NIST directly. **Verify on nist.gov before asserting.**
- Community (not-NIST) agentic extension: CSA, "NIST AI Risk Management Framework: Agentic Profile" — https://labs.cloudsecurityalliance.org/agentic/agentic-nist-ai-rmf-profile-v1/ · `[CS: MEDIUM]` — **this is a Cloud Security Alliance working artifact, NOT a NIST publication.** Do not let anyone cite it as NIST.

### 3.4 Published procurement checklists (free, public, citable)
- **AI Playbook for the UK Government** — Government Digital Service, published **10 February 2025**. Ten principles plus procurement and assurance guidance across the AI lifecycle; replaced the Generative AI Framework for HMG. https://gov.uk/government/publications/ai-playbook-for-the-uk-government/artificial-intelligence-playbook-for-the-uk-government-html · launch post: https://gds.blog.gov.uk/2025/02/10/launching-the-artificial-intelligence-playbook-for-the-uk-government/ · `[CS: HIGH]`
- **Guidelines for AI Procurement** — GOV.UK. https://www.gov.uk/government/publications/guidelines-for-ai-procurement · `[CS: HIGH]`
- Both are directly relevant given Beth works in the UK; UK public sector and UK-regulated buyers will map RFP questions to these.
- Legal-sector explainer on the Playbook: Bird & Bird — https://www.twobirds.com/en/insights/2025/uk/an-ai-playbook-for-the-uk-government-has-been-released-by-the-uk-government-digital-service `[CS: MEDIUM]`

---

## 4. ADOPTION DATA, FAILURE CASES, RELIABILITY BENCHMARKS

### 4.1 Share of organisations allowing automated remediation without human approval

**This is the thinnest part of the whole dossier and the part most likely to be quoted. Read the tags.**

- **"Only 8% report fully autonomous execution today."** — Adaptiva, *State of Patch Management Report 2026*. Survey of **200+ IT and security professionals**, run by Adaptiva with Demand Metric. https://adaptiva.com/resources/report/state-of-patch-management
  - `[CS: MEDIUM — vendor survey.]` n is reported only as "200+"; sampling methodology is not published; **full report is gated behind a form.** Adaptiva sells autonomous patch management.
  - Same report: **56% still worry they remain exposed to known vulnerabilities** even with faster deployment; **share deploying patches within six days rose from 15% (2023) to 59% (2026)**; approvals, testing, and disconnected workflows named as the delay sources. `[CS: MEDIUM — vendor survey]`
- **"~40 million of 150 million patches deployed by Qualys in the last 12 months were autonomously deployed with no human in the loop" (≈26.7%).** — Lavish Jhamb (Senior Manager, Product Management, TruRisk Eliminate, Qualys), "Enterprise Patch & Remediation Benchmark," 19 May 2026. https://blog.qualys.com/qualys-insights/2026/04/20/enterprise-patch-remediation-benchmark-2026
  - `[CS: MEDIUM — vendor telemetry.]` **No n, no sampling frame, no methodology statement.** It is Qualys customers using a Qualys autonomous feature — a sample selected on the outcome being measured. Also reports complex-application remediation averaging **5 months 10 days**, with Visual C++, .NET, Java, and Citrix Workspace App most delayed. **No success, failure, or rollback rates published.**
  - **The 8% and the 26.7% are not in conflict and should not be presented as a range.** One counts organisations with a fully autonomous posture; the other counts patch events inside a self-selected install base. `[WOBBLY]` if merged.
- **I found no independent, non-vendor survey measuring the share of organisations permitting unapproved automated remediation.** `[CS: UNKNOWN]` — if that number is load-bearing for the Ecoverse business case, it needs primary research. Naming it as a `[?]` claim is the honest move.
- Context on patching reluctance (vendor surveys, directional only): Ivanti press release, 2021 — "71% of IT security pros find patching overly complex and time-consuming" — https://www.ivanti.com/company/press-releases/2021/71-of-it-security-pros-find-patching-to-be-overly-complex-and-time-consuming-ivanti-study-confirms `[CS: MEDIUM — vendor survey]`
- **DO-NOT-CITE list from this section:** the aggregator pages (heimdalsecurity.com, expertinsights.com, gitnux.org, nikolaroza.com, webinarcare.com) recirculate these numbers without methodology and in several cases without correct attribution or date. Several stats floating as "2026 patch management statistics" trace back to the 2017 0patch survey. **Trace every number to the originating publisher before it ships.**

### 4.2 Published mass-deployment failure cases (primary sources available)

**CrowdStrike, 19 July 2024 — the canonical case.**
- **Primary: CrowdStrike External Technical Root Cause Analysis, Channel File 291, 6 August 2024** — https://www.crowdstrike.com/wp-content/uploads/2024/08/Channel-File-291-Incident-Root-Cause-Analysis-08.06.2024.pdf
- Preliminary PIR: https://www.crowdstrike.com/en-us/blog/falcon-content-update-preliminary-post-incident-report/
- Independent government record: **CISA alert, 19 July 2024** — https://www.cisa.gov/news-events/alerts/2024/07/19/widespread-it-outage-due-crowdstrike-update
- Mechanism: Rapid Response Content update at 04:09 UTC. IPC Template Type introduced Feb 2024 expected **21 input fields**; sensor code supplied **20**. Out-of-bounds read → Windows kernel crash.
- **8.5 million Windows devices** (figure originates with Microsoft, widely reported).
- **The mitigations CrowdStrike itself committed to are your requirements list, stated by the incident rather than by a designer:** compile-time validation of template input fields · runtime array bounds checks · expanded template-type test coverage · fix to a Content Validator logic error · **staged deployment of Template Instances** · **customer control over Rapid Response Content updates.** Plus two independent third-party security reviews of the sensor code and end-to-end quality process.
- `[CS: HIGH]` — the RCA PDF is public and primary; I did not read it end to end, I am reporting the widely-consistent summary of it. The 21-vs-20 field detail and the six mitigations are consistently reported across CybersecurityNews, ITBusinessDirect, and Forbes (Kate O'Flaherty, 7 Aug 2024 — https://www.forbes.com/sites/kateoflahertyuk/2024/08/07/crowdstrike-reveals-what-happened-why-and-whats-changed/).
- `[CS: MEDIUM]` on "single largest IT outage in history by direct host impact" — that superlative is journalistic, not measured.

**McAfee DAT 5958, 21 April 2010 — the same failure 14 years earlier.**
- **Primary/government: CISA alert, 21 April 2010** — https://www.cisa.gov/news-events/alerts/2010/04/21/mcafee-dat-5958-issues
- SANS Internet Storm Center diary: https://isc.sans.edu/diary/8656
- Krebs on Security: https://krebsonsecurity.com/2010/04/mcafee-false-detection-locks-up-windows-xp/
- The Register: https://www.theregister.com/2010/04/21/mcafee_false_positive/
- Microsoft's own advisory: https://techcommunity.microsoft.com/blog/askperf/mcafee-false-positive-detection-of-w32wecorl-a-when-using-5958-dat-file/374578
- Mechanism: DAT 5958 flagged **svchost.exe** as `w32/wecorl.a`; quarantining a core OS binary produced reboot loops, BSODs, and DCOM errors on Windows XP SP3. McAfee's advice was to **disable automatic pull and update tasks** and wait for DAT 5959.
- `[CS: HIGH]` — CISA, SANS, and Microsoft records are all public and independent of the vendor.
- **Why both cases together are the stronger ingredient:** two vendors, 14 years apart, same shape — a fast automatic content channel that bypassed staged rollout. The governance requirement (staged deployment, customer control of the update channel) predates agentic AI entirely. This is not an AI-trust problem that AI created.

### 4.3 Reliability benchmarks — the best available answer to assumption #3

**ITBench (IBM Research + UIUC) — peer-reviewed.**
- Jha, S., Arora, R., Watanabe, Y., Yanagawa, T., Chen, Y., Clark, J., et al. (42 authors, IBM + University of Illinois Urbana-Champaign). "ITBench: Evaluating AI Agents across Diverse Real-World IT Automation Tasks." arXiv:2502.05352, submitted 7 February 2025. Published in **PMLR v267**: https://proceedings.mlr.press/v267/jha25a.html
- **94 real-world scenarios** across SRE, Compliance/Security Ops (CISO), and FinOps. Open framework: https://github.com/itbench-hub/ITBench · trajectories dataset: https://huggingface.co/datasets/ibm-research/ITBench-Trajectories
- **Reported agent resolution rates: SRE 13.8% · CISO 25.2% · FinOps 0%.**
- `[CS: HIGH]` — arXiv abstract read directly; author list, date, scenario count, and the three rates confirmed. PMLR venue confirms peer review.

**ITBench-AA — independent third-party re-implementation. This is the item you asked for in §6 ("any independent evaluation").**
- Artificial Analysis + IBM, published **27 May 2026**. https://artificialanalysis.ai/articles/itbench-aa-launch · live leaderboard: https://artificialanalysis.ai/evaluations/itbench-aa · writeup: https://huggingface.co/blog/ibm-research/itbench-aa
- **59 SRE tasks: 40 public + 19 held-out.** Scoring: **average precision at full recall** — a model must identify *all* ground-truth root causes or score zero, then is scored on precision of what it submitted.
- **As of the launch article: all frontier models below 50%.** Top three reported: Claude Opus 4.7 (Adaptive Reasoning, Max Effort) **47%** · GPT-5.5 (xhigh) **46%** · Qwen3.7 Max **42%**. Described as one of the least saturated agentic benchmarks available.
- Stated failure modes: models **submit excess entities beyond the true root causes**, and **longer investigation trajectories do not correlate with better accuracy.**
- `[CS: HIGH]` for the launch-article figures — read the page directly. `[CS: LOW — outside training window]` for my own knowledge of these model versions; I am reporting the page, not recalling the models.
- `[CS: LOW]` on a secondary claim that "GPT-5.6 Sol (max) leads at 56.2%" (aurorasre.ai blog). **The leaderboard is live and moves. Pull the current number at write-time rather than quoting either figure as standing.**

**AIOpsLab (Microsoft Research).**
- "AIOpsLab: A Holistic Framework to Evaluate AI Agents for Enabling Autonomous Clouds." arXiv:2501.06706 · https://arxiv.org/pdf/2501.06706 · MSR page: https://www.microsoft.com/en-us/research/publication/aiopslab-a-holistic-framework-for-evaluating-ai-agents-for-enabling-autonomous-cloud/ · blog: https://www.microsoft.com/en-us/research/blog/aiopslab-building-ai-agents-for-autonomous-clouds/
- Deploys microservice environments, injects faults, generates workload, exports telemetry. **86 incident scenarios** across detection, localisation, diagnosis, mitigation.
- **Best agent (a simplified FLASH): 59.32% overall, 54.55% on mitigation.**
- `[CS: MEDIUM]` — arXiv/MSR pages confirmed; the 86-scenario and 59.32%/54.55% figures come from secondary summary of the paper, not from my reading of the results tables. **Verify the two percentages in the PDF before quoting.**
- Note the conflict of interest shape: Microsoft publishes the benchmark and ships the agents. It is peer-reviewable work from a vendor lab, which is not the same as independent.

**Also available:** Cloud-OpsBench, "A Reproducible Benchmark for Agentic Root Cause Analysis in Cloud Systems," arXiv:2603.00468 · `[CS: LOW — outside training window]`, retrieved reference only, not verified.

**Put next to Wickens & Dixon's 0.70 crossover (§1.3), these benchmark numbers are the most direct external grounding available for assumption #3. Beth draws the inference.**

---

## 5. AIOPS / AUTOMATED REMEDIATION OUTCOMES — INDEPENDENT vs. VENDOR

### 5.1 Independent / peer-reviewed

**Notaro, P., Cardoso, J. & Gerndt, M. (2021). "A Survey of AIOps Methods for Failure Management." *ACM Trans. Intelligent Systems and Technology*.**
- Reviewed **~100 failure-management solutions.** Finding: AIOps methods **differ considerably in objectives, intervention periods, data requirements, and evaluation methods** — technical progress with **limited standardisation** across operational tasks. Coverage spans anomaly detection, failure prediction, event reduction, root-cause analysis, and operational recommendation.
- https://www.researchgate.net/publication/357049028_A_Survey_of_AIOps_Methods_for_Failure_Management
- Related: "On the Application of AI for Failure Management — AIOps," DRCN 2022 — https://jorge-cardoso.github.io/pdf/2022-03-30-DRCN_On_the_Application_of_AI_for_Failure_Management.pdf
- `[CS: MEDIUM]` — the survey exists and the ~100-solution scope and standardisation finding are consistently reported; I did not read the full text and did not confirm the exact volume/issue/DOI.
- **Load-bearing point: the peer-reviewed survey of the field says evaluation methods are not standardised. That is why comparable MTTR evidence does not exist.**

**Ahmed, T., Ghosh, S., Bansal, C., Zimmermann, T., Zhang, X. & Rajmohan, S. (2023). "Recommending Root-Cause and Mitigation Steps for Cloud Incidents Using Large Language Models." *ICSE '23*, 45th Int. Conf. on Software Engineering.**
- DOI: 10.1109/ICSE48619.2023.00149 · https://dl.acm.org/doi/10.1109/ICSE48619.2023.00149 · https://conf.researchr.org/details/icse-2023/icse-2023-technical-track/79/
- First large-scale study of LLM effectiveness for root-causing and mitigating production incidents.
- `[CS: HIGH]` on authorship, venue, DOI, and framing. `[CS: UNKNOWN]` on its accuracy numbers — **I could not retrieve them; ACM returned 403.** Do not attribute figures to this paper without opening it.
- Related Microsoft-lineage work: arXiv:2305.15778 (RCACopilot) · arXiv:2401.13810 (in-context learning with GPT-4) · arXiv:2403.04123 (LLM agents for RCA) · arXiv:2310.16340 (RCAgent). `[CS: MEDIUM]` — preprints.

**E2E-REME: "Towards End-to-End Microservices Auto-Remediation via Experience-Simulation Reinforcement Fine-Tuning."** arXiv:2604.11094 · https://arxiv.org/pdf/2604.11094
- Evaluates under industrial workloads; **SREs manually recorded remediation time with and without automation.** That methodology — human-recorded remediation time, with and without — is the shape of the study your #3 needs.
- `[CS: LOW — outside training window]` · preprint, not peer-reviewed at retrieval. **Verify it exists and read the results before citing.**

### 5.2 Independent-ish, large-n, adjacent (software delivery, not IT ops)

**DORA, "State of AI-assisted Software Development 2025"** (Google Cloud / DORA research programme)
- Report: https://dora.dev/dora-report-2025/ · PDF: https://services.google.com/fh/files/misc/2025_state_of_ai_assisted_software_development.pdf · announcement: https://cloud.google.com/blog/products/ai-machine-learning/announcing-the-2025-dora-report
- **~90% report using AI at work. >80% believe it increased their productivity. ~30% report little or no trust in AI-generated code.**
- **AI adoption correlates positively with delivery throughput AND positively with delivery instability** — more change failures, more rework, longer resolution cycles. Framed as "AI is an amplifier" of existing organisational strength or dysfunction.
- **">60% of developers have discovered AI-related errors after deployment."**
- `[CS: HIGH]` on the ~90% / >80% / ~30% figures and the throughput-and-instability finding — consistent across dora.dev, the Google Cloud announcement, InfoQ, and Splunk. `[CS: MEDIUM]` on the >60% post-deployment-error figure (secondary reporting; confirm in the PDF).
- **Caveat that matters: Google publishes DORA and sells AI coding tools.** Large-n and methodologically transparent, but not disinterested. And it measures *software delivery*, not IT operations. Transfer is an `[ASSUMPTION]`.
- Follow-on: "ROI of AI-assisted Software Development" (2026.01) — https://cloud.google.com/resources/content/dora-roi-of-ai-assisted-software-development · InfoQ coverage: https://www.infoq.com/news/2026/05/dora-roi-ai-assisted-dev-report/ · `[CS: MEDIUM]`
- **No DORA 2026 edition located as of this run.** The 2025 report remains current. `[CS: MEDIUM]`

**KPMG + University of Melbourne, "Trust, Attitudes and Use of Artificial Intelligence: A Global Study 2025."**
- Report PDF: https://assets.kpmg.com/content/dam/kpmgsites/xx/pdf/2025/05/trust-attitudes-and-use-of-ai-global-report.pdf · academic host: https://mbs.edu/faculty-and-research/trust-and-ai · press release: https://kpmg.com/xx/en/media/press-releases/2025/04/trust-of-ai-remains-a-critical-challenge.html · Melbourne release: https://fbe.unimelb.edu.au/newsroom/media-release-global-study-reveals-trust-of-ai-remains-a-critical-challenge-reflecting-tension-between-benefits-and-risks
- **n > 48,000 across 47 countries**, fieldwork November 2024 – mid-January 2025.
- **66% intentionally use AI with some regularity; only 46% are willing to trust it.** Compared against a pre-ChatGPT 17-country baseline (2022), people have become **less** trusting and **more** worried as adoption rose.
- `[CS: HIGH]` — n, country count, fieldwork window, and the 66%/46% figures are consistent across KPMG and the University of Melbourne (the academic partner).
- **Directly relevant to #4's "out of the gate" phrasing:** the largest published dataset on the topic shows trust *declining* while adoption rises. The assumption that trust arrives with exposure is contradicted at population scale. That is general-population AI, not IT admins. `[THIN DOMAIN]` on transfer.

### 5.3 VENDOR ROI CLAIMS — marketing, not outcome evidence. Tagged as such.
- "Many enterprises report 40–60% reductions in MTTR after implementing AI-powered observability tools" — recirculated across Everbridge (https://www.everbridge.com/blog/accelerating-mttr-reduction-for-enterprise-it-operations/), Rootly (https://rootly.com/blog/ai-in-incident-response-how-automation-improves-mttr), FireMon, Deepwatch, and a Medium post claiming "AIOps cuts MTTR by 40%" (https://medium.com/@alexendrascott01/case-study-how-enterprises-use-aiops-to-cut-mttr-by-40-576600a4215a).
- `[CS: FABRICATION RISK]` **as an outcome claim.** No published methodology, no sample, no baseline definition, no control, and no consistent definition of MTTR (mean time to *repair* vs *remediate* vs *respond* are used interchangeably across these pages). The Medium post is not a case study in any research sense.
- **These are claims about vendor marketing. They are evidence that "40% MTTR reduction" is the category's expected talking point — which is genuinely useful competitive intelligence — and they are not evidence that MTTR falls 40%.**
- **`[CS: UNKNOWN]` on the underlying question.** I found **no independent, controlled, published study measuring MTTR or ticket-volume reduction from AIOps or automated remediation.** The peer-reviewed survey of the field (Notaro et al., §5.1) explains why: evaluation methods are not standardised. If an Ecoverse business case needs a defensible MTTR number, that number does not currently exist in the public literature and would have to be generated internally with a stated baseline.

---

## 6. VENDOR CLAIMS vs. SHIPPED REALITY ON "AGENTIC" IT MANAGEMENT

### 6.1 Microsoft — the sharpest claim/reality gap, and it is documented in their own docs
**Vulnerability Remediation Agent in Microsoft Intune (Security Copilot).** Doc: https://learn.microsoft.com/en-us/intune/agents/vulnerability-remediation-agent · `ms.date: 2026-05-28`, `updated_at: 2026-08-25`. Related: https://learn.microsoft.com/en-us/intune/copilot/agents/ · RAI FAQ: https://learn.microsoft.com/en-us/copilot/security/rai-faqs-security-copilot-agents

**What the docs actually say (read directly, quotes verbatim):**
- **Status: "This feature is in public preview."**
- **The agent does not act. It recommends.** Four steps: data collection from Defender Vulnerability Management → analysis and prioritisation (CVSS, exposure impact, device count) → **"step-by-step remediation instructions"** → tracking. The human applies the patch and then marks the suggestion as applied.
- **The permissions prove it.** The agentic user is granted **Read Only Operator** / read-only custom role (`Mobile apps / read`, `Device configurations / read`) in Intune and a **Security Reader**-equivalent in Defender. **The agent is not technically capable of changing anything.**
- **Runs under a dedicated non-human identity** (Microsoft Entra agentic identity + agentic user), not a human account. Human-user identity is being **deprecated: expires 90 days after agentic identity release; the switch is permanent and cannot be reverted; run history is preserved.**
- **Gated start: "Until you delegate all required permissions to the agentic user, agent runs are disabled."** A **Run Readiness Check** must pass before Run or scheduling is enabled.
- **Notable control gap, stated plainly: "An admin must manually start the agent. After the agent starts, there are no options to stop or pause it."**
- **Notable governance gap, stated plainly: "Admins who access the Intune admin center can see data that the agent reports through agent suggestions. This data might be visible even when it's outside the admin's assigned Intune roles or scope."** And **"The agent doesn't support scope tags in public preview."**
- **Scope limits:** public cloud only, no government clouds; Windows and Intune apps only; CVE counts exclude Windows Server editions; exposed-device list covers only non-Server devices found in Entra.
- **Rollback model is identity-level, not action-level:** if the agentic identity breaks, you remove and re-provision the agent. There is no undo of agent output because there is no agent action.
- `[CS: VERIFIED]` — all of the above read directly from the Microsoft Learn page on 2026-09-23, including the frontmatter dates.
- **This is the single most useful competitive ingredient in the dossier.** The largest endpoint-management vendor, in a product branded as an *agent*, shipped **read-only recommendation with a non-human identity and no stop button**, and documented its own RBAC leakage. It is a published, citable statement of where the state of the art actually is. What Beth does with that is Beth's.

### 6.2 Tanium — claims autonomous action, and publishes the governance mechanism
- Solution page: https://www.tanium.com/solutions/autonomous-patch-management · AEM launch blog: https://www.tanium.com/blog/tanium-autonomous-endpoint-management-aem-the-experiences-that-scale-it-and-security-execution · solution brief PDF: https://45377644.fs1.hubspotusercontent-na1.net/hubfs/45377644/2025%20Sponsor%20Assets/Tanium%20Autonomous%20Endpoint%20Management%20(AEM)%20-%20Tanium.pdf
- Independent-ish trade coverage of the Nov 2024 launch: SiliconANGLE — https://siliconangle.com/2024/11/19/tanium-introduces-autonomous-endpoint-management-enhance-security-operations/ · Help Net Security — https://www.helpnetsecurity.com/2024/11/19/tanium-aem-platform/
- **Governance controls described in vendor material:**
  - **Confidence Scores** generated per patch/software deployment action from **installation success rates and post-deployment performance baseline changes** — CPU, memory, application crashes.
  - **Ring deployment** — phased rollout with **configurable entry and exit criteria** per ring; example progression cited as **1% → 15% → 40% → all**.
  - "Execute staged rollouts that start small and scale quickly when results meet confidence thresholds."
- `[CS: MEDIUM — vendor documentation.]` The mechanism is described in vendor-published material; **there is no independent evaluation of whether the confidence scores predict anything.**
- **Structurally: Tanium's answer to trust is not explanation and not approval-per-action. It is a measured blast-radius control with an outcome-derived confidence gate.** That is the same shape as CrowdStrike's own post-incident commitment to staged deployment (§4.2). Note the convergence; draw your own conclusion.
- Also: Tanium's own guide on governing this — https://www.tanium.com/blog/what-is-automated-vulnerability-remediation · deployment automation talk — https://www.tanium.com/blog/deployment-automation-tanium-deploy-tech-talks-120 · `[CS: MEDIUM — vendor]`

### 6.3 The MSP/RMM competitive set (Ecoverse's actual neighbourhood)
All of the following are **vendor announcements or trade press summaries of vendor announcements.** No independent evaluation of any of them exists that I could find. `[CS: MEDIUM]` on the claims existing; `[CS: UNKNOWN]` on whether the capability ships as described.
- **Kaseya** — "first agentic IT management platform," Kaseya Connect, ~May 2026. Powered by "Kaseya Intelligence." Notable published governance mechanism: a **"Critique Agent" — an independent reviewer running on a separate LLM architecture whose mandate is to stress-test and challenge other agents' decisions.** Compliance Manager GRC adds **automatic endpoint remediation through Datto RMM**. Coverage: https://www.channelpronetwork.com/2026/05/01/kaseya-agentic-it-management-platform-leads-channel-news/ · https://www.technewshub.co.uk/post/kaseya-connect-europe-2026-open-api-and-multi-agent-ai-architecture-set-to-decentralize-managed-ser
- **NinjaOne** — NinjaOne Vulnerability Management, ~16 March 2026; AI identifies vulnerabilities in real time and integrates with **Autonomous Patch Management** for "fast, safe remediation." Coverage: https://siliconangle.com/2026/03/16/ninjaone-launches-ai-driven-vulnerability-management-speed-detection-remediation/ · vendor AI page: https://www.ninjaone.com/ai-info-page/
- **ConnectWise** — ITSM platform with agentic AI that "can autonomously handle customer tickets." Referenced in https://www.channeldive.com/news/ninjaone-kaseya-connectwise-msp-platform-rmm/808905/
- **N-able (for the record, since it is the reference point):** "N-able Ushers in New Era of Business Resilience Fueled by AI," BusinessWire, 29 January 2026 — https://www.businesswire.com/news/home/20260129759774/en/N-able-Ushers-in-New-Era-of-Business-Resilience-Fueled-by-AI — claims agentic AI that automates tasks **"and keeps humans firmly in control."** N-zo GA is on the public status page: https://status.n-able.com/release-notes/page/2/ · Developer Portal / Open Ecoverse release: https://www.n-able.com/press/press-releases/n-able-launches-ai-powered-developer-portal · roadmap: https://www.n-able.com/roadmap
  - `[CS: HIGH]` that the public claim exists and contains "keeps humans firmly in control." **That published sentence is an external commitment the Ecoverse design is already accountable to.** Beth may already know this; noting it because it is a public, citable constraint on the design space, not an internal preference.

### 6.4 The independent check on the whole category
**Gartner press release, 25 June 2025: "Gartner Predicts Over 40% of Agentic AI Projects Will Be Canceled by End of 2027."**
- https://www.gartner.com/en/newsroom/press-releases/2025-06-25-gartner-predicts-over-40-percent-of-agentic-ai-projects-will-be-canceled-by-end-of-2027
- Cited causes: **escalating costs, unclear business value, inadequate risk controls.**
- **"Agent washing"** — named in the release as rebranding of assistants, RPA, and chatbots without substantive agentic capability. **Gartner estimates ~130 of thousands of agentic AI vendors are real.**
- Quote (Anushree Verma, Gartner): "Most agentic AI propositions lack significant value or return on investment (ROI), as current models don't have the maturity and agency to autonomously achieve complex business goals or follow nuanced instructions over time."
- **Methodology, and this matters: the underlying data is a poll of 3,412 webinar attendees.** A self-selected audience of people who signed up for a Gartner webinar on agentic AI.
- `[CS: HIGH]` that the release says this — the press release is public and free. `[CS: LOW]` on the 40% prediction as a forecast: it is an analyst prediction from a webinar poll, not a measured outcome, from a firm that sells research on the topic. **Cite it as "the category's own analysts are calling agent washing," not as a probability.**
- **The only genuinely independent evaluation of agentic IT capability found in this entire run is ITBench-AA (§4.3): third-party implementation, held-out tasks, all frontier models below 50%.** Everything else in §6 is vendors describing themselves.

---

## TRUST LADDER FOR THIS DOSSIER

**Strongest — primary, open, and directly on point**
1. Microsoft Learn, Vulnerability Remediation Agent doc (§6.1) — read directly, verbatim quotes, dated frontmatter, documents its own limits
2. Onnasch et al. 2014 meta-analysis (§1.3) — peer-reviewed, 18 experiments
3. Wickens & Dixon 2007, 0.70 crossover (§1.3) — peer-reviewed synthesis, gives a number
4. ITBench / ITBench-AA (§4.3) — peer-reviewed benchmark + independent third-party re-implementation
5. Akhawe & Felt 2013 (§2.2) — 25M real impressions; the approval-gate reality check
6. Recital 55 + Annex III point 2, verbatim (§3.1) — read directly on artificialintelligenceact.eu
7. CrowdStrike RCA + CISA alerts, 2024 and 2010 (§4.2) — primary incident record, one vendor one government
8. Holland et al. 2024 (§1.6) — read in full; stated trust ≠ behavioural reliance

**Directional only — real sources, weak methodology or vendor interest**
- Adaptiva 8% · Qualys 26.7% · 0patch 88% · Ivanti 71% (all vendor surveys/telemetry, none with published methodology; several gated)
- Tanium confidence scores + rings (vendor doc, no independent validation)
- DORA 2025 (large-n and transparent, but Google publishes it and sells the tools; measures software delivery not IT ops)
- Gartner 40% / agent washing (webinar poll, n=3,412 self-selected, analyst prediction)

**`[WOBBLY]` — narrow tradition presented as consensus**
- The levels-of-automation lineage (§1.2). Cite Jamieson & Skraaning alongside it or you are presenting one side of a live eight-year dispute as settled.
- All §1 trust literature as applied to IT administrators: aviation/driving/lab-derived, Western, MTurk- and student-sampled. `[THIN DOMAIN]`

**DO NOT CITE**
- **"40–60% MTTR reduction from AIOps"** — `[CS: FABRICATION RISK]` as an outcome claim. No methodology anywhere. Definition of MTTR is inconsistent across every page that repeats it. This is the number most likely to end up in a deck.
- **The "55% omission error rate"** attributed to automation-bias research — could not locate in a primary source.
- **"Override capability increases trust"** as a sourced finding — appears only in secondary summaries; I could not trace the primary.
- **ISO 42001 "$20k–$60k / 4–9 months"** — consultancy blog, not ISO or an accreditation body.
- **The patch-statistics aggregator sites** (heimdalsecurity, expertinsights, gitnux, nikolaroza, webinarcare) — recirculate undated and misattributed figures; several "2026" stats trace to the 2017 0patch survey.
- **CSA's "NIST AI RMF Agentic Profile"** as a NIST publication — it is a Cloud Security Alliance artifact.
- **Any pre-mid-2026 source on the EU AI Act high-risk deadline** — the date moved to 2 December 2027. Stale secondary writing on this is everywhere.

---

## NAMED UNKNOWNS — terminal, not low-confidence

These are `[CS: UNKNOWN]`. They do not have fluent answers available, and I am not producing one.

1. **What share of organisations permit automated remediation without human approval.** No independent survey exists. Two vendor numbers (8%, 26.7%) measure different things and must not be merged into a range.
2. **Whether audit logs or completion confirmation move trust or adoption.** No measured study found. Governance frameworks *require* logging; that is a procurement fact, not a trust finding.
3. **Whether AIOps or automated remediation reduces MTTR, ticket volume, or effort.** No independent controlled study found. The peer-reviewed survey of the field says evaluation methods are not standardised, which is the reason.
4. **Whether an endpoint patch/vuln/config remediation tool falls under EU AI Act Annex III.** Recital 55's cybersecurity carve-out gives a strong argument it does not. **That is a legal determination requiring N-able counsel, not a scout output.**
5. **Whether Tanium's confidence scores predict deployment safety.** No independent evaluation.
6. **Whether Kaseya's "Critique Agent," NinjaOne's "Autonomous Patch Management," or ConnectWise's autonomous ticket handling ship as described.** Vendor announcements only.
7. **How the internal 2.5/5 trust baseline compares to anything external.** No comparable published benchmark for a 5-point trust measure in IT ops exists. Jian et al. (§1.6) is the standard instrument if you want a comparable measure — and it has a documented positivity bias, meaning a 2.5 on a home-grown scale and a 2.5 on Jian are not the same 2.5.

---

## COVERAGE NOTE

Six asks, six covered. Weakest coverage: §2.5 (auditability/completion — nothing measured, named as a gap) and §5 (independent AIOps outcome evidence — does not appear to exist in public literature). Strongest: §1 (deep, named camps, live dissent), §4.3 (benchmarks, including one genuinely independent), §6.1 (primary vendor doc contradicting its own category's marketing).

ACM Digital Library returned 403 on two items (Ahmed et al. ICSE '23 accuracy figures; the DTRAP human-factors-in-cybersecurity paper and its 47%/65%/79% percentages). Those percentages surfaced in search but I could not verify them against the primary text. `[CS: MEDIUM]` at best, and **not quotable until someone opens the paper.**
