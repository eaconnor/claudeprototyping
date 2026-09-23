# 08 — Other regimes, and everything that could NOT be verified

**Read this before quoting anything from files 01–07.**

---

## PART 1 — Other regimes, at the fidelity actually achieved

### GDPR / UK GDPR Article 32 — "security of processing"

**Source:** Information Commissioner's Office, *A guide to data security*, https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/security/a-guide-to-data-security/
**Obligation date:** in force since 25 May 2018. **No 2026–2028 trigger.**

**Article 32(1) as reproduced by the ICO, verbatim:**
> "Taking into account the state of the art, the costs of implementation and the nature, scope, context and purposes of processing as well as the risk of varying likelihood and severity for the rights and freedoms of natural persons, the controller and the processor shall implement appropriate technical and organisational measures to ensure a level of security appropriate to the risk"

[CS: HIGH — quoted by the ICO, i.e. the UK regulator, not the primary Regulation text]

**⭐ What Article 32 does NOT do — this matters:**

Per the ICO guidance as fetched:
> The guidance **does not explicitly name patching, vulnerability management, asset inventory, or software updates** as expected measures.

It does reference:
- **Cyber Essentials** as "a good starting point" containing "basic technical controls you can put in place relatively easily"
- general categories: system security, data security, online security, device security
- vulnerability scanning and penetration testing as techniques to reveal "areas of potential risk"
- that measures "may have to go beyond" Cyber Essentials depending on circumstances

