# G-08 — Customer and prime-contractor flow-down

**The limb of the assumption this tests:** that mid-size US/Canadian companies face patching obligations because their own customers or primes require it.

**What exists:** one strong, independent, ICP-matched Canadian data series. One vendor-sponsored US-ish survey with a self-selected sample. No US government or association data.

---

## 1. ⭐ Canada: a five-year trend, from an ICP-matched sample

**Source read directly (PDF, p.37):** https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf
CIRA / The Strategic Counsel, August 2025. n=505, July–Aug 2025, all orgs ≥50 employees, private sector ≤999 employees. Full methodology in `secondary-G-07-cyber-insurance.md` §2.

**Q31C — "In the past year, have you noticed any change in cybersecurity measures/audit control required for your organization's contracts with external third-party vendors (Added 2023: or buyers)? Would you say that such requirements are…?"**
Base: total sample, n=505.

| | Total 2025 | Private 2025 | 2021 | 2022 | 2023 | 2024 |
|---|---|---|---|---|---|---|
| **TOTAL MORE COMMON** | **68%** | **71%** | **56** | **61** | **64** | **71** |
| Much more common | 21% | 22% | 22 | 24 | 20 | 25 |
| A little more common | 47% | 49% | 34 | 36 | 44 | 45 |
| No change | 29% | 27% | 35 | 35 | 33 | 25 |
| TOTAL LESS COMMON | 2% | 2% | 1 | 1 | 1 | 1 |
| Don't know | 1% | 1% | 8 | 3 | 2 | 3 |

[CS: VERIFIED — read from the report]

Three things worth Beth's attention, stated as observations:
1. **"More common" rose from 56% (2021) to 68% (2025)**, peaking at 71% in 2024 — a 12-point rise over five years with a dip in the final year.
2. **Private sector runs higher than total in 2025 (71% vs 68%)** — commercial buyers are pushing harder than public ones in this sample.
3. **"Less common" has never exceeded 2% in five years.** The direction of travel is one-way.

**Caveat on what the question measures:** it asks about "cybersecurity measures/audit control" generally. **It does not mention patching.** Reading it as evidence of patching-specific flow-down is an inference, and it is Beth's inference to make, not mine. [ASSUMPTION flagged: the Ecoverse doc's limb 3 is about *patching* obligations; this data is about security requirements broadly.]

**Companion data point from the same report (p.36):** 39% of insured organisations — 40% in private sector — report their insurer "requested new forms of proof/verification of cybersecurity measures in place" in the past year. Two different channels (buyers and insurers) demanding evidence of controls, from the same sample, in the same year.

---

## 2. Secureframe 2026 Benchmark Report — [WOBBLY], read the sample before using any figure

**Report:** https://secureframe.com/books/2026-cybersecurity-and-compliance-benchmark-report
**Press release:** https://secureframe.com/newsroom/2026-cybersecurity-and-compliance-benchmark-report
**Findings write-up:** https://secureframe.com/blog/2026-cybersecurity-and-compliance-benchmark-report

