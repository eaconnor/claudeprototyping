---
artifact: ux.md
template_version: 1.0
kind: mini
parent: briefs/context/acp-ux.md
project: Alert Flood Suppressor (Harness, formerly ACP)
owner: Beth Connor
work_type: new-product
research_posture: researcher-backed
status: DRAFT
drift: FRESH
confidence_regime: PROCEED-FLAGGED
proceed_because: real council testimony + framework analysis exist for this offering (2026-07-06, corrected 2026-07-30) and are more useful synthesized into the parent's mini-doc register now than left scattered across scratch files — but no operator research exists, so nothing here may be read as validated
machine_behavior: surface [CS:] tags visibly · do not claim validation · treat as Tier 1 Concept material only · flag every claim resting on the n=8 buyer study as directional, not projectable
canonical_spec: acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (DEC-006 · §6 Functional behavior, platform default Coworker #2 "Alert Flood Suppressor")
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
  - briefs/council-mini-alert-flood.md
  - briefs/council-mini-alert-flood-erratum-2026-07-30.md
  - briefs/handoffs/next-claude-acp-coworker-dept-2026-07-06/product-experience-research.md
  - briefs/handoffs/next-claude-acp-coworker-dept-2026-07-06/experience-frameworks-map-four-agents.md
  - briefs/acp-qbr-analyst.brief.md (domain model — Alert entity, SignalToNarration)
  - scout_input/lewis-persona-library-cast-2026-07.md
  - acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (DEC-006, §6 platform-default table)
last_updated: 2026-09-01
---

# Alert Flood Suppressor — ux.md (mini)

**What this file is, in one breath:** everything we currently know about the second-ranked default ACP Coworker — an agent that suppresses alert noise on N-central without dropping a real one — built entirely from a 7-voice analytical council and buyer-side demand data, with **zero operator research**. Read that constraint as load-bearing, not a caveat: nobody who would actually use this agent daily has been studied by anyone. Tags inherited from [acp-ux.md](acp-ux.md), not re-printed here.

Child of [acp-ux.md](acp-ux.md).

---

**Scorecard** — colors earned per `_ux-template/GUIDE.md` § Gate rubric, cited met/missing:

🔴 **Gate 1** (understand the problem) — met: problem named and demand-ranked (#2 forced-rank) [CS: VERIFIED — product-experience-research.md]; council-tested from 7 analytical angles. Missing: the primary daily user (the tech who reviews the suppression log) has never been observed, interviewed, or even named as a study participant — see Cast below. This is a named universal gap across all four non-QBR offerings, not unique to this one.
🔴 **Gate 2** (right thing) — met: nothing settled. Missing: no Idea Chess run at this offering's level (only the QBR offering has one); the riskiest business assumption — whether "free in RMM" kills willingness-to-pay entirely — has no test in any research plan (council Voice 7); Kano classification (threshold feature vs. billable coworker) unresolved.
🔴 **Gate 3** (built right) — met: domain-model entity (`Alert`) named in the canonical build spec's schema [CS: VERIFIED — acp-qbr-analyst.brief.md]. Missing: the suppression log — named repeatedly as "the product, not the suppression" — has no interaction design; the staged-autonomy promotion criterion is undefined; no usability testing of any kind has run.

---

## 1. The problem, and for whom — `Gate 1`

> **TL;DR:** kills alert noise without killing the signal. Demand is real but shallow — buyers ranked it #2 under forced choice, but nobody spontaneously brought it up. The person who'd use it daily has never been studied.

**The job, per the canonical build spec:** "Suppress alert noise, correlate to root cause, produce ranked daily work plan." `[CS: VERIFIED — FSN-83143 §6, platform-default Coworker table, priority score 3.23]` The research corpus this file is built from frames a narrower version of that job — suppression + a reviewable log — and never addresses "correlate to root cause" or "ranked daily work plan" as designed capabilities. See Divergence Log (§5a), DIV-AF-01.

**Demand signal:** forced-rank #2 (mean 3.23, n=8, directional) `[CS: VERIFIED]`; **absent from the cumulative mentions top-5 entirely** `[CS: VERIFIED — product-experience-research.md ranking tables]` — nobody named it unprompted. That combination (ranks well under forced choice, never volunteered) is itself the central interpretive fork of this file: JTBD reads it as a latent job the market can't yet articulate; Kano and Disruptive Innovation read it as a threshold expectation buyers already assume is included. The two readings produce opposite build plans and are not reconcilable by analysis — see AF-T1 in Appendix A.

**Cast — who this is actually about:**

| Who | Role in this story | Evidence quality |
|---|---|---|
| **The buyer respondents** — owners, VPs, and directors from the n=8 demand study | Ranked the agent #2 under forced choice; did not name it spontaneously. The demand signal for this whole file traces to this same pool of 8 people, used across every ranked offering in the department. | `[CS: VERIFIED — directional, not projectable]` — see product-experience-research.md; names kept out of this file per the source packet's confidentiality note |
| **The daily operator — tier-1 tech / dispatcher who'd review the suppression log** | The actual user. Decides whether a suppression was correct, whether to escalate, whether to trust the log enough to move up the autonomy ladder. **Never interviewed, observed, or named as a study participant.** | `[?]` — named gap, not filled. Persona library's closest structural fits: `t1soc` (service-desk tier 1) or `dispatch` (dispatcher/service coordinator) — "`t1soc` fits Alert Flood Suppressor... specifically" `[CS: MEDIUM — scout_input/lewis-persona-library-cast-2026-07.md, inference not citation]` |
| **The MSP owner/account manager** — consumes the suppression summary for the QBR narrative | The buyer-side persona who benefits from the client-story sentence ("suppressed 400, escalated the 3 that mattered"). Maps to the parent's Alpha/USER-001 lock. | `[CS: MEDIUM]` — inferred from buyer-study role descriptions, not a distinct respondent |

**4A's** (for the daily operator — the persona this agent is actually built for; `[?]` where unsourced, not invented):

| Persona | Ambitions | Attitudes | Actions | Anxieties |
|---|---|---|---|---|
| **Tier-1 tech / dispatcher (candidate fit — unconfirmed)** | `[?]` — no first-person evidence exists. | `[?]` — the study's own respondents (buyers) universally wanted human control before AI acts `[CS: VERIFIED — product-experience-research.md, "autonomy universally gated"]`, but that's the buyer's attitude, not this persona's. | Would review the suppression log, mark items, decide whether to escalate — inferred from the staged-autonomy design, not observed. `[A]` | `[THIN]` — cultural-identity risk is named by council Voice on Human Factors as "the sleeper": an agent that silences alerts without the tech's involvement may culturally demote a tech from vigilant sentinel to auditor. No tech has confirmed or denied this. `[A]` |

**Bias flag:** every claim in this section that isn't a direct spec quote traces to the same 8 buyer-side respondents used across the whole department, or to first-principles framework inference. There is no first-party quote anywhere in this corpus from anyone who would operate this agent daily. `[WOBBLY]`

## 2. Journey / orienting map — `Gate 1`

> **TL;DR:** no experience map or service blueprint exists for this offering. What exists instead is a 20-cell experience-frameworks pass (5Es/Human Factors/AEIOU/4As) — real synthesis, but frameworks, not fieldwork.

- **Build coverage:** 0 built · 0 specced at the interaction-design level. The domain model names one entity, `Alert` `[CS: VERIFIED — acp-qbr-analyst.brief.md, "Named in study, ranked #2 mean-rank [D]; its shape as an entity in the QBR narration is assumed [A]"]`, and the platform-wide trust architecture (track record · risk classification · scope boundaries · escalation rules · audit trail) is defined generically, not instantiated for this agent `[CS: VERIFIED — scout_input/01-control-plane.md, per council erratum]`.
- **The reviewable suppression log** — named repeatedly across the council and the frameworks map as the actual product ("the log is the product, not the suppression" `[CS: VERIFIED — product-experience-research.md line 123]`) — has no design: no data model, no visual encoding, no review cadence, no escalation-channel spec. `[?]` — see AF-T2, Appendix A.
- **No journey map exists** because no operator has been observed running one. This is the same gap named in §1, restated at the interaction level.

## 3. Four-angle view — see Appendix A

Full POEMS / Five Human Factors / Value Webs synthesis, plus the 5Es and AEIOU passes, are in **Appendix A**. Build-relevant residue: the **cultural risk is the sleeper** (vigilant-sentinel identity), and **the daily operator persona is the critical blank** across every framework applied.

## 4. Sustaining or disruptive — see Appendix A

Full analysis in Appendix A. In brief: reads as a sustaining move (a better version of alert correlation MSPs already do manually or via N-central's own existing rule-based automation) dressed as a feature, not a market-creating disruption. N-able's own N-central product already ships 13 categories of default automation policy and an Incident Summary Report with a "Correlated Notifications" section `[CS: VERIFIED — scout_input/07-ncentral-default-policies.md, scout_input/09-ncentral-incident-reporting.md, per council erratum]` — the strongest evidence for internal cannibalization risk of any of the four offerings in this file's own research, because the incumbent this agent might disrupt is N-able's own shipping product.

## 5. Open items — assumptions · decisions · questions — `Gate 1 / Gate 2`

> **TL;DR:** the riskiest business assumption ("free in RMM" kills WTP) has no test designed for it anywhere in the research plan. Riskiest first.

| Item | Type | Status | Owner |
|---|---|---|---|
| **"Free in RMM" WTP assumption** — the strongest free-in-RMM expectation of the five default Coworkers `[CS: VERIFIED — product-experience-research.md, brief Gate 1]`. If MSPs will not pay for suppression as a coworker, no design choice changes the commercial outcome. **No test exists for this specifically** — the research plan's pricing item is framed around QBR bundling, not alert suppression. | assumption (evidence) → pricing test | 🔴 | Beth (to commission) |
| **The promotion criterion** — what evidence standard moves the agent from recommend → approve-batch → auto? Named as a gap by the original council; a department-level trust-score framework (track record · risk classification · scope boundaries · escalation rules · audit trail) exists generically but is not instantiated for this agent specifically. | decision (design) | 🔴 | Beth/Nicole |
| **Log design** — is it a raw event table (recreates the flood one abstraction up) or an exception-surfacing, audit-tractable artifact? Sequencing question: design the log, or test the WTP assumption first, since a beautifully designed log is a sunk cost if "free in RMM" kills the business case. | decision | 🔴 | Beth/Meaghan/Nicole |
| **Signal format to the QBR narration layer** — `Alert` has no defined shape as a consumable object. This is not unique to this agent; it blocks all four offerings' Exit/Extend paths identically `[CS: VERIFIED — experience-frameworks-map-four-agents.md, "Finding 2"]`. One design spike unblocks all four. | assumption (build-seq) | 🔴 | Beth/Meaghan/Eng |
| **Daily-operator research** — the tech/dispatcher persona has never been studied. This is the single most consequential evidence gap in this file — see §1 Cast. | question (evidence) | 🔴 | Beth |
| **Missed-critical asymmetry vs. promotion speed** — a too-liberal promotion criterion risks a missed critical (probably permanent trust loss); a too-conservative one leaves the agent stuck at "recommend," which may not deliver enough relief to be worth using. This is a risk-tolerance judgment call, not resolvable by framework. | decision | 🔴 | Beth/Meaghan/Nicole |
| **Internal cannibalization** — does the ACP coworker duplicate N-central's own existing rule-based alert correlation and Incident Summary Report? No org-level agreement between the ACP and N-central product teams is documented anywhere in this corpus. | question | 🔴 | Beth (org question, not a design one) |

Type preserves the parent's §9b split — assumption/question = evidence-gap; decision = a human's call. Source: council testimony + erratum (below), `experience-frameworks-map-four-agents.md`.

## 5a. Divergence Log — vs. FSN-83143 (canonical) — `[SPEC DIVERGENCE]`

> Status is grep-checkable — count the emoji, don't self-report it.

| ID | Divergence | vs. spec | Status | Owner | Resolution |
|---|---|---|---|---|---|
| DIV-AF-01 | This file's entire research base (council + frameworks map) treats the agent as **suppression + reviewable log only**. It never addresses "correlate to root cause" or "produce ranked daily work plan" — both named in the canonical spec's one-line capability description. | FSN-83143 §6, platform-default Coworker table, row 2: "Suppress alert noise, **correlate to root cause, produce ranked daily work plan**." | 🔴 open | Beth → Nicole | Is root-cause correlation and daily-work-plan generation in scope for v1, or aspirational spec language ahead of the research? Needs Nicole directly — no source in this corpus touches either capability. |

## 6. Problem → Goals → Tasks → Function — `Gate 3` (+ Gate 1/2 for steps 1–2)

**Steps 1–2 — design's live judgment:**

1. **Wicked problem** — `[PENDING — Beth's call]`. Candidate framing: alert fatigue is real and named `[CS: VERIFIED]`, but whether the job is "reduce noise" (functional) or "prove vigilance to the client" (social) is the unresolved JTBD fork (AF-T1, AF-T4).
2. **Goals** — `[PENDING — Beth's call]`. No goal has been ratified; the council's candidate framing treats "escape the free-in-RMM ceiling via the QBR client-story sentence" as the strongest surviving commercial path, untested.

**Steps 3–4 — eng's stable layer, mostly `[PENDING]` here because no interaction design exists yet:**

3. **Tasks** — Top Tasks candidates, `PROPOSED, confirm`, inferred from the frameworks map, not sourced from any respondent: (a) MSP sets per-client suppression tuning before anything fires; (b) tech reviews the suppression log on a cadence; (c) agent escalates a critical via the tech's existing channel (PSA/Slack/PagerDuty), not a new UI. `[A]` throughout — no task has been validated with an operator.
4. **Function/feature structure** — `[PENDING]`. Only one domain-model entity (`Alert`) is defined `[CS: VERIFIED — acp-qbr-analyst.brief.md]`; the suppression log, the tuning UI, and the escalation pathway have no function spec.

**Quality bar** — per parent [acp-ux.md](acp-ux.md) §6 (Nielsen floor · ISO 9241-11 · accessibility · Apex `design_lint` · SUS ship-gate · trust-in-AI-output eval). No offering-specific quality bar exists yet; nothing here overrides the parent's default.

**Built-in tests** — none can be written yet; there is no build to test against. The one candidate from council testimony: a suppression-rate/missed-critical audit — "zero missed criticals for N consecutive periods" — but N is undefined `[?]`.

## 7. Confidence score — `cross-cutting`

`[SCORED 2026-09-01]`. Grepped, not self-reported: `[R]`+`[D]`+`[CS: VERIFIED]`+`[CS: HIGH]` = **21** vs. `[A]`+`[?]`+`[WOBBLY]`+`[THIN]`+`[CS: MEDIUM]`+`[CS: LOW]` = **21**, of 42 tagged claims. **Thin-or-unknown = 50.0%.** Over the 30% line — this file is not ready to hand to eng as acceptance criteria. Consistent with the honest-thinness finding named throughout: this offering has council testimony and framework analysis, but zero operator research.

## 8. Sources

- [`council-mini-alert-flood.md`](../council-mini-alert-flood.md) — 7-voice council, 2026-07-06
- [`council-mini-alert-flood-erratum-2026-07-30.md`](../council-mini-alert-flood-erratum-2026-07-30.md) — correction pass against 10 new scout dossiers
- [`product-experience-research.md`](../handoffs/next-claude-acp-coworker-dept-2026-07-06/product-experience-research.md) — buyer demand rankings, per-agent "what good looks like"
- [`experience-frameworks-map-four-agents.md`](../handoffs/next-claude-acp-coworker-dept-2026-07-06/experience-frameworks-map-four-agents.md) — 5Es · Human Factors · AEIOU · 4As, Agent 1 section
- [`acp-qbr-analyst.brief.md`](../acp-qbr-analyst.brief.md) — domain model (`Alert` entity, `SignalToNarration`)
- [`lewis-persona-library-cast-2026-07.md`](../../scout_input/lewis-persona-library-cast-2026-07.md) — operator-persona candidate fit (`t1soc`, `dispatch`)
- [`FSN-83143_AI_Coworkers_in_ACP.md`](../../acp-core-main-3/Intent%20Specs/FSN-83143_AI_Coworkers_in_ACP.md) — canonical spec, DEC-006, §6 platform-default table

## 9. Mini-docs

This file has no children. Parent: [acp-ux.md](acp-ux.md).

---

## Appendix A — Framework analysis

> Frameworks — valuable, but appendix material: *how* the conclusions were reached, not the build spec. Build-relevant conclusions already live in §1 / §5 / §6.

### A1 · Council testimony summary (7 voices, 2026-07-06 + erratum 2026-07-30)

| Voice | Read |
|---|---|
| JTBD | Two jobs live here and may not be the same job: functional ("clear my queue") vs. social ("prove vigilance to the client"). The client-story sentence ("suppressed 400, escalated 3") *is* the social job — if the log stays internal-only, N-able has built a tool for the tech and abandoned the job the buyer cares about. `[CS: MEDIUM — inferred, no verbatim respondent claim maps to the emotional job]` |
| Kano | Reads as threshold (must-be), not delighter — absence from spontaneous mentions is the Kano tell. N-central's own existing Incident Summary Report + 13 default automation categories sharpen this: the floor may already be partially met by N-able's own shipping product `[CS: VERIFIED — scout_input/09-ncentral-incident-reporting.md, per erratum]`. |
| SDT | The staged autonomy ladder (recommend → approve-batch → auto) is structurally right for SDT but the promotion criterion is undefined — "stuck at rung 1" is a real risk. A department-level trust-score framework exists generically (erratum finding) but isn't instantiated for this agent. |
| Service Blueprint | The reviewable log is the line of visibility — and it has no design. N-central's existing Incident Summary Report is the closest artifact precedent, but it's built for the opposite direction of visibility (what happened, not what was silently dropped) `[CS: VERIFIED — erratum]`. |
| Value Chain | N-central alert data is the one agent in the department where N-able owns the full data supply chain — no rival API in the way. But margin is in the *decision* (which alerts matter), not the data stream, and N-able doesn't yet own that logic — a temporary, not durable, moat. |
| Disruptive Innovation | A sustaining move dressed as a feature. The disruption-vs-commoditization window read gets sharper with the erratum: N-able's own N-central automation is now the strongest evidence the window may already be closing, not a competitor's. |
| Lean Startup | The riskiest assumption isn't the missed-critical asymmetry (the brief's own named risk) — it's whether "free in RMM" is addressable at all. No test exists for it. The department's own TAM-grounding docs independently confirm agent-seat pricing is the least-supported number in the whole ACP model (erratum finding) — same gap, confirmed at a different altitude. |

**Tensions (unresolved, routed to Beth/Meaghan/Nicole):**
- **AF-T1** — the demand asymmetry (ranks #2, never volunteered): JTBD reads it as a latent job; Disruptive Innovation reads it as an already-expected threshold. Not reconcilable by analysis — determines investment level.
- **AF-T2** — the log: accountability artifact (design it first) or liability disclosure (test WTP first, because a well-designed log is a sunk cost if the business case fails)? A sequencing decision.
- **AF-T3** — the promotion criterion is both necessary (SDT: without it, users are stuck) and dangerous (a too-liberal one risks the missed-critical, probably-permanent trust loss). A risk-tolerance call, not a framework output.
- **AF-T4** — is the client-story sentence a signal-design problem (one artifact, backward-designed from the QBR feed) or does conflating the functional and social jobs create a surface that serves neither cleanly (two artifacts)? An information-architecture decision.

**Cannot-see roll-up:** the panel structurally cannot see the operator who lives in this agent daily. Every claim about the staged-autonomy ladder's UX, cognitive load, or felt-relief payoff is designed for a persona that exists only as an inference. This gap is not resolvable by more council — it requires the operator research the department's own research plan names as its top-priority next step and has not yet run.

### A2 · Experience-frameworks map (5Es · Kumar 5 Human Factors · AEIOU · 4As)

**5Es read:** Enter (per-client tuning before any suppression fires) and Extend (the autonomy-ladder advancement mechanism) are load-bearing and both entirely `[?]`/`[A]`. Engage (the log) is the visible product but its design is `[A]` throughout — undefined data model, undefined visual encoding.

**5 Human Factors read: Cultural is the sleeper.** The vigilant-sentinel identity is at higher risk here than in the QBR offering because this agent *acts*, not just reports. Emotional response to a near-empty alert queue is unmeasured — it may not read as relief; it may read as anxiety ("what if it suppressed something it shouldn't have?").

**AEIOU read: Users is the critical blank.** The tech/dispatcher who reviews the log daily is entirely unstudied, and this agent's primary user is not the buyer who ranked it. The escalation pathway into the tech's existing workflow (Interaction 3) is the most load-bearing undesigned interaction — if a critical escalation arrives looking like every other N-central alert, the tech has no way to distinguish it.

**4As read: Affordability is the hardest cell.** Strongest free-in-RMM expectation of the five agents, no WTP data exists anywhere in the corpus. Accessibility's owned-telemetry advantage (N-central) flips to a distribution ceiling for MSPs not on the N-able stack.

**Cross-department findings that apply directly to this agent** (per `experience-frameworks-map-four-agents.md`'s convergence section): the buyer-vs-user gap is universal across all four non-QBR offerings and is the single highest-priority research gap; the signal-format dependency (Finding 2) blocks this agent's Exit path identically to the other three; cultural identity risk intensifies along the interaction-class axis, and this agent (recommend-then-act) sits in the middle of that risk gradient — higher than report-only agents, lower than the live-facilitate Tabletop agent.

---

## CHANGELOG

- **2026-09-01** — First draft written from council testimony (2026-07-06 + erratum 2026-07-30), buyer demand data, and the four-agent experience-frameworks map — none of which had been assembled into a mini `ux.md` before. Replaces a prior attempt (same scope, same intended filename) that was drafted in a since-lost session transcript and never persisted to disk; nothing from that attempt was recovered or reused here — this is a from-scratch build. DIV-AF-01 logged (root-cause-correlation + daily-work-plan spec language vs. suppression-log-only research scope). §7 confidence score computed by grep against this file's own content, not self-reported — see the four-file reconciliation note.
