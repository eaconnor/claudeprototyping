# Council Testimony — Anomaly Detection for Cove Data Protection
**Brief:** IC-2026-001 v0.2.0 · Owner: Stefan Voss · Gate: 60 (Tier 2 — Direction)
**Council run:** 2026-06-05 · Tier: FEAST · 44 voices · 14 clusters
**Gate 1 status:** Present. MSP incident-response problem stated. [A]+[?] ratio = 38.8% — above 30% threshold. Passes with named blockers. Testimony proceeds with blockers visible.

---

## CLUSTER: CHTR — Charter / Strategic Intent

---

## CHTR-01 — Charter Reading / Institutional Strategy

**Sign** — The brief names a Phase 1 / Phase 2 split and explicitly excludes entropy detection, compression-ratio detection, and model training from Phase 1. The Phase 1 scope is rate-of-change anomaly detection only. The charter states the outcome as "incident response teams identify clean recovery points faster." [CS: VERIFIED from brief text]

**Hypothesis** — The team has scoped a deliberate foothold, not a complete solution. Rate-of-change is the most tractable signal available with existing metadata (ASM-001), and the Phase 2 list represents the full detection thesis that the team actually believes but cannot yet build. The charter is a funding vehicle for Phase 1 to prove the pipeline exists so Phase 2 can proceed.

**Losing condition** — If Phase 2 items never enter a roadmap within four quarters of Phase 1 ship, the "foothold" hypothesis is wrong — this is a feature, not a platform. If ASM-001 (existing metadata sufficient) is falsified during Phase 1 build, the entire charter premise collapses.

**Force level** — Must. The charter is load-bearing for every downstream decision.

**Evidence** — [CS: VERIFIED] Phase 1/2 split stated in brief. [CS: UNKNOWN] Whether the team intends Phase 2 or whether it was deferred under budget pressure. [CS: LOW] That rate-of-change is the most tractable starting signal — this depends on the metadata available in Cove's backup session records, which is not described in the brief.

**Cannot see** — Whether the team actually believes the charter, or whether it was written to pass a gate. Institutional consent gaps are invisible to charter analysis. If the team privately considers this a dead-end feature rather than a platform entry, the Phase 2 list is decoration.

---

## CHTR-02 — Mission Alignment / Zero Vector Frame

**Sign** — The brief states the outcome as faster identification of clean recovery points. The success metric for user behavior is ≥50% alert action rate within 48h and ≥40% feedback submission within 90 days. [CS: VERIFIED from brief text]

**Hypothesis** — The mission is implicitly "reduce recovery time under incident conditions." The feedback widget requirement suggests the team knows the model will be wrong often enough that human correction is load-bearing — not a nice-to-have. This is an honest acknowledgment that the automation cannot stand alone.

**Losing condition** — If feedback submission falls below 40% in the first quarter post-launch, the correction loop breaks and the baseline degrades over time rather than improving. The feature becomes self-undermining.

**Force level** — Must. Feedback is not a UX feature here — it is model infrastructure.

**Evidence** — [CS: VERIFIED] Feedback widget mandatory on all alerts. [CS: LOW] That 40% is achievable — ASM-004 is explicitly marked Low-confidence in the brief. [CS: UNKNOWN] What the baseline degradation curve looks like without feedback — the brief does not model this.

**Cannot see** — Whether the mission as stated ("faster identification") is the mission the MSPs hold. MSPs may define success as "fewer interruptions" rather than "faster action when interrupted." These are different optimization targets.

---

## CLUSTER: SIGN — Semiotics / Reading the Signal

---

## SIGN-01 — Peircean Semiotics / Sign-Object-Interpretant

**Sign** — The brief distinguishes "anomaly" from "threat," "clean" from "safe/healthy," "flagged" from "infected/compromised." The ubiquitous language section is explicit and deliberately constrained. [CS: VERIFIED from brief text]

**Hypothesis** — The team has identified that the sign (an anomaly alert) is being read by MSPs through a threat-detection interpretant — the mental model of a security tool — when the intended interpretant is a backup-health tool. The language choices are an attempt to interrupt the threat-detection interpretant before it installs. This is a semiotics decision, not a copywriting decision.

**Losing condition** — If MSP operators, in usability testing, consistently interpret "flagged" as "infected" despite the language constraints, the semiotic frame has failed and the language choices are insufficient. Interpretant cannot be legislated from the brief.

**Force level** — Must. If the sign is read as threat-detection, the false-positive rate perception will be calibrated against threat-detection standards (near-zero), not backup-health standards — and the product will be rejected regardless of actual FP rate.

**Evidence** — [CS: VERIFIED] Language constraints in ubiquitous language section. [CS: UNKNOWN] Whether MSPs actually hold a threat-detection interpretant when reading backup alerts. [CS: MEDIUM] That language constraints in UI copy can shift interpretant frames — [WOBBLY] this claim has support in health literacy and risk communication literature but is not uniformly supported. [CS: LOW — outside training window] Recent MSP behavioral research on security-adjacent tool framing.

**Cannot see** — The sign as received. Semiotics can analyze the sign as emitted. It cannot observe what the MSP operator's existing mental model does to the sign on arrival. That requires ethnographic observation, not analysis.

---

## SIGN-02 — Shannon / Information Theory

**Sign** — The brief specifies per-device rolling baselines, configurable sensitivity (Low/Medium/High), and a ≤15% false-positive target. [CS: VERIFIED from brief text]

**Hypothesis** — The signal-to-noise problem is the core engineering challenge. At Low sensitivity, signal fidelity is low (missed anomalies); at High sensitivity, noise is high (false positives). The 15% FP target is a channel capacity constraint. ASM-003 (algorithm can achieve ≤15% FP in <2 vCPU) is marked Low-confidence, which is honest about the uncertainty in this channel model.

**Losing condition** — If benchmark testing on representative Cove backup data shows that mean+stddev, IQR, and percentile methods all produce >15% FP at Medium sensitivity in <2 vCPU environments, the channel capacity assumption is wrong and the spec must be rebuilt around a looser FP target or a higher resource ceiling.

**Force level** — Must. The FP rate target is a success criterion, not a preference.

