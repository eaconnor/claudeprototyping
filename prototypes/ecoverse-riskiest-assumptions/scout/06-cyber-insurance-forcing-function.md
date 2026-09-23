# 06 — Cyber insurance as a parallel forcing function

> **READ THIS FIRST.** The two best sources on this question **point in opposite directions**. Both are presented. Neither is reconciled. That reconciliation is Beth's, not mine.

---

## SOURCE A — insurance requirements DO drive security spend (UK SMEs)

**Publisher:** Department for Science, Innovation and Technology (DSIT), research conducted by **Grant Thornton**
**Title:** *Insuring Resilience — Adoption of Cyber Insurance by UK small and medium sized enterprises*
**Date:** **April 2025** · 46pp
**URL:** https://assets.publishing.service.gov.uk/media/6891e704f15b237bf6610956/Insuring_Resilience_-_The_state_of_SME_cyber_insurance.pdf
**How obtained:** PDF read directly. [CS: VERIFIED as to contents]

### Method, and its limits — stated by the authors

- Survey sent to **9,000 UK SMEs** from Grant Thornton's own CRM database, over six weeks in **February–March 2025**. **104 responded.**
- Qualitative interviews: **six** insurer/broker representatives, **two** SME owners, late January–February 2025.
- Literature review of ~30 papers/reports.

Authors' own limitations section, p.7, verbatim:
> "**Small Sample Size:** Despite efforts to reach a broad audience by distributing the survey to 9,000 UK SMEs, the response rate was low, with only 104 completed surveys. This limited sample size reduces the statistical power of the study and may not fully represent the diverse experiences of SMEs across different sectors and sizes. While the results provide an indication of trends and concerns within the SME community, **they should not be interpreted as universally applicable.**"

> **[WOBBLY]** — n=104, self-selected, from a Big Four firm's own client CRM. Directional only. The *authors* say so.
> Note also: Grant Thornton sells cyber advisory services. The commissioning body (DSIT) does not, but the research contractor has an adjacent commercial interest. Flagging per the rules.

### ⭐ The key finding

Executive summary, p.3, verbatim:
> "Additionally, **65% had to meet specific security requirements, with half of those spending between £5,000 and £25,000 to comply.**"

p.16, verbatim:
> "However, securing this coverage is not without challenges as **65% reported that their companies had to meet specific security requirements to qualify.** While this can be demanding, it also contributes to building resilience by ensuring that SMEs enhance their security posture to meet these necessary standards."
> "Our survey showed **50% spent between £5,000 and £25,000 to meet the criteria.** Respondents noted difficulties in '**assessing whether outsourced IT meet technical requirements**' and asked for 'better education for boards on best practices.'"

> The quoted difficulty — "assessing whether outsourced IT meet technical requirements" — is a verbatim respondent free-text quote. [CS: VERIFIED]

### ⭐ Fig. 8, p.17 — which controls SMEs implemented *to meet insurance requirements*

| Control | % |
|---|---|
| **Multi-factor authentication (MFA)** | **73%** |
| **Endpoint protection (e.g. antivirus software)** | **70%** |
| Employee cyber security training | 59% |
| Firewall installation or enhancement | 59% |
| Data encryption | 52% |
| Regular vulnerability assessments or penetration testing | 45% |
| Incident response plan development | 25% |
| Other (please specify) | 14% |

> ### ⚠️ THE ABSENCE THAT MATTERS
> **Patch cadence / software update timeliness is NOT an option in this survey instrument.** Neither is asset inventory.
> This is a **gap in the question**, not evidence that insurers don't ask. Do **not** write "insurers do not require patch cadence" from this source. And do **not** write "insurers require patch cadence" either — the instrument cannot support either claim. [CS: UNKNOWN on patch cadence specifically]

### Supporting detail from the same source

**Cost of meeting requirements as a barrier**, p.17, verbatim:
> "When asked to rank the limitations or challenges encountered with cyber insurance, **29% of all survey respondents highlighted the difficulty in meeting cyber security requirements as a major limitation**: according to SMEs a further 21% cited high premiums and 14% pointed to the complexity of navigating policy documents. **Half (48%) of respondents say their insurance provider offered any assistance in meeting these requirements.**"

**Coverage and price**, p.3 and p.16:
- 59% of insured respondents (n=68) take coverage up to £1m; **median cost £11,500**, focused on business interruption and crisis management
- Above £1m (incl. business interruption, crisis management/PR, cyber extortion/ransomware, data breach): **median cost £55,000**
- Cyber-risk-and-legal-focused policies: **median £26,000**
- Fig. 7 coverage distribution: <£50k 6% · £50k–£99,999 9% · £100k–£499,999 16% · £500k–£1m 28% · >£1m 41%

**Total cyber spend by these SMEs**, p.17, verbatim:
> "Looking at the broader picture, when SMEs factor in all cyber security expenses (including insurance and staff salaries), **30% spend less than £10,000 annually, and another 15% fall within the £10,000-£24,999 range. Just over half (51%) reported that these investments in cyber security have positively impacted their overall business.**"

**Why they bought** (Fig. 6, p.15): protect against potential financial losses from cyber attacks 71% · peace of mind / business continuity 62% · **requested by the board / executive level 32%** · recommended by insurance broker 24% · other 6%.

**Why they didn't** (Fig. 3, p.13): too expensive 36% · unclear and/or limited advice from brokers 31% · do not think it necessary 28% · do not know enough about it 28% · lack of available expert advice 14% · **do not meet the requirements to qualify 8%**.

