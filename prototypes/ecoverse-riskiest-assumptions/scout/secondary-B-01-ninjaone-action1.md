# Secondary B / 01 — NinjaOne and Action1

The two vendors Beth named. Her note: "NinjaOne's product offering suggests we may be the ones copying here" and "I think NinjaOne might have made a version of their product that works with Intune already."

Both hunches have published support. Details below.

---

## NINJAONE

### N1. Microsoft Intune integration — ANNOUNCED 2025-11-18

**Bucket: (b) ANNOUNCED / EARLY ACCESS at time of publication**

- **Source:** NinjaOne press release, "NinjaOne Announces Microsoft Intune Integration to Simplify Endpoint Management and Boost Productivity", 2025-11-18. https://www.ninjaone.com/press/microsoft-intune-integration/
- **Mirror (independent publisher):** BusinessWire, 2025-11-18. https://www.businesswire.com/news/home/20251118730305/en/NinjaOne-Announces-Microsoft-Intune-Integration-to-Simplify-Endpoint-Management-and-Boost-Productivity
- **Trade press:** ChannelE2E. https://www.channele2e.com/news/ninjaone-adds-microsoft-intune-integration-to-streamline-endpoint-management-for-it-teams-and-msps · Channel Insider. https://www.channelinsider.com/channel-business/helpdesk-itsm-and-other-tools/ninjaone-integration-microsoft-intune/

**Claimed capability, from the press release** — this is a source about what NinjaOne CLAIMS, not what it does:
- Streamlines ingestion of Intune device data into NinjaOne `[CS: HIGH — claim accurately extracted]`
- "Unified visibility across Intune and NinjaOne-managed devices (smartphones to servers)" via single console `[CS: HIGH — claim]`
- Discovery, deployment, monitoring, management of both estates from NinjaOne `[CS: HIGH — claim]`
- Deep links back to assets in Intune `[CS: HIGH — claim]`
- "Consistent policy enforcement and accelerated vulnerability remediation across all devices" `[CS: HIGH — claim]` `[WOBBLY]` — "accelerated vulnerability remediation" is a marketing phrase; no mechanism described in the release
- NinjaOne agent deployable *through* Intune `[CS: HIGH — claim]`

**Availability as stated:** "Currently available in early access, generally available by the end of the year" (i.e. end of 2025). `[CS: HIGH]`
**Not verified:** whether GA actually landed. I found no GA confirmation page. `[CS: UNKNOWN]` — needs a NinjaOne release-notes check.

**Named customer quote:** Patrick Taylor, Assistant Manager IT, Bushnell — "The NinjaOne-Intune integration is both seamless and complementary. It allows us to be more responsive and proactive versus reactive." `[CS: HIGH — quote accurately extracted]` Vendor-selected reference customer; treat as marketing.

**Adjacent signal in the same release:** NinjaOne simultaneously named a Microsoft RMM Partner for Windows 365 Business Edition. `[CS: HIGH]`

**Direction of the integration — note for assembly, not a conclusion:** the release frames NinjaOne as the console and Intune as the data source. It does not frame NinjaOne as an add-on inside Intune. Contrast with Action1 (A2 below), which frames itself as extending Intune.

---

### N2. NinjaOne Vulnerability Management — GA 2026-03-16

**Bucket: (a) SHIPPED per vendor + independently reported / claims are (c)**

This is the closest published analogue to the Ecoverse thesis that I found in the MSP-adjacent tier.

- **Primary:** NinjaOne press release, "NinjaOne Revolutionizes Vulnerability Management with AI-driven Assessment to Reduce Risk Faster", 2026-03-16. https://www.ninjaone.com/press/vulnerability-management/
- **Independent trade press, same date:** Help Net Security. https://www.helpnetsecurity.com/2026/03/16/ninjaone-vulnerability-management/ · SiliconANGLE. https://siliconangle.com/2026/03/16/ninjaone-launches-ai-driven-vulnerability-management-speed-detection-remediation/ · Techzine. https://www.techzine.eu/news/security/139630/ninjaone-launches-vulnerability-management-for-detection-and-remediation/
- **Product page:** https://www.ninjaone.com/patch-management/ — titled "Autonomous Patch Management Software"

**Claimed capability (GA per release):**
- Real-time AI-powered vulnerability identification, server-side, continuous — "without scheduled scans" `[CS: HIGH — claim, corroborated across 3 independent publishers]`
- Server-side CVE correlation against existing device telemetry, so **no separate scanning agent and no endpoint performance impact** `[CS: HIGH — claim]` `[WOBBLY]` — "zero endpoint performance impact" is unverifiable from published material
- **Detection wired directly into autonomous patching workflows** for Windows and Linux `[CS: HIGH — claim]` — this is the loop-closing claim
- **"Patch confidence scoring"** and **"Patch Intelligence AI"** — described as analysing patch stability and **auto-pausing risky updates** `[CS: MEDIUM — claim; "auto-pauses risky updates" appears in a third-party blog (rallied.ai), not confirmed in the NinjaOne release I fetched]` `[WOBBLY]`
- AI "automatically prioritize and deploy patches" without manual system-switching `[CS: HIGH — claim]`
- "Leverages millions of data points in NinjaOne's inventory" `[CS: HIGH — claim]` — **note: this is an inventory-signal-into-vulnerability-correlation claim, i.e. two of Ecoverse's five signals**
- Audit-ready vulnerability evidence capture `[CS: HIGH — claim]`
- Third-party scanner import/integration `[CS: HIGH — claim]`
- Cross-platform: Windows and Linux. **macOS not named.** `[CS: HIGH]`

