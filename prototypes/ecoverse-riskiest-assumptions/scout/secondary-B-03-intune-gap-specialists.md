# Secondary B / 03 — Intune-gap specialists: what gap, and how sold

Task item 3. For each: what gap in the Microsoft stack it fills, and how it is sold — add-on vs replacement.

**Read the last section first (M1).** Microsoft closed part of the central gap in June 2026, which changes what the specialists below are selling into.

---

## ★ M1. MICROSOFT CLOSED THE THIRD-PARTY PATCHING GAP — GA June 2026

**This is the load-bearing finding in this file. Every "Intune can't patch third-party apps" claim below predates or ignores it.**

**Bucket: (a) SHIPPED — GA, per multiple independent community publishers**

- **Independent confirmation, multiple publishers:**
  - Recast Software (a *competitor* to the capability, confirming it): "Microsoft Intune Enterprise Application Management Auto-Update: Now Generally Available". https://www.recastsoftware.com/resources/microsoft-intune-enterprise-application-management-auto-update-now-generally-available/ `[CS: HIGH — adversarial-interest confirmation]`
  - 4sysops, "Microsoft Intune June 2026: App auto-updates, privilege controls, and enrollment improvements". https://4sysops.com/archives/microsoft-intune-june-2026-app-auto-updates-privilege-controls-and-enrollment-improvements/ `[CS: HIGH]`
  - Petri, "Microsoft Intune Adds Auto App Updates and Enhanced Privilege Controls". https://petri.com/microsoft-intune-app-auto-updates-privilege-controls/ `[CS: HIGH]`
  - Thomas Marcussen, "Auto-Updating Enterprise App Catalog Apps in Intune: What GA Changes". https://blog.thomasmarcussen.com/intune-eam-auto-update-enterprise-app-catalog/ `[CS: MEDIUM]`
  - Jannik Reinhard, "Intune Enterprise App Management: Configure Auto-Update". https://jannikreinhard.com/intune-enterprise-app-management-auto-update/ `[CS: MEDIUM]`
- **All of the above are community/trade, not Microsoft.** I did not fetch a Microsoft first-party GA announcement. `[CS: UNKNOWN]` on Microsoft's own wording. **Get the Microsoft "What's new in Intune" page before this goes in a brief.**

**What shipped:**
- **Enterprise App Management (EAM) auto-update is GA** as of the **June 2026 service release (2606)**, rolled out week of **2026-06-29** `[CS: HIGH]`
- Intune automatically updates **Enterprise App Catalog** apps when a newer version appears in the catalog `[CS: HIGH]`
- **"Automatically applies any newer version that appears in the catalog, whether incremental or major; you do not need to create a new app or configure a supersedence relationship for each update."** `[CS: HIGH]` ← this removes the specific operational toil the specialists sold against
- Curated catalog named examples: Adobe Acrobat, Google Chrome, Zoom, Notepad++ `[CS: MEDIUM — snippet]`
- Latency claim: "Most updates land within 24 hours of vendor release; those needing manual validation typically arrive within seven days" `[CS: MEDIUM — snippet]` `[WOBBLY]`

**Licensing change — commercially significant:**
- **"Effective July 1, 2026 the capability is included in Microsoft 365 E5."** `[CS: MEDIUM — snippet]` `[WOBBLY]` — needs first-party confirmation. **If accurate, a large share of enterprise buyers now have third-party app auto-patching at no incremental cost.**

**Documented limitation — the remaining seam:**
- **Apps assigned as "Available" do not auto-update.** Only **Required** assignments do. `[CS: MEDIUM — snippet]`
- Catalog is **curated** — coverage is bounded by Microsoft's catalog, vs. Action1's claimed breadth or N-able's claimed 550+ apps `[CS: MEDIUM]`

**Also in the June 2026 release:** EPM / zero-trust privilege controls, Apple enrollment improvements. `[CS: MEDIUM — snippet]`
**Further leads, not fetched:** https://endpointweekly.com/blog/intune-june-2026-whats-new.html · https://www.cloudengineerlab.com/blog/microsoft-intune-6-months-changes-2026-future-roadmap · https://windowsnews.ai/article/microsoft-intunes-june-2026-update-delivers-auto-patching-for-third-party-apps-zero-trust-privilege-.432013 · https://windowsforum.com/threads/june-2026-intune-update-app-auto-updates-epm-enhancements-apple-enrollment.432013/

