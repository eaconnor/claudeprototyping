# Council-Mini Erratum — Incident Response RCA (2026-07-30 delta)

> **⚠ ERRATUM (2026-07-30, new research since 2026-07-06):** New material lands in two tracks not available to the original 7-voice mini: (1) LOTL/EDR threat intelligence + Adlumin's internal ROI/positioning doc, and (2) Nicole Reineke's AI Coworker/Runbook architecture docs. Neither is n=8-study material — the Cannot-See Roll-Up's core gap (actual IR process at n=8 firms) is untouched. What changes: Lean Startup's riskiest assumption (evidence chain existence) gets both partial support and a new, unnamed risk (attackers now target the telemetry pipeline itself); Porter and Christensen get named specificity where they previously had "no specific announcement cited"; Service Blueprint's three undefined backstage items each get partial, non-IR-RCA-specific architecture answers; Kano gets external validation that its "threshold not delighter" call was right. JTBD and SDT get thin/speculative touches only — not strong enough to force.

**Against:** briefs/council-mini-ir-rca.md (2026-07-06)
**New sources used:** scout_input/02-lotl-threat-model.md · scout_input/03-lotl-ai-requirements.md · scout_input/03-edr-evasion-techniques.md · scout_input/04-adlumin-lotl-capability.md · scout_input/05-lotl-competitive-gap.md · scout_input/06-lotl-roi-context.md · scout_input/04-web-customer-language-lotl.md · scout_input/09-ncentral-incident-reporting.md · scout_input/01-control-plane.md · scout_input/02-ai-coworker.md · scout_input/03-runbook.md · scout_input/02-living-off-the-land-technical.md (light citation only)
**Duplicates noted, not double-counted:** scout_input/02-ai-coworker.md ≈ scout_input/02-coworker.md (same author/content, near-identical); scout_input/03-runbook.md ≈ scout_input/03-runbooks.md (same content)

---

## Voice 2 — Kano — external validation that confidence display is threshold, not delighter
- **New finding:** "SentinelOne Purple AI — Autonomous triage, confidence-scored decisions, human-in-the-loop override as default workflow." [CS: HIGH — scout_input/05-lotl-competitive-gap.md] Palo Alto XSIAM "reframes AI as operating environment, not feature." [CS: HIGH — same file]
- **Touches:** Voice 2's Hypothesis ("confidence display is a threshold (must-be) attribute... No MSP will call a root cause confidence meter a differentiator") and its Cannot-See ("well-reasoned but unvalidated... a design-team inference, not a respondent quote").
- **Update type:** strengthens
- **What it means for the existing testimony:** The original Cannot-See gap (no respondent named confidence display as a demand) is still unanswered, but the market has independently converged on the same pattern — SentinelOne already ships confidence-scored decisions with human-in-loop as the default, not an add-on. Kano's threshold call reads less like inference now and more like catching up to category norm. Does not touch the demand-sourcing gap itself.

---

## Voice 3 — Self-Determination Theory — architecture-level answer to the autonomy problem exists, not IR-RCA-specific
- **New finding:** Ewan Cameron's "L4 earned autonomy" model — AI Expert graduates from "human confirms" to "AI executes, human audits," calculated from track record, risk classification, scope boundaries, escalation rules, audit trail. [CS: VERIFIED — scout_input/01-control-plane.md, "Trust-Level Calculation Components"]
- **Touches:** Voice 3's autonomy need ("Confidence display is the structural mechanism for restoring autonomy") and its Cannot-See (whether techs described feeling made incompetent by a tool).
- **Update type:** fills-gap (partial)
- **What it means for the existing testimony:** A formal graduated-trust architecture exists at the platform level that could operationalize SDT's autonomy fix — but this doc is generic to all AI Coworkers, not scoped to IR RCA, and doesn't touch the emotional-response question SDT flagged as unobserved. [WOBBLY] — applying a platform-wide trust model to this specific agent is an inference, not confirmed scope.

---

