# N-able Technology Alliance Program (TAP) — Partner Landscape for ACP/EBR-QBR Coworker
Scout pass 2 — broader survey per Beth's request, 2026-08-19
Prior pass verified: Gradient MSP, Liongard, vCIOToolbox, CloudRadial (see note on CloudRadial below — re-checked, downgraded)

---

## 1. PRIMARY SOURCES (lead)

- **N-able official integrations marketplace** — https://www.n-able.com/integrations
  [CS: VERIFIED] — 87 integrations claimed on page, organized into 15 filter categories. Named partners retrieved below by category (partial — page is a dynamic filter UI, not all 87 confirmed by name across scrape passes). [WOBBLY: incomplete enumeration, treat as floor not ceiling]

- **N-able Technology Alliance Program hub** — https://www.n-able.com/partnerships/technology-alliance-program
  [CS: HIGH] — program landing page confirmed to exist via search; not independently re-fetched this pass.

- **N-able Partnerships page** — https://www.n-able.com/partnerships
  [CS: VERIFIED] — exists, but does NOT list individual TAP partners by name; lists distributors (ADDEE, Infinigate France, acmeo GmbH, Watsoft, CIPS Informatica) instead. Not useful for partner enumeration — press releases and /integrations are the real sources.

---

## 2. TAP PRESS RELEASES — CHRONOLOGICAL, NAMED PARTNERS

### Feb 27, 2024 — "N-able Expands Technology Alliance Program, Adding New Vendor Alliances"
- BusinessWire: https://www.businesswire.com/news/home/20240227688494/en/
[CS: LOW] — fetch timed out twice this pass; partner names NOT independently re-verified. Flagging as unconfirmed for this dossier — do not cite specific names from this release without re-pulling.

### May 21, 2024 — MSPAlliance Cyber Verify partnership
- N-able press release: https://www.n-able.com/press/press-releases/n-able-and-mspalliance-join-forces-to-help-msps-navigate-cybersecurity-compliance-requirements
- BusinessWire: https://www.businesswire.com/news/home/20240521680093/en/
- N-able integration page: https://www.n-able.com/integrations/msp-alliance-cyber-verify
[CS: VERIFIED] — reciprocal, named on n-able.com in both press release and dedicated integration page.
- **MSPAlliance Cyber Verify** — Compliance-as-a-Service platform. Helps MSPs "identify, articulate, and document MSP controls," map to standards including MSP Verify, SOC 2, ISO 27001, CMMC. Cyber Verify's own separate PR (PRNewswire, prnewswire.com) later added a "Compliance Connector API," starting with N-central integration, plus a "CORTEX" maturity scoring model. [CS: HIGH] for the API/scoring detail — sourced from MSPAlliance's own release, not independently re-confirmed on N-able's side this pass.
- Category: **GRC / Compliance**
- **EBR relevance: HIGH** — this is a direct compliance-maturity/certification data source, the kind of thing an EBR compliance section needs and that N-able's own products don't natively hold.

### Dec 5, 2024 — "N-able Unveils New Additions to Technology Alliance Program"
- N-able press release: https://www.n-able.com/press/press-releases/n-able-unveils-new-additions-to-technology-alliance-program-empowering-partners-to-enhance-efficiency-and-capitalize-on-new-cybersecurity-opportunities
- BusinessWire: https://www.businesswire.com/news/home/20241205601143/en/
- Investor relations mirror: https://investors.n-able.com/news/news-details/2024/N-able-Unveils-New-Additions-to-Technology-Alliance-ProgramEmpowering-Partners-to-Enhance-Efficiency-and-Capitalize-on-New-Cybersecurity-Opportunities/default.aspx
[CS: VERIFIED] — named on n-able.com directly.

| Partner | Category | Integration point |
|---|---|---|
| **CYRISMA** | Vulnerability mgmt / GRC / dark web monitoring | Integrates with MSP Manager; real-time sync of tickets/assets/users; routes security events to automated ticketing |
| **Cork** | Cyber warranty / risk assessment | AI-enhanced risk assessment + claims settlement for SMB security incidents; integrates with N-central/N-sight |
| **vCIOToolbox** | Executive reporting / QBR / GRC / asset lifecycle | Integrates with N-central; n-able.com's own integration page titles it "vCIOToolbox Integration for MSP QBRs, GRC, and Asset [Lifecycle]" — confirms prior pass's finding, and confirms QBR is the stated use case in N-able's own copy |
| **ImmyBot** | Endpoint automation | Deploys/manages software updates across 1,200+ apps; integrates with N-central |

**EBR relevance: CYRISMA = HIGH (compliance/vuln posture data), Cork = MEDIUM (risk/incident data, feeds security-risk narrative), vCIOToolbox = HIGH (confirmed, explicitly QBR-framed by N-able itself), ImmyBot = LOW (patch/endpoint ops, not client-facing reporting data)**