---

## S1. PATCH MY PC

**Gap filled:** third-party application patching for Intune and ConfigMgr.
**Sold as:** **add-on**. Sits inside/alongside Intune; does not replace it.

- **Vendor FAQ:** "How do I manage third-party patching in Intune?" https://patchmypc.com/faq/how-do-i-manage-third-party-patching-in-intune/ *(not fetched)*
- **Reseller/partner page:** System Center Dudes. https://www.systemcenterdudes.com/patch-my-pc-third-party-patching-reseller/ `[CS: MEDIUM]`
- **Community walkthrough:** HTMD/anoopcnair. https://www.anoopcnair.com/intune-and-patch-my-pc-cloud-saas-3rd-party-app/ `[CS: MEDIUM]`

**Claims:**
- Supports "over a thousand third-party applications" `[CS: MEDIUM — snippet]` ← **compare to Microsoft's curated catalog (M1) and N-able's claimed 550+ (file 04). Catalogue size is the competitive axis in this segment.**
- Automated patching on endpoints for SCCM and Intune `[CS: MEDIUM — snippet]`

**★ Integration-depth signal worth noting:** "**Advanced Insights** works alongside Patch My PC to show patch status across both Microsoft and third-party applications in a single view." `[CS: MEDIUM — snippet]` `[WOBBLY]` — I cannot tell from the snippet whether this is a Microsoft-built integration into Intune Advanced Analytics or a Patch My PC-built view. **The distinction matters a lot: one means Microsoft is building the partner ecosystem into its analytics surface, the other is just a vendor dashboard.** Do not resolve this by guessing.

**G2 presence:** https://www.g2.com/products/patch-my-pc/discuss — *not fetched.* `[CS: LOW]`

---

## S2. ROBOPACK

**Gap filled:** third-party patching **and app packaging** for Intune.
**Sold as:** **add-on**, distributed via **Microsoft's own marketplace.**

- **★ Microsoft Marketplace listing** — the strongest source here, because it is Microsoft distributing the gap-filler: https://marketplace.microsoft.com/en-us/product/saas/robopackaps1752222127981.robopack_patching?tab=overview and https://appsource.microsoft.com/en-us/product/web-apps/robopackaps1752222127981.robopack_patching `[CS: HIGH — listing exists]` *(not fetched)*
- **Vendor:** https://robopack.com/intune-patch-management/

**Claims:** "simplify and automate the management of third-party software updates within Microsoft Intune"; "integrating seamlessly with Intune" `[CS: MEDIUM — snippet]` — marketing copy.

**★ The gap stated most crisply, from a Robopack-adjacent source:**
> "Microsoft Intune deploys applications well but **does not keep them patched.**"

`[CS: MEDIUM — snippet]` `[WOBBLY]` — vendor framing, and **materially undercut by M1 as of June 2026.** Flagging the timing conflict rather than resolving it.

**Competitive comparisons (third-party, useful for packaging economics, none fetched):**
- Algiz Technology, "Package Managers Bake-Off: Patch My PC v Robopack". https://www.algiz-technology.com/package-managers-bake-off-patch-my-pc-v-robopack `[CS: MEDIUM]`
- Scopable, "Robopack vs Patch My PC for MSPs: **App Packaging Is the Expensive Part**". https://scopable.io/blog/robopack-vs-patch-my-pc-msps `[CS: MEDIUM]` ← **title alone is an ingredient: in the MSP segment, the cost centre is packaging labour, not detection.** Read before assuming detection/correlation is where MSP value sits.

**Positioning per third-party comparison:** Patch My PC is "the safer fit when the job is third-party patching at scale, catalog coverage, Intune and ConfigMgr support, reporting"; Robopack is stronger on "Intune packaging model" with some ConfigMgr integration. `[CS: LOW]` `[WOBBLY]` — third-party blog opinion, commercial interest unknown.

---

## S3. RECAST SOFTWARE

**Gap filled:** ConfigMgr/Intune tooling incl. third-party patching.
**Sold as:** **add-on.**

- **Published resource:** "Open-Source Third-Party Patching Solutions for Intune and ConfigMgr in 2026". https://www.recastsoftware.com/resources/open-source-third-party-patching-solutions-for-intune-and-configmgr-in-2026/ *(not fetched)* `[CS: MEDIUM]`
- **Also the publisher confirming Microsoft's EAM GA (M1).** `[CS: HIGH]`

