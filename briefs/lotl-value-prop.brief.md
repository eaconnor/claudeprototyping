---
title: "Adlumin LOTL Detection — Value Proposition Brief"
project: "The Band Protocol × Zero Vector"
author: "Beth Schwindt"
date: 2026-05-19
status: draft
gates:
  gate_1: solid
  gate_2: hypothesis_formed
  gate_3: missing
prototype: prototypes/adlumin-lotl.html
jira_anchor: ADL-1294
ten_types_total: 29/50
next_actions:
  - Pull ADLC-178, -161, -199 comment threads directly in Jira
  - Run 2 SOC analyst sessions with prototype
  - Benchmark false positive rate on PowerShell Ensemble
tag_audit:
  R: 10
  D: 2
  A: 2
  "?": 1
  total: 15
  A_plus_unknown_pct: "~20% — brief is ready"
---

# Adlumin LOTL Detection — Value Proposition Brief

**Tag audit: ~20% [A]/[?] — Gate threshold not triggered.**

---

## Geoffrey Moore Statement

For SOC analysts and MSP security operators who face attackers that hide inside legitimate Windows tools and normal admin behavior — making breaches invisible to traditional signature-based detection — Adlumin LOTL Detection is a behavioral threat detection capability that surfaces living-off-the-land attacks in real time, named and confidence-scored, before they become incidents. Unlike generic alert feeds and signature-based EDR, Adlumin analyzes ~1 billion PowerShell commands per week [D] with behavioral AI — catching the attack that looks exactly like your admin doing their job.

---

## Gate 1 — Do We Understand the Customer Problem?

**Finding: Solid.**

LOTL is real in Adlumin customer environments. Three production detection cases confirm it: ADLC-178 (rundll32 LOTL) [R], ADLC-161 (whoami scheduled task persistence) [R], ADLC-199 (Node.js LoLBIN loader chain) [R]. These are not hypothetical threat scenarios — they are closed SOC detection work.

ADL-1294 [R] launched from explicit customer feedback requesting LOTL detection improvement. This is demand-pulled, not roadmap-pushed.

Partners are voting with their feet. EDR-2656 [R] shows partners requesting SentinelOne Core EDR specifically for LOTL coverage — a signal that the current Adlumin surface is not closing the competitive gap. The Huntress battlecard [R] names "catches stealthy LOTL" as an explicit product strength, which means the language is already in the room during deals.

The data moat is real: ~1 billion PowerShell commands per week flowing through the platform [D] [CS: HIGH — internal platform metric, not independently audited].

External validation is present but requires sourcing discipline. A government advisory (JOINT-CSI) [R] names identity and LOTL as the dominant breach path. Industry statistics — 84% of attacks use LOTL techniques (CybersecurityHQ 2025) [R] [WOBBLY: secondary source, not independently verified] and 62% of incidents involve LOTL (CrowdStrike Threat Report 2025) [R] [WOBBLY: vendor-published; treat as directional, not definitive] — are usable as context, not proof.

### The Critical Finding: The Gap Is Trust, Not Detection

All three ADLC detection rules (178, 161, 199) were **Declined** [R]. Not because the threats are not real. Because surfacing them as binary rules would flood analysts with false positives and erode platform trust.

The problem is not "Adlumin cannot detect LOTL." The problem is: **Adlumin cannot show LOTL to analysts without breaking their trust.**

TRG-44 (Nightscope Threat Research epic, In Progress) [R] names this tension explicitly: *"balance Product's interest to 'move the needle' on this competitive item with our mandate to provide meaningful security improvement."* [CS: VERIFIED — direct quote from Jira epic]. This is the design problem. The brief and prototype exist to resolve it.

---

## Gate 2 — Are We Making the Right Thing?

**Finding: Hypothesis formed. One untested assumption remains.**

The prototype (`prototypes/adlumin-lotl.html`) bets that confidence scoring + named technique labels + AI attribution resolves the Declined rule problem [A]. The mechanism: borderline detections become usable when the analyst sees a confidence band, a MITRE technique name, and an AI attribution trace — rather than a binary alert. This directly addresses TRG-44's tension between competitive pressure and signal integrity.

[ASSUMPTION] Confidence scoring in the UI changes analyst behavior and trust. This is the core design hypothesis. It is not validated. It needs 2 analyst sessions minimum before the assumption can be retired.

The innovation scoring surfaces where the bet is placed and where the gaps are:

| Dimension | Score | Notes |
|---|---|---|
| Process | 5/5 | 1B cmd/week, BERT ensemble, shipped infrastructure [R] |
| Structure | 4/5 | Data science team, proprietary telemetry [R] |
| Service | 4/5 | MDR co-managed delivery model [R] |
| Channel | 4/5 | MSP, 90-minute deploy [R] |
| Network | 3/5 | — |
| Product System | 3/5 | RACE + identity + endpoint exist; not yet integrated surface [R] |
| Product Performance | 2/5 | Model exists; no published FPR/TPR benchmark — **critical gap** [?] |
| Profit Model | 2/5 | Subscription only; no LOTL upsell structure [R] |
| Brand | 1/5 | LOTL not named in product; Huntress owns the language [R] |
| Customer Engagement | 1/5 | No explainability, no confidence surface — what the prototype addresses [A] |
| **Total** | **29/50** | Execution strength is real. Customer-facing surface is thin. |

[CS: MEDIUM — Ten Types scores are interpretive; reasonable analysts could score ±1 on any dimension.]

The Four Lenses confirm the frame is coherent:

**WHAT** — PowerShell Ensemble (BERT + Gaussian + regex) [R] · RACE correlation [R] · Endpoint telemetry via ADL-1381/1294 [R] · Identity monitoring via ADL-1279 [R] · MITRE ATT&CK mapping (in progress) [R]

**WHO** — SOC analyst (alert overload, cannot distinguish LOTL from admin traffic) [R] · MSP operator (multi-client, needs named explainable signals) [R] · CISO/buyer (renewal proof, outcome visibility) [A] · Partner (Huntress battlecard already in the room) [R]

**WHY** — Reduce dwell time [R] · Close competitor gap [R] · Give analysts confidence to act [A] · Give buyers renewal proof [A] · Reframe Adlumin from feature-led to AI-led [A]

**HOW** — Behavioral AI scores every command · RACE correlates into named incidents · UI surfaces technique name + confidence + AI attribution · Analyst can act, override, audit

---

## Gate 3 — Are We Building the Thing Right?

**Finding: Missing. Do not proceed to build without this.**

No test protocol exists. Required before Gate 3 can close:

**Success metric:** Analyst acts on LOTL-scored alert without escalating to L2 in X% of cases. [?] — threshold not yet defined; must be set with SOC lead before sessions.

**Counter-metric:** False positive rate must not increase. The PowerShell Ensemble FPR benchmark is not published [?]. This is a prerequisite for any honest performance claim.

**Test plan:** 2 SOC analyst sessions. Prototype on screen. Real incident scenario drawn from ADLC-178 or ADLC-199 case material. Observe: does named confidence scoring change the analyst's decision to act vs. escalate?

**Blocked data:** The "should we?" comment threads on ADLC-178, -161, and -199 are the key qualitative signal — the reasoning behind Declined status. These are currently inaccessible via API. Must be pulled directly in Jira. [CS: VERIFIED — confirmed blocked during research session 2026-05-19.]

---

## Evidence Index

| Source | Type | Location |
|---|---|---|
| ADLC-178 (rundll32 LOTL, Declined) | [R] | Jira — Adlumin Detection Life Cycle |
| ADLC-161 (whoami persistence, Declined) | [R] | Jira — Adlumin Detection Life Cycle |
| ADLC-199 (Node.js LoLBIN, Declined) | [R] | Jira — Adlumin Detection Life Cycle |
| TRG-44 (Nightscope Threat Research, In Progress) | [R] | Jira — Nightscope epic |
| ADL-1294 (LOTL detection improvement) | [R] | Jira — Adlumin engineering |
| ADL-1381 (endpoint telemetry) | [R] | Jira — Adlumin engineering |
| ADL-1415 | [R] | Jira — Adlumin engineering |
| ADL-1838 | [R] | Jira — Adlumin engineering |
| PUT-856 (UX epic — empty placeholder) | [R] | Jira — UX |
| EDR-2656 (partner SentinelOne requests) | [R] | Jira |
| Adlumin ROI by Quarter, May 2026 | [R] | Confluence page 61907271770 |
| Battlecard: 1085 PMM_M…card_FINAL | [R] | PDF |
| Roadmap 2026_UEM | [R] | PowerPoint |
| JOINT-CSI government advisory | [R] | External |
| CrowdStrike Threat Report 2025 | [R] [WOBBLY] | External — vendor-published |
| CybersecurityHQ 2025 | [R] [WOBBLY] | External — secondary source |

---

## Status Summary

Gate 1: Solid. Real customer cases, real demand signal, real data moat. The trust gap (not a detection gap) is named and sourced.

Gate 2: Hypothesis formed. The prototype addresses TRG-44's tension directly. One load-bearing assumption (confidence scoring changes analyst behavior) requires 2 sessions to validate.

Gate 3: Missing. FPR benchmark needed. Success metric threshold needed. ADLC comment threads must be pulled from Jira directly.

**Do not brief leadership on Gate 2 until Gate 3 has a test plan.**