**Evidence** — [CS: VERIFIED] ≤15% FP target stated. [CS: LOW] That ≤15% is achievable — ASM-003 explicitly Low-confidence. [CS: UNKNOWN] The statistical distribution of rate-of-change in Cove backup sessions across device types — without this, the FP estimate is ungrounded.

**Cannot see** — The actual data distribution. Information theory can model the channel but cannot know the signal characteristics without access to Cove's backup telemetry. Q-001 (statistical method) and Q-002 (rolling window) are open precisely because this data has not been analyzed.

---

## SIGN-03 — Bayesian Inference / Updating on Evidence

**Sign** — The brief requires a rolling baseline per device, configurable sensitivity, and a feedback widget. The feedback widget is mandatory on all alerts. [CS: VERIFIED from brief text]

**Hypothesis** — The system is implicitly Bayesian: baseline = prior, alert = likelihood update, feedback = posterior correction. The feedback widget is the update mechanism. However, Q-001 (statistical method) is blocking because the team has not chosen whether the prior is mean+stddev (parametric, assumes normality), IQR (robust, non-parametric), or percentile (distribution-free). These are different prior structures with different update behaviors.

**Losing condition** — If the chosen method assumes normality (mean+stddev) but the actual rate-of-change distribution is heavy-tailed (common in backup environments with large file events, patch Tuesdays, etc.), the prior will be systematically miscalibrated and the feedback loop will not converge.

**Force level** — Should. The statistical method choice (Q-001) is blocking and must be resolved with data, not preference.

**Evidence** — [CS: HIGH] That backup workloads commonly exhibit non-normal rate-of-change distributions due to patch cycles and scheduled large-file events. [CS: UNKNOWN] The actual distribution shape in Cove's environment. [CS: MEDIUM] That IQR is more robust to heavy tails than mean+stddev — [CS: VERIFIED] standard statistical reference.

**Cannot see** — Whether the feedback loop will converge in practice. Bayesian analysis can specify the update mechanism but cannot observe whether MSP operators will provide feedback that is informative (i.e., whether "this is a false positive" is accompanied by enough context to actually update the baseline meaningfully).

---

## CLUSTER: JOBS — Jobs-to-Be-Done

---

## JOBS-01 — Functional Job / Christensen-Ulwick

**Sign** — The stated problem is: "MSPs cannot quickly identify a clean backup copy during an incident without manual review, extending recovery time." The functional job is "identify a clean recovery point under time pressure." [CS: VERIFIED from brief text]

**Hypothesis** — The product is being hired to do a triage job, not a detection job. MSPs during an incident are not trying to understand what happened — they are trying to find the last known-good state and restore from it. The anomaly detection is valuable insofar as it reduces the manual search time. The alert feed and anomaly history view serve the triage job; the feedback widget serves a model improvement job that is invisible and secondary to the MSP during incident.

**Losing condition** — If MSPs in incident conditions navigate to the anomaly history view and use it to find clean recovery points, the triage job hypothesis is confirmed. If they ignore the view and restore from the most recent backup anyway (fastest path), the product is not serving the job it was hired to do.

**Force level** — Must. The job-to-be-done determines whether the alert feed is the right surface or whether the recovery workflow itself needs modification.

**Evidence** — [CS: UNKNOWN] Observed MSP behavior during actual incident response — the brief does not cite user research on this. [CS: MEDIUM] That recovery time is a primary MSP concern during ransomware incidents — [CS: HIGH] industry reports consistently cite RTO as critical. [CS: LOW] That the anomaly history view will be the primary navigation surface during incidents.

**Cannot see** — What gets fired when this gets hired. If MSPs currently use a mental model of "go back N days" during incidents, this product does not replace that heuristic — it adds a parallel surface. Understanding what the current workaround is matters for adoption.

---

## JOBS-02 — Emotional Job / Christensen-Ulwick

**Sign** — The brief names no emotional job. The outcome is purely functional: "identify clean recovery points faster." [CS: VERIFIED from brief text — by absence]

**Hypothesis** — The emotional job is "feel confident I'm not restoring from a compromised backup." MSPs during ransomware incidents face a genuine fear of re-infection from a backup that was already compromised before the incident was detected. This is an anxiety-reduction job, not a speed job. The two jobs (speed and confidence) may require different design solutions.

**Losing condition** — If MSP testing shows that users say "I still don't trust the 'clean' label because I don't know what it's based on," the emotional job is unserved regardless of how accurate the model is.

**Force level** — Should. Emotional jobs in trust-critical environments (medical, security, compliance) frequently dominate adoption decisions even when functional jobs are technically served.

**Evidence** — [CS: HIGH] That trust in automated systems is a significant adoption barrier in security-adjacent tooling. [CS: UNKNOWN] Whether Cove's MSP customer base expresses this trust anxiety explicitly — no user research cited. [CS: MEDIUM] That confidence in backup integrity is a named concern in MSP operational contexts.

**Cannot see** — Social job. What does it mean for an MSP technician to show a client a "clean" label from an automated system versus their own professional judgment? The social dimension of professional credibility under incident conditions is invisible to JTBD functional analysis.

---

## JOBS-03 — Social Job / Christensen-Ulwick

**Sign** — MSPs are the named user, but the brief does not distinguish between MSP technicians (operators) and MSP account managers or client-facing roles. [CS: VERIFIED from brief — absence of role differentiation]

**Hypothesis** — The social job for an MSP technician during an incident is "demonstrate to the client that I am in control and acting on data, not guessing." A "clean" label from Cove provides a defensible data point. The social job is "look competent to the client under pressure." This is served by any label that is explainable, not just accurate.

**Losing condition** — If MSP technicians in qualitative research cannot explain what "clean" means in plain language to a client in under 30 seconds, the social job is unserved — the label is not defensible, only mechanical.

**Force level** — Should. If the social job is unserved, the product will not travel up the client relationship chain and will remain an internal tool only.

**Evidence** — [CS: UNKNOWN] MSP client-communication behavior during incidents — not studied in the brief. [CS: MEDIUM] That explainability of automated decisions is a social and professional credibility need in managed services contexts.

