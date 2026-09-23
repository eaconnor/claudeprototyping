# Secondary Market Signal — Dimension A: Market Structure & Microsoft Intune Displacement vs. Coexistence

**Scout run:** 2026-09-23
**For:** Pure Ecoverse riskiest-assumptions crosswalk
**Assumptions under test:**
- A1 — "Connecting endpoint categories surfaces real, unrealized value" (vs. buyers entering one problem at a time)
- A2 — "Microsoft-centric estates may favour coexistence or an integrated add-on rather than a UEM replacement"

**Scope rule applied:** public, published-for-use sources only. No logins, no gated report bodies. Where a landing page is gated, the gating is named and only the public-page figures are used.

**No synthesis in this file.** Ingredients only.

---

## ⭐ START HERE — the five sources carrying the most weight

| # | Source | Why it carries weight | Independence |
|---|---|---|---|
| 1 | Recast Software *State of Intune 2026* | Only located survey that directly measures Intune coexistence, n=890, fielded Apr 2026 | **Vendor-sponsored** (sells Intune add-ons) |
| 2 | Microsoft Intune pricing page | Primary, current, authoritative on bundling economics | **Vendor** (Microsoft = subject) |
| 3 | Microsoft Learn — third-party device compliance partners | Microsoft *documents coexistence as a GA architecture*, names 18 partners | **Vendor** (Microsoft) |
| 4 | DSIT Cyber Security Breaches Survey 2025/2026 | UK government official statistics, n=2,112 businesses, patching-specific | **Independent (government)** |
| 5 | Gartner 2022 vendor-consolidation survey | The origin of almost every "consolidation" claim in the market | **Independent analyst — but PRE-2024, STALE** |

---

## 1. MARKET SIZING AND GROWTH — UEM / RMM / ENDPOINT & PATCH / VULNERABILITY MANAGEMENT

### 1a. UEM market size — the spread IS the finding

[CS: VERIFIED] — that the following published 2025/2026 UEM market-size figures exist and disagree wildly. [CS: FABRICATION RISK] — for treating any one of them as *the* number.

Publicly quoted 2025→2026 UEM market size and CAGR, by publisher:

| Publisher | 2025 | 2026 | CAGR claimed |
|---|---|---|---|
| The Business Research Company | $17.15B | $22.75B | 32.7% |
| (report-mill, unattributed in snippet) | $7.50B | $8.99B | 21.39% |
| (report-mill, unattributed in snippet) | $7.64B | $9.40B | 23.0% |
| (report-mill, unattributed in snippet) | $8.48B | $10.49B | 23.70% |
| (report-mill, unattributed in snippet) | $7.04B | $8.85B | 25.74% |
| Mordor Intelligence (approx.) | $8.2B | $10.0B | 15.0% |
| Verified Market Research | — | $12.8B | 10.6% (2026–2033) |

- Range for the *same year*: **$7.04B – $17.15B** (2.4x spread). CAGR range: **10.6% – 32.7%** (3.1x spread).
- [CS: LOW] on every individual figure. All are from subscription report publishers; methodology, segment definition, and whether "UEM" includes MDM/EMM/client management/endpoint security are **not disclosed on the public pages**.
- [WOBBLY] — These are not independent measurements. Report mills routinely re-base off each other and off Gartner/IDC secondary citation.
- **[THE ACTIONABLE INGREDIENT]** — the 2.4x spread is itself evidence that *"UEM" is not a stable market definition*. Different houses draw the boundary in different places. If Ecoverse's pitch depends on a TAM number, the number will be contestable in the room.

Sources:
- https://www.thebusinessresearchcompany.com/report/unified-endpoint-management-global-market-report
- https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market
- https://www.verifiedmarketresearch.com/product/global-unified-endpoint-management-market-size-and-forecast/
- https://www.fortunebusinessinsights.com/unified-endpoint-management-market-105920
- https://www.marketresearchfuture.com/reports/unified-endpoint-management-market-6419

### 1b. No accessible primary UEM sizing from Gartner or IDC

[CS: VERIFIED] — Gartner and IDC UEM/endpoint-management market documents exist but are paywalled; I did not access them.
- Gartner *Magic Quadrant for Endpoint Management Tools* — https://www.gartner.com/en/documents/7320430 and https://www.gartner.com/en/documents/7298830 (titles public, bodies gated)
- IDC *Worldwide Device Vulnerability/Exposure Management Forecast, 2025–2029* — https://my.idc.com/getdoc.jsp?containerId=US52279925 (title public, body gated)
- [CS: UNKNOWN] — Gartner's and IDC's actual UEM segment size and CAGR. **This is a named gap, not a low-confidence estimate.** Resolving it requires a Gartner/IDC seat or a licensed vendor reprint.

### 1c. Analyst segment naming has moved — "UEM" → "Endpoint Management Tools"

