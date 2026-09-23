# 04 — UK Cyber Security and Resilience (Network and Information Systems) Bill

**Two reasons this is the highest-value UK item:** it brings **managed service providers** into statutory scope for the first time, and the Government published its **own quantified per-firm cyber security spend estimate** for those firms — which is the closest thing in this dossier to a direct, official compliance→spend link.

---

## PART 1 — Status (partly beyond the May 2026 training window)

| Milestone | Date | CS |
|---|---|---|
| Final stage impact assessment published | **12 November 2025** | [CS: VERIFIED — date field on the IA document itself] |
| Introduced to House of Commons | 12 November 2025 | [CS: MEDIUM — Commons Library briefing CBP-10442 via search result; the briefing page returned **403** and was not read] |
| Commons second reading | 6 January 2026 | [CS: LOW — secondary commentary only] |
| Commons committee stage | 3–24 February 2026 | [CS: LOW — secondary commentary only] |
| Cleared all Commons stages | 16 June 2026 | **[CS: LOW — outside training window; secondary blogs only]** |
| Lords second reading (as HL Bill 32) | 14 July 2026 | **[CS: LOW — outside training window; secondary blogs only]** |
| Lords committee stage began | 1 September 2026 | **[CS: LOW — outside training window; secondary blogs only]** |
| Royal Assent | **DISPUTED** — commentary says late 2026; a Government consultation published June 2026 reportedly says spring 2027 | **[CS: LOW — sources disagree; neither primary source read]** |

> **Verification route Beth must take herself:** `bills.parliament.uk/bills/4035` (returned HTTP 403 to this tool — two different bill IDs, 4009 and 4035, appeared in search results; **4035** is the one with the live 2026 stage history). Also `commonslibrary.parliament.uk/research-briefings/cbp-10442/` (403).
>
> **Do not quote any 2026 parliamentary date from this dossier as verified.**

**Commencement:** per the gov.uk factsheet, the RMSP measure will "be brought into force through secondary legislation following Royal Assent; **no specific date provided**." [CS: VERIFIED — gov.uk factsheet]

> **So: no calendar date yet.** The UK's forced buying event for MSPs is real in substance and undated in fact, as of the sources read.

---

## PART 2 — Who comes into scope

**Source:** GOV.UK, *Relevant managed service providers* factsheet, page dated **30 June 2026**
https://www.gov.uk/government/publications/cyber-security-and-resilience-network-and-information-systems-bill-factsheets/relevant-managed-service-providers

**RMSP definition, verbatim:**
> "A person who provides managed services in the UK (whether or not established in the UK) and is not a small and micro enterprise."
[CS: VERIFIED]

**Numeric size threshold:** "No specific employee or turnover numbers are stated in the document." [CS: VERIFIED as an absence on that page]
> But see the Impact Assessment below, which *does* use ≥50 employees and >€10m turnover as the operative filter for costing. Those are the IA's working assumptions, not necessarily the statutory test. **Do not present them as the legal threshold.** [flagged]

**Duties on RMSPs, per the factsheet:**
- Register with the Information Commission, providing "name, contact information, and address"
- **"Register… within three months of the regulations commencing"**
- Appoint a UK representative if based overseas
- Notify the Information Commission of significant incidents
- "Identify and take appropriate and proportionate measures to manage risks posed to" their systems
[CS: VERIFIED]

**Regulator:** the **Information Commission** (formerly the ICO). [CS: VERIFIED]

**Incident reporting timescale:** not specified on this factsheet; it refers to a separate factsheet. **[CS: UNKNOWN]** — the 24h/72h figures circulating in commentary were not verified against a primary source.

**What a managed service covers, per the policy statement:**
> "services such as IT outsourcing (for example, IT remote support or helpdesks, and management of applications, such as emails and IT infrastructure management) and managed security services, such as security operations centre, and security information and event management."
[CS: HIGH — GOV.UK policy statement via search result; the policy statement page itself was not fetched]

**Small/micro exemption is not absolute.** Impact Assessment, p.4:
> "The current blanket exemption for small and micro-enterprises (SMEs) will be amended, so that regulators can designate an SME as a 'critical supplier' should it be necessary to safeguard a supply chain from the impacts of a cyber attack."
[CS: VERIFIED — read from the IA]

---

## PART 3 — The Government's own numbers

