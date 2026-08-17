---
feature: "ACP Coworker Department — QBR as Narration Hub (five-product reframe)"
gate: 30
owner: "Beth"
problem_statement: "MSPs spend senior hours each quarter hand-assembling QBRs from 6-8 disconnected tools (PSA, RMM, security, backup, identity); no tool normalizes cross-stack today, and the current N-Zo experience is trusted-gapped on data completeness and exportable reporting. The five most-demanded AI coworker use cases from Nicole's study compose two industry roles MSPs sell as-a-service (vCIO + vCISO), with QBR as their shared narration/output layer — suggesting a coworker *department*, not five standalone products. [R][D]"
okr_objective: "Make the ACP coworker department the operating layer that lets MSPs be every client's trusted strategic advisor — starting with QBR as the narration hub that reports what the operational and security coworkers find."
okr_key_result: "70%+ of test partners say they would send the QBR draft with under 15 minutes of editing, AND can explain the provenance of every number, by end of council + first build cycle; AND at least one partner names a specific decision the QBR surfaced that they would not have had without cross-coworker signal aggregation."
counter_metric: "Trust must not degrade: zero partners report they would send a number they could NOT trace to a source; fabricated/ungrounded figures in draft output = 0. The department framing must not collapse into five disconnected products with a marketing wrapper."
idea_score: 14
evidence_sources: ["Confluence: BLIND INTERVIEWS ACP - June 2026 Study (Nicole Reineke, 8 demand interviews)", "Condens: N-Zo time-savings; N-Zo in preview; Empower 2026", "Web: ScalePad deep-dive (scalepad-deep-dive.md)", "Web: vCIO/vCISO industry practice (vcio-vciso-industry-practice.md)", "Web: M&A acquisition targets (ma-acquisition-targets.md)", "Round-2 competitive/market synthesis (round-2-findings.md)"]
status: "draft"

