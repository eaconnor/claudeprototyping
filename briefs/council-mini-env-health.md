# Mini Council Testimony — Continuous Environment Health Agent
**Target:** ACP Coworker Department · Env Health agent only
**Brief sources:** acp-qbr-analyst.brief.md · product-experience-research.md · round-2-findings.md · council-testimony-department-reframe.md (erratum read)
**Mode:** 7 voices · full 6-field owensing · MEAL (cost tier corrected by parent — a 7-voice mini is not a FEAST)
**Standing disciplines:** n=8 directional only, never projectable; two ranking cuts are the SAME 8 people. Do-not-cite as fact: 82/85% retention · ~30% AI efficiency · Gartner-70% · Kenneth $300/user · Vitali 15–20hrs · ScalePad displacement window · vCISO $1.06B→$1.48B. Cynomi tripling = [CS: MEDIUM, WOBBLY-vendor].

---

## Voice 1 — Jobs-to-Be-Done — The job is ambiguous, and ambiguous jobs don't get hired

**Sign:** The stated job is "always-on posture watch — drift, degradation, config decay — caught before it becomes a ticket." That is THREE candidate jobs: (1) baseline deviation detection (functional), (2) prevention assurance (emotional — "nothing is rotting while I sleep"), (3) audit-readiness demonstration (social — "I can show clients their environment is managed"). [CS: VERIFIED — product-experience-research.md line 135–138]

**Hypothesis:** The hiring event for a prevention agent is invisible by definition. Nobody calls a vendor the day nothing broke. The functional job (drift detection) fires when the MSP tech discovers config decay during a manual check and thinks "I shouldn't have to find this myself." The emotional job (prevention assurance) fires when the MSP owner loses a client over something that should have been caught. These are different hiring contexts with different buyers and different feature shapes — and the brief treats them as one agent.

**Kill criterion:** If "healthy" is defined as "no open tickets right now," the job collapses into a dashboard that existing RMM tools already ship. A dashboard does not get fired; it gets ignored. The job only survives if the agent detects drift BEFORE a ticket exists — which requires a baseline model, not a current-state poll.

**Force level:** MUST — the job definition gates every downstream design decision. An undefined job produces an unshippable agent.

**Evidence:** "Fuzziest value proposition of the five" [CS: VERIFIED — product-experience-research.md line 137]; "dashboard nobody asked for — and dashboards are firmly in free-in-RMM territory" [CS: VERIFIED — product-experience-research.md line 138]; forced-rank #4 (4.18, n=8, directional) [CS: VERIFIED — brief Gate 1 ranking table]; ABSENT from cumulative mentions top-5 [CS: VERIFIED — product-experience-research.md table lines 30–38].

**Cannot see:** Whether any of the 8 study respondents described a specific hiring event for env health — a moment where config drift caused a real problem. The absence from the mentions top-5 suggests nobody volunteered it unprompted. That is a thin behavioral signal. [?]

**Strongest objection:** The brief names the functional job (drift detection) but smuggles in the emotional job ("caught 12 issues before they were outages") as the proof point — and that proof point is unfalsifiable. An unfalsifiable proof point is not a job; it is a wish. If the team cannot observe the hiring moment, they cannot design the firing moment — and every good JTBD starts there.

[ROI from this lens]
  Business: Unknown: the prevented-harm value (issues that didn't become tickets) is structurally invisible to the buyer. They never see the counterfactual. [?]
  User: Unknown: we don't know if the daily operator (the tech who'd review health findings) experiences relief or noise. The user persona was not studied. [?]

---

## Voice 2 — Kano Model — This agent is living in the wrong Kano quadrant

**Sign:** Env Health landed #4 on forced rank (4.18), absent from cumulative mentions top-5 — the weakest demand signal of the five. On Kano's grid, the product team must determine: is this a Basic (assumed, invisible until absent), Performance (more = more satisfaction), or Delighter (unexpected, outsized joy)? [CS: VERIFIED — ranking tables, product-experience-research.md]