**Source:** Department for Science, Innovation and Technology, *Final stage impact assessment: Cyber Security and Resilience (Network and Information Systems) Bill*. IA number **DSIT002(FIA)-25-DTI**. RPC reference **RPC-DSIT-25054-IA (1)**. Date **12 November 2025**. Price base year 2025; PV base year 2026. 137pp.
https://assets.publishing.service.gov.uk/media/690cafd3d4c5f31272d3e6b2/cyber_security_and_resilience_bill_impact_assessment.pdf

All figures below read directly from the document. [CS: VERIFIED]

### Population in scope

**MSPs** (IA p.98, verbatim):
> "Frontier Economics estimate that there are **12,867 MSPs** active or registered in the UK. SMEs are excluded from NIS therefore Frontier estimate that there are between **977 and 1,214 MSPs that employ at least 50 people in the UK and have a turnover exceeding 10m Euros**. **658** of these organisations are estimated to be cloud service providers which are already in scope of the bill. Therefore, after removing these organisations, it is estimated that the number of MSPs in scope of the updated NIS Regulations is between **556 and 1,019**. These numbers have been used for the low and high scenario while the midpoint of these estimates (**788**) has been used for the central scenario."

MSP count assumed to grow at **3.6% per annum** over the 10-year appraisal period (information & communication sector growth rate).

**Other newly in-scope groups** (IA p.98, table — low / central / high):
| Group | Low | Central | High |
|---|---|---|---|
| Data centres | 64 | 64 | 64 |
| Large load controllers | 8 | 11 | 22 |
| Critical suppliers — RDSPs | N/A | N/A | N/A |
| Critical suppliers — OESs | 56 | 93 | 130 |
| Firms in scope of incident reporting (total, existing + new) | 1,756 | 1,991 | 2,223 |
| Regulators | 13 | 13 | 13 |

Data centre threshold (IA p.104): "Designating data centres **at or above 1MW capacity** and enterprise data centres **at or above 10MW capacity**". Large load controllers: those "controlling above **300MW**" in aggregate.

Regulators go from 12 to 13 because data centre infrastructure will be "regulated jointly by Ofcom and DSIT."

### ⭐ Per-MSP cost estimates — the compliance→spend link

**Ongoing additional cyber security spending** (IA p.103, verbatim — the single most important passage in this file):
> "Additional cyber security spending refers to the ongoing cost of additional cyber security spending by businesses with complying with the new measures."
> "RMSPs will have to take on additional cyber security spending as they seek to comply with the NIS Regulations. This includes internal and external staff costs which were estimated in the 2022 PIR using survey data. This estimate already included a 22% uplift for overheads."
> "For RDSPs the **internal cost per organisation was estimated at £64,460** in all scenarios while the **external cost per organisation was estimated to be £28,175 in the central scenario, £26,297 in the low scenario and £30,054 in the high scenario**. This is the most appropriate estimate for MSPs, so this was then multiplied by the number of MSPs in each scenario…"

**One-off costs per MSP:**
| Item | Low | Central | High | Source |
|---|---|---|---|---|
| Familiarisation | £1,133 | £1,133 | £1,133 | IA Table 9.4, p.101 |
| Additional physical security | £70,281 | £70,281 | £70,281 | IA Table 9.5, p.101 |
| Contract change | £270 | £1,348 | £2,695 | IA Table 9.6, p.102 |

Totals: familiarisation £0.63m / £0.89m / £1.15m. Additional physical security **£39.08m / £55.38m / £71.76m**. Contract change incl. 22% overheads £0.18m / £1.30m / £3.35m.

Provenance of the £70,281: IA p.101 — "the best estimate for the cost to MSPs is to take the cost per RDSP identified in the 2020 PIR (**£58,012**) through a survey of relevant organisations, and update this to 2025 prices (**£70,281**)." DSIT states it "were not able to update the cost per business of physical security cost updates during the 2022 PIR process because of low response rates from organisations surveyed." [flagged: the headline per-firm figure is an uprated 2020 survey number]

**Ongoing compliance (reporting) cost per firm per year** (IA p.103):
> "The average compliance cost per firm each year ranges from **£429 to £644, with £519 in 2025 prices, being the central scenario estimated.**"
DSIT's own caveat: "this analysis can be treated as potentially an over estimate as not all organisations in scope will need to incur this cost."

### Headline monetised totals