**★ Note the content strategy, as an ingredient:** Recast publishes a guide to **open-source** alternatives in its own category, and publishes confirmation that Microsoft closed the gap it sells into. Neither move is what a vendor with a durable moat in third-party patching would be expected to make. **That is an observation about published behaviour, not a conclusion about Recast's business.** `[CS: MEDIUM]`

---

## S4. IVANTI NEURONS PATCH FOR INTUNE

**Gap filled:** third-party patching for Intune.
**Sold as:** **named add-on SKU**, explicitly scoped to Intune.

- **Product page:** https://www.ivanti.com/products/ivanti-neurons-patch-for-intune *(not fetched)* `[CS: HIGH — SKU exists]`

**Note:** an enterprise UEM vendor (a potential Intune *replacement*) also sells an Intune *add-on*. Both postures from one vendor. See C4 in file 02 for Ivanti's broader agentic claims.

---

## S5. CAPA SYSTEMS (surfaced, not scouted)

- "The Intune Third-Party Patch Gap — and How to Close It". https://capaone.com/blog/intune-third-party-patch-gap/ *(not fetched)* `[CS: LOW]`
- Listed only to show the density of vendors selling the same named gap. **The number of independent vendors whose entire marketing hook is one Microsoft gap is itself the ingredient.** `[CS: MEDIUM]`

---

## S6. NEXTHINK — the analytics/DEX layer over Intune

**Gap filled:** Intune lacks native anomaly detection and end-user-experience analytics.
**Sold as:** **add-on, sitting beside rather than inside the management stack.**

- **★ Vendor documentation — strongest sources in this entry, both Intune-specific library packs:**
  - "Intune alerting". https://docs.nexthink.com/platform/library-packs/security-and-compliance/intune-alerting *(not fetched)* `[CS: HIGH — doc exists]`
  - "Intune health". https://docs.nexthink.com/platform/library-packs/security-and-compliance/intune-health *(not fetched)* `[CS: HIGH — doc exists]`
  - **Both filed under "security-and-compliance" in Nexthink's own doc taxonomy.** `[CS: HIGH]`
- **Release notes 2026.4:** https://docs.nexthink.com/platform/whats-new/whats-new-2026.4 *(not fetched)*
- **OpenText Cybersecurity Marketplace listing:** https://marketplace.opentext.com/cybersecurity/content/nexthink-end-user-analytics-it-security `[CS: MEDIUM]`

**Claims:**
- **2026.4:** new mobile device governance — "centralized view of mobile device compliance **powered by Intune data**", identify non-compliant devices, "prioritize remediation with enriched compliance insights" `[CS: MEDIUM — snippet]` ← **compliance-signal enrichment on top of Intune. Same architectural move as NinjaOne's Intune integration (file 01, N1): take Intune data, add a layer, own the console.**
- **Named Intune gap:** "Intune lacks native anomaly detection, which can make diagnosing issues difficult" — Nexthink offers dedicated Intune monitors for device non-compliance, sync failures, policy failures, application deployment failures `[CS: MEDIUM — snippet]` `[WOBBLY]` — sourced from a community comparison blog, not from Nexthink. **Both the gap claim and the remedy claim come from an interested party.**

**★ The architectural tension, stated by a third party:**
> "Nexthink and other standalone analytics tools are excellent at the analytics layer but **sit beside** the management and security stack, whereas Microsoft Intune Advanced Analytics **sits inside** the platform."

- **Source:** Jannik Reinhard, "Intune Advanced Analytics: Features, Pricing & Alternatives". https://jannikreinhard.com/intune-advanced-analytics-market-comparison/ `[CS: MEDIUM]` `[WOBBLY]` — single community blog, though the author publishes extensively on Intune.
- **This is the inside/outside question, and it is the same question Ecoverse faces.** Carrying it as an ingredient. Beth assembles.

**Comparison listings, not fetched:** https://www.trustradius.com/compare-products/microsoft-intune-vs-nexthink · https://www.g2.com/products/nexthink/reviews `[CS: LOW]`

---

## S7. AUTOMOX — augment, with published per-endpoint pricing

