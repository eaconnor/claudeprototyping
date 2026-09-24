# G-04 — US State Law: mandates without deadlines

**The pattern in this file, stated as observation not conclusion:** where US state law touches patching at all, it uses "timely," "reasonably up-to-date," or "risk-based." Not one state instrument found in this pass names a number of days.

---

## 1. New York DFS, 23 NYCRR Part 500 — VERIFIED PRIMARY

**Source read directly:** Second Amendment to 23 NYCRR 500, certified by Superintendent Adrienne A. Harris 16 Oct 2023, effective 1 Nov 2023 — https://www.dfs.ny.gov/system/files/documents/2023/10/rf_fs_2amend23NYCRR500_text_20231101.pdf

### 1a. Section 500.05 — "Vulnerability management"

The Second Amendment **renamed** the section from "Penetration testing and vulnerability assessments" to "Vulnerability management" and rewrote it. Verbatim, new matter as it reads after amendment (PDF p.8):

> Each covered entity shall, in accordance with its risk assessment, develop and implement written policies and procedures for vulnerability management that are designed to assess and maintain the effectiveness of its cybersecurity program. These policies and procedures shall be designed to ensure that covered entities:
>
> (a) conduct, at a minimum:
> &nbsp;&nbsp;(1) penetration testing of their information systems from both inside and outside the information systems' boundaries by a qualified internal or external party at least annually; and
> &nbsp;&nbsp;(2) automated scans of information systems, and a manual review of systems not covered by such scans, for the purpose of discovering, analyzing and reporting vulnerabilities at a frequency determined by the risk assessment, and promptly after any material system changes;
>
> (b) are promptly informed of new security vulnerabilities by having a monitoring process in place; and
>
> **(c) timely remediate vulnerabilities, giving priority to vulnerabilities based on the risk they pose to the covered entity.**

[CS: VERIFIED — read from the regulation text]

**This is the finding.** A 2023 rewrite of one of the most demanding cyber regulations in the United States, with a section explicitly retitled "Vulnerability management," chose **"timely"** and **risk priority** over a day count. Compliance timeline: covered entities had **18 months from 1 Nov 2023** to comply with the new 500.05(a)(2) requirement specifically (§500.22(d)(3)), i.e. by 1 May 2025. [CS: VERIFIED — PDF p.20]

Also relevant, and also with no patching deadline: §500.3 was amended to add **"(o) vulnerability management"** to the required contents of the written cybersecurity policy, and **"(c) asset inventory, device management and end of life management"** — end-of-life management is new matter. [CS: VERIFIED — PDF p.6]

### 1b. Who is covered, and who escapes 500.05

**Covered entity** (§500.1(e), as amended): *"any person operating under or required to operate under a license, registration, charter, certificate, permit, accreditation or similar authorization under the Banking Law, the Insurance Law or the Financial Services Law, regardless of whether the covered entity is also regulated by other government agencies."* [CS: VERIFIED — PDF p.2]

→ **Sector-bound. DFS-licensed financial services only.** A 150-person manufacturer in Buffalo is not a covered entity.

**Limited exemption, §500.19(a), verbatim** (PDF p.17 — note the Second Amendment *raised* all three thresholds; deleted figures shown in brackets):

> (a) Limited exemption. Each covered entity with:
> &nbsp;&nbsp;(1) fewer than [10] **20** employees **and** independent contractors of the covered entity **and** its affiliates;
> &nbsp;&nbsp;(2) less than $[5,000,000]**7,500,000** in gross annual revenue in each of the last [3] **three** fiscal years from **all** business operations of the covered entity and **the business operations in this State of the covered entity's** affiliates; **or**
> &nbsp;&nbsp;(3) less than $[10,000,000]**15,000,000** in year-end total assets, calculated in accordance with generally accepted accounting principles, including assets of all affiliates,
>
> shall be exempt from the requirements of sections 500.4, **500.5**, 500.6, 500.8, 500.10, 500.14(a)(1), (a)(2), and (b), 500.15 and 500.16 of this Part.

[CS: VERIFIED]

**Read the structure carefully: 500.05 is one of the sections the limited exemption removes.** Whether a given 150-person DFS-licensed entity is subject to the vulnerability-management section at all depends on how the (1)/(2)/"or" (3) disjunction resolves for that entity. That is a legal question, not a scout question. [CS: UNKNOWN — flagged for Beth, not answered]

A covered entity that ceases to qualify for an exemption has **180 days from the date it ceases to qualify** to come into compliance (§500.19(h)). [CS: VERIFIED — PDF p.18]

**Class A company** (§500.1(d), new): at least **$20,000,000** gross annual revenue in each of the last two fiscal years from all business operations of the entity and its NY-State affiliate operations, **and** either **over 2,000 employees** averaged over the last two fiscal years, **or** over **$1,000,000,000** gross annual revenue. Class A companies must design and conduct independent audits of the cybersecurity programme (§500.2(c)). [CS: VERIFIED — PDF pp.1, 5]

→ **A 100–299-employee company is nowhere near Class A.** The heavyweight obligations in Part 500 are aimed at a size band an order of magnitude above Beth's ICP.

### 1c. Other Part 500 timeframes — for contrast

