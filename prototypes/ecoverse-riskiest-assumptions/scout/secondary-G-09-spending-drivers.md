# G-09 — What drives security spending: US/Canada vs the EU 70%

**The comparison Beth wants:** ENISA has 70% of EU organisations naming compliance as their top security spending driver, and insurance last of nine at 5%. Is there a North American equivalent?

**The answer this pass produces: no like-for-like instrument exists.** Nothing found in the US or Canada asks mid-market organisations to rank *why* they spend on security in a way comparable to the ENISA question. That absence is the finding, and it means the EU figure currently has no North American counterpart to be compared against.

---

## 1. ⭐ Canada: spend magnitude and direction, ICP-matched — but not drivers

**Source read directly (PDF, pp.14–18):** https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf
CIRA / The Strategic Counsel, August 2025. n=505, orgs ≥50 employees, private sector ≤999 employees.

**Q2023-14C — "Have the financial resources your organization allocates to IT systems management and cybersecurity increased in the past 12 months?"** Base n=505.

| | Total 2025 | Private | Public | MUSH | 2023 | 2024 |
|---|---|---|---|---|---|---|
| Yes | **78%** | **80%** | 65% | 59% | 73 | 74 |
| No | 19% | 18% | 27% | 32% | 23 | 21 |

[CS: VERIFIED]

**Q2023-14D — "By approximately what percentage did the financial resources … increase?"** Base: Yes at 14C, n=394.

| | Total 2025 | Private | 2023 | 2024 |
|---|---|---|---|---|
| Less than 10% | 13% | 13% | 14 | 14 |
| **Between 10% and 25%** | **56%** | **59%** | 53 | 53 |
| Between 26% and 50% | 24% | 23% | 25 | 25 |
| More than 50% | 5% | 5% | 5 | 6 |

[CS: VERIFIED]

**Q2023-14E — "How is your organization's cybersecurity managed?"** (multi-select) Base: all, n=505.

| | Total 2025 | Private | 2024 |
|---|---|---|---|
| **Internally / on-site** | **61%** | **61%** | 52 |
| Outsourced cybersecurity services company (e.g. eSentire, Arctic Wolf) | 41% | 45% | 39 |
| Outsourced IT company | 32% | 33% | 38 |
| Outsourced integrator / consulting firm (e.g. CDW, Kyndryl) | 28% | 31% | 23 |
| None / not managed | 1% | 1% | 1 |

[CS: VERIFIED]

→ **In-house management rose from 52% to 61% in one year** in this size band, while outsourcing to an IT company fell from 38% to 32%. Directly relevant to Ecoverse's in-house-IT ICP versus N-able's MSP heritage. Note the categories are multi-select, so these are not shares of a whole.

**Q2023-14B — "What are the main reasons that human resources devoted to IT systems management and cybersecurity have not increased in the past 12 months?"** Base: No at 14A, n=113.

| | Total 2025 | Private |
|---|---|---|
| No need / have sufficient staff | 45% | 48% |
| **Lack of financial resources to hire more staff** | **37%** | 35% |
| Difficulty recruiting due to competition | 21% | 23% |
| Difficulty finding qualified candidates | 19% | 21% |
| Our organization outsources IT systems management and cybersecurity | 15% | 13% |

[CS: VERIFIED]

**Q2023-14F — main reason for outsourcing cybersecurity.** Base n=330: **cost-effectiveness 49%**, lack of internal knowledge/expertise 26%, lack of internal capacity 23%. [CS: VERIFIED]