**Hypothesis:** Continuous Env Health reads as a Basic that has been misclassified as a Performance feature. MSPs assume their RMM is watching environment health — the expectation is already baked in. When it works, nobody thanks you. When it fails and something breaks, they fire you. Basics don't score high on willingness-to-pay surveys; they score on churn-prevention. The forced-rank result (weak #4) is consistent with a Basic misread as a nice-to-have.

**Kill criterion:** If the product ships env health as a Performance feature with a visible score and trend line, and MSPs already expect their RMM to do this invisibly, it will read as noise-on-top-of-noise — they will not pay separately for a louder version of something they expect silently. The Kano misfiling kills pricing before the feature launches.

**Force level:** SHOULD — the Kano classification directly governs whether this is a standalone billable agent or infrastructure that makes the OTHER agents defensible.

**Evidence:** "Build it into the RMM" caps WTP — explicitly named in the study [CS: VERIFIED — brief Gate 1, line 177]; forced-rank #4, absent from mentions top-5 [CS: VERIFIED]; N-central/N-sight telemetry is N-able-owned [CS: VERIFIED — product-experience-research.md line 136].

**Cannot see:** Whether the 8 respondents would have named env health as EXPECTED (Basic) if asked directly. The forced-rank method forces a choice under constraint — it can elevate Basics above their natural stated preference. [WOBBLY — structured-qual scoring method]

**Strongest objection:** If this is a Basic, it should ship as table stakes infrastructure enabling the QBR narration ("your environment was stable this quarter — here's the drift we caught"), not as a standalone billable agent. Trying to monetize a Basic separately is the definition of the "dashboard nobody asked for" failure mode. The Kano read says: absorb this into the platform or lose the argument before it starts.

[ROI from this lens]
  Business: Churn-prevention value if classified as Basic — not separately monetizable; underpins retention of the MSP relationship. If classified Performance: Unknown — no willingness-to-pay data for env health specifically. [?]
  User: Relief (not joy) — the tech who currently discovers config decay in manual review has a pain point, but the pain is diffuse. Unknown magnitude. [?]

---

## Voice 3 — Self-Determination Theory — An always-on agent that the user can't see or tune is an autonomy trap

**Sign:** Env Health is interaction class "recommend-then-act" — its findings imply remediation actions. [CS: VERIFIED — product-experience-research.md line 106] The data source is N-central/N-sight telemetry, owned by N-able. The agent runs continuously, not on demand. The brief calls for noise discipline but does not describe who controls the sensitivity, what the review surface looks like, or how a tech would override a finding.

**Hypothesis (Autonomy):** A continuous background agent with no visible tuning controls is an autonomy eroder. The tech knows something is watching and acting, but cannot see the model or override the threshold. This creates a surveillance dynamic — the agent is in control, not the user. SDT predicts disengagement or distrust when locus of control is ambiguous. [CS: MEDIUM — Deci/Ryan, general SDT literature; application to AI agent design is inferred]

**Hypothesis (Competence):** If the agent catches drift the tech didn't notice, there are two possible competence reactions: (a) relief — "I'm better because the agent has my back"; (b) deskilling — "I used to catch these; now I don't know what I'm looking at." The brief assumes (a). There is no evidence base for which reaction the target operator population experiences.

**Hypothesis (Relatedness):** The "caught 12 issues before they were outages" claim is the relatedness sell — it connects the tech's work to client protection. But the unfalsifiability of the claim (the client never knew about the outage) also severs relatedness: the tech cannot tell the client a story with evidence, only an assertion. The social job (demonstrate care) is blocked by the prevention attribution problem.

**Kill criterion:** If the agent delivers findings without a tunable sensitivity layer, user override, and a clear "here is what I watched and why" log, SDT predicts the tech either ignores it (perceived as surveillance) or over-delegates (loses competence signal). Either outcome degrades the agent's operational value.

