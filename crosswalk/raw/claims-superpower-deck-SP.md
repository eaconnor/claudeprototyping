# Raw claims — MSP Superpower Problem.pdf (Nicole primary + Beth secondary, June 2026)

Source: `~/Library/CloudStorage/OneDrive-N-able/Microsoft Teams Chat Files/MSP Superpower Problem.pdf`, 19pp. Read in full 2026-09-02 (extracted via pypdf). **Primary source — upstream of the crosswalk; the origin of several claims previously held only as paraphrase.** Provenance (p19 source notes): 8 demand interviews Jun 12–17 2026 Guidepoint panel (Tab 2); N-Zo 90→17.5 min = Condens UEM, Taha, n=11; SOC 90% = Will Ledesma RSA 2026; ScalePad $300 = Kenneth M. direct quote; 13/17 autonomy concern = Taha Condens.

Format: CLAIM-ID | claim | deck page | load-bearing.

## The superpower thesis (N-able's unfair advantage) — the M5 answer, asserted
SP01 | The QBR Analyst is fundamentally an INTEGRATION problem — "whoever has the deepest, most native stack wins" | p8 | HIGH
SP02 | N-able already holds the stack nobody else does: (A♥) Adlumin MDR live threat telemetry native · (A♠) Cove DR+Backup first-party not an API · (A♣) script repo + deterministic execution · (A♦) SOC pattern data (90%→99% auto-remediation) | p8 | HIGH — **this is the asserted answer to M5 (chokepoint/home-field)**
SP03 | "N-able already has the data for all six [use cases]. Nobody else does." — the home-field claim, stated as settled | p12 | HIGH
SP04 | "Measured"-tier claims are defensible day one from first-party telemetry WITHOUT any normalization acquisition — for N-able-native clients | p8; cross-ref word-sketches #9 | HIGH — **scope caveat: native-only; says nothing about cross-vendor stacks, where T3's egress wall + 30% normalization live**

## The leap (one job, not six) — the T5 source
SP05 | "These aren't six products. It's one job." QBR is THE CAPSTONE; Continuous Env Health, Alert Flood, IR RCA, Security Tabletop, Employee Onboarding are five agents feeding it | p5, p11, p12 | HIGH — **explicitly labeled "THE LEAP"; a design synthesis, not an interviewee statement**
SP06 | "Six use cases from demand research → one vCISO/vCIO operating model" — the six are demand-sourced; the collapse into one job is the leap | p12 | HIGH — confirms EV-AB04 (department framing is [A], the collapse is the bet not the finding)
SP07 | Without the QBR the work is invisible; with it the MSP is a strategic partner (the emotional job: invisible competence, "kingdom safe not dragon stories") | p3, p11 | MED

## The demand ranking — the T1 source (= Nicole's n=8)
SP08 | Three rise to the top: QBR Analyst #1 (31 pts, avg rank 2.90) · IR RCA #2 (26, 4.00) · Ticket Triage #3 (25, 5.18) — all BUILD; Alert Flood/Security Tabletop/Employee Onboarding = COND | p4 | HIGH — Source: ACP Interview Tracker Tab 2, 8 interviews (= the n=8 in EV-AB17)
SP09 | QBR is "build-first" because Kenneth pre-sold it (highest WTP) | p4, p10 | HIGH

## The bar (15-min) — the T8 source
SP10 | The job isn't "generate a report" — it's "make me look credible/strategic/in control in front of my customer and help me grow the account"; 90 min prep → 15 min editing = "the bar" | p6, p11 | HIGH
SP11 | N-Zo time benchmark: 90 min → 17.5 min, Condens UEM n=11 (the real number behind the rounded "15") | p6 | HIGH
SP12 | The deck's OWN fog list flags "how the 15-minute prep feels" as UNKNOWN — needs UX testing; only 8 of 20 interviews done, Pendo pull pending | p10 | HIGH — **the deck itself marks T8 as untested**

## WTP / competition — the T2 source
SP13 | Kenneth: "Cross-stack QBR is the holy grail. I was paying ScalePad $300+/user/mo and it barely worked" — highest-WTP, PRE-SOLD buyer | p3, p6, p9 | HIGH — the ScalePad displacement anchor, direct quote
SP14 | ScalePad Lifecycle = OPPORTUNITY not threat: QBR-adjacent, but $300/user "barely works," no cross-stack normalization | p9 | MED — cf. EV-AB16 (later reframed ScalePad as the threat/OS incumbent — a live tension)
SP15 | VC-backed MSPs (Shield, Titan, Treeline) = the real THREAT: building AI control planes + buying shops to drop the pricing floor | p2, p9 | MED — a competitor class the 9 themes don't name

## THE RUNBOOK PROBLEM — the missing kill-bet (not in any of the 9 themes)
SP16 | Runbooks are "the answer everyone agrees on and nobody actually has" — the whole ACP value rests on runbooks existing and staying current | p7 | HIGH — **NEW kill-bet**
SP17 | The wicked problem: build a runbook from knowledge already in heads/tickets/incidents, keep it current, close the loop — "Nobody has solved this. Yet." | p7 | HIGH
SP18 | Six runbook failure modes: (1) go stale (tool swapped) (2) never existed (lives in senior techs' heads) (3) loop never closes (4) lost at 2am (5) cold start (6) blind to drift | p7 | HIGH
SP19 | Cold-start "creation from existing knowledge at scale" and "the evergreen update loop" are explicitly FOG — unsolved | p10 | HIGH

## What the deck marks KNOWN vs FOG (Beth's own riskiest-assumptions map, Battleship p10)
SP20 | KNOWN: split intent from execution (plain-English SKILL.md MSP edits + tested read-only scripts); the right runbook shape is public; autonomy must be gated (nobody wants fully autonomous); the runbook finds the technician; QBR is the capstone (build-first) | p10 | — VALIDATES T6 gating (matches EV-AX13); governance model borrowed from NeoAgent
SP21 | FOG (unknown): our own runbooks (what's documented today?) · creation-from-knowledge at scale · the evergreen update loop · what the MVP actually is · how the 15-min prep feels | p10 | — **this IS a riskiest-assumptions list Beth already started; reconcile with the board**

## Governance / autonomy field signal
SP22 | RSAC 2026: autonomy adds most value when high-frequency/time-sensitive/REVERSIBLE; unacceptable when it expands faster than governance / has large blast radius | p18 | MED — external validation of the gated-autonomy design (T6) and Will's blast-radius concern (EV-WM04)
SP23 | Microsoft pre-brief told CISOs to expect to invest in agent governance roles/change-control/runbooks — "not a pure cost-savings story"; the terminology is landing | p18 | MED — supports governance-as-category but cf. EV-AB11 (won't pay standalone)
