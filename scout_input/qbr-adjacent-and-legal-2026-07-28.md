# Scout — adjacent literature (SaaS-CS, KAM, Maister) + the legal/insurance question
**Date:** 2026-07-28 · **Slice 4 of 4**

---

# PART C FIRST — THE LEGAL QUESTION, because it changes a finding we already made

Our source claims the risk register "shifts risk to the customer," can be shown to a cyber carrier, and keeps the MSP out of court, citing **three MSP lawsuits circa 2025.**

## C1 — Two named cases exist. Not three. Not 2025.

### ★ Mastagni Holstedt, A.P.C. v. LanTech, LLC; Terry Alan Berg; Acronis, Inc. `[CS: VERIFIED — public docket]`
- **Court:** Sacramento County Superior Court, California (Lorenzo Patino Hall of Justice) · **Judge:** Christopher E. Krueger
- **Filed:** 26 Feb 2024 · **Type:** Commercial and Trade — Contract
- **Allegations:** MSP (LanTech) and backup vendor (Acronis) failed to prevent/protect against a Black Basta ransomware attack of 26 Feb 2023; plaintiff law firm forced to pay an undisclosed ransom after losing server/data access; **$1M+ damages sought**
- **Status:** CMC held 04/04/2025, continued to 05/01/2026. **No verdict, settlement, or dismissal. Active.**
- **★ Notable: no written contract existed between LanTech and the client — a verbal agreement only, itself a live issue in the suit**
- Acronis's public position: *"Password protection is the responsibility of the customer"*
- https://unicourt.com/case/ca-sac2-casebdcd24c4b0da02-289841
- https://www.msspalert.com/news/msp-sued-by-law-firm-over-black-basta-ransomware-attack
- **https://www.n-able.com/blog/msp-lawsuit-underscores-importance-of-multi-factor-authentication-mfa — N-able has already blogged about this exact case** `[CS: VERIFIED]`

### Boardman Molded Products v. Involta LLC `[CS: HIGH — local business press; docket not cross-checked]`
- Mahoning County, Ohio · reported/filed **2020**
- Negligence, malpractice, breach of service. Involta (MSP, Cedar Rapids IA) allegedly failed to prevent a 2018 email compromise enabling a **$1.7M phishing theft**; plaintiff alleges Involta logged the service ticket as *"medium priority"*
- **★★ THE FINDING THAT MATTERS TO US: Involta HAD a written contract — and plaintiff's attorneys used Involta's own marketing claims against it** (*"one-stop shop for all IT needs," "no need for any other service providers"*) to argue the contract didn't match what was promised.
- **Outcome: not found.**
- https://businessjournaldaily.com/boardman-molded-products-sues-it-provider-after-1-7m-theft/
- https://www.channelfutures.com/security/customer-loses-1-7-million-in-phishing-scam-sues-msp

### On the "three cases circa 2025" claim
Searched specifically for a third and for 2025-dated MSP breach litigation. **None met the naming bar.** `[CS: LOW — negative finding, stated plainly]`

**Sources that likely generated the unnamed "three lawsuits" claim — checked, contain NO named cases:**
- Galactic Scan, "The $925,000 Mistake MSPs Keep Making" — hypothetical framing ("This just happened to an MSP"), no case/docket/court. **Reads as marketing content selling a "Risk Acceptance Document" product.** `[CS: FABRICATION RISK if cited as a real-case source]`
- ChannelPro, "MSP Liability in a Breach" (24 Sep 2025) — "several recent cases," zero names or citations `[CS: LOW]`

## C2 — Does documented client refusal actually work as a defence? UNSUBSTANTIATED.

**No case law found, US or UK, where a documented risk-acceptance/refusal form was tested and upheld or rejected in a decided MSP breach judgment.** The mechanism is asserted constantly in vendor and MSP-attorney marketing; never demonstrated against a decided case.

- **Brad Gross** (Law Office of Bradley Gross, P.A. — named, credentialed MSP attorney; the strongest voice in this space): "Declined Service? Send a (Non-Signable) Letter" `[CS: MEDIUM — content not fully read]` https://www.linkedin.com/pulse/declined-service-send-non-signable-letter-brad-gross · podcast lead: https://bradleygross.podbean.com/
- Monjur / Scott & Scott LLP describe the "Risk Acceptance Form" generically — and note it's framed as guarding against **gross negligence** claims specifically, **not all claims** `[CS: LOW — law-firm marketing]`
- Flagged as unsupported: *"in court, evidence rather than excuses will save you"* — phrased as settled law, **no cited precedent found anywhere** `[CS: LOW]`