### April 3, 2025 — "N-able Expands Its Ecoverse With Key Technology Alliance Program Integrations"
- N-able press release: https://www.n-able.com/press/press-releases/n%E2%80%91able-expands-its-ecoverse-with-key-technology-alliance-program-integrations-enhancing-cyber-resilience-and-operational-efficiency
- BusinessWire: https://www.businesswire.com/news/home/20250403773574/en/
[CS: VERIFIED]

| Partner | Category | Function |
|---|---|---|
| **Xurrent** | ITSM / PSA-adjacent | AI-powered ITSM automation platform |
| **SeedPod Cyber** | Insurance/warranty | AI-driven cyber & Tech E&O insurance |
| **ScalePad Lifecycle Manager** | Asset lifecycle | Automates IT asset lifecycle mgmt + data enrichment |
| **Rewst** | Automation/orchestration | Onboarding, backup monitoring, billing process automation |
| **Derdack SIGNL4** | Incident/alerting | Mobile incident management, real-time critical alerts |
| **Webroot by OpenText DNS Protection** | Network/DNS security | Blocks malicious sites, phishing prevention at DNS layer |

**EBR relevance: ScalePad Lifecycle Manager = MEDIUM-HIGH (asset lifecycle/aging-asset data, a standard EBR section); Xurrent = LOW-MEDIUM (ITSM data, adjacent to PSA but not confirmed as ticket/SLA data source); rest = LOW (operational/alerting, not client-facing report data)**

### April 2, 2026 — "N-able Expands Its Technology Alliance Program with New Integrations, Advancing Incident Response and Hyperautomation"
- N-able press release: https://www.n-able.com/press/press-releases/n-able-expands-its-technology-alliance-program-with-new-integrations-advancing-incident-response-and-hyperautomation
- BusinessWire: https://www.businesswire.com/news/home/20260402181920/en/
[CS: VERIFIED]

| Partner | Category | Function |
|---|---|---|
| **Zensec** | Incident response services | Structured IR services leveraging N-central + Cove |
| **Atomatik** | Hyperautomation | Multi-step workflow automation (vuln remediation, phishing alert investigation) with AI-assisted decisioning |

**EBR relevance: LOW-MEDIUM** — these are operational/response tools, could feed an incident-history section of an EBR but aren't primary data sources for one.

### May 21, 2026 — "N-able Boosts Operational Efficiency with Automated Backup Ticketing in HaloPSA"
- BusinessWire: https://www.businesswire.com/news/home/20260521066453/en/N-able-Boosts-Operational-Efficiency-with-Automated-Backup-Ticketing-in-HaloPSA
- Also covered: TechnologyReseller UK, SecurityBrief UK, StockTitan, StorageNewsletter (secondary trade press, corroborating not independent)
[CS: VERIFIED] — reciprocal, named on N-able's own BusinessWire channel.
- **HaloPSA** — native integration between **Cove Data Protection** and HaloPSA. Automates ticket creation from backup alerts, updates existing tickets to prevent duplicates, extends PSA workflow with backup intelligence. Release notes this "builds on N-able's existing integrations with HaloPSA, including its unified endpoint management (UEM) platforms" — implying HaloPSA↔N-central/N-sight UEM integration predates this, though I did not find a separate press release confirming the UEM-side integration independently; it does appear as a named PSA partner on n-able.com/integrations (see §3).
- Category: **PSA / Backup**

**EBR relevance: closes a named gap directly** — HaloPSA is one of the systems named in the internal EBR data-pull inventory as a gap. This confirms N-able has *a* reciprocal HaloPSA integration, but the confirmed scope is backup-ticket automation, not general PSA ticket/SLA/time-tracking data extraction. **Do not assume this integration alone solves "pull clean PSA data from HaloPSA for an EBR" — the confirmed data flow is narrower than that.** [CS: VERIFIED for what exists; CS: UNKNOWN for whether it extends to general PSA data extraction]

---

## 3. OFFICIAL INTEGRATIONS MARKETPLACE — CATEGORY BREAKDOWN
Source: https://www.n-able.com/integrations [CS: VERIFIED for names listed; page states 87 total integrations, not all independently confirmed by name]

