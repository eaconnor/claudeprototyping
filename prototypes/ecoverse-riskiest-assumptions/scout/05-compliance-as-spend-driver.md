# 05 — Published evidence: does compliance actually drive tool spend?

**Best available answer comes from an EU agency surveying the exact population NIS2 covers.**

---

## ⭐ PRIMARY: ENISA, *NIS Investments 2025*

**Publisher:** European Union Agency for Cybersecurity (ENISA)
**Sample:** **1,080 European organisations** operating in NIS2-covered sectors (n figures per question vary: large enterprise n=897 or 902, SME n=183)
**Published:** December 2025 (file path `/2025-12/`); a second copy sits at `/2026-02/`
**URLs:**
- Main report: https://www.enisa.europa.eu/sites/default/files/2026-02/NIS%20Investments%202025%20-%20Main%20report.pdf
- Survey data companion: https://www.enisa.europa.eu/sites/default/files/2025-12/NIS%20Investments%202025%20-%20Survey%20data%20companion%20document.pdf
- Landing page: https://www.enisa.europa.eu/publications/nis-investments-2025

All figures read directly from the main report PDF. [CS: VERIFIED]

---

### The headline claim, verbatim

**Insight #3 (p.5):**
> "**Compliance is the main investment driver but not the only outcome.** Compliance remains the main driver of cybersecurity investment (**70%**) yet its benefits extend beyond regulation — strengthening risk management (41%), detection (35%) and response (26%). Looking ahead, organisations plan to focus more on upgrading tools, improving recovery and building internal skills, indicating that policy is steering progress in the right direction."

**p.16, verbatim:**
> "**70% of surveyed organisations identified regulatory compliance with the requirements stemming from frameworks such as the NIS2 Directive, the CRA, or DORA, as the main driver of their cybersecurity investment over the past year** (Fig. 7). This underscores that alignment with legal and regulatory requirements was the key factor influencing spending decisions across both public and private sectors."

### Fig. 7 — Key cybersecurity investment drivers for 2024 (full ranking)

| Driver | % | n |
|---|---|---|
| Regulatory compliance requirements (e.g. NIS2, DORA, CRA) | **70%** | 760 |
| Proactive risk mitigation & damage prevention (reputational or financial) | 42% | 449 |
| Supply chain security requirements | 29% | 315 |
| Customers' security requirements | 26% | 286 |
| Response to past cyber incidents or near misses | 26% | 279 |
| Geopolitical threats | 22% | 236 |
| Digital transformation programs | 22% | 233 |
| Executive / board requests | 7% | 78 |
| **Insurance requirements or conditions** | **5%** | **55** |

> **⚠️ Read the bottom row.** Insurance ranks **last of nine** at 5%. This cuts directly against the "insurance as parallel forcing function" hypothesis. See file 06 for the contradicting source. [CS: VERIFIED]

### Fig. 8 — Outcomes attained via cybersecurity investment in 2024

| Outcome | % | n |
|---|---|---|
| Improved regulatory compliance status | 45% | 491 |
| Better identification & mitigation of risks | 41% | 446 |
| Faster detection of incidents | 35% | 380 |
| Improved incident response and recovery capabilities | 26% | 282 |
| Fewer incidents caused by human error | 21% | 224 |
| **Enhanced visibility of IT/OT assets and their security posture** | **18%** | 192 |
| **Increased efficiency in cybersecurity operations (e.g. through automation; patching)** | **12%** | 133 |
| No measurable improvements observed yet | 4% | 47 |
| Don't know | 1% | 8 |

ENISA's reading, p.16, verbatim:
> "…despite spending being predominantly compliance-driven, **the results attained by many go beyond audit readiness** — strengthening risk identification and management, enabling faster incident detection and improving response and recovery capabilities."

### Fig. 9 — Expected outcomes looking forward

| Priority | % | n |
|---|---|---|
| **Implementing or upgrading cybersecurity technology & tools** | **47%** | 507 |
| Enhancing cyber resilience | 34% | 368 |
| Improving organisational cybersecurity awareness & training | 33% | 357 |
| Investing in people working on cybersecurity | 31% | 335 |
| Increasing efficiency or automation in cybersecurity processes | 28% | 301 |
| Achieving or improving compliance with cybersecurity regulations | 26% | 281 |
| Improving supply chain risk management | 23% | 252 |

