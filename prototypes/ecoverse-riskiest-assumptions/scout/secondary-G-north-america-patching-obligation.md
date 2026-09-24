# Secondary G — North American Patching Obligation (Index + Trust Ladder)

**Scout pass:** Secondary G
**Date:** 2026-09-24
**Requested by:** Beth Connor (Elizabeth Connor, N-able)
**Purpose:** Close the UK/EU-only gap in the Ecoverse riskiest-assumptions doc. The doc's compliance-deadline play rests on Cyber Essentials' 14-day critical-patch rule and an ENISA figure (70% of EU organisations name compliance their top security spending driver). Nobody had established the US/Canada equivalent.
**Buyer in scope:** In-house IT at US and Canadian companies, ~100–299 employees, <~1,000 endpoints, IT team of 2–6. Not MSPs, not enterprises.
**Scope discipline:** Public, published-for-use pages and free PDFs only. No logins, no form submissions, no paywalled bodies. Per CLAUDE.md §10b "offered, not taken."
**Excluded on instruction:** No Gartner material used or consulted in this pass.

---

## The assumption being tested, as posed

> North American pressure runs through *frameworks, customer contracts and cyber insurance* rather than one statutory deadline.

**This index does not rule on that.** It sorts the material. Beth abducts; per CLAUDE.md §18 the interpretation is hers and goes first.

---

## File map

| File | Theme |
|---|---|
| `secondary-G-01-cisa-directives-kev.md` | CISA BOD 22-01 (revoked), BOD 26-04 (current), KEV, FedRAMP flow-down |
| `secondary-G-02-pci-dss.md` | PCI DSS 6.3.3 — the one-month rule, and who it binds |
| `secondary-G-03-hipaa-security-rule.md` | HIPAA Security Rule NPRM — 15/30 days, proposed, not law |
| `secondary-G-04-state-laws.md` | NY DFS Part 500, Massachusetts 201 CMR 17, safe-harbour statutes |
| `secondary-G-05-federal-contracting.md` | NIST SP 800-171 Rev 3, CMMC, FedRAMP |
| `secondary-G-06-canada.md` | CCCS baseline controls, CyberSecure Canada, CPCSC, Bill C-8 |
| `secondary-G-07-cyber-insurance.md` | Underwriting requirements — broker form, insurer behaviour, market data |
| `secondary-G-08-contract-flowdown.md` | Customer/prime contract requirements, SOC 2 as sales gate |
| `secondary-G-09-spending-drivers.md` | Survey data on what drives security spend, US/Canada vs the EU 70% |
| `secondary-G-10-not-established.md` | Terminal unknowns and fetch failures — required reading |

---

## 1. The timeframe question, answered per source

The distinction Beth asked for: which sources name a number of days, and which say "timely" or "risk-based."