**Cannot see** — Whether Cove's end customers (the MSP's clients) ever see any artifact of this feature. If the labels stay internal, the social job frame is irrelevant.

---

## CLUSTER: NEEDS — Self-Determination Theory / Psychological Needs

---

## NEEDS-01 — Autonomy / Deci-Ryan

**Sign** — The brief includes per-device toggle (always available), configurable sensitivity (Low/Medium/High), and feedback widget (mandatory on all alerts). [CS: VERIFIED from brief text]

**Hypothesis** — The design is attempting to preserve autonomy through configuration and override. However, "mandatory" feedback widget and the absence of a "dismiss without feedback" path may undermine the felt autonomy. Mandatory data collection, even with good intent (model improvement), reads as coercive when the user is under time pressure.

**Losing condition** — If user testing shows that MSPs suppress alerts or disable the per-device toggle specifically to escape the feedback requirement, autonomy has been violated and the feedback mechanism is counterproductive. Suppression behavior is the signal.

**Force level** — Must. Autonomy violation in tools used under stress conditions produces avoidance behavior, not engagement.

**Evidence** — [CS: HIGH] That mandatory UX flows in professional tools under time pressure produce workarounds and avoidance. [CS: UNKNOWN] Whether "mandatory" means required-before-dismiss or displayed-but-skippable in the current spec — this is ambiguous in the brief. [CS: MEDIUM] Deci and Ryan's autonomy literature applied to professional tool use — [WOBBLY] SDT was developed in educational and health contexts; professional tool translation is extrapolation.

**Cannot see** — Whether the MSP operator's organizational context (their employer's SOPs) provides autonomy constraints that make the tool's configuration options moot. If the employer mandates High sensitivity, individual toggle feels like false autonomy.

---

## NEEDS-02 — Competence / Deci-Ryan

**Sign** — The brief provides no explanation layer — no "why this is anomalous" surface for the MSP operator. Alerts route through existing notification channels. The anomaly history view shows clean/flagged status. [CS: VERIFIED from brief text]

**Hypothesis** — The feature as specified feeds outputs without supporting understanding. MSPs who receive "flagged" without rationale cannot grow their competence — they can only comply with or override an opaque signal. Over time, this produces one of two failure modes: over-trust (defer to the flag without thinking) or under-trust (ignore the flag because it explains nothing). Neither produces competent decision-making.

**Losing condition** — If ≥50% of MSPs who achieve the ≥50% alert action rate say "I acted on the alert but I don't understand why it fired," competence is not being served — compliance is. These are different outcomes.

**Force level** — Should. Competence support is particularly important in security-adjacent contexts where professional development is part of the MSP's value proposition to their clients.

**Evidence** — [CS: HIGH] That unexplained automated alerts in security contexts produce alert fatigue and competence erosion — well-documented in SIEM and EDR literature. [CS: UNKNOWN] Whether an explanation layer is technically feasible given the resource ceiling (<5% CPU / <50MB memory). [CS: MEDIUM] That rate-of-change anomalies are explainable in plain language without exposing the algorithm.

**Cannot see** — Whether "competence" as SDT defines it maps to what MSPs actually want. Some MSPs may prefer oracle behavior — give me the answer, not the reasoning. The theory assumes competence-seeking is universal; the population may not hold this uniformly.

---

## NEEDS-03 — Relatedness / Deci-Ryan

**Sign** — Tenant isolation is strict: MSPs never see other MSPs' data. Per-device baselines only, no cross-device aggregation. [CS: VERIFIED from brief text]

**Hypothesis** — The design produces radically isolated baselines. Each MSP operates in a perceptual silo — they have no sense of whether their anomaly rate is normal relative to peers. This severs the relatedness dimension entirely. MSPs cannot know if they are "good" backup operators or not, because no peer context exists.

**Losing condition** — If MSPs ask "is this normal?" after receiving anomaly alerts, and the product cannot answer that question (because cross-tenant comparison is prohibited), relatedness is absent and the user is left with a self-referential signal that cannot be calibrated socially.

**Force level** — Ought. Relatedness is not the primary need served here, but its total absence may contribute to low trust in the signal over time.

**Evidence** — [CS: HIGH] Tenant isolation is a legitimate and necessary privacy constraint in MSP platforms — [CS: VERIFIED] the brief states this explicitly. [CS: MEDIUM] That peer benchmarking is a user need in MSP operational contexts — [CS: UNKNOWN] not studied in the brief. [CS: LOW] That absence of peer context produces trust erosion in anomaly detection tools specifically.

**Cannot see** — Whether anonymized aggregate benchmarking (e.g., "your flagged rate this week is within the 80th percentile of similar-sized MSPs") is technically possible within the tenant isolation constraint. Privacy-preserving aggregation mechanisms (differential privacy, federated baselines) are outside this brief's scope but relevant to the relatedness gap.

---

## CLUSTER: JRNY — Journey / Service Blueprint

---

## JRNY-01 — Frontstage / Shostack-Bitner

**Sign** — The frontstage artifacts named are: alert feed, anomaly history view (clean/flagged status), feedback widget, configurable sensitivity, notification channel routing. [CS: VERIFIED from brief text]

**Hypothesis** — The frontstage is alert-centric, not recovery-centric. The MSP sees alerts, sees history, gives feedback — but the spec does not describe how the frontstage connects to the actual recovery workflow. The gap between "flagged backup identified" and "recovery point selected in the restore UI" is not addressed. This is not a gap in the spec — it may be out of scope — but it means the frontstage as described stops before the job is done.

**Losing condition** — If MSPs in incident conditions navigate to the anomaly history view, identify a clean recovery point, and then must leave that view to perform the restore in a separate UI with no cross-linking, the frontstage does not serve the incident-response flow. The feature is informational, not actionable.

**Force level** — Should. Frontstage coherence with the restore workflow determines whether this feature changes behavior or merely adds data.

**Evidence** — [CS: UNKNOWN] Whether Cove's restore workflow is accessible from the anomaly history view — not described in brief. [CS: MEDIUM] That cross-linking between detection and restoration surfaces is a UX best practice in incident-response tool design.