domain_model:
  capability_bands:
    - name: OperationalHealth
      tag: "[D]/[A]"
      note: "Three coworkers: Alert Flood Suppression · Continuous Env Health · Ticket Triage & Dispatch. All named in Nicole's study [D]; their grouping as a single 'band' is Beth's structural read [A]."
      coworkers: ["AlertFloodSuppression", "ContinuousEnvHealth", "TicketTriageDispatch"]
    - name: SecurityRisk_vCISO
      tag: "[D]/[A]"
      note: "Two coworkers: Incident Response RCA · Security Tabletop. Both named in study [D]; their composition as a vCISO band is a strategic frame [A]."
      coworkers: ["IncidentResponseRCA", "SecurityTabletop"]
    - name: Business_vCIO_Voice
      tag: "[D]/[A]"
      note: "One coworker: QBR (narration/output layer). QBR demand is [D]; its role as narration hub for the other bands is the core reframe [A]."
      coworkers: ["QBRReport"]

  roles:
    - name: vCIO
      tag: "[R]/[A]"
      note: "Outsourced senior IT strategy role; typical deliverables include QBR, technology roadmap, budget planning, compliance alignment [R — vcio-vciso-industry-practice.md]. Composed here by Operational Health band + QBR coworker [A — structural read]."
      composed_of: ["OperationalHealth", "Business_vCIO_Voice"]
    - name: vCISO
      tag: "[R]/[A]"
      note: "CISO expertise as a service for SMBs; deliverables include risk/gap analysis, compliance readiness, remediation, security-awareness plans [R — vcio-vciso-industry-practice.md]. Composed here by Security/Risk band [A — structural read]."
      composed_of: ["SecurityRisk_vCISO"]

  entities:
    - name: Alert
      tag: "[D]"
      note: "Operational signal surfaced by Alert Flood Suppression coworker. Named in study, ranked #2 mean-rank [D]; its shape as an entity in the QBR narration is assumed [A]."
    - name: EnvHealthState
      tag: "[D]"
      note: "Continuous environment health signal from Env Health Monitor coworker. Named in study, ranked #4 mean-rank [D]; what it surfaces into the QBR is assumed [A]."
    - name: Incident
      tag: "[D]"
      note: "Security event entity owned by Incident Response RCA coworker. Named in study, ranked #3 mean-rank [D]."
    - name: RootCauseAnalysis
      tag: "[D]/[A]"
      note: "The RCA artifact produced by the IR coworker. Study names IR RCA as a demanded capability [D]; the RCA-as-entity structure and how it flows into QBR narration are assumed [A]."
    - name: TabletopExercise
      tag: "[D]/[A]"
      note: "Security scenario run by Tabletop coworker, ranked #5 mean-rank [D]; its output form and how it appears in a QBR section are assumed [A]."
    - name: QBRReport
      tag: "[A]"
      note: "The draft artifact the QBR coworker produces, composing signals from other coworkers into client-facing narration. Existence demanded [R]; structure/composition fields are assumed — nobody described the report object directly."
    - name: Customer
      tag: "[R]"
      note: "End-client the QBR is about. Whole-portfolio reporting named by Jonathan/Matt [R]."
    - name: Integration
      alias: "DataSource"
      tag: "[R]"
      note: "PSA/RMM/security/backup/identity connectors. 6-8 tools named as the feasibility watch-item [R]. Specific vendor set [D] (Matt's stack verbatim: NinjaOne, HALO, Axcient, Rubrik, Veeam, ThreatLocker, Rapid7, Proofpoint)."
    - name: DataPoint
      tag: "[A]"
      note: "A single number with source provenance. Provenance requirement grounded [D] (trust-through-transparency, Empower); the DataPoint-with-source object model is assumed."
    - name: AudienceMode
      tag: "[D]"
      note: "Executive vs technical framing. 'Narrative reports for executives' corroborated at Empower [D]; the mode SELECTOR as UI is assumed [A]."
    - name: Gap
      alias: "MissingData"
      tag: "[A]"
      note: "Missing/incomplete data surfaced as a gap-not-error. Data-completeness IS a named gap [D]; treating it as a first-class flagged entity in the UI is Beth's design move [A]."

  value_objects:
    - name: SourceProvenance
      tag: "[D]"
      note: "Which tool or coworker a DataPoint came from + freshness. Transparency demand [D]; shape assumed [A]."
    - name: TrustState
      tag: "[A]"
      note: "Whether a QBR section is send-ready / needs-review / gap-blocked. Design construct, unsourced."
    - name: PrepTimeBaseline
      tag: "[?]"
      note: "Hours saved. Direction hours->minutes [D]; exact 90->17.5min/80% behind JS-gated Condens report body [verify-in-browser]; Vitali's 15-20hr [?] (public sources say 3-8 hrs / 4-6 hrs typical [CS: MEDIUM])."
    - name: CapabilityBand
      tag: "[A]"
      note: "Grouping construct: Operational / Security-vCISO / Business. The band structure itself is the core strategic reframe — no interviewee described it this way [A]."
    - name: SignalProvenance
      tag: "[A]"
      note: "Which coworker (and which underlying tool) a QBR section's data came from. Extension of SourceProvenance to the coworker layer [A — design construct]."

  services:
    - name: SignalToNarration
      tag: "[A]"
      note: "The hub mechanic: operational + security coworkers emit typed signals (Alert, EnvHealthState, Incident/RCA, TabletopExercise); the QBR coworker consumes them and composes client-facing narration + a decision ask. The mechanic is the core architectural [A] of the department reframe — no interviewee described a signal pipeline; they described wanting a QBR that 'just knew' the whole stack."
    - name: PullData
      tag: "[R]"
      note: "Ingest from 6-8 tools. Deepest integration set of any coworker = the study's named risk [R]."
    - name: NormalizeCrossVendor
      tag: "[R]"
      note: "Reconcile across PSA+RMM+security+backup. Demanded ('holy grail', Kenneth) [R]; no public tool does it today [D-absence, WOBBLY — absence-of-advertising, not absence-of-existence]. Hardest service; feasibility watch-item."
    - name: GenerateDraft
      tag: "[D]"
      note: "Produce the QBR draft. Report-generation time savings verified in direction [D]."
    - name: FlagGap
      tag: "[A]"
      note: "Surface missing data as a gap, not an error. Core to the trust thesis but the behavior itself is assumed."
    - name: AdaptToAudience
      tag: "[D]"
      note: "Reframe for exec vs technical. Narrative-for-executives corroborated [D]; the interaction model is assumed [A]."
    - name: EditReport
      tag: "[A]"
      note: "Human review/edit of sections. Step-3 hypothesis, unsourced."
    - name: Export
      alias: "Publish"
      tag: "[D]"
      note: "Exportable reporting named as a top gap twice (Condens #2, #3) [D]."
    - name: DriveDecision
      tag: "[A]"
      note: "Surface a priced opportunity slate / single decision ask at the end of the QBR. The 'driving decisions' JTBD is synthesized from cross-industry QBR-agenda analysis [CS: MEDIUM — round-2 synthesis]; the specific decision-ask mechanic is assumed [A]."

  ubiquitous_language:
    - term: "QBR"
      tag: "[R]"
      note: "Quarterly Business Review. Jonathan reframed SBR->QBR; QBR is the pinned term."
    - term: "Coworker"
      tag: "[R]"
      note: "ACP framing — AI coworker, not tool/agent. From the study's own ranking tab."
    - term: "department"
      tag: "[A]"
      note: "The five coworkers operating as a coherent unit, not five standalone products. Beth's structural reframe — no vendor or interviewee used this term."
    - term: "narration hub"
      tag: "[A]"
      note: "QBR coworker's role: consuming operational + security signals and composing client-facing narrative + decision ask. Analogy grounded in ScalePad's 'hub + feed it signals' architecture [CS: HIGH — ScalePad primary]; the specific hub behavior for QBR is assumed [A]."
    - term: "draft"
      tag: "[A]"
      note: "Output is a draft the human owns and sends, never auto-published. Autonomy-gated posture is [R]; calling the artifact a 'draft' is the design choice [A]."
    - term: "gap-not-error"
      tag: "[A]"
      note: "Missing data framed as a gap to fill, not a system failure. Beth's trust-language move."
    - term: "audience mode"
      tag: "[D]"
      note: "Exec vs technical narrative framing [D corroborated]."
    - term: "signal"
      tag: "[A]"
      note: "Typed output from an operational or security coworker (Alert, EnvHealthState, Incident/RCA, TabletopExercise) that the QBR coworker consumes. Analogy from ScalePad's suite language [CS: HIGH]; how N-able's coworkers would emit signals is assumed [A]."
