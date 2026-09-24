# G-07 — Cyber insurance underwriting

**Why this is the strongest limb of the assumption:** it is the only limb where I found a *document* — a real, public, fillable application form that asks a 30-day patching question with a yes/no box — plus independent survey evidence, from a sample matching Beth's ICP, that insurers are actively demanding proof of controls.

**Context from the existing doc:** the EU data places insurance **last of nine** security spending drivers at **5%**. The North American material below runs in the opposite direction. Beth draws that comparison; this file supplies the ingredients.

---

## 1. ⭐ The primary artefact: a US broker application asking for 30-day patching

**Source read directly (PDF):** https://www.crcgroup.com/Portals/34/Apps/DaveFinneran/App-Cyber.pdf
**Publisher:** CRC Group (Wholesale & Specialty) — a US wholesale insurance broker / specialty distributor. [VENDOR-SPONSORED in the sense that CRC distributes insurance; it does not sell patching software.]
**Title:** "Cyber Liability Insurance Application." **No date appears on the form.** [CS: VERIFIED — absence checked]

**SECURITY CONTROLS, question 8, verbatim:**

> **8.** Do you regularly monitor security vulnerabilities and appropriately patch and upgrade systems & applications? ☐ Yes ☐ No
> &nbsp;&nbsp;**a.** Apply security patches within 30 days of release? ☐ Yes ☐ No

[CS: VERIFIED — read from the form]

**Neighbouring questions in the same Security Controls block, verbatim (abbreviated), because they map the full control set an insurer prices against:**

- **1.** MFA for: (a) all remote access including RDP; (b) all web-based email accounts; (c) local and remote access to privileged user/network administrator accounts; (d) internal and external access to cloud based back-ups
- **2.** Commercially available and regularly updated firewall and anti-virus for all computer systems
- **3.** Intrusion detection software
- **4.** Email filtering/scanning, plus sandbox detonation of attachments
- **5.** "Are you compliant with the Payment Card Industry (PCI) Data Security Standards?"
- **6.** SPF, DKIM and DMARC
- **9.** Critical business data backed up and stored securely; frequency (Daily / Weekly / Monthly / Quarterly / Every 6 Months); immutability, MFA protection, tested in last 6 months, restorable within 3 days of a widespread malware or ransomware attack; 3-2-1 procedures
- **12–13.** Encryption of private/sensitive information on network or cloud, and on mobile devices
- **14.** "Do you use an endpoint detection and response (EDR) tool that includes centralized monitoring and logging of all endpoint activity across your enterprise?" — plus name the provider
- **15.** Annual security training
- **16.** Dual authorisation for fund and wire transfers over $25,000
- **18.** "Has there been a vulnerability assessment in the past 18 months?"
- **19.** Tested business continuity / disaster recovery programme

[CS: VERIFIED — read from the form]

Also on the form: **General Information Q5 asks Total Employee Count** and Q6 asks annual gross revenues — i.e. the form is sized for exactly the band Beth cares about, not enterprise-only. The Certification states the application "shall be deemed attached to and form a part of the Policy should coverage be bound" and must be signed by an officer. [CS: VERIFIED]

**What this artefact establishes, stated narrowly:** at least one US wholesale broker's standard cyber application makes 30-day patching, centrally-monitored EDR, and a vulnerability assessment within 18 months into explicit, signed, contractually-incorporated representations. It does not establish that this is market-wide.

---

## 2. ⭐ Independent survey evidence: insurers are demanding proof of controls

**Source read directly (PDF, p.36):** https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf
CIRA / The Strategic Counsel, *Perceptions and Attitudes of Canadian Organizations Toward Cybersecurity*, **August 2025**.

**Methodology, verbatim (p.4):** "A total of n=505 cybersecurity decision-makers (employees or owners) completed a 10-12 minute online survey in July - August, 2025. All organizations have at least 50 employees that use a computer or mobile device at least 20% of the time as part of their employment. **Private sector organizations have no more than 999 employees.**" [CS: VERIFIED]

→ **The private-sector sample is 50–999 employees. Beth's ICP is 100–299. This is the closest methodological match to her buyer found anywhere in this pass or the market-sizing pass.** CIRA is the .ca domain registry, a non-profit; it does sell a DNS Firewall, so flag it, but it does not sell patching software or insurance.

**Q31B — "In the past year, has your cybersecurity insurance provider made any of the following changes to your organization's coverage?"**
Base: organisations with cybersecurity insurance coverage, **n=423** (of 505 total → **83.8%** have coverage, which independently corroborates the widely-quoted "84%" figure).