## C3 — Cyber insurance: the mechanism is NOT substantiated

**No named underwriter, carrier, MGA, or broker statement found treating a client's documented risk-acceptance as mitigating for premium, underwriting, or claim adjudication.**

What underwriters actually evaluate: **deployed, verifiable controls** — MFA, immutable/tested backups, EDR, documented IR plan. Not documentation of client refusals. `[CS: MEDIUM]`

- *"Misrepresentation is the single leading cause of claim denials"* — the underwriting risk that gets litigated is **the insured's own application accuracy**, not a third party's risk acceptance `[CS: MEDIUM]`
- Standard questionnaires require board-level sign-off attesting to **the insured's own** posture — structurally different from an MSP showing a carrier that its client declined advice
- https://seedpodcyber.com/what-underwriters-look-for-cyber-insurance-application/
- Bank of England PRA cyber resilience questionnaire (2015) — genuine regulatory primary doc, UK/PRA-specific, dated

## C4 — UK vs US divergence is real and inverted against us

- **UK: no decided case establishes that an IT/MSP's "reasonable skill and care" duty extends to cybersecurity specifically.** Verbatim from legal commentary: *"There is no decided case on whether the obligation to use reasonable skill and care extends to taking adequate cyber security measures – though it seems highly likely it would… there are no widely accepted standards or obligations to protect their clients from cyber-attacks."* `[CS: HIGH — law-firm client alert, not a holding]` https://axaxl.com/fast-fast-forward/articles/where-does-it-end-an-it-professionals-duty-of-care-responsibilities
- **Warren v DSG Retail Ltd [2021] EWHC 2168** — real decided UK case, but on a different point: a data controller does **not** normally owe a duty of care in negligence to data subjects because UK GDPR displaces it. **Controller-to-data-subject, NOT MSP-to-client. Do not conflate.** `[CS: VERIFIED]`
- Linklaters confirms "limited UK case law," with foreseeability/causation/loss as the structural barrier `[CS: HIGH]` https://www.linklaters.com/en/insights/blogs/digilinks/2023/september/uk---how-to-sue-your-it-supplier-following-a-cyber-attack
- **The inversion:** the US already has active named litigation testing MSP-negligence theory. The UK doctrine is untested. **And the "risk register as shield" advice in our corpus originates from UK-based operators, while our market is largely US.** `[CS: MEDIUM — observed asymmetry]`

### Verdict on Map 5 of the process map
The liability finding was presented as upside. The record does not support it: **no tested defence, no carrier practice, and one named case where the MSP's own marketing was used to pierce its documentation.** The council's Liability voice was right. **The 45 minutes with counsel is now mandatory, not advisable — and question 1 should be whether machine-identified-but-uncommunicated risk expands the MSP's exposure.**

---

# PART A — SaaS / Customer Success EBR literature

**Best sources:**
- Gainsight's EBR/QBR guides `[CS: HIGH — vendor]` https://www.gainsight.com/blog/executive-business-review/ · and its own headline "Quarterly Business Reviews – Value or Fluff?"
- **★ GitLab Handbook, Customer Success EBRs** — a real operating company's public internal ops handbook, **not marketing** `[CS: HIGH]` https://handbook.gitlab.com/handbook/customer-success/csm/ebr/
- Totango glossary, Dock.us library, ZapScale guide `[CS: MEDIUM]`

**QBR vs EBR distinction (cross-vendor consensus):** QBR = tactical / day-to-day stakeholder; **EBR = strategic, executive sponsor.** `[CS: MEDIUM]` — **independently matches Stefanie's stated reason for preferring "EBR."**

## ⚠ FABRICATION RISK — do not touch these numbers
- *"Net retention rates 15–20 points higher"* for consistent reviews; *"$0.61 per ACV dollar"* expansion vs *"$1.78"* new acquisition — **`[CS: FABRICATION RISK]` — no traceable named study or firm. Appears to be an AI-search-synthesis artifact.**
- *"Accounts with strong executive participation are 2.5× more likely to renew"* — `[CS: LOW — no named source]` **and note the coincidence: a second unattributed "2.5×" claim about business reviews. The number is doing rhetorical work across two industries with no source in either.**
- *"Studies show conducting QBRs… doubles the likelihood of renewals"* — `[CS: LOW — "studies show," no study]`

