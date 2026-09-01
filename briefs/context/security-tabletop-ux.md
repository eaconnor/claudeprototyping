---
artifact: ux.md
template_version: 1.0
kind: mini
parent: briefs/context/acp-ux.md
project: Security Tabletop (Harness, formerly ACP)
owner: Beth Connor
work_type: new-product
research_posture: researcher-backed
status: DRAFT
drift: FRESH
confidence_regime: PROCEED-FLAGGED
proceed_because: real council testimony + framework analysis exist for this offering (2026-07-06, corrected 2026-07-30) and are more useful synthesized into the parent's mini-doc register now than left scattered across scratch files — but this file surfaces a possible naming/scope collision with the canonical spec that should be read before anything else in it (see [AGENT GATE] note below and §5a DIV-TT-01)
machine_behavior: surface [CS:] tags visibly · do not claim validation · treat as Tier 1 Concept material only · do NOT assume this file and the canonical spec's "Security Tabletop" line describe the same product — confirm before building either
canonical_spec: acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (DEC-006 · §6 Functional behavior, platform default Coworker #5 "Security Tabletop")
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
  - briefs/council-mini-tabletop.md
  - briefs/council-mini-tabletop-erratum-2026-07-30.md
  - briefs/handoffs/next-claude-acp-coworker-dept-2026-07-06/product-experience-research.md
  - briefs/handoffs/next-claude-acp-coworker-dept-2026-07-06/experience-frameworks-map-four-agents.md
  - briefs/acp-qbr-analyst.brief.md (domain model — TabletopExercise, SignalToNarration)
  - scout_input/lewis-persona-library-cast-2026-07.md
  - scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md
  - acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (DEC-006, §6 platform-default table)
last_updated: 2026-09-01
---

# Security Tabletop — ux.md (mini)

**What this file is, in one breath:** everything we currently know about the fifth-ranked default ACP Coworker — and a flag that what "we know" may describe a **different product** than the one the canonical spec names. Every research source in this file's evidence base (council, buyer study, experience-frameworks map) describes a live, AI-facilitated breach-scenario exercise for a client's team. The canonical spec's own one-line description is vulnerability triage and CVE exposure mapping. Read §5a DIV-TT-01 before anything else — it may be the most consequential single finding in this file. Tags inherited from [acp-ux.md](acp-ux.md), not re-printed here.

Child of [acp-ux.md](acp-ux.md).

---

**Scorecard** — colors earned per `_ux-template/GUIDE.md` § Gate rubric, cited met/missing:

🔴 **Gate 1** (understand the problem) — met: 7-voice council + framework pass exist for the *live-facilitation-exercise* reading of this offering. Missing, and load-bearing: it is not settled that this research corpus and the canonical spec's "Security Tabletop" line are describing the same product — see DIV-TT-01. Whichever reading is correct, the room (client's staff) has never been studied.
🔴 **Gate 2** (right thing) — met: nothing settled, and cannot be settled until DIV-TT-01 resolves — the right thing depends entirely on which product this is. Missing: even within the live-facilitation reading, whether the product is the room (live facilitation) or the artifact (an async-producible report) is unresolved (TT-T1).
🔴 **Gate 3** (built right) — met: one domain-model entity (`TabletopExercise`) named in the canonical schema [CS: VERIFIED — acp-qbr-analyst.brief.md]. Missing: the live-facilitation interaction class has zero design precedent anywhere in the ACP research corpus — it is the only agent of the five that runs a meeting, not a pipeline.

---

## 1. The problem, and for whom — `Gate 1`

> **TL;DR:** two candidate products may be hiding under one name. Everything below §1's problem statement describes the live-facilitation reading, because that's what the research base actually contains — read the canonical-spec line as a live open question, not a confirmed frame.

**The job, per the canonical build spec:** "**CVE exposure mapping, remediation planning, vulnerability triage.**" `[CS: VERIFIED — FSN-83143 §6, platform-default Coworker table, priority score 5.00]` This describes a vulnerability-management reporting tool.