Part 500 *does* use hard clocks where it wants them, which makes the choice of "timely" in 500.05 deliberate:
- Extortion payment: notice to the superintendent **within 24 hours** of payment; written explanation **within 30 days** (§500.17(c)). [CS: VERIFIED — PDF p.17]
- "The material failure to comply for any 24-hour period with any section of this Part" constitutes a violation (§500.20(b)(2)). [CS: VERIFIED — PDF p.19]
- Notice of exemption filed **within 30 days** of the determination (§500.19(f)). [CS: VERIFIED — PDF p.18]

---

## 2. Massachusetts, 201 CMR 17.00

**Primary pages:**
- https://www.mass.gov/regulations/201-CMR-1700-standards-for-the-protection-of-personal-information-of-residents-of-the-commonwealth
- https://www.mass.gov/doc/201-cmr-17-standards-for-the-protection-of-personal-information-of-residents-of-the-commonwealth/download
- §17.04 on Cornell LII: https://www.law.cornell.edu/regulations/massachusetts/201-CMR-17-04

- **Scope:** every person that owns, licenses, stores or maintains personal information about a Massachusetts resident must develop, implement, maintain and monitor a comprehensive **written information security program** (WISP). **No employee-count or revenue floor** — though the standard is scaled to the size and resources of the business. [CS: HIGH]
- **§17.04 computer system security requirements** address patching twice:
  - For files containing personal information on an **internet-connected system**: "reasonably up-to-date firewall protection and operating system security patches, reasonably designed to maintain the integrity of the personal information."
  - **System security agent software**: "reasonably up-to-date versions of system security agent software which must include malware protection and reasonably up-to-date patches and virus definitions … and is set to receive the most current security updates on a regular basis."
- **No timeframe in days or hours.** The operative word is "reasonably." Annual review of the WISP is required. [CS: HIGH]

[CS: HIGH not VERIFIED: the quoted phrases came through a search summary of the Mass.gov and Cornell LII pages rather than a direct fetch of the regulation text. The phrasing "reasonably up-to-date … operating system security patches" is distinctive and consistent across both, but a human should confirm against §17.04 before it is quoted in a deliverable.]

**This is arguably the most ICP-relevant US state instrument found:** it binds a 150-person company with no sector limit and no size floor, it explicitly names OS security patches, and it sets no deadline whatsoever.

---

## 3. Safe-harbour / affirmative-defence statutes

Three states let an organisation earn a litigation shield by conforming to a named framework. **None of them mandates anything, and none names a patching timeframe.**

| State | Instrument | Nature |
|---|---|---|
| **Ohio** | Data Protection Act, SB 220 (2018), Ohio Rev. Code ch. 1354 | Affirmative defence to tort claims alleging failure to implement reasonable security, if the entity creates, maintains and complies with a written cybersecurity programme that "reasonably conforms" to a named framework |
| **Utah** | Cybersecurity Affirmative Defense Act (2021) | Similar, and **not expressly limited to tort claims** — potentially reaching contract claims too |
| **Connecticut** | Cybersecurity standards act (2021) | Affirmative defence to certain claims for entities with a programme modelled on an industry-recognised framework |

Named qualifying frameworks across these statutes include the NIST Cybersecurity Framework and other NIST guidance (800-171, 800-53), the CIS Controls, ISO 27000-series, FedRAMP's security assessment framework, and PCI DSS. [CS: MEDIUM]

**[WOBBLY].** Every source for this section is a law-firm blog or trade article. No statute text was fetched.
- https://www.alstonprivacy.com/2021-developments-in-state-cybersecurity-safe-harbor-laws/
- https://www.hoschmorris.com/privacy-plus-news/connecticut-ohio-utah-cybersecurity-standards
- https://www.kirtonmcconkie.com/news/utah-cybersecurity-affirmative-defense-act-a-safe-harbor-for-data-breaches/
- https://www.csoonline.com/article/570529/states-enact-safe-harbor-laws-against-cyberattacks-but-demand-adoption-of-cybersecurity-frameworks.html
- https://www.tenfold-security.com/en/cybersecurity-safe-harbor-laws/ [VENDOR-SPONSORED: tenfold sells IAM]
- https://hyperproof.io/resource/cybersecurity-frameworks-safe-harbor-laws/ [VENDOR-SPONSORED: Hyperproof sells compliance software]
- https://www.ridgeit.com/cybersecurity-safe-harbor-laws-guide/ [VENDOR-SPONSORED: IT services]

Note the mechanism is the inverse of a deadline: it is an *incentive* to adopt a framework, which routes back to limb 1 of the assumption (frameworks) rather than to a statutory clock.

---

## 4. Not checked in this pass

- **Texas** — no statute examined. [CS: UNKNOWN]
- **California** — CCPA/CPRA "reasonable security" not examined; no patching timeframe sought or found. [CS: UNKNOWN]
- **SEC cyber disclosure rules** — not examined in this pass. Widely understood to concern *disclosure* timing for SEC registrants, not patching, but that is not verified here and no source is offered. [CS: UNKNOWN]
- **The other 46 states.** A 50-state survey aggregator exists (https://www.saltycloud.com/blog/state-information-security-regulations/ [VENDOR-SPONSORED: SaltyCloud sells Isora GRC]) and was not used as a source.
