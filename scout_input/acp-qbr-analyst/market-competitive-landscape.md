# Competitive Landscape — Cross-Stack MSP QBR / Reporting Coworker

Scout pass. Ingredients only. One claim per line. [CS:] inline. URL on every claim. No synthesis.
Scope of "the whole thing": pull from PSA + RMM + security + backup + identity, normalize apples-to-apples across vendors, generate client-ready QBR/report.

---

## SECTION 1 — WHO IS DOING THE WHOLE THING TODAY?

### ScalePad (Lifecycle Manager / Lifecycle Insights / Lifecycle Manager X)
- Lifecycle Insights consolidates assets, users, contracts, projects into a unified vCIO/QBR dashboard. [CS: HIGH] https://platform.softwareone.com/product/lifecycle-insights/PCP-9484-3166
- Integrates with PSA/RMM; pulls config from Datto Autotask PSA. [CS: HIGH] https://www.datto.com/integrations/lifecycle-insights/
- Lifecycle Manager positioned as "the hub where client-facing work happens," fed by ControlMap, Backup Radar, Quoter, Cognition360. [CS: HIGH — vendor] https://www.scalepad.com/cognition360/msp-operations/
- ScalePad Copilot (AI) claims to generate QBR decks "in seconds." [CS: MEDIUM — vendor claim, output unverified] https://www.scalepad.com/updates/introducing-scalepad-ai-copilot-msps
- [WOBBLY] "Cross-stack" is real only within ScalePad's own five-product suite; each feeder is ScalePad-owned, not arbitrary third-party. [CS: MEDIUM] https://www.scalepad.com/products
- Dedicated QBR-software landing page. [CS: HIGH] https://www.scalepad.com/qbr-software-for-msps

### Cognition360 (ScalePad, BI layer)
- Turns ConnectWise PSA data into operational/financial/profitability/executive reporting. [CS: HIGH] https://www.scalepad.com/cognition360
- Locked to ConnectWise PSA. [CS: HIGH] https://www.scalepad.com/cognition360

### myITprocess (Kaseya)
- Creates exec summaries, IT roadmaps, interactive QBR presentations; 5-year roadmaps from warranty/EOL data; standards-alignment reviews. [CS: HIGH — vendor] https://sourceforge.net/software/product/myITprocess/
- Now a Kaseya IT strategic-planning tool. [CS: HIGH] https://www.kaseya.com/products/it-strategic-planning-tool/

### Zomentum
- All-in-one revenue platform; QBR + vCIO presentation tied to proposals/quotes. Core is quotes-to-payments, not cross-stack telemetry. [CS: HIGH — vendor] https://www.zomentum.com/it-vcio-qbr-software

### vCIOToolbox
- QBR standardization, GRC assessments, asset lifecycle governance; integrates N-central/Cove. [CS: HIGH — vendor] https://vciotoolbox.com/ · https://www.n-able.com/integrations/vciotoolbox

### Narmada
- Pulls PSA+RMM to prepare budgets/roadmaps for QBRs. [CS: MEDIUM — vendor] https://narmada.cloud/

### FINDING — TRUE CROSS-VENDOR END-TO-END NORMALIZATION
- No source substantiates a tool that ingests arbitrary third-party PSA+RMM+security+backup+identity, normalizes apples-to-apples across disconnected vendors, AND generates the client-ready QBR end-to-end. [CS: MEDIUM — absence of evidence, not proof of absence] https://www.auvik.com/franklyit/blog/best-msp-software/
- Independent roundup explicitly notes no "vendor-agnostic QBR normalization tool" aggregating disconnected PSA/RMM/security/backup into one view. [CS: MEDIUM] https://nocdoc.com/2026/05/07/11-best-rmm-tools-for-msps-in-2026/
- Closest players (ScalePad, Cognition360) achieve breadth by OWNING the feeder modules or LOCKING to one PSA — not by normalizing across rivals. [CS: MEDIUM] https://www.scalepad.com/products
- [WOBBLY] Whole-thing section dominated by vendor marketing; independent verification of end-to-end normalization is thin.

---

## SECTION 2 — WHO DOES PIECES WELL (by job-part)

### (a) BI / dashboards
- BrightGauge (ConnectWise "Reports and Dashboards") — MSP BI, 10+ prebuilt dashboards, 30+ integrations (ConnectWise, IT Glue, N-central, Autotask, Auvik, Datto RMM, Kaseya). Pricing ~$316–$436/mo. [CS: HIGH] https://www.connectwise.com/platform/brightgauge · https://www.connectwise.com/platform/brightgauge/pricing
- MSPbots — real-time KPIs from 80+ integrations; 5,000+ dashboard templates; $129–$179/mo à la carte. [CS: HIGH — vendor] https://mspbots.ai/business-intelligence/ · https://mspbots.ai/pricing/

### (b) vCIO / QBR narrative + roadmap
- myITprocess — roadmaps, exec summaries, QBR decks, standards-alignment. [CS: HIGH — vendor] https://sourceforge.net/software/product/myITprocess/
- vCIOToolbox — standardized repeatable QBR process, GRC. [CS: HIGH — vendor] https://vciotoolbox.com/a-simple-qbr-process-your-vcios-will-love/

### (c) Backup monitoring cross-vendor ← the clearest genuine normalization
- Backup Radar (ScalePad) — monitors 300+ backup products; normalizes success/fail/warning across vendors (Veeam, Commvault, Acronis, Datto, N-able Cove) into one dashboard. [CS: HIGH — vendor] https://www.scalepad.com/backup-radar · https://www.n-able.com/integrations/backup-radar