[CS: HIGH] — Gartner retitled the category. Evidence: the 2022 MQ is *"Magic Quadrant for Unified Endpoint Management Tools"* (https://www.gartner.com/en/documents/4017175); the 2026 MQ is *"Magic Quadrant for Endpoint Management Tools"* (https://www.gartner.com/en/documents/7320430). Vendor press releases confirm the 2026 title.
- ManageEngine named a **Challenger** in the *2026 Gartner MQ for Endpoint Management Tools* — https://www.manageengine.com/news/endpoint-management-gartner-magic-quadrant-2026.html [CS: HIGH — vendor-published claim about an independent report]
- Tanium named a **Leader** in the same MQ — https://www.tanium.com/resources/gartner-magic-quadrant-endpoint-management-tools-2026 [CS: HIGH — vendor-published]
- Publication: January 2026 [CS: MEDIUM — from search summary, not confirmed against the Gartner document itself]
- [STATISTICALLY CENTRAL] — "the category is converging" is the default read here. Note the dissent in §1d.

### 1d. Forrester defines the same space differently — "Endpoint Management Platforms"

[CS: HIGH] — *The Forrester Wave™: Endpoint Management Platforms, Q2 2026*, published June 2026. Eight vendors, thirty-four criteria. Microsoft and Tanium named Leaders; ManageEngine a Strong Performer.
- Forrester report page: https://www.forrester.com/report/the-forrester-wave-tm-endpoint-management-platforms-q2-2026/RES195001 (title public, body gated)
- Microsoft Security Blog, 25 Jun 2026, author Jason Roszak (VP Product Management, Enterprise Management & Security): https://www.microsoft.com/en-us/security/blog/2026/06/25/microsoft-a-leader-in-the-forrester-wave-for-endpoint-management-platforms/ [vendor-published]
- ManageEngine's post: https://www.manageengine.com/products/desktop-central/blog/manageengine-named-a-strong-performer-in-the-forrester-wave-endpoint-management-platforms-q2-2026.html [vendor-published]
- [CS: MEDIUM] — Reported evaluation axes include "real-time intelligence, agentic AI, just-in-time access, and the ability to unify IT and security operations on a single platform." Sourced from search summary of vendor reprint pages, **not** verified against the Forrester document.
- **[INGREDIENT FOR A1]** — Forrester's stated criterion "ability to unify IT and security operations on a single platform" is the closest thing found to an *independent analyst house asserting that connecting categories is the axis of competition*. It is a criterion, not evidence of realised buyer value.

### 1e. RMM / MSP software market

[CS: LOW — attribution chain broken] Canalys figures, as reported by ChannelE2E:
- "The top five RMM/PSA companies — ConnectWise, Kaseya, N-able, NinjaOne, and Atera — represent over two-thirds of the overall $388 million software market for MSPs."
- "The combined PSA and RMM markets grew by 14% year-over-year."
- Canalys forecast: managed services industry $548B (2024) → $608B (2025).
- Source: https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys
- **⚠️ FETCH FAILED — HTTP 403.** These figures come from a search-engine summary of that article, **not** from reading it. The $388M figure is almost certainly a *quarterly* number, not annual, but I could not confirm the period, the geography, or the publication date. **DO NOT QUOTE without opening the article.**
- [WOBBLY] — single analyst house (Canalys), reported through one trade outlet, period ambiguous.

[CS: LOW] Report-mill RMM figures, for the spread only:
- RMM software market $2.79B (2025) → $7.25B (2034), 11.2% CAGR — https://www.businessresearchinsights.com/market-reports/remote-monitoring-management-rmm-software-market-121490
- MSP software market $341.31M (2025) → $863.36M (2033), 12.3% CAGR — https://www.congruencemarketinsights.com/report/msp-software-market
- **Note the incoherence:** one publisher puts "RMM software" at $2.79B while another puts "MSP software" at $0.34B, and Canalys reportedly puts "software market for MSPs" at $388M. These cannot all be measuring the same thing. [CS: VERIFIED] that they disagree.
- Omdia MSP trends 2025 executive summary (free blog): https://omdia.tech.informa.com/blogs/2025/jan/msp-trends-and-predictions-2025---executive-summary [CS: UNKNOWN — not fetched]

### 1f. Vulnerability management market

[CS: LOW — paywalled original] Vulnerability management market $14.94B (2024) → $24.08B (2030), ~8% CAGR 2025–2030.
- Source: Research and Markets, https://www.researchandmarkets.com/report/vulnerability-management — **report body is paywalled; the figure appears only in the public landing-page summary.** Original methodology unverifiable.
- *Vulnerability Management Market: 2026 Edition* press release: https://www.globenewswire.com/news-release/2026/02/18/3239957/0/en/Vulnerability-Management-Market-2026-Edition.html [CS: LOW — press-release summary of a paywalled report]
- [CS: VERIFIED] The ~8% CAGR for vulnerability management is **markedly lower** than every published UEM CAGR (10.6%–32.7%). If both are believed, VM is the slower-growing adjacent category. Both figures are weak, so the comparison is directional at best.

### 1g. Security spending envelope (context, not segment)

- **Gartner (independent):** Worldwide end-user spending on information security to total **$213 billion in 2025**. Press release 29 Jul 2025: https://www.gartner.com/en/newsroom/press-releases/2025-07-29-gartner-forecasts-worldwide-end-user-spending-on-information-security-to-total-213-billion-us-dollars-in-2025 [CS: HIGH — Gartner newsroom; **note: gartner.com/newsroom returns HTTP 403 to automated fetch, so this was not read directly**]
- Gartner 2026: ~**$240B** (+12.5%) per an earlier forecast, revised to **$248.9B** (+12.7% constant currency) in the 2Q26 update. [CS: MEDIUM — figures via third-party analysis at https://softwarestrategiesblog.com/2026/07/06/gartner-2q26-information-security-forecast-securing-ai-2030/ and https://softwarestrategiesblog.com/2026/03/24/information-security-spending-2026/ — a personal analyst blog, not Gartner]
- **IDC (independent):** global security spending to reach **$308B in 2026**, **$430B by 2029**, market growing **11.8%** in 2026, "driven by increasing investments into unified, AI-driven security platforms and related services." [CS: MEDIUM — reported via https://www.biztechreports.com/news-archive/2026/3/20/global-security-spend-to-exceed-300-billion-in-2026-as-the-adoption-of-ai-driven-security-platforms-gains-momentum-idc-march-23-2026 — IDC press release not directly located]
- Gartner and IDC's totals differ by ~$60B for 2026. [CS: VERIFIED] They define the market differently.

---

## 2. MICROSOFT INTUNE — INSTALLED BASE, BUNDLING, AND DISPLACEMENT ECONOMICS

### 2a. ⚠️ Installed base — THIS IS A GAP, NOT AN ANSWER

[CS: UNKNOWN] **There is no current, primary, publicly published figure for Intune's installed base.** What is in circulation:

| Claim | Where it comes from | Verdict |
|---|---|---|
| "Intune manages 200+ million devices" | Unattributed SEO/vendor-comparison pages | [CS: FABRICATION RISK] — no primary source located. **Do not cite.** |
| "37.19% MDM market share" | Enlyft technographic estimate, re-quoted | [CS: LOW] — Enlyft infers from web-technology scraping; not a revenue or seat measurement |
| "Intune and Enterprise Mobility installed base grew 15% to nearly 250 million seats" | Attributed to a Microsoft earnings call in secondary summaries; **I could not locate the quarter or the transcript line** | [CS: LOW — unverified attribution] |
| "ConfigMgr and Intune now managing more than 175 million devices" | mspoweruser, **June 2019** — https://mspoweruser.com/microsoft-configmgr-and-intune-now-managing-175-million-devices/ | [CS: MEDIUM for 2019] — **7 years stale. Useless for a 2026 decision except as a floor.** |
| "Microsoft Endpoint Manager has grown to manage over one hundred million devices" | Ramya Chitrakar (Microsoft), LinkedIn post "Microsoft Intune turns 10!" | [CS: MEDIUM] — Microsoft employee, but LinkedIn is not a citable corporate disclosure and the date is unclear |

[CS: VERIFIED] Microsoft's **FY26 Q4 earnings press release (29 Jul 2026)** contains **no** Intune, endpoint-management, or Microsoft 365 commercial-seat figure. The only M365 metric disclosed is "Microsoft 365 Copilot reached over 30 million paid seats."
- https://www.microsoft.com/en-us/investor/earnings/fy-2026-q4/press-release-webcast

**What would resolve this:** a Microsoft Intune blog milestone post on techcommunity.microsoft.com (JS-rendered, not machine-fetchable — needs a human to open it), an IDC/Gartner market-share document, or an explicit line in a Microsoft earnings call transcript. **Until then, treat Intune's installed base as unmeasured in this dossier.**

### 2b. Bundling — PRIMARY, CURRENT, AND THE MOST DECISION-RELEVANT ITEM IN THIS FILE

**Source:** Microsoft Intune pricing page (official) — https://www.microsoft.com/en-us/security/business/microsoft-intune-pricing
**Fetched:** 2026-09-23. [CS: VERIFIED — read directly from Microsoft's own pricing page]

Standalone list prices, per user per month:
- Microsoft Intune **Plan 1** — **$8.00**
- Microsoft Intune **Plan 2** — **$4.00** ("Advanced protection for specialty devices, shared devices, and complex edge scenarios")
- Microsoft **Intune Suite** — **$10.00**

Individual add-ons, per user per month:
- Remote Help — $3.50
- Endpoint Privilege Management — $3.00
- Advanced Analytics — $5.00
- Enterprise Application Management — $2.00
- Microsoft Cloud PKI — $2.00

Bundle prices, per user per month:
- Microsoft 365 **E3** (with Teams) — **$39.00** / (no Teams) $30.45
- Microsoft 365 **E5** (with Teams) — **$60.00** / (no Teams) $51.45

**⭐ THE LOAD-BEARING LINE, quoted from Microsoft's pricing page:**
> "Starting July 2026, select advanced Intune capabilities will be included in M365 E3 and E5 at no additional cost."

[CS: VERIFIED] Microsoft states this on its own pricing page.

Microsoft's announcement posts (URLs confirmed to exist; **bodies could not be fetched — techcommunity.microsoft.com is JS-rendered and returned title-only**):
- "Advanced Microsoft Intune capabilities now available in Microsoft 365 E3 and E5" — https://techcommunity.microsoft.com/blog/microsoftintuneblog/advanced-microsoft-intune-capabilities-now-available-in-microsoft-365-e3-and-e5/4529335 [CS: HIGH that the post exists; CS: UNKNOWN on contents — **a human needs to open this**]
- "Microsoft 365 adds advanced Microsoft Intune solutions at scale" — https://techcommunity.microsoft.com/blog/microsoftintuneblog/microsoft-365-adds-advanced-microsoft-intune-solutions-at-scale/4474272 [same caveat]
- "Independent expert views on the advanced Intune capabilities coming to Microsoft 365 E3 and E5" — https://techcommunity.microsoft.com/blog/microsoftintuneblog/it-experts-weigh-in-advanced-intune-capabilities-coming-to-microsoft-365-e3-and-/4516898 [same caveat; note "independent expert views" is Microsoft-curated, so not independent]

Third-party readings of the July 2026 change [CS: MEDIUM — non-Microsoft, competent but commercial]:
- Security Risk Advisors: "Intune Suite Is Included in E3/E5 Starting July 2026" — https://sra.io/blog/intune-suite-is-included-in-e3-e5-starting-july-2026/
- Topedia (Apr 2026): "Microsoft 365 E3 and E5 customers get Intune Suite and Defender capabilities in July 2026" — https://blog-en.topedia.com/2026/04/microsoft-365-e3-and-e5-customers-get-intune-suite-and-defender-capabilities-in-july-2026/
- [CS: LOW] Secondary sources state an accompanying list-price rise (E3 $36→$38, E5 $57→$60). **Microsoft's own page shows E3 $39 / E5 $60 with Teams**, which does not cleanly match either the "before" or "after" figures quoted. The price-increase framing is **secondary-only and internally inconsistent — do not use.**
- [CS: MEDIUM] Reported per secondary sources: E3 gains Remote Help, Advanced Analytics, and Plan 2 capabilities (Tunnel for MAM, FOTA, Specialty Devices); E5 gains the full advanced Intune Suite; existing customers get 30 days' notice in the admin center with access by August 2026; provisioning is automatic.

**Source:** Microsoft Learn, "Microsoft Intune Licensing Plans and Options" — https://learn.microsoft.com/en-us/intune/fundamentals/licensing
`ms.date: 2026-05-13` · `updated_at: 2026-08-06` [CS: VERIFIED — read directly]

Quoted verbatim:
> "Most organizations get Intune as part of a Microsoft 365 bundle (such as Microsoft 365 E3, E5, or E7) rather than buying these plans directly."

> "An Intune license is required for any user or device that benefits directly or indirectly from the Microsoft Intune service, including access through a Microsoft API."

Also on that page:
- Intune Plan 1 for Education is included in Microsoft 365 Education A5 and A3.
- Device-only subscriptions exist for kiosks, dedicated, phone-room, IoT and single-use devices. Device-only licences **do not** support Intune app protection policies or Conditional Access.
- Unlicensed admin access is default-on for tenants created after July 2021.

[CS: VERIFIED] Microsoft 365 **Business Premium** includes Intune Plan 1. Corroborated by multiple third parties but **NOT confirmed by me against Microsoft's own page** — the Learn licensing page names "E3, E5, or E7" and directs to the pricing page for the bundle list; the pricing page fetch returned E3/E5/EMS only. [CS: MEDIUM on Business Premium specifically. **Verify at https://www.microsoft.com/en-us/microsoft-365/business/microsoft-365-plans-and-pricing before quoting — this is the SMB-relevant SKU and therefore the one you most need right.**]

**[INGREDIENT FOR A2 — displacement economics]**
- Intune arrives at $0 marginal cost inside a bundle the customer already bought for email and Office. A displacing product is priced against **$0 incremental**, not against $8/user/month.
- As of July 2026 that $0 envelope **expanded** to include capabilities that previously cost $10/user/month (Intune Suite) — including Endpoint Privilege Management, Advanced Analytics, Remote Help, and Enterprise Application Management.
- Forrester's evaluation (via Microsoft's blog, 25 Jun 2026) reports customer feedback on "the economic value of Microsoft simplified, bundled pricing." [CS: MEDIUM — Microsoft quoting Forrester quoting customers; three hops]

### 2c. ⭐ COEXISTENCE EVIDENCE — Microsoft documents it as a supported, GA architecture

**Source:** Microsoft Learn, "Third-party device compliance partners support in Microsoft Intune" — https://learn.microsoft.com/en-us/intune/device-security/compliance/third-party-partners
`ms.date: 2026-06-24` · `updated_at: 2026-07-01` [CS: VERIFIED — read directly]

Quoted verbatim:
> "Microsoft Intune supports integration with several third-party device compliance partners. When you use a third-party device compliance partner, the partner adds the compliance state data it collects to Microsoft Entra ID. You can use device compliance data from the partner alongside the compliance results you collect with Intune."

> "By default, Intune is the mobile device management (MDM) authority for your devices. When you add a compliance partner to Microsoft Entra ID and Intune, that partner becomes the MDM authority for devices assigned to it through a Microsoft Entra user group."

**Named partners, generally available (18):** 42Gears SureMDM · 7P · Addigy · BlackBerry UEM · Citrix Workspace device compliance · CLOMO MDM · Fleet · IBM MaaS360 · Jamf Pro · Iru · Ivanti Neurons for MDM · Ivanti EPMM · mobiconnect · Mosyle Fuse · Mosyle Onek12 · Omnissa Workspace ONE UEM · Scalefusion · SOTI MobiControl

Also on that page:
- **Self-service onboarding exists.** "Microsoft Intune supports self-service onboarding for compliance partners. Partners can onboard and publish their own compliance connectors for use with Intune." Onboarding form: https://aka.ms/IntunePartnerComplianceOnboarding
- Platform support: Android, iOS/iPadOS, macOS. **Windows is not listed** as a supported platform for third-party compliance partners.
- Constraint: "You can use only one partner per platform, even if you add multiple compliance partners to Microsoft Entra ID."
- The page also carries "Best practices for migrating devices from third-party MDM to Intune MDM" — i.e. Microsoft documents both the coexistence path **and** the displacement path on the same page.
- Terminal note, verbatim: "If devices don't complete the cleanup tasks and still appear enrolled in Intune, Intune applies its own compliance policies and ignores third-party policies."

**[INGREDIENT FOR A2]** Microsoft ships an onboarding programme for third-party UEMs to act as MDM authority while Intune consumes the compliance signal. That is a coexistence surface Microsoft built and maintains. **Caveat that cuts the other way:** the supported platforms are Android, iOS/iPadOS and macOS — **not Windows.** For a Windows-heavy estate, this particular coexistence door is not open.

**Co-management with Configuration Manager** — from the licensing page, verbatim:
> "Most licenses that include Microsoft Intune also grant the rights to use Microsoft Configuration Manager, as long as the subscription remains active."

Co-management requirements listed: Microsoft Entra ID P1 or P2 per user; Intune Plan 1 (included automatically). [CS: VERIFIED]

### 2d. ⭐⭐ THE BEST AVAILABLE EVIDENCE ON WHETHER ORGS COEXIST OR REPLACE

**Source:** *State of Intune 2026* survey, sponsored by **Recast Software**
**Distribution:** PR Newswire, **28 July 2026** — https://www.prnewswire.com/news-releases/state-of-intune-survey-finds-it-teams-struggle-with-application-lifecycle-management-and-hybrid-complexity-302835831.html
**Methodology (disclosed):** n = **890 IT professionals**; fielded **April 2026**; regions: North America, Europe, Latin America, Middle East, Africa, Asia-Pacific. Partners named: System Center Dudes, Daniel Engberg, Harm Veenstra (Microsoft MVP), Jannik Reinhard (Microsoft MVP).
[CS: HIGH on the numbers as published — read directly from the PR Newswire release]
[⚠️ **CONFLICT OF INTEREST — NAME THIS EVERY TIME YOU CITE IT.** Recast Software sells Intune add-on tooling for exactly the gaps this survey reports. A survey finding that Intune has application-packaging and third-party-patching gaps is a survey finding that Recast's market exists. Methodology is disclosed and the sample is large, but the instrument was written by an interested party.]

Quoted verbatim:
> "Hybrid environments remain the dominant model for 62% of respondents"

> "Fully Intune-based environments remain a minority at 15%"

> "Thirty-seven percent of respondents identified application packaging and deployment as their biggest Intune challenge"

> "Third-party patching following closely at 33%"

> "49%, still package Win32 applications manually"

> "Eighty-one percent of respondents describe themselves as somewhat or very satisfied with Intune"

> "83% say they are somewhat or very confident troubleshooting issues within the platform"

> "65% spend between six and 15 hours each week on manual tasks such as packaging, patching, troubleshooting, and reporting"

> "More than half say they either have no plans to retire the platform or no timeline in place"

**Independent trade-press corroboration:** Sean Parker, Redmond Channel Partner, **7 August 2026** — https://rcpmag.com/articles/2026/08/07/microsoft-intune-adoption-grows.aspx [CS: HIGH — read directly; independent outlet]
> "62 percent of respondents manage devices using both Intune and Configuration Manager"

> "55 percent of ConfigMgr users either have no plans or no timeline to retire from the platform"

> "81 percent of respondents like Intune"

RCP also reports AI-tool usage among respondents: ChatGPT 64%, Claude 35%, Gemini 35%, Copilot 32%, "only 11 percent said they were not using AI for Intune management." RCP flags the limitation itself: "the report does not measure how those tools are being used or whether respondents are using free or paid versions, meaning the data reflects adoption patterns rather than specific use cases."

**[WHAT THIS SOURCE DOES AND DOES NOT SUPPORT — read carefully]**
- ✅ **Supports:** high satisfaction (81%) coexisting with heavy manual burden (65% at 6–15 hrs/week) and named category gaps (packaging 37%, third-party patching 33%).
- ✅ **Supports:** coexistence is the norm *with Microsoft's own legacy product*. 62% run Intune **and** Configuration Manager; only 15% are Intune-only; 55% of ConfigMgr users have no retirement plan or timeline.
- ❌ **Does NOT support:** anything about running Intune alongside a **non-Microsoft** endpoint tool. "Hybrid" here means Intune + ConfigMgr. The survey does not measure third-party-tool coexistence.
- ❌ **Does NOT support:** any claim about SMB or MSP. Respondent company size is not disclosed on the public page; an Intune-practitioner survey distributed through MVP channels likely skews enterprise/mid-market internal IT.
- Also located, not fetched: Recast's own page (https://www.recastsoftware.com/resources/state-of-intune-survey-finds-it-teams-struggle-with-application-lifecycle-management-and-hybrid-complexity/) and third-party writeups at https://www.efficientlyconnected.com/state-of-intune-2026-endpoint-management-survey/ and https://vmblog.com/news/state-of-intune-survey-finds-it-teams-struggle-with-application-lifecycle-management-and-hybrid-complexity/

### 2e. Intune's documented functional boundary on third-party app patching

**Source:** Microsoft Learn, "Add an Enterprise App Catalog App to Microsoft Intune" — https://learn.microsoft.com/en-us/intune/app-management/deployment/add-enterprise-catalog-app
`ms.date: 2026-06-03` · `updated_at: 2026-06-24` · note the page's own frontmatter: `ai-usage: ai-assisted`
[CS: VERIFIED — read directly]

Quoted verbatim:
> "The Enterprise App Catalog is a collection of prepackaged Win32 apps that are designed and prepared by Microsoft to support Intune. The catalog contains both Microsoft apps and non-Microsoft apps."

> "The Enterprise App Catalog is a feature of Enterprise App Management (EAM), which is part of Microsoft Intune Suite and available for trial and purchase."

> "EAM only supports managed Windows devices running 64-bit versions of Windows."

> "Microsoft doesn't assert compliance or authorizations for apps distributed via Intune. Customers are responsible for ensuring that apps meet their requirements."

Update SLOs, verbatim:
> "Most app updates complete automated validation and are available within 24 hours. Updates requiring manual testing typically complete within seven days."

[CS: VERIFIED] Microsoft does **not** publish a catalog app count on this page. Scope is Windows-only, 64-bit-only, Intune-Suite-licensed.

**Competitor-published claims about the same gap — ⚠️ ALL VENDOR SOURCES, ALL SELL AGAINST INTUNE:**
- "As of release, the Enterprise App Management catalog has 94 unique Windows applications" — Patch My PC, https://patchmypc.com/blog/enterprise-app-management/ [CS: LOW — competitor claim, "as of release" date unstated, Microsoft has not confirmed a number. **Do not cite as fact.**]
- Claimed limitations — no running-application detection, no built-in rollback, cannot fully automate third-party app lifecycle: Patch My PC (https://patchmypc.com/blog/evaluating-microsoft-s-third-party/), Recast (https://www.recastsoftware.com/resources/deploying-third-party-applications-with-intune-enterprise-app-management/), ManageEngine (https://www.manageengine.com/sccm-third-party-patch-management/intune-third-party-patching.html) [CS: LOW — three competitors saying the same thing about a competitor's product is not three independent sources]
- **⭐ The clean version of this claim:** the Microsoft Learn page above establishes, from Microsoft, that EAM is Intune-Suite-gated and Windows-64-bit-only, and that app updates carry a 24-hour-to-7-day availability SLO. That is enough. **You do not need the competitor claims, and they will not survive scrutiny in a room with a Microsoft partner in it.**
- Corroborating the *pain* independently: the Recast survey's "third-party patching" at 33% (§2d) — but Recast is also an interested party. [WOBBLY] — every source on this specific gap has a commercial interest in the gap existing. **Interview evidence is doing more work here than secondary evidence can.**

### 2f. Jamf — a documented, long-running coexistence case

[CS: HIGH] Jamf Pro is a named GA Intune device-compliance partner (§2c) and Microsoft maintains dedicated integration documentation:
- https://learn.microsoft.com/en-us/intune/device-security/compliance/jamf-entra-id
- https://learn.microsoft.com/en-us/intune/device-security/conditional-access-integration/configure-jamf-cloud-connector
- https://learn.microsoft.com/en-us/intune/device-security/conditional-access-integration/setup-jamf-manually
- Jamf's own account: https://www.jamf.com/blog/microsoft-intune-and-jamf-pro-better-together-to-manage-and-secure-macs/ and https://www.jamf.com/blog/extending-our-microsoft-partnership-with-ios-device-compliance/ [vendor-published]
- [CS: MEDIUM] Partnership announced at JNUC 2017; iOS conditional access added 2020.
- [CS: MEDIUM] "Jamf macOS device support for Conditional Access is being deprecated. Beginning on January 31, 2025, the platform that Jamf Pro's Conditional Access feature is built on will no longer be supported." Source: search summary of Jamf material — **not verified directly. Verify before use.** If accurate, this is a case of a coexistence integration being **sunset and re-platformed**, which is a different story from durable coexistence.
- [CS: UNKNOWN] What share of Jamf's base runs Jamf alongside Intune vs. instead of it. Not published.

---

## 3. TOOL CONSOLIDATION VS. BEST-OF-BREED

### 3a. The origin source for nearly every consolidation claim in this market — and it is stale

**Source:** Gartner, "Gartner Survey Shows 75% of Organizations Are Pursuing Security Vendor Consolidation in 2022"
**Date:** 13 September 2022, Gartner Security & Risk Management Summit, London
**Methodology (disclosed):** online, March–April 2022, **n = 418**, North America / Asia Pacific / EMEA
**Gartner newsroom URL:** https://www.gartner.com/en/newsroom/press-releases/22022-09-13-gartner-security-and-risk-management-summit-emea-2022-day-2-highlights
**⚠️ gartner.com returns HTTP 403 to automated fetch. Figures below are from trade press reproducing the release verbatim.**
[CS: HIGH on the figures — four independent outlets carry identical numbers] · [⚠️ **PRE-2024 — STALE FOR A 2026 DECISION**]

- **75%** of organizations pursuing security vendor consolidation in 2022, **up from 29% in 2020**.
- **57%** of organizations are working with fewer than 10 vendors for their security needs.
- Motivation: organizations consolidate "to reduce complexity and improve risk posture, **not to save on budget or to improve procurement**."
- Named analysts: **John Watts** (VP Analyst), quoted: "Security and risk management leaders are increasingly dissatisfied with the operational inefficiencies and the lack of integration of a heterogenous security stack. As a result, they are consolidating the number of security vendors they use." Also **Jeremy D'Hoinne** (VP Analyst) presenting.

Reproductions:
- Dark Reading — https://www.darkreading.com/cyber-risk/gartner-survey-shows-75-of-organizations-are-pursuing-security-vendor-consolidation-in-2022
- Help Net Security, 16 Sep 2022 — https://www.helpnetsecurity.com/2022/09/16/security-vendor-consolidation/
- CSO Online — https://www.csoonline.com/article/573617/most-enterprises-looking-to-consolidate-security-vendors.html
- SC Media — https://www.scworld.com/analysis/most-organizations-looking-to-consolidate-security-vendors-in-2022

[WOBBLY] — **This single 2022 survey of 418 respondents is the load-bearing citation behind the entire "everyone is consolidating" consensus.** It is about *security* vendors, not endpoint management tools. It measures *intent*, not outcome. It is four years old. Expect it to be quoted at you as current fact.

### 3b. Did consolidation actually happen? — weak and contested

[CS: MEDIUM] Gartner, 2023: "75% of organizations are pursuing a security vendor consolidation strategy in 2023, up from 29% in 2020" — i.e. the figure **did not move between 2022 and 2023**. Reported by Hillstone Networks' summary of Gartner's 2023 Security & Risk Management Summit: https://www.hillstonenet.com/blog/gartners-2023-security-and-risk-management-summit-quantifies-trends-in-cybersecurity-consolidation/ [vendor blog summarising an independent analyst — two hops]

[CS: MEDIUM] Gartner: "vendor consolidation can take a long time with nearly two-thirds of organizations saying they have been consolidating for three years." [⚠️ **I could not locate the primary Gartner document or press release for this.** Appears in secondary summaries only. **Verify before use.**]

[CS: LOW] "A 2025 Gartner survey found that 62% of companies are actively consolidating suppliers, with another 36% planning to do so in the next three years." [⚠️ **No primary located. Attribution to Gartner is unverified.** Surfaced via https://www.digital-chiefs.de/en/vendor-consolidation-2026/ — **do not cite.**]

[CS: LOW] "68 Percent of IT Organizations Want to Consolidate — and the Roadmap Takes 18 Months Longer Than Planned" — https://www.digital-chiefs.de/en/vendor-consolidation-2026/ [⚠️ **Underlying survey not named. Treat as unsourced. Do not cite.**]

**Source:** Cybersecurity Dive, 6 June 2023 — https://www.cybersecuritydive.com/news/security-tool-adoption-gartner/652150/ [CS: HIGH — read directly; independent trade press]
- Only quantified claim in the piece: "three-quarters of security leaders are advocating for or working toward" vendor consolidation.
- Named analyst: **Leigh McMullen**, Gartner distinguished VP analyst.
- [CS: VERIFIED] The article contains **no** sample size, **no** per-organization tool counts, and **no** consolidation-duration data. I checked.

**[HONEST STATE OF THE EVIDENCE ON WHETHER CONSOLIDATION HAPPENED]**
[CS: UNKNOWN] **I found no credible published measurement of consolidation *outcomes* in IT/endpoint operations** — only repeated measurements of *intent*, and one indication that intent was flat 2022→2023. Claims that consolidation "took 18 months longer than planned" or that "68% want to consolidate" trace to sources that do not name their underlying research. **This is a real hole in the secondary literature, and it sits directly under Assumption A1.**

### 3c. Tool counts per organisation — what is actually published

**JumpCloud Q3 2025 SME IT Trends Report** — "IT's New Reality: Unify or Drown in Complexity"
PR Newswire — https://www.prnewswire.com/news-releases/its-new-reality-unify-or-drown-in-complexity-302528003.html
**Methodology (disclosed):** n = **828 IT leaders**, 50/50 US/UK split, organisations of **200–2,500 employees**, fielded **9 May – 4 June 2025**, published **12 August 2025**. Commissioned by JumpCloud Inc.
[CS: HIGH on figures as published — read directly] [⚠️ vendor-commissioned; JumpCloud sells a unified SME IT platform, so "unification is unfinished" is its commercial thesis]
- Verbatim: **"Only 19% have achieved full IT unification"**
- Top consolidation benefits cited: "improved user experience (55%), increased job satisfaction among IT staff (54%), and a better focus on strategic work (51%)"
- [CS: VERIFIED] This release does **not** state how many tools organisations currently use. I checked.
- Related landing page: https://jumpcloud.com/resources/detours-ahead-how-it-navigates-an-evolving-world

**JumpCloud Q2 2023 SME IT Trends Report**
https://jumpcloud.com/press/tool-sprawl-external-threats-and-security-are-top-concerns-for-it-admins
**Methodology (disclosed):** n = **1,221 SME IT decision-makers**, US / UK / France, fielded **12–24 May 2023**, published **12 September 2023**.
[CS: HIGH on figures as published — read directly] [⚠️ vendor-commissioned] [⚠️ **PRE-2024 — STALE**]
- Verbatim: **"77% agree or strongly agree that they would prefer a single solution/tool to do their jobs versus managing a number of different solutions."**
- Verbatim: **"A plurality (44%) need three to seven applications to enable employees to do their job and 29% of admins need eight to 12 applications."**
- Verbatim: **"63% of SME IT admins use AD or Azure AD, but of those, 62% agree they would replace AD/AAD with something more user-friendly and flexible if they could."** Top frustrations: "understanding licensing (42%), restrictions on which tools it can support and integrate with (42%), navigating the UI and processes (40%)."
- "Almost one-third (31%) spend 25-50% of their budget on software licensing, and for 13%, licensing takes up 50% or more."
- **[INGREDIENT FOR A2]** The "62% would replace AD/Azure AD if they could, and licensing complexity is the #1 frustration" finding is the only located survey evidence of *SME dissatisfaction with the Microsoft management stack specifically*. It is 2023, vendor-commissioned by a Microsoft-alternative vendor, and about identity rather than endpoint. Weak, but on-point. [WOBBLY]

[CS: LOW] "45% of IT admins require 5-10 tools to manage employee lifecycles" — attributed to JumpCloud in search summaries; **I could not match it to a specific report edition. Do not cite without pinning the edition.**

**Absolute Security 2026 Resilience Risk Index**
https://www.absolute.com/press-releases/cybercriminals-have-open-access-to-enterprise-pcs-76-days-per-year-according-to-new-research-from-absolute-security
**Published 23 March 2026** (announced at RSA Conference 2026). Report page: https://www.absolute.com/resources/research-reports/2026-resilience-risk-index
**Method:** "anonymized telemetry across millions of endpoint devices" — **exact n not disclosed.** This is **vendor telemetry, not an independent survey.**
[CS: HIGH on figures as published — read directly] [⚠️ vendor telemetry from a vendor selling endpoint resilience]
- Verbatim: "endpoint security software fails to protect devices nearly **21 percent** of the time"
- Verbatim: "globally-distributed PCs are vulnerable to AI-driven attacks and cyber incidents up to **76 days per year**"
- Verbatim: **"Critical OS patching across PCs running Windows 10 and 11 is behind an average of 127 days"**
- Claimed context: contributing to "$400 billion in annual downtime losses" [CS: LOW — derivation not published]
- Independent coverage: Infosecurity Magazine, https://www.infosecurity-magazine.com/news/cybersecurity-software-failure-20/ ; Security Boulevard, https://securityboulevard.com/2026/03/absolute-security-enterprise-pcs-are-left-unprotected-76-days-a-year-as-endpoint-tools-fail-21-of-the-time/
- **[INGREDIENT — 127-day patch latency vs. UK's 14-day Cyber Essentials requirement is a ~9x gap. See §5.]**

[CS: MEDIUM] Absolute earlier reports: "average number of security controls has increased to more than **11 per enterprise device**, with the majority of devices containing multiple controls with the same function" (2021 Endpoint Risk Report) — https://www.absolute.com/press-releases/absolute-software-s-annual-endpoint-risk-report-underscores-compromised-security-controls-widening-enterprise-attack-surface and https://www.businesswire.com/news/home/20210526005377/en/. Predecessor figure **10.2 agents per endpoint, up from 9.8** (2020 State of Endpoint Resilience Report). [⚠️ **2020–2021 — SEVERELY STALE.** Vendor telemetry.]

**Ponemon Institute / Adaptiva, "Managing Risks and Costs at the Edge"**
Published **July 2022**. n = **629 IT and IT security practitioners, United States**; average respondent headcount 13,213; average IT budget $184,366,500.
[CS: HIGH on figures as published] [⚠️ **PRE-2024 — STALE**] [⚠️ vendor-sponsored (Adaptiva), independently fielded (Ponemon)]
- "the average enterprise now manages approximately **135,000 endpoint devices**"
- "an average of **48 percent** of devices – or 64,800 per enterprise – are at risk because they are no longer detected by the organization's IT department or the endpoints' operating systems have become outdated"
- "$4,252,500 of annual budget spent on endpoint protection"
- Coverage: Dark Reading https://www.darkreading.com/endpoint-security/nearly-half-of-enterprise-endpoints-present-significant-security-risks · Help Net Security https://www.helpnetsecurity.com/2022/07/14/businesses-are-adding-more-endpoints/ · SiliconANGLE https://siliconangle.com/2022/07/13/endpoints-growing-security-problem-survey-says/
- Ponemon/Absolute companion study: https://www.absolute.com/press-releases/new-ponemon-study-finds-traditional-endpoint-security-approaches-are-ineffective-costing-the-average-enterprise-6-millionplus-per-year
- **[INGREDIENT FOR A1]** "48% of endpoints not detected by IT or running outdated OS" is the strongest published articulation of an *inventory-and-intelligence* gap — which is one of Ecoverse's named categories. It is from 2022 and US-only.

### 3d. MSP-side consolidation

**Kaseya** reports. [⚠️ **The full reports are gated behind download forms. I did not submit any form.** Figures below come from public blog posts and trade coverage, not the report bodies.]
- 2026 Kaseya State of the MSP Report landing page: https://www.kaseya.com/resource/2026-kaseya-state-of-the-msp-report-insights/ — **public page discloses n = "more than 1,000 managed service providers" and nothing else quantitative.** [CS: VERIFIED — read directly]
- [CS: MEDIUM] "**95% of MSPs** state that deeply integrating their core tools (RMM, PSA, backup, and IT documentation) is essential for running smooth, scalable operations"
- [CS: MEDIUM] "Vendor consolidation is a priority for **46%** of MSPs, with **63%** saying they prefer using fewer vendors to meet their technology needs"
- [CS: MEDIUM] "most MSPs rely on **two to three different BCDR solutions**"; "**40%** report that at least one full-time employee spends 80% or more of their time on backup and disaster recovery"; "**31%** point to the cost of managing too many different security tools"
- ⚠️ These figures are drawn from search summaries across several Kaseya editions (2025 Global MSP Benchmark, 2025/2026 State of the MSP). **Which figure came from which edition is not resolved. Pin the edition before quoting.**
- Sources to open: https://www.kaseya.com/blog/key-findings-from-kaseyas-2025-global-msp-benchmark-report/ · https://www.kaseya.com/resource/2025-msp-benchmark-report/ · https://www.kaseya.com/press-release/kaseyas-state-of-msp-shows-what-makes-a-top-performing-msp/ · https://mspsuccess.com/2025/01/kaseya-state-of-the-msp-industry-survey-reveals-optimism-and-focus-on-profits/
- [⚠️ **HEAVY CONFLICT OF INTEREST.** Kaseya is a direct N-able competitor whose commercial strategy *is* platform consolidation. Its surveys find that MSPs want consolidation. Treat as competitor positioning with a survey attached.]

**N-able, Inc. Form 10-K, FY2025** — SEC EDGAR: https://www.sec.gov/Archives/edgar/data/1834488/000183448826000007/nabl-20251231.htm
[CS: MEDIUM — figures below from search summary; **the 10-K itself was not read line-by-line. Open it and grep before quoting.**] [Company-published, but SEC-filed and therefore legally constrained]
- N-able frames its solutions as three vectors: **Unified Endpoint Management ("UEM"), Security Operations, and Data Protection**.
- Verbatim-ish: "some of N-able's IT services provider customers service larger businesses through a **co-managed IT model**, sharing responsibility for IT management and services with an internal IT team, and N-able believes that increased adoption of co-managed IT models will continue to be a meaningful driver of market expansion."
- N-able states it has been recognised in the 2026 Gartner MQ for Endpoint Management Tools.
- Prior-year 10-K: https://content.edgar-online.com/ExternalLink/EDGAR/0001834488-25-000053.html · IR: https://investors.n-able.com/financials/annual-reports/default.aspx
- FY2025 ARR **$540M, +12%**; Q4 2025 revenue $130M, +12%. [CS: MEDIUM — via https://www.investing.com/news/transcripts/earnings-call-transcript-nable-q4-2025-reports-12-revenue-growth-93CH-4514006]
- **[INGREDIENT]** The "co-managed IT" framing is already in N-able's own SEC filing as a market-expansion thesis. That is the internal-IT-plus-MSP dual audience Ecoverse is aimed at, stated in a legally-filed document. It is **N-able's own claim**, not external validation of it.
- [⚠️ **STOCKTITAN FLAG, NOT PURSUED:** https://www.stocktitan.net/sec-filings/NABL/10-k-a-n-able-inc-amends-annual-report-e05d2b21e57a.html indicates a 10-K/A amendment and "controls weakness." Not relevant to market structure; noted only so you are not surprised by it. Not investigated.]

---

## 4. HOW IT BUYERS ENTER A PLATFORM PURCHASE

### 4a. ⚠️ THE CORE QUESTION IS UNANSWERED IN THE PUBLIC LITERATURE

[CS: UNKNOWN] **I found no published buying-behaviour research on whether IT buyers enter platform purchases point-solution-first or suite-first**, for IT management software or any adjacent category. Not from Gartner, Forrester, TrustRadius, G2, or any trade source located in this pass.

The available research answers a **different question** — *how buyers research and shortlist vendors* — not *what scope of product they set out to buy*. Do not let the two be substituted for each other. **The riskiest-assumption A1 does not currently have secondary grounding, and the honest answer is that this research does not appear to exist in public form.**

What would resolve it: a Gartner or Forrester buyer-journey document for the ITOM/endpoint category (gated); a commissioned quantitative study; or — most likely the real answer — N-able's own win/loss and first-module-purchased data, which is internal and which Beth can get.

### 4b. What IS published — vendor familiarity and shortlist formation

**TrustRadius 2026 B2B Buying Disconnect Report**
**Methodology (disclosed):** global survey, **January 2026**, n = **1,862 technology buyers** and **444 technology vendors**.
[CS: MEDIUM — figures via coverage, primary report page not fetched] [TrustRadius is a review platform; its commercial interest is in buyers using reviews]
- Coverage: https://finance.yahoo.com/technology/ai/articles/trustradius-2026-b2b-buying-disconnect-130000506.html · https://hginsights.com/news/trustradius-2026-b2b-buying-disconnect-report-reveals-ai-has-changed-how-buyers-research-but-not-what-they-trust/ · https://hginsights.com/blog/trust-more-verify-everything-what-the-2026-b2b-buying-disconnect-report-says-about-where-buying-is-actually-heading/
- Headline framing: "AI Has Changed How Buyers Research, But Not What They Trust."
- Ninth annual edition press release: https://www.prnewswire.com/news-releases/bridging-the-trust-gaptrustradius-releases-its-ninth-annual-buyer-research-report-302422237.html

**TrustRadius 2024 edition** [⚠️ **PRE-2024 boundary — 2024 report, likely 2023/2024 fielding. Ageing.**]
- [CS: MEDIUM] "**78%** of buyers creating short lists reported selecting products they'd heard of before starting their research, rising to **86% for enterprise buyers**."
- Source: https://solutions.trustradius.com/vendor-blog/2024-b2b-buying-disconnect-the-year-of-the-brand-crisis/

**G2 buyer behaviour research** [⚠️ **ATTRIBUTION UNRESOLVED — see the trap list**]
- G2 2025 buyer behaviour: https://company.g2.com/news/buyer-behavior-in-2025 · https://research.g2.com/cmos-2025-buyer-behavior-report-research-g2
- G2 AI-search research (1,000+ decision makers): https://learn.g2.com/ai-search-surging-for-b2b-buyers
- [CS: MEDIUM] "nearly 8 in 10 respondents say AI search has changed how they conduct research, with 29% noting they start research via platforms like ChatGPT more often than Google"
- [CS: MEDIUM] "Nearly two out of three buyers now prefer engaging with vendor salespeople only in the later stages of their buying journey, up sharply (+17 ppt) from last year."
- G2 Buyer Behavior Report PDF: https://learn.g2.com/hubfs/G2%20%7C%20Buyer%20Behavior%20Report.pdf — **⚠️ FETCH FAILED, PDF would not parse. Edition year and sample size unconfirmed.**
- BusinessWire, 14 May 2025: https://www.businesswire.com/news/home/20250514382531/en/G2-Report-AI-Now-Means-Always-Included

**Forrester Buyer Insights 2026:** https://forrester.com/research/buyer-insights/ [CS: UNKNOWN — gated, not accessed]

**⚠️ FIGURES I AM DELIBERATELY NOT GIVING YOU AS FACT.** Search results surfaced "81% of buyers had already decided on a preferred vendor before their first meeting with sales," "92% start with at least one potential supplier on their radar," "41% start with a single preferred vendor in mind," and "95% of the time the winner is on the Day One shortlist." Every one of these arrived via SEO stat-roundup pages (thesmallbusinessexpo.com, thunderbit.com) **with no traceable underlying study.** [CS: FABRICATION RISK] — **do not use any of them.** They are exactly the kind of fluent, specific, plausible number that turns out to have no source. If you want these, they need to be traced to a named study with a sample size.

---

## 5. UK / EU MARKET STRUCTURE

### 5a. ⭐ UK official statistics — the strongest independent source in this dossier

**Source:** DSIT / Home Office, **Cyber Security Breaches Survey 2025/2026**, Official Statistics
**Published:** **30 April 2026**
**Methodology (disclosed):** **n = 2,112 UK businesses** and **1,085 UK registered charities**
**URL:** https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026
**Technical report:** https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026-technical-report
**Education findings:** https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026-education-institutions-findings
[CS: VERIFIED — read directly] [**INDEPENDENT — UK government official statistics. No commercial interest.**]

Quoted / near-verbatim:
- **"A policy to apply software security updates within 14 days" was implemented by only 34% of businesses and 20% of charities** — "among the less commonly deployed controls."
- Breach rates: **43%** of businesses overall — **micro 42%, small 46%, medium 65%, large 69%.**
- Cyber Essentials: prompted awareness **17%** of businesses, **16%** of charities. Certification holding: **"The proportion of businesses holding Cyber Essentials has increased since 2024/2025 (5% up from 3%)"** — driven by **large businesses (35%, up from 21%)** and **small businesses (12%, up from 5%)**.
- External providers: **44% of micro businesses had an external cyber security provider, up from 39% in 2024/2025.** [⚠️ The survey does not break out MSPs separately from general external providers.]
- Education sector "vulnerability management" composite (patching policy plus at least one of: vulnerability audits, penetration testing, anti-malware updates, SaaS policy) ranges **48% for primary schools up to 91% for higher education**. Further education colleges undertaking vulnerability audits **fell from 75% to 55%** year on year.

**[INGREDIENTS — UK]**
- Only about a third of UK businesses have a **policy** for 14-day patching. That is a policy, not an outcome. Set beside Absolute's telemetry of 127-day average critical OS patch lag (§3c) — the gap between UK regulatory expectation and measured practice is roughly 9x. [The two sources measure different things: one is UK policy prevalence, one is global vendor telemetry. **Do not present the 9x as a single finding.**]
- Breach rate rises sharply with size (42% micro → 69% large), while Cyber Essentials certification also rises with size (unstated for micro → 35% large). Mid-market (65% breached) is where exposure is high.
- Micro-business reliance on external providers is **growing** (39% → 44%), which is channel-relevant.
- Independent coverage: https://www.alstonprivacy.com/uk-cyber-security-breaches-survey-2025-2026-key-takeaways/

### 5b. Cyber Essentials as a patching-category compliance driver

[CS: MEDIUM] **Cyber Essentials requires high-risk and critical security updates to be applied within 14 days of release**, covering operating systems, router and firewall firmware, and applications including associated files and extensions. "Security update management" is one of the **five technical controls** (with firewalls, secure configuration, user access control, malware protection).
- **⚠️ FETCH FAILED TWICE.** I attempted the NCSC requirements PDFs at https://www.ncsc.gov.uk/files/cyber-essentials-requirements-for-it-infrastructure-v3-2.pdf and https://www.ncsc.gov.uk/sites/default/files/documents/cyber-essentials-requirements-for-it-infrastructure-v3-3.pdf — **the binary PDF would not parse and the 14-day wording was NOT read verbatim from the primary document.** The v3.2 URL also appeared in search results. **Open one of these PDFs yourself before quoting the requirement text.**
  - *(Cross-reference: Dimension D's scout DID read v3.2 in full. See `01-uk-cyber-essentials-v3-2.md` for the verbatim text.)*
- Corroboration that the 14-day framing is real: the DSIT survey (§5a) independently describes the control as "a policy to apply software security updates within 14 days," which is UK-government wording. [CS: HIGH that the 14-day rule exists; CS: MEDIUM on its exact scope wording]
- [CS: MEDIUM] **v3.2 (question set "Willow") came into effect 28 April 2025.** Source: https://cwsisecurity.com/whats-new-for-cyber-essentials-2025/ , https://www.surecloud.com/blog-hub/cyber-essentials-plus-v3-2-willow [both commercial/CB blogs]
- [CS: LOW] **April 2026 changes, question set "Danzell", effective ~27 April 2026** — reportedly making missed 14-day patching an **automatic failure**, removing previous flexibility. Sources are all commercial certification bodies and MSPs: https://iasme.co.uk/articles/important-update-changes-to-cyber-essentials-for-april-2026/ (IASME is the scheme's official Accreditation Body — **the strongest of these; open it**) · https://www.claranet.com/uk/blog/2026-changes-to-cyber-essentials-and-cyber-essentials-plus-what-you-need-to-know/ · https://grcsolutions.io/cyber-essentials-2026-faqs/ · https://netsecgroup.io/guides/cyber-essentials-14-day-patching-guide · https://info.cybertecsecurity.com/cyber-essentials-2026-updates-what-you-need-to-know
- **[INGREDIENT]** If the automatic-failure change is real, a UK-specific, dated, regulatory forcing function on the *patching* category landed five months before this scout ran. **That is the most Ecoverse-relevant UK market-structure fact located — and it needs verification from IASME/NCSC directly, not from MSP blogs.**

### 5c. EU

[CS: UNKNOWN] **No EU-specific endpoint/UEM market structure source located in this pass.** NIS2 and DORA were not researched. GDPR jurisdiction is a given for Beth's work but no GDPR-specific endpoint-management market evidence was found.
- *(Cross-reference: Dimension D covers NIS2, CIR 2024/2690, CRA and DORA in depth. See `02-eu-nis2-and-cir-2024-2690.md`, `03-eu-cyber-resilience-act.md`, `08-not-verified-and-tool-limits.md`.)*
- [CS: UNKNOWN] No UK or EU regional UEM/RMM market sizing found from any credible house. Report-mill reports claim regional splits; none disclose method.
- [THIN DOMAIN] — not in the pre-colonial/oral sense, but the **UK/EU-specific IT-management market literature is genuinely thin**. Almost all published research is US-centric or global-undifferentiated. JumpCloud's 50/50 US/UK split (§3c) is the only located survey with a deliberate UK sample.

---

## 6. NAMED GAPS — things I looked for and did not find

Each of these is a terminal "unknown," not a low-confidence estimate.

1. **Intune installed base.** No current primary figure. Last Microsoft-attributable number is 175M ConfigMgr+Intune from **June 2019**.
2. **Whether organisations run Intune alongside third-party (non-Microsoft) endpoint tools, and at what rate.** The Recast survey measures Intune + ConfigMgr only. No survey located measures Intune + third-party-vendor coexistence.
3. **Point-solution-first vs suite-first entry for IT management software.** No published research located. §4a.
4. **Any independent (non-vendor) evidence that connecting endpoint categories realises unrealised value.** Every consolidation-benefit figure located is from a vendor selling consolidation. Forrester's evaluation criterion (§1d) is the closest thing, and it is a criterion, not an outcome measurement.
5. **Consolidation outcomes** — did the 2022 intent convert? No credible measurement located. §3b.
6. **Gartner/IDC UEM segment size and CAGR.** Paywalled.
7. **SMB/mid-market Intune penetration specifically** (as opposed to enterprise). Nothing located. The Business Premium bundling path is the mechanism, but its uptake is unmeasured in public.
8. **Whether Microsoft 365 Business Premium includes Intune Plan 1**, confirmed from Microsoft's own page. Widely asserted by third parties; not verified by me. §2b. **This is the SMB-critical SKU — verify it.**
9. **EU/NIS2/DORA endpoint-management market structure.** Not researched here — see Dimension D.
10. **MSP-specific tool counts pinned to a named report edition.** Kaseya figures exist but the edition attribution is unresolved and the reports are gated. §3d.

---

## 7. TRUST LADDER

**Strongest — independent, primary, current, read directly**
- DSIT Cyber Security Breaches Survey 2025/2026 (30 Apr 2026, n=2,112 businesses) — UK government, no commercial interest
- Microsoft Learn licensing / third-party compliance partners / Enterprise App Catalog pages (ms.date May–Jun 2026) — vendor, but authoritative on its own product and dated
- Microsoft Intune pricing page (fetched 2026-09-23) — vendor, authoritative on its own prices
- Microsoft FY26 Q4 press release (29 Jul 2026) — useful for what it does NOT say about Intune

**Strong but commercially interested — always name the sponsor when citing**
- Recast Software *State of Intune 2026* (n=890, Apr 2026) — best coexistence data available; Recast sells Intune add-ons
- Redmond Channel Partner, 7 Aug 2026 — independent journalism on the above
- JumpCloud Q3 2025 (n=828, US/UK) and Q2 2023 (n=1,221, US/UK/FR) — methodology disclosed; JumpCloud sells unified SME IT
- Absolute Security 2026 Resilience Risk Index (23 Mar 2026) — vendor telemetry, n undisclosed
- N-able Form 10-K FY2025 — company-published but SEC-filed

**Directional only — stale, or intent rather than outcome**
- Gartner 2022 consolidation survey (n=418, Mar–Apr 2022) — the origin of the consolidation consensus; 4 years old; about *security* vendors, measures *intent*
- Ponemon/Adaptiva Jul 2022 (n=629, US) — 135,000 endpoints, 48% undetected/outdated
- Absolute 2020/2021 agent counts (10.2 then 11+ per endpoint)
- VentureBeat Sept 2022 on the 2022 UEM MQ
- TrustRadius 2024 shortlist-familiarity figures

**[WOBBLY] — one house's framing circulating as consensus**
- **"75% of organizations are pursuing security vendor consolidation."** One Gartner survey, 418 respondents, 2022, security-not-endpoint, intent-not-outcome. Underpins nearly every consolidation argument in this market.
- **"By 2027, UEM will converge to drive autonomous endpoint management, reducing human effort by at least 40%."** Traces to the **2022** Gartner MQ via VentureBeat, 19 Sep 2022 (author Louis Columbus) — https://venturebeat.com/security/unified-endpoint-management-uem-tools-whats-new-gartner-magic-quadrant . Also from the same 2022 source: "by 2025, more than 90% of clients will use cloud-based UEM tools to manage the majority of their estate, up from 50% in early 2022." **These are four-year-old predictions routinely quoted as current Gartner guidance.** If someone cites the "40% reduction in human effort" at you, it is from 2022.
- All UEM market sizing. Six publishers, 2.4x spread, no disclosed method.
- Intune third-party-patching limitations — three competitors (Patch My PC, Recast, ManageEngine) plus one competitor-sponsored survey (Recast). Not independent corroboration. Use the Microsoft Learn page instead.

**⛔ DO NOT CITE — traps**
- **"Intune manages 200+ million devices."** No primary source. [CS: FABRICATION RISK]
- **"37.19% MDM market share."** Enlyft technographic scrape re-quoted as market share.
- **"Intune installed base grew 15% to nearly 250 million seats."** Attributed to a Microsoft earnings call; **no transcript line located**.
- **"81% of buyers had already decided on a preferred vendor before their first meeting with sales"** / **"95% of the time the winner is on the Day One shortlist"** / **"92% start with a supplier on their radar"** / **"41% start with a single preferred vendor."** All from SEO stat-roundups with no traceable study. [CS: FABRICATION RISK]
- **"A 2025 survey of more than 1,000 IT and security professionals found that 49% struggle with too many overlapping tools, 41% face security risks from poor integration, teams managing 16+ tools report 50% burnout vs 17% for 1–5 tools."** Surfaced via acsmi.org and SEO listicles. **No named study, no publisher, no methodology.** [CS: FABRICATION RISK]
- **"Organizations using 2–3 unified tools had 41% fewer false positives and 29% faster containment"** / **"UEM platforms deliver 40% reduction in endpoint security incidents and 35% improvement in IT operational efficiency"** / **"most IT departments run three to six disconnected tools"** / **"enterprises manage an average of 11 different endpoint types."** All from SEO content farms (zecurit.com, syncrosecure.com, invgate blog, scmgalaxy, acsmi.org). **No primary sources. These are the most seductive numbers in this whole search — they say exactly what Ecoverse wants said, and none of them are real as far as I can establish.** [CS: FABRICATION RISK]
- **"68% of IT organizations want to consolidate, roadmap takes 18 months longer than planned"** and **"a 2025 Gartner survey found 62% actively consolidating suppliers, 36% planning to."** Underlying research unnamed. [CS: FABRICATION RISK on the Gartner attribution]
- **"Supply chain attacks have risen 633%, with 65% exploiting known, unpatched vulnerabilities."** Surfaced in a commercial blog alongside genuine gov.uk figures. **Not a gov.uk figure.** Do not let it travel next to the DSIT numbers.
- **Microsoft 365 E3/E5 "price increase $36→$38 / $57→$60."** Secondary-only and does not reconcile with Microsoft's own published prices.

---

## 8. FETCH FAILURES — things a human should open

| URL | Problem | Why it matters |
|---|---|---|
| https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys | HTTP 403 | Only located Canalys RMM/PSA market-size data; period ambiguous |
| https://www.gartner.com/en/newsroom/press-releases/... (all) | HTTP 403 to automated fetch | Gartner consolidation survey and security spending forecasts |
| https://techcommunity.microsoft.com/blog/microsoftintuneblog/... (3 posts) | JS-rendered, title only | Microsoft's own framing of the July 2026 E3/E5 bundling change |
| https://www.ncsc.gov.uk/.../cyber-essentials-requirements-for-it-infrastructure-v3-3.pdf | PDF would not parse | Verbatim 14-day patching requirement text — **Dimension D got this; see file 01** |
| https://learn.g2.com/hubfs/G2%20%7C%20Buyer%20Behavior%20Report.pdf | PDF would not parse | Edition year, sample size, best-of-breed vs suite questions |
| https://www.microsoft.com/en-us/microsoft-365/business/microsoft-365-plans-and-pricing | Not fetched | Confirm Business Premium includes Intune Plan 1 — SMB-critical |
| https://www.sec.gov/Archives/edgar/data/1834488/000183448826000007/nabl-20251231.htm | Not read line-by-line | N-able's own market and co-managed-IT language, verbatim |
| https://iasme.co.uk/articles/important-update-changes-to-cyber-essentials-for-april-2026/ | Not fetched | Whether 14-day patching is now an automatic CE failure |

---

## 9. VENDOR-PUBLISHED VS. INDEPENDENT — explicit split

**Independent, no commercial stake in the answer:**
- DSIT / Home Office (UK government official statistics)
- Gartner, Forrester, IDC, Canalys, Omdia (analyst houses — paid by vendors and buyers both, but not selling endpoint software)
- Redmond Channel Partner, Cybersecurity Dive, Dark Reading, Help Net Security, CSO Online, SC Media, Infosecurity Magazine (trade journalism)
- Ponemon Institute (independent fielding — but sponsored by Adaptiva on the study cited)

**Vendor-published or vendor-commissioned — every figure carries the sponsor's thesis:**
- Microsoft (subject of the analysis; pricing and docs are authoritative on itself, promotional on competitors)
- Recast Software (sells Intune add-ons; survey finds Intune gaps)
- JumpCloud (sells unified SME IT; survey finds unification incomplete)
- Absolute Security (sells endpoint resilience; telemetry finds endpoints unresilient)
- Kaseya (N-able competitor; sells platform consolidation; survey finds MSPs want consolidation)
- N-able (subject's employer; 10-K is SEC-filed and therefore constrained, but is advocacy)
- Patch My PC, ManageEngine, Recast, Tanium, Jamf (all sell into or against Intune)
- The report mills (TBRC, Mordor, Verified Market Research, Fortune Business Insights, MRFR, Research and Markets, Business Research Insights, Congruence) — sell the reports; no stake in the answer, but no disclosed method either

**Pattern worth noting before assembly:** on Assumption A1 specifically, **every source that says connecting categories creates value has a commercial interest in that being true.** The independent sources (DSIT, Gartner-2022, Ponemon) establish that the *problems* are real and widespread. None of them establish that *connecting the categories* is what resolves them. That distinction is where the assumption is still load-bearing.
