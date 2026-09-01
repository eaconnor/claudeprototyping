---
artifact: ux.md
template_version: 1.0
kind: mini
parent: briefs/context/acp-ux.md
project: Environment Health Monitor (Harness, formerly ACP)
owner: Beth Connor
work_type: new-product
research_posture: researcher-backed
status: DRAFT
drift: FRESH
confidence_regime: PROCEED-FLAGGED
proceed_because: real council testimony + framework analysis exist for this offering (2026-07-06, corrected 2026-07-30) and are more useful synthesized into the parent's mini-doc register now than left scattered across scratch files — but this is the weakest-evidenced offering in the department and no operator research exists
machine_behavior: surface [CS:] tags visibly · do not claim validation · treat as Tier 1 Concept material only · do not let the weak demand signal read as "no problem" — see §1
canonical_spec: acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (DEC-006 · §6 Functional behavior, platform default Coworker #4 "Environment Health Monitor")
stress_test_method: Council (7-voice mini, 2026-07-06 + erratum 2026-07-30) — no Idea Chess run at this offering's level
design_system: Apex
design_lint: static-tokens
skills:
  gate1_evidence: /scout
  journey: /journey-map
  coding: /abductive-tag · /code-rows
  stress_test: idea-chess (via council)
  gate3_build: bethproto
  loop: /refresh-datadump
  handoff: /handoff
confidence_score: SEE §7
built_from:
  - briefs/council-mini-env-health.md
  - briefs/council-mini-env-health-erratum-2026-07-30.md
  - briefs/handoffs/next-claude-acp-coworker-dept-2026-07-06/product-experience-research.md
  - briefs/handoffs/next-claude-acp-coworker-dept-2026-07-06/experience-frameworks-map-four-agents.md
  - briefs/acp-qbr-analyst.brief.md (domain model — EnvHealthState, SignalToNarration)
  - scout_input/lewis-persona-library-cast-2026-07.md
  - acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (DEC-006, §6 platform-default table)
last_updated: 2026-09-01
---

# Environment Health Monitor — ux.md (mini)

**What this file is, in one breath:** everything we currently know about the fourth-ranked default ACP Coworker — an always-on posture watch that's supposed to catch drift before it becomes a ticket — built entirely from a 7-voice analytical council and buyer-side demand data, with the **weakest demand signal of the four non-QBR offerings** and no operator research at all. Tags inherited from [acp-ux.md](acp-ux.md), not re-printed here.

Child of [acp-ux.md](acp-ux.md).

---

**Scorecard** — colors earned per `_ux-template/GUIDE.md` § Gate rubric, cited met/missing:

🔴 **Gate 1** (understand the problem) — met: named, ranked, council-tested. Missing: "healthy" has no metric — every voice that touched it calls this the design-blocking gap; demand is real but the weakest of the five, and the job itself may be a platform feature misclassified as a product (see EH-T1).
🔴 **Gate 2** (right thing) — met: nothing settled. Missing: whether this ships as infrastructure (no separate billing) or a product (needs a metric, a billing story, a prevention-attribution mechanism) is an open packaging decision with no resolution path named anywhere in the corpus.
🔴 **Gate 3** (built right) — met: domain-model entity (`EnvHealthState`) named in the canonical schema [CS: VERIFIED — acp-qbr-analyst.brief.md]. Missing: the per-client baseline object's lifecycle is undefined; the noise-coupling boundary with Alert Flood Suppressor (same telemetry, same risk of becoming the flood it's meant to prevent) is architecturally undefined.

---

## 1. The problem, and for whom — `Gate 1`

> **TL;DR:** always-on posture watch — drift, degradation, config decay — caught before it becomes a ticket. Weakest demand signal of the five default Coworkers, and every voice that examined it agrees the value proposition is currently a vibe, not a metric.

