# Council-Mini Erratum — Continuous Environment Health (2026-07-30 delta)

> **⚠ ERRATUM (2026-07-30, new research since 2026-07-06):** New scout material — mostly N-able's own N-central/AEM product documentation, plus general AI Coworker architecture docs from Nicole Reineke — was not available to the 2026-07-06 testimony. The strongest delta: N-central already markets/ships baseline-establishment, drift-detection, and automated-remediation capability at the RMM layer (pre-AI, rule-based), which sharpens (does not resolve) the Kano/Christensen "feature vs. product" tension the original council already flagged. The general AI Coworker trust architecture (trust-execution levels, audit trail, escalation rules) partially answers SDT's "is there a review surface" question at the platform level, but not specifically for Env Health. No source in this batch names a specific drift/config-decay hiring event, resolves the metric-definition question, or closes the prevention-attribution gap. Lean Startup (Voice 7) gets nothing new.

**Against:** briefs/council-mini-env-health.md (2026-07-06)
**New sources:** scout_input/04-autonomous-endpoint-management.md · scout_input/06-ncentral-automation-patterns.md · scout_input/07-ncentral-default-policies.md · scout_input/09-ncentral-incident-reporting.md · scout_input/08-msp-automation-pain-points.md · scout_input/01-control-plane.md · scout_input/02-coworker.md
**Dropped as not relevant:** scout_input/02-ai-coworker.md (duplicate of 02-coworker.md, no unique content) · scout_input/04-apex-bridge-poc.md · scout_input/05-apex-bridge-unlock.md · scout_input/06-apex-bridge-adoption.md (UI-delivery-vehicle docs; do not bear on JTBD/Kano/SDT/Service Blueprint/Value Chain/Disruptive/Lean Startup claims for this agent)

---

## Voice 1 — Jobs-to-Be-Done — no new hiring event, but the absence gets a second data point
- **New finding:** Third-party MSP industry pain-point survey lists five high-impact automation asks — ticket triage/routing, password resets/onboarding, patch management, network documentation, maintenance-window scheduling. Config drift / environment health does not appear. The source itself flags the gap: "No N-able-specific customer research on autonomous task execution preferences or trust boundaries." [CS: MEDIUM, WOBBLY — scout_input/08-msp-automation-pain-points.md lines 14–21, 59; third-party industry sources, not N-able customer research]
- **Touches:** Voice 1's "Cannot see" — whether any respondent named a specific hiring event for env health.
- **Update type:** net-new-minor
- **What it means for the existing testimony:** A second, independent (non-N-able) source also fails to volunteer env health/config drift as a named pain point when techs are asked what they want automated. Consistent with the original absence-from-mentions-top-5 signal — does not strengthen or weaken it, just adds a data point from a different pool. [WOBBLY — thin, third-party pool]

---

## Voice 2 — Kano Model — the "build it into the RMM" ceiling now has documentation behind it, not just a study quote
- **New finding:** N-able's own product materials describe existing (pre-AI, rule-based) N-central capability that already does baseline-based config enforcement: "Configuration enforcement: Detects deviations from secure baselines and remediates automatically" [CS: HIGH — scout_input/04-autonomous-endpoint-management.md line 18; marketing content, explicitly noted as "not user research"]. Separately, N-central's default automation policy documentation spans 13 categories including "Diagnostics & Monitoring" (registry queries, process analysis, system-condition checks) [CS: VERIFIED — scout_input/07-ncentral-default-policies.md lines 17–18], and the doc's own summary concludes: "The breadth across 13 domains suggests N-central targets comprehensive IT operations automation rather than specialized functions." [CS: MEDIUM — inferential claim by doc author, not primary vendor statement — scout_input/07-ncentral-default-policies.md line 37]
- **Touches:** Sign/Hypothesis — "Basic misclassified as Performance"; Evidence — "'Build it into the RMM' caps WTP."
- **Update type:** strengthens
- **What it means for the existing testimony:** The WTP-ceiling claim was previously sourced only to a study quote. It now has a second, independent line of evidence — N-able's own marketing and product docs describe baseline/drift/config-enforcement as existing RMM territory. This is still not proof MSPs perceive env health as a Basic (that requires the unstudied operator), but the "already-expected infrastructure" reading gets harder to dismiss as a study artifact. [CS: HIGH — marketing-source caveat applies; not independently verified against actual customer perception]

---

## Voice 3 — Self-Determination Theory — a platform-level trust architecture exists; whether it reaches Env Health is still unstated
- **New finding:** The general AI Coworker architecture (not env-health-specific) defines a Trust-Level Calculation combining track record, risk classification, scope boundaries, escalation rules, and audit trail ("every action logged with timestamp") [CS: VERIFIED, retrieved directly from Confluence — scout_input/01-control-plane.md lines 31–37]. Separately, the coworker execution model states: "If a user cannot approve or run a script: AI clearly explains why... No hidden automation is allowed." [CS: VERIFIED — scout_input/02-coworker.md lines 108–111]
- **Touches:** Kill criterion — "tunable sensitivity layer, user override, and a clear 'here is what I watched and why' log"; Cannot-see — whether operators experience competence or deskilling.
- **Update type:** fills-gap (partial)
- **What it means for the existing testimony:** This is a platform-wide mechanism, described in general terms, not confirmed as implemented for the Env Health agent specifically. It suggests the tunability/audit infrastructure SDT called for is architecturally intended somewhere in the ACP design — but the original gap (no operator persona studied, no env-health-specific spec) is not closed by a general architecture doc. [ASSUMPTION: that the general trust model automatically extends to Env Health — not stated anywhere in the new sources]

