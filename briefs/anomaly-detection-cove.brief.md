---
feature: "Anomaly Detection for Cove Data Protection"
intent_spec_id: "IC-2026-001"
intent_spec_version: "0.2.0"
gate: 60
owner: "Stefan Voss"
problem_statement: "MSPs cannot quickly identify a clean backup copy during an incident without manual review of backup history, extending recovery time."
okr_objective: "Enable incident responders to identify clean recovery points faster using automated anomaly detection on backup behavior."
okr_key_result: "≥50% of anomaly alerts result in an investigation or recovery decision within 48h within 2 quarters of Phase 1 GA."
counter_metric: "Backup session duration must not increase; backup agent CPU/memory must not measurably increase during evaluation."
idea_score: 14
evidence_sources: ["IC-2026-001 v0.2.0 intent spec", "SRC-001 product concept (Stefan Voss)", "SRC-002 GW/EntraID cross-team doc", "SRC-003 Data Cleanup release plan", "SRC-004 Customer interviews 2024-08 (Sessions 1–4; Sessions 5–13 empty)"]
interview_pass_date: "2026-06-05"
interview_sessions_with_content: 4
interview_sessions_empty: 9
interview_critical_contradiction: "NONGOAL-002 prohibits automated remediation. 3/4 interview participants explicitly want a path to action, not detection-only. This is unresolved in the spec."
status: "draft"

domain_model:
  entities:
    - name: "Device"
      identity: "Unique device ID within an MSP account"
      attributes: ["device_id", "client_id", "anomaly_detection_enabled", "anomaly_sensitivity"]
      evidence: "[R]"
    - name: "BackupSession"
      identity: "Session ID + device ID + timestamp"
      attributes: ["session_id", "device_id", "change_rate", "size_delta", "timestamp", "session_count"]
      evidence: "[R]"
    - name: "DeviceAnomalyBaseline"
      identity: "device_id + metric_type"
      attributes: ["baseline_value", "stddev", "window_start", "window_end", "session_count", "updated_at"]
      evidence: "[R]"
    - name: "AnomalyAlert"
      identity: "alert_id"
      attributes: ["device_id", "client_id", "session_id", "anomaly_type", "severity", "current_value", "baseline_value", "deviation_pct", "status", "created_at"]
      evidence: "[R]"
    - name: "AnomalyFeedback"
      identity: "alert_id + user_id + submitted_at"
      attributes: ["feedback_value", "reason", "user_role"]
      evidence: "[R]"
  value_objects:
    - name: "DetectionSensitivity"
      describes: "Device configuration — controls threshold mapping"
      evidence: "[R]"
    - name: "DeviationMagnitude"
      describes: "AnomalyAlert — current_value vs baseline_value as percentage"
      evidence: "[R]"
    - name: "BaselineWindow"
      describes: "DeviceAnomalyBaseline — rolling window of sessions used for comparison"
      evidence: "[A] — window size and method (mean+stddev vs IQR vs percentile) explicitly open in Q-001, Q-002"
  services:
    - name: "EvaluateAnomalyPostSession"
      acts_on: ["BackupSession", "DeviceAnomalyBaseline"]
      trigger: "Async hook triggered by backup agent after session completes"
      evidence: "[A] — hook mechanism is explicitly open in Q-003"
    - name: "UpdateBaseline"
      acts_on: ["DeviceAnomalyBaseline", "BackupSession"]
      trigger: "After each evaluation run"
      evidence: "[R]"
    - name: "EmitAnomalyAlert"
      acts_on: ["AnomalyAlert"]
      trigger: "When deviation exceeds configured threshold"
      evidence: "[R]"
    - name: "DeduplicateAlert"
      acts_on: ["AnomalyAlert"]
      trigger: "Before emitting — checks for open alert on same device"
      evidence: "[R]"
    - name: "RouteNotification"
      acts_on: ["AnomalyAlert"]
      trigger: "On alert creation, via existing email/webhook/PSA channels"
      evidence: "[R]"
    - name: "RecordFeedback"
      acts_on: ["AnomalyFeedback"]
      trigger: "User submits feedback on alert"
      evidence: "[R] — schema agreement with data analytics is open (Q-004)"
  ubiquitous_language:
    - term: "clean"
      means: "A backup session with no anomaly detected — within expected baseline range. NOT 'safe' or 'healthy' (security verdict language prohibited)."
    - term: "flagged"
      means: "A backup session where deviation exceeded the configured threshold. NOT 'infected' or 'compromised'."
    - term: "anomaly"
      means: "A meaningful deviation in backup behavior relative to a device's historical baseline — not a security threat or malware signal."
    - term: "baseline"
      means: "Per-device rolling statistical summary of historical backup session metrics."
    - term: "evaluation"
      means: "The post-session async process that compares a session's metrics to the device baseline."
    - term: "sensitivity"
      means: "Configurable threshold level (Low/Medium/High) that controls how far a session must deviate before flagging."
