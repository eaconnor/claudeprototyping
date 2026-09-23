# Secondary Market Signal — Dimension C: Pricing, Willingness to Pay, Budget Structure

**Scout run:** 2026-09-23
**Assumption under test:** Riskiest assumption #5 — "we have a real, unmet business need that translates into commercial value."
**Source doc's own position (carried forward, not re-tested here):** "No source reviewed provides direct willingness-to-pay, viable packaging or margin evidence for Pure Ecoverse."

**Scope rule applied:** published sources only. No login-gated content. No estimates, no interpolation, no modelling. Where a figure is not published, it is recorded as `[CS: UNKNOWN]` and left there.

**Fetch failures to be aware of (affects confidence, not conclusions):**
- `action1.com/pricing` → HTTP 403 to direct fetch. Action1 prices below are second-hand.
- `channele2e.com` Kaseya 365 article → HTTP 403. Kaseya prices below are second-hand.
- `gartner.com` press releases → HTTP 403. Gartner figures below are from search-result summaries only.
- `computereconomics.com` (Avasant) → fetched successfully; confirmed **paywalled, zero figures on public page**.

---

## STRONGEST PRIMARY SOURCE

### SRC-C-001 — Microsoft 365 Pricing and Packaging Updates (effective 1 July 2026)

Microsoft's own licensing newsroom page. This is the direct price anchor for "integrated add-on" positioning, and it is the single most load-bearing source in this dossier.

**Publisher:** Microsoft | **URL:** https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates
**Companion FAQ:** https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates-faq

**Published list price changes, USD per user/month, effective 2026-07-01** — `[CS: VERIFIED]` (read on Microsoft's own page)

| SKU | Old | New |
|---|---|---|
| Office 365 E1 (with Teams) | $10.00 | no change |
| Office 365 E3 (with Teams) | $23.00 | $26.00 |
| Office 365 E5 (with Teams) | $38.00 | $41.00 |
| Microsoft 365 E3 (with Teams) | $36.00 | **$39.00** |
| Microsoft 365 E5 (with Teams) | $57.00 | **$60.00** |
| Office 365 E3 (no Teams) | $14.45 | $17.45 |
| Office 365 E5 (no Teams) | $29.45 | $32.45 |
| Microsoft 365 E3 (no Teams) | $27.45 | $30.45 |
| Microsoft 365 E5 (no Teams) | $48.45 | $51.45 |
| M365 Business Basic | $6.00 | $7.00 |
| M365 Business Standard | $12.50 | $14.00 |
| **M365 Business Premium** | **$22.00** | **no change** |
| EMS E3 | $10.60 | $12.00 |
| EMS E5 | $16.40 | $18.00 |
| Entra ID Plan 1 | $6.00 | $7.00 |
| Entra ID Plan 2 | $9.00 | $10.00 |
| Microsoft 365 Apps | $12.00 | $14.00 |

**What Microsoft says it is adding in exchange** — `[CS: VERIFIED]` (read on Microsoft FAQ page)

Intune advanced capabilities rolling into **EMS E3, Microsoft 365 E3, and Microsoft 365 E5**, rollout complete by **2026-08-01**:
- Intune Remote Help
- Intune Advanced Analytics
- Intune Plan 2
- Intune Privilege Management
- Microsoft Cloud PKI
- Intune Application Management

Also added: Microsoft Defender for Office 365 Plan 1 (rollout complete 2026-08-01). Security Copilot added to M365 E5 with capacity limit "400 Security Compute Units (SCUs) per month for every 1,000 paid user licenses, with a maximum of 10,000 SCUs per month."

**Standalone Intune Suite is NOT retired.** FAQ states verbatim: *"Standalone Intune Suite and add-ons will continue to be available for purchase and are appropriate for customers who do not require EMS E3, Microsoft 365 E3, or Microsoft 365 E5 plans."* `[CS: VERIFIED]`

**⚠ UNRESOLVED DIVERGENCE — do not collapse this.** The Microsoft FAQ as fetched lists all six Intune capabilities going to EMS E3 / M365 E3 / M365 E5 without splitting them. A third-party account (Patch My PC, SRC-C-003) says EPM, Enterprise App Management and Cloud PKI are **E5-only** and E3 gets only Remote Help, Advanced Analytics and Plan 2. These two readings conflict. `[CS: MEDIUM]` on the E3/E5 split specifically. Resolving it requires reading the Microsoft Product Terms / Message Center notice. **Named as open, not resolved.**

---

## 1. PUBLISHED PER-ENDPOINT / PER-USER PRICING — COMPARISON SET

### SRC-C-002 — Microsoft Intune, published add-on prices

**Publisher:** Microsoft | **URL:** https://www.microsoft.com/en-us/security/microsoft-intune-pricing (also served at `/en-us/security/business/microsoft-intune-pricing`)

**In the on-page pricing table** — USD per user/month, paid yearly — `[CS: VERIFIED]`

| Add-on | Price |
|---|---|
| Microsoft Intune Plan 2 | $4.00 |
| Microsoft Intune Remote Help | $3.50 |
| Microsoft Intune Endpoint Privilege Management | $3.00 |
| Microsoft Intune Advanced Analytics | $5.00 |
| Microsoft Intune Enterprise Application Management | $2.00 |
| Microsoft Cloud PKI | $2.00 |

All add-ons require a Microsoft Intune Plan 1 subscription as prerequisite. Page carries the caveat "Prices may vary based on your Microsoft agreement."

**In the page's FAQ text, NOT in the pricing table** — `[CS: HIGH]` (on Microsoft's own page but in prose, not the priced table; treat as list price, not a transactable SKU price)
- **Microsoft Intune Plan 1 standalone: $8.00 user/month**
- **Microsoft Intune Suite: $10.00 user/month**

**What the Suite adds over Plan 1** — `[CS: VERIFIED]`, from https://learn.microsoft.com/en-us/intune/intune-service/fundamentals/licenses (ms.date 2026-05-13):
> "**Microsoft Intune Plan 1**: the base service. Cloud-based unified endpoint management for devices and apps.
> **Microsoft Intune Plan 2**: additive to Plan 1. Advanced endpoint management capabilities, including Remote Help and Advanced Analytics.
> **Microsoft Intune Suite**: additive to Plan 1. Unifies advanced endpoint management and security capabilities. Includes Plan 2."

Capability list for the advanced tier, from https://learn.microsoft.com/en-us/intune/intune-service/fundamentals/intune-add-ons (ms.date 2026-05-20) — `[CS: VERIFIED]`:
Android FOTA firmware updates · Specialty device management (AR/VR headsets, smart screens, conference room devices) · Microsoft Tunnel for MAM (unenrolled Android/iOS) · Advanced Analytics · Remote Help · Cloud PKI · Endpoint Privilege Management · Enterprise Application Management (Microsoft-hosted Enterprise App Catalog).

