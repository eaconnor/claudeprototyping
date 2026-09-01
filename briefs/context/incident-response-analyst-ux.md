---
artifact: ux.md
template_version: 1.0
kind: mini
parent: briefs/context/acp-ux.md
project: Incident Response Analyst (Harness, formerly ACP)
owner: Beth Connor
work_type: new-product
research_posture: researcher-backed
status: DRAFT
drift: FRESH
confidence_regime: PROCEED-FLAGGED
proceed_because: real council testimony + framework analysis exist for this offering (2026-07-06, corrected 2026-07-30) and are more useful synthesized into the parent's mini-doc register now than left scattered across scratch files — but no operator research exists, so nothing here may be read as validated
machine_behavior: surface [CS:] tags visibly · do not claim validation · treat as Tier 1 Concept material only · flag every claim resting on the n=8 buyer study as directional, not projectable
canonical_spec: acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (DEC-006 · §6 Functional behavior, platform default Coworker #3 "Incident Response Analyst")
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
  - briefs/council-mini-ir-rca.md
  - briefs/council-mini-ir-rca-erratum-2026-07-30.md
  - briefs/handoffs/next-claude-acp-coworker-dept-2026-07-06/product-experience-research.md
  - briefs/handoffs/next-claude-acp-coworker-dept-2026-07-06/experience-frameworks-map-four-agents.md
  - briefs/acp-qbr-analyst.brief.md (domain model — Incident, RootCauseAnalysis, SignalToNarration)
  - scout_input/lewis-persona-library-cast-2026-07.md
  - scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md
  - acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (DEC-006, §6 platform-default table)
last_updated: 2026-09-01
---

# Incident Response Analyst — ux.md (mini)

**What this file is, in one breath:** everything we currently know about the third-ranked default ACP Coworker — an agent that reconstructs what happened after a security incident and why — built entirely from a 7-voice analytical council and buyer-side demand data, with **zero observation of how MSPs currently do RCA at all.** Tags inherited from [acp-ux.md](acp-ux.md), not re-printed here.

Child of [acp-ux.md](acp-ux.md).

---

**Scorecard** — colors earned per `_ux-template/GUIDE.md` § Gate rubric, cited met/missing:

🔴 **Gate 1** (understand the problem) — met: second-most-robust demand in the study (both ranking cuts) [CS: VERIFIED — product-experience-research.md]; 7-voice council + erratum. Missing: no MSP's current-state incident-response practice has been observed — whether they produce a written RCA today at all is unknown; the daily operator (security tech/MSSP analyst) is unstudied.
🔴 **Gate 2** (right thing) — met: nothing settled. Missing: Gate C (whether Adlumin is available to this coworker as a signal source, or a separate product lane) is the existence question for this agent's entire evidence base, and it is unanswered by anyone in this corpus.
🔴 **Gate 3** (built right) — met: two domain-model entities (`Incident`, `RootCauseAnalysis`) named in the canonical build spec's schema [CS: VERIFIED — acp-qbr-analyst.brief.md]. Missing: confidence-display interaction design (the single most consequential undesigned element per council), the correction/rejection path, and the tech/advisor/client three-audience split all have zero design work.

---

## 1. The problem, and for whom — `Gate 1`

> **TL;DR:** after an incident, reconstruct what happened, why, and what to change — in hours instead of days. Second-strongest demand of the five default Coworkers. The evidence chain it depends on (Adlumin) may or may not be available to it, and nobody has decided.

**The job, per the canonical build spec:** "Root cause analysis on tickets and device events; **diagnose and remediate**." `[CS: VERIFIED — FSN-83143 §6, platform-default Coworker table, priority score 4.00]` Every voice in this file's research base frames the job as strictly **report-only** — the agent analyzes and drafts, a human reviews and sends, and remediation is a human decision the agent may recommend but not execute `[CS: VERIFIED — product-experience-research.md: "Report-only (QBR, IR RCA): the agent analyzes and drafts; a human sends"]`. The spec's "remediate" verb is addressed by no source in this corpus. See Divergence Log (§5a), DIV-IR-01 — this is a sharper mismatch than a scope gap; it may describe a materially different (autonomous-action) agent than the one every research voice analyzed.

**Demand signal:** forced-rank #3 (mean 4.00, n=8, directional) `[CS: VERIFIED]`; **cumulative #2** (26 total, 6.5 avg/mention, named by 4 of 8 respondents) `[CS: VERIFIED — product-experience-research.md ranking tables]` — present and reasonably strong on both cuts, unlike Alert Flood or Env Health. This is the security-flavored offering with the most robust demand in the set.

**Cast — who this is actually about:**

| Who | Role in this story | Evidence quality |
|---|---|---|
| **The buyer respondents** — 4 of the n=8 pool, security-sophisticated (MSSP/incident-response background named for at least one) | Named the job with intensity across both ranking cuts. Same confidentiality note as the parent's other minis — respondent names kept out of this file. | `[CS: VERIFIED — directional, not projectable]` |
| **The security tech / MSSP analyst** — the daily operator who'd review the timeline and accept/correct the root cause | The actual user of the report-only interaction. **Never studied.** Persona library's closest fits, both explicitly surfaced when Beth asked for "the MSP expert person": `t3soc` (senior SOC analyst/threat hunter, IR lead — "the investigator... their job is increasingly to encode judgement into artefacts the tiers below can act on") and `deteng` (detection/content engineer — "closest existing role to the human who trains/tunes an AI Coworker's judgment") | `[CS: HIGH fit, not a citation]` — scout_input/lewis-persona-library-cast-2026-07.md names these as candidates, not as confirmed operators |
| **The MSP advisor / vCISO** — presents the client-facing summary | A third, distinct audience the canonical spec's two-altitude framing (tech / client) misses entirely — Service Blueprint council voice names this explicitly. Deliverables like "remediation plans readable by non-security executives" are documented vCISO practice. | `[CS: HIGH — scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md]` for the role; `[WOBBLY]` that this specific three-way split maps onto real MSP org structures — no respondent confirmed it |
| **The end-client** — owner/CFO who authorizes spend and lives with the decision | Tertiary consumer of the client-facing export. No client was ever interviewed. | `[A]` |

**4A's** (for the security tech / MSSP analyst — the persona this agent is actually built for; `[?]` where unsourced, not invented):

| Persona | Ambitions | Attitudes | Actions | Anxieties |
|---|---|---|---|---|
| **Security tech / MSSP analyst (candidate fit — unconfirmed)** | `[?]` — no first-person evidence. | Report-only framing is meant to preserve human authorship — the tech should feel like the author of the RCA, not a relay `[CS: VERIFIED — product-experience-research.md, cross-cutting trust-kit section]`, but whether techs actually experience it that way is unstudied. | Reviews the AI-assembled timeline, corrects or accepts the root cause, exports a client-facing summary with confidence levels stripped out. `[A]` — inferred interaction sequence, not observed. | `[THIN]` — investigator identity is named as the cultural sleeper for this agent: "the MSP's professional identity in security is the *investigator*... an AI that produces the root cause may strip the professional act of investigation." No security tech has confirmed or denied this. Cognitive-anchoring risk on the confidence display is also named — a well-reasoned but entirely unvalidated concern. `[A]` |

**Bias flag:** the demand evidence is the strongest of the four non-QBR offerings, but it is still the same 8 buyer-side respondents, and the actual design-critical questions (confidence-display calibration, the correction path, current-state RCA practice) have no evidence at all — not thin evidence, none. `[WOBBLY]`

## 2. Journey / orienting map — `Gate 1`

> **TL;DR:** no experience map or service blueprint exists. What exists is a 20-cell experience-frameworks pass and 7-voice council testimony — real synthesis, but nobody has watched an actual RCA get produced or delivered.

- **Build coverage:** 0 built · 0 specced at the interaction-design level. Two domain-model entities are named — `Incident` and `RootCauseAnalysis` `[CS: VERIFIED — acp-qbr-analyst.brief.md — "the RCA-as-entity structure and how it flows into QBR narration are assumed [A]"]` — but neither has field-level structure defined.
- **Gate C is the Enter blocker.** Unlike Alert Flood Suppressor (owned N-central telemetry), this agent's evidence chain depends on whether Adlumin is available as a signal source to the coworker platform, or runs as a separate product lane `[CS: VERIFIED — product-experience-research.md, "the Adlumin lane question... decides more than any study we could run"]`. The erratum partially de-risks the worst case — real detection capability exists inside Adlumin (PowerShell Ensemble Model, ~1B commands/week; RACE automated triage) `[CS: VERIFIED — scout_input/04-adlumin-lotl-capability.md, Jira ADL-1381]` — but the org-boundary question itself remains unanswered by any source. A second, independent incident-data source was also found in the erratum pass: N-central's own Incident Summary Report (total incidents, escalation timings, MTTR, correlated notifications) `[CS: VERIFIED — scout_input/09-ncentral-incident-reporting.md]`, meaning "Adlumin or nothing" may itself have been an incomplete frame of the value-chain question.
- **The confidence-display interaction** — described across every voice as the single most consequential undesigned element in the agent — has no spec: not a percentage, not a verbal scale, not a color encoding. `[?]`

## 3. Four-angle view — see Appendix A

Full POEMS / Five Human Factors / Value Webs synthesis, plus 5Es and AEIOU, are in **Appendix A**. Build-relevant residue: **investigator identity is the cultural sleeper**, and the **correction/rejection path** (whether a tech can easily fix a wrong AI root cause) is the most load-bearing undesigned interaction — rubber-stamping is the default failure mode if correction is hard.

## 4. Sustaining or disruptive — see Appendix A

Full analysis in Appendix A. In brief: a sustaining innovation — faster IR for MSPs who already do this manually, not a new-market play. The buyer profile (owners, VPs, economically-sophisticated) confirms this; there is no visible non-consumption play. The erratum adds named, specific competitive pressure (CrowdStrike Charlotte AI, SentinelOne Purple AI, Palo Alto XSIAM) where the original testimony had only generic industry knowledge `[CS: HIGH — scout_input/05-lotl-competitive-gap.md]` — sharper competitive picture, same sustaining classification.

## 5. Open items — assumptions · decisions · questions — `Gate 1 / Gate 2`

> **TL;DR:** Gate C gates everything else. Riskiest first.

| Item | Type | Status | Owner |
|---|---|---|---|
| **Gate C — the Adlumin lane question.** Is Adlumin available to this coworker as a signal source, or does it run as a separate product lane? The existence question for the agent's evidence base, not a packaging detail. `[CS: VERIFIED — acp-qbr-analyst.brief.md FM7; product-experience-research.md]` | assumption (evidence) → org decision | 🔴 | Beth/Meaghan → Nicole |
| **Confidence-display design** — percentage? verbal scale? color? Every choice carries a different calibration liability; a false-precision number on a wrong root cause is more dangerous than no number at all. No design exists. | decision (design) | 🔴 | Beth |
| **The correction/rejection path** — how does a tech fix a wrong AI-drafted root cause? If hard, techs rubber-stamp; if rubber-stamped, wrong root causes ship to clients. Undesigned. | decision (design) | 🔴 | Beth |
| **The three-audience split** (tech / MSP advisor / end-client) — one artifact with views, or two structurally separate artifacts? A cosmetic toggle defeats both the time-savings and the trust job. | decision | 🔴 | Beth |
| **New risk, named only in the erratum, not the original council:** the evidence chain itself can be a target. EDR-evasion techniques (BYOVD, process/service kill, blocking EDR-to-cloud comms) can blind or tamper with the telemetry an RCA depends on *during* the incident that created the need for the RCA `[CS: VERIFIED, sourced to ESET research — scout_input/03-edr-evasion-techniques.md]`. No source in either council pass had named this before the erratum. | question (evidence) | 🔴 | Beth/Nicole — security research question, not a UX one |
| **Signal format to the QBR narration layer** — `RootCauseAnalysis` has no defined shape as a consumable object. Blocks this agent's Extend path identically to the other three offerings. | assumption (build-seq) | 🔴 | Beth/Meaghan/Eng |
| **Current-state RCA practice** — do MSPs today produce a structured, written RCA at all, or is it informal/verbal? If nothing exists to replace, this agent requires creating a new practice, not accelerating one — a harder sell than the demand numbers suggest. | question (evidence) | 🔴 | Beth (research) |
| **Daily-operator research** — the security tech/MSSP analyst has never been studied. | question (evidence) | 🔴 | Beth |

## 5a. Divergence Log — vs. FSN-83143 (canonical) — `[SPEC DIVERGENCE]`

> Status is grep-checkable — count the emoji, don't self-report it.

| ID | Divergence | vs. spec | Status | Owner | Resolution |
|---|---|---|---|---|---|
| DIV-IR-01 | This file's entire research base — 7 council voices plus the frameworks map — frames the agent as **strictly report-only**: analyzes, drafts, a human reviews and sends; the human review gate is named repeatedly as the non-negotiable trust mechanism. No source addresses autonomous remediation. | FSN-83143 §6, platform-default Coworker table, row 3: "Root cause analysis on tickets and device events; **diagnose and remediate**." | 🔴 open | Beth → Nicole | Does "remediate" mean the coworker can take remediation *actions* (a materially different, higher-autonomy agent than anything analyzed here), or does it mean "recommend a remediation," already covered by the report-only framing? Needs Nicole directly — this determines the guardrail/risk-tier defaults, not just the UX. |

## 6. Problem → Goals → Tasks → Function — `Gate 3` (+ Gate 1/2 for steps 1–2)

**Steps 1–2 — design's live judgment:**

1. **Wicked problem** — `[PENDING — Beth's call]`. Candidate framing: the agent must serve three jobs at once — factual completeness (functional), relief from liability ambiguity (emotional), and restoration of the MSP's expert identity in front of the client (social) — and a wrong confident root cause fails the emotional/social jobs even if the functional job succeeds.
2. **Goals** — `[PENDING — Beth's call]`. No goal ratified. Candidate: resolve Gate C before any further design investment — every downstream decision is contingent on it (Lean Startup council voice: "run assumption 1 first").

**Steps 3–4 — mostly `[PENDING]`, no interaction design exists yet:**

3. **Tasks** — Top Tasks candidates, `PROPOSED, confirm`, inferred not sourced: (a) agent auto-assembles an incident timeline from available evidence when an incident is flagged; (b) tech reviews the draft, confidence ratings, and accepts/corrects/rejects the root cause; (c) tech exports a two-format artifact (full technical record for the MSP; a confidence-stripped client-facing summary). `[A]` throughout.
4. **Function/feature structure** — `[PENDING]`. Two domain entities exist (`Incident`, `RootCauseAnalysis`); no field structure, no confidence-display component, no export-format spec.

**Quality bar** — per parent [acp-ux.md](acp-ux.md) §6. No offering-specific override exists. One candidate addition from the council, unratified: a calibration standard for the confidence display (e.g., an 80%-confidence claim should be right ~80% of the time) — `[CS: LOW — general ML calibration principle, not sourced to this agent]`.

**Built-in tests** — none can be written yet. Candidate from council testimony: a client-export audit that flags any confidence level below a threshold from appearing as a stated fact in the client-facing artifact — threshold undefined `[?]`.

## 7. Confidence score — `cross-cutting`

`[SCORED 2026-09-01]`. Grepped, not self-reported: `[R]`+`[D]`+`[CS: VERIFIED]`+`[CS: HIGH]` = **22** vs. `[A]`+`[?]`+`[WOBBLY]`+`[THIN]`+`[CS: MEDIUM]`+`[CS: LOW]` = **16**, of 38 tagged claims. **Thin-or-unknown = 42.1%.** Over the 30% line, but the strongest-evidenced of the four siblings — consistent with this offering having the most robust demand signal in the department after QBR.

## 8. Sources

- [`council-mini-ir-rca.md`](../council-mini-ir-rca.md) — 7-voice council, 2026-07-06
- [`council-mini-ir-rca-erratum-2026-07-30.md`](../council-mini-ir-rca-erratum-2026-07-30.md) — correction pass against LOTL/EDR threat-intel and AI Coworker architecture docs
- [`product-experience-research.md`](../handoffs/next-claude-acp-coworker-dept-2026-07-06/product-experience-research.md) — buyer demand rankings, per-agent "what good looks like"
- [`experience-frameworks-map-four-agents.md`](../handoffs/next-claude-acp-coworker-dept-2026-07-06/experience-frameworks-map-four-agents.md) — 5Es · Human Factors · AEIOU · 4As, Agent 2 section
- [`acp-qbr-analyst.brief.md`](../acp-qbr-analyst.brief.md) — domain model (`Incident`, `RootCauseAnalysis`, `SignalToNarration`)
- [`lewis-persona-library-cast-2026-07.md`](../../scout_input/lewis-persona-library-cast-2026-07.md) — operator-persona candidate fit (`t3soc`, `deteng`)
- [`vcio-vciso-industry-practice.md`](../../scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md) — vCISO deliverable practice, three-audience split evidence
- [`FSN-83143_AI_Coworkers_in_ACP.md`](../../acp-core-main-3/Intent%20Specs/FSN-83143_AI_Coworkers_in_ACP.md) — canonical spec, DEC-006, §6 platform-default table

## 9. Mini-docs

This file has no children. Parent: [acp-ux.md](acp-ux.md).

---

## Appendix A — Framework analysis

### A1 · Council testimony summary (7 voices, 2026-07-06 + erratum 2026-07-30)

| Voice | Read |
|---|---|
| JTBD | Three jobs, two unnamed by the brief: functional (reconstruct what happened), emotional (relief from liability ambiguity), social (restore the MSP's expert identity in front of the client). A wrong confident root cause fires the agent permanently — trusted internally, refused at the client-facing step. |
| Kano | Confidence display is threshold (must-be), not delighter — its absence makes the whole output unacceptable regardless of accuracy. The erratum found external validation: SentinelOne Purple AI already ships confidence-scored decisions with human-in-loop as default `[CS: HIGH — scout_input/05-lotl-competitive-gap.md]` — the market has independently converged on the same pattern. |
| SDT | The confidence-display problem is an autonomy problem: narrating at 100% certainty when the model is 60% confident removes the tech's ability to exercise judgment. A platform-level "L4 earned autonomy" trust model exists (erratum finding) but isn't scoped to this agent specifically. |
| Service Blueprint | Three frontstage audiences, not two: tech (fixing), MSP advisor/vCISO (presenting, credibility on the line), end-client (authorizing spend). The brief collapses them into "two altitudes." A cosmetic toggle between "technical" and "executive" framing defeats both jobs. The erratum found two partial backstage answers — real Adlumin detection capability, and a second incident-data source at N-central — neither closes Gate C. |
| Value Chain | The chokepoint is the evidence chain, not the RCA narrative on top of it. If Adlumin is a separate lane, N-able doesn't control the margin. The erratum names the chokepoint with specificity on both sides — Adlumin's PowerShell Ensemble + RACE, and named competitors (CrowdStrike, Palo Alto, SentinelOne) — but flags Adlumin's own competitive read as 2+ years stale. |
| Disruptive Innovation | A sustaining play for MSPs already trying to sell vCISO services (two-thirds of MSPs, per the study) — not a new-market creation. The erratum adds specific competitor names where the original had only generic industry knowledge, sharpening but not changing the classification. |
| Lean Startup | Five stacked assumptions, ordered by lethality — Gate C (the evidence exists and is accessible) is riskiest; a meaningful confidence score is second; the two-altitude split executable in one review step is third; the review gate actually gets used under incident-time-pressure is fourth; the RCA-to-QBR handoff is fifth. Run assumption 1 first — everything else is contingent. The erratum both partially de-risks assumption 1 (real capability exists) and introduces a wholly new risk category: the evidence chain itself can be attacker-tampered (EDR evasion), a failure mode none of the original seven voices named. |

**Tensions (unresolved, routed to Beth/Meaghan/Nicole):**
- **RCA-T1** — confidence display vs. evidence-chain existence: which is the design-blocking problem? Gate C must be answered first or design cycles are spent on confidence display for an agent that may have no data to display confidence about. The erratum adds texture to both sides without resolving which comes first.
- **RCA-T2** — the two-altitude (now three-audience) split: one artifact or two? Engineering implications (one template vs. two) that can't be deferred to build.
- **RCA-T3** — sustaining innovation vs. vCISO-bundle ambition: the commercial frame (depth-first sequencing vs. breadth-first bundling) carries resourcing implications and isn't settled by either read being individually correct.
- **RCA-T4** — the review gate: liability protection or speed tax? If skipped under incident-time-pressure, it becomes theater with no external accountability, since the gate sits backstage, invisible to the client.

**Cannot-see roll-up:** none of the source material describes what an actual incident-response process looks like at any of the n=8 firms — how evidence is currently collected, how long timelines currently take, whether a written RCA is produced today at all. Every design assumption (the three-audience split, the review gate, confidence display, remediation recommendations) is built on inferred practice, not observed practice.

### A2 · Experience-frameworks map (5Es · Kumar 5 Human Factors · AEIOU · 4As)

**5Es read:** Enter is gated by Gate C — an external org decision, not a design one. Engage's confidence display is the most consequential undesigned interaction in the entire four-agent set. Exit carries the liability wall: the client-facing export must not inherit the coworker's uncertainty without flagging it, and the threshold for "do not include in client export" is undefined.

**5 Human Factors read: Cultural is the sleeper**, and the risk is structurally different from the QBR offering's — there, the MSP is the strategist, not the analyst; here, the MSP's core credential *is* the analysis the AI now performs. Cognitive anchoring on confidence displays is a known general risk with no agent-specific mitigation. Emotional divergence — the AI's root cause contradicting the MSP's own on-the-keyboard read — is named as the most likely field failure mode and is entirely unstudied.

**AEIOU read: Activities (the correction path) and Objects (the `IncidentTimeline`'s data model) are the design-critical cells.** Rubber-stamping is the default if correction is hard. Whether the tech sees raw log entries or agent-assembled summaries determines whether the "reviewable record" is genuinely drillable or decorative — the same provenance-theater risk the QBR offering's own research already named, one domain deeper.

**4As read: Accessibility bifurcates cleanly on Gate C** — the single cell where one unresolved decision changes everything else in the row. Affordability depends on whether RCA is currently a billable line for MSPs at all (unknown); the difference between "saves time" and "pays for itself" is unresolved.

**Cross-department findings that apply directly to this agent:** the buyer-vs-user gap (Finding 1) and the undefined signal-format dependency (Finding 2) apply here identically to the other three offerings. Cultural-identity risk (Finding 3) is named as intensifying with interaction class — this agent is report-only, the lowest-risk tier on that axis, but the *stakes* of getting it wrong (a wrong root cause narrated confidently) are arguably the highest of any report-only agent because the artifact is liability-bearing.

---

## CHANGELOG

- **2026-09-01** — First draft written from council testimony (2026-07-06 + erratum 2026-07-30), buyer demand data, and the four-agent experience-frameworks map — none of which had been assembled into a mini `ux.md` before. Replaces a prior attempt (same scope, same intended filename) that was drafted in a since-lost session transcript and never persisted to disk; nothing from that attempt was recovered or reused here — this is a from-scratch build. DIV-IR-01 logged (canonical spec's "diagnose and remediate" vs. this file's strictly-report-only research base — a sharper mismatch than a simple scope gap). §7 confidence score computed by grep against this file's own content, not self-reported — see the four-file reconciliation note.