**Beta scale stated:** 500,000+ endpoints. `[CS: HIGH — claim]` Vendor-stated, unverifiable.

**Explicit negative finding — governance:** I asked both the vendor release and Help Net Security specifically for approval-gate and governance language. **Neither mentions approval gates, workflow holds, or sign-off.** Governance is framed only as *audit-readiness after the fact*, not as *approval before action*. `[CS: MEDIUM]` — this is an absence in two sources, not proof of absence in the product. It is the sharpest published seam between NinjaOne's shipped position and a "governed action" thesis. **Do not overweight it without checking NinjaOne's admin docs.**

**Explicit negative finding — correlation scope:** No claim found that NinjaOne correlates *configuration* or *compliance* signals into the vulnerability picture. The correlation claimed is inventory/telemetry → CVE → patch. `[CS: MEDIUM]`

**Quotes:**
- Rahul Hirani, NinjaOne CPO: "Our customers are looking for ways to reduce risk faster without slowing down their teams and organizations." `[CS: HIGH]`
- Spencer Stycos, Great Minds: "The single pane of glass approach gives us consolidated visibility into endpoint health, detected vulnerabilities, and remediation guidance all in one place." `[CS: HIGH]`

**Third-party position marker:** "Top-rated Patch Management Software in G2's 2026 Report, G2 score 98." `[CS: LOW]` — surfaced in a search snippet, not fetched from G2. Do not quote this number. Vendor-reported G2 standing.

---

### N3. NinjaOne — timeline, assembled from the above

| Date | Event | Status at announcement |
|---|---|---|
| 2025-11-18 | Microsoft Intune integration | Early access, GA targeted end-2025 |
| 2025-11-18 | Microsoft RMM Partner, Windows 365 Business Edition | Announced |
| 2026-03-16 | NinjaOne Vulnerability Management + Patch Intelligence AI | GA, after 500k-endpoint beta |

`[CS: HIGH]` on dates and announced status. `[CS: UNKNOWN]` on whether the Intune GA actually shipped.

---

## ACTION1

**Fidelity warning:** `action1.com` returned HTTP 403 to the fetcher on three attempts (homepage, Intune page, Ignite press release). These are public pages with bot protection. I did not bypass. Claims below come from PR Newswire mirrors and search-result snippets. **Everything sourced to a snippet is tagged `[CS: MEDIUM — snippet, not fetched]` and needs a human to open the page.**

### A1. Positioning

- **Category term used:** "Autonomous Endpoint Management" (AEM) and "autonomous patching". `[CS: MEDIUM — snippet]`
- **Homepage tagline:** "Patching That Just Works". https://www.action1.com/ `[CS: MEDIUM — snippet]`
- Described as "built specifically around vulnerability-driven remediation with risk-based prioritization (CVSS + CISA KEV)". `[CS: MEDIUM — snippet]` `[WOBBLY]` — CVSS + KEV is a prioritisation input list, not a correlation engine. Do not read it as the latter.
- Peer-to-peer patch distribution; "no VPN needed". `[CS: MEDIUM — snippet]`

### A2. Microsoft Intune extension — ANNOUNCED at Ignite 2025 (Nov 2025)

**Bucket: (b)/(c) — announced and demoed; no admin doc fetched**

- **Vendor:** https://www.action1.com/company-news/action1-extends-microsoft-intune-with-unified-cross-platform-patching-and-risk-based-vulnerability-management-at-microsoft-ignite-2025/ **(403 — not fetched)**
- **Mirror:** Yahoo Finance. https://finance.yahoo.com/news/action1-extends-microsoft-intune-unified-140000867.html
- **Trade press:** MSSP Alert, "Action1 Brings Unified Patching and Vulnerability Insights to Microsoft Intune". https://www.msspalert.com/news/action1-brings-unified-patching-and-vulnerability-insights-to-microsoft-intune **(403 — not fetched)**
- **Dedicated product page:** https://www.action1.com/ms-intune-action1/ **(403 — not fetched)**
- **Marketing collateral, publicly hosted PDF via reseller:** https://www.factis.com/wp-content/uploads/files/iTSM_Solutions/action1/Action1-How_Action1_Complements_Microsoft_Intune.pdf — *not fetched; flagging as available to Beth*

