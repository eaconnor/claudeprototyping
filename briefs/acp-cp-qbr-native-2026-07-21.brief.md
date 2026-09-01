---
feature: "ACP Control Plane + QBR Native (July 2026 Rerun)"
gate: 30
owner: "Beth"
fidelity: "Tier 1 · Concept"
audience: "AI Council · Stakeholder · Governance and Security Lens"
problem_statement: "MSPs cannot demonstrate the value of AI-native operations to their customers or to N-able without a governed, auditable surface that produces durable evidence — not just automation. QBR Native is the candidate proof surface for whether the Control Plane earns adoption."
okr_objective: "Determine whether QBR Native is the proof surface that makes the Control Plane worth adopting — distinct from the original question of whether MSPs would use the Control Plane as their only interface."
okr_key_result: "After a 15-minute walkthrough, 3 of 5 AI Council members can articulate unprompted why QBR Native validates the Control Plane thesis — not just that it is useful. [A]"
counter_metric: "Council members must not leave the session believing QBR Native is a report feature bolted onto an infrastructure product. If that framing dominates exit conversation, the prototype failed. [A]"
idea_score: null
evidence_sources:
  - "ACP Idea Chess Findings 2026-07-15 (Beth/Spec, structured-qual survey + interviews)"
  - "ACP Concept Directions 2026-07-15 (Beth/Spec)"
  - "Play-to-win brief 2026-07-20 (Control Plane promotion, internal)"
  - "John Snyder direct conversation (Nicole Reineke licensing position, reported secondhand)"
  - "BLIND INTERVIEWS ACP — Nicole Reineke, June 12–17 2026 (8 of 20 Guidepoint MSP interviews; 12 remaining; [R] [CS: HIGH])"
  - "Market capital: Barndoor $13.6M seed; Valarian $50M Series A Jul 2026; Arcade.dev $60M Series A 2026 (CS: HIGH)"
  - "Original ACP V1 brief 2026-05-27 (acp-v1.brief.md, grep-verified 80% [A]+[?])"
status: "draft"
---

# ACP Control Plane + QBR Native — Brief (July 2026 Rerun)

> **READINESS WARNING: 46% of world-claims are [A] or [?] (16 of 35 tagged claims — grep-verified in math-recount.md). This brief is not ready to build past a Tier 1 Concept prototype. It is adequate for an AI Council walkthrough and inadequate for a spec-ready direction without one operator session on the narrowed QBR Native job.**

---

## What changed from May 2026

The original prototype tested: *Would MSPs use the Control Plane as their only interface?*

That question assumed the Control Plane was infrastructure. The July 2026 reframe promotes it to flagship. [R: play-to-win brief, 2026-07-20] The new question is more specific: *Is QBR Native the proof surface that makes the Control Plane worth adopting?*

The shift matters for what the prototype surfaces. The original validated headless operation as a behavior. This one validates QBR Native as a value argument — a different job.

---

## Gate 1 — Is the problem real and sourced?

### Problem claims (with provenance)

- MSPs perform high volumes of repeatable operational work — patching, remediation, compliance, reporting, onboarding. [R: ACP V1 brief, sourced from Confluence; not re-interviewed for this rerun]
- The shift from time-and-materials to outcomes-and-evidence is the structural pressure driving demand for a durable proof surface. [R: play-to-win brief, 2026-07-20] [WOBBLY — internal framing, not externally validated]
- Control Plane promoted from infrastructure to flagship. [R: play-to-win brief, 2026-07-20] [CS: HIGH]
- Nicole Reineke's public position: "You cannot license a set of instructions any more than you can license a recipe." [R: reported by John Snyder, direct conversation] [CS: MEDIUM — secondhand, one reported conversation] [WOBBLY]
- Market capital is betting in the same direction: Barndoor ($13.6M seed), Valarian ($50M Series A July 2026), Kong AI Gateway, Arcade.dev ($60M Series A 2026) — none sell an "agent," all sell governance/identity/observability around agents. [R] [CS: HIGH]
- Shawn Eftink's skepticism ("won't pay for governance alone") was the single prior dissenting data point. [R] [CS: HIGH] Still real evidence. No longer the only evidence.

### QBR Native demand evidence

- QBR ranks #1 across three independent instruments: interviews, forced-rank survey, per-agent value survey. [R] [CS: HIGH]
- Guidepoint interview series (Nicole Reineke, June 12–17 2026): 8 of 20 done; 12 remaining (coverage gap per datadump 2026-07-20). QBR Analyst scored 31 total, mentioned in 4/8 interviews, ranked #1 three times. [R] [CS: HIGH]
- Naive floor: approximately 0.9%. [D] [CS: MEDIUM — model output, not primary data]
- Runbook Engine (49/49 built) is a confirmed build-state asset. [R] [CS: HIGH — build-state map]
- **Value Ledger:** The continuous advisory evidence dashboard — an ongoing record of value delivered by the MSP to their end customer. QBR Native generates the periodic snapshot that populates it. This is the mechanism for the MSP role shift: from reactive operator to strategic advisory partner who can show the customer evidence of value and make recommendations (upsell, secure, etc.). [R — Beth, 2026-07-21] [CS: HIGH — concept clarified in session]

