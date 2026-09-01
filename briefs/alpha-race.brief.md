---
feature: "Alpha RACE Customer Demo"
gate: 30
owner: "Beth"
problem_statement: "MDR analysts and customers are presented with individual detections in isolation even when they belong to the same incident; manual correlation across alerts, logs, and tickets increases investigation time, loses situational awareness, and produces redundant escalations — contributing directly to customer alert fatigue. (Verbatim, live Epic ADL-1838 / Story PUT-1166.)"
okr_objective: "Move Adlumin from an event-driven to an incident-driven analyst experience (Epic ADL-1838)"
okr_key_result: "[?] MDR analysts use Alpha incident stories daily, with measurable reduction in investigation time and improved prioritization (Epic Success Criteria — target value and timeframe undefined)"
counter_metric: "Demo credibility — synthetic data must not read as misleading; T1 fidelity must not read as unpreparedness; demo must not overstate customer-facing readiness the ticket explicitly defers"
idea_score: 15
evidence_sources:
  - "ADL-1838 Initiative (Open) — verbatim problem/function/competitive/positioning [CS: VERIFIED live ticket 2026-06-25]"
  - "ADL-1839 Epic (In Progress) — same body [CS: VERIFIED]"
  - "PUT-1166 Story (Done, Highest) — Phase 1 design scope, MDR-only [CS: VERIFIED]"
  - "Hilda customer feedback, March 2026 — quoted verbatim in ADL-1838 [CS: VERIFIED as ticket claim]"
status: "draft"

domain_model:
  entities:
    - name: "Incident"
      definition: "A unified record grouping related detections/anomalies that belong to the same underlying activity, replacing multiple isolated tickets. [R] ADL-1838 / PUT-1166"
    - name: "Detection"
      definition: "An individual event or anomaly (e.g. Defender threat-identification, response action) currently surfaced in isolation. [R] ADL-1838 (Hilda example)"
    - name: "Incident Story"
      definition: "The contextualized narrative for an Incident — what happened / what we did / next steps. [R] ADL-1838 AC, PUT-1166 incident summary"
    - name: "Score"
      definition: "Incident-level risk ranking produced by a probabilistic scoring model (not static alert severity). Model and weights undefined. [R] (exists) / [?] (mechanism)"
    - name: "Timeline"
      definition: "Ordered sequence of contributing signals shown in incident detail. [R] PUT-1166 AC"
    - name: "Entity"
      definition: "Standardized correlation field — user, host, source, destination — by which detections are tied together. [R] ADL-1838 Must-Have"
    - name: "Analyst"
      definition: "Primary MDR user investigating incidents; SOC Managers / MDR Leads secondary (observational, Phase 1). [R] PUT-1166 Primary Users"
  value_objects:
    - name: "Scoring Rationale"
      definition: "Transparent explanation of what contributed to the Score — Should-Have for analyst trust; which signals are shown vs hidden is a design deliverable. [R] ADL-1838 Should-Have, PUT-1166"
    - name: "Consolidation Ratio"
      definition: "alerts:incidents collapse expressing workload reduction (e.g. the illustrative '47→12'). Not present in any live ticket. [A]/[?]"
    - name: "Standardized Fields"
      definition: "user / host / source / destination — the normalized attributes enabling correlation. [R] ADL-1838"
  services:
    - name: "CorrelateDetections"
      definition: "Automatically groups related detections/anomalies into one Incident. [R] ADL-1838 Must-Have"
    - name: "ScoreIncident"
      definition: "Applies probabilistic scoring model to rank incident risk. Exists as requirement [R]; algorithm/weights undefined [?]"
    - name: "RankIncidents"
      definition: "Produces the ranked incident list (higher-risk above low-signal). [R] PUT-1166 In-Scope + AC"
    - name: "GenerateStory"
      definition: "Composes the Incident Story narrative (what happened / why important / what contributed to score). [R] ADL-1838 AC, PUT-1166"
  ubiquitous_language:
    - "RACE = Rapid Alert Correlation Engine [R] ADL-1838"
    - "Fuzz → Alpha → RACE = project lineage [R] access note"
    - "Incident-driven (vs event-driven) = the target experience shift [R] ADL-1838 verbatim"
    - "Incident notifications = consolidated Email/Ticket, replacing per-alert notifications [R] ADL-1838 Must-Have"
    - "MDR-only beta = Black Team → Blue Team; no customer exposure in Phase 1 [R] ADL-1838 Rollout, PUT-1166 scope"