---

## Readiness note (read first)

This brief is **NOT uniformly ready** — and that is the honest signal. The **demand/problem layer (Gate 1) is well-sourced** (Nicole's 8-interview study + Condens + round-2 competitive research). The **department/hub architecture (Gate 2) is a strategic [A]** — well-reasoned from evidence, not invented from air, but no interviewee described a coworker department and no competitive analog maps perfectly. The **experience/test layer (Gate 3) is almost entirely [A]** because nobody described the UI directly in any source and the department reframe introduces new experience surfaces (the signal→narration handoff, the cross-coworker QBR section) that are entirely hypothetical.

Three-number honest math (see acp-qbr-analyst-math-recount.md for line-by-line):
- **World-claims [A]+[?]: hard 26% (10/39) · conservative 31% (12/39)** — the LEAD numbers (recounted 2026-07-06 after the full ranking tables landed; one new [D] row added). The conservative figure (same discipline the prior brief used to report 24%) **crosses the 30% line for the first time.** The swing is entirely the four new department-composition [A] claims: strip them and the conservative figure reverts to 23% (8/35) — in line with the prior brief's 24%.
- **Test-plan readiness [A]+[?]: 95% (19/20)** — the experience layer. Does not pass. This is why gate = 30, not higher.
- **Inflated [A]+[?]: 53% (31/59 substantive, conservative) · 60% (42/70 incl. meta-unknowns)** — over 30%, driven by the experience layer plus the new strategic [A] composition claims.

**Fidelity: Tier 1 · Concept — with the >30% flag NAMED, per protocol.** The world evidence for QBR demand is as strong as before. What pushed the conservative number over the line is the department composition itself — four strategic bets no interviewee described. Per the three-gate discipline: >30% [A]+[?] means the brief is not clean-ready; we name it and proceed *because naming the composition as the thing to stress-test is this round's purpose.* The council's fire is aimed exactly at those four claims.

**Round-2 update (2026-07-06):** a 16-question competitive/market deep-dive is folded in — see Gate 1b. Headline shifts: ScalePad reframed the category to an "operating system" (don't fight on "better QBR"); deck-gen is commoditizing; normalization + decision-driving are the defensible races; plug-in-via-MCP is a real path; buying Gradient could acquire the normalization moat. Decision-owners: Beth, Meaghan, Nicole.

---

## Gate 1 — Do we understand the problem? (real & sourced)

Strongest gate. The problem is real and sourced, not assumed.

### QBR demand (the primary evidence)
- QBR Analyst ranked **#1 of 9 coworkers (cumulative table)**: total 31, avg 7.8/mention, 4 of 8 interviews, ranked #1 three times, volume 8/8, autonomy 8/8. [D] (study's Coworker Ranking tab, Nicole Reineke, n=8, June 2026 — directional, not projectable)
- Named by **Kenneth, Jonathan, Shawn, Matt** — actual roles: Principal Consultant/owner, VP of Technology, VP of Strategy (advises 200+ MSPs), Director of Cybersecurity/CISO. [R]
- The **feasibility watch-item is explicit and the study's own**: deepest integration set of any coworker, 6-8 tools (PSA, RMM, security, backup, identity). [R]
- **Autonomy-gated**: read-only diagnostics first; report generation is read-only so no autonomy concern for QBR specifically. [R]
- **Target buyer = larger side of SMB, not enterprise** (most-mature shops run their own control plane = displacement risk). [R]
- **Data trust + exportable reporting are the top gaps** in the current N-Zo experience — corroborated twice (Condens #2 preview + #3 Empower). [D]
- **Time savings run hours → minutes for report generation.** [D] Exact "90min → 17.5min / 80%" is [D, verify-in-browser] — behind a JS-gated Condens report body; do NOT quote as [R].
- **No tool normalizes cross-stack today** (PSA+RMM+security+backup+identity). Cognition360 = ConnectWise-only; BackupRadar = backup only. [D-absence] — this is absence-of-evidence [WOBBLY], proof no one advertises it, not proof of a void.
- **"Build it into the RMM" caps WTP** — buyers expect Alert Suppression / Env Health as features of tools they already own. [R] — named explicitly in the study.

### The second ranking (the department reframe's evidence base)
Nicole's study yields a second cut: **mean-rank (lower = better, n=8 qual — DIRECTIONAL, NOT projectable, same discipline applies):**

| Rank | Coworker | Mean-rank |
|---|---|---|
| 1 | QBR: Business reporting | 2.90 |
| 2 | Alert flood suppression | 3.23 |
| 3 | Incident Response RCA | 4.00 |
| 4 | Continuous env health | 4.18 |
| 5 | Security Tabletop | 4.95 |
| 6 | Ticket Triage & Dispatch | 5.18 |

[D] directional — n=8, Nicole Reineke, June 2026. Method: mean-rank from structured qual scoring, NOT a survey. **A structured-qual score that looks quant is still n=8. Needs independent quant triangulation before any claim of representativeness.**

**The full cumulative top-5 (corrected 2026-07-06 from Nicole's table — the earlier packet carried only the QBR row):**

| # | Use case | Mentions | Total | Avg/mention | #1 votes | Named by |
|---|---|---|---|---|---|---|
| 1 | QBR Analyst | 4 | 31 | 7.8 | 3 | Kenneth, Jonathan, Shawn, Matt |
| 2 | Incident Response RCA | 4 | 26 | 6.5 | 1 | Vitali, Jonathan, Vikram, Mike |
| 3 | Ticket Triage & Dispatch | 3 | 25 | 8.3 | 2 | Vitali, Derek, Vikram |
| 4 | Security Tabletop Simulator | 4 | 19 | 4.8 | 1 | Kenneth, Jonathan, Shawn, Matt |
| 5 | Employee Onboarding | 3 | 16 | 5.3 | 0 | Kenneth, Matt, Vikram |

**QBR tops BOTH ranking cuts** — the one result the two methods fully agree on. **Below #1 the cuts DIVERGE:** Ticket Triage is #3 on mentions but #6 (5.18) on forced rank; Employee Onboarding makes the mentions top-5 and misses the forced-rank top-5 entirely; Alert Flood Suppression and Continuous Env Health do the reverse. Same n=8, two methods, two lists. Cross-metric consistency holds for QBR only — it does not multiply the n or make anything projectable. Tag: [D] directional, needs quant triangulation. [WOBBLY — single study, single researcher, small n]

**"Demand's center of gravity is security operations" is CUT-DEPENDENT (corrected 2026-07-06):** on the forced-rank cut, 4 of the top 5 are security-flavored; on the mentions cut it is 2 of 5 (IR RCA, Tabletop), plus Ticket Triage (ops) and Employee Onboarding (neither band). What survives both cuts: **the security pair (IR RCA + Tabletop) is the only band fully present in both top-5s.** That is real, and weaker than the 4-of-5 framing the prior draft carried. [D] — from the rankings / [A] — the interpretation, now explicitly cut-dependent.

**Employee Onboarding is the composition's loose end.** It makes the mentions top-5 (Kenneth, Matt, Vikram; zero #1 votes; lowest intensity at 16) and fits none of the three bands. Either the band model earns an "and also" lane or this names the model's boundary — a data point for failure mode 6 (five products in a trenchcoat). [D]

**What the data does NOT tell us (name it):** the ranking reflects buyer/economic-decision-maker preferences (owners, VPs — "would you pay?"). The daily **user persona** — the vCIO/analyst who'd operate these agents — was **not studied.** [?]

### Corrections baked in (do not repeat these as fact)
- **ScalePad "displacement window" is SHAKY.** Lifecycle Manager X is the NEW top tier ScalePad is *selling* (launched Aug 2025), not a discontinued product. Lifecycle *Insights* is the legacy product with no announced EOL. The displacement-urgency framing is **[A]/[?], not [R]** — Beth to reconcile with Kenneth's account.
- **"~30% AI efficiency"** from VC rollups = **[?] FABRICATION RISK.** No public source attributes 30% to STP/Titan/Treeline. Do not state as fact.
- **Kenneth's "$300+/user/month"** = **[?]** respondent-reported; ScalePad publishes no verified per-user pricing (vendor page: Pro $250/mo base; aggregator conflict: $149/mo — unresolved, needs sales quote).
- **Vitali's "15-20 hours"** = **[?]** respondent-reported; public sources say **3-8 hrs (4-6 hrs typical) [CS: MEDIUM — single blog]**. Name the range, don't pick the high end.
- Vendor spellings: **Axcient** (not Axient), **Rubrik** (not Rubric); Avanan is now Check Point Email Protection.

---

## Gate 1b — Competitive & framing reality (round-2 research, 2026-07-06)

Full synthesis in `round-2-findings.md`; sources in `scout/` (scalepad-deep-dive · vcio-vciso-industry-practice · ma-acquisition-targets).

- **ScalePad moved up a level.** [CS: HIGH] Own 2026 language: *"Five products. One operating system." / "The MSP operating system for stronger client relationships."* Lifecycle Manager = "the hub where client-facing work happens"; ControlMap/Backup Radar/Quoter/Cognition360 "feed it the signals." **Competing on "a better QBR" fights the wrong battle** — the real contest is the *operating layer around the client relationship.* A standalone QBR Analyst walks into a market where the category leader already reframed above it. [CS: HIGH — ScalePad primary source]
- **N-able's version would have a structural advantage ScalePad lacks:** ScalePad's signals come from asset-lifecycle data; **N-able's coworkers actually do operational + security work (N-central / N-sight / Adlumin)**, not just report on asset state. The signals would be richer. [A] — strategic inference; no interviewee confirmed this framing.
- **"Lifecycle management" is ScalePad's frame, not the industry's.** [CS: MEDIUM] Category is frame-contested: lifecycle mgmt (ScalePad) · technology alignment / Technology Success (TruMethods/myITprocess) · vCIO (role) · customer success (emerging). **N-able should pick a frame, not inherit ScalePad's.** Strongest open ground: **customer success / "Most Valuable Partner."** [A] — recommendation; decision for Beth/Meaghan/Nicole.
- **Deck-generation is commoditizing.** [CS: HIGH] ScalePad Copilot ("QBR decks in seconds," open beta on MCP June 15), Cassidy, Cast.app, Plus AI, DemandFarm all generate QBRs. **Do not race deck-gen.** The defensible races are cross-vendor **normalization** (the moat) and **decision-driving**.
- **The cross-vendor white space holds** across a wider field (10+ players checked): all are single-ecosystem or single-job. [CS: MEDIUM — absence, WOBBLY]
- **Plug-in is a real GTM path.** [CS: HIGH] ScalePad exposes a first-class MCP server + open APIs; **Rewst already integrates N-able N-central + N-sight** and normalizes ticket data. A QBR agent could *consume cross-vendor data via MCP/APIs* — the "works with these" play. Lowers the integration risk (#1) and fits the platform-embedded concept.
- **vCISO is the hotter adjacent market.** MSPs offering vCISO tripled YoY (21%→67%, Cynomi "State of the vCISO," n=200, pub. July 2025). [CS: MEDIUM, WOBBLY — vendor-sponsored study] This directional signal grounds the security-band thesis, but the tripling figure is vendor-published; treat as directional, not audited.
- **Buy-vs-build the moat:** acquiring **Gradient MSP** (cross-vendor normalization, *already Cove-integrated*, ~$8M raised) could close riskiest assumption #2 outright; **Liongard** is the deepest config-normalization alternative (~$34M, DarkLight acquired May 2025); **vCIOToolbox/CloudRadial** (already N-able partners) buy the delivery layer. [CS: HIGH facts / [A] fit] — decision for Beth, Meaghan, Nicole.
- **Q11 external comparison table placeholder.** Beth confirmed Q11 refers to an EXTERNAL table at a web link (not the internal scout file) — link not yet captured in the packet. To be mined and folded in when Beth supplies the URL. [?]

---

## Gate 2 — Are we making the right thing? (advances mission)

- Advances ACP mission: this is Nicole's **"clearest build-first AI coworker"** — most broadly demanded AND high-intensity. [D]
- **Objective:** make the ACP coworker department the operating layer that lets MSPs be every client's trusted strategic advisor — starting with QBR as the narration hub.
- **Key result:** 70%+ of test partners would send the QBR draft with <15 min editing AND can explain every number; AND at least one partner names a specific decision the QBR surfaced from cross-coworker signal aggregation.
- **Counter-metric:** zero partners would send a number they cannot trace to a source; ungrounded figures in output = 0; the department frame must not collapse to five products with a marketing wrapper.

### Value play (sharpened in round-2)
The core JTBD is **NOT "eliminate prep time"** (commoditizing — every agentic-QBR tool claims it). It is **"make me the client's trusted strategic advisor / Most Valuable Partner — and grow the account."** Time-savings is the entry hook; the value is **credibility + account growth.** The QBR is a *communication event whose real job is driving a decision* (the priced opportunity slate → one commitment). The agent's value is teeing up that decision with cross-vendor evidence the vCIO can defend. [CS: MEDIUM — synthesized from round-2 competitive + cross-industry convergence on customer-success + assessment-led growth; not sourced from a single primary]

### The department / operating-system play [A] — strategic
- **The composition thesis:** Operational Health coworkers (Alert Flood Suppression · Continuous Env Health · Ticket Triage) DO the work; Security/Risk coworkers (IR RCA · Tabletop) DO the security work; the QBR coworker NARRATES both to the client and DRIVES the decision. This resolves the old T4 fork (standalone vs platform) toward **Shape A (platform-embedded)** — the QBR coworker is naturally the reporting layer of a coworker platform; a standalone QBR under-reaches because it has no signals to compose. [A] — the entire composition is a strategic hypothesis. No interviewee described a department; they described wanting a QBR that "just knew" the whole stack.
- **The ScalePad analogy:** N-able's version is ScalePad's "hub + feed it signals" architecture — except the signals come from coworkers that actually do operational + security work, not just asset-lifecycle data. This is the structural advantage. [A — inference; CS: MEDIUM on the structural-advantage claim]
- **vCIO / vCISO composition:** the top five coworkers literally compose the two roles MSPs sell as-a-service. Operational Health + QBR = **vCIO capability** (strategy, roadmap, QBR). Security/Risk band = **vCISO capability** (IR, tabletop, posture). [R] — vCIO and vCISO as roles and their deliverables are well-sourced (vcio-vciso-industry-practice.md) [A] — that the top five coworkers map onto those roles is Beth's structural read, not sourced from interviews.

### The vCISO-bundle thesis [A] — strategic, needs council challenge
The security pair (IR RCA + Tabletop) is the only band present in BOTH top-5 cuts; the stronger "4 of top 5 security-flavored" version holds on the forced-rank cut only (see Gate 1 correction). vCISO is the hotter adjacent market (directional — Cynomi/vendor, treat as such). N-able has **Adlumin** as a native security signal source. A bundle of IR RCA + Tabletop + security posture as a **vCISO coworker** — with QBR narrating it — may be the bigger commercial play than QBR standalone. [A] — strategic inference; no interviewee described this bundle; the center-of-gravity premise is cut-dependent; Adlumin org-boundary implications are unknown [?].

**The central fork for council:**
> Is the department's spine **BUSINESS-led** (QBR hub drives the frame; ops + security feed it) or **SECURITY-led** (vCISO bundle is the commercial anchor; QBR narrates the security story to the client)? These are different product bets with different market motions, different buyers, different integration dependencies, and different competitive positions. This is a decision for Beth/Meaghan/Nicole. [A]/[?]

Tension to hold: **"build it into the RMM" undercuts WTP** [R] — buyers may expect QBR and Alert Suppression as features they already own. The department framing needs to clear that bar by demonstrating cross-coworker value that no single tool could provide alone.

---

## Gate 3 — Are we making the thing right? (tested how, by whom, success signal)

Weakest gate. Almost entirely [A]. Nobody described the UI. The department reframe introduces new experience surfaces that are entirely hypothetical.

- **Primary screen to test:** Step 2 — the draft-report landing (the trust moment). [A]
- **Secondary:** Step 3 — review/edit with audience-mode selector + section management. [A] partly; [D] on audience-narrative existence.
- **New surface (department reframe):** How does the QBR coworker show that a section's data came from a specific coworker (SignalProvenance)? How does an Alert that was suppressed three times this quarter appear in the QBR client narrative? How does a completed Tabletop Exercise appear as a security-posture claim in the QBR? These experience surfaces are entirely [A] — they exist because the department framing implies them, not because anyone described them.
- **Signal→narration handoff:** the handoff between an operational/security coworker's output and the QBR section that narrates it — what triggers it, what it looks like, who reviews it — is [A] design hypothesis.
- **Stimulus:** a QBR draft for a fictional mid-size customer (150 endpoints; ConnectWise + NinjaOne + SentinelOne + Cove) with ONE deliberate gap — backup status missing for 3 devices — PLUS (new in department reframe) at least one simulated coworker signal (e.g., Alert Flood Suppression resolved 47 alerts this week → appears as a QBR section claim). [A] design construct; vendors are real [D]; whether 150 endpoints / 4-vendor matches the target-buyer profile (larger SMB) is unknown [?].
- **Success signal:** partner says (1) "I'd send this with under 15 minutes of editing" and (2) "I can explain where every number and every coworker finding came from." [A — derived from [D] trust/transparency demand]
- **Tested by whom:** council pass this round (no build); then MSP test partners resembling the study roster. [?] — recruitment not yet planned.
- **What counts as done (this round):** the council has surfaced the holes in the Step-2 trust hypothesis AND in the department/hub architecture; [A] claims are converted into explicit testable questions. Not a working screen.

---

## Failure modes

### Carried from prior brief (QBR-specific)
1. **The gap reads as a bug, not a gap.** If Step 2 surfaces "backup missing for 3 devices" in a way that feels like the coworker failed, trust collapses at the exact trust moment. gap-not-error is an unsourced [A] bet.
2. **Provenance theater.** Showing source labels that partners can't actually drill into = fluency without accountability. The counter-metric ("can explain every number") fails silently if provenance is decorative.
3. **Normalization is where it dies.** NormalizeCrossVendor is the hardest service and the study's named feasibility risk. A demo that fakes clean cross-vendor data hides the one problem that determines buildability.
4. **"Build it into the RMM" undercut.** If partners see this as something N-central/Ninja should include, WTP caps and the coworker-department framing loses before it's tested.

### New — department-composition specific
5. **The hub narrates work the sub-coworkers got wrong.** If an Alert Flood Suppression coworker miscategorized a critical alert as noise, and the QBR coworker narrates "your environment was quiet this quarter," the error propagates to the client. The narration hub amplifies coworker mistakes as client-facing claims. The trust failure is invisible until the client finds the missed alert. [A — no coworker behavior has been tested; this is a structural risk of the hub mechanic]
6. **Five products in a trenchcoat.** The "department" framing may not cohere in product or in user experience. If the five coworkers don't share a signal format, a shared trust model, or a shared review surface, the department is a marketing frame laid over five disconnected agents. The test: can a partner navigate from "Alert Flood Suppression found something" to "it appears in my QBR" without a context break? [A — entirely untested]
7. **Security-led framing collides with Adlumin org boundaries.** If the vCISO-bundle thesis makes Adlumin the backbone of the security band, it imports Adlumin's org, integration, and roadmap constraints into the ACP coworker architecture. Whether Adlumin is available as a coworker signal source — or whether it runs as a separate product lane — is unknown [?]. This could be the biggest structural risk of the department reframe.
8. **QBR-as-hub under-reaches if the security band isn't built.** If only the QBR coworker ships at v1, it has no coworker signals to compose — it's just a single-coworker QBR generator, which under-reaches against ScalePad's operating system positioning. The department reframe only pays off if the bands ship together or the QBR coworker can consume signals from N-able's existing tools (N-central / Adlumin) directly, bypassing the need for the other coworkers to exist first. [A — staged-path question]

---

## What's missing (honest unknowns)

### Carried from prior brief
- The actual 4-step flow, trigger modes, and what specifically earns vs kills trust in the UI — **all [A].** [?]
- Exact time-savings figures (90→17.5 / 80%) — behind JS-gated Condens body. [?] Verify in browser.
- Test-partner recruitment plan and sample size. [?]
- Whether autonomy stays read-only at v1 or moves to write-with-approval. [?]
- How Gap is represented as a first-class object vs an inline note. [?]
- Reconciliation of Kenneth's ScalePad account vs public product roles. [?]
- Whether "150 endpoints / 4-vendor" stimulus matches the target-buyer profile (larger SMB) or is too small. [?]
- **Buyer-vs-user gap:** Nicole's study measured buyers/economic-decision-makers. The daily **user persona** — the vCIO/analyst who'd operate the agents — was **not studied.** [?]
- **Which frame do we choose** — customer success vs lifecycle vs tech-alignment vs vCIO? [?]
- **Build vs buy the normalization moat** — build or acquire (Gradient/Liongard)? [?] — decision for Beth/Meaghan/Nicole.
- **Quarterly vs continuous** — winning shape is the quarterly report or a continuous advisor (Cast.app pattern)? [?]

### New — department/hub composition unknowns
- **Does the signal→narration pipeline require the other coworkers to exist first?** Or can the QBR coworker pull signals directly from N-able's existing tools (N-central, Adlumin) and simulate coworker output without the full department being built? [?] — this is the beachhead question for the department reframe.
- **What is the signal format?** What does an `Alert` entity look like when it arrives at the QBR coworker? Is it structured data, a natural-language summary, a tool log? [A]/[?] — entirely undefined.
- **Adlumin as signal source: org-boundary implications.** Can Adlumin data flow into ACP coworkers without a separate product-lane decision? [?]
- **Is the vCISO bundle the right spine?** The security-led vs business-led fork (Gate 2) is unresolved. [?] — decision for Beth/Meaghan/Nicole with council input.
- **Q11 comparison table.** External web-link table, URL not yet captured. To be mined when Beth supplies it. [?]
- **Does the department framing require a shared operating surface** (a "department dashboard") or does each coworker operate independently and only the QBR is a shared output? [A]/[?]
- **Quant triangulation gap.** The entire demand case rests on n=8 qual (Nicole's study). What independent quant — MSP surveys, PSA/RMM usage data, N-able internal telemetry — backs the ranking? Until that exists, the second-ranking table is directional signal, not a validated finding. [?]

---

## Round-2 do-not-cite list (carry forward; do not state these as fact)
- "82% / 85% QBR retention stats" — no primary source traced.
- "~30% AI efficiency" (VC rollups) — **FABRICATION RISK.** Shawn named STP/Titan/Treeline as a threat; the 30% figure is unsourced.
- "Gartner: 70% of enterprise presentations AI-generated by 2026" — secondhand vendor attribution; **FABRICATION RISK.** Verify against Gartner before use.
- vCISO market "$1.06B→$1.48B by 2032" — no named research firm; **[CS: LOW].**
- ScalePad pricing conflict ($250/$125 vendor vs $149/$15 aggregator) — unresolved; needs a sales quote.
- Kenneth "$300+/user/month" — respondent-reported; ScalePad pricing conflict unresolved. [?]
- Vitali "15–20 hrs" — respondent-reported; public sources say 3-8 hrs. [?]
- ScalePad "displacement window" urgency — public record contradicts (LM X is ScalePad's new sell, not a sunset). [A]/[?]