### CRITICAL GAP — the narrowed job was never tested

Demand was measured for cross-vendor QBR, not N-able-native QBR. The narrowed job — does an operator value a QBR built entirely from N-able data, without cross-vendor normalization — has never been independently tested. [A] [WOBBLY]

One operator session answers this. That session has not happened. [?]

### Gate 1 verdict

Problem is real and directionally sourced. The QBR demand signal is strong. The specific question this prototype tests — N-able-native QBR as the proof surface — is an inference from adjacent data, not a finding. Gate 1 passes for Tier 1 Concept. Would not pass for Tier 2 Direction without the operator session.

---

## Gate 2 — Are we making the right thing?

### The thesis being tested

QBR Native is the proof surface that makes the Control Plane worth adopting for MSPs who are skeptical of governance as a standalone value. [A] This is the core claim. It is assumed, not validated.

### Why QBR Native over other packages

QBR Native is #1 ranked across three instruments. [R] [CS: HIGH]

The #2 package (QBR Cross-Vendor) is architecturally blocked: cross-vendor normalization is "Not started." [R] [CS: VERIFIED] Kenneth May: "Cross-stack QBR is the holy grail." [R] [CS: HIGH — primary Guidepoint interview, Nicole Reineke series, June 2026; May was already paying $300+/user/month for ScalePad Lifecycle Manager X and called it the holy grail unprompted] The grail is unavailable. QBR Native is the reachable proof surface.

The #3 package (Live IR/RCA) has named willing payers. Vikram Thakar: "I'd pay 10–15% of my SOC running expense." [R] [CS: HIGH] Jonathan Blakey named willing payer. [R] [CS: HIGH] Naive floor ~0.55%. [D] [CS: MEDIUM] Strong signal — but it requires Adlumin data access, which is technically and legally unresolved. [?]

The #4 package (vCISO/vCIO): flat-fee survival odds ~14%. [D] [CS: MEDIUM] $4.3B TAM figure not linked. [D] [CS: LOW] [WOBBLY]

The #5 package (Ticket Triage): emotion intensity 8.3/10. [D] [CS: HIGH] Forced-rank 5.18/8, near-bottom. [D] [CS: HIGH] Thread is the live incumbent (725+ MSP partners, $8M raised). [R] [CS: HIGH] Strong emotion, weak willingness to pay, active competition.

QBR Native is the right surface for this prototype because it is the highest-ranked, architecturally buildable, and does not depend on unresolved legal or technical gates. The choice is defensible. It is still [A] that it is sufficient to prove the Control Plane thesis.

### Value Ledger — the platform thesis underneath QBR Native

QBR Native is not a report. It is the mechanism for a role shift. [R — Beth, 2026-07-21]

**The logic:**
1. **Value Ledger** (continuous) — the always-on status dashboard showing cumulative value delivered by the MSP to their end customer. Evidence accumulates over time. The customer can see it. The MSP owns it.
2. **QBR Native** (periodic snapshot) — populates the Value Ledger at a moment in time. Converts operational labor (patching, remediation, incident response) into advisory evidence (here is what we secured, here is what we recommend next).
3. **MSP role shift** — from reactive operator ("we ran your patches") to strategic advisory partner ("here is the value we created for your business, and here is what we recommend to go further — upsell, secure, expand").

This is why QBR Native is the thesis, not just the product. If the MSP can hand a customer a QBR that quantifies the value they received and recommends what to do next, the MSP is no longer a managed service vendor. They are an advisory partner. The Control Plane is the governed infrastructure that makes this credible and auditable. [A — this chain is assumed, not yet tested with operators]

### What outcome moves

If QBR Native lands, the AI Council has evidence that the Control Plane is not just a governance wrapper — it produces durable, customer-facing artifacts that an MSP can show their customer. That moves the organizational question from "is this infrastructure we should invest in?" to "is this the product we ship first?" [A]

If the Value Ledger framing lands, the question becomes even sharper: is the Control Plane the platform for an advisory relationship between MSPs and their customers — not just a task automation layer? That is a bigger bet and a more defensible market position. [A]

### Gate 2 verdict

Making the right thing — probably. QBR Native as the proof surface is well-motivated by the ranking data and architectural constraints. The thesis connecting it to the Control Plane adoption argument is assumed, not tested. The prototype's job is to surface whether that assumption survives a governance/security-lens audience.

---

## Gate 3 — Are we making the thing right?

### What this prototype is and is not

**Is:** A Tier 1 Concept prototype. Lo-fi. Static or near-static. Enough surface to carry the thesis — that QBR Native running on the Control Plane produces evidence an MSP would show a customer.

**Is not:** A direction prototype. Not a spec. Not a pixel-ready handoff. Not tested with operators.

**Audience:** AI Council. Governance and security lens. Stakeholder-level, not operator-level. [A — audience stated by Beth, not confirmed by council roster]

### What the prototype must show

