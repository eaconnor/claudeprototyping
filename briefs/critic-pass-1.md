# LOTL Detection Dashboard — Critic Pre-Build Scorecard

**Brief:** `briefs/lotl-detection-dashboard.brief.md`  
**Fidelity:** Tier 1 (Concept) — 30% gate  
**Reviewer:** Critic  
**Date:** 2026-06-04  
**Status:** Pre-build

---

## Score Summary

| Dimension | Score | Reasoning |
|-----------|-------|-----------|
| **Coherence** | 4/5 | Dashboard traces cleanly to the gap: capability exists, narrative doesn't. Solution (surface LOTL activity) is logical answer to positioning problem. Loses 1 point because the brief admits the strategic claim is [A] — no sourced evidence that MSPs care about LOTL taxonomy vs. outcomes. |
| **Source-fidelity** | 3/5 | Threat model [R], detection capability [D], strategic positioning [A]. 43.75% [A]+[?] is high but honestly named. Gate 1 is solid. Gate 2 is thin. Gate 3 testing is [?]. For Tier 1 concept fidelity, this is acceptable — the brief is testing the question, not claiming the answer. |
| **Demo-ability** | 5/5 | Clear concept. Single-page dashboard surfacing LOTL-tagged detections, AI confidence scoring, baseline drift. PowerShell Ensemble + identity telemetry feed in. RACE outputs actions. Council tensions surfaced in modal. Bradley rail routes next steps. This is buildable at lo-fi. |
| **Differentiation** | 2/5 | Brief names competitors (CrowdStrike Charlotte, Palo Alto XSIAM, SentinelOne Purple AI) but doesn't specify how Adlumin's LOTL dashboard differs beyond "we detect it but don't name it." Co-managed model + 90-min deployment is an advantage, but dashboard UX differentiation is unstated. No claim about what makes this better than competitors, only that it closes a naming gap. |
| **Risk** | 4/5 | Two failure modes explicitly named: (1) narrative collision — adding taxonomic noise without improving triage, (2) AI transparency failure — confidence scores become decoration. Alert fatigue counter-metric called out. Loses 1 point because no baseline for alert fatigue, no test for whether analysts recognize LOTL as distinct category. Risks are named, not mitigated. |
| **Scope discipline** | 5/5 | Single-page dashboard, lo-fi, Tier 1 concept fidelity. Council modal + Bradley rail. This is tightly scoped for a prototype testing a strategic question. Brief explicitly says "not ready for high-fidelity build." |

**Total: 23/30**

---

## Interpretation

23/30 at Tier 1 (Concept) fidelity is **ready to prototype**. The brief is testing a strategic question ("does naming LOTL improve positioning?") not shipping production. Gate 1 (problem) is sourced [R]+[D]. Gate 2 (right thing) is thin [A] but named as such. Gate 3 (built right) is [?] on testing but clear on concept. Scope is disciplined. Risks are named.

**Green light for lo-fi build.** Strategic validation (MSP interviews, win/loss analysis) must happen before higher fidelity.

---

## Punch List

### PASS
- **Three-gate structure:** Gate 1 (problem), Gate 2 (right thing), Gate 3 (built right) clearly separated. Problem statement sources LOTL statistics [R], detection capability [D].
- **Claim tagging:** [R]/[D]/[A]/[?] applied inline. Evidence ratio (43.75% [A]+[?]) calculated and named upfront.
- **Honest sourcing:** "This brief is not ready for high-fidelity build" explicitly stated. Strategic claims flagged as [A]. Test plan gaps flagged as [?].
- **Domain model:** Entities (LOTL Attack, PowerShell Command, Detection Event, Analyst, SOC Customer), value objects (AI Confidence Score, Baseline Drift Metric), services (Detect, Triage, Position) defined with evidence tags.
- **Ubiquitous language:** LOTL, PowerShell Ensemble, RACE, Signal Sync, Detection Gap defined.
- **Failure modes named:** Narrative collision (taxonomic noise), AI transparency failure (scores become decoration). Alert fatigue counter-metric called out.
- **Scope discipline:** Tier 1 concept fidelity, single-page dashboard, lo-fi. No feature creep.
- **Next steps:** Five concrete actions (validate strategic claim, baseline alert fatigue, competitive benchmarking, define success, persona validation). Includes pivot strategy if validation fails.