---

> **FIDELITY WARNING — 38.8% of world-claims are [A] or [?].**
> Five blocking open questions (Q-001 through Q-005) are unresolved. This brief is at gate 60.
> It does not pass clean. It passes with named blockers. Engineering must not begin until Q-001, Q-002, Q-003 are closed. Frontend must not begin until Figma handoff dependency is unblocked. Data pipeline must not begin until Q-004 is resolved.

---

## Gate 1 — Problem: Is the problem real and sourced?

**Stated problem:** During a ransomware or data-loss incident, MSP technicians must manually review backup history to identify a clean restore point. [A] This extends recovery time and increases risk of restoring to a compromised backup. [A]

**Who has this problem:**
- MSP technicians (USER-001) are the primary responders during incidents. [R]
- MSP admins (USER-002) configure alerting and review alert feeds. [R]
- IT admins (USER-003) are end-customer stakeholders who may receive notifications. [R]
- The problem is framed from Stefan Voss's product concept (SRC-001). [R]
- No user research interviews, ethnographic data, or support ticket analysis is cited in the spec. [?]
- No quantified baseline for current mean-time-to-identify a clean restore point exists in the spec. [?]

**What's verified vs. assumed about user pain:**
- That incident responders want a faster signal on which backup to use — [R-interview] confirmed by 3/4 sessions. Andrew (IT Director, ~300 endpoints): manual review described as time-consuming. Curtis (GM, daily Cove user): "What doesn't make sense is to tell me, but I have no recourse." Damian (MSP ops lead): automation-heavy workflow, acts on signals immediately.
- That manual review is the current state — [R-interview] confirmed by all 4 sessions. All participants described reviewing backup history manually to identify restore candidates.
- That MSP technicians will act on anomaly alerts within 48 hours — [A] directionally supported. Damian and Chris both act on automated signals quickly; 48h threshold likely conservative. Threshold itself remains unvalidated. [CS: MEDIUM]
- That ≥40% of MSP technicians will submit feedback on alerts within 90 days — [A] no interview evidence. Zero sessions discussed feedback submission behavior. (ASM-004 remains low-confidence.)
- That feedback engagement rates will be sufficient to improve detection over time — [A] no interview evidence.
- **CRITICAL CONTRADICTION (SRC-004):** NONGOAL-002 states the product will not provide automated remediation. 3/4 interview participants explicitly described wanting a path to action, not detection-only. Curtis: *"What doesn't make sense is to tell me, but I have no recourse."* Andrew and Chris expressed similar expectations. This does not require automated remediation — it may require a remediation-initiation affordance, a workflow handoff, or a one-click "start recovery" CTA that the spec does not currently scope. This is a product decision gap the spec has not named. [?]

**Signal quality:** The problem statement is coherent and domain-plausible. Four interview sessions (SRC-004) confirm manual review as the current state and a faster signal as a desired outcome. The problem is now partially sourced. The action-capability contradiction (see above) is a new scope gap not present in the original spec. Gate 1 now holds with interview support, but the contradiction at the boundary of Phase 1 scope requires a product decision before the spec can close.

---

## Gate 2 — Right thing: Does this advance the mission?

**Stated outcome:** Incident response teams can quickly identify clean backup copies via anomaly detection of backup behavior. [R]

**Does Phase 1 advance this outcome?**

Phase 1 delivers rate-of-change anomaly detection per device [R], a rolling baseline [R], an alert feed [R], a feedback widget (mandatory on every alert) [R], anomaly history view [R], configurable sensitivity (Low/Medium/High) [R], and routing through existing notification channels [R]. This is a coherent minimum for the stated outcome — a technician receives an alert, can see deviation from baseline, and can act on it. [A — coherence is asserted; validation against actual incident workflow not sourced]