**Other CIRA figures read directly, useful as problem framing rather than spending drivers:**
- **24%** were the victim of a successful ransomware attack in the last 12 months (private 27%); trend 17% (2021) → 28% (2024) → 24% (2025). Of those, **74%** had data exfiltrated and **74%** paid the ransom; **50%** of payers paid $50,000 or more (p.27–30)
- **42%** experienced a breach of customer and/or employee data last year, up from 29% in 2022 (p.39)
- **19%** of those impacted by attacks reported **fines from regulators or authorities** — up from 4% in 2018 (p.26). This is the closest thing in the Canadian data to a compliance-consequence signal
- **88%** have a cyber incident response plan, but only **46%** describe it as comprehensive (p.41)
- **50%** have changed cybersecurity approaches in response to news about major cyber attacks, up from 38% in 2023 (p.49)
- **75%** store personal information of customers, employees, suppliers, vendors or partners, up from 59% in 2018 (p.38)
- **41%** believe there are dormant threats on their network (p.44)
- **82%** say country of origin is more important than 12 months ago when selecting a cybersecurity vendor (p.21) — Canadian sovereignty pressure, relevant to a US-headquartered vendor

[CS: VERIFIED — all read directly from the report]

**What CIRA does NOT contain:** a question asking *why* organisations spend on security — no ranked list of drivers, no compliance-versus-threat comparison. [CS: MEDIUM — negative finding. I read pp.1–4, 14–21, 26–33, 36–41 and 44–51. **Pages 5–13, 22–25, 34–35, 42–43 and 52–68 were not read.** If a drivers question exists it would be in "Resources and Training" (pp.5–20) and I have read part of that section only. Someone should scan the unread pages before this negative is treated as settled.]

---

## 2. Statistics Canada — government survey, spend magnitude, no drivers

**Primary read directly:** https://www150.statcan.gc.ca/n1/daily-quotidien/241021/dq241021a-eng.htm — The Daily, "Impact of cybercrime on Canadian businesses, 2023," released **21 October 2024**.

Figures (2023 reference year):
- Spending on **prevention and detection: $11.0 billion**
- Spending on **recovery from incidents: $1.2 billion**, "doubling from approximately $600 million in 2021"
- Largest single cost: **employee salary related to prevention or detection, $3.8 billion**
- By size — prevention/detection: **large ~$4.8B · medium ~$3.6B · small ~$2.6B**
- By size — recovery: **large ~$500M · medium ~$300M · small ~$300M**
- **Size definitions: small 10–49 employees · medium 50–249 · large 250+**

[CS: HIGH — read directly]

**Note the size bands: "medium" is 50–249 employees, which straddles Beth's 100–299 ICP.** Medium-sized businesses account for roughly a third of Canadian prevention/detection spend on these figures.

**The release contains no data on patch management or software updates as a security measure, and no data on reasons for cyber security spending.** [CS: HIGH — checked directly, absence confirmed]

**Survey programme pages:**
- https://www.statcan.gc.ca/en/survey/business/5244 — Canadian Survey of Cyber Security and Cybercrime (CSCSC)
- https://www23.statcan.gc.ca/imdb/p2SV.pl?Function=getSurvey&SDDS=5244 — survey metadata
- https://www.statcan.gc.ca/en/statistical-programs/instrument/5244_Q1_V1 — **2025 cycle questionnaire**
- https://www.statcan.gc.ca/en/statistical-programs/instrument/5244_Q1_V4 — archived 2022 questionnaire
- https://www150.statcan.gc.ca/n1/pub/22-20-0001/222000012023001-eng.htm — "The changing landscape of cyber security following the COVID-19 pandemic"
- https://www150.statcan.gc.ca/n1/daily-quotidien/221018/dq221018b-eng.htm — 2021 reference year

**CSCSC 2025 cycle: collection reported as January–March 2026; no results published.** Do not quote 2025-cycle figures from any source. [CS: LOW — outside training window]