**The job, per the canonical build spec:** "Continuous endpoint health checks, **lifecycle and refresh recommendations**." `[CS: VERIFIED — FSN-83143 §6, platform-default Coworker table, priority score 4.18]` The council and buyer-research corpus this file is built from frames a narrower job — drift/config-decay detection against a per-client baseline — and **never once addresses hardware lifecycle or refresh planning** as a capability. See Divergence Log (§5a), DIV-EH-01.

**Demand signal:** forced-rank #4 (mean 4.18, n=8, directional) `[CS: VERIFIED]`; **absent from the cumulative mentions top-5** `[CS: VERIFIED — product-experience-research.md, "fuzziest value proposition of the five" and "absent from cumulative mentions"]` — the weakest evidence of any of the five default Coworkers on both cuts. A second, independent third-party industry survey (not N-able's own study) also fails to volunteer config drift/environment health as a named automation pain point when techs are asked what they want automated `[CS: MEDIUM, WOBBLY — scout_input/08-msp-automation-pain-points.md, per erratum; third-party pool, thin]`. Weak demand does not settle whether the job is real or wrongly packaged — see EH-T1, EH-T4 — but it is the honest floor this file starts from.

**Cast — who this is actually about:**

| Who | Role in this story | Evidence quality |
|---|---|---|
| **The buyer respondents** — the same n=8 pool used across the department | Ranked the agent #4 under forced choice; did not name it spontaneously on either cut. | `[CS: VERIFIED — directional, not projectable]` |
| **The monitoring analyst / tech who'd review drift findings daily** | The actual user. Sets or approves the per-client baseline, reviews weekly (or unknown-cadence) health summaries, approves or overrides recommended remediations. **Never studied.** No persona-library role is a clean fit — the closest candidates are `autoeng` (automation engineer — "builds and maintains RMM scripts... the function that lets one tech support thousands of endpoints") for baseline maintenance, and `deskt`/`t1soc` for day-to-day review, matching the same daily-operator gap named for Alert Flood Suppressor. | `[?]` — named gap, candidates inferred, not confirmed. `[CS: MEDIUM]` on the persona-library fit itself |
| **The MSP vCIO/account manager** — consumes the health summary for the QBR narrative | Same buyer-side role pattern as the other three offerings. | `[CS: MEDIUM]` — inferred, not a distinct respondent |

**4A's** (for the monitoring analyst — the persona this agent is actually built for; `[?]` where unsourced, not invented):

| Persona | Ambitions | Attitudes | Actions | Anxieties |
|---|---|---|---|---|
| **Monitoring analyst / tech (candidate fit — unconfirmed)** | `[?]` — no first-person evidence. | `[?]` — unknown whether this persona would experience AI-caught drift as relief ("the agent has my back") or deskilling ("I used to catch these; now I don't know what I'm looking at"). Both reactions are named as live possibilities by the council; the brief assumes relief without evidence. | Would set or validate a per-client baseline, review a periodic health summary, approve or override remediations. `[A]` — inferred from the staged-autonomy pattern used elsewhere in the department, not observed for this agent specifically. | `[THIN]` — a named "social sleeper": the agent creates a timestamped record of the MSP's own monitoring, which makes inaction visible ("we saw the drift at 14:00 and didn't act until 18:00"). This is a risk the agent *introduces*, not one it solves. `[A]` |

**Bias flag:** this is the weakest-evidenced offering in the department by the study's own numbers, and every downstream claim in this file compounds that thinness — a fuzzy job definition sits under an unstudied operator sits under an unmeasured prevention-value claim. `[WOBBLY]` — named explicitly, not smoothed over.

## 2. Journey / orienting map — `Gate 1`

> **TL;DR:** no experience map exists. What exists is a 20-cell experience-frameworks pass — real synthesis, but frameworks, not fieldwork, and the backstage is genuinely empty here, not just undocumented.