### FAIL
- **Gate 2 sourcing (Right thing):** Strategic positioning claim — "competitors market LOTL, Adlumin doesn't, this hurts us" — is [A]. No customer interviews, win/loss analysis, MSP feedback, or sales loss data. The brief names this as a gap, but the entire prototype hinges on an unvalidated assumption. If MSPs don't care about LOTL taxonomy (only outcomes: faster triage, fewer false positives), the dashboard tests the wrong question.
- **Competitor claims not verified:** CrowdStrike Charlotte AI "~85% analyst workload reduction" cited from secondary source ("Outlook"), not primary. Palo Alto XSIAM and SentinelOne Purple AI positioning claims not linked to source docs. Brief says "Last competitive refresh January 2024" but proceeds as if 2026 competitor state is known. [CS: LOW — competitor capability claims are directional, not verified].
- **No baseline for counter-metric:** Alert fatigue is named as the risk, but current false positive rate, analyst workload, and triage time are [?]. You cannot test whether the dashboard increases or reduces fatigue without knowing the starting point.
- **No differentiation claim:** Brief says Adlumin detects LOTL but doesn't name it. Dashboard will name it. What makes the Adlumin LOTL detection better/different than CrowdStrike Charlotte, Palo Alto XSIAM, SentinelOne Purple AI? Co-managed model + 90-min deployment is a platform advantage, not a dashboard UX advantage. No claim about detection accuracy, speed, explainability, or analyst workflow superiority.

### MISSING
- **Test plan (Gate 3):** "5 MSP customers by end Q3" is an OKR, not a test protocol. What will those 5 MSPs be asked to do? What success criteria? What counts as "LOTL visibility"? What metrics (triage time, confidence in AI scoring, false positive perception) will be measured? The brief flags this as [?] but doesn't propose a skeleton test plan.
- **Definition of "LOTL visibility":** The dashboard will "surface LOTL activity." What does that mean for an analyst? A filter? A dedicated view? A severity label? A detection tag? The brief doesn't specify. Buildable at lo-fi, but success criteria are undefined.
- **Persona validation:** Brief says "No validated personas [?] — Planned Q3 via PUT-1152" but proceeds with dashboard design anyway. Who is the primary user? MSP analyst? Internal SOC? Sabrina (PM)? Prototype will have seed data and workflow assumptions — whose workflow?
- **ROI math verification:** "$47M ARR, 1% PMF accuracy improvement = ~$470K/year" [D] is derivable. "3 lost deals/quarter × $50K = $600K/year at risk" [A] is hypothetical modeling, not based on actual lost deal data. The brief names this, but the handoff will cite these numbers — they need [CS: MEDIUM] tags minimum, or removal.
- **AI confidence scoring explanation:** Dashboard will surface "AI Confidence Score" as a value object, but brief says "No published AI detection performance baseline (FPR, MTTR, analyst workload reduction) [?]". If the dashboard shows a confidence score, what does 85% confident mean? How was it trained? What's the false positive rate at that threshold? Analysts won't trust a score without explanation. This is the "AI transparency failure" risk the brief names — but no solution proposed.

