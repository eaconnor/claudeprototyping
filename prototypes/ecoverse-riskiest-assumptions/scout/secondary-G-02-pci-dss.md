# G-02 — PCI DSS: the closest thing to a hard North American patching deadline for a mid-market company

**Why this file matters most:** of everything in this pass, PCI DSS 6.3.3 is the only *live, in-force, named-timeframe* patching obligation that can actually attach to a 150-person US or Canadian company, and it attaches on the basis of what the company *does* (takes card payments) rather than what sector it is in or how big it is.

---

## 1. The requirement text

**Requirement 6.3.3, PCI DSS v4.0 defined approach, verbatim:**

> **6.3.3** All system components are protected from known vulnerabilities by installing applicable security patches/updates as follows:
> - Critical or high-security patches/updates (identified according to the risk ranking process at Requirement 6.3.1) are installed within one month of release.
> - All other applicable security patches/updates are installed within an appropriate time frame as determined by the entity (for example, within three months of release).

**Source of this text:** https://learn.microsoft.com/en-us/entra/standards/pci-requirement-6 — Microsoft Learn, "Microsoft Entra ID and PCI-DSS Requirement 6," reproducing the PCI DSS defined-approach requirements alongside Entra guidance. [CS: HIGH — a verbatim reproduction by a credible publisher, read directly. **Not the standard.** The standard itself could not be fetched; see §4.]

Supporting context from the same page, also verbatim:
- **6.3.1** requires vulnerabilities be identified from "industry-recognized sources … including alerts from international and national/regional computer emergency response teams (CERTs)," assigned a risk ranking, with rankings identifying "at a minimum, all vulnerabilities considered to be a high-risk or critical to the environment," covering both bespoke/custom and third-party software "(for example operating systems and databases)."
- **6.3.2** requires an inventory of software components "to facilitate vulnerability and patch management."

Note what 6.3.1–6.3.3 collectively require: an inventory, a monitored feed of vulnerability intelligence, a risk ranking, and a one-month clock. That is a patch-management *programme*, not a patching *activity*.

---

## 2. Who it applies to

**Verbatim, from the PCI SSC's own standard page** (https://www.pcisecuritystandards.org/standards/pci-dss/), under intended audience:

> "Entities that store, process, or transmit cardholder data (CHD) and/or sensitive authentication data (SAD) or could impact the security of the cardholder data environment (CDE)."

[CS: VERIFIED]

- **No employee-count or revenue threshold in the standard.** Applicability turns on handling cardholder data, not on size. [CS: HIGH]
- **Geography:** PCI DSS is a global card-brand standard, not US or Canadian law. It reaches US and Canadian merchants by contract with acquirers and card brands, not by statute. [CS: HIGH]
- **Current version: v4.0.1.** [CS: VERIFIED — listed as the featured current document in the PCI SSC Document Library, https://www.pcisecuritystandards.org/document_library/]

---

## 3. The threshold question I could not close

What a merchant must *do to demonstrate* compliance (self-assessment questionnaire vs. full Report on Compliance, and which SAQ) is set by the individual card brands by annual transaction volume — not by the PCI SSC, and not by employee count. **The specific brand-level merchant-level thresholds were not retrieved in this pass.** [CS: UNKNOWN]

This matters for Ecoverse: it determines whether a 150-person company taking cards faces 6.3.3 as a box it self-attests to annually, or as something an assessor tests. Those are very different buying triggers. Someone needs to open the Visa and Mastercard merchant-level tables.

---

## 4. Unresolved: the v4.0.1 delta ⛔

Several sources claim that **PCI DSS v4.0.1 narrowed 6.3.3 back toward the v3.2.1 language — 30 days, critical severity only** — rather than v4.0's "critical or high … within one month."

- https://tuxcare.com/blog/pci-dss-patching-requirements/ [VENDOR-SPONSORED: TuxCare sells patching and live-patching software]
- https://trustedsec.com/blog/pci-dss-vulnerability-management-the-most-misunderstood-requirement-part-3 (TrustedSec, a QSA firm)

**I could not verify this.** The free official PDF at https://docs-prv.pcisecuritystandards.org/PCI%20DSS/Standard/PCI-DSS-v4_0_1.pdf returns **HTTP 403** to automated fetch, and so does the Summary of Changes at https://docs-prv.pcisecuritystandards.org/PCI%20DSS/Standard/PCI-DSS-v4-0-to-v4-0-1-Summary-of-Changes-r1.pdf.

**[CS: LOW] on the v4.0.1 change. Do not state it.** The text in §1 above is v4.0's. If the difference between "critical or high within one month" and "critical only within 30 days" is load-bearing for anything Beth writes, a human must open that PDF. It is free and public — it is only blocked to the tool.

**Other reference pages seen but not used as sources:**
- https://pcidssguide.com/pci-dss-requirement-6/ — unattributed aggregator
- https://www.seal.security/blog/pci-dss-4-0-patch-management-faq-open-source-security-for-continuous-compliance [VENDOR-SPONSORED: Seal Security sells patching for open-source components]
- https://www.feroot.com/blog/pci-4-0-1-has-arrived/ [VENDOR-SPONSORED: Feroot sells client-side security; the post is about 6.4.3, not 6.3.3]
