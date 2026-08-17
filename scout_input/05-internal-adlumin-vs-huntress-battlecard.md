# Source 05 — INTERNAL: "Adlumin MDR vs Huntress — Executive Analysis and Positioning"

Source: Confluence, space **TI (Nightscope Threat Research)**, page 61567861521.
Author: Alicia Jeatsa. Last modified Feb 25, 2026.
URL: https://n-able.atlassian.net/wiki/spaces/TI/pages/61567861521

Type: **INTERNAL N-able threat-research positioning analysis.** [CS: HIGH for what N-able's own threat team believes; still N-able-authored, so the "we win" framing is internal-advocacy, but it is grounded in the actual custom-detections list, not marketing copy.] This is the primary source the public scout pass could not reach.

## Executive straight answer (verbatim thrust)
- Based on current detections, **Adlumin MDR already exceeds Huntress in breadth of Microsoft-native coverage.**
- Where Huntress still differentiates is NOT volume/surface coverage but: persistence-specific behavioral hunting, post-incident forensic narrative, and an MSP-friendly "human explanation" layer for low-signal behaviors.
- N-able's own framing: **"Those are experience and enrichment gaps, not detection gaps."**

## 1. Endpoint (Defender AV + MDE) — parity or better
Adlumin exposes nearly the full Defender AV lifecycle: detection, failed remediation, successful remediation, threat-resource creation, suspicious behavior, ransomware (multiple signal paths). Discrete event IDs (1116/1006, 1117/1007, 1118/1119/1008, 1015). Huntress relies on Defender AV for initial signal and "often collapses these into a single 'Threat Detected' narrative." [CS: MEDIUM — internal claim]

## 2. Defender tampering & evasion — Adlumin ahead
Adlumin explicitly covers Defender sabotage (clearing definitions, `-RemoveDefinitions -All`, registry disablement, notification suppression, service-disable 5001) — "a known Huntress blind spot unless persistence is involved." Conclusion: Adlumin stronger at **pre-persistence attacker-intent detection.** [CS: MEDIUM — internal claim]

## 3. Automated response — Adlumin > Huntress
Adlumin detections tied to hard response actions:
| Scenario | Response |
|---|---|
| Ransomware | Isolate system + disable accounts |
| Defender tampering | Isolate system |
| High-risk M365 auth | Disable account / force password reset |
| Terminated employee activity | Disable account |
| Malicious IP sign-in | Disable account |
Huntress: human-led confirmation first; containment often advisory/semi-manual; "stronger in explanation, weaker in speed." Adlumin aligns to "Active Defense" MDR (Blackpoint-style). [CS: MEDIUM — internal claim]

## 4. Identity (M365 / Entra / MCAS) — coverage advantage
Adlumin M365 detections: high-risk sign-ins, terminated-employee activity, credential access, phishing click-through, multi-stage incidents, ransomware XDR correlation, severity-aware FP filtering. Maps to Defender for Identity / O365 / Cloud Apps / M365 Defender XDR. Huntress MDR-for-M365 "still relatively new," strong phishing/BEC, "less transparent about multi-signal correlation logic." [CS: MEDIUM — internal claim]

## 5. Where Huntress still wins (N-able's own admission)
- **Persistence-first mindset** (scheduled tasks, registry run keys, WMI subscriptions)
- **Human-readable attack narratives**
- **MSP-friendly explanation layer**
- **Mac visibility (relative advantage)**
N-able frames these as correlation / enrichment / storytelling / analyst-workflow gaps — "solvable without new telemetry."

## 6. The real gap — Signal→Story, not Signal→Alert
Adlumin has signals, severity logic, response hooks, coverage breadth. Missing relative to Huntress: "why this matters" narrative, persistence-focused clustering, attack-path explanation across events, customer-consumable forensic summaries.

## 7. Recommended framing (from the source)
- Do NOT position as "we have more detections than Huntress."
- DO position as "we operationalize all Microsoft Defender telemetry — not just the parts that are easy to explain."
- "Huntress = supplemental Defender oversight; Adlumin = Defender-native SOC with active containment." "Huntress explains fewer signals very well; Adlumin stops more attacks earlier."

## Why this matters for FEAT (Kano + ERRC)
This source reframes the competing factors entirely. The public pull (sources 01–04) treats feature *presence* as the contest. This internal source says detection presence is at parity-or-better for Adlumin, and the real competitive battleground is **narrative / explanation / persistence-hunting** — i.e. an EXPERIENCE layer, not a detection layer. For Kano that flips several "performance" features into "must-be/parity" and elevates the explanation layer to the likely "delighter" axis. For ERRC it tells you what to RAISE (storytelling, persistence clustering) vs what's already a saturated factor (raw detection breadth).

[CS: HIGH that this is N-able's internal position] · [WOBBLY — single internal author, Feb 2026, not externally validated; Huntress-side claims are N-able's characterization of a competitor, not confirmed by Huntress]

## Related internal source NOT yet pulled
- "N-able Win/Loss Report — Chorus Data (Jan–May 2026)" (page 61977427997, JoshSpace) — win/loss call data. Would ground the FEAT read with actual deal outcomes. Recommend pulling if this goes past a concept read.