- **Build coverage:** 0 built · 0 specced. One domain-model entity, `EnvHealthState`, is named `[CS: VERIFIED — acp-qbr-analyst.brief.md, "what it surfaces into the QBR is assumed [A]"]`, with no field structure.
- **The baseline problem:** "healthy" is undefined relative to *what* — a client's own historical state (drift-from-baseline), N-able's recommended config templates (compliance-gap), or peer benchmarking. Each implies a different data model and a different backstage process. The brief has not chosen among them. `[?]`
- **The erratum found a real industry precedent for baseline-before-automation**: N-able's own AEM materials state "organizations must define secure configurations before enabling automation" and describe staged rollouts with testing before production `[CS: HIGH — scout_input/04-autonomous-endpoint-management.md]`. This corroborates that a baseline model is a known, solvable design pattern elsewhere — it makes its absence here look like an omission, not a novel problem. It does not supply the baseline itself.
- **N-central's existing Incident Summary Report is the closest shipping artifact precedent** — but it's explicitly reactive/post-incident ("Report provides data for analysis but does not trigger automated remediation. Human reviews data and decides on action" `[CS: VERIFIED — scout_input/09-ncentral-incident-reporting.md]`), which answers a different question than this agent's pre-incident/drift-based promise.

## 3. Four-angle view — see Appendix A