**The job, per every source in this file's research base:** "run breach-scenario exercises so the client's team practices before it's real — and produce the evidence insurers and compliance frameworks increasingly ask for" `[CS: VERIFIED — product-experience-research.md]`. This describes a live, AI-facilitated group exercise — "the only agent that runs a meeting, not a pipeline" `[CS: VERIFIED — product-experience-research.md, "live-facilitate" interaction class]`. Nothing in the 7-voice council, the buyer-demand study, or the experience-frameworks pass mentions CVE data, vulnerability scanning, or exposure mapping. **This file describes the second product**, because that is the only one any research touches. See Divergence Log (§5a), DIV-TT-01 — flagged as the single most consequential open item in this file, not a routine spec-drift note.

**Demand signal:** forced-rank #5 (mean **4.95** per the corrected council reading `[CS: VERIFIED — council-mini-tabletop.md erratum note: "corrected positions... forced-rank #5 (mean 4.95). Both cuts hold."]`; the canonical spec's own table lists **5.00** for this row `[CS: VERIFIED — FSN-83143 §6]` — a small, stale discrepancy this file does not silently import, per the 47% rule). Cumulative #4 (19 total, 4.8 avg/mention, lowest per-mention intensity in the study, named by 4 of 8 respondents) `[CS: VERIFIED — product-experience-research.md ranking tables]` — broad but shallow: as many people named it as named Incident Response Analyst, but nobody championed it hard.

**Cast — who this is actually about:**

| Who | Role in this story | Evidence quality |
|---|---|---|
| **The buyer respondents** — 4 of the n=8 pool, all security-sophisticated (CISO/Director, VP Technology, VP Strategy, Director Cybersecurity/CISO roles) `[CS: VERIFIED — brief Gate 1 role descriptions]` | Named the job, but with the lowest intensity in the study. These are buyers who already know what a tabletop is and likely already run or buy one — not MSPs who can't afford it. This matters for the sustaining-vs-disruptive read (Appendix A). | `[CS: VERIFIED — directional, not projectable]` |
| **The MSP facilitator** — vCISO or senior security role who runs the exercise | The person the coworker scaffolds. Persona library's closest fit: `vciso` (fractional CISO — "most senior *strategic* persona; fits Coworkers like QBR Advisor and Security Tabletop where the output needs to be board-ready") `[CS: HIGH fit, named explicitly for this offering — scout_input/lewis-persona-library-cast-2026-07.md]`. **Never interviewed about running an AI-facilitated exercise specifically.** | `[CS: MEDIUM]` — role fit is well-sourced; the AI-facilitation experience itself is `[?]` |
| **The client's team in the room** — owner, CFO, IT lead, non-security staff | The primary experience recipients of the live exercise. **Entirely unstudied** — the dominant blind spot named by every voice in the council. Whether they engage more or less with an AI-present facilitator, whether a grounded scenario feels threatening rather than instructive, is unknown. | `[?]` |
| **The insurer or auditor** — third-party consumer of the tabletop report artifact | The hypothesized billable anchor. No insurer or auditor requirement is sourced anywhere in this corpus — confirmed absent even after the erratum's 11 new source files were checked directly. | `[A]` throughout — the entire insurer/auditor value hypothesis rests on zero sourced requirements |

**4A's** (for the MSP facilitator — the persona this agent is actually built to serve; `[?]` where unsourced, not invented):

