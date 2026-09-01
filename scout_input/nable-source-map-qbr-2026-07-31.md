# Source Map — qbr-prep-sim: Real Product Surfaces for the 10 Pulls
Scout dossier · 2026-07-31 · for Beth Connor
Scenario: SuperN-able Shop (fictional UK MSP) preps EBR for Dibbler & Sons (fictional, ~48-staff UK accountancy, 61 endpoints). Values stay SEED/dummy; source labels below are REAL product surfaces unless marked otherwise.

---

## Access constraint declared up front

**Track 2 (r/msp) could not be pulled live.** Reddit blocks Anthropic's web crawler; `site:reddit.com` searches return no reddit results and reddit.com is rejected as an allowed domain. Every r/msp item below is training-data recollection: [CS: LOW — no retrievable URL], [WOBBLY]. No quotes are verbatim. No thread URLs are supplied because none could be verified. If thread-level provenance is required, a human with a browser needs to run the r/msp searches ("QBR what do you show clients", "N-central reporting", "ScalePad QBR") and capture URLs.

---

## TRACK 1 — Named real surfaces, by product

### N-central
- **"Warranty Expiry report"** — Reports > Status > Warranty Expiry. Shows active vs. expired warranties per device. [CS: VERIFIED — https://documentation.n-able.com/N-central/userguide/Content/Online_Reports/Reports_WarrantyExpiry.html]
  - Constraint: warranty monitoring only works for Acer, Dell, Gateway, Lenovo, Toshiba. [CS: VERIFIED — same page]
- **"Patch Status (Detailed)" report** — Reports > Status > Patch Status (Detailed). [CS: VERIFIED — https://documentation.n-able.com/N-central/userguide/Content/Online_Reports/Reports_PatchStatus.html]
- **N-central Analytics default reports:** "Patch Compliance" [CS: VERIFIED — https://documentation.n-able.com/N-central/userguide/Content/Analytics/Reports/Default%20reports/patch-compliance.htm], "Hardware Inventory", "Software Inventory" [CS: VERIFIED — https://documentation.n-able.com/N-central/userguide/Content/Analytics/Reports/Default%20reports/hardware-inventory.htm]
- **Report Manager** (add-on; 50+ stock reports). Managed Assets report names, exact: Asset Change Report · Hardware Inventory Report · Hardware Upgrade Planning Report · License Key Inventory Report · License Usage and Comparison Report · Managed Devices SLA Report · Managed Devices Summary Report · Patch Approval and Installation Comparison Report · Patch Details Report · Software Inventory Report (+7 others). [CS: VERIFIED — https://documentation.n-able.com/Report_Manager/userguide/Report_Manager_AC/Content/ReportsConsole/Report_Assets/RC_Report_Assets_Overview.html]
  - Also: **"Patch Status Report"** (Report Manager). [CS: VERIFIED — https://documentation.n-able.com/Report_Manager/userguide/Reqs_Checker/Content/ReportsConsole/Report_IT/RC_Report_IT_PatchStat.htm]
  - Caveat: Report Manager is the legacy path; N-able has been steering reporting toward N-central Analytics. [CS: MEDIUM — inferred from doc structure + training data; verify current EOL status internally] [WOBBLY]
- **OS end-of-life / EOS:** no named native report found. Docs offer a KB workaround ("How to create a report that shows which Windows 10 build is installed") and a "Patch Management Windows Supportability" page — not a client-ready EOL report. **Not found — keep generic label, or route via ScalePad (below).** [CS: VERIFIED absence in public docs — https://documentation.n-able.com/N-central/troubleshooting/Content/kb/How-to-create-a-report-that-shows-which-Windows-10-build-is-installed.htm]

### Cove Data Protection
- **Management Console** — the console proper; devices monitored in **Backup > Dashboard**. [CS: VERIFIED — https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/management-console.htm]
- **"Scheduled Reports" / scheduled emails in Management Console** — emailed reports on recent backup and recovery activities; limited to 10 columns × 200 rows. [CS: VERIFIED — https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/console-new/emails.htm]
- **"Recovery Testing"** — automated, hosted restore verification; **Recovery Testing Verification tab** shows boot-phase screenshot as proof of recoverability ("Monitor Recovery Testing Devices"). [CS: VERIFIED — https://documentation.n-able.com/covedataprotection/USERGUIDE/RSG/Content/service-management/console-new/recovery-testing/monitor-recovery-testing-devices.htm]
- **"Standby Image"** — DRaaS bootable-VM replica feature (22.6+; ESXi target added 2024). [CS: VERIFIED — https://status.n-able.com/2022/06/10/advance-notice-cove-22-6-including-standby-image-feature/]
- **"Backup Integrity Report"** — exists, but it is an **N-sight RMM** report on Backup Check state, not a Cove-console surface. Don't attribute it to Cove. [CS: VERIFIED — https://documentation.n-able.com/remote-management/userguide/Content/backup_integrity_report.htm]
- **"Backup Fund"** — **not found as a Cove feature name.** Do not use. [CS: VERIFIED absence]

### Adlumin
- **"One-Touch Compliance Reporting"** — umbrella feature: snapshot reports, framework verification, executive reports. [CS: HIGH — vendor marketing, multiple sources: https://www.n-able.com/products/adlumin/compliance-support ; https://go.adlumin.com/hubfs/2022%20Marketing%20Collateral/Overviews/COM-0037-Overview_The%20Adlumin%20Difference_R2.pdf]
- Framework coverage named by vendor: PCI DSS, NIST, HIPAA, ISO 27001, GLBA, FFIEC CAT, NCUA ACET, FINRA, CMMC. [CS: HIGH — same sources]
- **"Health report"** — no public surface by that name found. G2 reviews mention "executive summary reports" generically. [CS: LOW] **Not found — keep generic label** or use "executive report" per One-Touch naming. [THIN DOMAIN — Adlumin portal docs are login-gated; public sourcing is marketing-grade only. Beth's internal ADL Confluence space is the stronger source and inside her authorization.]
- Stefanie's HIPAA/assessment reports: consistent with the One-Touch HIPAA report claim above [CS: MEDIUM], but exact portal report titles unverified.

### N-able MCP (developer.n-able.com/gql)
- Documented default tools: **introspect · search · validate · execute**. Preview tools: **get_asset_inventory · get_single_asset_details_and_metrics · assign_tags_to_assets · list_script_tasks_for_asset**. Example queries shown: GetAssetCount, UnencryptedWindowsDevices. [CS: VERIFIED — https://developer.n-able.com/gql/docs/mcp and /gql/docs/mcp-capabilities]
- Coverage: N-central device/asset data (and N-sight). **No documented Cove or Adlumin reach; no named warranty/patch/backup queries in public docs.** [CS: VERIFIED — absence in public docs; the GraphQL schema may expose more via introspect]
- Community alternative exists (theonlytruebigmac/n-central-mcp on GitHub) — unofficial. [CS: HIGH — https://github.com/theonlytruebigmac/n-central-mcp]

### Microsoft 365 / Entra
- **Microsoft 365 admin center > Reports > Usage > "Active users"** (incl. "Microsoft 365 Apps active users" with license-use drill-down; 'Last sign-in' surfaced under Users > Active users). [CS: VERIFIED — https://learn.microsoft.com/en-us/microsoft-365/admin/activity-reports/active-users-ww and /activity-reports/activity-reports]
- **Admin center > Billing > Licenses** — assigned vs. purchased counts. [CS: HIGH — standard admin surface, not re-verified this session]
- **Microsoft Entra admin center > Monitoring & health > "Sign-in logs"**; inactive-user detection via Graph `signInActivity`. [CS: VERIFIED/HIGH — https://learn.microsoft.com/en-us/entra/identity/monitoring-health/reports-faq]

### Halo PSA
- Scheduled reporting exists (emailed reports incl. SLA stats on tickets raised/closed); third parties describe SLA monitoring reports and client-review reporting. Exact stock report names **not confirmed from halopsa.com docs** — the guides portal didn't surface a canonical report list. [CS: MEDIUM — https://halopsa.com/guides/article/?kbid=887 (scheduled reporting); texture via https://squaredup.com/blog/getting-started-with-halopsa-dashboards/] [WOBBLY]
- Recommendation: label as "HaloPSA scheduled SLA report / Reports module" — real module, unnamed stock report. Do not invent a report title.
- Note: N-central Report Manager's "Managed Devices SLA Report" is **device availability** SLA, not ticket SLA — don't swap it in for pull 4.

---

## TRACK 2 — r/msp practice (blocked; recollection only)

All items: [CS: LOW — training-data recollection, no retrievable URL] [WOBBLY]. Themes recurrent in r/msp pre-cutoff:
1. Native RMM reporting (N-central included) is widely described as weak/dated for client-facing use; MSPs export to middleware — BrightGauge, ScalePad, CloudRadial, Lifecycle Insights — rather than hand clients native reports. This "route-around" is itself the finding.
2. Warranty/asset lifecycle for QBRs is strongly associated with ScalePad Lifecycle Manager (many MSPs cite its free tier as their QBR hardware-age slide source).
3. Recurring sentiment: clients don't want patch graphs; they want risk, budget, roadmap. QBR decks lead with scores/roadmaps, appendix the tool exports.
4. Backup evidence in QBRs: screenshot-of-boot-verification (Cove Recovery Testing / Datto style) cited as the artifact clients actually respond to.
No verbatim quotes supplied — none could be verified. Do not cite these as community evidence in anything client-facing; they are directional texture only.

---

## TRACK 3 — Non-N-able sources MSPs plausibly pull for a client review

| Vendor/source | Contributes to review | Provenance | Tag |
|---|---|---|---|
| **KnowBe4** — "Phishing Security Test" (PST), "Phish-prone Percentage" (PPP), "Group Report Card", annual "Phishing by Industry Benchmarking Report" | Phish-sim results, exec summary, industry benchmark for pull 6/10 | https://support.knowbe4.com/hc/en-us/articles/360007952894-Reporting-Guide ; https://www.knowbe4.com/resources/reports/phishing-by-industry-benchmarking-report | [CS: VERIFIED names] |
| **usecure — "uPhish"** | UK-MSP-popular phish-sim; per-campaign click/compromise rates | not verified this session | [CS: MEDIUM — training data] |
| **ScalePad Lifecycle Manager** (formerly Warranty Master; documented N-central TAP integration) | Warranty lookup, asset age, "client-ready hardware and software reports", "IT health scorecards" — pull 1 reality path | https://www.scalepad.com/lifecycle-manager/qbr-preparation/ ; N-central KB: https://documentation.n-able.com/N-central/troubleshooting/Content/kb/TAP-Warranty-Master-Integration-with-N-able-N-central.htm | [CS: VERIFIED] |
| **CloudRadial** | QBR portal; surfaces tickets, compliance policy checklists, Office 365 data in-portal | https://support.cloudradial.com/hc/en-us/articles/360041016051-Improving-QBR-Processes-with-CloudRadial | [CS: VERIFIED vendor claim] |
| **BrightGauge** (ConnectWise) | Dashboard/report middleware aggregating PSA+RMM for client reports | https://www.cloudradial.com/integrations/brightgauge | [CS: HIGH] |
| **Duo / Entra ID / Okta** | MFA coverage and auth anomalies for identity slide | no live evidence this session | [A — plausible; confirm before naming in prototype] |
| **Mimecast / Proofpoint** | Email-security stats (blocked phish/spam volumes) | no live evidence this session | [A — plausible] |
| **Dark Web ID (Kaseya/ID Agent) / Breach Secure Now** | Dark-web credential exposure counts — a QBR staple claim | training data only | [CS: MEDIUM names exist; usage-in-QBR [A]] |
| **IT Glue / Hudu** | Documentation completeness/coverage stats | no live evidence this session | [A — plausible] |
| **Cyber-insurance portals/questionnaires** | Control-attestation gaps driving roadmap items | no live evidence | [A — plausible, strong narrative fit for UK accountancy] |

---

## SOURCE-MAP TABLE — the 10 pulls

| # | Pull | Named real surface(s) | [CS:] + provenance | Friction / reality note |
|---|---|---|---|---|
| 1 | Warranty / EOL | N-central **"Warranty Expiry report"** (Reports > Status); Report Manager **"Hardware Upgrade Planning Report"** | [CS: VERIFIED] docs URLs above | Native warranty = 5 OEMs only; no native EOL report found. r/msp reality path: **ScalePad Lifecycle Manager** (ex-Warranty Master, documented N-central integration) [CS: MEDIUM on practice, VERIFIED on integration] |
| 2 | License utilization | M365 admin center **"Active users" usage report** + **Billing > Licenses**; Report Manager **"License Usage and Comparison Report"** (software) | [CS: VERIFIED/HIGH] learn.microsoft.com + Report Manager docs | M365 usage reports can pseudonymize usernames by default (admin setting) — reconcile step needs names enabled [CS: MEDIUM] |
| 3 | User/staff reconcile | Entra **"Sign-in logs"** + Graph **signInActivity**; M365 admin **Active users** list | [CS: VERIFIED/HIGH] Entra monitoring FAQ | Inactive-user detection is Graph/PowerShell in practice, not a single named report [CS: HIGH] |
| 4 | Ticket volume + SLA | **HaloPSA Reports module / scheduled SLA report** (module real; stock report names unconfirmed) | [CS: MEDIUM] halopsa.com guides [WOBBLY] | Don't use N-central "Managed Devices SLA Report" here — that's device availability, not ticket SLA. Middleware (BrightGauge) common for client-facing ticket stats [CS: LOW — recollection] |
| 5 | Patch + backup | N-central **"Patch Status (Detailed)"** / Analytics **"Patch Compliance"**; Cove **Management Console Backup Dashboard**, **"Scheduled Reports"** email, **"Recovery Testing"** boot-verification screenshot | [CS: VERIFIED] all docs URLs above | Recovery Testing screenshot is the client-legible artifact [CS: LOW — community recollection]. Cove scheduled email caps at 10 cols × 200 rows [CS: VERIFIED] |
| 6 | Phish-sim | Platform is fictional in scenario; real analogs: KnowBe4 **"Phishing Security Test"**, **"Phish-prone Percentage"**, **"Group Report Card"**; usecure **"uPhish"** | [CS: VERIFIED KnowBe4 names; MEDIUM usecure] | If prototype keeps a fictional phish-sim vendor, borrow the *metric* name pattern (phish-prone %) not the vendor's — PPP is KnowBe4 trade language [CS: HIGH] |
| 7 | Config-vs-baseline | **Not found — keep generic label.** Closest real: Microsoft **Secure Score** (if baseline = M365 posture) | [CS: HIGH Secure Score exists; no N-central baseline-drift report found] | No native N-central "baseline drift" client report surfaced [WOBBLY — may exist under service templates/custom monitoring; verify internally] |
| 8 | Compliance | Adlumin **"One-Touch Compliance Reporting"** — snapshot reports, framework verification, executive reports (PCI DSS, NIST, HIPAA, ISO 27001, GLBA, FFIEC CAT, NCUA ACET, FINRA, CMMC) | [CS: HIGH] n-able.com/products/adlumin/compliance-support | Exact portal report titles not publicly documented [THIN DOMAIN]. UK accountancy angle (Cyber Essentials, ICO) is [A] — Adlumin frameworks list is US-centric |
| 9 | Package-gap diff | **Not found — keep generic label.** Adjacent real: CloudRadial compliance policy checklists; ScalePad assessments | [CS: VERIFIED those exist; their use as package-gap diff is [A]] | This pull is an internal cross-sell analysis; no vendor ships it as a named report — that's honest, keep it as the MSP's own artifact |
| 10 | Industry trends | Real feed candidates: KnowBe4 **"Phishing by Industry Benchmarking Report"** [CS: VERIFIED]; **Verizon DBIR** [CS: HIGH]; **NCSC Annual Review** + advisories [CS: HIGH]; **ICO data security incident trends** [CS: HIGH]; **N-able "MSP Horizons Report"** [CS: MEDIUM — verify current edition] | URLs above; NCSC/ICO/DBIR not fetched this session | Feeds the proposed **"N-able Harness Trend Report"** — see concept note below |

---

## PRODUCT-CONCEPT NOTE — "N-able Harness Trend Report"
[A — proposed product surface, Beth 2026-07-31. Concept, not an existing product. Name is Beth's call.]

Plausible public feeds an agent could sweep for a UK-accountancy-tenant trend report:
- **NCSC** — Annual Review, threat reports, sector advisories [CS: HIGH — real publications]
- **ICO** — data security incident trends (quarterly published stats), SME guidance [CS: HIGH]
- **KnowBe4 Phishing by Industry Benchmarking Report** — per-industry phish-prone % incl. financial/professional services [CS: VERIFIED it exists]
- **Verizon DBIR** — sector breakout [CS: HIGH]
- **Cyber Essentials scheme updates** (IASME/NCSC) — requirement changes relevant to accountancy clients [CS: HIGH]
- **Microsoft lifecycle announcements** — OS/Office EOS dates feeding pull 1's EOL narrative [CS: HIGH]
- **Cyber-insurance market reports** (e.g., broker/underwriter ransomware-claims reports) [A — category real, no specific report verified this session]
- **Job boards / ONS as staffing-trend proxy** for the client's sector [A — speculative feed]
- **Adlumin threat research blog / N-able MSP Horizons Report** — keeps the branded artifact partially fed by the platform's own research [CS: MEDIUM]
- Reddit evidence of MSPs wanting/sharing trend content with clients: **cannot be verified live (crawler block).** Recollected theme — vendor benchmark reports get reused as QBR filler slides [CS: LOW] [WOBBLY]

---

## Sources
- https://documentation.n-able.com/N-central/userguide/Content/Online_Reports/Reports_WarrantyExpiry.html
- https://documentation.n-able.com/N-central/userguide/Content/Online_Reports/Reports_PatchStatus.html
- https://documentation.n-able.com/N-central/userguide/Content/Analytics/Reports/Default%20reports/patch-compliance.htm
- https://documentation.n-able.com/N-central/userguide/Content/Analytics/Reports/Default%20reports/hardware-inventory.htm
- https://documentation.n-able.com/Report_Manager/userguide/Report_Manager_AC/Content/ReportsConsole/Report_Assets/RC_Report_Assets_Overview.html
- https://documentation.n-able.com/Report_Manager/userguide/Reqs_Checker/Content/ReportsConsole/Report_IT/RC_Report_IT_PatchStat.htm
- https://documentation.n-able.com/N-central/troubleshooting/Content/kb/TAP-Warranty-Master-Integration-with-N-able-N-central.htm
- https://documentation.n-able.com/N-central/troubleshooting/Content/kb/How-to-create-a-report-that-shows-which-Windows-10-build-is-installed.htm
- https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/management-console.htm
- https://documentation.n-able.com/covedataprotection/USERGUIDE/documentation/Content/service-management/console-new/emails.htm
- https://documentation.n-able.com/covedataprotection/USERGUIDE/RSG/Content/service-management/console-new/recovery-testing/monitor-recovery-testing-devices.htm
- https://documentation.n-able.com/remote-management/userguide/Content/backup_integrity_report.htm
- https://status.n-able.com/2022/06/10/advance-notice-cove-22-6-including-standby-image-feature/
- https://www.n-able.com/products/adlumin/compliance-support
- https://go.adlumin.com/hubfs/2022%20Marketing%20Collateral/Overviews/COM-0037-Overview_The%20Adlumin%20Difference_R2.pdf
- https://developer.n-able.com/gql/docs/mcp
- https://github.com/theonlytruebigmac/n-central-mcp
- https://learn.microsoft.com/en-us/microsoft-365/admin/activity-reports/active-users-ww
- https://learn.microsoft.com/en-us/microsoft-365/admin/activity-reports/activity-reports
- https://learn.microsoft.com/en-us/entra/identity/monitoring-health/reports-faq
- https://support.knowbe4.com/hc/en-us/articles/360007952894-Reporting-Guide
- https://www.knowbe4.com/resources/reports/phishing-by-industry-benchmarking-report
- https://www.scalepad.com/lifecycle-manager/qbr-preparation/
- https://support.cloudradial.com/hc/en-us/articles/360041016051-Improving-QBR-Processes-with-CloudRadial
- https://www.cloudradial.com/integrations/brightgauge
- https://halopsa.com/guides/article/?kbid=887
- https://squaredup.com/blog/getting-started-with-halopsa-dashboards/

---

## HONOR CHECK

- **Fabrication risk points named:** "Backup Fund" does not exist (refuted). Adlumin "health report" not found as a named surface. HaloPSA stock report names unconfirmed. Pulls 7 and 9 have no real named surface — generic labels stand.
- **Reddit provenance:** zero live thread URLs in this dossier. Crawler-blocked. All r/msp material is tagged [CS: LOW — recollection] and carries no quotes. Nothing was invented to fill the gap.
- **Authorization:** all sources public vendor docs/marketing. Adlumin portal internals flagged as login-gated and routed to Beth's internal Confluence access, not scraped.
- **What Beth must verify:** Report Manager EOL status vs. Analytics (internal); exact Adlumin portal report titles (ADL space or Stefanie); HaloPSA stock report names (trial tenant or docs login); MCP schema reach beyond assets (run `introspect` against the real endpoint).
- **No synthesis performed:** surfaces mapped to pulls; which labels the prototype adopts is Beth's call.
