---
feature: "LOTL Detection Dashboard"
gate: 30  # Tier 1 Concept — 30% through three-gate process
owner: "Sabrina"
problem_statement: "Adlumin detects LOTL-relevant activity (PowerShell ensemble analyzing ~1B commands/week, identity telemetry, automated triage via RACE) but does not name or position this capability. Competitors market LOTL coverage as headline capability. 84% of high-severity attacks in 2025 use LOTL techniques. Strategic gap: capability exists, narrative does not."
okr_objective: "Position Adlumin's AI-driven LOTL detection as named, competitive capability"
okr_key_result: "Ship LOTL detection dashboard prototype by Q3 2026; validate with 5 MSP customers by end Q3"
counter_metric: "Alert fatigue — must not increase false positive rate or analyst workload"
idea_score: 12  # Strong technical foundation [D], weak strategic sourcing [A], clear UX failure mode named [R]
evidence_sources: 
  - "scout_input/02-lotl-threat-model.md"
  - "scout_input/03-lotl-ai-requirements.md"
  - "scout_input/04-adlumin-lotl-capability.md"
  - "scout_input/05-lotl-competitive-gap.md"
  - "scout_input/06-lotl-roi-context.md"
status: "draft"

domain_model:
  entities:
    - name: "LOTL Attack"
      identity: "attack instance ID or event sequence"
      attributes: ["uses valid credentials", "uses legitimate tools", "moves slowly"]
      evidence: "[R] — CybersecurityHQ 2025, CrowdStrike Threat Report 2025, CISA/NSA/FBI Volt Typhoon guidance"
    - name: "PowerShell Command"
      identity: "command hash or execution event ID"
      attributes: ["analyzed by PowerShell Ensemble", "~1B/week volume"]
      evidence: "[D] — ADL-1381"
    - name: "Detection Event"
      identity: "event ID"
      attributes: ["severity", "confidence score [A]", "recommended action"]
      evidence: "[D] — RACE automated triage capability"
    - name: "Analyst"
      identity: "analyst ID"
      attributes: ["workload", "triage time"]
      evidence: "[A] — implied by workload reduction claims, not directly sourced"
    - name: "SOC Customer"
      identity: "tenant ID"
      attributes: ["MSP or internal security team"]
      evidence: "[A] — implied by co-managed model, not directly sourced"
  value_objects:
    - name: "AI Confidence Score"
      describes: "Detection Event"
      evidence: "[A] — implied by AI detection requirements, not specified in source"
    - name: "Baseline Drift Metric"
      describes: "LOTL Attack behavior vs. normal"
      evidence: "[A] — implied by 'signal exists only statistically,' not detailed"
  services:
    - name: "Detect LOTL Behavior"
      acts_on: ["PowerShell Command", "Identity Telemetry"]
      trigger: "PowerShell Ensemble (ADL-1381), Signal Sync (ADL-1279)"
      evidence: "[D] — Jira tickets ADL-1381, ADL-1279"
    - name: "Triage Detection Event"
      acts_on: ["Detection Event"]
      trigger: "RACE or Analyst"
      evidence: "[R] — RACE automated triage capability"
    - name: "Position LOTL Capability"
      acts_on: ["Competitive Narrative"]
      trigger: "Product Marketing, UX"
      evidence: "[A] — strategic assessment, not product capability"
  ubiquitous_language:
    - term: "Living Off The Land (LOTL)"
      means: "Attacks using legitimate admin tools (PowerShell, scripts, admin utilities) instead of malware"
    - term: "PowerShell Ensemble"
      means: "AI model analyzing ~1 billion PowerShell commands per week"
    - term: "RACE (Real-time Automated Cybersecurity Engine)"
      means: "Automated triage + recommended actions + guided remediation"
    - term: "Signal Sync"
      means: "Identity telemetry correlation (ADL-1279)"
    - term: "Detection Gap"
      means: "Competitive positioning claim — capability exists but not named or marketed"

readiness_warning: "World-claims math: [A]+[?] = 43.75% (21 of 48 claims). Strategic positioning and competitive ROI claims are mostly [A]. Detection capability is [D]. Threat model is [R]. Gate 2 (right thing) has thin sourcing. This brief is not ready for high-fidelity build."
---

# LOTL Detection Dashboard — Three-Gate Brief

**Readiness:** [A]+[?] = 43.75% of world-claims. Strategic positioning is mostly [A]. Detection capability is [D]. Threat model is [R]. Gate 2 (right thing) has thin sourcing.

---

## Gate 1 — Problem: Is the LOTL detection gap real and sourced?

### What Is LOTL?
Attackers break in without malware. They use legitimate admin tools: PowerShell, scripts, admin utilities. [R] — CISA/NSA/FBI Volt Typhoon guidance