| Instrument | Names a timeframe? | The timeframe | Binds a 150-person US/CA private company? |
|---|---|---|---|
| **CISA BOD 26-04** (eff. 10 Jun 2026) | **Yes** | 3 days at worst case → "fix on system upgrade" at best | **No.** Federal information systems. Explicitly not contractors unless written into a procurement contract. [CS: VERIFIED] |
| **CISA BOD 22-01** (2021) | Yes — 2 weeks / 6 months | — | **Moot. REVOKED 10 Jun 2026.** [CS: VERIFIED] |
| **CISA BOD 19-02** (2019) | Yes — 15/30 days | — | **Moot. REVOKED 10 Jun 2026.** [CS: VERIFIED it is revoked; [CS: MEDIUM] on the 15/30 figures] |
| **CISA KEV catalogue due dates** | Yes | Per-CVE due dates | **No.** Due dates operate through the BODs, which bind FCEB agencies. CISA "strongly urges" all organisations. Urging is not an obligation. [CS: HIGH] |
| **FedRAMP (notice 0014)** | Yes — inherits BOD 26-04 | Mandatory from 7 Dec 2026; grace to 7 Mar 2027 | **Only if the company is a FedRAMP-authorised cloud provider.** [CS: VERIFIED] |
| **PCI DSS 6.3.3** | **Yes** | Critical/high: **within one month** of release. Others: entity-determined, e.g. three months | **Yes, if it stores/processes/transmits cardholder data.** No employee-size threshold in the standard. [CS: HIGH on text, VERIFIED on applicability statement] |
| **HIPAA Security Rule (proposed)** | **Yes** | 15 calendar days critical, 30 days high | **Not yet — and healthcare only.** NPRM published 6 Jan 2025; not finalised as of Sept 2026; OMB final action now showing July 2027. [CS: HIGH on the proposal, MEDIUM on status] |
| **NY DFS 23 NYCRR 500.05(c)** | **No** | *"timely remediate vulnerabilities, giving priority to vulnerabilities based on the risk they pose"* | **Only DFS-licensed financial services.** And 500.05 is one of the sections the limited exemption removes. [CS: VERIFIED — regulation text read] |
| **Massachusetts 201 CMR 17.04** | **No** | *"reasonably up-to-date … operating system security patches"* | **Yes, if it holds personal information of a MA resident.** No size floor. No deadline. [CS: HIGH] |
| **NIST SP 800-171 Rev 3 / CMMC L2** | **No — it's a blank** | Remediate within `[organisation-defined response times]` | **Only DoD/federal contractors and subs handling FCI/CUI.** [CS: MEDIUM] |
| **CCCS Baseline Controls for SMOs** | **No** | *"enable automatic patching … OR establish full vulnerability and patch management solutions"* | **Nothing binds. Voluntary guidance.** Scoped to <499 employees. [CS: VERIFIED — text read] |
| **CPCSC Level 1** (Canada, Apr 2026) | Not on the overview page | 13 controls, annual self-assessment | **Only Canadian defence suppliers.** [CS: VERIFIED] |
| **Bill C-8 / CCSPA** (Canada) | Not established in this pass | — | **No.** Designated operators in telecom, finance, energy, transport. And C-26 died on the Order Paper Jan 2025. [CS: MEDIUM] |
| **Ohio / Utah / Connecticut safe harbour** | **No** | Conform to a named framework; affirmative defence, not a mandate | Voluntary. Opt-in shield, not an obligation. [CS: MEDIUM] |
| **Cyber insurance (CRC Group broker form)** | **Yes** | *"Apply security patches within 30 days of release?"* — Yes/No on the application | **Not law. A condition of doing business with the insurer.** [CS: VERIFIED — form read] |
| **Marsh 12 key controls** | **Yes** | High-severity patched enterprise-wide within **7 days** | Broker guidance tied to insurability. [VENDOR-SPONSORED: Marsh sells insurance broking] [CS: MEDIUM] |

---

## 2. Trust ladder

### ⭐ Strongest — primary, read directly, quote freely

1. **NY DFS, Second Amendment to 23 NYCRR 500, certified 16 Oct 2023, effective 1 Nov 2023** — https://www.dfs.ny.gov/system/files/documents/2023/10/rf_fs_2amend23NYCRR500_text_20231101.pdf
   The regulation text itself, read page by page. Section 500.05 was *renamed* from "Penetration testing and vulnerability assessments" to "Vulnerability management" and *still* says "timely remediate." This is the cleanest available proof that a serious, recent, much-cited US cyber regulation declined to set a day count. Also carries the exact 500.19(a) exemption thresholds and the Class A definition.

2. **CISA, BOD 26-04: Prioritizing Security Updates Based on Risk, effective 10 Jun 2026** — https://www.cisa.gov/news-events/directives/bod-26-04-prioritizing-security-updates-based-risk
   And the revocation notice on the old one: https://www.cisa.gov/news-events/directives/bod-22-01-reducing-significant-risk-known-exploited-vulnerabilities
   Any material written before mid-2026 that cites BOD 22-01's "two weeks" as live is wrong. Applicability language is quotable verbatim.

3. **Canadian Centre for Cyber Security, Baseline Cyber Security Controls for Small and Medium Organizations v1.2 (18 Feb 2020)** — https://www.cyber.gc.ca/en/guidance/baseline-cyber-security-controls-small-and-medium-organizations
   Control BC.2.1 and scope statement OC.1 read directly. The <499-employee scope makes this the closest Canadian document to Beth's ICP, and its patching control has no timeframe at all.

4. **CRC Group, Cyber Liability Insurance Application (PDF)** — https://www.crcgroup.com/Portals/34/Apps/DaveFinneran/App-Cyber.pdf
   A real, public, fillable US wholesale-broker application. Security Controls Q8a is a literal yes/no on 30-day patching. This is the single best artefact in the pass for the insurance limb of the assumption, because it is the instrument itself, not commentary about the instrument.