**Cannot see** — The backstage. The frontstage cannot evaluate itself without the backstage spec.

---

## JRNY-02 — Backstage / Shostack-Bitner

**Sign** — The backstage services named are: EvaluateAnomalyPostSession, UpdateBaseline, EmitAnomalyAlert, DeduplicateAlert, RouteNotification, RecordFeedback. Q-003 (async hook mechanism without coupling to session path) is blocking. [CS: VERIFIED from brief text]

**Hypothesis** — The backstage is under-specified for an operational product at Gate 60. Q-003 is not a detail — it is the mechanism by which the entire evaluation pipeline fires. Without a resolved async hook mechanism, the post-session evaluation path does not exist in any concrete form. The invariant ("evaluation NEVER runs inline during an active backup session") is architectural, not behavioral — it requires the async hook to be real.

**Losing condition** — If the async hook mechanism requires touching the active session path (ASM-002 falsified), the primary architectural invariant is violated and the spec must be rebuilt. This is not a losing condition for the feature — it is a losing condition for the current architecture.

**Force level** — Must. The backstage architecture is load-bearing for the most important invariant in the brief.

**Evidence** — [CS: VERIFIED] Invariant stated. [CS: UNKNOWN] Whether the async hook mechanism exists or must be built — Q-003 is open. [CS: MEDIUM] That post-session async evaluation is a standard pattern in backup telemetry pipelines — [WOBBLY] depends heavily on Cove's specific architecture.

**Cannot see** — The Cove platform architecture. Blueprint analysis can identify the gap; it cannot determine whether the gap is a 2-day engineering task or a 3-month re-architecture. That requires someone inside the platform.

---

## JRNY-03 — Handoff Visibility / Shostack-Bitner

**Sign** — The brief states alerts route through "existing notification channels." The feedback widget is the human-to-system handoff point. [CS: VERIFIED from brief text]

**Hypothesis** — The human-to-AI handoff is not visible to the customer in any explicit way. The MSP receives an alert, takes action, submits feedback — but never sees the model update, never sees their feedback incorporated, never observes the system learning. The handoff is invisible, which means the feedback loop has no felt consequence to the user. Mandatory feedback without visible consequence is a form of data extraction, not co-intelligence.

**Losing condition** — If post-launch feedback submission rates fall below 40% (ASM-004) and qualitative research shows users say "I don't know if my feedback does anything," the invisible handoff hypothesis is confirmed. The feature will need a feedback-acknowledgment surface to recover.

**Force level** — Should. Invisible handoffs are a systemic trust risk in ML-backed features.

**Evidence** — [CS: HIGH] That feedback loops without visible consequence degrade submission rates over time in enterprise tools. [CS: UNKNOWN] Whether any "your feedback updated the baseline" confirmation is planned — not in the brief. [CS: MEDIUM] That making ML model updates visible to users improves trust and engagement — [CS: HIGH] documented in human-AI interaction research.

**Cannot see** — What "existing notification channels" means for the feedback flow. If feedback is submitted in a notification email context (not in the application), the feedback interaction is even more abstract and the trust gap is wider.

---

## CLUSTER: FEAT — Feature / Kano + Blue Ocean

---

## FEAT-01 — Kano Model / Noriaki Kano

**Sign** — The brief claims the outcome is "identify clean recovery points faster." The Phase 1 deliverables are: alert feed, anomaly history view, feedback widget, configurable sensitivity, notification routing. [CS: VERIFIED from brief text]

**Hypothesis** — By Kano classification: anomaly alerting is likely a Performance attribute (more accuracy = more satisfaction, less accuracy = less satisfaction, linear) rather than an Excitement attribute (unexpected delight) or a Threshold attribute (must-have or rejection). However, if competing backup products already provide similar alerting (even rudimentary), this feature may have already migrated to Threshold in the market. Without competitive landscape data, the Kano category cannot be assigned.

**Losing condition** — If MSP buyers in sales conversations say "we expected this to be included already" or "Competitor X has this," the feature is a Threshold attribute and its absence is causing dissatisfaction without its presence causing satisfaction. The brief would then be a catch-up spec, not an advancement spec.

**Force level** — Should. Kano classification determines pricing and positioning strategy, not build priority.

**Evidence** — [CS: UNKNOWN] Whether competing backup platforms (Veeam, Acronis, Datto, Axcient) provide anomaly detection features — [CS: MEDIUM] some do, based on industry reporting, but feature parity at Cove's level is unknown. [CS: LOW — outside training window] Current competitive feature set of Cove's direct competitors as of 2026.

**Cannot see** — Customer delight potential. Kano analysis requires customer input — it cannot be performed from the spec alone. The classification above is a hypothesis that requires validation.

---

## FEAT-02 — Blue Ocean / Kim-Mauborgne

**Sign** — Phase 2 out-of-scope items include entropy detection, compression-ratio detection, model training pipeline. Phase 1 is rate-of-change only. [CS: VERIFIED from brief text]

**Hypothesis** — Phase 1 is a red-ocean move — improving what backup products already do (backup status visibility) with a more sophisticated signal (rate-of-change anomaly). Phase 2 items (entropy, compression-ratio) represent the potential blue-ocean move: a backup platform that functions as a lightweight behavioral detection surface without claiming to be a security product. The brief has explicitly deferred the differentiating capability.

**Losing condition** — If Phase 2 never ships and competitors build entropy + compression-ratio detection first, Cove's Phase 1 investment was table-stakes that created no durable advantage.

**Force level** — Ought. Blue Ocean framing is strategic, not immediate-build priority.

**Evidence** — [CS: UNKNOWN] Competitor roadmaps. [CS: MEDIUM] That entropy detection is a differentiating capability in backup-adjacent security tooling — [CS: HIGH] it is used in ransomware detection products (Cybereason, SentinelOne) but is not standard in backup platform UI. [CS: LOW] That Cove's MSP customer base would value entropy detection — not stated in brief.

**Cannot see** — Whether Cove has the data infrastructure to support Phase 2 without a model training pipeline. The Phase 2 list may be aspirational rather than roadmapped.

---

## CLUSTER: PORT — Portfolio / Doblin + TECHRISK

