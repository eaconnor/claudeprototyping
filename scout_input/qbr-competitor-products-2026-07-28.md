# Scout — the QBR/vCIO product market: what ships, what it automates, what it costs
**Date:** 2026-07-28 · **Slice 2 of 4**
`[WOBBLY]` — the "AI QBR generator for MSPs" sub-market is under 18 months old and thinly populated. Most hits are general B2B-SaaS tools misfiled into MSP searches, or pre-revenue alpha. Treat the category as immature, not mapped.
**All "what it automates" claims are vendor self-report → capped at `[CS: MEDIUM]` regardless of how confident the copy sounds.**

---

## ⚠ THREE CORRECTIONS TO OUR OWN CORPUS

**1. The name is STEFANIE Hammond, not Stephanie.** `[CS: VERIFIED — her own LinkedIn]` We have it wrong in three files.

**2. "ScalePad $300+/user" does not match any fetched pricing page.** Every ScalePad page is priced **per-client** or **per-PSA-seat-block**, never flat per-user. Highest entry tier found is $449/mo (Cognition360, 25 PSA users). Our WTP anchor may refer to a different tier (Lifecycle Manager X stacked on Pro — real friction there) or may simply be wrong. **Treat as unverified.** `[CS: LOW]`

**3. "ScalePad discontinuing" — not found.** Lifecycle Insights' own page states **no planned end-of-life.** What IS real: Lifecycle Manager X launched ~Aug 2025 as "the first Customer Success Platform purpose-built for MSPs"; new tiering Essentials/Pro/X announced at Ignition 2025. `[CS: MEDIUM]`
https://www.scalepad.com/lifecycle-insights · https://www.scalepad.com/pricing

---

## ★ THE HARD NEGATIVE FINDING — Zomentum KILLED its QBR feature

Verbatim, from Zomentum's own release notes:
> **"Sunset Assessments and QBRs: We have discontinued the Assessments and QBRs feature."**

**Date: 1 July 2024.** Stated reason: to "focus on enhancing other core functionalities that better serve our users' needs."
`[CS: VERIFIED — fetched from the vendor's own release notes]`
https://help.zomentum.com/support/solutions/articles/44002429783-release-notes-zomentum-grow

**And its marketing site still advertises the feature** (zomentum.com/zomentum-for-partners/qbr-assessments) — a live example of vendor marketing lagging product reality. `[CS: VERIFIED for the discontinuation; CS: LOW—STALE for the marketing page]`

**A vendor built this, shipped it, and withdrew it.** Zomentum Grow itself is still active at $99/$139/$199 per month (per 2-user block).

---

## Products, by what they actually do

### ScalePad family
| Product | Entry price | Basis | Confidence |
|---|---|---|---|
| Lifecycle Manager (Pro) | $250/mo | per-client, blocks of 5 | `[CS: VERIFIED — fetched]` |
| Lifecycle Manager **X** (add-on) | $75/mo (5 clients @ $15/client) — **requires LM Pro $149/mo underneath** | stacked per-client | `[CS: MEDIUM]` |
| ControlMap | $99/mo | per-client | `[CS: VERIFIED]` |
| Quoter | $299/mo (75 quotes) | quote volume, unlimited users | `[CS: VERIFIED]` |
| Backup Radar | $240/mo (30 clients) + $495 one-time | per-client | `[CS: VERIFIED]` |
| Cognition360 | $449/mo (25 PSA users) | per PSA seat; Power BI licences billed separately by Microsoft | `[CS: VERIFIED]` |

**Lifecycle Insights acquisition: VERIFIED.** ScalePad acquired it 6 April 2023 — third acquisition of 2023 (after Cognition360 and ControlMap; Backup Radar in late 2021). Terms not disclosed.
https://www.scalepad.com/news/scalepad-acquires-lifecycle-insights · https://www.channele2e.com/news/msp-ma-scalepad-acquires-lifecycle-insights

**Cognition360's QBR claim** `[CS: MEDIUM — vendor page]`: components = client health assessment, goals alignment, technology roadmap, recommendations with approvals, follow-up action planning. Automates data aggregation from "45+ tools," "AI-powered deck generation," client-ready recommendations. Leaves to human: conversations, strategy, approvals. **No risk register named. No PSA ticket writeback mentioned.** Testimonial: *"I'm saving more than 150 hours a quarter"* — n=1 anecdote.
https://www.scalepad.com/qbr-software-for-msps

### myITprocess (TruMethods / Kaseya)
QBR Report Builder templates, from IT Glue's blog (4 Oct 2024): Integrated Executive Summary (pulls Autotask, Datto BCDR, Datto RMM, Graphus, NDPro, SaaS Protection) · Budget Report · **Strategic Roadmap** · Alignment Report · Progress Report · **Hardware Warranty Report** · Microsoft License Report + EDR Report ("coming soon"). Output: "professional PDF in a couple of clicks," per-client saveable ToC templates, branding.
**No PSA writeback.** 2025 adds (unverified): automated scheduling synced to Outlook/Teams; multi-language output.
Pricing ~$399–499/mo (10–30 licences), 36-month term commonly cited — `[CS: LOW — aggregator, not vendor-page-verified]`

