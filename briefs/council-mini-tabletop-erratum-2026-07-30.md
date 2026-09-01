# Council-Mini Erratum — Security Tabletop (2026-07-30 delta)

> **⚠ ERRATUM (2026-07-30, new research since 2026-07-06):** Eleven new source files landed (LOTL threat model, EDR evasion techniques, Adlumin LOTL detection capability, competitive gap, web customer-language search, and general AI Coworker/Control Plane architecture docs). None of it sources an insurer or auditor tabletop-artifact requirement — the central unresolved gap in Voice 1 and Voice 5 stays exactly as open as it was on 2026-07-06. Two voices get a partial, non-resolving touch: Service Blueprint (Voice 4) gets a generic trust-model/handoff framework that the Tabletop-specific topology question still isn't answered by; Lean Startup (Voice 7) gets concrete evidence that Adlumin already has technical-fidelity source material (LOTL technique libraries, ~1B PowerShell commands/week telemetry) that a grounded scenario engine *could* draw on — this doesn't resolve the disclosure-risk threshold question, it just shows the raw material for grounding exists somewhere in the stack.

**Against:** briefs/council-mini-tabletop.md (2026-07-06)
**New sources used:** scout_input/02-living-off-the-land-technical.md · scout_input/02-lotl-threat-model.md · scout_input/04-adlumin-lotl-capability.md · scout_input/03-edr-evasion-techniques.md · scout_input/04-web-customer-language-lotl.md · scout_input/01-control-plane.md · scout_input/02-ai-coworker.md · scout_input/02-coworker.md
**Checked, no relevant touch found:** scout_input/03-lotl-ai-requirements.md · scout_input/05-lotl-competitive-gap.md · scout_input/06-lotl-roi-context.md (all three are LOTL-detection-product positioning/ROI material — a different agent than Tabletop; no bridge to Tabletop's JTBD, Kano, or disruptive-innovation framing was found in the text, so no entry is forced)

---

## Voice 1 — JTBD — insurer/auditor requirement still not sourced; one tangential ROI touch

- **New finding:** None of the 11 new files mention "insurer," "auditor," "compliance artifact," or "tabletop" in the sense used by the original testimony. All LOTL files concern detection telemetry for a different Adlumin capability [CS: VERIFIED — checked directly, not inferred, across all 11 files]. The one adjacent touch: the general AI Coworker architecture doc describes a standard "Value Ledger" — every AI Coworker gets a Value Score (manual time vs. AI-assisted time, aggregate/cumulative value) intended to make "AI value visible, measurable, and defensible" [CS: VERIFIED — scout_input/02-ai-coworker.md, "Value Tracking" section; also scout_input/01-control-plane.md, "Value Ledger (Five Monetization Layers)"].
- **Touches:** the ROI-Unknown blocks in Voice 1 ("Business: Unknown... User: Unknown") and the Kill criterion (billable job = artifact vs. exercise).
- **Update type:** net-new-minor
- **What it means for the existing testimony:** the insurer/auditor requirement gap is confirmed still-open, not newly resolved. The Value Ledger is a generic instrumentation mechanism that would apply to Tabletop once built, same as any other Coworker — it does not tell us whether the billable unit is the exercise or the artifact, and it is not evidence of insurer acceptance criteria.

---

## Voice 5 — Value Chain — same negative finding, restated for its own Cannot-see

- **New finding:** Voice 5's Cannot-see was explicitly "what insurers actually require... without a sourced insurer or auditor requirement, the entire artifact-value hypothesis is [A]." Checked directly against all 11 new files: no insurer/auditor requirement appears anywhere in this corpus [CS: VERIFIED — absence confirmed by direct read].
- **Touches:** Voice 5's Cannot-see and the [?]-tagged insurer-format-requirements line in its Evidence block.
- **Update type:** net-new-minor (confirms absence, does not fill)
- **What it means for the existing testimony:** the [?] tag on insurer requirements stands unchanged. Nothing in the new research corpus was capable of resolving it — it wasn't the right kind of research to look here.

---

## Voice 4 — Service Blueprint — general Coworker architecture partially describes a handoff/trust topology, but not Tabletop's specific zone-2 question

- **New finding:** New architecture docs describe a general trust model applying to all AI Experts/Coworkers: "L4 earned autonomy — where an AI Expert co-worker graduates from 'human confirms' to 'AI executes, human audits'" [CS: VERIFIED — scout_input/01-control-plane.md, quoting Ewan Cameron]. Trust score combines track record, risk classification, scope boundaries, escalation rules, audit trail [CS: VERIFIED — scout_input/01-control-plane.md]. Separately, the Coworker architecture describes a Script Repository with per-script risk classification (low/medium/high) and an explicit rule: "No hidden automation is allowed." [CS: VERIFIED — scout_input/02-ai-coworker.md, "Permissions and Risk Model"]
- **Touches:** Voice 4's Cannot-see — "whether the MSP is in the room or whether the agent is running the exercise directly with the client's team... the human-agent handoff topology is unspecified."
- **Update type:** fills-gap (partial)
- **What it means for the existing testimony:** this is the general escalation/audit framework any Tabletop instantiation would need to slot into — it establishes that N-able's standard pattern is graduated trust with human-confirm defaults and full audit logging, not autonomous-by-default. It does not say which of Tabletop's four zones (setup / live facilitation / debrief / artifact production) map to which trust level, or who is confirming what during zone 2's live session. The topology question Voice 4 named is still unanswered for this specific agent.

---

## Voice 7 — Lean Startup — grounding-data feasibility gets concrete technical backing; disclosure-threshold question untouched

- **New finding:** Adlumin already operates a "PowerShell Ensemble Model analyzing ~1 billion commands per week" [CS: VERIFIED — scout_input/04-adlumin-lotl-capability.md, ADL-1381]. Separate threat-intel documents catalog specific stack-level techniques a grounded scenario could draw on: a Windows LOLBAS asset table (cmd.exe, powershell.exe, wmic.exe, rundll32.exe, etc., with actor-usage notes) [CS: VERIFIED — scout_input/02-living-off-the-land-technical.md, Confluence TI page 60363345208] and an EDR-evasion technique table (BYOVD, process/service kill, traffic blocking, tamper-protection flips) with attacker-complexity and detection-complexity ratings [CS: VERIFIED — scout_input/03-edr-evasion-techniques.md, Confluence TI page 61697687601]. Threat-model context: "84% of high-severity attacks in 2025 use LOTL techniques" [CS: HIGH — CybersecurityHQ Report 2025, cited in scout_input/02-lotl-threat-model.md]; "62% of CrowdStrike detections involve LOTL" [CS: HIGH — CrowdStrike Threat Report 2025]. Separately, a web-search pass on practitioner language found operators describe the underlying problem ("looks like admin work," "no file to block," "context matters more than presence") without spontaneously using vendor terms like "LOTL" or "LOLBins" [CS: HIGH — pattern across 20+ sources, scout_input/04-web-customer-language-lotl.md], and flags itself [THIN DOMAIN] / [WOBBLY] for lack of direct Reddit/forum practitioner access.
- **Touches:** Voice 7's Hypothesis (whether Adlumin+N-central data can be read at sufficient fidelity to generate specific-enough scenarios) and its Cannot-see (the threshold between "generic enough to be safe" and "specific enough to be useful").
- **Update type:** strengthens (partial)
- **What it means for the existing testimony:** there is now visible evidence that Adlumin holds technique-level and command-volume-level data that could feed a grounded scenario engine — the "does the raw material exist" half of the riskiest assumption looks more plausible than a first-principles guess. The actual kill question Voice 7 named — where the safe/useful threshold sits, and whether generating a technique-specific scenario surfaces a real vulnerability in front of client staff not cleared to see it — is not addressed by any of this material and remains exactly as unresolved as the original testimony described. The customer-language finding is a minor, separate touch on Voice 4/SDT scenario-narrative authenticity (should scenario injection use vendor jargon or operational language) — noted here because it surfaced in the same research pass, not because it resolves anything load-bearing.

---

## Voices with no new material

Kano (Voice 2), Self-Determination Theory (Voice 3), Christensen Disruptive Innovation (Voice 6) — none of the 11 new files touch tabletop demand intensity, client-team autonomy experience, or tabletop market/incumbent structure. The three LOTL-positioning/ROI files not listed as "used" above (03-lotl-ai-requirements.md, 05-lotl-competitive-gap.md, 06-lotl-roi-context.md) are entirely about a different Adlumin capability (LOTL detection product narrative and its own competitive/ROI case) and were checked but yielded no bridge to any Tabletop voice.
