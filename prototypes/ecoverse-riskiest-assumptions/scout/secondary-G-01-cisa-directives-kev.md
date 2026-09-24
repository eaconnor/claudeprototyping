# G-01 — CISA Directives and the KEV Catalogue

**What this file settles:** whether the US federal patching deadlines bind anyone outside federal civilian agencies, and what the current deadlines actually are as of Sept 2026.

---

## 1. BOD 22-01 is revoked

**Primary:** https://www.cisa.gov/news-events/directives/bod-22-01-reducing-significant-risk-known-exploited-vulnerabilities

- Issued 3 Nov 2021. Established the Known Exploited Vulnerabilities (KEV) Catalog. [CS: VERIFIED]
- Remediation windows as originally set: **6 months** for CVEs assigned before 2021; **2 weeks** for all others. Agencies had 60 days to update internal vulnerability-management procedures. [CS: VERIFIED]
- Scope: "All software and hardware found on federal information systems managed on agency premises or hosted by third parties on an agency's behalf." Federal executive branch agencies only. Did not apply to private sector, state or local government. [CS: VERIFIED]
- **Status: "This Directive has been revoked. It is superseded by BOD 26-04: Prioritizing Security Updates Based on Risk"** — effective 10 June 2026. [CS: VERIFIED — quoted from the CISA page]

**Also revoked by BOD 26-04:** BOD 19-02, *Vulnerability Remediation Requirements for Internet-Accessible Systems* (29 Apr 2019), which had required high and critical vulnerabilities remediated within 30 and 15 days respectively. [CS: VERIFIED that it is revoked — quoted from the BOD 26-04 page. [CS: MEDIUM] on the 15/30-day figures, which came from a search summary rather than the directive text.]

> **Trap.** "CISA requires 14-day patching" is now false as a present-tense claim, and it collides with Cyber Essentials' genuine 14-day rule. Do not let the two numbers merge.

---

## 2. BOD 26-04 is the current directive

**Primary:** https://www.cisa.gov/news-events/directives/bod-26-04-prioritizing-security-updates-based-risk
**Implementation guidance:** https://www.cisa.gov/news-events/directives/bod-26-04-implementation-guidance-prioritizing-security-updates-based-risk
**Announcement:** https://content.govdelivery.com/accounts/USDHSCISA/bulletins/41b445a

- Effective **10 June 2026**. [CS: VERIFIED] [CS: LOW — outside training window; verified by fetch, not from training]
- **Scope, verbatim:** *"This Directive applies to agency assets in any 'federal information system,' defined in Circular A-130 as an information system—used or operated by an agency or by another entity on behalf of an agency—that collects, processes, stores, transmits, disseminates, or otherwise maintains agency information."* [CS: VERIFIED]
- **On contractors:** the directive states it does not apply to contractors unless specified in procurement contracts, though agencies must review contracts for necessary modifications. [CS: VERIFIED]
- Remediation urgency is a four-variable matrix: **Asset Exposure** (publicly exposed Y/N) · **KEV Status** (in the KEV catalogue Y/N) · **Exploit Automation** (adversary can automate all exploit steps Y/N) · **Technical Impact** (partial or total control). [CS: VERIFIED]
- Table 1 "Remediation Timelines" runs from **3 days** — publicly exposed + KEV-listed + automatable + total control, where agencies must remediate *and* conduct forensic triage to assess prior compromise — down to **"fix on system upgrade"** for the lowest-risk combinations. [CS: MEDIUM. **The table is published as an image in the source document and the individual day counts per row could not be extracted by the fetch tool.** The 3-day floor and the "fix on system upgrade" ceiling are both confirmed; everything between them is not. A human needs to read Table 1 if any intermediate figure is going to be quoted.]
- CISA frames the timelines as **maximums**, representing risk tolerance for unremediated vulnerabilities, not targets. [CS: MEDIUM — from the FedRAMP notice and trade coverage]

**Secondary coverage, for orientation only:**
- https://fedtechmagazine.com/article/2026/09/how-cisa-bod-26-04-changing-risk-based-vulnerability-management-perfcon
- https://industrialcyber.co/cisa/cisa-bod-26-04-directs-agencies-to-prioritize-exploited-vulnerabilities-and-assess-compromise-before-patching/
- https://nucleussec.com/blog/navigating-requirements-cisa-bod-26-04/ [VENDOR-SPONSORED: Nucleus Security sells vulnerability management]
- https://www.zafran.io/resources/cisas-bod-26-04-signals-the-end-of-patch-everything [VENDOR-SPONSORED: Zafran sells risk/remediation tooling]

---

## 3. Does the KEV catalogue bind anyone else?

**No obligation found.** The KEV due dates operate through the Binding Operational Directives, which bind Federal Civilian Executive Branch agencies. CISA's own language on BOD 22-01 was that it "strongly urges all organizations to reduce their exposure to cyberattacks by prioritizing timely remediation of KEV Catalog vulnerabilities." Urging is not a requirement. [CS: HIGH]

Directives also do not apply to statutorily defined "national security systems," nor to certain DoD and Intelligence Community systems. [CS: HIGH]

**For a 100–299-employee private US company, nothing in the KEV catalogue or any BOD creates an obligation.** [CS: HIGH — this follows directly from the verbatim scope text above; recorded as a reading of the scope, not as an independent source.]

---

## 4. The one documented flow-down: FedRAMP

**Primary:** https://www.fedramp.gov/notices/0014/ — "FedRAMP Response to CISA BOD 26-04"

- Applies to **cloud service providers seeking or maintaining FedRAMP Certification.** [CS: VERIFIED]
- **"Mandatory for all cloud service offerings obtaining or maintaining FedRAMP Certification effective December 7, 2026."** [CS: VERIFIED — quoted]
- Grace period through **7 March 2027** with corrective action plans; certification revocation follows. [CS: VERIFIED]
- The notice's own framing: BOD timelines are maximums and providers should remediate much faster. [CS: VERIFIED]

This is the clearest documented case in the pass of a federal patching deadline landing on a private company — and it lands through a voluntary certification a company chose to pursue in order to sell to government, not through general law. A 150-person company is bound by this only if it is a FedRAMP-authorised CSP. [CS: HIGH]

---

## 5. What is not established here

- The full BOD 26-04 Table 1 day counts. [CS: UNKNOWN — image, not text]
- Whether any US state government procurement contract imposes KEV due dates on its vendors. Not checked. [CS: UNKNOWN]
- Whether any commercial contract template in general circulation references the KEV catalogue. Not checked. [CS: UNKNOWN]