**Minimum Phase 1 must deliver to be valuable:**
- At least one detection signal (rate-of-change) with measurable deviation from per-device baseline. [R]
- Alert routing through channels MSPs already monitor. [R]
- Feedback path so false-positive rates can be measured and improved. [R]
- Per-device toggle so MSPs can opt out noisy devices without killing the feature globally. [R]
- ≤15% false-positive rate at p95 in <2 vCPU environments. [D] — this is the spec's stated target; achieving it is [A] low-confidence per ASM-003.

**Phase 2 dependency risk:**
Phase 2 (entropy and compression-ratio detection) is explicitly out of scope for Phase 1. [R] Technical discovery for Phase 2 is a HIGH dependency not yet started. [R] If Phase 1's rate-of-change signal proves insufficient to move the ≥50% alert action rate metric [D], Phase 2 cannot be expedited — it requires model training pipeline work not designed yet. [?] This creates a gap between Phase 1 GA and meaningful detection fidelity improvement if the rate-of-change signal alone has high variance across device types. [?]

**Positioning constraint — not malware detection:**
The spec hard-prohibits language claiming malware detection. [R] "Clean," "flagged," and "anomaly" are the permitted terms. [R] "Infected," "compromised," "safe," "healthy" are prohibited. [R] This constraint is load-bearing: Cove is a backup product, not a security product. [R] Claiming security verdicts would (a) create false assurance for MSPs, (b) expose the product to regulatory and liability framing it is not designed to carry, and (c) undermine trust if the detection misses an actual ransomware event. [A — consequence framing is inferred from product positioning, not cited to a legal or compliance source] The constraint is correct. It must survive QA, marketing copy review, and any UI copy pass.

---

## Gate 3 — Built right: Tested how? By whom? What counts as done?

### What's testable in Phase 1

- Evaluation coverage ≥99% of backup sessions where anomaly detection is enabled. [D]
- False-positive rate ≤15% — measurable post-GA via feedback widget submissions. [D] — method of measurement depends on Q-004 (feedback telemetry schema). [?]
- Alert action rate ≥50% within 48h — measurable via alert status transitions in the anomaly_alert entity. [D]
- Feedback submission rate ≥40% within 90 days. [D] — low-confidence; ASM-004. [A]
- CPU ≤5% / memory ≤50MB at p95 in <2 vCPU environment. [D] — testable in load testing with synthetic session data. [R]
- Evaluation never runs inline during backup session. [R] — testable via integration test on async hook path. [A] — hook mechanism (Q-003) is open; test cannot be designed until Q-003 is resolved.
- Per-device toggle persists correctly across sessions. [R]
- Tenant isolation: no baseline data crosses tenant boundaries. [R]
- Deduplication: no two open alerts for same device at same time. [R]
- Feedback events are write-only (no read path for feedback data in product UI). [R]

### What's not yet testable

- Statistical method accuracy — Q-001 (method: mean+stddev vs. IQR vs. percentile) is open. [?] No test plan can be written for baseline accuracy until the method is chosen.
- Rolling window size behavior — Q-002 (window size) is open. [?] Edge case behavior (new devices with few sessions, devices with irregular backup cadence) cannot be spec'd until Q-002 is resolved.
- Async hook integration — Q-003 is open. [?] The evaluation trigger path cannot be integration-tested until hook mechanism is agreed.
- Feedback telemetry correctness — Q-004 (schema agreement with data analytics) is open. [?] Data pipeline tests cannot be written.
- Baseline integrity under Data Cleanup — Q-005 (Data Cleanup timing impact on baselines) is open. [?] If Data Cleanup purges sessions that anchor the baseline, false anomalies will result. Cannot test until timing is agreed.

### Blocking open questions — classified

| ID | Question | Blocks | Owner |
|----|----------|--------|-------|
| Q-001 | Statistical method for baseline (mean+stddev vs. IQR vs. percentile) | Engineering — algorithm design; Data — false-positive rate model | [?] |
| Q-002 | Rolling window size | Engineering — baseline entity design; Product/UX — new-device onboarding experience | [?] |
| Q-003 | Async hook mechanism | Engineering — evaluation trigger path; QA — integration test design | [?] |
| Q-004 | Feedback telemetry schema (data analytics sign-off) | Data — pipeline; Engineering — RecordFeedback service; Product — feedback metric reporting | [?] |
| Q-005 | Data Cleanup timing impact on baselines | Engineering — baseline integrity; QA — regression test for cleanup events | [?] |

### Low-confidence assumptions — classified

