# F-08 — IBM X-Force Threat Intelligence Index 2026: Primary vs the M&M Mis-Citation

**Instruction from the brief:** go to the IBM primary and get the real figures; flag the M&M mis-statement explicitly.

**Done. The M&M figures do not appear in the IBM primary.**

---

## The primary source

**Title:** IBM 2026 X-Force Threat Index
**Publisher:** IBM
**Pub date:** 25 February 2026
**Press release:** https://newsroom.ibm.com/2026-02-25-ibm-2026-x-force-threat-index-ai-driven-attacks-are-escalating-as-basic-security-gaps-leave-enterprises-exposed
**PDF variant:** https://newsroom.ibm.com/2026-02-25-ibm-2026-x-force-threat-index-ai-driven-attacks-are-escalating-as-basic-security-gaps-leave-enterprises-exposed?asPDF=1
**PR Newswire mirror:** https://www.prnewswire.com/news-releases/ibm-2026-x-force-threat-index-ai-driven-attacks-are-escalating-as-basic-security-gaps-leave-enterprises-exposed-302696274.html
**IBM analysis piece:** https://www.ibm.com/think/x-force/threat-intelligence-index-2026-securing-identities-ai-detection-risk-management
**Full report:** ibm.com/reports/threat-intelligence — **free access not explicitly confirmed on the pages fetched**; the X-Force Index is normally free. [CS: MEDIUM on the access terms]

### Method / data basis — PARTIAL
Stated basis: **IBM X-Force observed incidents and X-Force Red penetration tests.** Primary period: 2025, with 2020 comparisons. **No sample size, no incident count, no client count disclosed** on the pages fetched. [CS: HIGH on what is stated; [CS: UNKNOWN] on sample size]

Not vendor-sponsored in the commissioned sense, but note: **IBM is a security vendor publishing threat data about the market it sells into.** First-party incident data, not an independent survey.

---

## Figures as stated in the primary

### Regional
| Figure | Source confidence |
|---|---|
| **North America = 29% of total cases** — most-attacked region **for the first time in six years**, up from **24% in 2024** | [CS: HIGH — IBM newsroom, fetched] |
| APAC share | **Not stated on the pages fetched** [CS: UNKNOWN] |
| Europe share | **Not stated on the pages fetched** [CS: UNKNOWN] |

### Sector
| Figure | Source confidence |
|---|---|
| **Manufacturing = 27.7% of incidents**, fifth consecutive year as top target | [CS: HIGH — IBM newsroom, fetched] |
| Finance and insurance | **Not stated on the pages fetched** [CS: UNKNOWN] |
| Transportation | **Not stated on the pages fetched** [CS: UNKNOWN] |

### Initial access and attack vectors
| Figure | Source confidence |
|---|---|
| Exploitation of public-facing applications **+44% YoY** | [CS: HIGH] |
| Vulnerability exploitation = **40% of incidents in 2025** — now the leading cause | [CS: HIGH] |
| Stolen or misused credentials = **32% of incidents** (after two years of dominance) | [CS: MEDIUM — via Industrial Cyber, https://industrialcyber.co/reports/ibm-x-force-reports-44-surge-in-exploitation-of-public-facing-applications-as-supply-chain-and-identity-attacks-intensify/] |
| **56% of disclosed flaws required no authentication to exploit** | [CS: MEDIUM — via Industrial Cyber] |
| Malware share of incidents | **Not found in the primary** [CS: UNKNOWN] |

### Ransomware, supply chain, AI
| Figure | Source confidence |
|---|---|
| Active ransomware/extortion groups **+49% YoY** (ecosystem fragmentation) | [CS: HIGH] |
| Publicly disclosed victim counts **+~12%** | [CS: HIGH] |
| Supply chain compromises **~4x since 2020** | [CS: HIGH] |
| **>300,000 exposed ChatGPT credentials in 2025** | [CS: HIGH] |
| AI-driven attacks **+56%** | [CS: MEDIUM — search results, not located in the fetched newsroom text] |

---

## ⛔ THE M&M MIS-STATEMENT — flagged explicitly

The MarketsandMarkets endpoint security press release cites IBM X-Force for figures that **do not match the IBM primary**:

| M&M release claims | IBM 2026 primary says | Verdict |
|---|---|---|
| "APAC accounted for **27% of global cyber incidents in 2025**" | **North America = 29%**, named the most-attacked region for the first time in six years. **No APAC figure on the fetched pages.** | ⛔ **Not supported by the primary.** The 27% does not appear. The regional leader is the opposite region. |
| "Malware **45%**" | **No malware percentage found in the primary.** The primary's headline shares are vulnerability exploitation 40% and credential abuse 32%. | ⛔ **Not located in the primary.** |
| "Manufacturing **68%**" | **Manufacturing = 27.7%** | ⛔ **Off by ~40 percentage points.** |
| "Finance and insurance **19%**" | Not stated on the fetched pages | ⛔ **Unverifiable from the primary** |
| "Transportation **25%**" | Not stated on the fetched pages | ⛔ **Unverifiable from the primary** |

**Plus the internal problem Beth already spotted:** the release presents manufacturing 68% / finance 19% / transportation 25% as a descending list. **25% is not less than 19%.** The list is not ordered as presented, and sector shares of 68% + 19% + 25% = 112% before any other sector is counted.

**Status: the M&M citation of IBM X-Force is unreliable on every figure that can be checked, and the two that cannot be checked sit inside a list that does not add up.** [CS: HIGH on this assessment — based on direct fetch of the IBM newsroom release]

### What this does NOT establish
It does not establish anything about M&M's **market sizing** methodology or figures. The threat-data citations and the market model are different work products. **Do not extend this finding to M&M's USD 17.76B / 9.6% figures.** That would be inference beyond the evidence. What it does establish is that M&M's press-release copy did not check its own citations — a fact about the release, tagged as such.

---

## Trade press coverage of the IBM index (secondary, for cross-checking)
- Industrial Cyber — https://industrialcyber.co/reports/ibm-x-force-reports-44-surge-in-exploitation-of-public-facing-applications-as-supply-chain-and-identity-attacks-intensify/ [CS: MEDIUM]
- Computer&AUTOMATION (German) — https://www.computer-automation.de/safety---security/ibm-threat-index-2026--44--more-attacks-via-public-applications.htm
- Cybersecurity Asia — https://cybersecurityasia.net/ibm-2026-x-force-threat-index-ai-escalating/
- Planet Mainframe — https://planetmainframe.com/2026/03/2026-x-force-threat-index-expanded-data-integrity-suite-and-more/
- ToxSec (blog, opinion) — https://www.toxsec.com/p/ibm-x-force-2026-confirms-ai-supercharged [CS: LOW — commentary, not a source]

---

## Use limit

The X-Force Index is **threat data, not market sizing.** Use it for problem framing — vulnerability exploitation at 40% of incidents is the leading initial-access vector, which is on-topic for a patch/vuln-remediation wedge. **Never use it for TAM.** [CS: HIGH]

## Open item for a human
Download the full report from ibm.com/reports/threat-intelligence and pull the **APAC regional share**, the **Europe regional share**, the **malware share**, and the **full sector table**. All four are unresolved from the press release alone. This is the single highest-value outstanding fetch in the pass — it would settle the M&M citation completely rather than provisionally.