Full POEMS / Five Human Factors / Value Webs synthesis, plus 5Es and AEIOU, are in **Appendix A**. Build-relevant residue: **Social is the sleeper** (the agent makes the MSP's own monitoring gaps visible to itself), closely followed by Cultural (proactive monitoring is a service promise MSPs sell as *their* practice; an agent that does it may strip the thing that defines their value to clients).

## 4. Sustaining or disruptive — see Appendix A

Full analysis in Appendix A. In brief: **not disruptive by either test** — it is more complex than the RMM dashboard it competes with (requiring a baseline model, drift detection, tuning), and it targets MSPs who already have RMM monitoring, not non-consumers. The erratum sharpens the internal-cannibalization risk with concrete, N-able-authored evidence (baseline-enforcement AEM copy, 13-category default automation policy doc, a public GitHub repo of community N-central automation scripts) rather than a single inferred study quote — the strongest cannibalization evidence of any offering in this department's research.

## 5. Open items — assumptions · decisions · questions — `Gate 1 / Gate 2`

> **TL;DR:** three testable bets, and only one has anything resembling a plan. Riskiest first — Lean Startup's own kill-shot ranking, reproduced here.

| Item | Type | Status | Owner |
|---|---|---|---|
| **Noise-coupling boundary with Alert Flood Suppressor** — both agents draw from the same N-central telemetry with no defined suppression-policy boundary. Named as the kill shot by council Voice 7: a failure here damages trust across the whole department, not just this agent. `[CS: VERIFIED — product-experience-research.md line 137, "pages constantly BECOMES the alert flood"]` | assumption (evidence) → architecture | 🔴 | Beth/Meaghan/Nicole |
| **"Healthy" metric definition** — three unchosen candidates (prevented tickets · drift-from-baseline score · compliance-gap count), each implying a different build. Named explicitly as the kill condition ("it needs a metric, not a vibe") but left undefined. | decision (design) | 🔴 | Beth |
| **Prevention-attribution mechanism** — "caught 12 issues before they were outages" is unfalsifiable to the client without a counterfactual mechanism (a before-state, a detection event, an acknowledged avoided-cost). None of these are designed. Without it, an MSP cannot bill around prevention and the value proposition collapses to faith. | assumption (evidence) → design | 🔴 | Beth |
| **Is this an agent or a platform feature?** JTBD/Kano/Disruptive Innovation converge on "expected infrastructure" (a Basic); Service Blueprint/Value Chain say it only has a value-chain position if it feeds the QBR narration downstream. Not a compatible pair of packaging decisions — see EH-T1. | decision | 🔴 | Beth/Meaghan/Nicole |
| **Per-client baseline lifecycle** — set once? Updated on stack change? Reviewed quarterly? The agent's entire value claim ("we know what healthy looks like for your client") depends on a current baseline, and its maintenance model is undefined. | decision (design) | 🔴 | Beth |
| **Internal cannibalization** — the ACP env-health agent and N-central's existing rule-based automation (baseline enforcement, 13 policy categories) occupy the same territory. No org-level agreement between the ACP and N-central product teams is documented anywhere in this corpus. | question | 🔴 | Beth (org question) |
| **Signal format to the QBR narration layer** — `EnvHealthState` has no defined shape as a consumable object. Blocks this agent's Exit path identically to the other three offerings. | assumption (build-seq) | 🔴 | Beth/Meaghan/Eng |
| **Daily-operator research** — the monitoring analyst has never been studied. | question (evidence) | 🔴 | Beth |

## 5a. Divergence Log — vs. FSN-83143 (canonical) — `[SPEC DIVERGENCE]`

> Status is grep-checkable — count the emoji, don't self-report it.

| ID | Divergence | vs. spec | Status | Owner | Resolution |
|---|---|---|---|---|---|
| DIV-EH-01 | This file's entire research base treats the agent as **drift/config-decay detection against a per-client baseline only**. No council voice, no frameworks-map cell, and no erratum source addresses hardware lifecycle planning or refresh recommendations at all. | FSN-83143 §6, platform-default Coworker table, row 4: "Continuous endpoint health checks, **lifecycle and refresh recommendations**." | 🔴 open | Beth → Nicole | Is lifecycle/refresh recommendation a genuinely separate capability bundled under the same Coworker name, or a mis-scoped one-liner? Needs Nicole directly — this corpus has zero material to reason about it with. |

## 6. Problem → Goals → Tasks → Function — `Gate 3` (+ Gate 1/2 for steps 1–2)

**Steps 1–2 — design's live judgment:**

1. **Wicked problem** — `[PENDING — Beth's call]`. Candidate framing: the hiring event for a prevention agent is structurally invisible — nobody calls a vendor the day nothing broke — so the job must be designed around a baseline-deviation trigger, not a current-state poll, or it collapses into a dashboard that already exists.
2. **Goals** — `[PENDING — Beth's call]`. No goal ratified. The packaging fork (EH-T1) has to resolve before a goal can be named — "reduce prevented-ticket cost" only makes sense if this ships as a billable product; "protect the QBR's ability to narrate a quiet quarter" only makes sense if it ships as infrastructure.

**Steps 3–4 — mostly `[PENDING]`, no interaction design exists yet:**

3. **Tasks** — Top Tasks candidates, `PROPOSED, confirm`, inferred not sourced: (a) MSP or agent establishes a per-client baseline; (b) agent classifies environment state against that baseline continuously; (c) MSP reviews a periodic (cadence undefined) client-level health summary, not a per-device alert feed; (d) MSP approves or overrides recommended remediations. `[A]` throughout.
4. **Function/feature structure** — `[PENDING]`. One domain entity (`EnvHealthState`) exists with no field structure; the baseline, drift-detection algorithm, and suppression-arbitration boundary with Alert Flood Suppressor have no function spec.

**Quality bar** — per parent [acp-ux.md](acp-ux.md) §6. No offering-specific override exists.

**Built-in tests** — none can be written yet. Candidate from council testimony: a device-to-client aggregation-logic check (does the health score for a 200-endpoint client mean anything, or is it noise at the aggregate level) — undefined pass/fail criteria `[?]`.

## 7. Confidence score — `cross-cutting`

`[SCORED 2026-09-01]`. Grepped, not self-reported: `[R]`+`[D]`+`[CS: VERIFIED]`+`[CS: HIGH]` = **14** vs. `[A]`+`[?]`+`[WOBBLY]`+`[THIN]`+`[CS: MEDIUM]`+`[CS: LOW]` = **19**, of 33 tagged claims. **Thin-or-unknown = 57.6%.** The thinnest of the four siblings, as expected — this offering has the weakest demand signal in the department and the erratum closed cannibalization-risk evidence, not any of the design-critical gaps.

## 8. Sources

- [`council-mini-env-health.md`](../council-mini-env-health.md) — 7-voice council, 2026-07-06
- [`council-mini-env-health-erratum-2026-07-30.md`](../council-mini-env-health-erratum-2026-07-30.md) — correction pass against N-central/AEM product documentation
- [`product-experience-research.md`](../handoffs/next-claude-acp-coworker-dept-2026-07-06/product-experience-research.md) — buyer demand rankings, per-agent "what good looks like"
- [`experience-frameworks-map-four-agents.md`](../handoffs/next-claude-acp-coworker-dept-2026-07-06/experience-frameworks-map-four-agents.md) — 5Es · Human Factors · AEIOU · 4As, Agent 3 section
- [`acp-qbr-analyst.brief.md`](../acp-qbr-analyst.brief.md) — domain model (`EnvHealthState`, `SignalToNarration`)
- [`lewis-persona-library-cast-2026-07.md`](../../scout_input/lewis-persona-library-cast-2026-07.md) — operator-persona candidate fit (`autoeng`, `deskt`/`t1soc`)
- [`FSN-83143_AI_Coworkers_in_ACP.md`](../../acp-core-main-3/Intent%20Specs/FSN-83143_AI_Coworkers_in_ACP.md) — canonical spec, DEC-006, §6 platform-default table

## 9. Mini-docs

This file has no children. Parent: [acp-ux.md](acp-ux.md).

---

## Appendix A — Framework analysis

### A1 · Council testimony summary (7 voices, 2026-07-06 + erratum 2026-07-30)

| Voice | Read |
|---|---|
| JTBD | The stated job is actually three candidate jobs — baseline deviation detection (functional), prevention assurance (emotional), audit-readiness demonstration (social) — and the brief treats them as one agent. The hiring event is invisible by definition: nobody calls a vendor the day nothing broke. |
| Kano | Reads as a Basic (assumed, invisible until absent) misclassified as a Performance feature. The erratum gives this its strongest support: N-able's own AEM materials already describe baseline-based config enforcement as existing capability `[CS: HIGH — scout_input/04-autonomous-endpoint-management.md]`, and the 13-category default automation policy doc's own summary concludes N-central "targets comprehensive IT operations automation rather than specialized functions" `[CS: MEDIUM]`. |
| SDT | An always-on agent the user can't see or tune is an autonomy trap. Two competence outcomes are equally plausible and neither is evidenced: relief ("the agent has my back") or deskilling ("I used to catch these"). A platform-level trust architecture exists generically (erratum) but isn't confirmed as extending to this agent. |
| Service Blueprint | The frontstage promise ("healthy") is undefined without a backstage baseline. The erratum corroborates that baseline-before-automation is a known industry pattern (making its absence here an omission) but also shows N-central's existing reviewable surface (Incident Summary Report) answers a *reactive* question, not this agent's *preventive* one. |
| Value Chain | Monitoring is the lowest-margin layer in the MSP value chain — the commodity clients assume is included. The agent only has a value-chain position if it feeds the QBR narration (report) or reduces ticket cost (remediate); doing neither, it's invisible and captures no value from that invisibility. The erratum's platform-wide Value Ledger tracks *time saved*, not *harm prevented* — a different unit than what this agent's margin case actually needs. |
| Disruptive Innovation | Fails the disruptive test on both fronts: more complex than the RMM dashboard it replaces, targeting the same operators who already have RMM monitoring — no non-consumer play visible. The erratum makes the sustaining/cannibalization risk concrete with three independent N-able-authored sources (AEM marketing copy, the GitHub automation-scripts repo, the 13-category policy doc) rather than one inferred study quote. |
| Lean Startup | Three testable bets: (A) "healthy" as a defined metric, (C) the noise-coupling boundary with Alert Flood Suppressor, (B) prevention attribution. Kill-shot ranking: **C first** (noise-coupling failure damages the whole department, not just this agent), **A second** (no metric, no testable build), **B third** (no attribution, no billing story). The erratum supplies nothing new for any of the three — all remain exactly as open as the original testimony found them. |

**Tensions (unresolved, routed to Beth/Meaghan/Nicole):**
- **EH-T1** — is this an agent or a platform feature? JTBD/Kano/Disruptive Innovation read the weak demand + free-in-RMM ceiling as "infrastructure." Service Blueprint/Value Chain say it only has a value-chain position as a product that feeds the QBR. Not a compatible pair of packaging calls.
- **EH-T2** — the noise feedback loop with Alert Flood Suppressor: two agents, or one coupled system? Four voices (Lean Startup, Value Chain, Service Blueprint, SDT) name the same structural problem from different angles and propose incompatible solutions — couple them from the start, sequence Alert Flood first, or merge into one operational-health coworker.
- **EH-T3** — prevention attribution: an unfalsifiable value proposition, or a researchable design problem (a counterfactual mechanism)? Four voices agree the problem exists; they diverge on whether it's design work or research work.
- **EH-T4** — the demand asymmetry: does weak, non-spontaneous demand mean the wrong agent, or the wrong packaging? Service Blueprint and SDT argue the emotional job ("nothing is rotting while I sleep") is real even if it must never be explicitly priced — the Basic classification doesn't mean the job doesn't exist.

**Cannot-see roll-up:** every SDT claim about autonomy, every Service Blueprint claim about the handoff surface, every Lean Startup claim about who'd tune the sensitivity, rests on an unobserved daily user. The study captured buyers; the tech who fields findings every morning was never in the room. The telemetry-readiness claim ("N-central/N-sight makes the data side easy") is doing load-bearing work with no engineering validation behind it. The suppression boundary with Alert Flood Suppressor is architecturally undefined — every voice testifying about it is testifying about a seam that doesn't exist on paper yet.

### A2 · Experience-frameworks map (5Es · Kumar 5 Human Factors · AEIOU · 4As)

**5Es read:** Enter (baseline-setting) and Engage (device-to-client aggregation logic) are design-critical. Exit (prevention attribution) is the hardest claim to make defensibly. Entice has a structural bootstrapping problem — the prevention case can only be made from data the agent has already collected, so entice and onboarding are tangled together.

**5 Human Factors read: Social is the sleeper, Cultural close behind.** The agent creates a timestamped record of the MSP's own monitoring — making inaction visible to the MSP itself, not just the client, which is a risk the agent introduces rather than solves. If proactive monitoring is a promise MSPs currently deliver irregularly, the agent makes the gap between the promise and the practice visible for the first time — the cultural stakes of that differ radically depending on which is true, and it's unknown which is true.

**AEIOU read: Objects (the `EnvironmentBaseline`'s lifecycle) and Interactions (baseline-setting) are the core design problems.** A stale baseline makes every subsequent health reading meaningless. If baseline-setting is too manual, adoption fails at Enter; if too automated, the agent's "healthy" may not match the client's actual contract SLA.

**4As read: Affordability is structurally the hardest of all five agents** — continuous monitoring is precisely the RMM's stated core promise, making "should be in the RMM already" the most natural objection in the department. Awareness is latent, not spontaneous — the gap between promised and actual monitoring cadence has to be shown, not reminded, because MSPs don't yet know what they're missing.

**Cross-department findings that apply directly to this agent:** the buyer-vs-user gap (Finding 1) and undefined signal format (Finding 2) apply identically to the other three offerings. This agent and Alert Flood Suppressor are named explicitly (Finding 2, Finding 4) as the two agents where the "build it into the RMM" ceiling is structural, not a pricing problem — and where the only exit from that ceiling is the department thesis itself, which depends on the signal format existing.

---

## CHANGELOG

- **2026-09-01** — First draft written from council testimony (2026-07-06 + erratum 2026-07-30), buyer demand data, and the four-agent experience-frameworks map — none of which had been assembled into a mini `ux.md` before. Replaces a prior attempt (same scope, same intended filename) that was drafted in a since-lost session transcript and never persisted to disk; nothing from that attempt was recovered or reused here — this is a from-scratch build. DIV-EH-01 logged (canonical spec's "lifecycle and refresh recommendations" vs. this file's drift-detection-only research scope — zero source material touches lifecycle/refresh). §7 confidence score computed by grep against this file's own content, not self-reported — see the four-file reconciliation note.
