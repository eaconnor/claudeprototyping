# G-06 — Canada: is there a Cyber Essentials analogue?

**Short answer, as evidence rather than verdict:** Canada has the *shape* of Cyber Essentials — a government-authored baseline of 13 controls, SME-scoped, with an accredited certification scheme on top. What it does not have is a patching deadline inside that baseline, or any statute compelling a 150-person private company to adopt it.

---

## 1. CCCS Baseline Cyber Security Controls for Small and Medium Organizations — VERIFIED PRIMARY

**Source read directly:** https://www.cyber.gc.ca/en/guidance/baseline-cyber-security-controls-small-and-medium-organizations
Canadian Centre for Cyber Security. **Version 1.2, published 18 February 2020.** [CS: VERIFIED]

**The patching control, verbatim (BC.2.1):**

> "Organizations should enable automatic patching for all software and hardware OR establish full vulnerability and patch management solutions."

**No timeframe in days or hours is stated in the patching control.** [CS: VERIFIED — checked directly]

**Scope, verbatim (OC.1):**

> "Organizations using the baseline controls should have less than 499 employees"

[CS: VERIFIED]

Note two things Beth may want:
1. The **<499-employee scope** makes this the Canadian government document closest to her ICP band.
2. The control offers **"automatic patching OR a full vulnerability and patch management solution"** as alternatives — which is a product-category statement in a government baseline, and it is the closest thing in the Canadian corpus to a stated reason to buy tooling. It is a "should," not a "must," and it carries no clock.

The 13 baseline control areas are consistently reported as: incident response plan · automatic patching · security configuration · strong user authentication including MFA · employee awareness training · backups and recovery · secure mobility · perimeter defences · malware protection · secure cloud and outsourced IT · secure websites · access control · secure portable media handling. [CS: MEDIUM — enumeration from secondary sources; only BC.2.1 and OC.1 read verbatim]

**Version age is a finding.** v1.2 dates from February 2020. Cyber Essentials has been revised repeatedly since. [CS: VERIFIED]

---

## 2. Government of Canada Patch Management Guidance — a 48-hour figure, but not for private companies

**Page:** https://www.canada.ca/en/government/system/digital-government/online-security-privacy/cyber-security-guidance-policy/patch-management-guidance.html

Reported to specify, for **extreme-impact vulnerabilities that also carry a risk of significant collateral damage to other assets**, an emergency deployment schedule of **patching within 48 hours of notification.** [CS: MEDIUM — from a search summary; **the page was not fetched.** Open it before quoting.]

**Two caveats that matter more than the number:**
1. This is guidance/policy for **Government of Canada departments**, not a rule binding private companies.
2. It is scoped to the most extreme severity band, not to critical patching generally. It is not the Canadian equivalent of Cyber Essentials' flat 14 days.

---

## 3. CyberSecure Canada — the closest analogue, now moved house

**Primary read:** https://ised-isde.canada.ca/site/cybersecure-canada/en

- **"As of March 31, 2023, Innovation, Science and Economic Development Canada (ISED) is no longer the program authority for CyberSecure Canada."** The programme was **transferred, not discontinued**; the **Standards Council of Canada (SCC)** now manages it. Organisations certified before 31 Mar 2023 reference the ISED site for display requirements; those certified after consult SCC. [CS: VERIFIED — read directly]
- SCC programme page: https://scc-ccn.ca/accreditation/accreditation-programs/management-systems/cybersecure-canada [not fetched]
- Certification bodies are accredited by SCC under **ISO/IEC 17021-1**; certification is valid **2 years** before re-certification. [CS: MEDIUM]
- Assessed against the **13 CCCS baseline control areas**, i.e. against the document in §1 above — which means **CyberSecure Canada certification does not impose a patching deadline either.** [CS: HIGH]
- Purpose, per ISED: raise the cyber security baseline among Canadian SMEs, increase consumer confidence in the digital economy, promote international standardisation, and better position SMEs to compete globally. [CS: MEDIUM]

**No evidence found that CyberSecure Canada is required by anyone** — no procurement mandate, no insurance requirement, no customer flow-down. Contrast Cyber Essentials, which is mandatory for certain UK central-government contracts. That contrast is the substance of the Canadian answer. [CS: MEDIUM — negative finding; absence of a mandate is harder to prove than its presence, and I did not search Canadian federal procurement policy directly]

Vendor pages describing the programme (not used for figures): https://content.bulletproofsi.com/cybersecure-certification-canada · https://fusioncomputing.ca/cybersecure-canada-certification-guide/ · https://kapacyber.ca/blog/cybersecure-canada-certification · https://candgsi104.ca/cybersecure.html — all [VENDOR-SPONSORED: certification bodies or IT providers selling the certification].