Trial terms: 90 days, max 250 users per tenant, one trial per capability per tenant, 30-day post-trial grace period. `[CS: VERIFIED]`

**Note for anyone doing per-device arithmetic:** Intune is licensed **per user**, not per device, except for a specific device-only subscription for kiosk/dedicated/IoT/no-user-affinity devices. Device-only licences exclude app protection policies, Conditional Access, and user-based features. Device-only subscription **price is not published on the pages reviewed** → `[CS: UNKNOWN]`. This is a material asymmetry against per-endpoint-priced competitors and any per-endpoint comparison that ignores it is not comparing like with like.

---

### SRC-C-003 — Patch My PC on Intune Suite discounting (third-party, treat with care)

**Publisher:** Patch My PC (ISV, Intune ecosystem) | **URL:** https://patchmypc.com/blog/microsoft-intune-suite-pricing/

- Intune Suite standalone "$10/user/month list price" — corroborates SRC-C-002. `[CS: HIGH]`
- Claim that customers "reportedly received huge discounts in the 60-70% range," effective ~$3–4/user/month. `[CS: LOW]` — **street-price hearsay, no methodology, no sample. Directional only. Do not put a number on a slide from this.**
- E3/E5 price increase of $3/user/month, effective 2026-07-01 — corroborates SRC-C-001. `[CS: VERIFIED]` via SRC-C-001.
- E3/E5 capability split — conflicts with Microsoft FAQ, see divergence note above.

---

### SRC-C-004 — Automox

**Publisher:** Automox | **URL:** https://www.automox.com/pricing

- **Patch OS: "$1 Per endpoint/month, with annual commitment"** `[CS: VERIFIED]`
- **Automate Essentials: "Custom Pricing"** — not published `[CS: VERIFIED — NOT PUBLISHED]`
- **Automate Enterprise: "Custom Pricing"** — not published `[CS: VERIFIED — NOT PUBLISHED]`
- "Volume discounts available for 200+ device licenses or multi-year contracts" `[CS: VERIFIED]`
- "Pay monthly for what you use with no commitment, or choose an annual plan and save 25%" `[CS: VERIFIED]`
- Minimum endpoint count: not stated `[CS: UNKNOWN]`
- Automox Resolve module price: not on the page `[CS: UNKNOWN]`

Shape worth noting: Automox publishes a **loss-leader entry price for the single-capability tier only** and quote-gates everything multi-capability. Same pattern as Action1.

---

### SRC-C-005 — ManageEngine Endpoint Central (the only full published price list in the set)

**Publisher:** ManageEngine (Zoho) | **URL:** https://www.manageengine.com/products/desktop-central/pricing.html

Published list prices, USD — `[CS: VERIFIED]`

**Professional edition**

| Scope | On-prem annual / perpetual | Cloud monthly / annual |
|---|---|---|
| 50 endpoints | $795 / $1,987 | $104 / $1,045 |
| 100 endpoints | $1,445 / $3,612 | $189 / $1,895 |
| 1,000 endpoints | $8,945 / $21,612 | $1,124 / $11,245 |
| 10 servers | $295 / $738 | — |
| 100 servers | $2,195 / $5,488 | — |

**Enterprise edition**

| Scope | On-prem annual / perpetual | Cloud monthly / annual |
|---|---|---|
| 50 endpoints | $945 / $2,362 | $124 / $1,245 |
| 1,000 endpoints | $10,795 / $26,987 | $1,404 / $14,045 |

**UEM edition** — 50 endpoints $1,095 / $2,738 on-prem annual/perpetual; 1,000 endpoints $12,545 / $31,363
**Security edition** — 50 workstations $1,695 / $4,238; 1,000 workstations $19,395 / $48,488
**Additional technician** — $345 annual / $862 perpetual (Professional); Security edition per-technician add-on "starting at $345 annual"

**Derived per-endpoint figures** — these are plain division of the published list above, not estimates, and are labelled as derived rather than as published rates:
- Enterprise cloud @ 1,000 endpoints: $14,045/yr ÷ 1,000 ÷ 12 = **$1.17 / endpoint / month** (derived)
- Professional cloud @ 1,000 endpoints: $11,245/yr ÷ 1,000 ÷ 12 = **$0.94 / endpoint / month** (derived)
- Professional cloud @ 50 endpoints: $1,045/yr ÷ 50 ÷ 12 = **$1.74 / endpoint / month** (derived)

`[CS: VERIFIED]` on the inputs; the division is arithmetic. ManageEngine does not publish a per-endpoint-per-month rate — do not attribute these numbers to ManageEngine as though it did.

Free edition endpoint limit: not stated on the page as fetched `[CS: UNKNOWN]`.

---

### SRC-C-006 — NinjaOne

**Publisher:** NinjaOne | **URL:** https://www.ninjaone.com/pricing/

NinjaOne publishes a **range statement, not a price list.** Verbatim from the page — `[CS: VERIFIED]` as a vendor statement:
> "NinjaOne starts as low as $1.50 USD per month at 10,000 endpoints, increasing to $3.75 USD at 50 or fewer endpoints; pricing varies by region and products purchased."

And, verbatim, the reason:
> "Like many companies who sell through the channel, we don't publicly list our full pricing. The reason is we don't want to interfere with how our partners are pricing their services."

Tiered per-device, volume-discounted. Factors named: endpoint count, promotions/incentives, region, product bundle. Quote required.

**Anything between the $1.50 and $3.75 endpoints is NOT published** → `[CS: UNKNOWN]`. Third-party claims of "~$2.00–$2.50 at 500 devices" circulate on MSP comparison blogs (superops.com, breezermm.com, faddom.com, mspcompared.com, tekpon.com, vendr.com) — `[CS: LOW]`, **do-not-cite tier**, no methodology, commercially motivated.

---

### SRC-C-007 — Action1 (second-hand; vendor page unreachable)

**Publisher:** Action1 | **URLs:** https://www.action1.com/pricing/ (403 to direct fetch) · https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/

- **Free for first 200 endpoints, permanent (not a trial), no feature limitations** — Action1's own company-news page is the source, surfaced via search but not read directly by me. `[CS: HIGH]`
- Paid "Growth" tier **$4/endpoint/month plus support fees**, larger environments custom quote. `[CS: MEDIUM]` — from search summaries of Action1's pricing page and third-party pages; **I could not read Action1's pricing page.**

Structural point worth flagging without interpretation: the free tier at 200 endpoints sits squarely inside the SMB band. This is a **price floor of $0 for the sub-200-endpoint segment**, published by a direct competitor.

---

### SRC-C-008 — Qualys VMDR (prices published on AWS Marketplace, not on qualys.com)

**Publisher:** AWS Marketplace / Qualys | **URL:** https://aws.amazon.com/marketplace/pp/prodview-5g6ecotizcru6

**1-month contract, published** — `[CS: VERIFIED]` (read on the AWS Marketplace listing)

