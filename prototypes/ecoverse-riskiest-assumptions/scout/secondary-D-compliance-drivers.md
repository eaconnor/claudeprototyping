# Secondary Market Signal — Dimension D: Compliance & Resilience as Demand Trigger

**Scouted:** 2026-09-23
**Question being fed:** Riskiest assumption #2 — "this product vision will easily tie to business outcomes." Specifically: is there a **repeatable switch trigger** — a common, dated, externally-forced event that makes organisations buy?
**Jurisdiction scope:** UK + EU.
**Status:** Ingredients only. No synthesis. Beth abducts; this file only supplies material (CLAUDE.md §18).

---

## READ-FOR-THE-QUESTION MAP

| If you're asking… | Go to file |
|---|---|
| What exactly does a regulation require of endpoint patching? | `01-uk-cyber-essentials-v3-2.md` (14-day rule, verbatim) · `02-eu-nis2-and-cir-2024-2690.md` (CIR Annex 6.6, verbatim) |
| Which obligations have a **date in 2026–2028**? | `03-eu-cyber-resilience-act.md` (11 Jun 2026 / 11 Sep 2026 / 11 Dec 2027) · `04-uk-csr-bill.md` (commencement TBD) |
| Does compliance actually drive tool spend? | `05-compliance-as-spend-driver.md` (ENISA: 70%) · `04-uk-csr-bill.md` (UK Gov's own per-firm £ figures) |
| Is cyber insurance a parallel forcing function? | `06-cyber-insurance-forcing-function.md` — **contains a direct contradiction, unreconciled** |
| How are SMB/mid-market organisations coping? | `07-smb-midmarket-burden.md` |
| What could NOT be verified? | `08-not-verified-and-tool-limits.md` — read this before quoting anything |

---

## ⭐ START HERE — the five sources carrying the argument

1. **NCSC, *Cyber Essentials: Requirements for IT Infrastructure v3.2*, April 2025** — the only source located that puts a hard day-count on endpoint patching. [CS: VERIFIED — read in full from the primary PDF]
2. **ENISA, *Technical Implementation Guidance on Cybersecurity Risk Management Measures*, v1.0, June 2025** — reproduces the legal text of the CIR (EU) 2024/2690 Annex, which binds **MSPs and MSSPs**. [CS: VERIFIED — read from ENISA's own PDF]
3. **ENISA, *NIS Investments 2025*** (n=1,080 EU organisations) — "Compliance remains the main driver of cybersecurity investment (70%)"; patching is the #1 hardest NIS2 requirement (50%). [CS: VERIFIED — read from ENISA's own PDF]
4. **DSIT, *Cyber Security and Resilience Bill — Final Stage Impact Assessment*, 12 November 2025** — the UK Government's own quantified estimate of per-MSP compliance spend. [CS: VERIFIED — read from the published PDF]
5. **DSIT / Grant Thornton, *Insuring Resilience*, April 2025** — the insurance forcing function, with an explicit small-sample caveat. [CS: VERIFIED as to contents; findings themselves [WOBBLY], n=104]

---

## TRUST LADDER

**Strongest — primary text or official statistics, read directly**
- Cyber Essentials v3.2 (NCSC PDF)
- CIR (EU) 2024/2690 Annex text as reproduced in ENISA guidance
- ENISA NIS Investments 2025
- DSIT CSR Bill Impact Assessment
- Cyber Security Breaches Survey 2025/2026 (DSIT official statistics)
- PCI DSS v4.0 req 6.3.3 (PCI SSC SAQ D for Service Providers, April 2022)
- European Commission digital-strategy pages (CRA dates, NIS2 transposition/enforcement)

**Directional only**
- CSR Bill parliamentary stage dates after Nov 2025 — secondary commentary only; `bills.parliament.uk` returned 403
- Gartner spend forecasts — Gartner's own press release returned 403; figures reached me only via third-party blogs

**[WOBBLY] — commercial interest in the urgency described**
- Every cyber-insurance-requirements source surfaced by general search was a security vendor or MSP blog selling against the requirement. **None used.** See `06`.
- Consultancy "NIS2 readiness" commentary — not used.

**DO NOT CITE — named traps**
- **"PCI DSS requires critical AND high patches within one month."** Vendor blogs disagree with each other on whether v4.0.1 narrowed this to *critical only*. The v4.0 official text (verified) says "critical or high-security." The v4.0.1 official text was **not** located. Do not state the v4.0.1 position.
- **Any NIS2 Article 21(2) sub-point quoted as verbatim.** Not retrieved. EUR-Lex blocked throughout.
- **Any CRA Annex I requirement quoted as verbatim.** Not retrieved.
- **Any per-member-state NIS2 transposition date.** The Commission page names which states received reasoned opinions; it does not give national commencement dates on the page retrieved.
- **ISO 27001:2022 Annex A control wording.** Paywalled standard. Not located. Do not paraphrase from memory.
- **DORA as a 2026–28 trigger.** DORA applied from 17 January 2025. It is in the past.

---

## THE ONE STRUCTURAL FACT ABOUT THIS SOURCE SET

Stated flatly because it bears on the "dated trigger" question and is easy to lose:

- **The UK has a day-count (14 days) but no statutory deadline** — Cyber Essentials is a certification scheme, not law.
- **The EU has statutory deadlines but no day-count** — CIR (EU) 2024/2690 Annex 6.6.1(a) requires patches "within a reasonable time." [CS: VERIFIED]
- The only day-counts with dates attached in this corpus are **incident reporting** clocks (24h / 72h / 14 days / one month), not patch clocks.

What follows from that is Beth's call, not mine.