5. **CIRA / The Strategic Counsel, "Perceptions and Attitudes of Canadian Organizations Toward Cybersecurity," Aug 2025 (PDF)** — https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf
   n=505, fielded July–Aug 2025, all orgs ≥50 employees, private-sector orgs capped at 999 employees. Sample frame is very close to Beth's ICP. CIRA is the .ca registry, a non-profit — it does sell a DNS Firewall, so it is not wholly disinterested, but it does not sell patching software. Carries the two figures that speak directly to limbs 3 and 4 of the assumption (Q31B, Q31C) and full 2021–2025 trends.

6. **PCI Security Standards Council, PCI DSS standard page** — https://www.pcisecuritystandards.org/standards/pci-dss/
   Quotable applicability statement: "Entities that store, process, or transmit cardholder data (CHD) and/or sensitive authentication data (SAD) or could impact the security of the cardholder data environment (CDE)."

7. **FedRAMP, Notice 0014 — response to CISA BOD 26-04** — https://www.fedramp.gov/notices/0014/
   The one clean, documented case in this pass of a federal patching deadline reaching a private company — and it does so only via FedRAMP authorisation, not via general law.

8. **Public Services and Procurement Canada, CPCSC Program Overview** — https://www.canada.ca/en/public-services-procurement/services/industrial-security/security-requirements-contracting/cyber-security-certification-defence-suppliers-canada/program-overview.html
   Level 1 live April 2026: 13 controls, annual self-assessment. Post-cutoff, fetched and verified.

9. **Statistics Canada, The Daily — "Impact of cybercrime on Canadian businesses, 2023," 21 Oct 2024** — https://www150.statcan.gc.ca/n1/daily-quotidien/241021/dq241021a-eng.htm
   Government survey, free, with explicit size definitions (small 10–49, medium 50–249, large 250+). Use for spend magnitude. It does **not** carry patching or spending-driver data — see G-09.

### Directional only — shape, not magnitude

10. **Microsoft Learn, "Microsoft Entra ID and PCI-DSS Requirement 6"** — https://learn.microsoft.com/en-us/entra/standards/pci-requirement-6
    Reproduces 6.3.3's defined-approach text verbatim. It is a reproduction, not the standard. Cite the standard; use this to know what the standard says while the PDF is blocked to automated fetch.
11. **Marsh McLennan Agency, "Cyber resilience: 12 key controls"** — https://www.marshmma.com/us/insights/details/cyber-resilience-twelve-key-controls-to-strengthen-your-security.html (page returned navigation only to the tool; a March 2022 PDF exists at https://assets-usa.mkt.dynamics.com/f8e4c16b-724b-4dd9-ab8b-d4814f7b9f23/digitalassets/docs/0d1802ba-f0fc-ee11-a1ff-7c1e520b4f50 — not read). [VENDOR-SPONSORED: Marsh is an insurance broker.] The 7-day / factor-of-2 / 24%-implementation figures are attractive and quotable and I have **not** read them in the source. Open by hand before use.
12. **NAIC, Report on the Cybersecurity Insurance Market (2025 edition)** — https://content.naic.org/sites/default/files/inline-files/2025_Cybersecurity_Insurance%20Report.pdf
    US regulator data. Market size and claims, not underwriting requirements. PDF not fetched in this pass.
13. **Law-firm alerts on the HIPAA NPRM** (Covington, Alston & Bird, Epstein Becker, Davis Wright Tremaine, Crowell) — consistent on the 15/30-day proposal. Good corroboration, still secondary.

### [WOBBLY]

- **The DoD-assigned ODP values for NIST SP 800-171 Rev 3 (30/90/180 days).** Found in exactly one secondary source (CompliancePoint). A specific, load-bearing, precise-looking number resting on a single non-primary source is the exact profile of a figure that turns out wrong. [WOBBLY] [CS: LOW]
- **Secureframe 2026 Cybersecurity & Compliance Benchmark Report** — https://secureframe.com/books/2026-cybersecurity-and-compliance-benchmark-report. [VENDOR-SPONSORED: Secureframe sells compliance-automation software, so every figure about compliance being commercially necessary is a figure about its own market.] n=255, fielded by UserEvidence 22–31 Oct 2025, drawn from "Secureframe's customer community," 79% software/tech. Self-selected sample of people who already bought compliance tooling, answering whether compliance matters. No stated geography. The 61% / 46% / 38% revenue-impact figures are the only quantified US-ish evidence found for the contract flow-down limb, and they are not fit to carry it alone. [WOBBLY]
- **"70% of EU organisations name compliance their top security spending driver" (ENISA), carried in the existing doc.** Not re-verified in this pass. Nothing found in the US or Canada that is methodologically comparable to it, which means the EU-vs-NA comparison Beth wants **cannot currently be made on like-for-like data.** That absence is the finding. [CS: HIGH — negative finding]
- **Ohio / Utah / Connecticut safe-harbour statutes.** Every account of them in this pass is a law-firm blog or trade article. No statute text fetched. The shape is consistent across sources; the specifics are not verified. [WOBBLY] [CS: MEDIUM]