To traditional detection tools, this looks like normal work. [R] — CybersecurityHQ Report 2025

### Attack Statistics
- **84% of high-severity attacks in 2025 use LOTL techniques** [R] — CybersecurityHQ Report 2025
- **62% of CrowdStrike detections involve LOTL** [R] — CrowdStrike Threat Report 2025
- **Identity abuse is now the dominant breach path** [R] — CISA/NSA/FBI Volt Typhoon guidance

### Why Traditional Detection Fails
LOTL attacks use valid credentials, use legitimate tools, and move slowly. [R] — Multiple sources

Signal exists only statistically — humans and static rules are overwhelmed. [R] — Source document analysis

### Adlumin's Current LOTL Capability (What Exists)
- **PowerShell Ensemble analyzing ~1 billion commands per week** [D] — ADL-1381
- **Identity telemetry:** Microsoft 365 telemetry, impossible travel detection, geo-analysis, Signal Sync (ADL-1279) [D] — Jira tickets
- **RACE:** Automated triage, recommended actions, guided remediation [R] — Capability documented
- **Endpoint Detection Expansion** [D] — ADL-1381
- **Tamper-Proof Research** [D] — ADL-1294

### What Does NOT Exist
- **Named LOTL capability** [R] — Strategic assessment, source document
- **No published AI detection performance baseline** (false positive rate, MTTR, analyst workload reduction) [?] — Gap named in source
- **No AI SOC maturity benchmark against competitors** [?] — Gap named in source
- **No competitive UX benchmarking** [?] — Last competitive refresh January 2024
- **AI positioned as "feature enhancement" or "Q4 polish item" (PUT-856)** [D] — Roadmap reference

### The Gap
**Capability exists. Narrative, visibility, trust, and outcomes do not.** [A] — Author assessment, not sourced from customer feedback or sales loss data

---

## Gate 2 — Right Thing: Does naming LOTL advance Adlumin's competitive position?

### Market Context
- **MDR/XDR market:** $5–6B in 2026, 21–25% CAGR to $13–19B by 2031 [R] — Market research implied
- **ITDR market:** $2–16B, 22–30% CAGR [R] — Verified Market Research, 360iResearch
- **Competitive differentiator is no longer breadth of telemetry, but quality of AI-driven investigation and platform consolidation economics** [A] — Implied comparison, not sourced from customer interviews or win/loss analysis

### Competitor AI Positioning
- **CrowdStrike Charlotte AI:** Claims ~85% analyst workload reduction [?] — Cited from "CrowdStrike materials | Outlook," not primary source
- **Palo Alto XSIAM:** Reframes AI as operating environment, not feature [R] — Competitor positioning documented
- **SentinelOne Purple AI:** Autonomous triage, confidence-scored decisions, human-in-the-loop override as default workflow [R] — Competitor positioning documented

### Adlumin's Current AI Positioning
- AI positioned as "feature enhancement" or "Q4 polish item" (PUT-856) [D] — Roadmap reference
- Not framed as operating model [A] — Strategic assessment
- No agent-based SOC workflow [?] — Gap named

### Competitive Gap
**Adlumin detects LOTL-relevant activity, but does not name or position it.** [A] — Strategic assessment, not validated with sales, MSP feedback, or lost deal analysis

**Competitors market LOTL coverage as headline capability.** [A] — Implied comparison, no specific competitor claims cited

### Strategic ROI
- At ~$47M ARR, **1% PMF accuracy improvement = ~$470K/year** [D] — Math derivable
- **3 lost deals/quarter × $50K = $600K/year at risk** from detection gaps [A] — Hypothetical modeling, not based on actual lost deal data
- All LOTL/AI initiatives tagged **STRATEGIC** because value is positional, not directly measurable from current data [A] — Author tagging explanation

### Adlumin's Advantages
- Co-managed model, ~90-minute deployment, endpoint-agnostic, 100% channel [R] — Capability documented

### What's Missing
- **No validated personas** [?] — Planned Q3 via PUT-1152
- **No articulated ITDR strategy** [?] — Gap named in source
- **Competitive positioning is 2+ years old** [R] — Last competitive refresh January 2024

### Does This Advance the Mission?
**Assumed, not validated.** The strategic claim — "If we don't clearly position AI as the solution here, we risk appearing behind even when the tech exists" — is [A]. No customer interviews, win/loss analysis, or MSP feedback cited to confirm LOTL naming/positioning moves revenue, retention, or competitive win rate.

---

## Gate 3 — Built Right: How do we test whether the dashboard makes LOTL visible?

