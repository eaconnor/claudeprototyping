# Score — Anomaly Detection for Cove Data Protection
## IC-2026-001 | Scored: 2026-06-05 | Evidence: spec v0.2.0 + 4 customer interviews (Aug 2024)

---

## Evidence basis

| Source | Sessions with content | Sessions empty |
|--------|----------------------|----------------|
| IC-2026-001 v0.2.0 intent spec | — | — |
| Customer interviews, Aug 2024 | 4 (Sessions 1–4) | 9 (Sessions 5–13) |

**Participants with content:** Andrew (IT Director, ~300 endpoints, outsources security) · Damian (MSP Ops Lead, ~600–700 devices, automation-heavy) · Curtis (GM/MSP owner, daily Cove user, attorneys + medical clients) · Chris (CTO, 3,600 endpoints / 234 in Cove, 65 clients)

---

## Scorecard — 6 dimensions

Each dimension scored 0–10. Score = how ready is this dimension to proceed without rework.

### 1. Problem sourcing (Gate 1 quality)
**Score: 6 / 10**

Pre-interview: 3/10. The problem was domain-plausible but zero user evidence cited.

Post-interview: Manual review as current state — confirmed by all 4 sessions. Faster signal as desired outcome — confirmed by 3/4. These are the two core premises of the problem statement.

What keeps this from 8+: No baseline metric for current recovery time. The ≥50% alert action rate target still has no anchor in observed MSP incident response data. CSAT methodology undefined. Sample = 4 MSPs; no size or vertical distribution.

**Interview delta: +3**

---

### 2. Solution coherence (Gate 2 quality)
**Score: 5 / 10**

Phase 1 scope (detection + alert + feedback) is internally coherent. The rate-of-change signal, rolling baseline, alert feed, and feedback widget hang together as a minimum.

What drops this score: The action-capability contradiction. 3/4 interview participants expect to *do something* when they receive an anomaly alert — not just receive the information. NONGOAL-002 prohibits automated remediation. The brief has not named the design space between "detection only" and "automated remediation" — a guided recovery handoff, a one-click "initiate recovery from this session," or explicit workflow guidance. This is not a Phase 2 problem. It is a Phase 1 UX decision the spec has deferred.

Curtis's quote is load-bearing: *"What doesn't make sense is to tell me, but I have no recourse."* If this is the primary user reaction to Phase 1 GA, the ≥50% alert action rate metric will not be achievable with the current scope.

**Interview delta: −1 (contradiction raised, not resolved)**

---

### 3. Test-readiness (Gate 3 quality)
**Score: 3 / 10**

Five blocking open questions (Q-001–Q-005) remain unresolved. Three of them (Q-001, Q-002, Q-003) directly prevent any test plan from being written for the core evaluation path. This is structural — not addressable by interviews.

What keeps this from 0: The acceptance criteria are specific and measurable. The testable/not-testable split is cleanly documented. The path to closing each blocker is clear; the blockers themselves are not closed.

**Interview delta: 0 (interviews do not touch Q-001–Q-005)**

---

### 4. Evidence quality (across all sources)
**Score: 5 / 10**

What works: 4 sessions, 4 different MSP profiles (small IT Director, automation-heavy ops lead, daily power user, large multi-client CTO). Directional consistency across sessions on the problem statement. Two [A] claims now have interview support.

What limits this: 9 of 13 interview files are empty — 70% of the intended evidence base is unavailable. Scope = 4 MSPs. No segmentation by geography, vertical, fleet size, or Cove tenure. No support ticket data, no telemetry, no CSAT baseline. Interview data is qualitative and directional only.

**Session completeness: 31% (4/13)**

---

### 5. Risk naming (failure modes + assumptions)
**Score: 7 / 10**

The spec names its own low-confidence assumptions (ASM-001–004) with explicit risk statements. The brief adds three failure modes: false-positive cascade, silent baseline degradation under Data Cleanup, and positioning drift under incident pressure. These are specific, mechanistic, and non-obvious. The Q-005 / Data Cleanup failure mode is particularly high-risk: it is silent, does not produce an error, and produces wrong answers.

What keeps this from 9+: The action-capability contradiction is a new failure mode not yet named in the brief's failure modes section. If MSPs expect action capability and Phase 1 ships detection-only, the alert becomes noise and the ≥50% action rate metric collapses — for a different reason than alert fatigue.

---

### 6. Contradiction surfacing (what evidence reveals)
**Score: 8 / 10**

The primary contradiction is named clearly: NONGOAL-002 (no automated remediation) vs. 3/4 participants explicitly wanting a path to action. This is not a misunderstanding of the non-goal — participants were not asking for auto-remediation. They were asking for a recovery-initiation affordance or workflow handoff that the spec has not scoped.