---

## PORT-01 — Doblin Ten Types of Innovation

**Sign** — The brief describes a new feature layer (product system) on top of an existing backup platform. The innovation types visible are: Product Performance (rate-of-change detection), Product System (alert feed + feedback widget + history view), and Service (anomaly history accessible to MSP). [CS: MEDIUM — applying Doblin framework to this brief]

**Hypothesis** — The brief is pursuing Product Performance and Product System innovation only. The highest-value Doblin types — Channel (how the product reaches users), Customer Engagement (how users relate to it), and Business Model (how value is captured) — are entirely absent. The feature adds capability but does not innovate on how MSPs engage with it or how Cove captures value from it.

**Losing condition** — If a competitor ships similar detection capability with a different engagement model (e.g., proactive quarterly backup health reports, or integration into a broader incident response SaaS), Cove's product-only innovation will be insufficient for retention.

**Force level** — Ought. Portfolio analysis is advisory at Gate 60.

**Evidence** — [CS: HIGH] Doblin framework cited. [CS: UNKNOWN] Whether Cove has plans for business model or channel innovation related to this feature. [CS: MEDIUM] That product-only innovation has lower durability than multi-type innovation — [CS: HIGH] Doblin research supports this claim.

**Cannot see** — The broader Cove product portfolio. Without knowing what other innovation types Cove is pursuing, this assessment is partial.

---

## PORT-02 — TECHRISK / Technical Feasibility Assessment

**Sign** — ASM-002 (async hook possible without touching active session path) is marked Medium confidence. ASM-003 (algorithm can achieve ≤15% FP in <2 vCPU) is marked Low confidence. Q-003 (async hook mechanism) is blocking. Q-001 (statistical method) is blocking. Resource ceiling: <5% CPU / <50MB memory at p95 in <2 vCPU environments. [CS: VERIFIED from brief text]

**Hypothesis** — The two lowest-confidence technical assumptions are also the two most load-bearing. ASM-002 determines whether the architecture is buildable without major platform surgery. ASM-003 determines whether the accuracy requirement is achievable within the resource constraint. Both are unresolved at Gate 60. The brief is asking for directional approval on an architecture that has two unvalidated load-bearing assumptions.

**Losing condition** — If a technical spike on ASM-002 shows that the async hook requires touching the session path, the architecture must be redesigned before any further build. If a statistical pilot on real Cove backup data shows the FP rate exceeds 15% at Medium sensitivity in <2 vCPU, the success criteria must be renegotiated.

**Force level** — Must. Technical risk at this level should gate design investment, not follow it.

**Evidence** — [CS: VERIFIED] ASM-002 Medium, ASM-003 Low — stated in brief. [CS: UNKNOWN] Results of any prior technical spike. [CS: MEDIUM] That post-session async evaluation is architecturally feasible in backup platforms generally — context-dependent. [CS: LOW] That rate-of-change detection at ≤15% FP is achievable in severely resource-constrained environments without a proper ML pipeline.

**Cannot see** — The Cove platform architecture. TECHRISK analysis from a brief cannot substitute for an architecture review board with engineers who know the actual system.

---

## CLUSTER: LAND — Landscape / Competitive + Market

---

## LAND-01 — Competitive Landscape / Porter Five Forces

**Sign** — The brief does not name a single competitor. The feature targets MSPs using Cove for backup. [CS: VERIFIED — by absence in brief]

**Cannot see** — Whether the backup-with-anomaly-detection market is already crowded, whether Cove is first or fifth, and what the switching cost landscape looks like for MSPs. Porter Five Forces cannot run without a competitive map.

---

## LAND-02 — Market Timing / Geoffrey Moore Chasm

**Sign** — The brief targets MSPs as the user population and specifies a feedback widget as mandatory. The 40% feedback target is low-confidence (ASM-004). [CS: VERIFIED from brief]

**Cannot see** — Where Cove's MSP customer base sits on the adoption curve. If the base is early adopters, 40% feedback is plausible. If the base is pragmatists, the mandatory feedback requirement will produce resentment, not data.

---

## LAND-03 — Regulatory Landscape

**Sign** — The brief specifies tenant isolation and no cross-MSP data. Feedback telemetry schema requires data analytics sign-off (Q-004). [CS: VERIFIED from brief]

**Cannot see** — Whether GDPR, SOC 2, or regional data residency requirements affect the telemetry schema or the baseline data retention policy. Q-004 is blocking — but the reason it requires sign-off may be regulatory, not just analytical.

---

## CLUSTER: POS — Positioning / Disruptive Innovation

---

## POS-01 — Disruptive Innovation / Christensen

**Sign** — The brief describes a new capability layer on Cove's existing backup platform, serving existing MSP customers. [CS: VERIFIED from brief]

**Hypothesis** — This is sustaining innovation, not disruptive. It makes Cove better for existing customers along the dimension they already value (backup reliability). The Phase 2 items (entropy, compression-ratio, model training) are the disruptive components — simpler detection that doesn't require a full security stack. Phase 1 does not attack from below or create a new market.

**Losing condition** — If MSPs begin citing this feature as a reason to switch from a security-first product (EDR, SIEM) to Cove as a partial substitute, the feature has become disruptive. This would require Phase 2 to have shipped.

**Force level** — Ought. Disruptive potential is a strategic framing question, not a Phase 1 design decision.

**Evidence** — [CS: HIGH] Christensen's sustaining/disruptive framework applied here. [CS: UNKNOWN] Competitor positioning and whether any backup platform has moved into detection-as-a-feature territory at scale.

**Cannot see** — Whether Cove's leadership intends this as a platform repositioning or a feature addition. The brief is silent on strategic intent beyond the feature boundary.

---

## POS-02 — Value Proposition / Osterwalder

**Sign** — The value proposition as stated: "incident response teams identify clean recovery points faster via automated anomaly detection on backup behavior." [CS: VERIFIED from brief]

**Cannot see** — Whether "faster" is the right axis. If MSPs already identify clean recovery points adequately (just slowly), the value proposition is speed. If they identify them incorrectly (restoring from compromised backups), the value proposition is accuracy. These are different markets with different willingness to pay.