**CSCSC 2021: "protecting personal information was the most common reason businesses gave for spending time or money on cyber security, with two-thirds (66%) selecting that response."** [CS: LOW — reached me via a search summary; **the source page was never fetched**, and the figure is five years old from a cycle superseded twice. This is the closest Canadian analogue to the ENISA drivers question that exists, and it is not verified. Worth chasing: if the CSCSC asks a drivers question, it is a free government survey with a huge sample and it would be the right instrument to set against ENISA's 70%.]

---

## 3. United States — nothing comparable found

**What I looked for:** a US survey ranking security spending drivers for companies of roughly 100–299 employees.

**What I found: no such instrument.** [CS: UNKNOWN]

Candidates identified and their status:

| Source | URL | Status |
|---|---|---|
| **CompTIA, State of Cybersecurity 2025** | https://www.comptia.org/en-us/resources/research/state-of-cybersecurity/ · https://connect.comptia.org/content/research/cybersecurity-trends-research | Exists. CompTIA is an industry association, not a patching vendor — **the best-positioned candidate found.** Only figures retrieved: 81% rate cybersecurity a high priority; 68% rate their organisation highly capable. **No compliance-driver percentage retrieved. Not fetched.** [CS: LOW] |
| CompTIA research index | https://www.comptia.org/en-us/resources/research/ | Not fetched |
| CompTIA press releases | https://www.prnewswire.com/news-releases/key-shifts-in-cybersecurity-trends-examined-in-new-comptia-report-302583128.html | Not fetched |
| **WEF, Global Cybersecurity Outlook 2026** | https://www.weforum.org/publications/global-cybersecurity-outlook-2026/ | **HTTP 403.** Reported figure: "74% of security leaders hold a positive view of the effectiveness of cyber-related regulations." ⛔ **Do not cite** — reached me only via third-party summary. Also global and leader-level, not US mid-market. [CS: LOW] |
| Cyber Security Tribe, 2026 Annual State of the Industry Report | https://www.kiteworks.com/cybersecurity-risk-management/compliance-drives-security-strategy-2026/ | The only access found is a Kiteworks write-up. [VENDOR-SPONSORED: Kiteworks sells secure data exchange.] The claim — "regulatory pressure is no longer influencing security strategy. It is driving it." — is exactly what the Ecoverse doc would like to be true, which is a reason to be more careful with it, not less. Original report not located. [CS: LOW] |

**Aggregator / stat-farm pages seen and deliberately not used** — these republish figures without method and citing them would launder provenance: app.stationx.net · vikingcloud.com/blog/cybersecurity-statistics · cybersecurityventures.com · elisity.com · compunnel.com · madeinca.ca · truvocyber.com · discreetinvestigations.ca · axis-intelligence.com · cnicsolutions.com · nikolaroza.com · heimdalsecurity.com · sentinelone.com/cybersecurity-101 · northstarit.ca · statista.com. Several of these are also [VENDOR-SPONSORED].

---

## 4. The EU anchor — flagged, not re-verified

The existing Ecoverse doc carries **ENISA: 70% of EU organisations name compliance their top security spending driver; insurance last of nine at 5%.**

**I did not re-verify this figure in this pass.** It is carried here only so the comparison is visible. Before it anchors any US/Canada contrast, note:
- Nothing methodologically comparable was found in the US or Canada. [CS: HIGH — negative finding]
- The closest Canadian candidate is the unverified CSCSC 2021 "66% protecting personal information" figure — which is a *different question* (what are you protecting) than ENISA's (what drives your spend).
- **Setting the EU 70% against any North American number found in this pass would be comparing incommensurable instruments.** Naming that is more useful than manufacturing a comparison.

---

## 5. Terminal unknowns in this theme

| Question | Status |
|---|---|
| US survey ranking security spending drivers, mid-market | **Not found.** [CS: UNKNOWN] |
| Whether the StatCan CSCSC asks a spending-drivers question | Not established — the 2025 and 2022 questionnaires are public and unread. **Cheap, high-value next step.** [CS: UNKNOWN] |
| CompTIA's compliance-driver figure, if any | Report not fetched. [CS: UNKNOWN] |
| Whether insurance appears as a spending driver in any NA survey, for comparison with the EU's 5% | **Not found.** [CS: UNKNOWN] |
| Patch-management adoption rate among US/Canadian companies of 100–299 employees | **Not found in any source in this pass.** [CS: UNKNOWN] |
