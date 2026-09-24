# G-10 — Not established: terminal unknowns and fetch failures

Per CLAUDE.md §4, unknown is a terminal answer, not a low-confidence one. Everything in this file is recorded as unresolved rather than estimated. An absence of evidence here is usable information: it tells Beth which parts of the Ecoverse compliance play still rest on UK law alone.

---

## 1. Terminal unknowns — nobody established this in this pass

### On timeframes

| Question | Status |
|---|---|
| The full BOD 26-04 Table 1 day counts between the 3-day floor and "fix on system upgrade" | **Published as an image in the CISA source.** Not extractable by tool. [CS: UNKNOWN] |
| Whether PCI DSS **v4.0.1** narrowed 6.3.3 to critical-only / 30 days | PDF returns HTTP 403 to automated fetch. The claim is vendor-sourced. [CS: UNKNOWN] — do not state it |
| The DoD-assigned ODP values for NIST SP 800-171 Rev 3 03.11.02 | One secondary source says 30/90/180. Primary not located. [WOBBLY] [CS: UNKNOWN] |
| Whether SOC 2 Trust Services Criteria name a patching timeframe | **Not checked. Cheap and worth doing** — it would connect the contract-flow-down limb to an actual number |
| Whether PIPEDA imposes any patching or remediation timeframe | **Not examined.** [CS: UNKNOWN] |
| Texas statutes | **Not examined.** [CS: UNKNOWN] |
| California statutes (CCPA/CPRA "reasonable security") | **Not examined.** [CS: UNKNOWN] |
| SEC cyber disclosure rules | **Not examined in this pass.** No source offered; nothing should be written on my authority here. [CS: UNKNOWN] |
| Whether CPCSC Level 1's 13 controls are the same 13 as the CCCS baseline | Not established. [CS: UNKNOWN] |
| Whether the Government of Canada 48-hour emergency figure is stated as I received it | Page not fetched. [CS: MEDIUM at best] |
| The other 46 US states | Not surveyed |

### On who is bound

| Question | Status |
|---|---|
| PCI DSS card-brand **merchant-level thresholds** by transaction volume — i.e. whether a 150-person card-accepting company self-attests to 6.3.3 or has it tested | **Not retrieved.** Determines whether 6.3.3 is a real buying trigger or a checkbox. [CS: UNKNOWN] |
| What share of 100–299-employee US companies are federal contractors or subs | **Not found.** Determines the size of the CMMC/FedRAMP-reachable population. [CS: UNKNOWN] |
| Whether any US state procurement contract imposes KEV due dates on vendors | Not checked. [CS: UNKNOWN] |
| Whether any commercial contract template in general circulation references the KEV catalogue | Not checked. [CS: UNKNOWN] |
| How the NY DFS §500.19(a) disjunction resolves for a typical 150-employee DFS-licensed entity | A legal question, not a scout question. Flagged for Beth. [CS: UNKNOWN] |

### On insurance

| Question | Status |
|---|---|
| Any **carrier-issued** (not broker-issued) North American cyber application form | None read. The Chubb Canada renewal .docx and the Travelers CyberRisk forms index were located and not fetched. [CS: UNKNOWN] |
| Whether patching answers affect **pricing** as distinct from **eligibility** | The CRC form is yes/no with no visible scoring. [CS: UNKNOWN] |
| Whether any insurer declines cover on a "No" to the 30-day question | [CS: UNKNOWN] |
| US survey data equivalent to CIRA Q31B (share of insureds asked for new proof of controls) | **Not found.** [CS: UNKNOWN] |
| Marsh's 7-day / factor-of-2 / 24% figures, verified in source | Page returned navigation only; PDF not fetched. [CS: MEDIUM, unverified] |
| Marsh Cyber Pathway — an SMB-specific insurance/controls programme | Located, not read. Potentially directly on ICP. [CS: UNKNOWN] |

### On contracts and drivers