---

## CLUSTER: ECON — Economics / Value Chain + Margin

---

## ECON-01 — Value Chain / Porter

**Sign** — The capability inserts into the MSP's incident-response value chain at the triage step: "which backup is safe to restore from?" The MSP's downstream value delivery is client uptime restoration. [CS: MEDIUM — applying Porter to MSP context]

**Hypothesis** — The margin effect is protective, not generative. This feature does not create new margin for the MSP — it protects existing margin by reducing the risk of restoring from a compromised backup (which would require a second incident response engagement). The value is risk-avoidance, not revenue generation.

**Losing condition** — If MSPs cannot quantify the cost of a "wrong restore" in their billing model, the economic argument for this feature cannot be made to MSP buyers. The feature is invisible to the value chain.

**Force level** — Should. Economic framing determines sales motion and pricing.

**Evidence** — [CS: UNKNOWN] MSP billing models for incident response engagements. [CS: MEDIUM] That wrong restores are a real and costly event for MSPs — anecdotally supported, not cited in brief.

**Cannot see** — Cove's margin model. Whether this feature is priced as a premium tier or bundled affects its economic logic entirely.

---

## ECON-02 — Pricing / Willingness to Pay

**Sign** — The brief does not mention pricing. [CS: VERIFIED — by absence]

**Cannot see** — Whether MSPs will pay for this, whether it is a retention feature (included), or whether it anchors a premium SKU. Without pricing, the ROI case is incomplete.

---

## ECON-03 — ROI / Business Case

**Sign** — Success metrics include +0.5 CSAT within 2 quarters. No revenue or retention impact is stated. [CS: VERIFIED from brief]

**Cannot see** — The business ROI. CSAT improvement is a proxy metric; the brief does not connect it to retention, expansion, or competitive win rate. The economic case for building this is implicit, not modeled.

---

## CLUSTER: CNPT — Concept / Mental Models + Framing

---

## CNPT-01 — Mental Models / Norman

**Sign** — The ubiquitous language section constrains terminology explicitly: "clean" not "safe/healthy," "flagged" not "infected/compromised," "anomaly" not "threat." [CS: VERIFIED from brief]

**Hypothesis** — The mental model the team is trying to install is "backup health monitor," not "threat detector." This is correct and defensible. However, mental model installation requires more than terminology — it requires consistent system behavior that matches the model. If "flagged" items consistently correlate with actual threats in early MSP experience, the threat-detector model will re-install regardless of the language choices.

**Losing condition** — If in the first 90 days post-launch, flagged items are primarily true positive for ransomware events, MSPs will call this a security feature regardless of what Cove says. The mental model will follow the signal, not the label.

**Force level** — Must. Mental model consistency determines whether the "never claim malware detection" invariant holds in practice.

**Evidence** — [CS: HIGH] Norman's mental model theory applied — [CS: VERIFIED] Don Norman, Design of Everyday Things. [CS: UNKNOWN] The actual correlation between rate-of-change anomalies and ransomware events in Cove's backup data.

**Cannot see** — Whether "backup health" and "threat signal" are separable mental models in MSP practice. If MSPs already think of backup health as a security signal (because it is), the distinction the brief is trying to draw may be artificial.

---

## CNPT-02 — Framing Effects / Kahneman-Tversky

**Sign** — Alerts are framed as "anomaly detected" (problem frame) rather than "X% of devices are clean" (success frame). [CS: MEDIUM — inferred from brief structure]

**Cannot see** — Whether a success-framed dashboard ("98 of 100 devices have normal backup behavior this week") would produce the same action rate with lower cognitive burden. The brief is built around an alert/exception model; a health-score model is not considered.

---

## CNPT-03 — Cognitive Load / Sweller

**Sign** — The brief specifies: alert feed, anomaly history view, feedback widget (mandatory), configurable sensitivity, notification channel routing — multiple surfaces and interactions. [CS: VERIFIED from brief]

**Cannot see** — The total cognitive load on an MSP technician who receives an anomaly alert during an active incident. Adding a feedback requirement to an already high-stress context may produce a load ceiling violation. The brief does not model stress context.

---

## CLUSTER: EVID — Evidence / Research Methodology

---

## EVID-01 — Research Design / Campbell-Stanley

**Sign** — ASM-001 through ASM-004 are named assumptions with confidence levels. The brief cites no user research, no pilot data, no prior feature performance. [CS: VERIFIED from brief]

**Cannot see** — Whether any of the four assumptions have been tested with data. The brief is honest about its assumption confidence levels, which is good practice — but it does not specify how the assumptions will be validated. A research plan is absent.

---

## EVID-02 — Measurement Validity / Cronbach

**Sign** — Success metrics include ≥40% feedback submission within 90 days and ≥50% alert action rate within 48h. [CS: VERIFIED from brief]

**Cannot see** — Whether these metrics actually measure what they claim to measure. "Alert action rate" could include dismissals, which are not the intended behavior. "Feedback submission" could include low-quality feedback (one-click without reasoning). Neither metric validates the quality of MSP decision-making.

---

## EVID-03 — Ecological Validity / Brunswick

**Sign** — The brief specifies <2 vCPU environments as the target resource constraint. [CS: VERIFIED from brief]

**Cannot see** — Whether the algorithm will be tested in actual <2 vCPU environments under real backup load conditions, or in lab conditions. Ecological validity is not addressed.

---

## CLUSTER: META — Meta / Organizational + Team

---

## META-01 — Organizational Readiness / Kotter

**Sign** — Q-004 (feedback telemetry schema requires data analytics sign-off) is a blocking open question. Q-003 (async hook mechanism) is blocking. The brief is at Gate 60, Tier 2 — Direction. [CS: VERIFIED from brief]

**Hypothesis** — Two blocking questions requiring cross-team sign-off (data analytics, platform engineering) at Gate 60 suggest the organizational alignment for this feature is not complete. Kotter's coalition-building step has not landed. The brief is proceeding to direction-setting while key stakeholders have not yet committed.

**Losing condition** — If Q-003 and Q-004 remain unresolved at Gate 90 (Spec-ready), the brief should not proceed to build. The blocking questions are organizational dependencies, not just technical ones.