| ID | Assumption | Confidence | Risk |
|----|-----------|------------|------|
| ASM-001 | Existing metadata sufficient for rate-of-change without new agent data collection | Medium [A] | If wrong: agent changes required; Phase 1 scope expands significantly |
| ASM-002 | Async hook possible without touching active session path | Medium [A] | If wrong: evaluation latency risk introduced into backup sessions; counter-metric violated |
| ASM-003 | Algorithm can achieve ≤15% FP rate in <2 vCPU environments | Low [A] | If wrong: primary success metric fails at launch; MSP trust damage |
| ASM-004 | MSPs will engage feedback at ≥40% rate | Low [A] | If wrong: false-positive improvement loop breaks; detection quality stagnates |

### Acceptance criteria — what counts as done for Phase 1

1. Evaluation coverage: ≥99% of sessions on enabled devices are evaluated post-session. [D]
2. False-positive rate: ≤15% across all sensitivity levels at p95 load in <2 vCPU environment, measured over a 90-day post-GA window. [D]
3. Alert action rate: ≥50% of alerts result in a logged investigation or recovery decision within 48h, within 2 quarters of GA. [D]
4. Feedback submission rate: ≥40% of alerts receive feedback within 90 days. [D] — low confidence; see ASM-004. [A]
5. CSAT: +0.5 improvement within 2 quarters. [D] — measurement methodology not specified in spec. [?]
6. Performance: CPU <5% / memory <50MB at p95 in <2 vCPU environment. [D]
7. Non-regression: backup session duration does not measurably increase. [R] — measurement baseline and threshold for "measurable increase" not defined. [?]
8. Invariants hold: no malware-detection language surfaces in UI; feedback widget present on every alert; per-device toggle available; tenant isolation verified; evaluation async (never inline). [R]

---

## Failure modes

**Failure mode 1 — False-positive cascade on heterogeneous device fleet.**
MSP fleets contain devices with wildly varying backup cadences, file types, and usage patterns. [A] Per-device baselines mitigate but do not eliminate this. If ASM-003 fails — the algorithm cannot hold ≤15% FP in <2 vCPU environments — MSPs will experience alert fatigue and disable the feature per-device or entirely. [A] The per-device toggle, intended as a safety valve, becomes the off-ramp. The feedback loop never closes because MSPs stop engaging. This is the collapse scenario for the entire Phase 1 value proposition.

**Failure mode 2 — Data Cleanup destroys baseline integrity silently.**
If Data Cleanup (Q-005) purges historical backup sessions that are the statistical foundation of a device's baseline, the rolling window shifts without the MSP's knowledge. [?] Subsequent sessions are evaluated against a degraded or artificially compressed baseline. Anomalies become noise. The MSP receives either a flood of spurious alerts or a silence that masks real behavioral change. Neither is detectable from the alert feed alone. This failure mode is silent — it does not error, it just produces wrong answers.

**Failure mode 3 — Positioning drift under incident pressure.**
During a real ransomware incident, an MSP technician under time pressure reads "anomaly detected" and treats it as a malware confirmation. [A] The feedback widget is present but not consulted. Support tickets arrive claiming Cove "missed" the ransomware or "confirmed" it on the wrong backup. [A] The hard prohibition on malware-detection language holds in the UI, but the mental model it activates in an incident context may not. Copy review and onboarding language are not addressed in the spec. [?]

---

## What's missing — honest inventory

1. **Action-capability scope decision.** 3/4 interview participants explicitly expected a path to act on an anomaly, not detection-only. NONGOAL-002 prohibits automated remediation. The gap between "no auto-remediation" and "user expects to do something from this alert" is unaddressed. A one-click recovery initiation, a workflow handoff, or an explicit "here's what you do next" guidance pattern would close the UX gap without violating NONGOAL-002. This requires a product decision before UX can be designed. [?]
2. **User evidence for the problem.** Now partially addressed by SRC-004 (4 sessions). Manual review confirmed; faster signal confirmed as desired. Action-capability gap is the new unanswered question. [?]
2. **Baseline for current recovery time.** No metric for how long manual review currently takes. The ≥50% alert action rate target has no anchor. [?]
3. **CSAT measurement methodology.** +0.5 CSAT improvement is a success metric [D] with no defined measurement instrument, baseline, or sample. [?]
4. **Non-regression threshold.** "Backup session duration must not measurably increase" has no defined measurement threshold or baseline. [?]
5. **Q-001 owner.** The statistical method question has no assigned owner in the spec. It blocks algorithm design. [?]
6. **Copy review scope.** The ubiquitous language is defined in the spec but there is no stated plan for UI copy review, marketing copy review, or onboarding language to enforce the positioning constraint. [?]
7. **New-device cold-start experience.** What does a technician see in the alert feed for a device with fewer sessions than the rolling window requires? The spec does not address this. [?]
8. **Phase 2 discovery start.** No timeline or owner for Phase 2 technical discovery. If Phase 1 GA reveals the rate-of-change signal is insufficient, there is no plan for when Phase 2 closes the gap. [?]