**Gap filled:** cross-platform patching + configuration compliance, notably **macOS**.
**Sold as:** **augment, not replace** — and separately as **OEM'd execution inside Rapid7** (file 02, C7a).

- **Dedicated Intune page:** https://www.automox.com/automox-and/intune *(not fetched)* `[CS: HIGH — page exists]`
- **Pricing page:** https://www.automox.com/pricing *(not fetched)*
- **Vendor's own competitive content:** "What Is Microsoft Intune? Features, Limitations, Alternatives". https://www.automox.com/blog/what-is-intune `[CS: MEDIUM]` — vendor-authored assessment of a competitor's limitations. Source about what Automox claims.
- **Platform page:** "Endpoint Management - Patch & Configuration Compliance" `[CS: MEDIUM]` ← **patch + configuration + compliance in one product-page title. Three of Ecoverse's five signals, named together, already on a competitor's page.** `[WOBBLY]` — a page title is not a correlation engine. Do not read it as one.

**★ Integration mechanism — unusually specific for marketing copy:**
- "**Automox Canopy** connects to Intune's API to manage macOS patching with MDM"
- "For Apple Silicon Macs, Automox uses the **Bootstrap Token Intune already holds**, so Apple Silicon Macs enrolled in Intune get silent, scheduled OS updates through Intune."

`[CS: MEDIUM — snippet]` `[WOBBLY]` — **but the Bootstrap Token detail is specific enough to be checkable, unlike most claims in this file. That specificity is itself a quality signal.**

**Pricing — the only per-endpoint figures I found published anywhere in this dossier:**
- "$2.50–$3.50 per endpoint per month on annual contracts, depending on volume" `[CS: LOW]` `[WOBBLY]`
- "PatchOS plan from $1 per endpoint/month, billed annually" `[CS: LOW]` `[WOBBLY]`
- **Source:** aggregator snippets (Vendr https://www.vendr.com/marketplace/automox · G2 https://www.g2.com/products/automox/pricing · Capterra · checkthat.ai). **NOT vendor-published. DO NOT CITE.** Listed so Beth knows the order of magnitude exists and where to go to verify it.
- **Unit-of-comparison trap, flagged explicitly in one source:** "Intune starts at $8 per user per month, though **the billing units differ** — think about whether you're counting users or endpoints before you compare." `[CS: MEDIUM — snippet]` ← **per-user vs per-endpoint. Any TCO comparison that ignores this is wrong.**

**Comparison listings, not fetched:** https://www.selecthub.com/unified-endpoint-management-tools/intune-vs-automox/ · https://www.peerspot.com/products/comparisons/automox_vs_microsoft-intune `[CS: LOW]`

---

## S8. ABSOLUTE SECURITY — NOT SCOUTED

Searched; returned only a Wikipedia entry (https://en.wikipedia.org/wiki/Absolute_Security) and no product/Intune material. **No findings. Do not infer absence from the market.** `[CS: UNKNOWN]` `[WOBBLY]` `[THIN DOMAIN — pool this scout reached was thin for this vendor]`

---

## S9. ConnectWise / Kaseya / Datto — NOT SCOUTED PROPERLY

Search for autonomous-patching announcements returned **only comparison-site and aggregator content, no primary vendor announcement.**

- Only concrete primary-ish finding: Kaseya integrating **FIPS 140-3 validated cryptography into Datto RMM, no extra charge from October 2026**, account-wide toggle. `[CS: LOW — snippet, source not fetched]` https://www.sourcesecurity.com/news/kaseya-launches-datto-rmm-updates-connect-co-1674030557-ga.1788432930.html
- Kaseya-authored category content: https://www.kaseya.com/blog/best-patch-management-software/ `[CS: LOW]` vendor-authored listicle.
- ConnectWise-authored: https://www.connectwise.com/blog/best-msp-rmm-software `[CS: LOW]` vendor-authored listicle.
- Aggregators only, all `[CS: LOW]`: trustradius, peerspot, teamviewer comparison page, flamingo.run, nocdoc, exodata.

**These are N-able's closest direct competitors by buyer and channel, and this scout did not reach their primary material.** `[WOBBLY]` `[CS: UNKNOWN]` **Flagging as the largest gap in Dimension B. Recommend a dedicated scout run against ConnectWise and Kaseya release notes and press rooms before assumption #6 is scored.**