1. The Control Plane as the surface from which QBR Native runs — not a standalone report tool. [A]
2. A QBR artifact that reads as durable, customer-facing evidence — not a dashboard screenshot. [A]
3. The governance layer (audit, scope, approval) visible without being the feature. [A]
4. The 15-minute edit path — an MSP can adjust a QBR before sending. [A] ~35% confidence, P0, unowned.

### The 15-minute edit assumption

"An MSP can edit a QBR in 15 minutes" is a P0 assumption for the value argument. It is unowned. It has approximately 35% confidence. [A] The prototype should surface this assumption explicitly in the Bradley rail — not hide it behind a polished UI.

### What test would tell us this is right

- After the 15-minute walkthrough, AI Council members are asked: "What would you need to see before this went to a customer?" Their answers are recorded verbatim. [A]
- Counter-signal test: if any council member says "this is just a reporting feature," the thesis failed in the room. [A]
- The operator session (one, targeted) validates whether the N-able-native QBR job is real before a Tier 2 build. [?]

### Unresolved gates the prototype cannot answer

- Gate C — Adlumin data access (technical and legal): unresolved. [?]
- Legal/DPA read (Q1 requirement): days-long review, not done. [?]
- Pricing model (per-tech-tool vs. practice-based): unmade. [?]
- EU AI Act compliance owner (enforceable 2026-08-02): `<TBD>`. [?] [CS: VERIFIED — date sourced, owner not named]
- Operator job-in-context (ethnography): approximately 93% of operator/vCIO behavior in the brief is [A]. [A] [CS: HIGH — self-assessment from idea chess work]

### Gate 3 verdict

The prototype can be built at Tier 1 fidelity with the ingredients in hand. "Built right" for a Tier 1 Concept means: the thesis is testable in the room, and the gaps are visible in the rail. The unresolved legal and technical gates are not prototype blockers — they are named risks.

---

## Failure modes

1. **QBR Native lands as a feature, not a platform thesis.** If the prototype shows a polished QBR report without foregrounding the Control Plane as the governance layer that makes it possible, the AI Council walks away with the wrong frame. The prototype has to make the Control Plane visible — not as infrastructure behind the curtain, but as the thing the MSP is operating.

2. **The 15-minute edit assumption fails silently.** If the prototype does not expose the edit path — and the assumption is ~35% confident — council members will evaluate a QBR delivery experience that does not exist. The rail must name this explicitly. If the assumption is wrong, the MSP value proposition collapses: they send whatever the AI generated.

3. **AI Council asks a legal/compliance question the prototype cannot answer.** EU AI Act enforcement is 2026-08-02. No compliance owner is named. If a council member is governance-lens, this comes up in the first five minutes. The brief needs to name it as a gap, not pretend the prototype contains the answer.

4. **The narrowed job (N-able-native vs. cross-vendor) is invisible to the audience.** Council members may assume QBR Native includes cross-stack data. If they do, they are evaluating a different product. The prototype must be explicit that this is N-able-native data only — and the rail must surface the cross-vendor gap as the next decision.

---

## What's missing (gap inventory for the Bradley rail)

These [A] and [?] claims must surface in the prototype rail — not buried, not polished away:

| Gap | Tag | Status |
|-----|-----|--------|
| N-able-native QBR job never independently tested | [A] [WOBBLY] | One operator session needed |
| Does operator distinguish N-able-native from "the real thing"? | [?] | Never asked |
| 15-minute edit assumption | [A] | ~35% confidence, P0, unowned |
| Adlumin data access (Gate C) | [?] | Technical + legal, unresolved |
| Legal/DPA read | [?] | Not done |
| Pricing model | [?] | Unmade |
| EU AI Act compliance owner | [?] | `<TBD>`, enforcement 2026-08-02 |
| Operator ethnography (~93% assumed) | [A] | No field study done |
| Trust model (L0–L4 earned autonomy) | [?] | Not field-tested |
| MSPs prefer headless operation | [A] | Original prototype assumption, not validated |

---

## Baseline delta from May 2026

| Dimension | May 2026 (V1) | July 2026 (Rerun) |
|-----------|--------------|-------------------|
| Core question | Would MSPs use Control Plane as only interface? | Is QBR Native the proof surface that makes Control Plane worth adopting? |
| [A]+[?] ratio | 80% (grep-verified) | 46% (grep-verified — math-recount.md) |
| Audience | Internal N-able product/exec [A] | AI Council, governance/security lens [A] |
| Fidelity | Demonstrative V1 | Tier 1 · Concept |
| QBR demand signal | Not present | #1 across 3 instruments [R] |
| Market capital evidence | Not present | 4 companies, same direction [R] |
| Narrowed job tested | N/A | No — still [A] [WOBBLY] |

The [A]+[?] ratio dropped from 80% to 46% due to the idea chess evidence. 46% is still above the 30% threshold. The brief is not ready for Tier 2 without the operator session.

---

## Seed data rules

All names, companies, customer data in the prototype must be fictional. Pete Hegseth test: if you would not be comfortable with it public, it does not go in the prototype. Real tenant names, real pricing, real customer lists stay in source docs and never appear in seed data. Fictional MSP names, fictional end-customer names, fictional QBR data only.

---

*End of brief. Spec does not chain into build.*