**Force level:** MUST for autonomy (tunable controls) · SHOULD for competence (deskilling risk) · OUGHT for relatedness (attribution narration).

**Evidence:** Staged autonomy ladder (recommend→approve→auto) described for Alert Flood but NOT specified for Env Health [CS: VERIFIED — product-experience-research.md lines 120–124]; "noise discipline" named but not designed [CS: VERIFIED — product-experience-research.md line 137]; user persona unstudied [CS: VERIFIED — brief Gate 1 line 208].

**Cannot see:** Whether the target operators (the techs who'd field env health findings) experience AI assistance as competence amplification or deskilling. This is the central SDT question for any always-on monitoring agent, and no one in the study represents this role.

**Strongest objection:** The brief identifies the noise discipline problem and then sets it aside with the word "and." SDT does not allow that. An env-health agent that cannot be tuned per-client (one client's warning is another client's emergency — the brief says this for Alert Flood [CS: VERIFIED — product-experience-research.md line 121] but does not extend it to Env Health) will produce the exact alert flood it is supposed to prevent. The autonomy problem and the noise problem are the same problem.

[ROI from this lens]
  Business: Unknown: if deskilling occurs, MSP headcount efficiency gains reverse — the tech who used to catch drift now misses what the agent missed because they stopped looking. Net efficiency could be negative. [?]
  User: Unknown: gap — the operator persona was not studied. [?]

---

## Voice 4 — Service Blueprint — The backstage is empty and the frontstage is a vibe

**Sign:** The frontstage promise is "drift, degradation, config decay — caught before it becomes a ticket." The backstage required to fulfill it: a per-client baseline model, a drift detection algorithm, a change-tracking mechanism, and a suppression policy that distinguishes signal from noise. None of these are specified in the brief. [CS: VERIFIED — product-experience-research.md lines 135–138; brief Gate 3 is "almost entirely [A]" per brief line 262]

**Hypothesis:** The frontstage promise ("healthy") is undefined without a backstage baseline. "Healthy" relative to WHAT? Options: (1) relative to the client's own historical state (drift-from-baseline); (2) relative to N-able's recommended config templates (compliance-gap); (3) relative to other similar-sized clients (peer-benchmarking). Each requires a different data model, a different backstage process, and produces a different artifact. The brief has not chosen.

**Hypothesis (Handoff visibility):** Env Health is "recommend-then-act." The handoff moment — when the agent's finding becomes a tech's action — is the critical service interaction. The brief names a "reviewable log" as the trust artifact for Alert Flood [CS: VERIFIED — product-experience-research.md line 123] but does NOT specify the equivalent for Env Health. The handoff is frontstage-invisible: the tech receives a finding with no audit trail of what the agent watched and how it decided.

**Hypothesis (Support processes):** The brief names "noise discipline" as a requirement but does not specify the support process: Who sets the suppression policy? Who reviews false positives? Who escalates to the client? These are backstage human roles that don't exist in the current brief — which means the agent's operational load lands somewhere unspecified.

**Kill criterion:** If the handoff surface (the agent's finding + the tech's review moment) is not designed before the agent ships, the frontstage is a black box. Techs cannot interrogate findings they don't understand; they either act on faith (autonomy erosion) or ignore the agent (operational waste).

**Force level:** MUST for baseline definition (no backstage = no frontstage) · MUST for handoff visibility · SHOULD for support process specification.

**Evidence:** Staged autonomy ladder missing for Env Health (named for Alert Flood, not extended) [CS: VERIFIED]; "what good looks like" requires "per-client baseline, drift detection with 'what changed and when'" [CS: VERIFIED — product-experience-research.md line 136]; no handoff artifact specified [CS: VERIFIED — Gate 3, brief line 261]; reviewable log named for Alert Flood but not Env Health [CS: VERIFIED].

**Cannot see:** Whether N-central/N-sight telemetry is structured enough to support per-client baseline modeling without significant data engineering. The data source is described as "owned" but not as "ready." [?]

**Strongest objection:** The brief treats the backstage as a data-source question ("N-central/N-sight telemetry makes the data side easy" [CS: VERIFIED — product-experience-research.md line 137]) when it is a process question. Owning the data is not the same as having a defined detection algorithm, a baseline model, a tuning mechanism, and a review surface. "Easy" on the data side is doing load-bearing work it has not earned.

[ROI from this lens]
  Business: Unknown: no backstage cost model exists — nobody has estimated the engineering cost of per-client baseline modeling versus the ticket prevention value. [?]
  User: Unknown: gap — review surface not designed; tech time saved (or created) by reviewing env health findings is unknown. [?]

---

## Voice 5 — Value Chain — This agent inserts into the wrong place in the MSP's value chain unless it feeds something downstream

**Sign:** In the MSP's value chain, environment health sits in the "manage" layer — ongoing service delivery, not client-acquisition or renewal. The managed services value chain: sell → onboard → monitor → remediate → report → renew. Env Health inserts at "monitor." [CS: MEDIUM — inferred from MSP operations literature; no single primary source mapped N-able's agent to this layer]