| Measure | Value | Where |
|---|---|---|
| Net present social value, best estimate | **-£1,201m** | Annex A, p.134 |
| — low / high | -£766m / -£1,740m | Annex A, p.134 |
| Net present social value, best estimate | **-£1,203m** | Regulatory scorecard §11, p.122 |
| — low / high | -£768m / -£1,741m | §11, p.122 |
| Business NPV, best estimate | **-£1,186m** | §11, p.123 |
| **EANDCB** | **£137.7m**, 2025 present value | §11, p.123 |

> **⚠️ ARITHMETIC FLAG.** Annex A says -£1,201m / -£766m / -£1,740m. The regulatory scorecard says -£1,203m / -£768m / -£1,741m. **A £2m discrepancy between two sections of the same document.** Per the 47% rule, do not quote a single NPSV figure without saying which section it came from. [CS: VERIFIED that both numbers appear; the discrepancy itself is unexplained]

Also note: search commentary claimed "less than £150 million per year." The IA's own EANDCB is £137.7m. Those are consistent but not identical claims — use **£137.7m EANDCB**, cited to §11 p.123.

### Sensitivity — this is the tell

IA Annex A, p.136, verbatim:
> "Further sensitivity analysis outlined in the Cost section showed that the overall NPSV is particular sensitive to the estimated cost of **annual additional cyber security spending for newly in scope firms**. Changing the per firm assumption by 20% would increase or decrease the NPSV and EANDCB by 15%."
> "To a lesser extent, the analysis is sensitive to the estimated incident reporting costs associated with the new reporting timeline. 20% changes to these costs would result in a 3% shift in the NPSV and EANDCB."

IA Annex A, p.135:
> "A significant cost of this Bill falls on RMSPs as they will now fall in scope of the regulations. DSIT commissioned bespoke research to estimate the number of RMSPs that will come into scope, reducing the risk associated with incorrectly estimating the cost to these entities."

### Benefits: explicitly not monetised

IA Annex A, p.135, verbatim:
> "There is a significant negative NPSV due to the lack of monetised benefits in the impact assessment, as justified throughout."
> "While compliance with the measures may incur a cost for businesses, it will bolster security and resilience, helping to reduce this estimated cost of cyber attacks. However, **it is not possible to estimate what proportion of this cost will be averted through these specific measures as it is not possible to estimate the number of avoided attacks.**"

### Context figures from the IA's strategic case (§2, p.5–6)

- "In the year preceding September 2025, NCSC managed **429 cyber incidents**, **204 of which were nationally significant**… This is a sharp increase from the **89** nationally significant incidents the previous year. Of these incidents, **18** were classified as 'highly significant' in nature, **marking a 50% increase** from the previous year." (cites *It's time to act — NCSC Annual Review 2025*)
- "Between 2015 – 2019, UK businesses lost approximately **£87 billion** when factoring in damaged assets, financial penalties, and lost productivity." (cites Beaming, 'Five Years in Cyber Security', 2020)
- "Last year, **43% of businesses reported having experienced some kind of cyber security breach or attack in the last 12 months.** This equates to approximately **612,000 UK businesses**." (cites Cyber Security Breaches Survey 2025)
- "In 2024, a ransomware attack on a key supplier to the NHS led to **over 11,000 postponed acute outpatient appointments** and elective procedures."
- "In the last 12 months, **only 49% of businesses have carried out activities to identify cyber risks**, despite **72% of businesses identifying cyber security as a high priority**; and **only 27% of businesses have Board level** [sentence continues onto p.7, not read]"

### Named trust signal — procurement

IA §10, p.122, verbatim:
> "**Compliance with the Bill's standards could serve as a trust signal to customers and investors.** Businesses that demonstrate resilience are more likely to retain clients and contracts, especially in business-to-business environments where cyber security is a major factor in procurement."
[CS: VERIFIED as the Government's stated expectation. Unevidenced in the IA — no supporting data cited at that point.]

### Next review

IA §12, p.126: "There is a statutory duty for the Secretary of State to carry out a review of the NIS Regulations in intervals not exceeding five years. **The next PIR of the NIS Regulations 2018 is currently due to take place in 2027.** DSIT is reviewing whether this timing is appropriate…"

Also §12, p.126 — DSIT names its own evidence gap, which is worth noting given Gate 1:
> "further evidence gaps have been identified that will need to be monitored going forward, including **the cost of compliance activities, how they vary by organisation (including for SMEs)** and the time spent by businesses familiarising themselves with the legislation."