**Claimed capability:**
- "Close critical security and compliance gaps in Intune" by adding third-party application patching, risk-based vulnerability prioritization, and real-time visibility across Windows, macOS, Linux `[CS: MEDIUM — snippet]`
- Explicitly names the gap: "Intune's native support for third-party software patching is limited" `[CS: MEDIUM — snippet]` — **note: Microsoft materially changed this in June 2026; see file 03**
- "Single, cohesive approach... from device enrollment and policy control to ongoing patching, vulnerability mitigation, and real-time visibility" `[CS: MEDIUM — snippet]`
- Setup time "under five minutes" `[CS: MEDIUM — snippet]` — marketing claim, unverifiable
- Separate published blog on **managing the Action1 agent via Intune**. https://www.action1.com/blog/automating-action1-agent-management-in-intune-keep-your-action1-agent-always-up-to-date/ `[CS: MEDIUM]`

**Direction of the integration:** Action1 positions itself as *complementing/extending Intune* — an add-on. Contrast NinjaOne (N1), which positions Intune as a data source feeding the NinjaOne console. **This is a packaging difference, and it is the ingredient worth carrying into the brief.**

### A3. Action1 timeline

| Date | Event | Source quality |
|---|---|---|
| Nov 2025 | Intune extension announced/demoed at Microsoft Ignite 2025 | `[CS: MEDIUM — snippet + Yahoo mirror]` |
| Dec 2025 | Native Linux agent; "unified cross-platform AEM" | PR Newswire 2025. https://www.prnewswire.com/news-releases/action1-expands-to-linux-delivering-a-unified-cross-platform-solution-for-autonomous-endpoint-management-and-patching-302621728.html `[CS: HIGH]` |
| 2026-03-24 | Help Net Security product showcase: cross-platform + third-party patching. https://www.helpnetsecurity.com/2026/03/24/product-showcase-action1-endpoint-patch-management-solution/ | `[CS: HIGH — independent publisher]` *not fetched* |
| Apr 2026 | Commits to hosting customer data in India by 2026-04-01 | `[CS: MEDIUM — snippet]` |
| ~Jun 2026 | Infosecurity Europe: "autonomous patching becomes the new compliance standard". https://www.prnewswire.co.uk/news-releases/action1-lands-at-infosecurity-europe-as-autonomous-patching-becomes-the-new-compliance-standard-302788164.html | `[CS: HIGH — PR wire]` |
| 2026-08-05 | **Action1 Connector for Jira**, live on Atlassian Marketplace | `[CS: VERIFIED — PR Newswire fetched]` |
| 2026 | Named Strong Performer, Gartner Peer Insights Voice of the Customer, Endpoint Management Tools 2026 | `[CS: MEDIUM — snippet]` |

### A4. Action1 Connector for Jira — SHIPPED 2026-08-05

**Bucket: (a) SHIPPED — on a public marketplace**

- **Source, fetched:** PR Newswire, 2026-08-05. https://www.prnewswire.com/news-releases/action1-brings-autonomous-patch-management-into-jira-to-close-the-gap-between-vulnerability-detection-and-remediation-302843760.html
- **Availability:** "Now available through the Atlassian Marketplace" `[CS: HIGH]`

**What it claims to do:**
- Auto-creates and updates Jira issues for: vulnerabilities, missing updates, reboot-required endpoints, offline endpoints, automation failures `[CS: HIGH — claim]`
- **Ongoing synchronisation, not one-time ticket creation** `[CS: HIGH — claim]`
- Routes to appropriate Jira projects with labels; links back to Action1 findings `[CS: HIGH — claim]`

**Explicit negative findings, both checked directly:**
- **No AI claims in this release at all.** `[CS: HIGH]`
- **No approval-gate or governance language.** `[CS: HIGH]`

**Quotes:**
- Alex Vovk, CEO: "IT and security teams need a continuous path from endpoint risk detection to vulnerability remediation." `[CS: HIGH]`
- Mike Walters, President: "Jira has been one of the most requested integrations from Action1 customers." `[CS: HIGH]`

### A5. Pricing model

**Bucket: (a) SHIPPED — published, though the rate card is not**

- **Free forever for the first 200 endpoints, no functionality limits.** `[CS: MEDIUM — snippet, corroborated across GetApp/G2/vendor snippets]` **This is the load-bearing commercial fact in this file and it is not verbatim-sourced. Verify on the vendor pricing page before it goes anywhere.**
- Free one-time vulnerability assessment for unlimited endpoints. `[CS: MEDIUM — snippet]`
- Above 200 endpoints: **custom quote, no published rate card.** `[CS: MEDIUM — snippet]`
- Licensing doc exists: https://www.action1.com/documentation/licensing-and-subscription-allowance/ *(not fetched — 403 domain)*
- **Third-party price estimates — DO NOT CITE:** "$600–$4,000/yr for 500–2,000 endpoints" and "£24/device/yr" surfaced from aggregator sites (saasworthy, checkthat.ai). `[CS: LOW]` `[WOBBLY]` — aggregator-derived, mutually inconsistent, not vendor-published. **Trap: these look quotable and are not.**
- **UK public-sector listing exists on G-Cloud** — https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/312935898831432 `[CS: MEDIUM]` Not fetched. **This is a genuinely useful lead: G-Cloud entries carry published pricing documents, and Beth works in the UK.**
