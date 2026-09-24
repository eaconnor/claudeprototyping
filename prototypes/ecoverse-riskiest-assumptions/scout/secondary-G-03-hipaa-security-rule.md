# G-03 — HIPAA Security Rule: a 15/30-day patching mandate that is proposed, not law

**Status in one line:** the US came close to writing a Cyber-Essentials-style patch deadline into federal law for one sector. As of 24 Sept 2026 it has not done so, and the final action has slipped to July 2027.

---

## 1. What was proposed

On **6 January 2025** the HHS Office for Civil Rights published a Notice of Proposed Rulemaking to update the HIPAA Security Rule. Comment period closed **7 March 2025**. [CS: HIGH — consistent across five independent law-firm alerts]

**The proposed patch-management standard would require regulated entities to implement policies and procedures to identify, prioritise and apply software patches across electronic information systems that create, receive, maintain or transmit ePHI, or that otherwise affect its confidentiality, integrity or availability — with these timing requirements:**

- **15 calendar days** for a critical-risk patch
- **30 calendar days** for a high-risk patch
- a reasonable and appropriate period, per the entity's own policies, for all others

[CS: HIGH — the 15/30 figures and the framing appear consistently across:]
- Covington & Burling — https://www.cov.com/en/news-and-insights/insights/2025/01/hhs-issues-notice-of-proposed-rulemaking-to-update-the-hipaa-security-rule
- Alston & Bird — https://www.alston.com/en/insights/publications/2025/01/new-year-new-hipaa-security-rule
- Epstein Becker Green — https://www.ebglaw.com/insights/publications/proposed-hipaa-security-rule-updates-may-significantly-impact-covered-entities-and-business-associates
- Davis Wright Tremaine — https://www.dwt.com/blogs/privacy--security-law-blog/2025/01/hipaa-security-rule-proposed-changes-in-2025
- Crowell & Moring — https://www.crowell.com/en/insights/client-alerts/ocr-issues-notice-of-proposed-rulemaking-to-modernize-the-hipaa-security-rule
- Reed Smith — https://www.reedsmith.com/en/perspectives/2025/01/industry-compliance-stringent-proposed-hipaa-security-rule

**Not verified:** the Federal Register citation and the proposed regulatory text itself were not fetched. Six independent law firms agreeing is strong, but it is still six secondary sources. [CS: MEDIUM on exact wording]

**Vendor commentary seen and not used:** https://www.manageengine.com/products/desktop-central/blog/hipaa-security-rule-updates-2025-patch-critical-vulnerabilities.html [VENDOR-SPONSORED: ManageEngine sells patch management — this is a direct competitor writing about the regulation as a reason to buy its product. Instructive as a read on how the play gets made; useless as a source.]

---

## 2. Where it stands as of September 2026

- **Not finalised. Not withdrawn.** OCR is still working through roughly **4,745 public comments.** [CS: MEDIUM]
- **OMB now shows final action due July 2027** — a slip of about a year. [CS: MEDIUM]
- A coalition of more than 100 organisations led by CHIME (College of Healthcare Information Management Executives) sent a letter to HHS on **8 December 2025** urging full withdrawal. [CS: MEDIUM]
- Because it is not final, OCR is not enforcing it. [CS: HIGH]

[CS: LOW — outside training window] on all of §2. These items were assembled from search summaries of secondary coverage; none of the primary regulatory-agenda pages were fetched. Sources seen:
- https://www.alston.com/en/insights/publications/2025/11/hipaa-security-rule-overhaul — "HIPAA Security Rule: Still on Track for Finalization"
- https://www.hipaajournal.com/hipaa-security-rule-update-postponed/
- https://www.hipaajournal.com/final-rule-implementing-hipaa-security-rule-updates-edges-closer/
- https://clearwatersecurity.com/blog/hipaa-security-rule-enforcement-2026/ [VENDOR-SPONSORED: Clearwater sells healthcare cyber services]
- https://medcurity.com/hipaa-security-rule-2026/ [VENDOR-SPONSORED]
- https://compliancy-group.com/proposed-hipaa-security-rule-update-2026/ [VENDOR-SPONSORED]

**Anyone writing about this must state that it is a proposal.** Vendor content routinely describes the 15-day rule as though it were in force.

---

## 3. Scope, if it is ever finalised

Covered entities and business associates under HIPAA — healthcare providers, health plans, healthcare clearinghouses, and their service providers handling ePHI. **No size threshold; HIPAA reaches a two-person dental practice.** But it is sector-bound: it says nothing about a 150-person manufacturer, law firm, or logistics company. [CS: HIGH]

---

## 4. Why this is the single most consequential item in the dossier for the assumption

It is the only candidate found in the US for a statutory, named-day-count patching deadline reaching an ordinary mid-market in-house IT team — and it does not currently exist. That absence is what makes the assumption's framing ("frameworks, contracts and insurance rather than one statutory deadline") testable at all. Recorded as an absence, not as a conclusion. [CS: HIGH — negative finding]