### Testing Plan
- **Prototype fidelity:** Tier 1 (Concept) — 30% gate, lo-fi [A] — Project framing
- **Internal audience:** Sabrina (PM at Adlumin) [A] — Project context
- **Validation plan:** "5 MSP customers by end Q3" [A] — OKR, not a sourced test plan

### What Counts as Done?
[?] — Not specified. No definition of "LOTL visibility," no success criteria for dashboard usability, no benchmark for alert fatigue, no test for whether analysts understand AI confidence scoring.

### UX Failure Modes (Named in Source)
- **Alert fatigue:** Poorly designed AI creates alert fatigue, erodes trust, gets disabled or ignored [R] — Source document
- **"This is a UX problem, not a model problem"** [R] — Source document

### What Must Be Tested
- Does the dashboard surface LOTL activity in a way analysts recognize as distinct from other alerts? [?]
- Does AI confidence scoring reduce triage time or increase confusion? [?]
- Does naming LOTL capability improve MSP trust or just add taxonomic noise? [?]

### Counter-Metric
**Alert fatigue** — must not increase false positive rate or analyst workload [A] — Implied, not baselined

---

## Failure Modes

1. **Narrative collision:** We name LOTL capability before validating that MSPs/analysts recognize it as a distinct problem category. Dashboard adds taxonomic complexity without improving triage speed or trust. [A]

2. **AI transparency failure:** AI confidence scoring or baseline drift metrics are surfaced without explanation. Analysts ignore scores, defeating the purpose of statistical detection. Becomes decoration, not decision support. [A]

---

## What's Missing

### High-Priority Gaps
- **No validated personas** [?] — Planned Q3 via PUT-1152
- **No published AI detection performance baseline** (FPR, MTTR, analyst workload reduction) [?]
- **No competitive UX benchmarking** [?] — Last refresh January 2024
- **No sourced evidence that MSPs/analysts recognize "LOTL" as a named problem category** [?]
- **No test plan for dashboard usability** [?]
- **No definition of "LOTL visibility" or success criteria** [?]

### Strategic Gaps
- **No articulated ITDR strategy** [?]
- **No win/loss analysis confirming LOTL positioning moves competitive outcomes** [?]
- **Competitive positioning is 2+ years old; treat competitor capability claims as directional, not verified** [R]

### ROI Gaps
- **CrowdStrike workload reduction claim (~85%) not verified from primary source** [?]
- **Hypothetical lost deal modeling ($600K/year at risk) not based on actual lost deal data** [A]

---

## Idea Score: 12 / 20

**Breakdown:**
- **Technical foundation (PowerShell Ensemble, RACE, identity telemetry):** Strong [D] — +5
- **Threat model (LOTL statistics, attack characteristics):** Well-sourced [R] — +4
- **Strategic positioning (competitive gap, ROI):** Weak [A] — +1
- **Test plan (usability, validation):** Missing [?] — +0
- **UX failure modes:** Named [R] — +2

**Reasoning:** Detection capability is real. Threat model is sourced. Strategic claim ("competitors market LOTL, we don't") is unsourced. No validated personas, no test plan, no definition of success. Alert fatigue risk is named but not baselined. Brief is strong on "what we can build" (Gate 3), weak on "should we build it" (Gate 2), missing "how do we know it works" (Gate 3 testing).

---

## Evidence Ratio Summary

**World-claims only (excludes test-plan claims and preamble/meta):**
- **[R] Research/Verified:** 19 claims (39.6%)
- **[D] Data/Metrics:** 8 claims (16.7%)
- **[A] Assumed/Strategic:** 14 claims (29.2%)
- **[?] Unknown/Gaps:** 7 gaps (14.6%)

**Total world-claims:** 48  
**[A]+[?]:** 21 / 48 = **43.75%**

**This brief is not ready.** Strategic positioning (Gate 2) is mostly [A]. Detection capability (Gate 1) is [D]. Threat model (Gate 1) is [R]. Test plan (Gate 3) is [?].

---

## Next Steps

1. **Validate the strategic claim** — Interview MSPs/analysts: Do they recognize "LOTL" as a named problem? Do they care that we detect it, or do they care about outcomes (faster triage, fewer false positives)?
2. **Baseline alert fatigue** — What is current FPR? What is current analyst triage time for PowerShell Ensemble alerts?
3. **Competitive benchmarking** — Verify CrowdStrike, Palo Alto, SentinelOne LOTL positioning claims from primary sources (not 2-year-old PMM battlecards).
4. **Define success** — What does "LOTL visibility" mean? What is the test for usability?
5. **Persona validation** — Wait for PUT-1152 (Q3 2026) before high-fidelity build.

**If strategic validation fails (MSPs don't care about LOTL naming), pivot:** Focus on outcomes (analyst workload reduction, MTTR improvement) rather than taxonomic visibility.
