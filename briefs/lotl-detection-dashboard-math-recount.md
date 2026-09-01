# LOTL Detection Dashboard — Math Recount

**Brief:** lotl-detection-dashboard.brief.md  
**Date:** 2026-06-04

---

## Tagging Methodology

Every substantive claim about the world (not preamble, not meta-commentary, not test-plan scaffolding) was tagged [R] [D] [A] [?].

Three buckets:
1. **World-claims** — Substantive assertions about reality (threat model, capability, strategy, market)
2. **Test-plan claims** — Assertions about validation method ("we will test X with Y users")
3. **Meta/preamble** — Structural commentary, section headers, context-setting

---

## Bucket 1: World-Claims (The Only Ratio That Matters)

| Tag | Count | % of World-Claims |
|-----|-------|-------------------|
| [R] Research/Verified | 19 | 39.6% |
| [D] Data/Metrics | 8 | 16.7% |
| [A] Assumed/Strategic | 14 | 29.2% |
| [?] Unknown/Gaps | 7 | 14.6% |
| **TOTAL** | **48** | **100%** |

**[A]+[?] = 21 / 48 = 43.75%**

**Verdict:** This brief is not ready. Strategic positioning (Gate 2) is mostly [A]. Test plan (Gate 3) is [?].

---

## Bucket 2: Test-Plan Claims

| Tag | Count |
|-----|-------|
| [A] Assumed (no sourced test plan) | 4 |
| [?] Unknown (no definition of success) | 3 |
| **TOTAL** | **7** |

Test plan is entirely [A] or [?]. No validated personas, no usability benchmark, no definition of "LOTL visibility."

---

## Bucket 3: Meta/Preamble

(Not tagged. Structural commentary, section headers, evidence source citations.)

---

## Full Line-by-Line Recount (World-Claims Only)

### [R] Research/Verified (19 claims)

1. "Attackers break in without malware. They use legitimate admin tools: PowerShell, scripts, admin utilities." — CISA/NSA/FBI Volt Typhoon guidance
2. "To traditional detection tools, this looks like normal work." — CybersecurityHQ Report 2025
3. "84% of high-severity attacks in 2025 use LOTL techniques" — CybersecurityHQ Report 2025
4. "62% of CrowdStrike detections involve LOTL" — CrowdStrike Threat Report 2025
5. "Identity abuse is now the dominant breach path" — CISA/NSA/FBI Volt Typhoon guidance
6. "LOTL attacks use valid credentials, use legitimate tools, and move slowly." — Multiple sources
7. "Signal exists only statistically — humans and static rules are overwhelmed." — Source document analysis
8. "RACE: Automated triage, recommended actions, guided remediation" — Capability documented
9. "Named LOTL capability does not exist" — Strategic assessment, source document
10. "Last competitive refresh January 2024" — Source document
11. "MDR/XDR market: $5–6B in 2026, 21–25% CAGR to $13–19B by 2031" — Market research implied
12. "ITDR market: $2–16B, 22–30% CAGR" — Verified Market Research, 360iResearch
13. "Palo Alto XSIAM: Reframes AI as operating environment, not feature" — Competitor positioning documented
14. "SentinelOne Purple AI: Autonomous triage, confidence-scored decisions, human-in-the-loop override as default workflow" — Competitor positioning documented
15. "Adlumin's co-managed model, ~90-minute deployment, endpoint-agnostic, 100% channel" — Capability documented
16. "Competitive positioning is 2+ years old" — Last competitive refresh January 2024
17. "Alert fatigue: Poorly designed AI creates alert fatigue, erodes trust, gets disabled or ignored" — Source document
18. "'This is a UX problem, not a model problem'" — Source document
19. "LOTL Attack uses valid credentials, legitimate tools, moves slowly" — CybersecurityHQ, CrowdStrike, CISA guidance

### [D] Data/Metrics (8 claims)

