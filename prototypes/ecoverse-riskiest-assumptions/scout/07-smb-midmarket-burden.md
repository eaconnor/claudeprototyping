# 07 — SMB / mid-market compliance burden

**The question:** how are smaller organisations without specialist security staff meeting — or failing — these obligations?

---

## ⭐ PRIMARY (UK): Cyber Security Breaches Survey 2025/2026

**Publisher:** Department for Science, Innovation and Technology — **official statistics**
**Published:** **30 April 2026**
**Sample:** **2,112 UK businesses, 1,085 UK registered charities**
**URL:** https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026
**Technical report:** https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026-technical-report
**Education findings:** https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026-education-institutions-findings
**Collection:** https://www.gov.uk/government/collections/cyber-security-breaches-survey

**How obtained:** page fetched and summarised by the fetch tool. **Not** read line-by-line by me. [CS: HIGH, not VERIFIED — see the flag at the end of this file]

### ⭐ The single most on-point number in the UK corpus

> **34% of businesses** have "a policy to apply software security updates within 14 days." **20% of charities.**

That is the Cyber Essentials 14-day rule (file 01) as an adoption rate. Two thirds of UK businesses do not have the policy at all. [CS: HIGH]

### Control adoption

| Control | Businesses | Charities | By size |
|---|---|---|---|
| Policy to apply software security updates within 14 days | **34%** | 20% | size breakdown not returned |
| Any Two-Factor Authentication (2FA) for networks/applications | 47% | 38% | micro **43%** (up from 35% in 2024/25); large **90%** |
| Up-to-date malware protection | 81% | 63% | large **93%** |
| Formal incident response plan | 25% | 19% | micro **21%**; medium **57%**; large **76%** |
| Holds Cyber Essentials certification | **5%** (up from 3%) | — | large **21%→35%**; small **5%→12%** |
| Has heard of Cyber Essentials | 17% | 16% | micro 29% / small 30% / medium 44% / large 60% *(figures as returned — see flag)* |

### Cyber insurance holdings

| | % |
|---|---|
| Businesses with any cyber insurance | 47% |
| Charities | 35% |
| Micro | 45% |
| Small | 55% |
| Medium | 61% |
| Large | 54% |
| **Specific cyber-only policies** | **10%** businesses, 5% charities |

The fetch tool's note: the survey "discusses insurance as risk management tool but does not explicitly detail insurer-mandated security requirements." [CS: MEDIUM]

### Reliance on external providers — the channel signal

Figures returned: micro **44%** (up from 39% in 2024/25); small 39%; medium 51%. Overall 27% of businesses named "external cyber security consultants, IT consultants or cyber security providers" unprompted.

> **⚠️ FLAG.** Micro 44% > small 39% is internally odd and may be the fetch summariser mixing two different questions (e.g. "uses any external IT provider" vs "uses external cyber security provider"). **Verify at source before using any of these three numbers.** [CS: LOW as returned]

### Education sector — patching is the weakest CE control

> "Patch management (a policy to apply software security updates within 14 days) is **the technical area of Cyber Essentials that fewest educational establishments addressed**, though it increased among secondary schools from **56% in 2024/2025 to 62% in 2025/2026**." [CS: HIGH]

### Named absence

> "Document does not explicitly quantify compliance, regulation, or insurance as stated drivers of cyber security spending or activity prioritization." [CS: MEDIUM — an absence reported by the fetch tool, not confirmed by me]

---

## ⭐ PRIMARY (EU): ENISA NIS Investments 2025 — SME cuts

Full source detail in file 05. All figures read directly from the ENISA PDF. **SME n=183; large enterprise n=897 (n=902 in one figure).** [CS: VERIFIED]

### SMEs don't assess

**Fig. 13, p.22 — conducted a cybersecurity assessment or testing in the past 12 months:**
| | Yes | No | Don't know |
|---|---|---|---|
| Large enterprise (n=902) | 76% | 24% | 1% |
| **SME (n=183)** | **37%** | **63%** | 0% |

ENISA's wording, p.22, verbatim:
> "Almost one in three of the organisations (**and more than one in two of the SMEs**) surveyed reported **not having conducted any form of cybersecurity assessment in the previous 12 months**, potentially leaving blind spots in their understanding of exposures and gaps."
> "This is particularly concerning for SMEs, where **63% of the entities surveyed stated that they had not performed any form of cybersecurity assessment in the previous year**."