ENISA's caveat, p.17, verbatim: "…**these remain intentions for now and the actual impact will only be clear over time.**"

Also p.17, verbatim — a maturity signal, and a counter-signal to "compliance deadline = permanent trigger":
> "One example comes from the banking sector where **compliance now sits at a similar level to other drivers rather than clearly leading** — suggesting regulation (DORA, NIS2) has set the baseline and is being absorbed into day-to-day practice, an early sign of maturity where compliance evolves into capability."

---

### ⭐ Patching is the single hardest NIS2 requirement

**Insight #4 (p.5), verbatim:**
> "Implementing NIS2 is considered a challenge. Organisations say their key challenges are in the areas of **patching (50%)**, business continuity (49%) and supply-chain risk (37%). This suggests that NIS2 is raising the bar by prompting entities to focus on strengthening some of the most demanding yet essential areas of cyber resilience."

**Fig. 10 — Most challenging NIS2 requirements to implement:**
| Requirement | % | n |
|---|---|---|
| **Vulnerabilities & patch management** | **50%** | 545 |
| Business continuity & disaster recovery | 49% | 533 |
| Supply chain risk management | 37% | 396 |
| Awareness & cyber hygiene | 27% | 290 |
| Access management | 21% | 229 |
| Threat detection & incident handling | 21% | 224 |

**Fig. 11 — Top three barriers to effective NIS2 controls implementation:**
| Barrier | % | n |
|---|---|---|
| Operational constraints (e.g. legacy systems; OT limitations) | 27% | 288 |
| Complexity of regulatory requirements across jurisdictions | 23% | 243 |
| Lack of skilled personnel or internal expertise | 20% | 221 |

ENISA's own methodological note, p.20, verbatim — worth keeping:
> "**While all response options were drawn from NIS2 requirements**, the fact that organisations consistently highlight the above-mentioned areas suggests that NIS2 is successfully bringing focus to some of the most demanding yet essential areas of cyber resilience."
[i.e. the answer set was closed and NIS2-derived. Not a free-response finding.]

---

### ⭐ Patch latency — the performance gap the requirement creates

**Insight #5 (p.5), verbatim:**
> "**Patching still takes months; many still don't test their security.** Timely patching and regular assessments remain challenging even amid regulatory efforts: **30% of organisations have not conducted a cybersecurity assessment in the past 12 months, 28% take more than three months to patch critical vulnerabilities.**"

**Fig. 14 — Average time to patch critical vulnerabilities on critical assets (IT or OT), all respondents:**
| Time | % | n |
|---|---|---|
| Within a week | 8% | 83 |
| Within a month | 31% | 334 |
| Within three months | 32% | 348 |
| **More than three months later** | **28%** | 300 |
| Variable / don't track timing | 1% | 15 |

**p.22, verbatim — the trend:**
> "Looking at trends over time highlights the scale of the challenge: in the **2022 NIS Investments study, 48% of entities reported that patching took between one and six months, with a further 8% indicating it took more than six months.** Today, nearly two thirds (**63%**) of organisations report taking a month or longer to apply critical patches to critical systems, and over a quarter (**28%**) indicate that it takes them more than three months to apply critical patches."

**p.22, verbatim — why timeliness matters, with an external cite:**
> "While high-profile zero-day exploits draw attention, the majority of vulnerabilities actively exploited in the wild remain n-day vulnerabilities — those for which a patch is available. Data from external sources indicate that although around one in three known exploited vulnerabilities are weaponised at or immediately after disclosure, **the remaining two-thirds are n-day vulnerabilities. This means that the exploitation of most vulnerabilities is preventable through timely patching.**"
(cites VulnCheck, *State of Exploitation H1 2025*, 2025)

**p.23, verbatim — placing it in threat context:**
> "Placed in the context of the *ENISA Threat Landscape (ETL) 2025*, these findings are concerning: **vulnerabilities remain the second most common initial infection vector, are often weaponised within days of disclosure and account for nearly 20% of intrusions.**"
(cites ENISA, *ENISA Threat Landscape 2025*, October 2025)