1. "PowerShell Ensemble analyzing ~1 billion commands per week" — ADL-1381
2. "Identity telemetry: Microsoft 365 telemetry, impossible travel detection, geo-analysis, Signal Sync (ADL-1279)" — Jira tickets
3. "Endpoint Detection Expansion" — ADL-1381
4. "Tamper-Proof Research" — ADL-1294
5. "AI positioned as 'feature enhancement' or 'Q4 polish item' (PUT-856)" — Roadmap reference
6. "At ~$47M ARR, 1% PMF accuracy improvement = ~$470K/year" — Math derivable
7. "AI positioned as 'feature enhancement' or 'Q4 polish item' (PUT-856)" — Roadmap reference (duplicate)
8. "PowerShell Command: ~1B/week volume" — ADL-1381

### [A] Assumed/Strategic (14 claims)

1. "Capability exists. Narrative, visibility, trust, and outcomes do not." — Author assessment, not sourced from customer feedback or sales loss data
2. "Competitive differentiator is no longer breadth of telemetry, but quality of AI-driven investigation and platform consolidation economics" — Implied comparison, not sourced from customer interviews or win/loss analysis
3. "Adlumin's AI not framed as operating model" — Strategic assessment
4. "Adlumin detects LOTL-relevant activity, but does not name or position it." — Strategic assessment, not validated with sales, MSP feedback, or lost deal analysis
5. "Competitors market LOTL coverage as headline capability." — Implied comparison, no specific competitor claims cited
6. "3 lost deals/quarter × $50K = $600K/year at risk from detection gaps" — Hypothetical modeling, not based on actual lost deal data
7. "All LOTL/AI initiatives tagged STRATEGIC because value is positional, not directly measurable from current data" — Author tagging explanation
8. "The strategic claim — 'If we don't clearly position AI as the solution here, we risk appearing behind even when the tech exists' — is [A]." — No customer interviews, win/loss analysis, or MSP feedback cited
9. "Prototype fidelity: Tier 1 (Concept) — 30% gate, lo-fi" — Project framing
10. "Internal audience: Sabrina (PM at Adlumin)" — Project context
11. "Validation plan: '5 MSP customers by end Q3'" — OKR, not a sourced test plan
12. "Narrative collision: We name LOTL capability before validating that MSPs/analysts recognize it as a distinct problem category." — Assumed failure mode
13. "AI transparency failure: AI confidence scoring or baseline drift metrics are surfaced without explanation." — Assumed failure mode
14. "Counter-metric: Alert fatigue — must not increase false positive rate or analyst workload" — Implied, not baselined

### [?] Unknown/Gaps (7 claims)

1. "No published AI detection performance baseline (false positive rate, MTTR, analyst workload reduction)" — Gap named in source
2. "No AI SOC maturity benchmark against competitors" — Gap named in source
3. "No competitive UX benchmarking" — Last competitive refresh January 2024
4. "CrowdStrike Charlotte AI: Claims ~85% analyst workload reduction" — Cited from "CrowdStrike materials | Outlook," not primary source
5. "No agent-based SOC workflow" — Gap named
6. "No validated personas" — Planned Q3 via PUT-1152
7. "No articulated ITDR strategy" — Gap named in source

---

## What's Thin (By Section)

### Gate 1 (Problem): STRONG
- Threat model: [R] — Well-sourced
- Detection capability: [D] — Verified from Jira
- **Gap:** "Narrative does not exist" is [A] — not validated with customer feedback

### Gate 2 (Right Thing): WEAK
- Competitive positioning: [A] — Implied comparisons, not sourced
- ROI: [A] — Hypothetical modeling, not based on lost deal data
- Strategic claim: [A] — No win/loss analysis or MSP feedback

### Gate 3 (Built Right): MISSING
- Test plan: [A] — OKR, not a sourced test plan
- Success criteria: [?] — Not defined
- Usability baseline: [?] — Not defined

---

## Recommendation

**Do not proceed to high-fidelity build until:**
1. MSP/analyst interviews validate that "LOTL" is a recognized problem category
2. Baseline alert fatigue (FPR, analyst triage time) is measured
3. Success criteria for dashboard usability are defined
4. Competitive benchmarking is updated from primary sources (not 2-year-old battlecards)

**If strategic validation fails,** pivot to outcomes (analyst workload reduction, MTTR improvement) rather than taxonomic visibility.