---

## Voice 4 — Service Blueprint — the backstage pattern for baselines exists in the industry; N-central's own incident report shows a different (reactive, not preventive) backstage
- **New finding:** N-able's own AEM description names baseline establishment as a prerequisite step distinct from the automation itself: "Organizations must define secure configurations before enabling automation" and "Remediation workflows require testing before production deployment" (staged rollouts) [CS: HIGH — scout_input/04-autonomous-endpoint-management.md lines 29–30]. Separately, N-central's existing Incident Summary Report already provides escalation timings, acknowledgment times, and mean-time-to-resolve — but explicitly: "Report provides data for analysis but does not trigger automated remediation. Human reviews data and decides on action." [CS: VERIFIED, official product documentation — scout_input/09-ncentral-incident-reporting.md lines 9–22, 40]
- **Touches:** Hypothesis (baseline definition) — "healthy relative to WHAT"; Hypothesis (handoff visibility) — "reviewable log... does NOT specify the equivalent for Env Health."
- **Update type:** strengthens (the gap, not the solution)
- **What it means for the existing testimony:** The industry-standard pattern (baseline-before-automation) corroborates the brief's own admission that a baseline model is required and unspecified — this is a known, solvable design pattern elsewhere, which makes its absence in the Env Health spec look more like an omission than a novel problem. The incident report finding cuts the other way: N-central's existing "reviewable" surface is post-incident and reactive (built for tickets that already happened), not pre-incident/drift-based — so it does not answer the handoff-visibility gap, it demonstrates the existing product answers a different question. [CS: VERIFIED for both — neither closes the gap]

---

## Voice 5 — Value Chain — a platform value-tracking mechanism exists; it measures time saved, not harm prevented
- **New finding:** The general AI Coworker Value Ledger tracks "time saved per action," "aggregate value added per coworker," and "cumulative value over time," explicitly framed as making "AI value visible, measurable, and defensible" [CS: VERIFIED, retrieved directly from Confluence — scout_input/01-control-plane.md lines 21–29; scout_input/02-coworker.md lines 129–146].
- **Touches:** Kill criterion — "no downstream = no value chain closure"; Cannot-see — "the margin math... no engineering validation behind it."
- **Update type:** fills-gap (partial) / net-new-minor
- **What it means for the existing testimony:** A monetization mechanism exists at the platform level that could, in principle, carry an Env Health value signal into the QBR/report layer the original testimony said was missing. But the Value Ledger as described measures time-to-complete-manually-vs-with-agent — a different unit than "prevented ticket cost" or "avoided harm," which is what the margin-math Cannot-see specifically needs. The mechanism's existence does not supply the number; it supplies a place the number could eventually live. [ASSUMPTION: Value Ledger could be extended to prevention-value accounting — not stated in any source]

---

## Voice 6 — Christensen Disruptive Innovation — internal-cannibalization risk gets concrete evidence, not just a named worry
- **New finding:** N-able's own materials describe existing (pre-AI) N-central automation that already performs the categories of work Env Health proposes to differentiate on: continuous endpoint monitoring, baseline-deviation detection, self-healing remediation [CS: HIGH — scout_input/04-autonomous-endpoint-management.md lines 9–21, explicitly caveated "N-zo does not currently execute these actions autonomously," line 49]. Separately, a public N-able GitHub repo of community-contributed N-central automation scripts spans system maintenance, patching, security/AV, incident response, and infrastructure config, implemented in VBScript/PowerShell/Batch [CS: VERIFIED, official repo — scout_input/06-ncentral-automation-patterns.md lines 9–46]. And the default automation policy doc spans 13 categories [CS: VERIFIED — scout_input/07-ncentral-default-policies.md lines 7–37].
- **Touches:** Hypothesis (Sustaining read) — "N-able IS the incumbent on N-central"; Hypothesis (Who loses market position) — "the ACP team is disrupting the N-central alerts team."
- **Update type:** strengthens
- **What it means for the existing testimony:** The original testimony inferred the sustaining/cannibalization risk from a single study quote ("build it into the RMM"). It now has three independent N-able-authored sources describing rule-based automation already covering monitoring, diagnostics, patching, and remediation — the same territory Env Health proposes to occupy with AI baseline-modeling. This does not resolve whether Env Health's AI layer is differentiated enough to survive the incumbent's reach — the "Cannot-see" (whether ACP and N-central product teams have agreed on ownership) remains completely open and is not addressed by any new source.

---

## Voices with no new material
**Voice 7 — Lean Startup Riskiest Assumption:** none of the new research defines the "healthy" metric (Assumption A), supplies a prevention-attribution/counterfactual mechanism (Assumption B), or addresses the Env Health / Alert Flood suppression-boundary coupling specifically (Assumption C). The general trust-architecture docs (01, 02) describe risk classification and escalation as platform-wide concepts but do not touch the specific two-agent noise-coupling question this voice raised.

---

## Cannot-see roll-up — unchanged
The operator-persona gap named in the original testimony is untouched by this batch — none of the eleven new sources studied or observed the daily tech who would field Env Health findings. The suppression-boundary-between-Env-Health-and-Alert-Flood gap is also untouched. The new material narrows the "is this a feature or a product" question toward "feature" (Voices 2, 6) without resolving EH-T1, and offers a possible (unconfirmed) mechanism for EH-T3's prevention-attribution problem (Voice 5) without closing it.