| Category | Named partners | EBR/QBR relevance |
|---|---|---|
| **Identity & Access Mgmt** | 1Password, Bitwarden, JumpCloud, Okta | LOW — these are credential/IdP tools, not identity-*posture* reporting (MFA coverage %, stale accounts, privileged access review) which is what an EBR security section actually needs. **[GAP]** No identity-posture-specific partner found. |
| **Data Protection & Backup** | Acronis, Barracuda, Bocada, Cove (N-able own), Gradient MSP, Liongard, ScalePad Backup Radar | Bocada = MEDIUM-HIGH (multi-vendor backup monitoring/reporting — explicitly a cross-vendor normalization tool, not backup-vendor-specific); Liongard = HIGH (documentation/config data across many tools, prior pass already flagged); Gradient MSP = MEDIUM but scope-limited to billing (see §2); Acronis/Barracuda = LOW (competing backup products, only relevant if a client uses them instead of Cove) |
| **Endpoint Security** | Bitdefender, CarbonBlack, ESET, Huntress Labs, Morphisec, SentinelOne, Sophos, ThreatLocker, Trend Micro, Webroot | MEDIUM — endpoint posture data (threat counts, detections) is a standard EBR security-section input, IF N-able can pull structured data from these, which is unconfirmed at data-schema level here |
| **PSA / Business Mgmt** | Autotask, CloudBlue PSA, ConnectWise Manage, DeskDay, **HaloPSA**, IT Glue, Hudu, Rev.io, TOPdesk, Xurrent | **HIGH overall category** — PSA data (tickets, time, contracts) is core EBR input. HaloPSA and Autotask both confirmed reciprocal. IT Glue/Hudu = documentation, feeds asset/config narrative sections. |
| **Email Security** | Mimecast, Proofpoint Enterprise | MEDIUM — phishing/email-threat stats are common EBR security-section content, if data is pullable |
| **Vulnerability Mgmt** | Tenable | MEDIUM-HIGH — vuln scan data is a direct compliance/security EBR input |
| **Security Operations** | Adlumin (N-able own), Atomatik, enhanced.io, Flexis, Mission Control, Rewst, Samurai Sync | Adlumin is first-party context (see §4); others unconfirmed relevance — names not independently researched this pass, LOW confidence on function [CS: LOW] |
| **Governance, Risk & Compliance** | MSPAlliance Cyber Verify (confirmed also: vCIOToolbox, Narmada — see below, categorized here per their own integration pages though the marketplace scrape surfaced them under other filters) | **HIGH — this is the category most directly aimed at the EBR/QBR use case** |
| **IT Ops, Automation & Orchestration** | Rewst, Atomatik | LOW-MEDIUM — workflow automation, not reporting data source |
| **Cloud Infrastructure & Mgmt** | AWS CloudWatch, Azure, Google Workspace | LOW as listed — these appear to be infra monitoring connectors, not M365/Google Workspace *security or compliance posture* connectors. **[GAP]** No confirmed M365 security/compliance-specific partner (e.g., a Secure Score or DLP data puller) found in N-able's own marketplace. |
| **Network & Web Security (SASE/DNS/SWG)** | Cato, OpenText Cybersecurity | LOW-MEDIUM |
| **Detection & Response** | CarbonBlack, Crowdstrike, SentinelOne, Palo Alto Cortex | MEDIUM — EDR/XDR alert/detection counts are common EBR content |
| **Digital Forensics & Incident Response** | Zensec, RedHelm | LOW — incident-history data, occasional EBR content |
| **Insurance & Warranty** | SeedPod Cyber, (Cork per press release) | LOW — occasionally referenced in risk narrative, not core EBR data |
| **Services & Consulting** | Collabrance, Inbay, Redhelm, Scalable, Vencer Group, Wisecurve, Worksent, Zensec | LOW — these appear to be MSP-services partners, not data sources |

### Additional named integration found via direct search (not fully enumerated in category scrape above):

- **Narmada** — https://www.n-able.com/integrations/narmada
  [CS: VERIFIED] — official N-able integration page. "Narmada helps MSPs plan and execute quarterly business reviews with a structured, repeatable process." Pulls monitored devices from N-central/N-sight UEM; surfaces aging-asset risk for QBR technology-review conversations. Categorized under GRC on its own page.
  **EBR relevance: HIGH — this is the most explicitly QBR-purpose-built third-party integration found in this pass, on par with vCIOToolbox.**

- **BrightGauge** — https://www.n-able.com/integrations/brightgauge
  [CS: VERIFIED] — official integration page. BI/dashboard layer (owned by ConnectWise) pulling N-sight/N-central metrics (patch, device, network, backup, security) into dashboards and reports. Documentation also confirms it can connect to Microsoft SQL Server as a data source, suggesting broader normalization capacity beyond just N-able's own products — though the confirmed *N-able-side* integration is limited to N-sight/N-central metrics, not multi-vendor pull.
  **EBR relevance: HIGH structurally** — it is a reporting/normalization layer, the same category of tool an EBR coworker functionally resembles. Worth studying as a comparator/competitor, not just a data source.

---

## 4. FIRST-PARTY N-ABLE PRODUCTS (context only, not the focus of this pass)