## Voice 4 — Service Blueprint — two of three named backstage gaps get partial architecture answers
- **New finding 1 (data-ingest pipeline):** Adlumin's "PowerShell Ensemble Model" analyzes "~1 billion commands per week" [CS: VERIFIED — scout_input/04-adlumin-lotl-capability.md, sourced to Jira ADL-1381] plus RACE (Real-time Automated Cybersecurity Engine) does "automated triage, recommended actions, guided remediation" [CS: VERIFIED — same file].
- **New finding 2 (incident data model):** A structurally different, already-existing incident data source: N-central's Incident Summary Report — total incidents, escalation timings, MTTR, affected devices/services, correlated notifications. [CS: VERIFIED — scout_input/09-ncentral-incident-reporting.md, official product documentation] This is RMM-side incident data, not Adlumin's security-signal data.
- **New finding 3 (handoff protocol):** Runbooks are explicitly composable — "A Runbook can call other Runbooks" and define "escalation, handoff, and approval behavior." [CS: VERIFIED — scout_input/03-runbook.md]
- **Touches:** Voice 4's named backstage requirements — "the Adlumin data-ingest and normalization pipeline... if Adlumin is a separate lane, the evidence chain breaks" [?]; "the incident data model (undefined in the brief)"; "the handoff protocol from IR RCA to the QBR narration layer... entirely undefined [A]."
- **Update type:** fills-gap (partial, none resolved to certainty)
- **What it means for the existing testimony:** Real capability exists on the Adlumin side (contradicting the worst case of "no evidence chain at all"), and a second, independent incident-data source (N-central) exists that the original testimony never named — meaning "Adlumin or nothing" may itself be an incomplete frame of the value-chain question. The Runbook-calling-Runbook mechanism is a conceptual, not confirmed, answer to the QBR handoff gap — it shows the pattern is architecturally supported, not that it's built for this pair. None of this closes Gate C (see Voice 5/7 below); Adlumin's own doc says in the same breath: "Capability exists. Narrative, visibility, trust, and outcomes do not." [CS: VERIFIED — scout_input/04-adlumin-lotl-capability.md]

---

## Voice 5 — Value Chain (Porter) — the chokepoint has a name and a number now, on both sides
- **New finding:** Adlumin-side: PowerShell Ensemble (~1B commands/week), Signal Sync identity telemetry (M365, impossible travel, geo-analysis), RACE automated triage. [CS: VERIFIED — scout_input/04-adlumin-lotl-capability.md, Jira ADL-1381/ADL-1294/ADL-1279] Competitor-side: CrowdStrike Charlotte AI, Palo Alto XSIAM, SentinelOne Purple AI all named as owning AI-driven-investigation chokepoints. [CS: HIGH — scout_input/05-lotl-competitive-gap.md] Adlumin's own doc dates its last competitive refresh to January 2024. [CS: VERIFIED — same file]
- **Touches:** Voice 5's Sign (Gate C as the agent's most direct dependency) and Strongest objection (whoever owns the log at the bottom of the evidence chain owns the margin).
- **Update type:** strengthens
- **What it means for the existing testimony:** Adlumin's chokepoint asset is now named with specificity rather than treated abstractly — but so are the competitors', and Adlumin's own document flags its competitive read as 2+ years stale. [WOBBLY — scout_input/05-lotl-competitive-gap.md self-flags this] Porter's margin question ("does N-able own the log?") is more answerable in principle now but the Gate C org-boundary question itself remains unresolved in any new source.

---

## Voice 6 — Christensen Disruptive Innovation — "no specific IR-agent announcement cited" gap partially filled, with a caution
- **New finding:** Named competitor AI-SOC positioning: CrowdStrike Charlotte AI claims "~85% analyst workload reduction" [CS: MEDIUM — cited from "CrowdStrike materials | Outlook," not primary source, per scout_input/05-lotl-competitive-gap.md]; SentinelOne Purple AI ships "autonomous triage, confidence-scored decisions, human-in-the-loop override as default workflow" [CS: HIGH — same file].
- **Touches:** Voice 6's Evidence note ("general industry knowledge, no specific IR-agent announcement cited") and Strongest objection (competitive throttling risk from Cynomi/CrowdStrike/Rapid7).
- **Update type:** fills-gap, with a caution
- **What it means for the existing testimony:** The competitive names are now specific instead of generic — but the 85% figure and the ROI doc's own framing ("even 30% of that effect would materially change ADS economics" [CS: VERIFIED — scout_input/06-lotl-roi-context.md]) sit adjacent to the do-not-cite list already in force on this testimony ("82/85% retention · ~30% AI efficiency"). Same digits, different sourcing chain. Treat as a recurrence pattern worth flagging, not as new corroboration — do not let 85%/30% cross from Adlumin's internal doc into the testimony as if newly verified.

---