### ⛔ Do not cite — named traps

- **Any claim that CISA BOD 22-01 requires two-week remediation, present tense.** It was revoked on 10 June 2026. Vast quantities of vendor content and at least one live CISA-adjacent blog (Flashpoint) still describe it as operative. Anything citing "CISA's 14-day rule" as current is stale. This trap is especially dangerous for Ecoverse because "14 days" is *also* the Cyber Essentials number — a reader skimming both will merge a live UK requirement with a revoked US one and produce a sentence that is wrong in both directions.
- **"PCI DSS v4.0.1 reverted to critical-only within 30 days."** Appears on tuxcare.com [VENDOR-SPONSORED: TuxCare sells patching and live-patching software] and is echoed by TrustedSec. I could not verify it: the PCI DSS v4.0.1 PDF returns HTTP 403 to automated fetch. The verbatim text I *do* hold is v4.0's, which says critical **or high** within one month. Do not state the v4.0.1 delta until someone opens https://docs-prv.pcisecuritystandards.org/PCI%20DSS/Standard/PCI-DSS-v4_0_1.pdf by hand. [CS: LOW]
- **"74% of security leaders hold a positive view of the effectiveness of cyber-related regulations" (WEF Global Cybersecurity Outlook 2026).** weforum.org returned HTTP 403. The figure reached me through a third-party summary only. Publisher is credible; the citation chain is not. Open the WEF PDF or drop the number. [CS: LOW]
- **"Insurers now require 14-day patch SLAs as of 2026 renewals."** This claim recurs across MSP and IT-services blogs (BASG, CyberDuo, Obsidian Ridge, SystemsHardening, 3rd Element). Every one of them sells IT services. None names a carrier, a form, or a date. The only *document* found says 30 days. Treat "14 days is now standard in underwriting" as unsourced. [CS: FABRICATION RISK]
- **Statistics Canada CSCSC 2025 results.** The survey instrument exists (https://www.statcan.gc.ca/en/statistical-programs/instrument/5244_Q1_V1) and collection ran into 2026, but no results are published. Do not quote 2025-cycle numbers from anywhere. [CS: LOW — outside training window]
- **"66% of Canadian businesses named protecting personal information as the top reason for cyber spending" (CSCSC 2021).** Right shape, right publisher, but it came to me via a search summary and the source page was never fetched. It is also five years old and from a cycle superseded twice. Verify before use.

---

## 3. Fetch failures — open these by hand

| URL | Result |
|---|---|
| https://docs-prv.pcisecuritystandards.org/PCI%20DSS/Standard/PCI-DSS-v4_0_1.pdf | HTTP 403 — **blocks verification of the v4.0.1 6.3.3 text.** Highest-priority manual open. |
| https://docs-prv.pcisecuritystandards.org/PCI%20DSS/Standard/PCI-DSS-v4-0-to-v4-0-1-Summary-of-Changes-r1.pdf | HTTP 403 |
| https://www.weforum.org/publications/global-cybersecurity-outlook-2026/ | HTTP 403 |
| https://www.marshmma.com/us/insights/details/cyber-resilience-twelve-key-controls-to-strengthen-your-security.html | Returned site navigation only; no content extracted |
| https://secureframe.com/blog/cybersecurity-compliance-benchmark-report | HTTP 404 (live URL is under `/books/`) |
| https://www.dfs.ny.gov/industry_guidance/cybersecurity | Page carries links, not regulation text — resolved instead via the Second Amendment PDF |

---

## 4. Compliance notes

- All sources are government pages, standards-body pages, free published PDFs, or free trade/legal commentary. No logins, no forms, no paywalled bodies.
- **No Gartner material** was retrieved, consulted or cited in this pass, per instruction.
- Sponsor named inline wherever the publisher sells into the market the figure describes: Secureframe (compliance automation), Marsh (insurance broking), TuxCare (patching), CIRA (DNS Firewall), and the MSP/IT-services blogs in the do-not-cite list.
- No figure in this dossier was averaged, blended, interpolated, or reconstructed. Where a timeframe does not exist in a source, that is recorded as an absence, not estimated.