[CS: MEDIUM — this is the fetch tool's characterisation of an absence on one ICO page. I did not read the full ICO security guidance suite.]

> **Do not write "GDPR Article 32 requires patching within X days."** It does not specify any technical control or timeline. Article 32 is a risk-proportionate standard. The route from Article 32 to a patch cadence runs *through* Cyber Essentials as regulator-endorsed good practice, not through the Article text. [CS: HIGH on that structure]

---

### DORA — Regulation (EU) 2022/2554

**Applies from: 17 January 2025.** [CS: HIGH — EIOPA and ESMA official pages: https://www.eiopa.europa.eu/digital-operational-resilience-act-dora_en · https://www.esma.europa.eu/esmas-activities/digital-finance-and-innovation/digital-operational-resilience-act-dora. Neither page body was fetched; date taken from search snippets of those official domains.]

Scope: financial entities. Search snippets from official EU domains state it applies to "20 different types of financial entities and ICT third-party service providers," and that from 17 January 2025 in-scope entities must hold "a comprehensive register of their contractual arrangements with ICT third-party service providers available at entity, sub-consolidated and consolidated levels."

**Assessment against the brief: DORA is NOT a 2026–2028 trigger.** The applicability date has passed.

**[CS: UNKNOWN]** — DORA's article-level ICT risk management requirements (Articles 5–15) and whether any of them specify patch timeliness, configuration baselines or asset inventory in operative terms. **Not retrieved.** The EBA has amended its Guidelines on ICT and security risk management measures in the context of DORA application (https://www.eba.europa.eu/publications-and-media/press-releases/eba-amends-its-guidelines-ict-and-security-risk-management-measures-context-dora-application) — not read. That is the obvious next step if the financial sector matters to the Ecoverse case.

---

### PCI DSS — Requirement 6.3.3

**Source read:** PCI Security Standards Council, *Payment Card Industry Data Security Standard — Self-Assessment Questionnaire D and Attestation of Compliance for Service Providers*, **PCI DSS v4.0**, **April 2022**. Footer on every page: "PCI DSS v4.0 SAQ D for Service Providers, Section 2b: Self-Assessment Questionnaire / © 2006-2022 PCI Security Standards Council, LLC."
https://listings.pcisecuritystandards.org/documents/PCI-DSS-v4-0-SAQ-D-Service-Provider.pdf

**Requirement 6.3.3, verbatim (doc p.53):**
> "All system components are protected from known vulnerabilities by installing applicable security patches/updates as follows:
> - **Critical or high-security patches/updates (identified according to the risk ranking process at Requirement 6.3.1) are installed within one month of release.**
> - All other applicable security patches/updates are installed within an appropriate time frame as determined by the entity (for example, within three months of release)."

Expected testing, verbatim:
> "Examine policies and procedures. · Examine system components and related software. · **Compare list of security patches installed to recent vendor patch lists.**"

[CS: VERIFIED — read directly from the PCI SSC document]

**Related requirements captured in passing:**
- **5.3.5** (p.47): "Anti-malware mechanisms cannot be disabled or altered by users, unless specifically documented, and authorized by management on a case-by-case basis for a limited time period."
- **5.3.2** (p.46): anti-malware solution "Performs periodic scans and active or real-time scans OR Performs continuous behavioral analysis of systems or processes."
- **5.3.3** (p.46): for removable electronic media, automatic scans on insert/connect/mount, or continuous behavioural analysis.
- **6.4.3** (p.55): payment page script management requires "An inventory of all scripts is maintained with written justification as to why each is necessary."
- Several v4.0 requirements carried the note: "This requirement is a best practice until **31 March 2025**, after which it will be required and must be fully considered during a PCI DSS assessment." That date has passed. **Not a 2026–2028 trigger.**

> ### ⚠️ NAMED TRAP — the v4.0.1 question
> Vendor blogs assert that **PCI DSS v4.0.1 (2024) narrowed 6.3.3 to *critical* severity only**, reverting to v3.2.1 language, i.e. dropping "high." Those blogs contradict each other on the detail. **The official v4.0.1 text was NOT located** — the PCI SSC document library requires a click-through licence agreement this tool could not pass.
>
> **[CS: LOW on the v4.0.1 position. [CS: VERIFIED] only on the v4.0 wording above.]**
> If the v4.0.1 scope matters, get it from https://www.pcisecuritystandards.org/document_library/ — specifically PCI DSS v4.0.1 and the *Summary of Changes from v4.0 to v4.0.1*.

**Requirements requested but not located in the pages read:** 11.3.1 (internal vulnerability scans) and 12.5.1 (inventory of system components). Both exist in PCI DSS v4.x; I did not reach their pages in the SAQ. **[CS: UNKNOWN]**

---

### ISO/IEC 27001:2022 Annex A

**NOT LOCATED. [CS: UNKNOWN]**

ISO standards are sold, not published. No control text was retrieved. **Do not state control numbers or wording for A.5.9 (inventory of information and other associated assets), A.8.8 (management of technical vulnerabilities), A.8.9 (configuration management) or any other Annex A control from this dossier.** Even the control numbers above are written here as a research pointer, not as a verified claim.

**Route that would work:** ENISA's *Technical Implementation Guidance* (file 02) states that each NIS2 requirement "is mapped to (a) requirements of European and international standards or frameworks (International Organization for Standardization (ISO) / International Electrotechnical Commission (IEC) 27001:2022, …)" and that mapping tables sit at the end of each section and on the ENISA website. Those mapping tables give the **control numbers** without the copyrighted control text. That is the legitimate free route to an ISO crosswalk. Not pulled in this pass. [flagged as a gap]

---

## PART 2 — Obligation dates in 2026 / 2027 / 2028: the actual answer

Everything below is drawn from files 01–04. This is a consolidation, not new material.

| Date | Instrument | Who it binds | CS |
|---|---|---|---|
| **11 June 2026** | CRA Chapter IV | Conformity assessment bodies (not end users) | [CS: HIGH] |
| **11 September 2026** | CRA Article 14 reporting | **Manufacturers** of products with digital elements placed on the EU market | [CS: VERIFIED — Commission] |
| **11 December 2027** | CRA main obligations + CE marking | **Manufacturers, importers, distributors** of products with digital elements | [CS: VERIFIED — Commission] |
| 2027 | Next Post-Implementation Review of UK NIS Regulations 2018 | DSIT (a government review, not a business obligation) | [CS: VERIFIED — IA §12 p.126] |
| **UNDATED** | UK CSR Bill / RMSP duties | UK managed service providers, non-small/micro. Register within **3 months of commencement**; commencement by secondary legislation after Royal Assent | [CS: VERIFIED that it is undated] |
| **2028** | — | **Nothing found.** | [CS: UNKNOWN] |

### Three observations about that table, stated as observations

1. **The only hard 2026–2027 dates found are CRA dates, and they bind manufacturers.** Whether the CRA imposes any duty on *deployers* of products with digital elements was not established (file 03). If it does not, CRA is a supply-side event for endpoint *vendors*, not a demand-side trigger for endpoint *management buyers*. **This is load-bearing and unresolved.** [CS: UNKNOWN]
2. **The UK MSP event — the one closest to N-able's channel — has no date.** It has a three-month registration clock that starts on an unknown day.
3. **NIS2's own deadline (17 Oct 2024) is two years past** and is still being litigated at the CJEU against four member states as of July 2026. The "deadline" did not function as a single dated event; it became a multi-year enforcement tail.

---

## PART 3 — Tool failures, so nobody re-runs them

| Target | Result |
|---|---|
| `eur-lex.europa.eu` — all routes (`/eli/...`, `/legal-content/EN/TXT/HTML/`, `/legal-content/EN/TXT/`, `/legal-content/EN/TXT/PDF/`) for CELEX 32022L2555, OJ L_202402847, OJ L_202402690 | Empty response bodies. **All EU primary legislative text is unreachable via this tool.** Use a browser. |
| `bills.parliament.uk/bills/4009` and `/4035` | HTTP 403 |
| `commonslibrary.parliament.uk/research-briefings/cbp-10442/` | HTTP 403 |
| `gartner.com/en/newsroom/press-releases/...` | HTTP 403 |
| `dl.acm.org/doi/full/10.1145/3676283` | HTTP 403 |
| `danielwoods.info/publications/` | Socket closed |
| `ecs-org.eu/policy/nis2-directive-transposition-tracker/` | HTTP 404 |
| PCI SSC v4.0.1 standard document | Behind a licence click-through |
| ISO/IEC 27001:2022 | Paid standard |

**One workaround worth keeping:** PDFs that the fetch tool cannot parse are still **saved to disk**, and can then be read page-by-page. That is how Cyber Essentials v3.2, the ENISA guidance, the ENISA NIS Investments report, the DSIT Impact Assessment, *Insuring Resilience* and the PCI SSC SAQ were all read. The fetch summariser also enforces a ~125-character cap per quote, which is why verbatim extraction had to go through the PDF-read path rather than the fetch prompt.

---

## PART 4 — The honest gaps

Named rather than filled, per CLAUDE.md §4:

1. **No deadline-indexed purchasing time series exists in what was found.** Nothing links a specific compliance date to a measurable spike in security tool purchases around that date. All spend evidence is cross-sectional (annual survey) or ex-ante (impact assessment). **[CS: UNKNOWN]** — this is the exact shape of evidence the "repeatable switch trigger" assumption needs, and it was not located.
2. **NIS2 Article 21(2) verbatim.** Not retrieved. The CIR 2024/2690 Annex (file 02) is the operative substitute for the sectors that matter, but it is not Article 21.
3. **CRA applicability to deployers vs manufacturers.** Unresolved, and it determines whether the only firmly-dated 2026–27 obligations are a demand trigger at all.
4. **Per-member-state NIS2 national commencement dates.** Not retrieved.
5. **Whether insurers specifically require patch cadence.** The one UK survey instrument on this topic did not ask. Both directions are unsupported.
6. **Cyber Essentials v3.2 currency.** Search results hinted at April 2026 scheme changes and a "Willow" question set. Not verified.
7. **Config-baseline and MFA requirements at CIR fidelity.** Sitting unread at known page numbers in the ENISA PDF (6.3 configuration management p.82; 6.9 malicious software p.101; 6.10 vulnerability handling and disclosure p.103; 11.7 MFA p.144). Cheapest high-value next increment.
8. **ISO 27001:2022 crosswalk.** Available free via ENISA's mapping tables; not pulled.