### (d) Security posture scoring
- Cynomi — automated vCISO; quantified posture score; QBR-ready reports; maps ISO/SOC2/HIPAA/PCI. [CS: HIGH — vendor] https://cynomi.com/platform/
- N-able N-sight Risk Intelligence — client-level posture scoring used in QBRs. [CS: MEDIUM] https://nocdoc.com/2026/05/07/11-best-rmm-tools-for-msps-in-2026/

### (e) Data normalization / integration layer
- Gradient MSP (Synthesize/Reconcile) — cross-vendor license usage vs PSA contracts; scope = billing/license, not full QBR telemetry. [CS: HIGH — vendor] https://www.meetgradient.com/synthesize-billing
- Liongard — 70–105+ Inspectors capturing config/event data across cloud/network/apps/endpoint; integrates N-central/Cove/ConnectWise. [CS: HIGH — vendor] https://www.liongard.com/blog/liongard-tech-liongards-deep-data-and-system-inspectors/ · https://www.n-able.com/integrations/liongard
- Rewst — automation/RPA; 45 out-of-box integrations. [CS: HIGH] https://rewst.io/press-release/rewst-raises-31-million-series-b-to-extend-leadership-in-msp-automation-market/

### (f) Client portal / reporting delivery
- CloudRadial — unified client portal: ticketing stats, QBR reporting, vCIO planning; integrates Autotask, Auvik, BrightGauge, ConnectWise, Datto, IT Glue, M365, Zomentum. [CS: HIGH — vendor] https://www.cloudradial.com/unifiedclientportal · https://www.cloudradial.com/qbr

---

## SECTION 3 — PRODUCT SUCCESS SIGNALS PER PLAYER

### ScalePad (the incumbent in QBR/vCIO)
- ~8,500 MSPs (2023 press) / 12,000+ partners, ~7 new/day (2025 self-report). [CS: MEDIUM] https://www.smbnation.com/community-content/3453-scalepad-formerly-known-as-warranty-master... · https://www.scalepad.com/
- PE-backed (Integrity Growth Partners; terms undisclosed; founder-led). Investors incl. 1248 Partners, CFT, Cohesive, Top Down. [CS: HIGH / MEDIUM] https://www.channele2e.com/investors/private-equity/scalepad-funding-igp/
- Acquisitive: Cognition360 (Feb 2023), Backup Radar (Nov 2021), Lifecycle Insights (2023), Produce8, ControlMap. [CS: HIGH] https://www.globenewswire.com/news-release/2023/02/07/2603309/0/en/ScalePad-Acquires-Cognition360.html
- Revenue: not public. [CS: UNKNOWN] https://pitchbook.com/profiles/company/401661-46

### BrightGauge — acquired by ConnectWise, now "Reports and Dashboards." [CS: HIGH] https://www.connectwise.com/platform/brightgauge
### Auvik — $37.3M raised (Series C led by OpenView); ~$15.8M rev / 45K customers (2020, Latka est). [CS: HIGH / MEDIUM] https://www.channele2e.com/news/auvik-raises-15-5-million-for-network-rmm-msp-software
### Rewst (automation) — $76M+ across Seed→Series C (Sapphire-led $45M Aug 2024); 700+ MSPs; ARR +182% YoY. [CS: HIGH / MEDIUM] https://rewst.io/resources/news/rewst-raises-45-million-to-accelerate-platform-innovation-and-community-led-growth
### Zomentum — $13M Series A (2021); ~$17.1M total. [CS: HIGH / MEDIUM] https://www.zomentum.com/blog/zomentum-series-a-funding
### Cynomi (vCISO) — $37M Series B (Apr 2025, Insight + Entrée); 300+ partners, doubled base in 2025. [CS: HIGH / MEDIUM] https://www.globenewswire.com/news-release/2025/04/23/3066238/0/en/Cynomi-Secures-37M...
### Gradient — pricing from $199/mo; funding not surfaced. [CS: MEDIUM / UNKNOWN] https://cyberdistribution.co.uk/vendors/gradient-msp/
### Liongard / MSPbots / CloudRadial — funding/revenue not surfaced. [CS: UNKNOWN]

### Is anyone winning SPECIFICALLY on the QBR/reporting job?
- No independent (non-vendor) evidence of MSPs switching or paying a premium specifically for cross-stack QBR/reporting as a distinct job. [CS: MEDIUM — absence] https://scopable.io/blog/msp-qbr-template
- Funding is landing on ADJACENT jobs — automation (Rewst $76M/12mo), vCISO (Cynomi $37M), BI (BrightGauge→ConnectWise M&A) — NOT on a pure QBR-normalization product. [CS: MEDIUM] https://rewst.io/resources/news/rewst-raises-45-million...
- [WOBBLY] QBR-tool "success" claims (time saved, deck-in-seconds) are almost entirely vendor marketing.

---

## RESIDUAL GAPS (Beth to verify)
- Identity-stack (Entra/Okta/Duo) coverage in QBR context barely surfaced. [CS: LOW]
- No verified head-to-head on whether ScalePad Copilot decks normalize across NON-ScalePad third-party vendors. [CS: UNKNOWN]
- Private funding/revenue for Liongard, CloudRadial, MSPbots, Gradient unconfirmed. [CS: UNKNOWN]