| Question | Status |
|---|---|
| **Any US equivalent of CIRA's Q31C** — whether US mid-market companies report rising customer security requirements | **Not found. The single biggest gap in this pass.** The US side of limb 3 currently rests on one vendor-sponsored survey of that vendor's own customers. [CS: UNKNOWN] |
| Whether customer security questionnaires ask about patch timeframes, and with what numbers | No vendor-risk questionnaire obtained. [CS: UNKNOWN] |
| Share of 100–299-employee US/Canadian companies holding SOC 2 | **Not found.** [CS: UNKNOWN] |
| US survey ranking security spending drivers for mid-market companies | **Not found.** [CS: UNKNOWN] |
| Whether StatCan's CSCSC asks a spending-drivers question | **Questionnaires are public and unread. Cheapest high-value next step in the whole pass.** [CS: UNKNOWN] |
| Whether insurance appears as a spending driver in any NA survey, for comparison with the EU's 5% | **Not found.** [CS: UNKNOWN] |
| Patch-management adoption rate among US/Canadian companies of 100–299 employees | **Not found in any source.** [CS: UNKNOWN] |
| Whether CyberSecure Canada is required by any Canadian procurement policy | No mandate found, but Canadian federal procurement policy was not searched directly. [CS: MEDIUM — negative finding, incompletely tested] |

---

## 2. Fetch failures — open these by hand

| URL | Result | Why it matters |
|---|---|---|
| https://docs-prv.pcisecuritystandards.org/PCI%20DSS/Standard/PCI-DSS-v4_0_1.pdf | **HTTP 403** | **Highest priority.** Free, public, and the only way to confirm the live 6.3.3 text |
| https://docs-prv.pcisecuritystandards.org/PCI%20DSS/Standard/PCI-DSS-v4-0-to-v4-0-1-Summary-of-Changes-r1.pdf | HTTP 403 | Would settle the v4.0 → v4.0.1 delta directly |
| https://www.weforum.org/publications/global-cybersecurity-outlook-2026/ | HTTP 403 | The 74% regulation figure is unusable until this is opened |
| https://www.marshmma.com/us/insights/details/cyber-resilience-twelve-key-controls-to-strengthen-your-security.html | Navigation only, no content | The 7-day patching figure |
| https://assets-usa.mkt.dynamics.com/f8e4c16b-724b-4dd9-ab8b-d4814f7b9f23/digitalassets/docs/0d1802ba-f0fc-ee11-a1ff-7c1e520b4f50 | Not attempted | Marsh 12-controls PDF, March 2022 |
| https://secureframe.com/blog/cybersecurity-compliance-benchmark-report | HTTP 404 | Live URL is https://secureframe.com/books/2026-cybersecurity-and-compliance-benchmark-report |
| https://www.dfs.ny.gov/industry_guidance/cybersecurity | Links only, no regulation text | Resolved via the Second Amendment PDF instead — no action needed |
| https://www.chubb.com/content/dam/chubb-sites/chubb-com/ca-en/business-insurance/cyber-enterprise-risk-management-cyber-erm/documents/word/cyber-renewal-application-form.docx | Not attempted (.docx) | **A Canadian carrier's own renewal application. Go get this.** |
| https://content.naic.org/sites/default/files/inline-files/2025_Cybersecurity_Insurance%20Report.pdf | Not attempted | Free US regulator primary on the cyber insurance market |
| https://www.statcan.gc.ca/en/statistical-programs/instrument/5244_Q1_V1 | Not attempted | Would settle whether a Canadian government drivers question exists |
| https://www.comptia.org/en-us/resources/research/state-of-cybersecurity/ | Not attempted | Best-positioned US non-vendor candidate for a drivers figure |

---

## 3. Sources named but deliberately not accessed

Per CLAUDE.md §10b, "publicly accessible ≠ ours to use," and per instruction, no Gartner material.

- **No Gartner document was retrieved, opened, quoted, paraphrased, or used as a private benchmark in this pass.**
- No paywalled body was accessed. No login was used. No form was submitted. Insurance application forms were read as published PDFs; **none was filled in or submitted.**
- Broker-portal and carrier-portal materials behind authentication were not sought.

---

## 4. One honest note on method

The strongest items in this dossier are strong because I read the actual instrument: the NY DFS regulation text, the CISA directive pages, the CCCS control, the CRC application form, the CIRA report pages. The weakest items are weak for exactly one reason — I accepted a search summary instead of opening the source. Where that happened I have said so and tagged it down.

The two places where that gap is most likely to hurt are the **Marsh 7-day figure** (attractive, quotable, unread) and the **PCI DSS v4.0.1 delta** (a live standard whose current text I do not hold). Both are free to resolve. Neither should ship unresolved.