| Change | Total 2025 | Private 2025 | 2021 | 2022 | 2023 | 2024 |
|---|---|---|---|---|---|---|
| Increased premiums | **42%** | 41% | 35 | 39 | 41 | 38 |
| Changed eligibility criteria for obtaining/renewing coverage | **39%** | 40% | 29 | 33 | 37 | 37 |
| **Requested new forms of proof/verification of cybersecurity measures in place** | **39%** | **40%** | 34 | 42 | 39 | 39 |
| Reduced reimbursement amounts for ransomware attacks | 27% | 29% | 23 | 29 | 29 | 30 |
| None / no changes | 16% | 16% | 15 | 15 | 16 | 15 |
| Don't know | 2% | 1% | 11 | 7 | 4 | 3 |

[CS: VERIFIED — read from the report]

**Read the "None/no changes" row: it has sat at 15–16% for five straight years.** Roughly five in six insured organisations in this size band report their insurer changed something about their coverage in the last twelve months, every year, for five years. And "requested new forms of proof/verification of cybersecurity measures in place" has held at 39–42% since 2022 — this is not a spike, it is a standing condition.

Supporting figure from the same report: **84% of organisations have cybersecurity insurance coverage, up from 59% in 2021.** [CS: HIGH — the 59% comparison came from CIRA's own summary rather than a page I read; the 84% is corroborated arithmetically by the n=423/505 base above.]

---

## 3. Broker guidance tying patching speed to insurability — directional, unread

**Marsh, "Cyber resilience: 12 key controls to strengthen your security."**
- https://www.marshmma.com/us/insights/details/cyber-resilience-twelve-key-controls-to-strengthen-your-security.html (returned site navigation only to the fetch tool)
- https://www.marsh.com/my/services/cyber-risk/insights/cyber-resilience-twelve-key-controls-strengthen-your-security.html
- March 2022 PDF: https://assets-usa.mkt.dynamics.com/f8e4c16b-724b-4dd9-ab8b-d4814f7b9f23/digitalassets/docs/0d1802ba-f0fc-ee11-a1ff-7c1e520b4f50 (not fetched)

[VENDOR-SPONSORED: Marsh is an insurance broker; the 12 controls are a commercial framing of its own underwriting-readiness practice.]

Figures reported, **none of which I read in the source**:
- Marsh presents the 12 as cyber hygiene controls "considered best practice by cybersecurity experts and insurance carriers alike," and states that adoption of certain controls "has now become a minimum requirement of insurers, with organizations' potential insurability on the line."
- Top five controls by measured effectiveness: hardening techniques · privileged access management · endpoint detection and response · logging and monitoring · **patched systems**.
- **"Patching high severity vulnerabilities across the enterprise within seven days of the patch's release ties as the fourth most effective control – decreasing an organization's probability of experiencing a cyber event by a factor of 2, yet it has the lowest implementation rate among organizations studied, at only 24%."**

[CS: MEDIUM] on all of the above. The 7-day / factor-of-2 / 24% cluster is the single most quotable set of numbers in this file and I have **not** verified any of it against the source. **Open the Marsh PDF by hand before any of it ships.** Corroborating trade coverage exists (https://www.insurancebusinessmag.com/us/news/risk-management/key-controls-linked-to-decreased-risk-of-cyber-incidents--report-442177.aspx · https://www.reinsurancene.ws/marsh-mclennan-research-links-cybersecurity-controls-and-reduced-cyber-risk/ · https://www.businesswire.com/news/home/20230406005089/en) but corroboration of a press release is not verification of a figure.

Also noted, unfetched: **Marsh Cyber Pathway**, described as enhancing access to cyber insurance and key cybersecurity controls **specifically for small and midsize businesses** — https://www.marsh.com/en/about/media/launch-of-marsh-cyber-pathway-to-enhance-small-business-access-to-cyber-insurance-key-cybersecurity-controls.html. Potentially directly on Beth's ICP. Not read. [CS: UNKNOWN]

An older third-party alignment doc mapping the 12 controls: https://riskmanagementservices.gsba.com/wp-content/uploads/2021/09/Cybersecurity-Controls-Alignment.pdf [not fetched]

---

## 4. Carrier-issued forms — located but not read

| Carrier / form | URL | Status |
|---|---|---|
| Chubb, Cyber ERM Standard Proposal Form (AU) | https://www.chubb.com/content/dam/chubb-sites/chubb-com/au-en/business/cyber-insurance/documents/pdf/cyber-erm-standard-proposal-form.pdf | Not fetched. **Australian jurisdiction** — wrong market for this question |
| Chubb Canada, cyber renewal application (.docx) | https://www.chubb.com/content/dam/chubb-sites/chubb-com/ca-en/business-insurance/cyber-enterprise-risk-management-cyber-erm/documents/word/cyber-renewal-application-form.docx | Not fetched (docx). **Canadian — high value, go get this one** |
| Chubb/ACE Cyber and Privacy Insurance Application (US) | https://www.eqgroup.com/Pdf/Chubb/CHUBB-Cyber-Privacy-Insurance-Application.pdf | Not fetched; third-party host |
| Travelers CyberRisk applications and forms | https://www.travelers.com/business-insurance/professional-liability-insurance/apps-forms/cyberrisk | Index page, not fetched. Noted: Travelers offers a **CyberRisk Short Form Application for new business with revenues of $50,000,000 and below** — a size band that includes Beth's ICP [CS: LOW, from a search summary] |
| Coalition application | https://help.coalitioninc.com/hc/en-us/articles/7665931229851-Our-Application-What-information-do-I-need-to-quote-a-policy-with-Coalition | Not fetched. [VENDOR-SPONSORED: Coalition sells cyber insurance] |

**[CS: UNKNOWN] — no carrier-issued (as opposed to broker-issued) North American application form was read in this pass.** The CRC Group form is a broker form. If Beth needs "a named carrier requires 30-day patching," that claim is not yet grounded.

---

## 5. Market context — NAIC

**NAIC, Report on the Cybersecurity Insurance Market (2025 edition):** https://content.naic.org/sites/default/files/inline-files/2025_Cybersecurity_Insurance%20Report.pdf
**Earlier edition:** https://content.naic.org/sites/default/files/cmte-h-cyber-wg-2024-cyber-ins-report.pdf

Figures reported (2024 data year):
- US direct written premiums **$9.14 billion**, of which US-domiciled insurers wrote **$7.08 billion**
- Market **contracted 7.1%** in 2024 — described as its first-ever premium decline
- Nearly **50,000 claims** filed, **+40% year over year**
- The NAIC Cyber Supplement changed from a two-way standalone/packaged split to a three-way **primary/excess/endorsement** split for 2024 annual statement filings
- 2025: premiums reported up nearly **11%**, ending two years of decline, "mainly due to a ~34% increase in policies in force"

[CS: MEDIUM — **neither PDF was fetched.** All figures via search summary of secondary coverage including https://beinsure.com/us-cyber-insurance-premiums-rebound/. NAIC is a US insurance-regulator body, so the primary is authoritative and free — just open it.]

**This is market data, not underwriting requirements.** It tells you the size and direction of the market, not what insurers demand. Do not press it into service as evidence for the assumption.

---

## 6. ⛔ The 14-day claim — do not cite

A cluster of MSP and IT-services blogs assert that as of 2026 renewals, **centralised patch management with a 14-day SLA for workstations** (and faster for internet-facing systems) is "now a required control on most major carrier questionnaires, not just a preference," with some underwriters asking for ≤7 days on internet-facing systems.

- https://basgcorp.com/blog/cyber-insurance-requirements-2026-what-insurers-demand/
- https://www.cyberduo.com/blog/cyber-insurance-renewal-denied-2026-checklist/
- https://obsidianridge.io/cyber-insurance-questionnaire
- https://www.systemshardening.com/articles/cross-cutting/cyber-insurance-technical-requirements/
- https://3rdelementconsulting.com/resources/cyber-insurance-it-requirements
- https://www.marconet.com/blog/a-complete-guide-to-business-cybersecurity-insurance-questionnaires
- https://smartsmssolutions.com/resources/blog/business/cyber-insurance-requirements-questionnaires-incident-response
- https://thereadiness.ca/cyber-insurance-questionnaire-canada/

**Every one of these sells IT services or security tooling. None names a carrier, a form, or a date.** The only actual document found says **30 days**. [CS: FABRICATION RISK on "14 days is now standard in North American underwriting."]

The collision hazard is severe and specific: **14 days is the real Cyber Essentials figure.** A reader who sees "14 days" in a UK regulatory context and "14 days" in an unsourced US insurance blog will conclude the two markets have converged. The evidence does not support that. Guard this one.

---

## 7. Not established

- Any carrier-issued (not broker-issued) North American application form. [CS: UNKNOWN]
- Whether patching answers affect *pricing* as opposed to *eligibility*. The CRC form is yes/no and gives no scoring. [CS: UNKNOWN]
- US survey data equivalent to CIRA Q31B — i.e. what share of US mid-market insureds report their insurer demanded new proof of controls. **Not found.** [CS: UNKNOWN]
- Whether any insurer *declines* cover for a "No" on the 30-day question. [CS: UNKNOWN]
