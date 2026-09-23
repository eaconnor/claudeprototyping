# The problem, and the size of the opportunity
## Sourced, linked, and honest about which half is missing

**Elizabeth Connor · 23 September 2026**

Two questions: what problem do we think we are solving, and how big is the opportunity. They have very different answers.

**The problem is well evidenced.** Government statistics, an EU agency survey with a disclosed sample, and four of our own interviews all point the same way, and the numbers are public and citable.

**The market size is not.** Six publishers put the same market in the same year anywhere between $7.04B and $17.15B. Gartner's and IDC's figures are paywalled. There is no published endpoints-per-organisation benchmark, no published endpoint-management spend-per-device figure, and no willingness-to-pay study for this category anywhere. A top-down TAM number for this deck would be a number we chose, not a number we found.

What follows is therefore the problem with sources, and a bottom-up sizing model with the sourced cells filled and the two empty cells named. Both empty cells can be filled from N-able's own data, and one of them is already Assumption 9's cheapest test.

---

## PART 1 — The problem, with sources

### 1.1 Small IT teams are carrying enterprise-grade obligations

| Claim | Figure | Source | Confidence |
|---|---|---|---|
| Only a third of UK businesses have a policy to patch within 14 days | **34%** of businesses, 20% of charities | [DSIT Cyber Security Breaches Survey 2025/2026](https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026), published 30 Apr 2026, n=2,112 businesses | `[CS: VERIFIED]` UK government official statistics |
| Breach rate rises sharply with size | micro **42%** → small 46% → **medium 65%** → large 69% | Same | `[CS: VERIFIED]` |
| Micro businesses increasingly rely on external providers | **39% → 44%** year on year | Same | `[CS: VERIFIED]` |
| Cyber Essentials certification is still rare but growing | **5%** of businesses hold it, up from 3%; large businesses 35% (up from 21%) | Same | `[CS: VERIFIED]` |
| Patching is the single hardest NIS2 requirement to meet | **50%** name it hardest; **28%** take more than 3 months to patch critical vulnerabilities, rising to **51% for SMEs** | [ENISA NIS Investments 2025](https://www.enisa.europa.eu/publications/nis-investments-2025) — [main report PDF](https://www.enisa.europa.eu/sites/default/files/2026-02/NIS%20Investments%202025%20-%20Main%20report.pdf), n=1,080 | `[CS: HIGH]` EU agency, sample disclosed |
| Intune users are satisfied and still doing heavy manual work | **81%** satisfied, yet **65%** spend 6–15 hrs/week on manual packaging, patching, troubleshooting and reporting | [State of Intune 2026](https://www.prnewswire.com/news-releases/state-of-intune-survey-finds-it-teams-struggle-with-application-lifecycle-management-and-hybrid-complexity-302835831.html), n=890, fielded Apr 2026 | `[CS: HIGH]` ⚠️ **sponsored by Recast Software, which sells Intune add-ons — name the sponsor whenever you cite it** |
| Named gaps in the Microsoft stack | app packaging **37%**, third-party patching **33%** | Same | `[CS: HIGH]`, same caveat |
| Coexistence is the norm, not replacement | **62%** run Intune *and* Configuration Manager; only **15%** are fully Intune; **55%** of ConfigMgr users have no retirement plan or timeline | Same, corroborated independently by [Redmond Channel Partner, 7 Aug 2026](https://rcpmag.com/articles/2026/08/07/microsoft-intune-adoption-grows.aspx) | `[CS: HIGH]` — trade press corroboration is independent of the sponsor |

**Read the coexistence row carefully.** It measures Intune alongside *Microsoft's own* legacy product. No located survey measures Intune running alongside a *third-party* endpoint tool. That is a real gap under Assumption 2, and it is the difference between "coexistence is normal" and "coexistence with us is normal."

### 1.2 Compliance is the spend driver, and it has dates on it

| Claim | Detail | Source | Confidence |
|---|---|---|---|
| Compliance is the #1 cybersecurity investment driver | **70%** — ahead of every other driver. Insurance ranks **last of nine at 5%** | [ENISA NIS Investments 2025](https://www.enisa.europa.eu/publications/nis-investments-2025) | `[CS: HIGH]` |
| The UK 14-day patching rule, verbatim | critical/high-risk updates, or CVSS v3 ≥ 7, must "be updated, including vulnerability fixes, within 14 days of release" | [NCSC Cyber Essentials Requirements for IT Infrastructure v3.2](https://www.ncsc.gov.uk/files/cyber-essentials-requirements-for-it-infrastructure-v3-2.pdf) (PDF), in force from 28 Apr 2025 | `[CS: VERIFIED]` read in full |
| EU law sets no day count | CIR (EU) 2024/2690 Annex 6.6.1(a) requires patches "within a **reasonable time**" — no number anywhere in EU law | [EUR-Lex, CIR (EU) 2024/2690](https://eur-lex.europa.eu/eli/reg_impl/2024/2690/oj/eng) | `[CS: VERIFIED]` |
| EU law does require a full inventory | Annex 12.4: a "complete, accurate, up-to-date and consistent inventory" | Same | `[CS: VERIFIED]` — this is the clearest regulatory hook for endpoint intelligence |
| The CIR binds MSPs and MSSPs directly | Managed service providers and managed security service providers are in scope | Same; see also [NIS2 transposition status](https://digital-strategy.ec.europa.eu/en/policies/nis-transposition) | `[CS: VERIFIED]` |
| UK MSPs are being brought into statutory scope | Cyber Security and Resilience Bill — per-MSP cost estimates published (internal £64,460, external £28,175 central) | [DSIT factsheet — relevant managed service providers](https://www.gov.uk/government/publications/cyber-security-and-resilience-network-and-information-systems-bill-factsheets/relevant-managed-service-providers) · [Impact assessment PDF](https://assets.publishing.service.gov.uk/media/690cafd3d4c5f31272d3e6b2/cyber_security_and_resilience_bill_impact_assessment.pdf) | `[CS: VERIFIED]` ⚠️ **commencement date UNDATED** |
| Insurance as a forcing function — contested | DSIT/Grant Thornton: **65%** of insured SMEs had to meet security requirements; **50% of those spent £5k–£25k** doing so. This contradicts ENISA's 5%. | [Insuring Resilience: the state of SME cyber insurance](https://assets.publishing.service.gov.uk/media/6891e704f15b237bf6610956/Insuring_Resilience_-_The_state_of_SME_cyber_insurance.pdf) (PDF), n=104 | `[CS: MEDIUM]` — small sample, and it disagrees with ENISA. **Name the disagreement rather than picking the flattering one.** |

**The one thing missing from the compliance story, and it matters:** no deadline-indexed purchasing time series exists. Nobody publishes what organisations *buy* in the months around a compliance deadline. We can prove the pressure and we cannot prove the purchase. That is precisely the shape of evidence Assumption 2 needs, and it does not exist publicly.

### 1.3 What our own interviews add

From `MSP Market Segments Research Request 1.docx` (Brian Mackie, mod 16 Sep 2026). ⚠️ Participant data — for this research purpose only, not for external copy or seed data.

- **Paul Killins:** *"IT Pros are not looking for more capability. They are looking for less effort."* Profile: 100–1000 endpoints, sweet spot ~150, often only 2–6 IT staff, homogeneous fleets. On AI packaging — bad: "create your own AI workflow"; good: "enable AI patch remediation," on/off.
- **Hauke VonJuergensonn:** *"IT departments typically buy one problem at a time, not an entire platform… They are replacing a screwdriver, not shopping for a workshop."* ~1,000–1,500 devices, 1–4 IT staff. Compliance is the primary trigger via NIS2 and BSI guidance. DACH data sovereignty: on-premises, local control, customer-controlled encryption.
- **Tarik Hafid:** named Cyber Essentials, Cyber Essentials Plus, EDR and cyber-insurance requirements unprompted. ManageEngine "very convoluted and spread across multiple consoles"; NinjaOne "easier to use and way more shiny." On AI, the conclusion the doc itself draws: *"the differentiation is probably not: More AI. It is: Trusted AI or Governed AI."* Also: *"IT Pro environments are often much more standardised than MSP environments."*
- **Connor Herman:** policy hierarchy and inheritance, agentless automation for network infrastructure, asset intelligence extending to printers, switches, routers and access points. And: **internal IT buyers dislike MSP-oriented positioning** — names like "MSP Manager" discourage IT departments.

### 1.4 The problem statement these sources actually support

> Small, generalist IT teams — two to six people running a few hundred to around fifteen hundred standardised endpoints — are being held to security and compliance obligations written for organisations with specialists, and they are meeting them with several disconnected tools and manual reconciliation. The obligations have dates. The teams do not have headcount.

Every clause traces to a source above. Note what it does **not** claim: it does not claim they want a platform, and it does not claim connecting categories is what fixes it. Both of those are Assumption 1, and neither is evidenced.

---

## PART 2 — Market size

### 2.1 Why the top-down number is not usable

Published UEM market size, same market, same year, six publishers:

| Publisher | 2025 | 2026 | CAGR |
|---|---|---|---|
| [The Business Research Company](https://www.thebusinessresearchcompany.com/report/unified-endpoint-management-global-market-report) | $17.15B | $22.75B | 32.7% |
| [Mordor Intelligence](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) | ~$8.2B | ~$10.0B | 15.0% |
| [Verified Market Research](https://www.verifiedmarketresearch.com/product/global-unified-endpoint-management-market-size-and-forecast/) | — | $12.8B | 10.6% |
| [Fortune Business Insights](https://www.fortunebusinessinsights.com/unified-endpoint-management-market-105920) | $7.64B | $9.40B | 23.0% |
| [Market Research Future](https://www.marketresearchfuture.com/reports/unified-endpoint-management-market-6419) | $7.04B | $8.85B | 25.74% |
| (sixth, unattributed on its public page) | $8.48B | $10.49B | 23.70% |

**A 2.4× spread on size and a 3.1× spread on growth.** Most of these publishers disclose no methodology, no segment definition, and no statement of whether "UEM" includes MDM, client management or endpoint security. They are not independent measurements — report publishers routinely re-base off each other and off secondary citations of Gartner and IDC.

**One exception, and it is the useful one.** Mordor Intelligence does describe its method on the public page: primary interviews with endpoint security architects, procurement leads and channel partners across NA/EU/APAC; desk research against NIST, ENISA and CSA material; and a top-down sizing model built from **"active workforce counts, average devices per employee, and BYOD penetration, which are then multiplied by prevailing subscription ASPs,"** validated by "variance checks against independent device shipment tallies and disclosed vendor revenue." Mordor's figure ($8.2B) also sits mid-range rather than at either extreme.

That method is the same bottom-up model as §2.2 below — which means **Mordor holds a figure for cell (B), average devices per employee.** That makes it a targeted purchase rather than a generic one. Price is not published; the page offers "Check Report Pricing." `[CS: MEDIUM]` — method is disclosed, but the underlying sample size is not.

`[CS: LOW]` on every individual figure. `[CS: VERIFIED]` that they disagree this much.

**Gartner and IDC are paywalled.** [Gartner MQ for Endpoint Management Tools](https://www.gartner.com/en/documents/7320430) · [Forrester Wave: Endpoint Management Platforms Q2 2026](https://www.forrester.com/report/the-forrester-wave-tm-endpoint-management-platforms-q2-2026/RES195001) · [IDC device vulnerability forecast](https://my.idc.com/getdoc.jsp?containerId=US52279925). Titles public, bodies gated. We do not have a seat.

**The honest finding is the spread itself:** "UEM" is not a stable market definition. Different houses draw the boundary in different places. If our TAM rests on one of these numbers, the number is contestable in the room — and a Microsoft partner in that room will contest it.

### 2.2 The bottom-up model — three cells sourced, two empty

Annual recurring revenue for the entry wedge =

**(A)** organisations in the ICP band  ×  **(B)** endpoints per organisation  ×  **(C)** price per endpoint per month  ×  12  ×  **(D)** realistic share

| Cell | Status | What we have |
|---|---|---|
| **(A)** Organisations in the ICP band | ⬜ **EMPTY — but publicly fillable** | Requires a business-population count for the band. The UK figure is free and official (DBT *Business Population Estimates*), and the EU equivalent is in Eurostat. **`[CS: UNKNOWN]` — I have not read either, so no figure is asserted here.** This is a half-day desk task, not research. |
| **(B)** Endpoints per organisation | ⬜ **EMPTY — but purchasable, and better still, internal** | No *freely available* benchmark exists. Avasant/Computer Economics [IT Staffing Ratios](https://www.computereconomics.com/it-staffing-ratios/) was fetched and confirmed paywalled with **zero figures disclosed publicly**; every free-web figure traces back to it via an SEO aggregator, and the aggregators contradict each other by 2×. **Two routes in:** [Mordor](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) publishes an "average devices per employee" input as part of its disclosed method (price quote-gated), and **N-able has the real figure in its own install base** — which is better, because it is our customers rather than a global average. |
| **(C)** Price per endpoint per month | ✅ **SOURCED — a defensible band** | See table below. **$1.00 – $3.75** per endpoint per month across five named competitors with published prices. |
| **(D)** Realistic share | ⬜ Judgement, not data | Needs (A) and (B) before it means anything. |

**Do not multiply the price table into a spend-per-device benchmark.** The scout flagged this explicitly: averaging published list prices manufactures a benchmark that does not exist. The band is a pricing anchor, not a market measurement.

### 2.3 What price per endpoint actually is — the one cell with real data

| Vendor | Published price | Source | Confidence |
|---|---|---|---|
| **Flamingo** | $1.00/device/month (Gen1), $0.80 annual; Gen2 $3 (Q4 2026); Gen3 $5 | Flamingo.run pricing page | `[CS: HIGH]` vendor-published; 298 customers |
| **Automox** | $1.00 Patch OS | [automox.com/pricing](https://www.automox.com/pricing) | `[CS: VERIFIED]` fetched |
| **Action1** | **Free forever to 200 endpoints**, production use, no feature limits | [Action1 free-tier announcement](https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/) · [pricing](https://www.action1.com/pricing/) (403 to automated fetch) | `[CS: HIGH]` |
| **ManageEngine Endpoint Central** | derived **~$0.94 – $1.74** per endpoint/month from the published list | [manageengine.com pricing](https://www.manageengine.com/products/desktop-central/pricing.html) | `[CS: MEDIUM]` derived, not stated |
| **NinjaOne** | $1.50 (at 10,000 endpoints) to $3.75 (at ≤50) | Vendor/reseller published tiers | `[CS: MEDIUM]` |
| **Microsoft Intune** | Plan 1 **$8/user/mo**; Suite $10 standalone — **but** Suite capabilities moved into M365 E3/E5 on **1 July 2026 at +$3/user/month** | [Microsoft Intune pricing](https://www.microsoft.com/en-us/security/microsoft-intune-pricing) · [M365 packaging & pricing updates](https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates) · [FAQ](https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates-faq) | `[CS: VERIFIED]` read directly |
| **Rapid7 · ConnectWise · Kaseya · Ivanti** | publish nothing | [ConnectWise "request pricing"](https://www.connectwise.com/platform/rmm/request-pricing) · [Kaseya request form](https://www.kaseya.com/request/pricing-kaseya-365-endpoint/) | `[CS: VERIFIED]` — verified absence |

**The decisive line in this table is not a price.** It is that Intune arrives at **$0 marginal cost** inside a bundle the customer already bought for email and Office, and that on 1 July 2026 the $0 envelope *expanded* to include capabilities that previously cost $10/user/month. We are not priced against $8. We are priced against zero incremental.

**And the counterweight, which is also real:** [G2 Digital Markets, State of Software Buying 2026](https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf) (PDF, n=3,385) finds **pricing ranks last of five shortlisting factors at 47%**, while **security details ranks first at 58%**, and security/compliance gaps eliminate **55%** of shortlisted vendors. Also: **74%** of successful AI adopters describe themselves as "balanced" on AI, while disappointed buyers are **2× more likely** to have been aggressive. Median time to prove ROI: **8.75 months**.

That last cluster is the most directly useful market data in this entire document, and it argues against leading with either price or AI.

### 2.4 The adjacent figures that are real, for context only

- **N-able FY2025:** ARR **$540M, +12%**. [Form 10-K, SEC EDGAR](https://www.sec.gov/Archives/edgar/data/1834488/000183448826000007/nabl-20251231.htm). The 10-K names Unified Endpoint Management as one of three solution vectors and states co-managed IT adoption as a market-expansion thesis. `[CS: MEDIUM]` — figures via transcript summary; **open the filing and grep before quoting.**
- **Action1:** ~$12.7M ARR, +76% YoY, 5,000+ customers, 10M+ managed endpoints, 98% retention. `[CS: MEDIUM]` — the **growth figures** are from Action1's own press release (PRNewswire, 16 Jul 2026) and are attributable; the **$12.7M ARR is a GetLatka/Tracxn estimate**, and the deck's own appendix says "estimated." The front slides assert it flat. Fix that.
- **Security spending envelope:** Gartner ~$213B in 2025 rising to ~$249B in 2026; IDC $308B in 2026. The two houses differ by ~$60B because they define the market differently. Useful as context, useless as a denominator.
- **Vulnerability management market:** ~$14.94B (2024) → $24.08B (2030), ~8% CAGR — `[CS: LOW]`, paywalled-summary quality. Notably *slower* than every published UEM CAGR.

### 2.5 ⛔ Do not cite — the seductive ones

These circulate widely, say exactly what Ecoverse would like said, and none of them trace to a named study with a sample size:

- "Intune manages 200+ million devices." No primary source exists. The last Microsoft-attributable figure is **175M** for ConfigMgr+Intune combined, from **June 2019**.
- "49% of organisations struggle with too many overlapping tools" · "41% fewer false positives with 2–3 unified tools" · "40% reduction in endpoint security incidents from UEM" · "enterprises manage an average of 11 different endpoint types." All SEO content farms. No publishers, no methodology.
- "81% of buyers had decided on a preferred vendor before first contact with sales" · "95% of winners are on the day-one shortlist." Stat-roundup pages, no underlying study.
- "75% of organisations are pursuing security vendor consolidation." This one is *real* but it is **one Gartner survey, n=418, fielded March–April 2022**, about *security* vendors, measuring *intent* not outcome — and the figure was **unchanged** in 2023. It underpins nearly every consolidation argument in this market. Expect it quoted at you as current fact.

### 2.6 Can we just buy a report?

Yes, but in this order, and most of it is free.

**1 · Internal first — £0.** Slide 12 already says "Canalys figures reused internally" and its source trail cites internal Gartner-derived framing. Someone at N-able holds these subscriptions. Find who owns analyst relations before spending anything.

**2 · Free vendor reprints — £0.** The **2026 Gartner Magic Quadrant for Endpoint Management Tools** (published 5 Jan 2026) is available as a free, email-gated reprint from [NinjaOne](https://www.ninjaone.com/resource/gartner-magic-quadrant-2026-mq/), [Tanium](https://www.tanium.com/resources/gartner-magic-quadrant-endpoint-management-tools-2026), [ManageEngine](https://www.manageengine.com/news/endpoint-management-gartner-magic-quadrant-2026.html) and [Tech Monitor](https://www.techmonitor.ai/whitepapers/gartner-magic-quadrant-for-endpoint-management-tools-2026). Reprints are the intended distribution channel and carry the full evaluation text. Same likely applies to the [Forrester Wave Q2 2026](https://www.forrester.com/report/the-forrester-wave-tm-endpoint-management-platforms-q2-2026/RES195001) via [Microsoft's blog](https://www.microsoft.com/en-us/security/blog/2026/06/25/microsoft-a-leader-in-the-forrester-wave-for-endpoint-management-platforms/).

⚠️ **Know this before opening the reprint: NinjaOne is named a Leader in the 2026 MQ.** N-able's own 10-K language is "recognised in." Those are different words and the reprint shows the distance.

**3 · One targeted purchase, if any — quote-gated.** Mordor, for the "average devices per employee" input only. See §2.1. Judge it against the internal cross-tab first, which is free and more relevant.

**4 · Do not buy the rest.** MRFR publishes neither price nor methodology on its page. Paying for a number with no disclosed method buys the number the room will contest.

**5 · Not for sale at any price.** Willingness to pay for this specific proposition. No report covers it — §2.2 cell (D) and Assumption 5 both need primary research.

---

## What this means for the doc

**The problem section can be written now.** It is better evidenced than anything else in the strategy, it uses government and EU-agency sources rather than vendor material, and it supports a claim about *obligation without headcount* rather than a claim about platforms.

**The market-size section cannot be written as a number, and should not be faked.** What it can say is precise: the public top-down range is $7.04B–$17.15B with no disclosed method, the price band is $1.00–$3.75 per endpoint per month against a Microsoft baseline of zero incremental, and the sizing is blocked on exactly two multiplicands — organisation count in the band, and endpoints per organisation.

**Both blockers are cheap to clear, and one of them is already on the list.** Assumption 9's cheapest test is "cross-tab FTE against endpoint count in our own install base." That single query resolves the ICP-unit question *and* fills cell (B) *and* tells us whether the deck's 100–299 FTE band and its "<1,000 endpoints" band describe the same companies. Cell (A) is a half-day with free official statistics.

So the ask into the room is not "we need market research." It is: **two numbers, one internal query and one desk task, and the sizing model is live.** That is a much better position than a TAM slide nobody can defend.

---

## Sources

Everything above traces to the eighteen scout dossiers in `prototypes/ecoverse-riskiest-assumptions/scout/`, each carrying its own claim→source table and do-not-cite tier:

- `secondary-A-market-structure-intune.md` + `secondary-A-claim-source-table.md` — market sizing, Intune coexistence, the consolidation evidence base
- `secondary-C-pricing-wtp.md` — pricing, bundling, the G2 buying study, and the confirmed paywalls
- `secondary-D-compliance-drivers.md` + `01`–`08` — Cyber Essentials v3.2, NIS2/CIR 2024/2690, CRA, the UK CSR Bill, ENISA, cyber insurance
- `secondary-B-01` … `04` — NinjaOne, Action1, governed action, Intune-gap specialists, N-able's own published surface
- `secondary-E-governed-ai-trust.md` — the automation-reliance and trust literature