- **N-central** — RMM/UEM, [CS: VERIFIED] core device/patch/network telemetry
- **N-sight RMM** — [CS: VERIFIED] same category, SMB-tier
- **Cove Data Protection** — [CS: VERIFIED] backup, hub for several TAP integrations above (Gradient MSP, HaloPSA, Backup Radar, Bocada)
- **Adlumin** — [CS: VERIFIED as N-able-owned; CS: LOW on specific EBR data schema] — security/SIEM, listed in N-able's own marketplace under "Security Operations"
- **MSP Manager** — [CS: VERIFIED] N-able's own PSA product, integration point for CYRISMA above

---

## 5. SCRUTINY / VERIFICATION NOTES (per Beth's instruction to apply prior-pass rigor)

- **CloudRadial** — re-checked this pass. NOT found on n-able.com's official integrations marketplace (87-item list, scraped across multiple category passes). NOT found in any N-able press release searched. The only "N-able integration" claim found lives on **cloudradial.com/n-able** — a partner-controlled marketing page inviting a demo. This is the same pattern Beth flagged in the prior pass for other vendors: a partner's landing page claiming an N-able relationship without reciprocal confirmation on N-able's own site or press. **[CS: LOW — unverified, one-sided claim]. Downgrade from however the prior pass treated it.**
- **HaloPSA** and **Gradient MSP** — both reciprocally confirmed as real, but each confirmed integration is narrower in scope than "feeds the EBR data pipeline broadly" would suggest (see §2 detail per partner). Flagging so the scope isn't overstated in the brief.
- **Feb 2024 press release** partner names — NOT verified this pass (fetch failures). Do not cite specific names from that release without re-pulling: https://www.businesswire.com/news/home/20240227688494/en/N-able-Expands-Technology-Alliance-Program-Adding-New-Vendor-Alliances-to-Open-Ecosystem-Built-for-MSPs

---

## 6. NAMED GAPS — STILL OPEN (per the internal EBR data-pull inventory's cited gaps: HaloPSA, M365, phishing simulation, AD/identity, compliance)

| Named gap | Status found this pass |
|---|---|
| HaloPSA | Partially closed — reciprocal TAP integration exists, but confirmed scope = backup-ticket automation only, not general PSA data pull [CS: VERIFIED, scope-limited] |
| M365 | **Not found** — no M365-specific security/compliance/reporting partner in N-able's own marketplace or press releases. Azure/Google Workspace listed under "Cloud Infrastructure" appear to be generic cloud monitoring connectors, not M365 Secure Score / compliance data pullers. [CS: LOW — absence noted, not proof of total absence, marketplace scrape was incomplete] |
| Phishing simulation | **Not found** — no dedicated phishing-simulation/security-awareness-training partner named in N-able's marketplace or press releases this pass. |
| AD/identity | **Partially found** — 1Password, Bitwarden, JumpCloud, Okta present, but these are credential-management/IdP tools, not identity-*posture* reporting tools (stale accounts, MFA coverage, privileged access audit) that an EBR identity section would need. |
| Compliance | **Found** — MSPAlliance Cyber Verify (compliance maturity/certifications) and CYRISMA (compliance assessments) both reciprocally confirmed. This is the best-covered of the five named gaps. |

---

## Sources index

- https://www.n-able.com/integrations
- https://www.n-able.com/partnerships
- https://www.n-able.com/partnerships/technology-alliance-program
- https://www.n-able.com/press/press-releases/n-able-and-mspalliance-join-forces-to-help-msps-navigate-cybersecurity-compliance-requirements
- https://www.n-able.com/integrations/msp-alliance-cyber-verify
- https://www.n-able.com/press/press-releases/n-able-unveils-new-additions-to-technology-alliance-program-empowering-partners-to-enhance-efficiency-and-capitalize-on-new-cybersecurity-opportunities
- https://www.businesswire.com/news/home/20241205601143/en/
- https://www.n-able.com/press/press-releases/n%E2%80%91able-expands-its-ecoverse-with-key-technology-alliance-program-integrations-enhancing-cyber-resilience-and-operational-efficiency
- https://www.businesswire.com/news/home/20250403773574/en/
- https://www.n-able.com/press/press-releases/n-able-expands-its-technology-alliance-program-with-new-integrations-advancing-incident-response-and-hyperautomation
- https://www.businesswire.com/news/home/20260402181920/en/
- https://www.businesswire.com/news/home/20260521066453/en/N-able-Boosts-Operational-Efficiency-with-Automated-Backup-Ticketing-in-HaloPSA
- https://www.n-able.com/integrations/narmada
- https://www.n-able.com/integrations/brightgauge
- https://www.n-able.com/integrations/gradient-msp
- https://www.n-able.com/integrations/vciotoolbox
- https://www.cloudradial.com/n-able (partner claim, unverified reciprocally)
- https://www.businesswire.com/news/home/20240227688494/en/ (NOT independently verified this pass — fetch failed)