---

# Alpha RACE Customer Demo — Tier 1 Concept Brief (verified-evidence revision)

**Fidelity level:** 30 / Tier 1 Concept (lo-fi, stakeholder/exec audience)

**World-claims evidence ratio:** 41.5% [A]+[?] — DOWN from the prior brief's 58% because the live tickets (ADL-1838 / ADL-1839 / PUT-1166, pulled 2026-06-25) converted the problem statement, Hilda evidence, and competitive insights from secondhand/assumed to first-party [R]. See math recount.

**Status for Tier 1:** Passes the T1 Concept gate — high assumption ratio is expected at this stage, and the *problem* half of the brief is now solidly sourced. Does NOT pass the <30% threshold for full build. The remaining assumptions are concentrated in Gate 3 (demo framing, success criteria) and in the unresolved **customer-demo-vs-MDR-only tension**.

> **Read this first — the framing tension.** Every live ticket scopes Phase 1 as **MDR-only, customer exposure explicitly OUT of scope** (ADL-1838 "Out of scope: customer-visible UI/notifications"; PUT-1166 "Out of Scope: customer-visible dashboards… usable + trusted by MDR Black Team *without customer exposure*"). This brief is for a **Customer Demo**. That is a claim the verified evidence does not support yet. Whether "customer" here means *internal stakeholder/exec* or *external customer* is unresolved and load-bearing — tagged [A]/[?] throughout. If external: the demo is ahead of the ticket scope and must be framed as a forward-looking concept, not shipped capability.

---

## Gate 1 — Problem: Is it real and sourced?

### The problem claim — now sourced
MDR analysts and customers see individual detections in isolation even when they belong to the same incident; manual correlation increases investigation time, loses situational awareness during active incidents, and produces redundant escalations/tickets/notifications that drive customer alert fatigue. [R] [CS: VERIFIED — verbatim, ADL-1838 Problem Statement]

"Adlumin rather than being an event-driven system needs to evolve to an incident driven experience." [R] [CS: VERIFIED — verbatim, ADL-1838]

### Evidence
- **Hilda (customer feedback, March 2026), verbatim in the Epic:** Microsoft Defender produces two events per malicious activity (identification + response action), each treated independently → one alert and one ticket each; "a single incident can produce three to four separate tickets… all tied to the same account, host, or IP." [R] [CS: VERIFIED as ticket claim]
- **SOAR-action noise (Hilda, verbatim):** "SOAR actions themselves are contributing to alert fatigue… every automated response such as isolation introduces new alerts that are operational rather than investigative." [R] [CS: VERIFIED as ticket claim]
- **Competitive insight — Arctic Wolf:** partial match; some alert grouping but relies heavily on rules. [R] [CS: VERIFIED — verbatim, ADL-1838]
- **Competitive insight — CrowdStrike:** some correlation within Falcon detections but not full incident story generation. [R] [CS: VERIFIED — verbatim, ADL-1838]
- **Prioritization Scorecard 2.57** is the *Initiative* score on ADL-1838 (Revenue M · Strategic H · Customer Demand H · Usage H · Competitive H · Marketing M · Billing L · DIR H), not a Jira priority field. [R] [CS: VERIFIED]

### What is NOT sourced (do not promote)
- **"47 alerts → 12 incidents"** and **"42min → 17min"** appear nowhere in the live tickets. They are illustrative seed numbers from the prior local prototype, not a sourced metric. [A]/[?] [CS: MEDIUM — internal-test claim, no ticket corroboration]. The prior brief tagged these [D]; that was an over-credit and is corrected here.
- **Alert fatigue as "emotional, not operational"** — the tickets describe fatigue operationally (ticket/notification volume). No ethnographic study of analyst emotional state. [A] [CS: UNKNOWN]
- **Whether the demo customer experiences this at the same scale Hilda described.** [?]

**Gate 1 assessment:** Strong. The problem, its mechanism (per-event → per-ticket, plus SOAR noise), the named customer source, and the competitive read are all first-party verbatim. The weakness is *quantification* — the consolidation and time-savings figures are illustrative, not measured. Sound enough for T1; for T2+, replace seed numbers with measured correlation-accuracy / consolidation-rate data (ADL-1838 calls for exactly this monitoring).

---

## Gate 2 — Right thing: Does this advance the mission?