**Hypothesis (Margin effect):** Monitoring is the lowest-margin layer in the MSP value chain — it is the commodity the client assumes is included. An agent at "monitor" that does NOT feed "report" (QBR narration) and does NOT reduce "remediate" (ticket cost) has no visible margin effect. It operates invisibly and captures no value from its invisibility. The margin equation only closes if (a) prevented tickets reduce tech labor cost, or (b) env health findings feed the QBR narration and become billable-story evidence.

**Hypothesis (Chokepoint):** The telemetry data (N-central/N-sight) IS the chokepoint — and N-able owns it. That is the structural advantage. But the chokepoint's value is only realized if the agent's output is differentiated from what the RMM dashboard already shows. If env health outputs look like an RMM alert, the buyer correctly concludes it should be free in the RMM. The chokepoint advantage is neutralized by output commoditization.

**Hypothesis (Cannibalization):** The env health agent and the alert flood suppression agent compete for the same telemetry stream. If alert flood suppression suppresses noise from N-central, some of that suppressed noise may be env health signals. The two agents are not designed as a coordinated system — they are designed as separate coworkers drawing from the same data pool with no defined arbitration.

**Kill criterion:** If the env health agent's output does not explicitly feed the QBR narration layer as a named signal (EnvHealthState entity → SignalToNarration → QBR section), it is a monitoring tool with no downstream value capture. A monitoring tool without a report layer is a cost center masquerading as a product.

**Force level:** MUST for QBR feed (no downstream = no value chain closure) · SHOULD for suppression arbitration (define the boundary between env health signals and alert flood signals before both agents ship).

**Evidence:** EnvHealthState entity defined in domain model [CS: VERIFIED — brief line 44]; "what it surfaces into the QBR is assumed [A]" [CS: VERIFIED — brief line 45]; alert flood and env health both draw from N-central telemetry [CS: VERIFIED — brief domain model]; suppression boundary undefined [CS: VERIFIED — no specification in brief].

**Cannot see:** The margin math. What is the labor cost of a ticket the env health agent would have prevented? N-able does not publish this, and the study did not capture it. Without this number, the value chain closure is a narrative, not a calculation. [?]

**Strongest objection:** The brief describes env health as a standalone agent with its own value proposition when Porter's frame says it only has a value chain position if it reduces cost downstream OR creates revenue upstream. Neither is demonstrated. The only credible path is: env health signals → QBR narration → client trust → renewal/expansion. Strip the QBR feed and the agent has no value chain position above the free-in-RMM floor.

[ROI from this lens]
  Business: Unknown: ticket prevention value is structurally invisible without before/after ticket-count data per client. [?]
  User: Potential: tech time saved on manual config checks — unknown magnitude; user persona not studied. [?]

---

## Voice 6 — Christensen Disruptive Innovation — This is not a disruption; it is a feature trying to be a product