---

## [A]+[?] math

### Pre-interview (v0.2.0 baseline)

| Tag | Count |
|-----|-------|
| [R] | 18 |
| [D] | 12 |
| [A] | 11 |
| [?] | 8 |
| **Total** | **49** |

World-claims ratio: 19/49 = **38.8%**

### Post-interview (updated, 2026-06-05)

Two [A] claims upgraded to [R-interview] based on SRC-004:
1. "Manual review is the current state" — confirmed by all 4 sessions.
2. "Incident responders want a faster signal" — confirmed by 3/4 sessions.

One new [?] claim added:
- Action-capability gap: participants expect a remediation path not scoped in NONGOAL-002. Product decision required.

**World-claims (updated):**

| Tag | Count | Delta |
|-----|-------|-------|
| [R] | 20 | +2 |
| [D] | 12 | — |
| [A] | 9 | −2 |
| [?] | 9 | +1 |
| **Total** | **50** | +1 |

**World-claims ratio (updated):** [A]+[?] = 18 / 50 = **36.0%** — still above 30% threshold.

**Test-plan claims (unchanged — engineering blockers Q-001–Q-005 unaffected by interviews):**

| Tag | Count |
|-----|-------|
| [R] | 5 |
| [D] | 6 |
| [A] | 4 |
| [?] | 3 |
| **Total** | **18** |

**Test-plan ratio:** [A]+[?] = 7 / 18 = **38.9%** — above 30% threshold.

**Inflated ratio (including 9 gap inventory items from What's Missing as [?] claims):**
9 additional [?] items (8 original + 1 new action-capability gap). Total = 50 + 9 = 59. [A]+[?] = 18 + 9 = 27 / 59 = **45.8%**.

**Fidelity tier declared: 60.** (Unchanged — engineering blockers Q-001–Q-005 still open.)

**Gate verdict:** Still does not pass clean at gate 60. Interview evidence raises Gate 1 confidence and surfaces a new scope gap at the Phase 1 boundary. The action-capability contradiction (NONGOAL-002 vs. interview findings) is the new blocking product decision. Engineering start remains gated on Q-001, Q-002, Q-003. Frontend start requires Figma handoff. Data pipeline start requires Q-004. Baseline integrity risk (Q-005) must be resolved before GA.

---

## Honor check

**Steps completed:**
- YAML frontmatter with full domain model: done
- Gate 1 prose with [R]/[D]/[A]/[?] inline tagging: done
- Gate 2 prose with inline tagging: done
- Gate 3 prose: testable/not-testable split, Q-001–Q-005 classified by who they block, ASM-001–ASM-004 with risk assessment, acceptance criteria: done
- Failure modes (3): done
- What's missing (9 items, including new action-capability gap): done
- Interview evidence pass (SRC-004, 2026-06-05): 13 files read, 4 with content, 9 empty — documented
- [A]+[?] math: three ratios, pre- and post-interview
- Fidelity tier declared and gate verdict stated: done

**Stats produced (post-interview):**
- world-claims ratio: **36.0%** (updated from 38.8%)
- test-plan ratio: **38.9%** (unchanged)
- inflated ratio: **45.8%** (updated from 47.4%)
- [R]: 20 (world-claims) · [D]: 12 · [A]: 9 · [?]: 9 · Total: 50
- [R]: 5 (test-plan) · [D]: 6 · [A]: 4 · [?]: 3 · Total: 18
- idea_score: 14 · gate: 60

**Pre-interview stats (for grep-verification of math-recount.md):**
- world-claims ratio: 38.8% · test-plan ratio: 38.9% · inflated ratio: 47.4%
- [R]: 18 · [D]: 12 · [A]: 11 · [?]: 8 · Total: 49

**Cannot verify:**
- Whether SRC-002 and SRC-003 contain content that would change claim tags — cited in spec but not provided.
- Whether the ≤15% FP target derives from a data-backed model or product judgment.
- Whether Sessions 5–13 were empty due to note-taking practice or transcription failure — content is genuinely absent.