### Theory of Change
Analysts (and eventually customers) see one ranked incident story instead of 3–4 isolated tickets → less manual correlation, faster investigation, fewer redundant escalations → reduced alert fatigue and better prioritization → differentiated MDR delivery. The first two links are ticket-grounded [R]; the leap to *customer conviction in a demo* is assumed. [A]

### What outcome moves (from the Epic, verbatim)
- One correlated incident instead of multiple tickets. [R]
- MDR analysts use Alpha stories **daily**. [R]
- Measurable reduction in investigation time + better prioritization. [R] (target value/timeframe undefined [?])
- Correlation quality independent of alert severity. [R]
- Validated/trusted in MDR-only beta, **no customer exposure**. [R]

The last bullet is the tension with this brief's title. The Epic's own success criterion is internal trust *without* customer exposure; a customer demo presupposes a step the ticket defers. [A]/[?]

### Mission alignment
Positioning row, verbatim: "This capability addresses top customer pain points and strengthens our multi-event correlation roadmap for differentiated MDR delivery." [R] [CS: VERIFIED]. Aligns with n-able's MDR differentiation strategy. [R]

### Competitive landscape — now partially mapped
Two competitors are named *with positioning* in the Epic: Arctic Wolf (rules-based partial grouping) and CrowdStrike (correlation without incident-story generation). [R] Alpha's claimed wedge is **probabilistic correlation + generated incident story**, which neither verbatim insight credits to a competitor. [R] The prior brief's broader set (Huntress, Sophos MDR, Red Canary) remains unmapped. [?] Differentiation *durability* (how fast competitors close this) is unknown. [?]

### Innovation classification
- Sustaining innovation (better MDR for current customers), not disruptive — vulnerable to fast follow by incumbents. [A]
- Early Adopter stage: internal beta + one named customer source (Hilda). [R for the stage inputs] / [A for the Moore mapping]

**Gate 2 assessment:** Directionally sound and now competitively grounded on two named rivals. The open risk is not "is this the right thing for MDR" (the tickets answer yes) — it's "is a *customer* demo the right artifact *now*," given Phase 1 defers customer exposure. [A]/[?]

---

## Gate 3 — Built right: Tested how? By whom?

### Current state
Gate 3 remains the weakest gate. PUT-1166 is Done as a *design* story (hi-fi Phase 1 designs, drill-in patterns, signal show/hide annotation) for an **MDR-only** audience. [R] No test plan for a *customer-facing* demo exists, and success criteria for "demo success" are undefined. [?]

### What "done" means — BLOCKING DECISIONS

**Decision 0 (new, load-bearing): Audience.** Is this demo for *internal stakeholders/execs* or *external customers*?
- Who decides: Beth + Raj Dhesi (PM Lead) + Sales/CSM.
- Why it blocks: PUT-1166 scopes Phase 1 MDR-only, customer exposure out of scope. An external-customer demo runs ahead of ticketed scope and must be explicitly framed as forward-looking concept. An internal stakeholder demo is consistent with the rollout plan. [A]/[?]
- If unresolved: demo's claims (shipped vs concept) are ambiguous and the fidelity banner means different things to different rooms.

**Decision 1: Demo content profile** (vertical, endpoint count, SOC maturity, fictional proxy). Seed data must be fictional — real names in source (James Moore, Raj Dhesi, Hilda) and the Figma URL never enter the prototype (Pete Hegseth test). [A]

**Decision 2: Success criteria** — one sentence: "This demo succeeds when ___." Undefined. [?]

**Decision 3: Incident story source** — real (anonymized) Alpha output vs Beth-designed synthetic. Credibility of the story depends on this. [A]

**Decision 4: Scoring transparency** — the Epic/Story require showing "what contributed to the score" and annotating which signals are shown vs hidden, but the actual probabilistic model is undefined. [R] (requirement) / [?] (mechanism) A demo cannot honestly explain a score whose model is unspecified.

### Test plan (designed, not run — all [A])
- Comprehension: show the ranked-incident + story screen cold to ~5 people; "what does this do?" ≥4 explain.
- Believability: show incident story to ~5 MDR analysts without disclosing synthetic; ≥4 say "looks like real output."
- Reading order: which section anchors first — Story / Timeline / Score.
- Scoring trust: can an analyst state *why* an incident ranked high from the rationale shown?

**Gate 3 assessment:** Not ready for a customer demo. The design exists for MDR; the *demo as customer artifact* has undefined audience, success criteria, story source, and an undefined scoring model it would need to explain.

---