**No rigorous, attributable EBR-frequency-to-retention dataset was found.** The CS field measures this in principle and publishes nothing citable. `[WOBBLY — entire CS/EBR literature is vendor-and-blog-generated; no peer-reviewed tradition]`

## The anti-QBR strand in CS is real and citable
- **Lincoln Murphy, Sixteen Ventures** — "QBRs are NOT Required": explicit position that QBRs are not integral to Customer Success Management. **Murphy is a co-author of the standard CS textbook.** `[CS: MEDIUM]` https://sixteenventures.com/customer-success-qbr
- Russ Drury, "Customer QBR's & EBR's are a thing of the past" `[CS: MEDIUM]`
- Recurring critique across sources: QBRs degrade into *"dashboard reports, product usage statistics, support metrics"* repeating known information — a reporting meeting, not a business conversation. **This is Stefanie's diagnosis, arrived at independently in a different industry.** `[CS: MEDIUM]`

---

# PART B — Key Account Management: actual peer-reviewed scholarship

- **Homburg, Workman & Jensen (2002), "A Configurational Perspective on Key Account Management," *Journal of Marketing* 66(2), 38–60.** Numerical taxonomy across a cross-industry, cross-national sample; eight prototypical KAM approaches with **measured performance differences.** Genuinely empirical. `[CS: VERIFIED — peer-reviewed, indexed]` https://journals.sagepub.com/doi/10.1509/jmkg.66.2.38.18471
- **Millman & Wilson (1994/95)** — the foundational KAM relationship-development model (pre-KAM → early → mid → partnership → synergistic → uncoupling). `[CS: HIGH]`
- **"Linking key account management practices to performance outcomes," *Industrial Marketing Management* (2015)** — four practice dimensions (Strategic, Organizational, Tactical, **Evaluative**) modelled against performance. **Closest match to "structured account review → account growth."** Full text not read; whether review *cadence* was isolated as a variable is unconfirmed. `[CS: HIGH — peer-reviewed]` https://www.sciencedirect.com/science/article/abs/pii/S001985011500053X
- **Storbacka (2012)** — KAM as *"a relational capability, involving task-dedicated actors… management practices that aim at inter- and intraorganizational alignment."* `[CS: HIGH — verify vol/page before quoting]`
- KAM systematic literature review (2022), *IMM* — entry point to the full citation trail `[CS: HIGH]`

`[WOBBLY]` `[TRADITION: European B2B/industrial marketing academia]` — this sits almost entirely in one journal cluster (*Industrial Marketing Management*, *Journal of Marketing*), predominantly German/Nordic/UK industrial-marketing scholars. Real scholarship, one tradition, not cross-field consensus.

**Not verified:** Malcolm McDonald's specific empirical output (Cranfield; KAM textbooks with Diana Woodburn) — named as a lead only. `[CS: UNKNOWN]`

---

## ★ Maister — the leverage constraint, and it maps onto our operations thesis

*Managing the Professional Service Firm* (Free Press, 1993). **All below from secondary summaries, NOT the primary text — verify before quoting as load-bearing.** `[CS: MEDIUM]`

- **Leverage ratio** (junior:middle:senior mix) is one of the most important structural variables in a PSF
- **"Brains" work** (highly creative/innovative) is *"less leveraged, requiring a high proportion of senior involvement."* **"Procedure" work permits far more junior leverage.**
- → **This is the job-shop / production-line distinction, in the professional-services literature, thirty years earlier.** Our Map 2 has a scholarly antecedent. `[A — this reading is ours]`
- **A second, distinct constraint we should not conflate with the client-facing-trust ceiling:** *"people do not join professional firms for jobs, but for careers"* — the career-progression expectation itself limits sustainable leverage, independent of client capacity. **A staff-development ceiling, separate from a confidence ceiling.**

https://commoncog.com/the-consulting-business-model/ · https://www.getabstract.com/en/summary/managing-the-professional-service-firm/6333

---

## Explicitly NOT FOUND across this slice
- No rigorous named dataset linking EBR/QBR cadence to NRR or retention (Part A)
- No third named 2025 MSP lawsuit (C1)
- **No case law, US or UK, where documented client risk-acceptance was tested as a defence (C2)**
- **No carrier/MGA/broker statement treating MSP-held client risk-acceptance as an underwriting or claims factor (C3)**
- No UK case or regulatory action on the risk-register-as-shield question (C4)
