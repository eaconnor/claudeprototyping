# G-05 — Federal contracting: NIST SP 800-171, CMMC, FedRAMP

**Relevance to Beth's ICP:** these bind only companies that sell to the US federal government or to a prime that does. They are the clearest US example of *contract flow-down* creating patching obligations — limb 3 of the assumption — but the population they reach is defined by who the company sells to, not by size or sector.

---

## 1. NIST SP 800-171 Rev 3 — the timeframe is a blank to be filled in

**Primary:** https://csrc.nist.gov/pubs/sp/800/171/r3/final — *Protecting Controlled Unclassified Information in Nonfederal Systems and Organizations*, Rev. 3, final.

- Rev 3 introduces **Organization-Defined Parameters (ODPs)** — "fill in the blank" fields embedded in controls, where the implementing organisation or a governing federal agency must supply a concrete value (a frequency, threshold, time period, or action). Reported as **88 ODPs across 49 of the 97 requirements.** [CS: MEDIUM — the ODP mechanism is well attested; the 88/49/97 counts came from secondary sources, not from the NIST document]
- **Requirement 03.11.02** (vulnerability monitoring and scanning) requires remediating vulnerabilities **within organization-defined response times.** The timeframe is not in the standard; it is a parameter. [CS: MEDIUM — the ODP structure for this control is consistently described; **the control text itself was not fetched from NIST**]
- Rev 2's equivalent was **3.11.3** — "Remediate vulnerabilities in accordance with risk assessments," with no timeframe at all. [CS: MEDIUM]
  - https://www.lakeridge.io/how-to-prioritize-and-remediate-vulnerabilities-according-to-risk-assessments-nist-sp-800-171-rev2-cmmc-20-level-2-control-ral2-3113 [VENDOR-SPONSORED: Lake Ridge sells CMMC consulting]

### The 30/90/180 claim — [WOBBLY], do not rely on it

One source states the DoD-assigned ODP values as: **30 days** from discovery for high-risk, **90 days** for moderate-risk, **180 days** for low-risk vulnerabilities.

- https://www.compliancepoint.com/cyber-security/organization-defined-parameters-for-nist-800-171-r3/ [VENDOR-SPONSORED: CompliancePoint sells compliance consulting]

**[WOBBLY] [CS: LOW].** Single non-primary source. Precise, quotable, load-bearing, and unverified — the exact profile of a figure that should not ship. If this matters, someone must find the DoD-published ODP assignment. The same source is clear that the values are severity-banded rather than flat calendar days.

---

## 2. CMMC

- **CMMC Level 2** consists of **110 practices aligned with NIST SP 800-171**, with triennial third-party (C3PAO) assessments for critical national security information and annual self-assessments for select programmes. Focus is protection of Controlled Unclassified Information. [CS: MEDIUM]
  - https://en.wikipedia.org/wiki/Cybersecurity_Maturity_Model_Certification
- Applies to DoD contractors and subcontractors handling Federal Contract Information or CUI. **Not size-gated** — a 12-person machine shop in a defence supply chain is in scope if it touches CUI. [CS: HIGH]
- **No patching timeframe of its own.** CMMC inherits whatever 800-171 says, and 800-171 says "organisation-defined." [CS: MEDIUM]

**Secondary pages seen (all vendor-sponsored, none used for figures):**
- https://secureframe.com/blog/nist-800-171-rev2-vs-rev3 [Secureframe sells compliance automation]
- https://summit7.us/blog/nist-800-171-revision-3 [Summit 7 sells CMMC services]
- https://compyl.com/blog/nist-800-171-rev-3-changes-cmmc/ [Compyl sells GRC]
- https://www.scrut.io/post/nist-sp-800-171 [Scrut sells GRC]
- https://isidefense.com/blog/what-are-nist-800-171-requirements-rev3 [ISI Defense sells CMMC services]

---

## 3. FedRAMP

Covered in full in `secondary-G-01-cisa-directives-kev.md` §4. In brief: FedRAMP Notice 0014 makes CISA BOD 26-04's remediation timelines **mandatory for all cloud service offerings obtaining or maintaining FedRAMP Certification effective 7 December 2026**, with a grace period to 7 March 2027 and revocation thereafter. https://www.fedramp.gov/notices/0014/ [CS: VERIFIED]

This is the one documented instance in the whole pass of a hard federal patching clock reaching a private company by name and date.

---

## 4. Canada's equivalent

See `secondary-G-06-canada.md`. The Canadian Program for Cyber Security Certification (CPCSC) is the direct analogue — Level 1 live April 2026, Level 2 at 98 controls, Level 3 at 200 — and no patching timeframe appears on its published overview page.

---

## 5. Not established

- The DoD-published ODP values (primary source). [CS: UNKNOWN]
- Whether FAR/DFARS clauses independently impose a patching day count. Not checked. [CS: UNKNOWN]
- What proportion of 100–299-employee US companies are federal contractors or subs. Not checked. This is the number that would tell Beth how large this population actually is. [CS: UNKNOWN]