### RISK
- **Narrative collision (named, not mitigated):** Dashboard adds "LOTL" taxonomy before validating that MSPs/analysts recognize it as a distinct problem category. If they don't, dashboard adds cognitive load (new label to learn) without value (they already triage PowerShell alerts). The brief names this risk but doesn't propose a mitigation (e.g., A/B test with/without LOTL label, or test MSP recognition of "LOTL" term in interviews before build).
- **Strategic pivot not budgeted:** Brief says "If strategic validation fails (MSPs don't care about LOTL naming), pivot: Focus on outcomes (analyst workload reduction, MTTR improvement) rather than taxonomic visibility." This pivot is a different dashboard. If validation fails post-prototype, the build is wasted. Should validation happen BEFORE prototype, or is the prototype itself the validation tool? Brief doesn't say.
- **Competitor positioning lag:** Last competitive refresh January 2024. Prototype will be shown Q3 2026. 2.5-year gap. CrowdStrike, Palo Alto, SentinelOne may have shipped new LOTL capabilities in that window. Prototype risks positioning against stale competitor state. Brief names this ("[CS: LOW — competitor capability claims are directional, not verified") but proceeds anyway.
- **Alert fatigue baseline missing:** Counter-metric is "must not increase false positive rate or analyst workload." Current FPR and workload are [?]. If the dashboard is tested and MSPs report fatigue, you won't know if it's new (dashboard caused it) or existing (PowerShell Ensemble already had the problem). You can't protect a counter-metric you haven't measured.
- **No fallback if AI confidence scoring confuses analysts:** Brief names "AI transparency failure" as a risk. If analysts ignore confidence scores (or worse, distrust them), what's the fallback? Does the dashboard still work without AI scoring? Or does the entire value prop collapse? Not addressed.

---

## Prioritized Gaps

### Before Build
1. **Define "LOTL visibility" operationally.** What does the dashboard show? A filter? A tag? A dedicated view? Buildable at lo-fi without this, but success criteria are undefined.
2. **Propose skeleton test plan for 5 MSP validation.** What will MSPs be asked to do? What counts as success? (Can be added to Bradley rail "Research does" card, but should exist before build starts.)

### During Build
3. **Seed data for AI confidence scoring.** Dashboard will show scores. Prototype needs fictional but realistic score distribution (e.g., 3 high-confidence LOTL detections, 2 medium, 1 low). Without baseline performance data, this is [A] — name it in fidelity banner.
4. **Competitor differentiation claim.** Dashboard will be shown to Sabrina (PM at Adlumin). She will ask "How is this different from CrowdStrike Charlotte?" Bradley rail should surface this gap in "What will hurt you" block.

### After Build (Before Higher Fidelity)
5. **Validate strategic claim.** Interview MSPs: Do they recognize "LOTL" as a named problem? Do they care that Adlumin detects it, or do they care about outcomes (faster triage, fewer false positives)? If they don't care about LOTL taxonomy, pivot to outcomes dashboard.
6. **Baseline alert fatigue.** What is current FPR? Current analyst triage time for PowerShell Ensemble alerts? Required to test counter-metric.
7. **Competitive benchmarking refresh.** Last refresh January 2024. Verify CrowdStrike, Palo Alto, SentinelOne LOTL positioning from primary sources (not 2-year-old PMM battlecards).
8. **Persona validation.** Wait for PUT-1152 (Q3 2026) before Tier 2 (Direction) or Tier 3 (Spec-ready) build.

---

## Verdict

**Ready to prototype at Tier 1 (Concept) fidelity.**

Gate 1 (problem) is sourced. Gate 2 (right thing) is thin but named. Gate 3 (built right) is [?] on testing but clear on concept. Scope is disciplined. Risks are named. The brief is honest about its gaps (43.75% [A]+[?]) and explicitly says "not ready for high-fidelity build."

**This prototype tests a strategic question:** "Does naming LOTL capability improve competitive positioning?" The answer is [A]. The prototype will make that question tangible for Sabrina (PM) and the 5 MSP validation cohort. That is appropriate use of Tier 1 fidelity.

**Critical path before higher fidelity:** Validate the strategic claim (MSP interviews), baseline alert fatigue (FPR + analyst workload), refresh competitive benchmarking (2024 data is stale), define test protocol (what counts as success).

**Green light for lo-fi build.** Proceed with fidelity banner warning: "Tests strategic positioning question. [A] = 29.2% of world-claims. Validate with MSPs before higher fidelity."
