# NCSC 10 Steps to Cyber Security + Cyber Essentials — real control names

Scouted 2026-08-24. Strand 7 of 8. Both verified against ncsc.gov.uk directly.

## ⭐ NCSC 10 Steps to Cyber Security — verbatim, in NCSC's order
Source read: https://www.ncsc.gov.uk/collection/ncsc-annual-review-2021/resilience/10-steps-to-cyber-resilience
Collection home: https://www.ncsc.gov.uk/collection/10-steps
[CS: VERIFIED — read from ncsc.gov.uk]

1. **Risk management**
2. **Engagement and training**
3. **Asset management**
4. **Architecture and configuration**
5. **Vulnerability management**
6. **Identity and access management**
7. **Data security**
8. **Logging and monitoring**
9. **Incident management**
10. **Supply chain security**

**Notes for mapping findings:**
- These are the **2021-revision** names. The pre-2021 version used different titles (e.g. "User education and awareness", "Malware prevention", "Network security", "Home and mobile working"). If any existing artefact in the repo uses those, it is on the old list. [CS: HIGH]
- Each step has its own page at `https://www.ncsc.gov.uk/collection/10-steps/<slug>` — e.g. `/risk-management`, `/architecture-and-configuration`. Collection is 11 pages (intro + 10). [CS: VERIFIED]
- **[GAP]** NCSC does not publish numbered sub-controls under each step. The 10 Steps are guidance categories, not a control catalogue with IDs. **Any "NCSC 10 control ID" scheme in a prototype is invented — say so.** [CS: VERIFIED — this absence is real]

## ⭐ Cyber Essentials — the five technical controls, verbatim
Source read: https://www.ncsc.gov.uk/cyberessentials/overview [CS: VERIFIED]

1. **Firewalls** — "Create a security filter between the internet and your network"
2. **Secure configuration** — set up computers to "minimise ways that a cyber-criminal can find a way in"
3. **Security update management**
4. **User access control**
5. **Malware protection**

**Ordering caution:** NCSC's overview page and IASME's requirements document list these in slightly different orders (IASME phrasing seen as "firewalls, secure configuration, user access control, malware protection and security update management"). Order is not semantically meaningful. [CS: HIGH]

**Naming caution:** "Security update management" was formerly **"Patch management"**. The current name is the one above. [CS: HIGH]

**There is no "Network security" control in Cyber Essentials.** The nearest is *Firewalls*. [CS: VERIFIED — the five above are the complete list]

## Authoritative requirements document
**Cyber Essentials: Requirements for IT Infrastructure v3.2** (published April 2025, current through 2026)
https://www.ncsc.gov.uk/files/cyber-essentials-requirements-for-it-infrastructure-v3-2.pdf
Reported as 28 pages, covering the five control families. [CS: HIGH — document exists and is linked from ncsc.gov.uk; **text not extracted** (PDF rendering unavailable in that environment)]

**[GAP] Sub-requirement numbering not verified.** The v3.2 document does contain per-control requirement statements, but they were not read. Do not reproduce sub-requirement IDs or wording from memory. [CS: FABRICATION RISK if guessed]

Scheme owner: IASME — https://iasme.co.uk/cyber-essentials/ [CS: VERIFIED]
IASME has published notices of changes for April 2025 and April 2026 — check for a v3.3 before treating v3.2 as current. [CS: MEDIUM]

## How findings map to controls — [GAP]
There is **no published crosswalk** from either framework to specific tool telemetry (e.g. "N-central patch status → CE Security update management"). Every MSP builds its own. If the prototype implies a canonical mapping, that mapping is the MSP's editorial judgement, not a framework artefact — label it as such. [CS: HIGH — absence of a published crosswalk; searched and found only vendor assessment products, not a standard]

## [WOBBLY] — secondary paraphrases, do not quote as NCSC
- https://www.lrqa.com/en-us/ncsc-10-steps-to-cyber-security/ (assessment vendor)
- https://www.forescout.com/resources/uk-ncsc-10-steps-to-cyber-security/ (vendor)
- https://www.intrasource.co.uk/blog/it-security/exploring-the-ncscs-10-steps-to-cyber-security/ (MSP blog)
- https://connection-technologies.co.uk/blog/cyber-essentials-requirements-uk-2026 (MSP blog)

All paraphrase. Use ncsc.gov.uk for wording.