**Sign:** Env Health is #4 on forced rank, absent from mentions top-5. [CS: VERIFIED] The explicit threat is "free-in-RMM territory" — N-central and N-sight already surface configuration state. The question Christensen's frame asks: is this sustaining (a better version of what the RMM already does, for existing customers) or disruptive (a simpler/cheaper entry into a job that existing tools overserve or ignore)?

**Hypothesis (Sustaining read):** Continuous Env Health is sustaining innovation layered on top of the RMM monitoring layer. It does the same job (watch the environment) better (continuously, with baseline comparison, with narrative output). Sustaining innovation has a known fate in Christensen's model: incumbents win, because they own the customer relationship and the data. N-able IS the incumbent on N-central — so the sustaining play is safe, but it competes with itself. The RMM product team will always be able to absorb this into the platform faster than the ACP team can differentiate it.

**Hypothesis (Disruptive test — fails):** Disruptive innovation typically enters at the low end (simpler, cheaper, enough) or targets non-consumers (people who couldn't afford the full solution). Env health as designed does neither — it is MORE complex than the RMM dashboard (it requires a baseline model, drift detection, tuning), and it targets the same MSP operators who already have RMM monitoring. No non-consumer play is visible.

**Hypothesis (Who loses market position):** If env health ships as a differentiated agent, the loser is the N-able RMM product team — internal cannibalization. The alert that the ACP env health agent surfaces is the same alert the N-central monitoring module would have sent. The ACP team is disrupting the N-central alerts team. This is an org question, not a product question — and it is named nowhere in the brief.

**Kill criterion:** If the ACP env health agent does not do something the RMM categorically cannot do (baseline-modeling across MULTIPLE clients simultaneously, producing a QBR-feedable narrative rather than a point-in-time alert, correlating drift to remediation cost), it is a feature of the RMM wearing an agent costume. Christensen's frame says the costume does not survive contact with an incumbent who can ship the same feature for free.

**Force level:** SHOULD — the disruption frame is not the project's governing constraint, but it names the internal cannibalization risk that the brief treats as invisible.

**Evidence:** "Dashboards are firmly in free-in-RMM territory" [CS: VERIFIED — product-experience-research.md line 138]; "build it into the RMM" WTP cap explicitly named by study participants [CS: VERIFIED — brief line 177]; N-central/N-sight telemetry is N-able-owned [CS: VERIFIED]; internal org boundary unnamed in brief.

**Cannot see:** Whether there is an internal agreement (or conflict) between the ACP product team and the N-central product team about who owns the monitoring narrative. This is the org-structure question that determines whether env health is a product or a feature — and it is structurally identical to the Adlumin org-boundary question named in failure mode 7. [?]

**Strongest objection:** The demand signal (forced-rank #4, absent from mentions top-5) is consistent with buyers treating env health as expected infrastructure — a Basic, not a Performance feature. Christensen's frame agrees: infrastructure-level expectations do not become disruptive products; they become table stakes. The study participants ranked it below three agents they would explicitly pay for. That is the market telling you where this belongs.

[ROI from this lens]
  Business: Negative risk: if ACP ships env health as a separate billable agent and N-central absorbs the same capability as a platform update, the ACP agent has no revenue and has created internal confusion. [?]
  User: Marginal positive for the tech — fewer manual checks, unknown magnitude. [?]

---

## Voice 7 — Lean Startup Riskiest Assumption — Three testable bets, only one of which is the kill shot

**Sign:** The brief names four requirements for env health to be good: (1) per-client baseline, (2) drift detection with "what changed and when," (3) prevention the MSP can point at, (4) a crisp definition of "healthy." [CS: VERIFIED — product-experience-research.md line 136–138] These are not features — they are assumptions. Lean Startup asks: which one, if wrong, kills everything?

**Riskiest Assumption A — "Healthy" can be defined as a metric, not a vibe:** The brief names this explicitly as the kill condition ("it needs a metric, not a vibe" [CS: VERIFIED — product-experience-research.md line 138]). But the brief does not define the metric. Three candidates exist: prevented tickets, drift-from-baseline score, compliance-gap count. Each implies a different test. A team that starts building without choosing the metric will build toward a vibe and call it a score.

**Riskiest Assumption B — MSPs can observe prevention value:** "Caught 12 issues before they were outages" is unfalsifiable to the client and difficult to demonstrate even internally. [CS: VERIFIED — product-experience-research.md line 136] For an MSP to bill around prevention, they need a counterfactual mechanism — a before-state, a detection event, and an acknowledged avoided-cost. None of these are designed. If the MSP cannot point at prevented harm credibly, the entire value proposition collapses to faith.

**Riskiest Assumption C — Env health findings won't become alert flood:** The brief explicitly names this risk: "an env-health agent that pages constantly BECOMES the alert flood that agent #2 exists to suppress." [CS: VERIFIED — product-experience-research.md line 137] This is an architectural assumption — that noise discipline can be tuned. But the tuning mechanism is unspecified. If the default sensitivity is wrong and env health generates noise, the damage is not limited to env health — it degrades trust in the ENTIRE coworker department (the alert flood agent is now suppressing env health signals, and neither the tech nor the QBR can tell what was suppressed and why).

**Kill shot ranking:**
- Assumption C is the kill shot: noise discipline failure damages the department, not just the agent.
- Assumption A is the product-definition crisis: without a defined metric, no build is testable.
- Assumption B is the sales crisis: without a prevention attribution mechanism, no MSP can bill around this agent.

**Kill criterion:** Assumption C fires first, at the design stage, if the suppression policy for env health and the suppression policy for alert flood are not defined in relation to each other before either agent ships. They draw from the same telemetry. An undefined boundary between them is not a gap — it is a design conflict that becomes a production incident.

**Force level:** MUST for Assumption A (metric definition) · MUST for Assumption C (noise/suppression boundary) · SHOULD for Assumption B (prevention attribution mechanism).

**Evidence:** "Metric, not a vibe" [CS: VERIFIED — product-experience-research.md line 138]; "pages constantly BECOMES the alert flood" [CS: VERIFIED — product-experience-research.md line 137]; "caught 12 issues before they were outages" named as the prevention proof point [CS: VERIFIED — product-experience-research.md line 136]; Alert Flood and Env Health both draw N-central telemetry, suppression boundary undefined [CS: VERIFIED — brief domain model].

**Cannot see:** Whether there is a minimum viable metric test — a quick probe where an MSP is shown three candidate "healthy" definitions and asked to choose one and explain when it would fail. This test would resolve Assumption A in two days of research and is not in the research plan. [?]

**Strongest objection:** The Lean Startup frame says the env health agent has three riskiest assumptions and only one of them (Assumption A — metric definition) is on the research plan at all, and even then only implicitly. Assumption B (prevention attribution) is named as a proof-point problem and left open. Assumption C (noise coupling between two agents) is named as a risk and has no experimental design. The team is about to run three experiments without instruments for two of them.

[ROI from this lens]
  Business: Unknown for A (metric undefined means revenue model undefined). Unknown for B (prevention is unbillable without attribution). Known risk for C: noise coupling failure reduces trust across all five agents — the cost is department-level, not agent-level. [?]
  User: Unknown: gap — operator persona not studied. [?]

---

## Tensions — routed to Beth / Meaghan / Nicole

**EH-T1 · Is this an agent or a platform feature?**
JTBD, Kano, and Disruptive Innovation converge: the demand signal (forced-rank #4, absent from mentions top-5) and the "build it into the RMM" WTP cap are consistent with buyers treating env health as expected infrastructure (a Basic in Kano terms, a sustaining feature in Christensen's terms). Service Blueprint and Value Chain say the agent only has a value chain position if it feeds the QBR narration downstream. These are not compatible packaging decisions. If env health is infrastructure, it ships as platform table stakes. If it is a product, it needs a metric, a billing story, and a prevention attribution mechanism — none of which exist. This is a product/packaging decision the brief cannot make. Route to Beth/Meaghan/Nicole.

**EH-T2 · The noise feedback loop between Env Health and Alert Flood Suppression — two agents or a coupled system?**
Lean Startup (Assumption C) and Value Chain (suppression arbitration) both name the same structural problem from different angles: env health and alert flood suppression draw from the same N-central telemetry with no defined boundary between their respective suppression policies. Service Blueprint names the missing backstage support process. SDT names the autonomy erosion when a tech cannot tell which agent suppressed what. These four voices agree on the problem and disagree on the solution. Options: (a) design the two agents as a coupled system with shared suppression policy from the start; (b) sequence alert flood first, let it prove its suppression model, then layer env health on top; (c) merge the two agents into one operational-health coworker with two modes. This is an architecture decision. Route to Beth/Meaghan/Nicole.

**EH-T3 · Prevention attribution — unfalsifiable value proposition or researchable design problem?**
JTBD says the hiring moment is invisible by definition (prevention agents get hired when something breaks, not when nothing does). Value Chain says the margin equation only closes if prevention value is made visible. Lean Startup says Assumption B (prevention attribution) is a sales crisis waiting to happen. SDT says the unfalsifiability severs relatedness — the tech cannot tell the client a story with evidence. All four agree the problem exists. They diverge on whether this is a design problem (create a counterfactual mechanism — before/after state, detection event, avoided-cost estimate) or a research problem (find out if MSPs are even trying to bill around prevention now, and how). Neither the brief nor the research plan addresses this directly. Route to Beth/Meaghan/Nicole.

**EH-T4 · The demand asymmetry — is this a real agent or a feature of the other four?**
JTBD and Disruptive Innovation both read the weak demand evidence (forced-rank #4, absent from cumulative mentions top-5) as a signal that buyers don't experience env health as a separate job. Value Chain says it only has a position if it feeds the QBR. Kano says it may be a Basic that should disappear into platform infrastructure. Against these: Service Blueprint says the frontstage promise ("nothing is rotting while I sleep") is real and emotionally valuable — the Basic read does not mean the job does not exist, it means the job must not be explicitly priced. SDT says an always-on agent that operates invisibly CAN support autonomy and competence IF it is designed with tuning controls. The tension: weak demand does not mean wrong agent — it may mean wrong packaging. This is the fundamental framing question for env health's roadmap position. Route to Beth/Meaghan/Nicole.

---

## Cannot-see roll-up

Seven voices share one structural blind spot: the operator persona. Every SDT claim about autonomy, every Service Blueprint claim about the handoff surface, every Lean Startup claim about who would tune the sensitivity — all rest on an unobserved daily user. The study captured buyers (owners, VPs). The tech who fields env health findings every morning was not in the room. Until that person is observed, the council is testifying about a user it has never met. Additionally: the telemetry readiness question ("N-central/N-sight makes the data side easy") is doing load-bearing work with no engineering validation behind it — the data may be owned but not structured for per-client baseline modeling. And the suppression boundary between env health and alert flood suppression is architecturally undefined; every voice that touches it is testifying about a seam that does not yet exist on paper.

---

# SYNTHESIS
[0% Claude — fill this in]

---

## Honor check

Demand framing: forced-rank #4 (4.18, n=8) and absent from cumulative mentions top-5 stated as directional signal only — not projected. The two ranking cuts are the same 8 people and are not additive evidence. Do-not-cite items (82/85% retention, ~30% AI efficiency, Gartner-70%, Kenneth $300/user, Vitali 15–20hrs, ScalePad displacement window, vCISO market $) do not appear. Cynomi tripling not cited. Respondent names appear only in evidence tracing from brief source documents, not as forward-facing proof. ROI unknowns are named, not fabricated. Synthesis slot is empty.
