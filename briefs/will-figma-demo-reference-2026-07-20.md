# Reference Pack for Will — Value Ledger, Experts, QBR Figma Demo
**Date:** 2026-07-20 · **For:** Will's Figma demo · **What this is:** real UI patterns worth stealing, with sources, plus the rationale for why "Experts" is a good bet — not a spec, a design-reference pack.

---

## 0 · THE BUYER TO DESIGN FOR

**Not the CEO. One level down — an operator, not the owner.** Something like VP/Director of Service Delivery or Operations: still technical enough to evaluate a real claim, close enough to actual client relationships to feel a churn risk personally, not far enough removed to only see it as a number on a board deck.

**$10–15M revenue run rate.** This pins down the fuzzy "larger side of SMB, not enterprise" sweet spot already named in the Guidepoint cross-cutting signals ("the largest, most-mature shops are a displacement risk... sweet spot is larger side of SMB"). $10–15M is a concrete anchor for that band — closest existing interview matches are Jonathan Blakey (VP of Technology, primary AI builder, 10–50 FTEs) and Mike Ritsema (President & Principal, 10–50 FTEs, 100+ contracts), though neither was asked about revenue directly — treat the $10–15M figure as Beth's own sharper refinement, not a sourced quote. [A]

**The sharpest, newest part of this persona — and it's not in the corpus yet:** this buyer has already made the bet to run with fewer L1/L2 technicians, leaning on automation to cover the gap. That means their actual fear isn't "does AI work" — they're past that question. It's **"can I prove to my clients that service didn't get worse when I cut headcount, so they renew instead of getting spooked by fewer visible humans on their account."** That's a materially different, sharper job than the generic "prove quarterly value" framing everywhere else in this corpus.

**Why this matters for the demo specifically: this one buyer is the connector between two packages that have been treated as separate the whole session.** The same person who made the Ticket Triage bet (fewer L1/L2, AI covers routine diagnosis) is the person who most needs the Value Ledger/QBR to close the loop — proving the reduction didn't cost the client anything. Triage creates the exposure; Value Ledger/QBR is the only thing that closes it. If Will's demo can show that arc explicitly — "here's what we automated away, here's the proof nothing dropped" — it's telling this buyer's actual story, not a generic value-prop.

**One thing to build into the mock's honesty, not just its polish:** if the demo shows this arc, it should be honest that the *renewal decision* isn't made on the Value Ledger's numbers alone — it's made in a conversation the QBR supports. The ledger's job is to make that conversation defensible, not to replace it.

---

## 1 · SHOWING COST & VALUE — patterns for the Value Ledger

**The core design tension to solve, from ACP's own dig:** one ledger, two audiences. [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md) already established this — client-value view (primary) + a governance view ("Activity Log," not "Trust Ledger"). Bill and headline off **Measured** tier only; never blend `estimated_human_minutes` into the headline number. Every pattern below should be filtered through that discipline — don't borrow a competitor's UI if it launders an estimate into a hard number.

**Steal these patterns:**