### ⭐ SMEs don't patch on time

**Fig. 15, p.23 — average time to patch critical vulnerabilities on critical assets (IT or OT):**
| Time | Large (n=897) | **SME (n=183)** |
|---|---|---|
| Within a week | 9% | **3%** |
| Within a month | 35% | **13%** |
| Within three months | 33% | **29%** |
| **More than three months later** | 23% | **51%** |
| Variable / don't track timing | 1% | 4% |

ENISA, p.23, verbatim:
> "The issue appears even more pronounced among SMEs, where **more than one in two (51%) suggest it takes them more than three months to apply critical patches on critical systems.**"

### SME barriers are budget and skills, not regulatory complexity

**Fig. 12, p.20 — top reported barriers to effective implementation of NIS2 controls:**
| Barrier | Large Enterprise (n=897) | **SME (n=183)** |
|---|---|---|
| Complexity of regulatory requirements across jurisdictions | 25% | **11%** |
| **Insufficient budget** | 7% | **27%** |
| Lack of management support or prioritisation | 16% | 17% |
| **Lack of skilled personnel or internal expertise** | 19% | **27%** |
| Operational constraints (e.g. legacy systems; OT limitations) | 29% | 17% |
| Uncertainty about how to interpret or implement regulatory requirements | 4% | 1% |

ENISA's own read, p.20, verbatim — and it names the product shape:
> "When examining their alignment with NIS2, the barriers faced by organisations vary depending on the size, with SMEs and large companies experiencing different operational and resource challenges. Differences by the size of organisations suggest tailored responses. **Large enterprises are most constrained by operational realities and regulatory complexity, whereas SMEs cite budget limitations and shortages of skilled personnel as equally critical obstacles.** This points to distinct support needs: for larger entities, harmonised approaches and paths for the transition from legacy to modern technology; **for SMEs, accessible guidance, affordable tooling (including managed and cloud services governed under the above frameworks) and skills development.**"

> **Note the phrase "affordable tooling (including managed and cloud services governed under the above frameworks)."** That is an EU agency naming the managed-service delivery model as the SME remedy. [CS: VERIFIED]

### SME confidence is lowest

ENISA Insight #7, p.5, verbatim:
> "Preparedness is uneven, with **SMEs reporting the lowest confidence in their ability to anticipate, withstand and recover from cyber incidents — across all scenarios.**"

---

## SUPPORTING (UK, weaker): DSIT/Grant Thornton, *Insuring Resilience*, April 2025

Full source detail and [WOBBLY] caveat in file 06. Relevant SME-burden material:

- 30% of SME respondents spend **less than £10,000 annually** on all cyber security (including insurance and staff salaries); another 15% spend £10,000–£24,999 (p.17)
- 47% of non-insured respondents have **no formal approach to cyber risk management** (p.13)
- Respondent free-text difficulty: "**assessing whether outsourced IT meet technical requirements**" (p.16)
- p.8, verbatim: "The UK Government's Cyber Security Breaches Survey (2024) shows that **many SMEs dedicate less than 5% of their IT budgets to security**, even as they face increasing cyber incidents. In addition, research from **Hiscox (2021)** indicates that **many SMEs lack dedicated cyber security teams and instead rely on ad-hoc solutions**, further heightening their vulnerability."
  [CS: MEDIUM — this is GT summarising CSBS 2024 and a Hiscox (insurer) report. Neither underlying source read. The Hiscox item is [WOBBLY] — insurer-published.]
- Awareness of government schemes among organisations, Fig. 4, p.14, sourced to CSBS 2024: Cyber Essentials scheme **12%** · 10 Steps to Cyber Security guidance **13%** · Cyber Aware campaign **25%**

---

## DSIT's own admission of the gap

Impact Assessment §12, p.126 (full detail in file 04), verbatim:
> "…further evidence gaps have been identified that will need to be monitored going forward, including **the cost of compliance activities, how they vary by organisation (including for SMEs)** and the time spent by businesses familiarising themselves with the legislation."

[CS: VERIFIED] The UK Government says it does not know the SME compliance cost distribution. That absence is itself a finding for Gate 1.