Secondary finding: ASM-002 (48h action rate) is directionally supported and the threshold is likely conservative. Andrew and Chris operate at scale with automation-heavy workflows — 48h is probably much faster in practice.

What keeps this from 10: The contradiction is documented but not routed. The spec does not yet name who owns the product decision (Stefan Voss + UX lead?), what the options are, or what the consequence is of each choice. The scoring surfaces it; the spec still needs to close it.

---

## Summary table

| Dimension | Score | Interview delta |
|-----------|-------|----------------|
| 1. Problem sourcing | 6/10 | +3 |
| 2. Solution coherence | 5/10 | −1 |
| 3. Test-readiness | 3/10 | 0 |
| 4. Evidence quality | 5/10 | — |
| 5. Risk naming | 7/10 | — |
| 6. Contradiction surfacing | 8/10 | — |
| **Total** | **34/60** | |
| **Normalized** | **57%** | |

---

## Updated idea_score

**Pre-interview: 14/30**
**Post-interview: 16/30**

Delta breakdown:
- Gate 1 (problem): 5 → 7. Manual review confirmed, faster signal confirmed. Action-capability gap is new but not a Gate 1 failure — it's a Gate 2 scope decision.
- Gate 2 (right thing): 5 → 5. Phase 1 coherence holds. But the action-capability contradiction is unresolved and directly threatens the ≥50% action rate metric. No upgrade until the product decision is named.
- Gate 3 (built right): 4 → 4. Q-001–Q-005 unchanged. Test-readiness unchanged.

**idea_score: 16** — up 2 points. Problem sourcing improved. Scope gap surfaced.

---

## Assumption confidence update (post-interview)

| ID | Assumption | Pre-interview | Post-interview | Evidence |
|----|-----------|--------------|----------------|----------|
| ASM-001 | Manual review is current state | Low [A] | Confirmed [R-interview] | All 4 sessions |
| ASM-002 | MSPs act on alerts within 48h | Low [A] | Directionally supported [CS: MEDIUM] | Damian, Chris — automation-heavy, act fast |
| ASM-003 | ≤15% FP rate achievable | Low [A] | Still Low [A] | No interview data |
| ASM-004 | ≥40% feedback submission rate | Low [A] | Still Low [A] | No interview data |

---

## Blocking product decision (new — not in v0.2.0)

**Name:** Action-capability gap at Phase 1 boundary

**What it is:** NONGOAL-002 prohibits automated remediation. Interview participants (3/4) expect a path to act on anomaly alerts — not auto-remediation, but a recovery-initiation affordance or explicit "here's what you do" guidance pattern.

**Who owns it:** Stefan Voss (PM) + UX lead

**Options (not yet scoped):**
- A: Ship detection-only as specified. Acknowledge the UX gap in onboarding and documentation.
- B: Add a "Start recovery from this backup session" action that routes to existing Cove recovery flow — no automation, just navigation.
- C: Add guided workflow copy ("Anomaly detected — to begin recovery, go to [X]") directly in the alert card.
- D: Defer to Phase 2 roadmap and explicitly name it as a known gap.

**Consequence of not naming it:** If Phase 1 ships detection-only without addressing this, the ≥50% alert action rate metric is at risk. MSPs who expected action capability will disengage. Curtis's exact words are the leading indicator: *"What doesn't make sense is to tell me, but I have no recourse."*

**This is not a blocker to engineering start.** Q-001, Q-002, Q-003 are still the engineering gate. This is a blocker to UX design start.

---

## What the score does not tell you

- Whether 4 interview sessions is sufficient signal for a product decision. It is directional. It is not statistically representative.
- Whether Sessions 5–13 are empty because they were never transcribed, never completed, or were conducted verbally and captured elsewhere. If notes exist in another form, the evidence base may be significantly larger.
- Whether the action-capability gap surfaces differently across verticals (medical MSPs, legal, SMB IT). Curtis's clients are attorneys and medical — both high-stakes recovery contexts where "detection only" may be more acutely felt.

---

## What needs to happen before the score improves

| Action | Owner | Unlocks |
|--------|-------|---------|
| Name and decide the action-capability gap | Stefan Voss + UX lead | Solution coherence +2; UX design start |
| Resolve Q-001 (statistical method) | Engineering | Test-readiness +2 |
| Resolve Q-002 (window size) | Engineering | Test-readiness +1 |
| Resolve Q-003 (async hook) | Engineering | Test-readiness +1 |
| Recover or confirm empty Sessions 5–13 | Research ops | Evidence quality +2 |
| Define CSAT measurement methodology | Product + Data | Acceptance criteria completeness |