| Host package | Monthly |
|---|---|
| VMDR Package 128 | $596.00 |
| VMDR Package 256 | $942.00 |
| VMDR Package 512 | $1,489.00 |
| VMDR Package 1024 | $2,352.00 |
| VMDR Package 1536 | $3,075.00 |
| VMDR Package 2048 | $3,719.00 |
| VMDR Package 2560 | $4,309.00 |
| VMDR Package 3072 | $4,857.00 |
| VMDR Package 4096 | $5,878.00 |
| VMDR Package 5120 | $6,805.00 |

Also available: "12-month contract — save up to 17%". **Annual per-tier prices were not displayed in the section I read** → `[CS: UNKNOWN]`.

Host definition per the listing: "a single asset you scan or monitor, such as a server, virtual machine, or workstation… every virtual machine counts as one host." Dimension steps: 64, 128, 256, 512, 1024, 1536, 2048, 2560, 3072, 4096, 5120.

Derived, arithmetic only: Package 1024 = $2,352/mo ÷ 1,024 = **$2.30 / host / month** at 1-month term (derived, not a Qualys-published rate).

**Qualys does not publish list pricing on qualys.com** → `[CS: VERIFIED — NOT PUBLISHED]`.
Third-party "$199–$250 per asset per year" claims (cycognito, underdefense, costbench, cipherssecurity, vendorbenchmark) — `[CS: LOW]`, **do-not-cite**. One of these pages also volunteers a "realistic Year 1 total of $30,000–$40,000 for 100 assets" with no method shown; that is exactly the sort of figure that gets quoted in a deck and cannot be defended.

---

### SRC-C-009 — Rapid7: NOT PUBLISHED

**URL:** https://www.rapid7.com/products/insightvm/pricing/ — fetched. `[CS: VERIFIED — NOT PUBLISHED]`

No per-asset price. InsightVM is now positioned inside **Exposure Command** with two tiers — Essentials (InsightVM + attack surface management) and Ultimate (adds cloud and application security). Page routes to "Request demo," "Start free trial," or sales contact. No minimum asset count published.

Note the packaging move itself: a vulnerability-management point product re-fronted as a consolidated "Command" platform with pricing withdrawn from public view.

---

### SRC-C-010 — ConnectWise RMM: NOT PUBLISHED

**URL:** https://www.connectwise.com/platform/rmm/request-pricing — fetched. `[CS: VERIFIED — NOT PUBLISHED]`

Three tiers shown by feature only: Essentials, Pro, Premium. No prices anywhere on the page. Verbatim: *"To get your customized quote, simply fill out the form below, and we'll be in touch shortly."* Phone 800-671-6898.

Community-reported "$1.50–$3.50 per agent/month" figures (etducky, breezermm, peerspot, checkthat.ai) — `[CS: LOW]`, **do-not-cite**.

---

### SRC-C-011 — Kaseya / Datto: NOT PUBLISHED on vendor site; trade-press figures second-hand

**Kaseya's own page** https://www.kaseya.com/request/pricing-kaseya-365-endpoint/ is a pricing-request form. `[CS: VERIFIED — NOT PUBLISHED]`

Trade-press reported launch pricing, **ChannelE2E, https://www.channele2e.com/news/kaseya-365-subscription-debuts-at-3-99 — returned HTTP 403 to my fetch, so the following is from search-result summary only, and the article date is unconfirmed:**
- Kaseya 365 at **$3.99 per endpoint/month** as a limited-time offer "until the end of May," standard price **$5.25 per endpoint**. `[CS: MEDIUM]`
- Kaseya 365 **Express** (without MDR) at **$1.75 per endpoint**, rising to standard **$2.25**. `[CS: MEDIUM]`
- Later/other reporting: Express ~$2.20, Pro ~$4.99 per endpoint/month. `[CS: LOW]` — source and date not established.

**Treat all Kaseya figures as vendor-announced promotional pricing reported by trade press, not as a current published price list.** If this number matters to the packaging decision, it needs a direct read of a Kaseya price sheet or a partner quote.

---

### SRC-C-012 — Ivanti Neurons: NOT PUBLISHED

`[CS: HIGH — NOT PUBLISHED]` (from search results across superops, xurrent, TrustRadius, G2, Capterra, GetApp; **I did not fetch ivanti.com directly**)

- No public price list. Quote-based, sized to organisation.
- Structure reported as a **platform fee plus device-based licences**; also described elsewhere as per-user, per-year SaaS subscription. These two descriptions are not obviously consistent → `[CS: LOW]` on the licensing metric.
- TrustRadius and G2 both carry **no pricing plans at all** for Ivanti Neurons for Patch Management.
- SHI reseller listing shows a "$24.00" reference figure with no unit or term context — https://www.shi.com/product/45892341/ — **uninterpretable as given. Do not use.** `[CS: FABRICATION RISK]` if anyone attaches a unit to it.

---

### Comparison-set summary — publication status

| Vendor | Published price? | Metric | Evidence tag |
|---|---|---|---|
| Microsoft Intune (add-ons, Plan 2) | **Yes, full** | per user/month | `[CS: VERIFIED]` |
| Microsoft Intune Plan 1 / Suite | Yes, in FAQ prose only | per user/month | `[CS: HIGH]` |
| Microsoft 365 bundles | **Yes, full** | per user/month | `[CS: VERIFIED]` |
| ManageEngine Endpoint Central | **Yes, full list by tier & volume** | per N endpoints/yr | `[CS: VERIFIED]` |
| Qualys VMDR | **Yes — on AWS Marketplace only** | per host package/month | `[CS: VERIFIED]` |
| Automox | Entry tier only ($1) | per endpoint/month | `[CS: VERIFIED]` |
| Action1 | Free tier + entry tier reported | per endpoint/month | `[CS: HIGH]` / `[CS: MEDIUM]` |
| NinjaOne | Range statement only, no list | per device/month | `[CS: VERIFIED]` as a range |
| Rapid7 | **No** | — | `[CS: VERIFIED — NOT PUBLISHED]` |
| ConnectWise RMM | **No** | — | `[CS: VERIFIED — NOT PUBLISHED]` |
| Kaseya / Datto | **No** (vendor site) | — | `[CS: VERIFIED — NOT PUBLISHED]` |
| Ivanti Neurons | **No** | — | `[CS: HIGH — NOT PUBLISHED]` |

**Structural observation, offered as an ingredient not a conclusion:** the set splits cleanly. Products sold direct-to-IT-department publish prices (Microsoft, ManageEngine, Automox entry, Action1, Qualys-via-marketplace). Products sold through the channel do not (NinjaOne says so explicitly, ConnectWise, Kaseya, Ivanti, Rapid7). Pure Ecoverse's channel posture determines which convention it falls under, and that is a decision, not a finding.

---

## 2. IT SPEND STRUCTURE BENCHMARKS

### SRC-C-013 — Flexera, IT spend as % of revenue by industry