**[VENDOR-SPONSORED: Secureframe sells compliance-automation software. Every figure below is a figure about the size and urgency of Secureframe's own market, published by Secureframe.]**

**Methodology:** n=**255** responses from security, compliance and IT professionals at organisations from early-stage startups to large enterprises. Survey conducted by **UserEvidence, 22–31 October 2025.** Respondents drawn from **"Secureframe's customer community."** Industry mix: **software and tech 79%**, financial services 17%, healthcare 11%. Released **9 December 2025**. **No respondent geography stated.** [CS: MEDIUM]

**Figures reported:**
- **73%** share a third-party audit report such as a SOC 2 report
- **70%** complete security questionnaires or RFPs
- **61%** report that achieving compliance is **required to win or renew contracts**
- **46%** say a lack of compliance certification has **delayed sales**
- **38%** have **lost revenue or competitive bids** without certification
- **93%** of companies prioritise cybersecurity, but **more than half have one or fewer security staff** (headline of the press release — the staffing figure is directly relevant to Beth's 2–6-person IT team framing)
- Vendors reported dedicating **10–30 hours per questionnaire**, submitting **10–20 questionnaires annually** [CS: LOW — this pair appeared in a search summary attributed to the report and may be from a different Secureframe page]

[CS: MEDIUM] on the figures as accurately reported; **[WOBBLY] on their generalisability, and the reasons are structural, not cosmetic:**

1. **Sample is Secureframe's own customers** — people who already bought compliance tooling, being asked whether compliance matters commercially. The selection effect points directly at the finding.
2. **79% software/tech.** Beth's ICP is not predominantly software companies. SOC 2 pressure in B2B SaaS is a well-known phenomenon and generalises poorly to a 150-person manufacturer or distributor.
3. **n=255**, with subgroup breakdowns by company size and revenue offered on that base — subgroup cells will be small.
4. **No stated geography**, so it cannot be cited as "US" or "North American" data at all.
5. **Nothing in it is about patching.** SOC 2 and questionnaires are the subject; patch timeframes are not.

**If this is the only US-side evidence for limb 3 — and in this pass it is — the limb is single-sourced and the source is the vendor of the thing it describes.** Per CLAUDE.md §4 that must be named in any artefact that leans on it, not discovered later.

Related Secureframe pages (same sponsor, same caveat): https://secureframe.com/blog/soc-2-vs-security-questionnaires

**Aggregator pages seen and not used:** https://www.brightdefense.com/resources/compliance-statistics/ and https://www.brightdefense.com/resources/cybersecurity-compliance-statistics/ [VENDOR-SPONSORED: Bright Defense sells compliance services]. These are stat-farm pages that re-publish other people's figures without method; citing them would launder the provenance. Also seen: nhimg.org, cloudeagle.ai, konfirmity.com, workstreet.com, complyjet.com, cyberbase.ai, skedda.com — all vendor content marketing.

**Unattributed claim encountered, do not use:** "SOC 2 becoming effectively mandatory for most B2B SaaS above ~$50K ACV." No publisher, no method, no definition of "mandatory." [CS: FABRICATION RISK]

---

## 3. Federal and defence flow-down — the documented cases

These are the North American flow-downs that are actually written down in enforceable instruments, and they are narrow:

| Mechanism | Reaches whom | Patching timeframe |
|---|---|---|
| **FedRAMP Notice 0014** — https://www.fedramp.gov/notices/0014/ | Cloud service providers with or seeking FedRAMP Certification | Inherits BOD 26-04 timelines; mandatory 7 Dec 2026, grace to 7 Mar 2027 [CS: VERIFIED] |
| **BOD 26-04 contract clauses** | Contractors, **only where written into the procurement contract** | Agencies must review contracts for modifications [CS: VERIFIED] |
| **CMMC / NIST SP 800-171** | DoD contractors and subs handling FCI/CUI | Organisation-defined parameter; see `secondary-G-05` [WOBBLY] on 30/90/180 |
| **CPCSC (Canada)** | Canadian defence suppliers | None named on the published overview [CS: VERIFIED] |

Full detail in `secondary-G-01-cisa-directives-kev.md` and `secondary-G-05-federal-contracting.md`.

---

## 4. Not established

- **Any US equivalent of CIRA's Q31C.** No US government, association, or independent survey found that asks mid-market companies whether customer security requirements are increasing. **This is the biggest single gap in the pass.** [CS: UNKNOWN]
- Whether security questionnaires specifically ask about patch timeframes, and with what numbers. The CRC insurance form does (30 days); **no customer/vendor-risk questionnaire was obtained.** [CS: UNKNOWN]
- The share of 100–299-employee US/Canadian companies that hold SOC 2. [CS: UNKNOWN]
- Whether SOC 2 Trust Services Criteria name a patching timeframe. **Not checked.** Worth doing — it would connect limb 3 to an actual number. [CS: UNKNOWN]