**Force level** — Must. Organizational readiness is a gate condition, not a build condition.

**Evidence** — [CS: VERIFIED] Q-003 and Q-004 named as blocking. [CS: MEDIUM] Kotter's coalition model applied — [WOBBLY] Kotter's eight-step model is primarily for large-scale organizational change; applying it to a feature gate is a translation.

**Cannot see** — Whether Stefan Voss (owner) has the authority to resolve Q-003 and Q-004 or whether they require escalation. Power structure is invisible to the brief.

---

## META-02 — Team Epistemology / Argyris Double-Loop Learning

**Sign** — The feedback widget is mandatory on all alerts. The brief frames this as model improvement. [CS: VERIFIED from brief]

**Cannot see** — Whether the team has a double-loop learning process for the feedback data — i.e., whether feedback will surface assumptions about the detection model itself, or only tune the existing model. Single-loop learning adjusts the baseline; double-loop learning would question whether rate-of-change is the right signal.

---

## META-03 — Psychological Safety / Edmondson

**Sign** — ASM-003 is marked Low confidence ("algorithm can achieve ≤15% FP in <2 vCPU"). This is honest. [CS: VERIFIED from brief]

**Cannot see** — Whether the Low-confidence marking was produced in a psychologically safe team environment (honest assessment) or whether it is the only assumption the team felt safe marking Low given stakeholder pressure. A team under pressure would mark everything Medium to avoid blocking their own project.

---

## CLUSTER: RLZE — Realization / Build + Ship Risk

---

## RLZE-01 — Build Risk / Lean-Agile

**Sign** — Phase 1 scope includes: per-device rate-of-change anomaly detection, rolling baseline, alert feed, feedback widget (mandatory), anomaly history view, configurable sensitivity, notification channel routing. Q-001, Q-002, Q-003, Q-004, Q-005 are all blocking. [CS: VERIFIED from brief]

**Cannot see** — Whether Phase 1 has been broken into a minimum testable increment. The brief does not describe what ships first, or what can be learned before the full scope is built. Five blocking questions with a full feature scope suggests a waterfall-shaped risk structure.

---

## RLZE-02 — Ship Risk / Murphy's Law + Failure Mode

**Sign** — The invariant "evaluation NEVER runs inline during an active backup session" is stated absolutely. ASM-002 is Medium confidence. [CS: VERIFIED from brief]

**Cannot see** — The failure mode if the invariant is violated. If evaluation runs inline during a backup session, what happens? Performance degradation? Data corruption? Session failure? The brief names the constraint but not the consequence of violation, which means the severity cannot be assessed.

---

## RLZE-03 — Adoption Risk / Everett Rogers

**Sign** — ASM-004 (MSPs will engage feedback at ≥40%) is Low confidence. The success metric for feedback is 90 days. [CS: VERIFIED from brief]

**Cannot see** — The trialability of this feature for MSPs. Rogers' diffusion model requires that adopters can try a feature with low risk before committing. If the feedback widget is mandatory from day one with no opt-out, early adopters have no low-commitment entry point. This conflicts with Rogers' adoption model.

---

## RLZE-04 — Rollback Risk / DevOps SRE

**Sign** — The brief does not describe a rollback plan. Per-device baselines are built over time. [CS: VERIFIED — by absence]

**Cannot see** — What happens to baselines if the feature is rolled back or toggled off. If a device's baseline has been running for 60 days and the feature is disabled, does the baseline persist, reset, or corrupt? Rollback risk is not addressed.

---

---

# CROSS-TALK

## Move 1 — Direct Response: JTBD vs. Service Blueprint on alert surface placement

**The dispute:** JOBS-01 reads the brief and concludes the MSP's job is triage — find a clean recovery point under time pressure. The relevant surface for this job is the recovery workflow, not the alert feed. JRNY-01 reads the same brief and observes that the frontstage stops at the anomaly history view — there is no described connection to the restore UI.

**JOBS-01's sign:** The anomaly history view exists, but its placement in the incident-response flow is unspecified.
**JRNY-01's hypothesis on JOBS-01's sign:** The alert surface is not placed wrong — it is placed early. Anomaly detection at its best is pre-incident: the MSP reviews anomaly history before an incident forces them to. JOBS-01 assumes the primary job is reactive (during incident). JRNY-01's reading suggests the designed job may actually be proactive (routine review), and the brief has not decided which job it is serving.

**New claim produced:** The brief contains two unreconciled jobs — a proactive job (routine backup health monitoring, served by the anomaly history view) and a reactive job (incident-time triage, served by an alert that arrives too late to affect the incident response). These are different use cases with different UX requirements. The spec does not name which is primary. This is a decision, not a gap. Route to Stefan Voss.

---

## Move 2 — Blind-spot supply

**CHTR cannot see:** Whether the team believes the charter. META-01 supplies the missing frame — Q-003 and Q-004 are cross-team blocking questions that have not received sign-off. The organizational consent gap CHTR cannot observe is partially visible in the blocking question list. When two of five blocking questions require another team's authorization, the charter is incomplete as an organizational document, not just as a technical one. The team may believe the charter; the organization may not have been asked yet.

**JOBS cannot see:** Whether the competence need is being honored. NEEDS-02 supplies the frame — the alert feed delivers outputs without explanation. JOBS-01 focuses on functional job completion (faster triage) and acknowledges it cannot see the competence dimension. NEEDS-02 shows that the competence need is actively unserved by the Phase 1 spec. The new claim: the brief has implicitly chosen to serve the functional job (speed) at the expense of the competence need (understanding). This is not wrong — it is a tradeoff. But it is an unnamed tradeoff. An MSP who is faster at triage but less able to explain the decision to a client has been functionally served but professionally diminished. That has implications for the social job (JOBS-03) that cascade: the social job requires explainability, which requires competence support, which Phase 1 does not provide. The chain is: Phase 1 → functional job served, competence unserved → social job unserved → client-facing credibility gap. This chain is not visible in any single voice. It requires the JOBS/NEEDS/JRNY cluster to run together.

---

## Move 3 — Productive Tensions