- **[Vanta Trust Center](https://www.vanta.com/products/trust-center)** — the closest precedent found to Value Ledger's own two-view design. Their whole pitch: "continuous, real-time evidence of your active controls — demonstrating trust that goes beyond a one-time compliance snapshot." Branded to the vendor's own look (header images, typography), filterable by audience (product, region, industry), with a document library for the deep-evidence layer and an AI chatbot for quick questions. [CS: MEDIUM — vendor site]
  **Steal:** the "continuous evidence, not a snapshot" framing *is* the Value Ledger's whole differentiator versus a static QBR PDF. The branded/filtered client portal shape — one underlying data source, dressed differently per audience — is exactly the client-value/governance-view split already spec'd. Will could literally mock the Value Ledger as an MSP-branded, filterable evidence feed rather than a table.

- **[Intercom Fin](https://fin.ai/)** — leads with one number: **resolution rate** ("76% across 12,000+ customers, many over 85%"), tied directly to outcome-based pricing ("you only pay for Fin when it delivers value"). [CS: MEDIUM — vendor site, no dashboard screenshot surfaced in this pass]
  **Steal:** the *one headline metric, everything else supporting* structure. Value Ledger risks trying to show too many numbers at once — Fin's model says pick the single Measured-tier number that matters most per package (e.g., QBR: hours saved on Measured data; Alert Flood: noise ratio; IR/RCA: time-to-report) and make *that* the hero number, with everything else as supporting detail underneath.

- **Existing pricing/metering precedents already in the corpus** — worth designing the ledger's line-item format around, since these are the models the actual pricing decision will land on: Zendesk ($1.50/automated resolution), Salesforce Agentforce ($2/conversation + $0.10/action), n8n (€20/mo per 2,500 runs), Zapier (per-operation). [CS: VERIFIED — Nicole's own vision doc, per earlier reads]
  **Steal:** each of these ties a dollar figure to a *discrete, countable unit* (a resolution, a conversation, an action, a run). If Value Ledger's line items map 1:1 to those same countable units — "this action, this cost, this Measured-tier tag" — the ledger becomes legible as a receipt, not a dashboard. That's the format worth mocking: itemized, not summarized.

- **Not found, worth naming as a gap:** no MSP-space competitor scouted this session (ScalePad, CloudRadial, Invarosoft, BrightGauge) shows a *tiered defensibility* label (Measured/Benchmarked/Estimated/Unverified) on any value claim. **This is real, confirmed white space** — if Will's mock includes a visible tier badge per line item, it's a genuinely novel UI pattern in this market, not a borrowed one.

---

## 2 · QBR REPORTS — patterns already scouted, real and current

- **[ScalePad Copilot / Lifecycle Manager](https://www.scalepad.com/updates/introducing-scalepad-ai-copilot-msps)** — generates a full QBR deck "in seconds." The direct, confirmed competitive threat. [CS: MEDIUM]
- **[Invarosoft vCIO Hero](https://www.invarosoft.com/vciohero/)** — **the strongest concrete UI pattern to borrow.** Traffic-light findings (Green/Yellow/Red) + a "Good/Better/Best" solution-builder + a Kanban roadmap view. [CS: LOW — vendor superlative on "only QBR product focused on compliance and sales conversion," unverifiable, but the traffic-light + tiered-recommendation pattern itself is real and worth mocking directly.]
  **Steal:** traffic-light severity at a glance, tiered remediation options (not one fix, three price points), roadmap-as-Kanban rather than a static timeline.
- **[CloudRadial](https://www.cloudradial.com/qbr)** — white-labeled client portal bundling QBR + service catalog + training + intranet, integrated with ConnectWise/Autotask/BrightGauge/O365. [CS: LOW — no AI feature confirmed]
  **Steal:** the QBR living *inside* a persistent client portal, not a one-off deck — same "continuous, not a snapshot" idea as Vanta above.
- **BrightGauge** — dashboards/executive summaries across MSP tools, CloudRadial's dashboard partner. [CS: LOW — not independently verified this pass]
- **MSPortal.ai** — block-based report builder with AI-generated narrative text. [CS: LOW — single-vendor listing, unverified]

**The gap-forward / audience-aware / draft-that-lands concepts already sketched** ([concept-sketches-qbr-2026-07-20.md](concept-sketches-qbr-2026-07-20.md), Packages A–C in the earlier version) are still the right interaction-model reference for how the QBR *behaves* once opened — this section is about competitive visual precedent, that file is about the interaction design.

---

## 3 · WHY "EXPERTS" IS A GOOD BET — the rationale, for the demo's story

**Already dug, from [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md), Offering B:** "Pre-spec'd is the on-ramp; build-your-own is the retention. The strongest version *welcomes* the MSP's Claude-built agents into a governed plane rather than competing with them." Named example already in the corpus: **Halo Ticket Expert** — a PSA vendor operating as a Vendor Expert inside the plane. Partner-type: "marketplace Expert vendors (Shopify-pattern certification) + PSA vendors as Vendor Experts."

**The precedent that makes this a proven pattern, not a guess:**
- **Shopify App Store** — the model explicitly named as the certification pattern to copy. Shopify doesn't build every app; it certifies and takes a cut (0%/15%/10% tiered rev-share, per the earlier vision doc read). The platform's value is the certification + distribution, not the individual apps.
- **Salesforce AppExchange** — same shape at larger scale: third-party builders extend the platform, Salesforce owns the trust layer and the marketplace.
- **Anthropic's own MCP/Claude Skills ecosystem** — the pattern the whole industry is converging on right now (per the market scan: Arcade.dev authored the MCP authorization spec, Composio built the MCP tool layer) — plug in third-party capability through a governed, authenticated interface rather than rebuilding it.

**The one-sentence version for the demo's narrative:** *Experts is not N-able trying to build every capability an MSP could ever want — it's N-able being the trusted plane those capabilities get certified and governed through, the same way Shopify doesn't sell every product in every app, it sells the storefront and the trust.*

**Honest caveat to carry into the mock:** WTP for the marketplace mechanic specifically is `[A]` — assumed, not demand-tested in this corpus. The precedent (Shopify, Salesforce, MCP) proves the *model* works generally; it doesn't yet prove MSPs specifically want to buy Experts through N-able rather than assembling their own stack. Worth a line in the demo's own honesty rail, not just a confident pitch.

---

*[CS:] tags per Band Protocol. Several vendor UI claims above are marketing-page-level, not screenshot-verified — treat "steal this pattern" as design inspiration, not confirmed UX research. If Will needs actual pixel-level reference, these are starting points for a proper screenshot pass, not a substitute for one.*