## Voice 7 — Lean Startup Riskiest Assumption — assumption 1 gets partial support AND a new, unnamed risk
- **New finding 1 (partial support for assumption 1 — evidence exists):** Real detection capability confirmed to exist inside Adlumin: PowerShell Ensemble Model (~1B commands/week, Jira ADL-1381), RACE automated triage + recommended actions + guided remediation, identity telemetry via Signal Sync (ADL-1279). [CS: VERIFIED — scout_input/04-adlumin-lotl-capability.md] But the same doc: "We detect LOTL-relevant activity, but do not name or position it" and "No published AI detection performance baseline (FPR, MTTR, analyst workload reduction)." [CS: VERIFIED — same file]
- **New finding 2 (new risk, not in original testimony at all):** Attackers actively target the telemetry/evidence chain itself before or during an incident — EDR process/service kill, BYOVD (bring-your-own-vulnerable-driver) to blind EDR at kernel level, driverless suspension of EDR processes, and blocking of EDR-to-cloud communication ("blinding detection and response without fully uninstalling or crashing the agent"). [CS: VERIFIED, sourced to ESET research — scout_input/03-edr-evasion-techniques.md] Internal product-management notes flag this as an open detection gap: "msiexec launched" + "EDR service stopped" + "no new EDR check-in within N minutes" as a candidate detection signal that does not yet exist. [CS: VERIFIED — same file, Daniel Sylvester notes]
- **New finding 3 (reinforces assumption 2 — confidence scoring is hard, not solved):** "Signal exists only statistically" and "poorly designed AI creates alert fatigue, erodes trust, gets disabled" — explicitly named as "a UX problem, not a model problem." [CS: VERIFIED — scout_input/03-lotl-ai-requirements.md] Underlying reason: LOTL activity uses valid credentials and legitimate tools (cmd.exe, powershell.exe, wmic.exe, rundll32.exe, etc. — full asset catalog at [CS: VERIFIED — scout_input/02-living-off-the-land-technical.md, LOLBAS-sourced]) — so the raw evidence itself is ambiguous by design, not just incomplete.
- **Touches:** Voice 7's Assumption 1 ("[RISKIEST] the incident data exists in Adlumin and is accessible... without a separate product-lane decision"), Assumption 2 ("a confidence score can be computed from the evidence that is meaningful"), and its Cannot-See ("whether Adlumin's data model has structured incident entities... internal knowledge not in the packet").
- **Update type:** contradicts (partially) + net-new-minor (new risk category)
- **What it means for the existing testimony:** Assumption 1's worst case (no evidence chain at all) looks less likely — real capability exists — but the product-lane/positioning question (Gate C) is confirmed still unanswered by Adlumin's own doc, so the assumption is not resolved, only partially de-risked. Separately, the new EDR-evasion research introduces a failure mode the original testimony never named: an RCA agent's evidence base can be deliberately tampered with or blinded by the attacker as part of the attack itself, which is a different and possibly more severe risk than "the data model is undefined." This is not covered by any of the seven original voices and is not resolved here — it is surfaced as new.

---

## Tension note — RCA-T1 (confidence display vs. evidence chain)
New research does not resolve which is the design-blocking problem; it adds texture to both sides (Kano's threshold call gets external validation via SentinelOne; Lean Startup's evidence-chain concern gets both partial support and a new tampering risk). The routing to Beth/Meaghan on Gate C stands unchanged — no new source answers whether Adlumin runs as a separate product lane.

---

## Voices with no new material
- **Voice 1 — JTBD:** Nothing in the new research speaks to the n=8 respondents' emotional/social job framing. The Adlumin capability-vs-positioning gap is thematically adjacent to the liability-relief job but connecting them would be synthesis, not sourced evidence — not forced here.
- **Voice 3 — SDT:** touched only thinly (see above); the core Cannot-See (observed emotional response to a wrong confident output) is still unanswered by anything new.

---

## Honor Check
[CS:] applied to every claim above; file + section cited per finding. No new voice written from scratch. No tension resolved — RCA-T1 through T4 status unchanged except the texture note above. Do-not-cite discipline extended to two new recurring figures (CrowdStrike 85%, "30% of that effect") flagged as pattern-risk, not verification. [WOBBLY] applied to Adlumin's self-reported competitive staleness (Jan 2024 refresh) and to the platform-wide (non-IR-RCA-scoped) architecture docs. n=8 discipline unaffected — none of the new research is n=8 respondent data.