## Failure modes

**1. Scope overrun (the framing tension realized).** The demo is shown to an external customer as if Phase 1 customer exposure exists. The ticket explicitly defers this. Customer expects a shipped customer-facing capability; reality is MDR-only beta. Detect: ask "who is in the room, and what do we claim is live?" If external + "live," stop. [A]/[?]

**2. Seed numbers read as data.** "47→12" and "42→17" present in the demo as if measured. They are illustrative and unsourced. A technical buyer asks for the methodology; there isn't one yet. Detect: grep the prototype for any number not traceable to a ticket — flag every one. [A]

**3. Unexplainable score.** Demo shows a probabilistic incident score but the model/weights are undefined ([?]). Analyst or buyer asks "why did this rank highest?" and the answer is hand-waved — directly undermining the Epic's own "transparent scoring / analyst trust" Should-Have. [R]/[?]

**4. Compression illusion.** T1 fidelity read as unpreparedness rather than as a probe. Appropriate for internal exec review; risky for external customers without explicit "early concept" narration. [A]

---

## What's missing

1. **Audience definition** — internal stakeholder vs external customer (Decision 0). [?]
2. **Probabilistic scoring model** — algorithm, inputs, weights, and what's shown vs hidden. [?]
3. **Measured consolidation + time metrics** to replace illustrative seed numbers. ADL-1838 calls for correlation-accuracy / consolidation-rate monitoring; results not yet available. [?]
4. **Success criteria** for the demo. [?]
5. **Incident story source** — real anonymized vs synthetic. [?]
6. **Competitive durability** beyond the two named rivals; Huntress / Sophos / Red Canary unmapped. [?]
7. **Economic buyer** at a target customer (CISO / IT Director). [?]
8. **Pricing model** — bundled in MDR vs upsell. [?]

---

## Council tensions (named, unresolved)

- **Scope vs Sales pull:** the tickets say MDR-only, no customer exposure; a customer demo is sales-motivated. Which governs the artifact's claims? [?]
- **Signal vs honesty (the seed numbers):** "47→12" is a powerful narrative anchor but is not measured. Anchor strength vs evidentiary integrity. [A]
- **Transparency vs undefined model:** the Epic demands explainable scoring; the model is undefined. The demo promises a virtue the system can't yet demonstrate. [R]/[?]

---

## Idea score breakdown (15/20)

- **Charter clarity:** 3/4 — problem, function, and scope are now verbatim from live tickets; audience of *this demo* still ambiguous.
- **Evidence strength:** 3/4 — problem half solidly [R]; quantification still [A]/[?].
- **Competitive position:** 2/4 — two rivals named with positioning [R]; durability and broader set unmapped.
- **Customer validation:** 2/4 — one named source (Hilda, verbatim); no ethnography, no demo test run.
- **Economic clarity:** 1/4 — no ROI translation, pricing, or economic buyer.
- **Execution readiness:** 1/4 — design Done for MDR; demo audience/success/story-source/scoring-model unresolved.
- **Resilience / failure modes:** 3/4 — four named with detection criteria; scope-overrun is the dominant risk.

**Total: 15/20** — up one from the prior 14, driven by the verified problem and competitive grounding; held back by Gate 3 and the audience tension.

---

## Routing (next moves)

1. **Beth + Raj + Sales** — resolve Decision 0 (audience) and Decision 2 (success criteria). These unblock everything.
2. **Raj / Eng** — define enough of the probabilistic scoring model to explain a score honestly; resolve Decision 3 (story source).
3. **Build** — fictional seed data only; flag every unsourced number ("47→12", "42→17") as illustrative on-surface; fidelity banner framed for the chosen audience.
4. **Spec re-run** after Decisions 0–4 resolve. Target <30% [A]+[?] world-claims for build.

---

## Meta-notes

- **Owner corrected** to Beth (Connor), not Schwindt.
- **Tag re-baseline:** problem statement, Hilda evidence, SOAR-noise, and both competitive insights moved secondhand/[A] → first-party [R] against ADL-1838 / PUT-1166. "47→12" and "42→17" demoted [D] → [A]/[?].
- **47% rule:** world-claims ratio counted fresh, line by line, in the math recount — 41.5%, not asserted. Prior brief reported 58%; the drop is the verified evidence doing its job.
- **Seed-data guard:** James Moore, Raj Dhesi, Hilda, the Figma URL, and Teams links stay in source docs — never in the prototype.

**End of brief.**