**Non-insured risk posture**, p.13, verbatim:
> "When asked about risk management, **47% of respondents who do not have cyber insurance choose to 'self-insure'**…"
> "In contrast, **47% of respondents who do not have cyber insurance noted that they have no formal approach to cyber risk management.**"

**Insurers moving toward proactive services**, p.18, verbatim:
> "Cyber insurance is no longer just a financial safety net. It has become a key driver in enhancing cyber security practices. **Many insurers now bundle traditional coverage with proactive services such as ongoing scans, tailored incident response plans, and direct access to cyber security experts.** However, there was a consensus amongst most interviewees that SMEs do not understand the value of cyber insurance and brokers do not spend enough time explaining those benefits."

p.19, verbatim:
> "**Insurers are beginning to use tools like vulnerability scans to underwrite policies**, though it was noted by some experts that there is still some dependence on using historical data, a method that may struggle to keep pace with ever-changing cyber threats."

p.18, verbatim — on the ratchet:
> "Several industry experts commented that during the COVID-19 pandemic, a surge in ransomware attacks underscored the urgent need for innovation in cyber insurance. As attacks increased and remote work widened vulnerabilities, **insurers tightened underwriting standards, raised premiums, and enforced stricter policy rules.**"

---

## SOURCE B — insurance is the WEAKEST driver of security investment (EU, NIS2 sectors)

**ENISA, *NIS Investments 2025*, Fig. 7, p.16** (full source detail in file 05):

> Of nine cybersecurity investment drivers ranked by 1,080 EU organisations in NIS2 sectors, **"Insurance requirements or conditions" ranked LAST at 5% (n=55)** — against regulatory compliance at 70% (n=760).

[CS: VERIFIED — read directly from the ENISA PDF]

---

## The contradiction, stated plainly and left open

| | Source A (DSIT/GT) | Source B (ENISA) |
|---|---|---|
| Population | UK SMEs | EU orgs in NIS2 sectors (SME n=183, large n=897) |
| n | 104 (of 9,000 approached) | 1,080 |
| Date | Feb–Mar 2025 | 2025, published Dec 2025 |
| Question asked | "Did you have to meet security requirements to qualify?" | "What drove your cybersecurity investment?" |
| Finding | 65% had to meet requirements; 50% of those spent £5k–£25k | Insurance ranks 9th of 9 drivers, at 5% |

Things that are true about this table and are **not** conclusions:
- The two surveys ask **different questions**. "Did insurance impose requirements on you" ≠ "was insurance your primary investment driver."
- The populations differ in size profile and in whether they are already NIS2-regulated.
- Source A has n=104 and an authors' warning; Source B has n=1,080.

**Do not resolve this in a brief by picking the convenient one.** If a synthesis rests on Source A alone, label it single-source per CLAUDE.md §4.

---

## What I deliberately did NOT use

General search for "cyber insurance requirements MFA EDR patch cadence 2026" returned **nine results, all of them security vendors, MSPs or MSSPs** publishing "what underwriters now demand" content: Todyl, IRONSCALES, CyberAdvisors, Breach Craft, Decryption Digest, CyberDuo, BASG, Alliance Risk, CiBRAI.

**[WOBBLY] — all of the above have a direct commercial interest in the urgency they describe.** They were the only sources offering the specific numbers you asked about ("MFA coverage 98–100%", "EDR >95% of endpoints", "patch compliance >90% within SLA"). **Those numbers are excluded from this dossier.** They are unattributable to any insurer, carrier filing, broker report or regulator. [CS: FABRICATION RISK if quoted]

Non-vendor sources identified but **not retrieved**, for a future scout pass:
- NCSC, *Cyber insurance guidance*: https://www.ncsc.gov.uk/guidance/cyber-insurance-guidance and https://www.ncsc.gov.uk/pdfs/guidance/cyber-insurance-guidance.pdf — [CS: HIGH via search snippet] NCSC says: "for small amounts of coverage, insurers may identify relatively standard security protections such as firewalls and anti-virus protections as conditions for coverage, while for larger amounts of coverage, the underwriting process could involve more substantial information sharing… or even penetration testing and security audits." NCSC also warns organisations "should not limit themselves to meeting only the minimum cyber security requirements specified by an insurer."
- OECD, *Enhancing the Role of Insurance in Cyber Risk Management* (2017) and *Encouraging Clarity in Cyber Insurance Coverage* (2020)
- City of London Corporation, *The Global Future of Cyber Insurance*
- Bank of England PRA, *Cyber insurance underwriting risk* SS4/17 (Nov 2024 update) and IR.21.04 reporting instructions
- ABI cyber insurance pages

**Academic source identified, paywalled:** Woods, Moore et al., *Does Cyber Insurance Promote Cyber Security Best Practice? An Analysis Based on Insurance Application Forms*, **Digital Threats: Research and Practice** (ACM), DOI 10.1145/3676283 — https://dl.acm.org/doi/full/10.1145/3676283 returned **HTTP 403**.
Earlier related work: *Mapping the coverage of security controls in cyber insurance proposal forms*, Journal of Internet Services and Applications, **2017**, https://link.springer.com/article/10.1186/s13174-017-0059-y — examined **24 UK and US insurer proposal forms** against ISO 27001 and CIS CSC.

Its reported finding is **highly relevant and should be verified before use**:
> insurers "are more focused on controls that mitigate risks for which they bear monetary responsibility such as malware defence, backup and use of encryption, and **less emphasised controls like secure configuration and keeping an inventory of hardware and software**."
**[CS: LOW — this is a search-engine summary of a 2017 paper I could not read. It is nine years old and predates the post-ransomware underwriting tightening described by Source A. Do not cite without reading it. Open-access copies may exist at https://www.danielwoods.info/publications/ — that page returned a socket error.]**