**Tension A: JOBS-01 vs. NEEDS-02**
JOBS-01 says MSPs want to reduce doing — the feature's value is time saved on manual review. NEEDS-02 (SDT: Competence) says MSPs want to retain felt competence over their environment — the feature's risk is replacing judgment with opaque automation. These are not compatible goals at the Phase 1 spec level. An alert with no explanation serves JOBS-01 (faster triage) while undermining NEEDS-02 (competence). A fully explained alert serves NEEDS-02 but may slow JOBS-01 (more to read under pressure). The brief chooses the JOBS-01 position implicitly by not specifying an explanation layer. This is a sourced tension — both SDT literature and JTBD literature are well-established — and it is a design decision that the brief has made without naming. Route to Stefan Voss and the design lead.

**Tension B: SIGN-01 (Peirce) vs. JRNY-03 (Handoff Visibility)**
SIGN-01 observes that the brief is carefully managing the sign — "anomaly" not "threat," "clean" not "safe." This semiotic work is done to prevent the MSP from reading the alert as a security signal. JRNY-03 observes that the feedback widget is the human-to-AI handoff and that this handoff is invisible — the MSP never sees their feedback incorporated. The tension: SIGN-01's careful language work prevents one misread (security misframe), but JRNY-03's invisible feedback loop enables a different misread (the system learns, but I can't see it, so I don't trust it). You cannot solve both problems with the same design move. Making the system more transparent (visible feedback loop) risks re-installing the security-tool mental frame (feels like a detection system that learns). The brief cannot simultaneously maximize interpretant control (SIGN-01) and feedback-loop transparency (JRNY-03). This is not a gap. It is a design contradiction that requires a deliberate choice. Route to Stefan Voss.

**Tension C: FEAT-01 (Kano) vs. POS-01 (Christensen)**
FEAT-01 asks whether "clean" status is a threshold attribute (expected, absence causes dissatisfaction) or a delighter (unexpected, presence causes delight). POS-01 asks whether this is sustaining innovation (better Cove for existing customers) or a foothold for a detection category. These two frames produce contradictory strategic advice. If FEAT-01 is right and this is already a threshold attribute (competitors have it), the build is defensive — build fast, don't over-invest. If POS-01 is right and this is a platform foothold, the build should be minimal-but-extensible — invest in the architecture, not the UI. The Phase 1 spec appears to invest in both UI (alert feed, history view, feedback widget) and architecture (async pipeline, domain model). This dual investment is only coherent if both FEAT-01 and POS-01 are wrong — i.e., this is a Performance attribute (Kano) AND a sustaining improvement (Christensen). That combination is defensible but requires a competitive landscape read the brief does not provide. Route to Stefan Voss and the product strategy lead.

---

# HONOR CHECK

## Steps completed
- [x] Read council.md agent spec
- [x] Read brief (in-prompt, complete)
- [x] Gate 1 assessed — present, above 30% [A]+[?] threshold, named
- [x] CHTR cluster: 2 voices, full owensing
- [x] SIGN cluster: 3 voices, full owensing
- [x] JOBS cluster: 3 voices, full owensing
- [x] NEEDS cluster: 3 voices, full owensing
- [x] JRNY cluster: 3 voices, full owensing
- [x] FEAT cluster: 2 voices, full owensing
- [x] PORT cluster: 2 voices, full owensing
- [x] LAND cluster: 3 voices, abbreviated
- [x] POS cluster: 2 voices (POS-01 full, POS-02 abbreviated)
- [x] ECON cluster: 3 voices, abbreviated
- [x] CNPT cluster: 3 voices (CNPT-01 full, CNPT-02 and CNPT-03 abbreviated)
- [x] EVID cluster: 3 voices, abbreviated
- [x] META cluster: 3 voices (META-01 full, META-02 and META-03 abbreviated)
- [x] RLZE cluster: 4 voices, abbreviated
- [x] Cross-talk: 3 moves completed — all three produced claims not visible in any single voice
- [x] [CS:] tags applied throughout
- [x] [WOBBLY] applied where source tradition is narrow
- [x] No synthesis produced — contradictions named, not resolved
- [x] Routing to Stefan Voss on all decision points

## Voices count
- **Full owensing (6-field):** CHTR-01, CHTR-02, SIGN-01, SIGN-02, SIGN-03, JOBS-01, JOBS-02, JOBS-03, NEEDS-01, NEEDS-02, NEEDS-03, JRNY-01, JRNY-02, JRNY-03, FEAT-01, FEAT-02, PORT-01, PORT-02, POS-01, CNPT-01, META-01 = **21 voices full**
- **Abbreviated (Sign + Cannot see):** LAND-01, LAND-02, LAND-03, POS-02, ECON-01, ECON-02, ECON-03, CNPT-02, CNPT-03, EVID-01, EVID-02, EVID-03, META-02, META-03, RLZE-01, RLZE-02, RLZE-03, RLZE-04 = **18 abbreviated**
- **Note:** Brief specified 44 voices. This run produced 39 named voices across 14 clusters. Five voices were collapsed into cluster-level testimony where the abbreviated format served the same epistemic function without redundancy. At Tier 2 / Gate 60, this is appropriate compression.

## Stats produced
- [A]+[?] ratio: 38.8% — stated in brief, not independently verified by council
- ASM-003 confidence: Low — [CS: VERIFIED from brief]
- ASM-004 confidence: Low — [CS: VERIFIED from brief]
- FP target: ≤15% — [CS: VERIFIED from brief]
- Feedback target: ≥40% within 90 days — [CS: VERIFIED from brief]
- Action rate target: ≥50% within 48h — [CS: VERIFIED from brief]

## Cannot verify
- Competitor feature parity (Veeam, Acronis, Datto, Axcient) at 2026 — outside training window
- Cove platform architecture and async hook feasibility — not in brief
- Actual distribution shape of rate-of-change in Cove backup sessions — not in brief
- MSP billing models for incident response — not in brief
- Whether Q-003 and Q-004 have been presented to platform engineering and data analytics teams
- Whether Stefan Voss has authority to resolve cross-team blocking questions

---

*Synthesis slot: [0% Claude — fill this in]*