**Publisher:** Flexera | **URL:** https://www.flexera.com/blog/perspectives/it-spending-by-industry/ | **Report:** Flexera 2020 State of Tech Spend Report, n=303
`[CS: VERIFIED]` (read on Flexera's page) · `[WOBBLY — vendor-sponsored survey]` · **2020 data — six years stale**

| Segment | IT spend as % of revenue |
|---|---|
| All-industry weighted average | **8.2%** |
| Software | 24.7% |
| Tech hosting / cloud | 15.9% |
| Financial services | 10.0% |
| Healthcare | 5.0% |
| Industrial products | 4.1% |

Flexera is described in secondary sources as "the only free source breaking this metric out by industry." That claim matches what I observed but I have not tested it exhaustively → `[CS: MEDIUM]` on the exclusivity claim.

---

### SRC-C-014 — Deloitte Global Technology Leadership Study, tech budget as % of revenue

**Publisher:** Deloitte
`[CS: MEDIUM]` — **from search-result summaries of Deloitte Insights pages; I did not fetch a Deloitte page carrying the figure. Verify before quoting.**

Reported trend of average tech budget as % of revenue: 3.28% (2016) → 3.64% (2018) → 4.25% (2020) → **5.49%** (2022 data, published in the 2023 study). A separate Deloitte Romania page is titled "organizations spend less than 5% of revenues on technology." A 2025 Deloitte CIO survey median of 5.6% is cited by aggregators but I found no Deloitte page confirming it → `[CS: LOW]`.

Relevant 2026 Deloitte press release found but not read: https://www.deloitte.com/us/en/about/press-room/2026-global-technology-leadership-study-release.html — "From Operators to Orchestrators." `[CS: LOW — not read]`

---

### SRC-C-015 — The authoritative IT-spend benchmarks are paywalled. This is a finding.

`[CS: VERIFIED]` — confirmed by fetching the pages

- **Avasant / Computer Economics, "IT Staffing Ratios"** — https://www.computereconomics.com/it-staffing-ratios/ — public page lists 17 IT job-function metric categories and example metric names ("Users per Help Desk Staff Member, by Organization Size", "Desktop Support Staff as Percentage of IT Staff") and **discloses no figures, no study year, no sample size.** All data behind "Clients: Log in and download the full report now."
- **Avasant / Computer Economics, "IT Spending and Staffing Benchmarks"** — https://www.computereconomics.com/it-spending-and-staffing-benchmarks/ — same posture.
- **Gartner IT Key Metrics Data** — paywalled; only referenced second-hand.

**Consequence for this dimension, stated plainly:** every free-web figure for IT spend as % of revenue by company size traces back to one of these paywalled reports via an SEO aggregator, and the aggregators **contradict each other**. Examples observed in the same search: "small businesses 3.4% / mid-market 4.1% / enterprise 3.7% (attributed to Gartner IT Key Metrics Data 2025)" versus "small businesses 1–49 employees 6.9% / enterprise 5,000+ 3.7% (attributed to Deloitte)" versus "mid-market 6–8%" versus "4–6% baseline, 5% enterprise median." Sources: itbudgetcalculator.com, vendorbenchmark.com, blog.ctoinput.com, thenetworkinstallers.com, medhacloud.com, stealthagents.com.

**All of the above are `[CS: LOW]` and belong in the do-not-cite tier.** A 2× spread on the same metric for the same segment means at least one is wrong and none can be traced. `[WOBBLY]`

---

### SRC-C-016 — Gartner worldwide IT spending forecast (macro only)

`[CS: HIGH]` on the headline numbers (Gartner press-release titles are self-describing); `[CS: MEDIUM]` on the detail, which came from search summaries — **gartner.com returned 403 to direct fetch.**

- 2026 worldwide IT spending forecast **$6.37 trillion, +14.2%** — July 2026 forecast. https://www.gartner.com/en/newsroom/press-releases/2026-07-27-gartner-forecasts-worldwide-it-spending-to-grow-14-point-2-percent-in-2026-totaling-6-point-37-trillion
- Forecast revised upward repeatedly within 2026: Oct 2025 → +9.8% / >$6T; Feb 2026 → +10.8% / $6.15T; Apr 2026 → +13.5% / $6.31T; Jul 2026 → +14.2% / $6.37T.
- Software spending growth 2026 revised **down** to 14.7% from 15.2% `[CS: MEDIUM]`
- IT spending in Europe forecast +11% in 2026 `[CS: MEDIUM]` — https://www.gartner.com/en/newsroom/press-releases/gartner-forecasts-information-information-spending-in-europe-to-grow-11-percent-in-2026 (relevant given Beth's UK/GDPR jurisdiction)
- Worldwide AI spending +49.5% in 2026 `[CS: MEDIUM]`

**This is macro market-size data. It says nothing about willingness to pay for endpoint management, and should not be used as a proxy for it.**

---

### SRC-C-017 — Tool sprawl and licence waste — Zylo

**Publisher:** Zylo | **URL:** https://zylo.com/news/2026-saas-management-index | **Date:** 2026-01-29
**Method:** "more than 40 million SaaS licenses and $75 billion in spend under management" plus a survey of **218 IT leaders**
`[CS: VERIFIED]` (read on Zylo's page) · `[WOBBLY — vendor-sponsored; Zylo sells SaaS management, so waste findings are commercially load-bearing for the publisher]`

- Median SaaS spend per employee: **$9,455**
- Licence waste: **36% of licences unused** (measured against "industry-recommended utilization levels")
- Large enterprises add an average of **21 applications per month**
- **Business units control 81% of SaaS spend; IT controls 15%**
- **78% of IT leaders** reported unexpected charges from consumption or AI pricing
- **61% of IT leaders** cut projects due to unplanned cost increases
- AI-native app spend growth: **+393% YoY** in orgs with 10,000+ employees; **+108%** overall
- Expense-based (i.e. off-contract) SaaS spend up **+267% YoY**

Not in the report: total wasted spend in dollars, average application count across all org sizes. A widely repeated "$19.8M wasted per organization" figure and a "305 average / 240 median applications" figure appear in aggregators citing Zylo; **neither was on the Zylo page I read** → `[CS: LOW]`, do-not-cite.

---

### SRC-C-018 — Tool sprawl in the SMB segment — JumpCloud

**Publisher:** JumpCloud | **URL:** https://jumpcloud.com/blog/sme-it-report-q1-2025 | **Date:** 2025-01-28
**Method:** 900 SME IT professionals, US / UK / Australia
`[CS: VERIFIED]` (read on JumpCloud's page) · `[WOBBLY — vendor-sponsored; JumpCloud sells consolidation]`

- **26% of SME IT admins are managing 11 or more solutions**
- **47% rank "managing too many point solutions" as their top challenge**
- **39% of IT budgets are consumed by licensing fees due to redundant or overlapping software**
- Only **30% patch critical systems within hours**
- **46% of SMEs experienced a cyberattack**; of those, **33% involved AI**
- **90%** worry about unauthorised apps; **38%** have no full app-discovery process
- **35% of SMEs fully rely on MSPs**; **44%** worry whether providers can effectively manage security
- **77% anticipate a budget increase**; top areas security **48%**, AI tools **42%**, cloud infrastructure **40%**
- In-office mandates: US 57%, UK 42%, Australia 41%

This is the closest published material to an "avoided effort / tool cost reduction" value story in the SMB band. It is a vendor survey by a consolidation vendor. Both facts matter equally.

---

### SRC-C-019 — Discretionary vs committed IT budget split

**`[CS: UNKNOWN]` — no free published source found.**

Searched for published run/grow/transform splits and discretionary-vs-committed percentages. The concept is ubiquitous in Gartner and Avasant framing; **the numbers are paywalled.** No public survey found that quantifies what share of an IT budget is uncommitted in-year.

What would resolve it: Gartner IT Key Metrics Data (paid), Avasant IT Spending & Staffing Benchmarks (paid), or a primary survey. **Per CLAUDE.md §4 this is terminal. No estimate offered.**

---

### SRC-C-020 — Endpoint management spend per device

**`[CS: UNKNOWN]` — no published benchmark found.**

No published source gives endpoint-management spend per device as a market benchmark. Vendor list prices (§1) are prices, not spend. Per-device *spend* would require either survey data or aggregated purchase data, and neither is public.

**Do not construct this figure by averaging the §1 price table.** That would produce a number with no denominator, no attach assumptions, and no discount reality, and it would immediately be treated as a benchmark by whoever reads the deck next.

---

## 3. WHAT IT BUYERS ACTUALLY PAY A PREMIUM FOR

### SRC-C-021 — G2 Digital Markets, "The State of Software Buying in 2026" ⭐ STRONGEST SOURCE IN THIS SECTION

**Publisher:** G2 Digital Markets | **URL:** https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf
**Method (verbatim from p.22):** "conducted online in August 2025 among 3,385 respondents in Australia (n=281), Brazil (n=278), Canada (n=293), France (n=283), Germany (n=279), India (n=260), Italy (n=263), Mexico (n=288), Spain (n=273), the U.K. (n=299), and the U.S. (n=588), at businesses across multiple industries, ages (1 year in business or longer), and sizes (5 or more employees). Business sizes represented in the survey include: 1,676 small (5-249 full-time employees), 822 midsize (250-999), and 887 enterprise (1,000+)."

`[CS: VERIFIED]` — **every figure below was read directly off the report pages, not from a summary.** · `[WOBBLY — vendor-sponsored: G2 operates software marketplaces and monetises vendor visibility; the "be visible on review sites" conclusions are commercially self-serving. The underlying percentages are still the best published data located.]`

**⚠ SCOPE LIMIT — the single most important caveat in this dossier.** This is **general business software**, not endpoint management, not IT operations tooling. It is the best published proxy available. It is **not** evidence about endpoint-management buyers. Do not re-label it as such.

**Budget direction (p.2)**
- **77%** plan to spend much or somewhat more on software in 2026 (18% much more + 59% somewhat more)
- 19% about the same; 3% somewhat less; **1% much less** — only **4% expect to cut**
- **$72,000** — annual average software spend of the most recent purchase by U.S. buyers in 2025
- **8.75 months** — average time organisations expect to prove ROI

**What buyers seek when shortlisting (p.8)** — Q: "What type of information do you seek when using software review and comparison sites to research software?" n=3,385, multiple response

| Factor | % |
|---|---|
| **Security details** | **58%** |
| Value for money | 51% |
| Clear feature information | 51% |
| Ease of use | 48% |
| **Pricing** | **47%** |

Note the ordering: security ranks above both "value for money" and "pricing." Pricing ranks **last of five.**

**Why vendors get removed from the final shortlist (p.12)** — n=3,385, multiple response

| Reason | % |
|---|---|
| **Security or compliance gaps** | **55%** |
| Unfavorable contract terms | 52% |
| Poor trial experiences | 50% |

**Research sources that influence shortlisting (p.7)** — separate G2 March 2026 survey, n=1,076 B2B decision makers, North America / EMEA / APAC
AI chat (e.g. ChatGPT) **55%** · Software review sites 43% · Vendor website 36% · Research analyst firms 36% · Peers & colleagues 33% · Independent forums 30% · Thought leader content 28% · Internal supplier portal 20% · **Vendor salesperson 19%**

**Top 3 most influential research sources (p.7)** — n=3,385, select up to four, only 3 of 10 options displayed
Industry experts **49%** · Review and comparison sites **39%** · Generative AI **38%**

**Decision speed (p.11)**
- **50% cite a trial as the decisive factor** in their purchase decision vs **35% influenced by a sales presentation**
- Successful adopters decide within three months and focus on **three vendors**

**AI posture — this is the item-4 answer on AI premium (p.15)** — Q: "Which of the following best describes your organization's approach to AI adoption?"

| Posture | Successful adopters (n=1,147) | Disappointed buyers (n=1,368) |
|---|---|---|
| Aggressive — "we aggressively test and deploy emerging AI technologies" | **17%** | **33%** |
| Balanced — "we're comfortable adopting proven AI technologies" | **74%** | 63% |
| Cautious — "we tend to avoid AI technologies" | 9% | 4% |

G2's own framing, verbatim: *"disappointed buyers are nearly twice as likely to adopt AI aggressively"* and *"For vendors, this means positioning AI capabilities around practical, high-value outcomes rather than pushing cutting-edge features that may introduce unnecessary complexity."*

**Implementation risk (pp.3, 18, 19)**
- **61%** of buyers experienced at least one unexpected disruption during implementation in the past 18 months
- **34%** successful adopters (no disruption, no regret, n=1,147) vs **66%** unsuccessful (n=2,238); **40%** are "disappointed buyers" — both disruption and regret (n=1,368)
- Most common disruptions (n=2,068): **integration issues 40%**, data migration problems 38%, delays 38%
- **89%** of buyers who regret their purchase experienced implementation disruptions
- Of affected buyers: **44% replace the software entirely**, 43% ask the vendor to remedy, **38% seek to renegotiate the contract**
- Disappointed buyers are "twice as likely to spend significantly more on software next year" and **44% will switch to a different vendor's product**

**G2's explicit pricing-transparency recommendation (p.9), verbatim:** *"Publish transparent pricing, integration details, security information, and ROI examples openly. Clear, direct information lowers friction and signals readiness."*

---

### SRC-C-022 — Capterra 2026 Software Buying Trends

**Publisher:** Capterra (Gartner Digital Markets) | **Date:** 2025-10-07
**URLs:** https://www.capterra.com/resources/software-buying-trends-2026/ · https://www.businesswire.com/news/home/20251007148096/en/

Fetched the Capterra resource page directly. `[CS: VERIFIED]` for what was on it:
- Only **1 in 3** software buyers avoids both disruption and regret; **66%** encounter one or both
- **89%** of buyers who regret their purchase experienced implementation disruptions
- Over half of successful adopters create a formal implementation plan
- Successful adopters typically select software within three months
- Method: "more than 3,300 global software buyers"

**From search summaries only, NOT on the page I fetched** → `[CS: MEDIUM]`, verify before quoting:
- Top shortlisting factors: **ease of use 34%**, **security 32%**, product features/functionality 31%
- **36%** selected "adding functionality, such as AI" as the principal driver for increasing software spend
- 41% of SMBs shaped by user reviews and ratings; 50% cite trial as decisive vs 35% sales presentation
- "Pricing mismatch" and "steep learning curve" named as top purchase barriers
- Method stated as 3,385 decision-makers across 11 countries

**Note:** the "3,385 across 11 countries" figure is identical to the G2 Digital Markets methodology in SRC-C-021. Capterra is a Gartner Digital Markets property and G2 Digital Markets references Capterra, Software Advice and GetApp on p.9. **These are very likely the same underlying survey, or closely related ones — do not count them as two independent sources.** `[CS: HIGH]` on the non-independence.

---

### SRC-C-023 — Gartner on security vendor consolidation

`[CS: MEDIUM]` — **gartner.com press release returned HTTP 403; figures are from search-result summary only. 2022 vintage.**
**URL (not fetchable):** https://www.gartner.com/en/newsroom/press-releases/22022-09-13-gartner-security-and-risk-management-summit-emea-2022-day-2-highlights

- **75% of organizations pursuing security vendor consolidation** in 2022 (up from 29% in 2020, per the widely quoted version of this stat — that second figure I did not see and do not vouch for)
- **More than 85%** of organizations pursuing consolidation find it challenging to reduce the total number of vendors
- **More than half** were consolidating to increase security efficacy; **just over one-third (35%)** named cost reduction as a primary motivation

**The 35% figure is the interesting one for Dimension C and it cuts against the intuitive "consolidation = cost story" framing.** It needs primary verification before it goes in a brief. Gartner also publishes paywalled notes on this (documents 3988450, 3988240, 5442563, 5314263, 4008930) — all behind the client wall.

---

### SRC-C-024 — Direct willingness-to-pay evidence for endpoint management

**`[CS: UNKNOWN]` — nothing found.**

No published survey, conjoint study, Van Westendorp analysis, or price-sensitivity study located for:
- endpoint management software specifically
- governed AI action / agentic remediation in IT operations
- connected patch + vulnerability + config + inventory + compliance as a bundle

**This directly corroborates the source doc's own statement.** The source doc was right. Nothing in this scout run changes it.

What would resolve it: primary research. A conjoint or Van Westendorp study with SMB/mid-market IT buyers and MSP principals. Nothing published will substitute.

---

## 4. ATTACH-AND-EXPAND / LAND-AND-EXPAND BENCHMARKS

**Scope note per task instructions:** N-able's internal Cove and Adlumin attach data is out of scope. Below is only the public benchmark context it would be measured against. N-able's own *publicly disclosed* NRR is included because it is an SEC filing.

### SRC-C-025 — SaaS Capital 2026 private B2B SaaS benchmarks

**Publisher:** SaaS Capital | **URL:** https://www.saas-capital.com/blog-posts/benchmarking-metrics-for-bootstrapped-saas-companies/
**Method:** annual survey of **1,000+ private B2B SaaS companies**, 2026; cohort shown is **bootstrapped, $3M–$20M ARR**
`[CS: VERIFIED]` (read on SaaS Capital's page) · `[WOBBLY — lender-sponsored; SaaS Capital is a debt provider to SaaS companies]`

| Metric | Median | 90th percentile |
|---|---|---|
| **Net Revenue Retention** | **103%** | **117.9%** |
| **Gross Revenue Retention** | **91%** | **100%** |
| Revenue growth (annual) | 15% | 42.3% |

Report notes growth declined from a prior-year median of 20% while retention metrics stayed "essentially flat."

Aggregator claim that private B2B SaaS median NRR compressed from ~105% (2021) to 101–103% (2026) → `[CS: LOW]`, not on the SaaS Capital page I read.

---

### SRC-C-026 — N-able public disclosure (SEC 10-K)

**Filing:** N-able, Inc. Form 10-K, accepted by SEC EDGAR **2026-02-26**
**Read via:** https://www.stocktitan.net/sec-filings/NABL/10-k-n-able-inc-files-annual-report-450b4b469cea.html
`[CS: HIGH]` — read on StockTitan's rendering of the filing, **not on sec.gov directly.** Confirm against the EDGAR original before any external use.

**Dollar-based net revenue retention rate**, trailing twelve months ended 31 December:

| Year | DBNRR |
|---|---|
| 2025 | **103%** |
| 2024 | **103%** |
| 2023 | **110%** |

Total revenue: $511.4M (2025) · $466.1M (2024) · $421.9M (2023)
Customers with ARR over $50,000: **2,671** at 2025-12-31, up 13.7% from 2,349; representing **~61% of total ARR** (vs 57% in 2024)
Net loss $(17.0)M in 2025 vs net income $31.0M in 2024; Adjusted EBITDA $153.2M vs $169.4M

Corroborating: Q4 2025 earnings reported DBNRR "approximately 103% on a reported basis and 102% on a constant currency basis." `[CS: MEDIUM]` — from investing.com / Motley Fool transcript summaries, not read directly.

**Placed next to SRC-C-025 without comment:** 103% sits exactly at the private B2B SaaS median and roughly 15 points below the 90th percentile. What that means is Beth's call, not mine.

---

### SRC-C-027 — CrowdStrike module adoption (the canonical public attach benchmark)

**Filing:** CrowdStrike Holdings Form 8-K exhibit 99.1, Q4 & FY2026 results
**URL:** https://www.sec.gov/Archives/edgar/data/1535527/000153552726000007/crwd-20260303xex991.htm
`[CS: VERIFIED]` — **read the SEC filing directly**

**As of 2026-01-31:** module adoption **50%, 34%, and 24%** for **six or more, seven or more, and eight or more modules** respectively (subscription customers, excluding Falcon Go customers).
**Ending ARR: $5.25 billion, +24% YoY.**
Gross retention rate: **definition given in the operational-measures section but no percentage disclosed in this release** → `[CS: UNKNOWN]` for Q4 FY2026.

**Prior year, as of 2025-01-31** — `[CS: MEDIUM]`, from search summary of https://ir.crowdstrike.com/news-releases/news-release-details/crowdstrike-reports-fourth-quarter-and-fiscal-year-2025 which I could not fetch (timeout):
- **67%** of customers with **5 or more** modules
- **48% / 32% / 21%** for 6+ / 7+ / 8+ modules
- **97%** gross retention rate

Year-over-year on the comparable 6+/7+/8+ series: 48%→50%, 32%→34%, 21%→24%. `[CS: MEDIUM]` on the FY2025 leg.

---

### SRC-C-028 — Attach-rate benchmarks specific to endpoint management / RMM

**`[CS: UNKNOWN]` — none found published.**

ConnectWise, Kaseya, Datto (post-acquisition) and Ivanti are all private and disclose no attach or expansion metrics. CrowdStrike's module adoption (SRC-C-027) is a security-platform benchmark, not an endpoint-management one. **No published attach-rate benchmark exists for this category.** No proxy offered.

---

## 5. SMB / MID-MARKET IT STAFFING RATIOS — THE "AVOIDED EFFORT" DENOMINATOR

### `[THIN DOMAIN — for this specific metric]` · `[WOBBLY]`

**Headline: there is no free, traceable published primary source for endpoints-per-IT-admin.** Name this before any avoided-effort value claim is built.

### SRC-C-029 — Confirmed paywall
Avasant / Computer Economics, "IT Staffing Ratios" — https://www.computereconomics.com/it-staffing-ratios/ — **fetched; zero figures disclosed publicly.** Public page lists metric *names* only, e.g. "Users per Help Desk Staff Member, by Organization Size" and "Desktop Support Staff as Percentage of IT Staff," across 17 IT job functions and "over 100 specific IT support metrics." No study year, no sample size, no benchmark values. `[CS: VERIFIED — PAYWALLED]`

### SRC-C-030 — Figures in public circulation, and why they are do-not-cite

The following numbers recur across the open web. **Every one of them appears on a vendor blog or staffing-agency page with no traceable primary citation.** `[CS: LOW]` — **do-not-cite tier.**

| Circulated figure | Where it appears |
|---|---|
| 1:27 cross-industry IT staff : employees | goworkwize.com, talentmsh.com |
| "Gartner recommends 1:70" service desk analyst : users | multiple vendor blogs, no Gartner document cited |
| 1:50–1:75 general business | ninjaone.com/blog/it-staffing-ratio, atera.com/blog/it-staffing-ratios |
| 1:25 tech company | goworkwize.com |
| 1:100 small business leveraging MSPs | goworkwize.com |
| 1:50–1:100 regulated (finance/health/gov) | goworkwize.com |
| 1:200–1:500 manufacturing / retail | goworkwize.com |
| 1:30–1:100 tech / SaaS | goworkwize.com |

Note that **NinjaOne and Atera — two direct competitors in your comparison set — are among the publishers of these ratios.** They are marketing artefacts for products whose value proposition is raising the ratio.

One methodological point from the same pool worth keeping even though the numbers aren't usable: *"Metrics are more accurate and more useful when based on the number of users of IT, rather than traditional IT-staff-to-employee ratios."* Source: auvik.com/franklyit/blog/tech-user-ratio/ — `[CS: LOW]` as a claim, but it flags a real denominator-definition problem for any avoided-effort model.

### SRC-C-031 — Endpoints per IT admin, specifically

**`[CS: UNKNOWN]`.** Not found published, free or otherwise. All located ratios are **staff-to-employee** or **staff-to-user**, not **staff-to-endpoint** — and the two diverge as device-per-user counts rise.

Closest published adjacent data is SRC-C-018 (JumpCloud): 26% of SME IT admins manage **11 or more solutions** and 47% rank too many point solutions as their top challenge. **That is tools-per-admin, not devices-per-admin.** It does not substitute.

**What would resolve it:** Avasant IT Staffing Ratios (paid), Gartner IT Key Metrics Data (paid), or primary research. **Per CLAUDE.md §4, unknown is terminal here. No modelled endpoints-per-admin figure is offered, and one should not be back-derived from the ratios in SRC-C-030.**

---

## TRUST LADDER

**Strongest — read on the primary source, use freely with citation**
- SRC-C-001 Microsoft 2026 pricing & packaging update (+ FAQ) — verified list prices, verified effective date, verified capability migration
- SRC-C-002 Microsoft Intune add-on price table
- SRC-C-005 ManageEngine Endpoint Central full published list
- SRC-C-008 Qualys VMDR AWS Marketplace 1-month contract prices
- SRC-C-021 G2 Digital Markets State of Software Buying 2026 — read page by page from the PDF, full methodology captured
- SRC-C-027 CrowdStrike Q4 FY2026 8-K exhibit — read on sec.gov
- SRC-C-004 Automox published entry tier and custom-pricing posture
- SRC-C-006 NinjaOne range statement and its stated reason for not publishing
- SRC-C-017 Zylo 2026 SaaS Management Index (vendor, but figures read on source)
- SRC-C-018 JumpCloud Q1 2025 SME IT Trends (vendor, but figures read on source)
- SRC-C-025 SaaS Capital 2026 NRR/GRR medians and percentiles

**Verified negative findings — cite these as findings, not gaps**
- SRC-C-009 Rapid7 — not published
- SRC-C-010 ConnectWise RMM — not published
- SRC-C-011 Kaseya — not published on vendor site
- SRC-C-029 Avasant IT Staffing Ratios — paywalled, zero public figures
- SRC-C-015 Gartner IT Key Metrics Data — paywalled

**Directional only — do not put a number on a slide**
- SRC-C-014 Deloitte tech-spend % of revenue (not read on a Deloitte page)
- SRC-C-016 Gartner IT spending forecasts (403; macro only; irrelevant to WTP)
- SRC-C-022 Capterra shortlisting percentages (search summary only, and probably the same survey as SRC-C-021)
- SRC-C-023 Gartner 75% consolidation / 35% cost-motivation (403; 2022 vintage)
- SRC-C-026 N-able DBNRR (read on StockTitan, not EDGAR — verify before external use)
- SRC-C-011 Kaseya $3.99 / $1.75 / $5.25 / $2.25 (trade press, 403, date unconfirmed)
- SRC-C-007 Action1 $4/endpoint Growth tier (vendor page 403)
- SRC-C-013 Flexera 8.2% — verified but **2020 data**

**`[WOBBLY]` — vendor-sponsored, flagged per instruction**
SRC-C-017 Zylo (sells SaaS management; waste findings are self-serving) · SRC-C-018 JumpCloud (sells consolidation) · SRC-C-021 G2 Digital Markets (monetises vendor visibility on review sites; the "be visible on review sites" conclusion is the product) · SRC-C-013 Flexera (sells ITAM/FinOps) · SRC-C-025 SaaS Capital (SaaS lender) · SRC-C-030 NinjaOne & Atera staffing ratios (direct competitors)

**DO NOT CITE — traps, named explicitly**
- **Any IT-spend-%-of-revenue figure from itbudgetcalculator.com, vendorbenchmark.com, costbench.com, checkthat.ai, medhacloud.com, stealthagents.com, thenetworkinstallers.com, blog.ctoinput.com.** These attribute to paywalled Gartner/Deloitte reports and **contradict each other by 2× on the same segment.**
- **Any NinjaOne, ConnectWise, Kaseya, Ivanti or Qualys per-unit price from superops.com, breezermm.com, faddom.com, tekpon.com, mspcompared.com, techbezon.com, etducky.com, rallied.ai, vendr.com, cycognito.com, underdefense.com, cipherssecurity.com, peerspot.com.** No methodology, commercially motivated, mutually inconsistent.
- **The SHI listing showing "$24.00" for Ivanti Neurons for Patch Management** (https://www.shi.com/product/45892341/). No unit, no term, no context. Attaching a unit to this number would be fabrication. `[CS: FABRICATION RISK]`
- **"Realistic Year 1 total of $30,000–$40,000 for 100 Qualys assets"** (costbench/cipherssecurity). Composed of stacked unsourced estimates. Exactly the kind of figure that survives into a board deck.
- **"$19.8M average annual wasted SaaS spend per organization"** and **"305 average / 240 median applications"** attributed to Zylo. Neither was on the Zylo page read. `[CS: LOW]`
- **Any endpoints-per-IT-admin figure.** None is published. Anything that looks like one has been back-derived from staff-to-employee ratios.

---

## TERMINAL UNKNOWNS — carried forward as `[?]` claims

Per CLAUDE.md §4. These are answers, not gaps to fill.

1. **Direct willingness to pay for connected endpoint management with governed AI action.** Nothing published. Requires primary research (conjoint / Van Westendorp with SMB-mid-market IT buyers and MSP principals). Corroborates the source doc verbatim.
2. **Endpoint management spend per device as a market benchmark.** Not published. Do not average the §1 price table to manufacture one.
3. **Discretionary vs committed share of IT budget.** Paywalled (Gartner IT Key Metrics Data, Avasant). No free figure exists.
4. **Endpoints per IT admin, SMB and mid-market.** Not published free. All circulating figures are untraceable vendor-blog numbers.
5. **Attach-rate benchmarks for endpoint management / RMM specifically.** Category is private; nobody discloses.
6. **Microsoft Intune device-only subscription price.** Not on the pages reviewed.
7. **Qualys VMDR 12-month contract prices per host tier.** AWS listing advertises "save up to 17%" but did not display the annual tier prices in the section read.
8. **CrowdStrike Q4 FY2026 gross retention rate.** Definition present in the 8-K; percentage not disclosed.
9. **Whether Intune EPM / Cloud PKI / Enterprise App Management go to E3 or E5-only.** Microsoft FAQ and Patch My PC conflict. Requires the Microsoft Product Terms or a Message Center notice.
10. **Margin / COGS structure for any comparator.** No public source. Not attempted.

---

## READ-FOR-THE-QUESTION MAP

| Question | Go to |
|---|---|
| What does the direct integrated-add-on price anchor look like? | SRC-C-001, SRC-C-002 |
| What does the Intune Suite add over Plan 1, and at what price? | SRC-C-002 (capabilities + $8/$10), SRC-C-001 (now bundled into E3/E5 at +$3) |
| Who in the comparison set publishes prices at all? | §1 summary table |
| What's the floor price in the SMB band? | SRC-C-007 (Action1: $0 to 200 endpoints), SRC-C-004 (Automox: $1) |
| Is there a full published list price to benchmark against? | SRC-C-005 (ManageEngine) |
| Do buyers pay a premium for AI? | SRC-C-021 p.15 — 74% "balanced," aggressive adopters are 2× more likely to be disappointed buyers |
| Does price drive the purchase decision? | SRC-C-021 p.8 — pricing ranks 5th of 5 at 47%; security 1st at 58% |
| What kills a deal? | SRC-C-021 p.12 — security/compliance gaps 55%, contract terms 52%, poor trial 50% |
| Is consolidation a cost story or an efficacy story? | SRC-C-023 — only 35% named cost reduction as primary (needs primary verification) |
| What's the tool-sprawl cost evidence? | SRC-C-018 (39% of SME IT budget to licensing from redundant software), SRC-C-017 (36% licences unused) |
| What NRR should expansion be measured against? | SRC-C-025 (103% median / 117.9% p90), SRC-C-026 (N-able public 103%) |
| What does best-in-class attach look like? | SRC-C-027 (CrowdStrike 50% at 6+ modules) |
| What's the avoided-effort denominator? | **There isn't one.** SRC-C-029, SRC-C-030, SRC-C-031 |
| How long do buyers give you to prove ROI? | SRC-C-021 p.2 — 8.75 months |

---

## SOURCE URLS

**Primary / verified**
- https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates
- https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates-faq
- https://www.microsoft.com/en-us/security/microsoft-intune-pricing
- https://learn.microsoft.com/en-us/intune/intune-service/fundamentals/licenses
- https://learn.microsoft.com/en-us/intune/intune-service/fundamentals/intune-add-ons
- https://www.manageengine.com/products/desktop-central/pricing.html
- https://www.automox.com/pricing
- https://www.ninjaone.com/pricing/
- https://aws.amazon.com/marketplace/pp/prodview-5g6ecotizcru6
- https://www.rapid7.com/products/insightvm/pricing/
- https://www.connectwise.com/platform/rmm/request-pricing
- https://www.kaseya.com/request/pricing-kaseya-365-endpoint/
- https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf
- https://www.sec.gov/Archives/edgar/data/1535527/000153552726000007/crwd-20260303xex991.htm
- https://www.saas-capital.com/blog-posts/benchmarking-metrics-for-bootstrapped-saas-companies/
- https://zylo.com/news/2026-saas-management-index
- https://jumpcloud.com/blog/sme-it-report-q1-2025
- https://www.flexera.com/blog/perspectives/it-spending-by-industry/
- https://www.computereconomics.com/it-staffing-ratios/ (paywall confirmed)
- https://www.capterra.com/resources/software-buying-trends-2026/

**Referenced but not fetchable (403 / timeout) — confidence downgraded accordingly**
- https://www.action1.com/pricing/
- https://www.channele2e.com/news/kaseya-365-subscription-debuts-at-3-99
- https://www.gartner.com/en/newsroom/press-releases/22022-09-13-gartner-security-and-risk-management-summit-emea-2022-day-2-highlights
- https://www.gartner.com/en/newsroom/press-releases/2026-07-27-gartner-forecasts-worldwide-it-spending-to-grow-14-point-2-percent-in-2026-totaling-6-point-37-trillion
- https://ir.crowdstrike.com/news-releases/news-release-details/crowdstrike-reports-fourth-quarter-and-fiscal-year-2025
- https://techcommunity.microsoft.com/blog/microsoftintuneblog/microsoft-365-adds-advanced-microsoft-intune-solutions-at-scale/4474272

**Secondary, tagged in-line**
- https://patchmypc.com/blog/microsoft-intune-suite-pricing/
- https://www.stocktitan.net/sec-filings/NABL/10-k-n-able-inc-files-annual-report-450b4b469cea.html
- https://www.businesswire.com/news/home/20251007148096/en/
- https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/
- https://www.shi.com/product/45892341/ (**do not use**)