### vCIOToolbox — the closest direct competitor on our thesis
- **2-way ticket sync to Autotask, 2-way opportunity sync to Autotask** `[CS: MEDIUM]` ← the only real PSA writeback found in the whole sweep
- Named artifacts: QBRs, **GRC (governance/risk/compliance)** — closest thing to a "risk register" claim found anywhere
- Roadmap, explicitly future-tense: *"AI to suggest review topics, highlight risk areas, help MSPs showcase measurable value with less manual prep"* — **NOT shipping** `[CS: LOW — ROADMAP]`
- **Pricing: opaque.** vciotoolbox.com returned 403 on fetch; nothing in search.
https://www.datto.com/integrations/vciotoolbox/

### Datto "Strategy Overview" (Kaseya-native)
"Fully customizable QBR reports, assessments, executive summaries, asset lists, user lists, roadmaps and budgets." Autotask sync of Company/Assets/Contacts — **Ticket sync marked "(Coming soon)," not shipping.** No pricing published.
https://www.datto.com/integrations/strategy-overview/

### ★ HaloPSA — a vendor admitting the gap in its own product
HaloPSA's own recommended Strategic Business Review agenda, with timings:
1. Check-in (5 min) · 2. Relevant Action Items (5) · 3. Recent Project Status (5) · 4. Client Updates & Changes (15) · **5. Review of Exposure and Risk (45 min)** · 6. Issues List (30) · 7. Wrap-up + schedule next + document action items (5)

**"Review of Exposure and Risk" as a named, 45-minute segment is the most explicit risk-register-adjacent agenda item found in the entire sweep** — and it's the longest block on the agenda.

Critically: the article does **not** claim native QBR automation. HaloPSA stores discrete data points and then **explicitly recommends a third-party tool (lifecycleinsights.io) to automate QBR reporting.** `[CS: MEDIUM — self-admission, higher trust than typical marketing]`
https://halopsa.com/what-brings-value-in-your-qbr/

### BrightGauge / ConnectWise "Reports and Dashboards"
$316/mo Standard (2 admins, 2 datasources) · $436/mo Enterprise. Free tier exists. 30+ integrations. `[CS: VERIFIED — fetched]`
https://www.connectwise.com/platform/brightgauge/pricing
ConnectWise Manage native Report Writer is described by multiple sources as *"designed for internal operations — not client communication."*

### CloudRadial — the most complete shipping "AI QBR + client portal"
- Starter $145/mo (≤500 portal users) · Professional from $795/mo · Enterprise from $1,795/mo (+$125/1,000 users beyond 10k) `[CS: VERIFIED — fetched]`
- **Billed on portal users** — not per-tech, not per-endpoint
- Claims "build and present visual QBRs and IT roadmaps," "ditch manual QBR preparation," "now with the power of AI" — but **not itemised against a tier**, so which plan includes QBR automation is unclear `[CS: LOW — gap between marketing and pricing page]`
- Integrations: ConnectWise, Autotask, Kaseya, M365, IT Glue, Auvik
https://www.cloudradial.com/pricing

### MSPbots
À la carte: PSA integration $179/mo · RMM/Accounting $129 · other $89 · admin $29/user/mo · Automation Bots $50/user/mo · AI credits $300–$1,799/mo. `[CS: VERIFIED — fetched]`
**The pricing page does not mention QBR automation anywhere** — the QBR claim exists only at blog level. `[CS: LOW]`
https://mspbots.ai/pricing/

### The AI-QBR category, by shipping status
- **SHIPPING (AI added to existing platform):** ScalePad Cognition360 · CloudRadial
- **SHIPPING (standalone, but SaaS-CS market not MSP):** RetainSure QBR Generator — free tool, claims deck time "from 4-5 hours to 4 minutes" `[CS: LOW — vendor claim, no methodology]`
- **ALPHA / pre-revenue:** Scopable — "onboarding only 25 MSPs in early access, free during alpha"
- **ROADMAP ONLY:** vCIOToolbox's AI features
- **DISCONTINUED:** Zomentum (July 2024)

**No generally-available, publicly-priced, MSP-specific AI QBR generator was found.** That gap may be real or a search blind spot — cannot rule out the latter. `[CS: LOW — absence of evidence]`

---

## The pricing shape finding
Across the whole market, **nobody prices this per-user flat.** It's per-client, per-portal-user, per-PSA-seat, or à la carte integration. Range roughly **$99–$1,800+/month.** Our corpus's "$300+/user" framing does not match the market's billing shape and should be restated.

---

## The two N-able handouts — NOT PUBLICLY REACHABLE
Searched multiple angles for the "EBR framework" handout and "Executive Business Review template." **Not found.** Only LinkedIn posts referencing the boot camp *"Cracking the Code to Building Loyal & Profitable Customers."* `[CS: HIGH confidence in the negative]`

The only N-able artifact surfacing under "Executive Business Review" is unrelated: Cove Data Protection's **Executive Summary Reports** (a backup-reporting PDF export).

**Conclusion: the handouts are almost certainly gated inside the partner portal / n-able u LMS, which is not web-indexed. Beth has to pull them internally — one email to Stefanie.**