---

## 4. CPCSC — the Canadian scheme with actual teeth (defence only)

**Primary read:** https://www.canada.ca/en/public-services-procurement/services/industrial-security/security-requirements-contracting/cyber-security-certification-defence-suppliers-canada/program-overview.html
Also: https://www.canada.ca/en/public-services-procurement/news/2026/04/canadian-program-for-cyber-security-certification-level-1.html

The **Canadian Program for Cyber Security Certification (CPCSC)**, managed by Public Services and Procurement Canada — "an official cyber security certification in Canada for defence suppliers."

| Level | Requirement | Status |
|---|---|---|
| **Level 1** | Annual cyber security **self-assessment**, **13 controls** | **Available April 2026** |
| **Level 2** | **External** assessment led by an SCC-accredited certification body, plus annual affirmation, **98 controls** | Under development |
| **Level 3** | Assessments conducted by **National Defence**, plus annual affirmation, **200 controls** | Under development |

[CS: VERIFIED — read directly]

- **No contract-value threshold and no company-size requirement stated** on the overview page. It applies to defence suppliers contracting with the Government of Canada. [CS: VERIFIED — absence noted on the page as fetched]
- **No patching timeframe named** on the overview page. [CS: VERIFIED — for that page. The 13 Level 1 controls were not individually enumerated there; if Level 1's 13 controls are the CCCS baseline's 13, then per §1 there is no deadline — but **that identity is not established.** [CS: UNKNOWN]]
- The page does **not** mention CyberSecure Canada or the CCCS baseline controls. [CS: VERIFIED]
- SCC's inspection-body scheme page for CPCSC: https://scc-ccn.ca/accreditation-scheme/inspection-bodies/canadian-program-cyber-security-certification [not fetched]

[CS: LOW — outside training window] on the April 2026 launch as a matter of my own knowledge; verified by fetch.

Secondary: https://accerta.ca/the-canadian-program-for-cyber-security-certification/ [VENDOR-SPONSORED].

---

## 5. Bill C-26 / C-8 and the CCSPA

- **Bill C-26 passed both chambers in late 2024 but did not receive Royal Assent before Parliament was prorogued in January 2025, and died on the Order Paper.** [CS: MEDIUM]
- A substantially similar **Bill C-8** was introduced **June 2025** and was proceeding through Parliament as of early 2026, reportedly with expanded scope across finance, energy and transport. [CS: MEDIUM] [CS: LOW — outside training window]
- The **Critical Cyber Systems Protection Act (CCSPA)** applies to **designated operators** in four federally regulated critical-infrastructure sectors: **telecommunications, finance (federally regulated banks), energy (interprovincial pipelines, nuclear), and transportation.** Governor in Council may add or remove services and systems; health systems have been flagged as a possible future addition. [CS: MEDIUM]

→ **Does not reach a 100–299-employee private company** unless that company is a designated operator, which by definition it is not. [CS: HIGH]

Sources (all secondary): https://www.publicsafety.gc.ca/cnt/trnsprnc/brfng-mtrls/prlmntry-bndrs/20240614/07-en.aspx (government briefing material — closest to primary, not fetched) · https://mcmillan.ca/insights/bill-c-26-a-new-chapter-in-canadian-cybersecurity-regulation/ · https://www.americanbar.org/groups/business_law/resources/business-law-today/2022-july/canadian-bill-c-26-introduces-new-requirements/ · https://securitybrief.ca/story/from-bill-c-26-to-c-8-canada-s-cyber-law-reboot-explained · https://www.priv.gc.ca/en/privacy-and-transparency-at-the-opc/proactive-disclosure/opc-parl-bp/secu_20240212/is_20240212/

---

## 6. PIPEDA — not established

**I did not examine PIPEDA for a patching or remediation timeframe.** [CS: UNKNOWN]

Stating the honest position: PIPEDA's safeguards principle is generally understood to be a general-standard obligation rather than a prescriptive control list, but **no source is offered for that here and it should not be written down on my authority.** If the Ecoverse doc needs a line on PIPEDA, this is an open task, not a resolved one.

---

## 7. Summary of Canadian timeframes found

| Instrument | Timeframe |
|---|---|
| CCCS Baseline Controls v1.2, BC.2.1 | **None.** "Enable automatic patching … OR establish full vulnerability and patch management solutions" |
| CyberSecure Canada certification | **None** — assessed against the above |
| CPCSC Level 1 | **None named on the published overview page** |
| GC Patch Management Guidance | 48 hours, extreme-impact + collateral-damage only, **Government of Canada departments** [CS: MEDIUM, page unfetched] |
| CCSPA / Bill C-8 | Not established; sector-bound to designated operators |
| PIPEDA | [CS: UNKNOWN] |
