# Live Source — "BLIND INTERVIEWS ACP · June 2026 Study" (Confluence, space AI)
Primary corpus behind this brief. Author: Nicole Reineke, Chief AI Officer, N-able. Confidential — Internal.
URL: https://n-able.atlassian.net/wiki/spaces/AI/pages/62064099623/BLIND+INTERVIEWS+ACP+-+June+2026+Study
Source line: ACP Interview Tracker, Tab 2 (Coworker Ranking), 8 demand-validation interviews, 12–17 June 2026.

---

## BLUF (verbatim thesis) [CS: VERIFIED — primary source]
"The **QBR Analyst is the clearest build-first AI coworker** — the only use case that is both the most broadly demanded (4 of 8 interviews, ranked #1 three times) and high-intensity." Half the panel scored a full "Build ACP." (4 Build ACP / 4 Narrow MVP / 0 Do Not Build.)

## Demand ranking — cumulative (top of field) [CS: VERIFIED]
| # | Use case | Mentions | Total | Avg/mention | #1 count | Named by |
|---|---|---|---|---|---|---|
| 1 | **QBR Analyst** | 4 | **31** | 7.8 | 3 | Kenneth, Jonathan, Shawn, Matt |
| 2 | Incident Response RCA | 4 | 26 | 6.5 | 1 | Vitali, Jonathan, Vikram, Mike |
| 3 | Ticket Triage & Dispatch | 3 | 25 | 8.3 | 2 | Vitali, Derek, Vikram |
| 4 | Security Tabletop Simulator | 4 | 19 | 4.8 | 1 | Kenneth, Jonathan, Shawn, Matt |
| 5 | Employee Onboarding | 3 | 16 | 5.3 | 0 | Kenneth, Matt, Vikram |
| 6 | Alert Flood Suppression | 2 | 16 | 8.0 | 0 | Vitali, Derek |
| 7 | Environment Health Monitor | 2 | 15 | 7.5 | 0 | Derek, Mike |
| 8 | Network Incident Resolution | 1 | 7 | 7.0 | 0 | Shawn |
| 9 | MSP Benchmarking | 1 | 5 | 5.0 | 1 | Mike |

Scoring: each interviewee's top-3 only, 5 dimensions × 0–2 (Paid priority · Frequency · Volume · Autonomy allowed · Feasibility), max 10/mention.

## QBR Analyst detail (verbatim) [CS: VERIFIED]
- Rank 1 · Total 31 · Avg 7.8 · 4 of 8 interviews · ranked #1 three times · volume 8/8 · autonomy 8/8.
- Kenneth was "already sold" — had been paying **$300+/user per month for ScalePad's Lifecycle Manager X** and called a true cross-stack QBR "the holy grail." **[CS: HIGH — but note: web scout found Lifecycle Manager X is the NEW tier ScalePad is selling, not a discontinued one. The displacement-window framing in the integrated brief needs reconciling — see web-competitive-intel.md Claim 1.]**
- Jonathan and Matt both cited it as top paid pick for whole-portfolio reporting.
- No autonomy concerns (report generation is read-only), strong volume across every client base, clear WTP.
- **The one watch-item is FEASIBILITY: it needs the deepest integration set of any coworker (PSA, RMM, security, backup, identity — often 6–8 tools).** [CS: VERIFIED — this is the study's own named risk]

## Respondent roster — actual roles (corrects brief's shorthand) [CS: VERIFIED]
| Name | Role | Firm | Size |
|---|---|---|---|
| Vitali Amare | Co-Founder & Principal Advisor, AI & Cyber Risk (ex-Cisco/Akamai/Check Point) | AI venture | >50 FTEs |
| Kenneth May | Principal Consultant / owner, AI & Cybersecurity | CIO Solutions, Inc. | <10 FTEs |
| Jonathan Blakey | VP of Technology; primary AI builder | Technology Assurance Limited | 10–50 FTEs |
| Shawn Eftink | VP of Strategy; 25+ yrs MSP; led strategy for 200+ MSPs | TeamLogic Inc. | (advises 200+ MSPs) |
| Derek Froese | Founder | Koala Technology | <10 FTEs |
| Mike Ritsema | President & Principal | I3 Business Solutions LLC | 10–50 FTEs, 100+ contracts |
| Matt Polatsek | Director of Cybersecurity / CISO | Stambaugh Ness Group | 10–50 FTEs |
| Vikram Thakar | Senior Director, NA Business (Global Delivery) | Cognizant | 50 FTEs on AI alone |

**Corrections to integrated brief:**
- Matt: study shows 10–50 FTEs; brief's "80–85 clients" is not in this source. [CS: MEDIUM — may be from transcript not shown here]
- QBR "ranked #1 three times" (not by all four namers). [CS: VERIFIED]
- Matt's stack (verbatim): NinjaOne, HALO, Axcient, Rubrik, Veeam, ThreatLocker, Rapid7, Proofpoint. Confirms **Axcient + Rubrik spellings** (brief's "Axient/Rubric" are typos).

## Shawn on the VC-rollup threat (verbatim) [CS: VERIFIED — attribution]
Shawn named it: "Agentic automation needs in the MSP space are trying to be addressed by … VC-backed rollups (e.g. STP, TitanMSP, Treeline.ai)." Confirms the threat framing is HIS, not assumed. (Undercutting mechanism + "30% efficiency" figure still unsupported — see web scout.)

## Cross-cutting signals (verbatim) [CS: VERIFIED]
- "Build it into the RMM" caps WTP — buyers expect Alert Suppression / Env Health as features of tools they own.
- Autonomy is universally gated — read-only diagnostics first, write-with-approval next, full automation only after trust. Governance + rollback = price of entry.
- Largest, most-mature shops are a displacement risk (Vikram runs his own control plane) → sweet spot is larger side of SMB, not enterprise. **Grounds the target-buyer profile.**

## Adjacent unmet needs flagged (not QBR, but context) [CS: VERIFIED]
Staff training/upskilling (Vitali) · AI-agent governance-as-a-service (Mike, Derek, Jonathan) · billing/financial reconciliation (Jonathan, Derek) · vulnerability ops CVSS×EPSS (Matt) · dispatcher/scheduling (Mike).

## Other live ACP docs found (available, not pulled this pass) [CS: HIGH — titles verified in search]
- ACP Partner Diligence Project Tracking (space AI) — https://n-able.atlassian.net/wiki/spaces/AI/pages/62013669455
- AI Coworkers intent spec 0.7 / UEM Coworkers intent spec v0.9 (space FSN) — owners Nicole Reineke / Jerel Howland
- Control Plane / Headless IT Tech in the AI Agent world + ACP positioning doc (space AI) — https://n-able.atlassian.net/wiki/spaces/AI/pages/61894262832