**p.22–23, verbatim — the causes ENISA names:**
> "For some (**27% of entities surveyed**), infrastructure characteristics play a role — particularly the persistence of legacy systems and OT environments that cannot easily be updated or taken offline without disrupting essential operations. Other reasons may include limited staff capacity, competing operational priorities or challenges in coordination between IT and business functions. In complex environments, patching can also involve significant testing and approval processes, which further extend patching timelines."

---

### Budget shape — where the money is going

**Insight #1 (p.5), verbatim:**
> "**Investment focus shifts from people to technology and services.** Cybersecurity investment remains broadly in line with the levels reported in last year's study (**9% of IT budgets; median 1.5 million euros**), though spending is increasingly focused on **technology and outsourcing rather than internal cybersecurity teams**."

**Fig. 3 (p.10):** cybersecurity as share of IT budget — median **9%** in both 2023 and 2024; average 9.6% (2023) → 9.3% (2024). Cybersecurity FTEs as share of IT FTEs — median **10.6%** (2024), average 11.7%.

**p.10, verbatim:**
> "Regarding staffing, **cybersecurity FTEs now represent only 10,6% of total IT FTEs (Fig.3), marking the lowest proportion observed to date.**"
> "…**cybersecurity budgets are currently being directed more toward technology and outsourcing** (the remaining areas of our budget definition) rather than internal team growth. This shift may reflect strategic choices to maximise impact with limited human resources, responses to talent constraints or **greater reliance on external providers** — trends that warrant further investigation in the coming year."

> **Note for the channel argument:** "greater reliance on external providers" is ENISA's own language. [CS: VERIFIED]

**Insight #2 / Fig. 4 (p.11–12):** 76% report difficulty attracting cybersecurity talent, 71% difficulty retaining. Top hiring barrier: "difficulty in finding candidates with the required skills" 45% (n=481). EU cybersecurity workforce shortage "reached 299,000 in 2024, representing a 9% increase from 2023" (cites ISC2).

**Fig. 6 (p.14):** staffing intentions next 12 months — maintain current levels 38% (405); increase by hiring 33% (354); increase by **upskilling existing staff rather than hiring externally** 24% (256); not decided 5%; expect to reduce 1%.

---

## SECONDARY, weaker — analyst spend forecasts

**[CS: LOW — primary source unreachable]** Gartner's own press release (https://www.gartner.com/en/newsroom/press-releases/2025-07-29-...) returned **HTTP 403**. Figures below reached me only through third-party blogs and are **not verified**:
- Global information security end-user spending $213bn in 2025; $244.2bn in 2026 (+13.3% YoY)
- Gartner reportedly names "the regulatory wave (NIS2, DORA, SEC disclosure rules)" among three primary drivers
- "81% of European organisations expecting budget increases"

**Do not use any of the above.** [WOBBLY] — the intermediary blogs are security-vendor-adjacent.

**One Gartner/IDC figure that IS traceable**, because ENISA cites it in a footnote (main report p.10, footnote 3):
> "According to the **Gartner 2025 CIO and Technology Executive Survey**, cybersecurity remains the top area where **87% of the surveyed enterprises planned to increase their funding in 2025 from 2024**. A similar trend is also forecasted by **IDC's Worldwide Security Spending Guide** — worldwide security spending to increase by **12.2% in 2025** as global cyberthreats rise."
[CS: HIGH — ENISA reporting Gartner/IDC. Neither underlying source was read.]

---

## What this evidence does and does not establish

Stated as absence-of-evidence, not as a conclusion:

- ENISA establishes **compliance as the stated primary driver of security investment** in NIS2 sectors. [CS: VERIFIED]
- ENISA establishes **patch/vulnerability management as the hardest NIS2 requirement** and quantifies the latency gap. [CS: VERIFIED]
- DSIT (file 04) attaches **per-firm £ figures** to a specific regulation for a specific population (UK MSPs). [CS: VERIFIED]
- **No source located ties a specific compliance *deadline date* to a measurable spike in tool purchasing around that date.** Everything found is cross-sectional (annual survey) or ex-ante (impact assessment). **[CS: UNKNOWN]** — a deadline-indexed purchasing time series was not found and may not exist publicly. Name this gap rather than inferring the spike.