| Persona | Ambitions | Attitudes | Actions | Anxieties |
|---|---|---|---|---|
| **MSP facilitator / vCISO (candidate fit — unconfirmed)** | `[?]` — no first-person evidence. vCISO deliverables broadly include compliance readiness assessments and security-awareness plans, which this exercise would extend `[CS: HIGH — scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md]`. | `[?]` — SDT analysis (council Voice 3) suggests the AI is a force-multiplier for this persona specifically (runs the scenario engine so they don't have to write the script), distinct from the client-team's more ambiguous experience of the same AI presence. Inference, not observed. | Configures the exercise (client, scenarios, participants), facilitates the live session with the coworker driving scenario sequencing, reviews and signs the resulting artifact. `[A]` | `[THIN]` — no data on whether facilitators feel credible or diminished running an AI-scaffolded exercise in front of a client. |

**Bias flag:** every claim in §1 beyond the two competing job descriptions is buyer-side, n=8, same pool as the rest of the department. The people the exercise is actually performed *in front of* — the client's team — have zero representation anywhere in this file's evidence base. `[WOBBLY]`

## 2. Journey / orienting map — `Gate 1`

> **TL;DR:** no experience map exists, and — unlike the other three offerings — there isn't even a comparable interaction-design precedent anywhere else in this department's research to borrow from. Live facilitation is a design class of its own.

- **Build coverage:** 0 built · 0 specced. One domain entity, `TabletopExercise`, is named `[CS: VERIFIED — acp-qbr-analyst.brief.md, "its output form and how it appears in a QBR section are assumed [A]"]`, with no field structure.
- **Four frontstage zones, one with zero precedent:** (1) pre-exercise setup, (3) debrief, (4) artifact production are variants of work the other three agents already do in some form. **(2) live session facilitation — an AI reading a room, managing discomfort, pacing humans in real time — has no design precedent anywhere in the other four agents' research.** `[CS: VERIFIED — council: "that zone has no design precedent in the pipeline"]`
- **The erratum confirms the raw material for grounded scenarios exists** — Adlumin's PowerShell Ensemble Model analyzes ~1 billion commands/week, and technique-level threat data (LOLBAS asset tables, EDR-evasion patterns) is cataloged and available `[CS: VERIFIED — scout_input/04-adlumin-lotl-capability.md; scout_input/02-living-off-the-land-technical.md]`. This answers "does the raw material exist" — it does not answer where the safe/useful specificity threshold sits, which is the actual kill question (TT-T2).
- **No insurer or auditor artifact requirement has been sourced anywhere** — checked directly against all 11 new erratum source files, confirmed still absent `[CS: VERIFIED — council-mini-tabletop-erratum-2026-07-30.md]`.

## 3. Four-angle view — see Appendix A

Full POEMS / Five Human Factors / Value Webs synthesis, plus 5Es and AEIOU, are in **Appendix A**. Build-relevant residue: **Social is the sleeper** — a tabletop is a room-level ritual, and an AI presence in that room changes the social dynamics in ways nobody has studied on either side (the MSP facilitator or the client's team).

## 4. Sustaining or disruptive — see Appendix A

Full analysis in Appendix A. In brief: the brief's own framing (grounded scenarios escape the "commodity PDF" floor) is a **sustaining** move — a better exercise for MSPs who already sell vCISO services. The genuinely disruptive read — democratizing tabletop access for MSPs/clients who currently can't afford a human vCISO to run one — is not the brief's framing, and the four respondents who named this offering are all sophisticated security buyers, not the underserved segment the disruptive read would need to test with.

## 5. Open items — assumptions · decisions · questions — `Gate 1 / Gate 2`

> **TL;DR:** DIV-TT-01 (§5a) gates everything else in this list — resolve it first. Riskiest-within-the-live-facilitation-reading second.

| Item | Type | Status | Owner |
|---|---|---|---|
| **Product identity — see DIV-TT-01.** Until resolved, every other row in this table describes only the live-facilitation reading and may not apply to whatever ships under this name. | decision (naming/scope) | 🔴 | Beth → Nicole |
| **Grounding specificity vs. disclosure risk** — a scenario specific enough to feel real may surface a real vulnerability in front of client staff not cleared to see it. The MSP's authorized disclosure event, not N-able's. No design answer exists; needs legal + insurer input before scenario-engine design begins. `[CS: VERIFIED — product-experience-research.md]` | assumption (evidence) → legal | 🔴 | Beth/legal, before any scenario-engine design |
| **Live facilitation vs. async simulation** — is the room the product, or would an async self-assessment (client works through scenarios on their own timeline, agent scores, MSP signs) produce an equivalent artifact without the unprecedented facilitation-design problem? Unasked and untested. | decision (product) | 🔴 | Beth/Meaghan/Nicole |
| **Insurer/auditor artifact requirements** — the entire "billable value lives in the compliance artifact" hypothesis rests on zero sourced requirements, confirmed absent even after 11 new erratum sources were checked directly. | question (evidence) | 🔴 | Beth (research — needs an actual insurer/auditor conversation) |
| **Target market: sophisticated vCISO buyer or underserved MSP?** The four named respondents are all buyers who already know what a tabletop is. If concept testing recruits the same profile, it validates the sustaining play by construction and cannot surface the disruptive one. | decision | 🔴 | Beth/Meaghan/Nicole |
| **Bundle dependency** — does this ship at all outside a vCISO bundle, or is a standalone tabletop tool stuck on the "commodity PDF" floor? The read-out hypothesizes bundle-only; no source confirms the bundle architecture itself. | decision | 🔴 | Beth (depends on department-level bundle decision) |
| **Signal format to the QBR narration layer** — `TabletopExercise` has no defined shape as a consumable object. Blocks this agent's Extend path identically to the other three offerings. | assumption (build-seq) | 🔴 | Beth/Meaghan/Eng |
| **The client-team research gap** — the people in the room during the exercise have never been studied by anyone. | question (evidence) | 🔴 | Beth |

## 5a. Divergence Log — vs. FSN-83143 (canonical) — `[SPEC DIVERGENCE]`

> Status is grep-checkable — count the emoji, don't self-report it.

| ID | Divergence | vs. spec | Status | Owner | Resolution |
|---|---|---|---|---|---|
| DIV-TT-01 | **This file's entire research base — 7 council voices, the buyer-demand study, and the experience-frameworks map — describes a live, AI-facilitated breach-scenario exercise for a client's team.** Zero mention anywhere in that corpus of CVE data, vulnerability scanning, exposure mapping, or remediation-planning-as-vulnerability-triage. | FSN-83143 §6, platform-default Coworker table, row 5: "**CVE exposure mapping, remediation planning, vulnerability triage.**" | 🔴 open | Beth → Nicole | This reads less like a research-vs-spec tension (the pattern in the other three offerings' Divergence Logs) and more like two different products sharing a name. Needs Nicole directly, urgently: does "Security Tabletop" in DEC-006 refer to the exercise this research describes, a vulnerability-management tool, or was the one-liner written before the research direction settled? Whichever it is, the *other* product has zero research behind it in this corpus. |

## 6. Problem → Goals → Tasks → Function — `Gate 3` (+ Gate 1/2 for steps 1–2)

**Steps 1–2 — design's live judgment, and gated by DIV-TT-01:**

1. **Wicked problem** — `[PENDING — Beth's call, and gated by DIV-TT-01]`. Within the live-facilitation reading: the exercise must serve two people in the room whose needs conflict — the MSP facilitator (force-multiplied by the AI) and the client's team (whose autonomy/competence experience of an AI-run exercise is entirely undesigned).
2. **Goals** — `[PENDING — Beth's call]`. No goal ratified. Cannot be usefully set until DIV-TT-01 resolves.

**Steps 3–4 — mostly `[PENDING]`, and the live-facilitation zone has no precedent to build against even once scoped:**

3. **Tasks** — Top Tasks candidates, `PROPOSED, confirm`, inferred not sourced, live-facilitation reading only: (a) MSP configures scenario set from client's actual stack (Adlumin + N-central); (b) MSP facilitates the live session while the coworker drives scenario sequencing and captures responses; (c) coworker generates a gap report + remediation slate from the session; (d) MSP reviews and exports a client-record and, hypothetically, an insurer/auditor-formatted version. `[A]` throughout.
4. **Function/feature structure** — `[PENDING]`. One domain entity (`TabletopExercise`) exists with no field structure; the scenario engine, the live-facilitation surface, and the artifact template all have zero function spec.

**Quality bar** — per parent [acp-ux.md](acp-ux.md) §6. No offering-specific override exists. One structural note from the council, unratified: the artifact should explicitly and permanently state that a completed tabletop is a record of practice, not a certification of coverage — "passed ≠ covered" — the sharpest liability framing of any offering in the department.

**Built-in tests** — none can be written yet. Candidate from council testimony: a disclosure-risk check on generated scenarios (does a grounded scenario reveal a real, unremediated vulnerability to non-cleared client staff) — no detection method designed `[?]`.

## 7. Confidence score — `cross-cutting`

`[SCORED 2026-09-01]`. Grepped, not self-reported: `[R]`+`[D]`+`[CS: VERIFIED]`+`[CS: HIGH]` = **20** vs. `[A]`+`[?]`+`[WOBBLY]`+`[THIN]`+`[CS: MEDIUM]`+`[CS: LOW]` = **16**, of 36 tagged claims. **Thin-or-unknown = 44.4%.** Note: this file is scoreable only against the product DIV-TT-01 describes as researched — a score here says nothing about the canonical spec's alternate reading, which has no evidence base to score at all.

## 8. Sources

- [`council-mini-tabletop.md`](../council-mini-tabletop.md) — 7-voice council, 2026-07-06
- [`council-mini-tabletop-erratum-2026-07-30.md`](../council-mini-tabletop-erratum-2026-07-30.md) — correction pass against LOTL/EDR threat-intel and Adlumin capability docs
- [`product-experience-research.md`](../handoffs/next-claude-acp-coworker-dept-2026-07-06/product-experience-research.md) — buyer demand rankings, per-agent "what good looks like"
- [`experience-frameworks-map-four-agents.md`](../handoffs/next-claude-acp-coworker-dept-2026-07-06/experience-frameworks-map-four-agents.md) — 5Es · Human Factors · AEIOU · 4As, Agent 4 section
- [`acp-qbr-analyst.brief.md`](../acp-qbr-analyst.brief.md) — domain model (`TabletopExercise`, `SignalToNarration`)
- [`lewis-persona-library-cast-2026-07.md`](../../scout_input/lewis-persona-library-cast-2026-07.md) — operator-persona candidate fit (`vciso`)
- [`vcio-vciso-industry-practice.md`](../../scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md) — vCISO deliverable practice
- [`FSN-83143_AI_Coworkers_in_ACP.md`](../../acp-core-main-3/Intent%20Specs/FSN-83143_AI_Coworkers_in_ACP.md) — canonical spec, DEC-006, §6 platform-default table — **the source of DIV-TT-01**

## 9. Mini-docs

This file has no children. Parent: [acp-ux.md](acp-ux.md).

---

## Appendix A — Framework analysis

> Everything below describes the live-facilitation reading of this offering — the only one any research touches. See DIV-TT-01.

### A1 · Council testimony summary (7 voices, 2026-07-06 + erratum 2026-07-30)

| Voice | Read |
|---|---|
| JTBD | Two jobs, different beneficiaries: the client team *practices* (job one, a preparation service); the artifact insurers/auditors want (job two, a documentation product). The billable trigger is probably the artifact, not the exercise — but no source confirms this, and pricing/interaction design pivot on which is right. |
| Kano | Broad but shallow (4.8 avg, lowest in the study, named by as many respondents as IR RCA). Likely a performance attribute — expected by sophisticated buyers, not a purchase driver — but the episodic cadence (quarterly/annual) may *understate* satisfaction while correctly reading excitement as low; no proper Kano instrument (asking "how do you feel with/without it") was ever run. |
| SDT | The live room is an autonomy event for everyone in it, and the agent changes it in undesigned ways. For the MSP: likely competence-supported (force-multiplier). For the client's team: could be competence-supported (AI as scaffolding) or competence-undermined (AI as unchallengeable authority) — design choice, not settled. |
| Service Blueprint | Four frontstage zones; zone 2 (live facilitation) is unprecedented and cannot be deferred to later build. The erratum found a general platform trust/audit topology (graduated trust, human-confirm defaults) but it doesn't say which of the four zones map to which trust level — the Tabletop-specific topology question stays open. |
| Value Chain | The chokepoint is the insurer relationship, and N-able doesn't own it — the artifact is accepted (or not) under format requirements N-able doesn't set, at a frequency an insurer determines. The MSP holds the margin and the liability; N-able is a tool vendor in that chain, priced accordingly, unless the bundle itself becomes the revenue unit (unconfirmed). |
| Disruptive Innovation | A sustaining move into a commodity position, aimed at sophisticated buyers who already know what a tabletop is — not the disruptive democratization play (bringing tabletops to MSPs/clients who currently can't afford a human vCISO to run one), which the brief doesn't frame and the respondent profile doesn't support testing. |
| Lean Startup | The scenario-grounding claim ("scenarios from the client's actual stack, not generic templates") is the riskiest assumption *and* the most dangerous one to fake in a demo — an MVP that fakes grounding with real stack labels on generic scripts teaches false confidence. The erratum confirms the raw technical material for grounding exists (Adlumin telemetry, technique libraries) — it does not resolve where the safe/useful specificity threshold sits, which is the actual kill question. |

**Tensions (unresolved, routed to Beth/Meaghan/Nicole):**
- **TT-T1** — live facilitation vs. async simulation: is zone 2 (the room) the product, or is the artifact the product? Three voices disagree and this can't be resolved until the billable job (JTBD) is confirmed.
- **TT-T2** — grounding specificity vs. disclosure risk: how specific is too specific? A legal and product-design question with no design answer in this corpus; needs legal + at least one cyber insurer before scenario-engine design begins.
- **TT-T3** — sustaining vs. disruptive target market: sophisticated vCISO buyer or underserved MSP? The voices don't agree on who a concept test should even recruit — testing with Nicole's existing respondent profile validates the sustaining play by construction.
- **TT-T4** — bundle dependency vs. standalone viability: does this agent ship at all outside a vCISO bundle? Confirmed as the likely hypothesis, not confirmed as an architecture, because the bundle itself isn't decided at the department level.

**Cannot-see roll-up:** the dominant blind spot is the people in the room during the exercise — the client's staff — never studied by anyone; the demand data is entirely buyer-side (MSP owners/VPs deciding whether to *sell* the service). The second blind spot: no source anywhere has sourced what insurers or auditors actually require in a tabletop artifact. The demand case for this offering (in its live-facilitation reading) is real and broad; the design case is entirely open.

### A2 · Experience-frameworks map (5Es · Kumar 5 Human Factors · AEIOU · 4As)

**5Es read:** Engage (the live session) is the unique design challenge — no other agent in the department runs a meeting, and the facilitation UX (MSP-facing vs. room-facing) has no prior work anywhere. Exit carries the most consequential unknown: insurer requirements are unconfirmed, and "passed ≠ covered" is the sharpest liability wall of any offering.

**5 Human Factors read: Social is the sleeper.** A tabletop is a room-level social ritual; the coworker's presence changes that ritual's dynamics in ways nobody has studied on either side of the room. The facilitation split-attention problem (managing the room *and* tracking scenario state) is a cognitive design challenge unique to this agent. Emotional scenario calibration — hard enough to be meaningful, achievable enough to leave participants with agency — is named as the most consequential unanswered design question in the whole department's experience-frameworks pass.

**AEIOU read: Activities (live facilitation, phase 2) has no design precedent anywhere in the other agents.** Objects (the `ScenarioSet`'s grounding in real client config) is the differentiating object and the hardest to build — it's also where TT-T2's disclosure risk lives. Users: the client participants are the primary experience recipients and are entirely unstudied.

**4As read: Affordability is structurally the best of the four non-QBR agents** — it escapes the free-in-RMM ceiling because it's a professional-services artifact, not a monitoring feature — but only if the compliance/insurer value holds, which is unconfirmed. Accessibility bifurcates cleanly on scenario quality: generic scenarios are accessible but commodity; grounded scenarios are differentiated but narrow (require Adlumin + N-central, and the MSP needs facilitation capability it may not have).

**Cross-department findings that apply directly to this agent:** the buyer-vs-user gap (Finding 1) applies here at its sharpest — this is the only agent where the "user" is arguably two separate unstudied groups (the MSP facilitator and the client's team) simultaneously. Cultural/social identity risk (Finding 3) is named as intensifying along the interaction-class axis, and live-facilitate is explicitly named as the *highest*-risk tier of the whole department, because the MSP's professional identity as a facilitator is performed live, in front of a client room, with no way to edit or retract before it lands.

---

## CHANGELOG

- **2026-09-01** — First draft written from council testimony (2026-07-06 + erratum 2026-07-30), buyer demand data, and the four-agent experience-frameworks map — none of which had been assembled into a mini `ux.md` before. Replaces a prior attempt (same scope, same intended filename) that was drafted in a since-lost session transcript and never persisted to disk; nothing from that attempt was recovered or reused here — this is a from-scratch build. **DIV-TT-01 logged and flagged as the headline finding of this file**: the canonical spec's "Security Tabletop" one-liner (CVE exposure mapping / vulnerability triage) does not match any source in this file's entire research base (live breach-scenario facilitation). A forced-rank discrepancy (FSN-83143's 5.00 vs. the council's corrected 4.95) was also caught and not silently imported — 47% rule. §7 confidence score computed by grep against this file's own content, not self-reported — see the four-file reconciliation note.
