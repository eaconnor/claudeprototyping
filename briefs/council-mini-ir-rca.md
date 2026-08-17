# Mini-Council Testimony — Incident Response RCA Agent
**ACP Coworker Department · Security/Risk Band · vCISO Bundle**
**Date:** 2026-07-06
**Brief target:** IR RCA agent section, product-experience-research.md + acp-qbr-analyst.brief.md (FM5 specifically) + department council erratum
**Tier:** MEAL (cost tier corrected by parent — a 7-voice mini is not a FEAST)
**n=8 standing discipline:** directional, not projectable; both ranking cuts are the same 8 people.
**Do-not-cite list in force:** 82/85% retention · ~30% AI efficiency · Gartner-70% · Kenneth $300/user · Vitali 15–20hrs · ScalePad displacement window · vCISO $1.06B→$1.48B. Cynomi tripling = [CS: MEDIUM, WOBBLY-vendor].

---

## Voice 1 — Jobs-to-Be-Done (Christensen / Ulwick) [INNOV]
### The RCA is hired for three jobs, two of which the brief has not named.

**Sign:** The brief names the functional job: "reconstruct what happened, why, and what to change — in hours instead of days." [CS: VERIFIED — product-experience-research.md] That is one job. There are two others being ignored.

**Hypothesis:** The emotional job is *relief from liability ambiguity* — the MSP's principal fear after an incident is not "what happened" but "can I be blamed, and can I prove I did everything right?" The social job is *restoration of the MSP's expert identity in front of the client* — a wrong root cause narrated confidently destroys both in one sentence. The agent's design must serve all three or it fails the hire.

**Losing condition:** If the output is optimized for factual completeness (functional job) but the confidence display does not serve the liability-relief job (emotional) and the MSP-as-expert job (social), the agent will be trusted in internal use and refused at the client-facing step. The human review gate exists to protect jobs 2 and 3; it is not optional polish.

**Force level:** MUST — the functional job is table stakes; the emotional and social jobs determine whether the MSP actually sends the output to a client. A wrong confident root cause fires the agent permanently (the MSP hires something else or goes back to manual).

**Evidence:** "Wrong root cause narrated confidently to a client" named as the losing condition in the brief [CS: VERIFIED — product-experience-research.md, section 3]. Emotional/social job framing is inferred from the broader JTBD frame applied to professional-credibility products [CS: MEDIUM — framework application, not sourced from interviews]. The social job (MSP as expert) is grounded in the vCIO/vCISO identity: "CISO expertise as a service for SMBs" requires the MSP to be perceived as the expert, not a relay for a bot. [CS: HIGH — vcio-vciso-industry-practice.md]

**Cannot see:** Whether any of the n=8 respondents named the emotional or social job explicitly. The study measured functional demand ("I want RCA"). The jobs behind the job are inferred, not quoted. [?]

[ROI from this lens]
  Business: Unknown — the brief does not have a number for what a wrong-confident root cause costs in client churn or liability exposure. Name it as [?] for the next spec.
  User: Unknown — time savings direction (hours → days compressed) is named [D — brief], but whether the emotional-job payoff (relief from liability ambiguity) is a meaningful driver of adoption is unstudied. [?]

---

## Voice 2 — Kano [INNOV]
### Confidence display is a threshold attribute, not a delighter. Build it wrong and the whole agent is defective.

**Sign:** The brief correctly identifies confidence display as the load-bearing design requirement: "RCA is inference, and a root cause presented at 60% certainty as if it were 100% is how the narration liability problem starts." [CS: VERIFIED — product-experience-research.md, section 3]

**Hypothesis:** In Kano terms, confidence display is a **threshold (must-be) attribute** — its absence or failure makes the entire output unacceptable, but its presence does not delight. No MSP will call a root cause confidence meter a differentiator. They will call its absence negligence. The delighter is something else: an RCA that surfaces the *decision* the client needs to make, not just the cause. ("Your firewall rule was the entry point. Changing it costs X and prevents Y. Here is the one thing to approve.")

**Losing condition:** If the confidence display is absent or binary (high/low with no gradient), the agent fails the threshold test and cannot be sent to clients regardless of accuracy. If it is present but not client-legible (i.e., readable to the tech but not the paying client), it serves the internal user and exposes the MSP at the client step.

**Force level:** MUST for threshold (confidence display) · OUGHT for delighter (decision-surface at the end of the RCA).

**Evidence:** Confidence display requirement [CS: VERIFIED — product-experience-research.md]; the decision-driving job is grounded in round-2: "the QBR's real job is driving a decision" [CS: MEDIUM — round-2 synthesis]; same logic applies to the RCA as a client-facing artifact — it ends in a remediation commitment, not a report. [CS: MEDIUM — framework inference, not sourced from IR-specific interviews]

**Cannot see:** Whether any respondent named confidence display as a named need. The brief names it as a design-team inference, not a respondent quote. The requirement is well-reasoned but unvalidated. [?] [WOBBLY — inference, not demand-sourced]

[ROI from this lens]
  Business: Unknown — no data on what a missed-threshold (no confidence display, wrong root cause shipped to client) costs in NPS, churn, or legal exposure. [?]
  User: The threshold payoff is avoidance of a catastrophic failure mode, not a gain. Hard to quantify. Unknown: gap. [?]

---

## Voice 3 — Self-Determination Theory (Deci / Ryan) [PSYCH]
### The confidence display problem is actually an autonomy problem. A system that narrates at 100% certainty when it is 60% certain is removing the tech's ability to exercise judgment.

**Sign:** The brief's trust kit requires "visible confidence per claim" and "a human review gate before anything faces a client." [CS: VERIFIED — product-experience-research.md, cross-cutting trust kit section] The report-only interaction class is meant to preserve human authorship.

**Hypothesis:** SDT's three needs apply here as a diagnostic:
- **Autonomy:** The tech must feel like the author of the RCA, not a relay. A system that presents inferences as facts removes the tech's ability to make a judgment call — it is autonomy-undermining by design. Confidence display is the structural mechanism for restoring autonomy: "this is what I found at this confidence level; you decide whether to include it."
- **Competence:** A tech who sends a confident wrong root cause to a client and is later shown wrong feels incompetent — the agent made them look bad. The design must make the tech feel *more capable*, not more exposed. A well-designed confidence display amplifies expertise; a missing one transfers the agent's failure to the human who signed off.
- **Relatedness:** The two-altitude readability problem (tech and client) is also a relatedness problem. If the tech-facing RCA and the client-facing RCA are the same artifact, the tech cannot calibrate what the client should see. They lose the sense of being the intermediary, the translator — the relational role that defines their identity as an advisor.

**Losing condition:** If confidence display is implemented as a tech-only internal flag (not surfaced in the review-gate moment, not carried through to the client-facing version as a calibration signal), it undermines autonomy at exactly the wrong moment — the review gate becomes theater.

**Force level:** MUST for autonomy preservation · SHOULD for the two-altitude readability split (client-facing version needs a translated confidence signal, not raw percentages).

**Evidence:** Report-only trust posture [CS: VERIFIED — product-experience-research.md]; human review gate before client output [CS: VERIFIED — product-experience-research.md, Direction 1]; competence threat from wrong confident output is inferred from SDT principles applied to professional tool design [CS: MEDIUM — framework inference]. [WOBBLY — no SDT-specific IR-tool study sourced]

**Cannot see:** Whether techs in the study described the feeling of being made to look incompetent by a tool. The emotional response to a confident wrong claim is inferred, not observed. [?]

[ROI from this lens]
  Business: Unknown — there is no data connecting autonomy-supportive design to MSP retention or upsell in the IR context. [?]
  User: If the two-altitude split is designed correctly, the tech's cognitive load in the review moment drops (they are confirming a translation, not rewriting from scratch). Unknown quantification. [?]

---

## Voice 4 — Service Blueprint (Shostack / Bitner) [UX]
### The two-altitude readability problem is a three-audience problem. The brief names two; it has missed one.

**Sign:** The brief names "readable at two altitudes (the tech who fixes, the client who pays)." [CS: VERIFIED — product-experience-research.md, section 3] The brief's MVP sketch adds "a review step where the human affirms each claim before a client sees it." [CS: VERIFIED — product-experience-research.md, Direction 1 MVP sketch]

**Hypothesis:** The blueprint has three frontstage audiences, not two: (1) the tech (fixing); (2) the MSP owner or vCISO presenting to the client (the advisor in the room — the one whose credibility is on the line); (3) the end-client (the one who authorizes spend and lives with the decision). The tech and the MSP advisor are different people with different use contexts and different trust needs. The brief collapses them. A vCISO presenting to a client boardroom does not want a timeline with evidence links — they want the three-line narrative and the one-ask commitment. The tech needs the full evidence chain. These are different artifacts, or the same artifact with two views.

**Losing condition:** If the "two-altitude" requirement is satisfied by one font-size change or a "technical / executive" toggle that wraps the same sentences differently, the client-facing version will still read as a tech report and the advisor will either rewrite it (defeating the time-savings) or send something a client cannot follow (defeating the trust job). The split must be structurally different, not cosmetically different.

**Force level:** MUST — the three-audience split is a design requirement, not a nice-to-have. The frontstage/backstage boundary moves depending on who is in the room. If the MSP advisor is in front of the client, the backstage (tech-level evidence) must be invisible; if the tech is in the room, the backstage is the frontstage.

**Evidence:** Two-altitude requirement [CS: VERIFIED — product-experience-research.md]; vCISO deliverables include "remediation plans" readable by non-security executives [CS: HIGH — vcio-vciso-industry-practice.md]; MSP owner as advisor-in-the-room is a named persona in the study context [CS: MEDIUM — inferred from buyer profile: owners, VPs]. [WOBBLY — the three-audience split is an analytical inference; no respondent described it as a three-person room]

**Cannot see:** Whether the MSP advisor and the tech are the same person at the n=8 firms. At small MSPs they may be. At larger ones they split. The study did not map org size to persona count. [?]

**Backstage requirements the brief does not address:**
- The Adlumin data-ingest and normalization pipeline that populates the evidence links — if Adlumin is a separate lane, the evidence chain breaks before the agent can construct a timeline. [?]
- The incident data model (undefined in the brief) — without a typed Incident entity with structured fields, the timeline reconstruction is freeform prose, not a drillable artifact.
- The handoff protocol from IR RCA to the QBR narration layer — if this agent is in the vCISO band, how does a completed RCA appear as a security-posture claim in the next QBR? That handoff is entirely undefined. [A]

[ROI from this lens]
  Business: Unknown — no data on what the advisor-in-the-room step saves versus manual RCA writing. [?]
  User: If the tech view and the advisor view are structurally separated, the review step drops from "rewrite" to "confirm" — directional time savings. Unknown quantification. [?]

---

## Voice 5 — Value Chain (Porter) [STRAT]
### The chokepoint is not the RCA. The chokepoint is the evidence chain. Whoever controls incident telemetry controls the agent.

**Sign:** The brief identifies Adlumin as the data source for IR RCA and names Gate C (the Adlumin lane question) as the agent's most direct dependency. [CS: VERIFIED — product-experience-research.md, section 3] FM7 in the department brief flags: "if Adlumin runs as a separate product lane, it imports Adlumin's org, integration, and roadmap constraints into the ACP architecture." [CS: VERIFIED — acp-qbr-analyst.brief.md, FM7]

**Hypothesis:** In Porter terms, the IR RCA agent sits in the MSP's **outbound value chain** (delivering a client-facing security assurance artifact). Its primary input (incident telemetry, SIEM data, log correlation) is controlled upstream by whoever owns the security tool. If Adlumin is the owned data source, N-able controls the chokepoint and the margin. If the agent must pull from a rival SIEM (SentinelOne, Rapid7, Proofpoint — Matt's actual stack [CS: VERIFIED — acp-qbr-analyst.brief.md, entities]), N-able does not control the chokepoint and is at the mercy of API terms, pricing, and competitive throttling.

**Losing condition:** If Adlumin is confirmed as a separate product lane, the agent's data supply chain is either (a) Adlumin-only (limiting the addressable customer set to Adlumin users) or (b) dependent on third-party SIEM APIs (no chokepoint, commoditizable). Neither is as strong as Adlumin-as-native-signal-source. The fork matters for margin, not just feasibility.

**Force level:** MUST — the value chain position of this agent is not separable from the Adlumin org-boundary question. This is not a packaging detail; it is a margin question.

**Evidence:** Adlumin as native security signal source [CS: VERIFIED — product-experience-research.md, Direction 1]; Gate C named as the agent's most direct dependency [CS: VERIFIED — product-experience-research.md]; Adlumin org-boundary unknown [?] [CS: VERIFIED — acp-qbr-analyst.brief.md FM7]; Matt's SIEM stack (Rapid7, Proofpoint, SentinelOne) [CS: VERIFIED — brief entities]; vCISO market directionally hot [CS: MEDIUM, WOBBLY — Cynomi vendor].

**Cannot see:** The margin structure of the vCISO bundle if Adlumin is a separate lane. That is an internal N-able finance question, not visible from the brief. [?]

**Strongest objection:** The brief treats Adlumin as a technical dependency. Porter says it is a margin question. Who captures the economic rent from the MSP's security assurance delivery is determined by who owns the log at the bottom of the RCA's evidence chain — not by who writes the narrative on top of it. If N-able does not own the log, N-able is a narrator for someone else's data and cannot protect margin.

[ROI from this lens]
  Business: If Adlumin is the native signal source and the RCA agent bundles into a vCISO offering, this agent is part of a new billable line — not a feature of the existing RMM. The margin protection is structural. Unknown exact dollar value. [?]
  User: Unknown — no data on what the MSP's client pays for vCISO-grade incident reporting vs. a free-with-RMM tier. [?]

---

## Voice 6 — Christensen Disruptive Innovation [INNOV]
### This agent is not disruptive. It is sustaining — and that is the right choice, if the brief knows it.

**Sign:** The brief positions IR RCA as part of a vCISO bundle for MSPs that already "can't hire CISOs at SMB price points." [CS: VERIFIED — product-experience-research.md, Direction 1] The demand is from buyers who are owners and VPs — the economically-sophisticated, already-paying end of the MSP market. [CS: VERIFIED — acp-qbr-analyst.brief.md Gate 1]

**Hypothesis:** IR RCA is a **sustaining innovation** — it makes an existing capability (incident response, which MSPs already do manually) dramatically faster for existing MSP customers. It does not create a new market or attack from below. This is fine; sustaining innovations win on execution, not disruption. The risk is that sustaining innovations invite sustaining counter-moves from incumbents: Cynomi ($37M raised [CS: HIGH — round-2 findings]), CrowdStrike, SentinelOne, Rapid7 all have IR capabilities and all have more incident telemetry than N-able's Adlumin alone. [CS: MEDIUM — general industry knowledge, no specific IR-agent announcement cited]

**Losing condition:** If the brief is using "disruption" as a rhetorical frame when the real play is sustaining, it will mis-sequence the build — over-investing in reach (new-market creation) when the right move is depth (making the existing MSP's IR capability dramatically better and bundling it into vCISO). The disruptive framing is wrong here; own the sustaining play.

**Force level:** OUGHT — the brief is not using the disruptive frame explicitly, but the vCISO-bundle thesis carries an implicit "new market" assumption (MSPs that weren't offering vCISO before). That assumption is worth naming.

**Evidence:** "Two-thirds of MSPs are now trying to sell vCISO services anyway" [CS: VERIFIED — product-experience-research.md, Direction 1] — this is a sustaining market pull, not a non-consumption market. The demand is from MSPs trying to do a job they already know they should do, not from non-MSPs who couldn't do it before. Cynomi funding [CS: HIGH — round-2 findings]; vCISO tripling [CS: MEDIUM, WOBBLY — Cynomi vendor].

**Cannot see:** Whether any MSPs in the n=8 study are currently offering zero IR RCA capability. If they are all doing it manually today, this agent compresses an existing process (sustaining). If some are not doing it at all because it is too expensive, there is a low-end non-consumption play. The study did not measure current-state IR practice. [?]

**Strongest objection:** The brief does not name who loses market position if this lands. Cynomi, CrowdStrike's managed detection and response, and Rapid7's MDR all depend on the MSP's security posture remaining complex enough to need expert help. An agent that makes IR RCA cheap and fast for any MSP threatens their consulting hours — they have strong incumbency incentive to throttle API access or undercut on price. The brief has no plan for this competitive response.

[ROI from this lens]
  Business: Unknown — if this is a sustaining play, the ROI is margin protection on existing vCISO-adjacent MSPs, not new-market creation. [?]
  User: Unknown — time savings direction confirmed (hours→faster); no number survives the do-not-cite discipline. [?]

---

## Voice 7 — Lean Startup Riskiest Assumption [INNOV]
### The riskiest assumption is not confidence display. It is that the evidence chain exists.

**Sign:** The brief names the RCA's design requirement: "Adlumin as the evidence source (this is Gate C's most direct beneficiary). An incident data model." [CS: VERIFIED — product-experience-research.md, section 3] The incident data model is undefined. Gate C is unanswered. [CS: VERIFIED — acp-qbr-analyst.brief.md FM7, What's Missing section]

**Hypothesis:** There are five assumptions stacked in the IR RCA agent, ordered here by lethality:

1. **[RISKIEST]** The incident data — structured enough to reconstruct a timeline — exists in Adlumin and is accessible to the agent without a separate product-lane decision. If Gate C returns "Adlumin is a separate lane," the agent has no evidence chain, and the entire design collapses to free-text ingestion from external SIEMs the MSP may or may not use.

2. **[SECOND]** A confidence score can be computed from the evidence that is meaningful — i.e., the agent has enough signal to know what it does not know. An agent that always presents at 90% confidence because it is tuned to avoid uncertainty is worse than no confidence display.

3. **[THIRD]** The two-altitude split (tech + client) can be executed as one review step without the MSP advisor having to rewrite the client version. If the tech-level timeline is too dense to translate in <15 minutes, the time-savings evaporate.

4. **[FOURTH]** The MSP will use the review gate. If the human review step is perceived as a speed tax on incident triage (incidents are time-sensitive), the MSP will skip it and send the agent output directly. The gate is the liability protection; if it is not used, the liability protection is fictional.

5. **[FIFTH]** The RCA artifact feeds into the QBR narration as a typed signal. The SignalToNarration handoff is undefined and entirely [A]. If the RCA stays siloed, the vCISO bundle's composability claim is false.

**Losing condition:** Test assumption 1 before any design work. Gate C is not a packaging question — it is the existence question for this agent's evidence base. If the answer is "Adlumin is a separate lane and we cannot access its data as a coworker signal," the agent either (a) shrinks to a structured-text synthesizer over free-form incident notes (low value) or (b) requires third-party SIEM integrations (high integration cost, no chokepoint). Either is a fundamentally different agent from the one the brief describes.

**Force level:** MUST — the riskiest assumption is gating. Run assumption 1 first. Everything else in the design is contingent.

**Evidence:** Gate C unnamed/unanswered [CS: VERIFIED — product-experience-research.md; acp-qbr-analyst.brief.md FM7, What's Missing]; incident data model undefined [CS: VERIFIED — product-experience-research.md section 3]; human review gate as liability protection [CS: VERIFIED — product-experience-research.md Direction 1 MVP sketch]; SignalToNarration handoff undefined [A] [CS: VERIFIED — acp-qbr-analyst.brief.md Gate 3 new surfaces].

**Cannot see:** Whether Adlumin's data model has structured incident entities, or whether it is log-level data requiring a normalization step before an RCA agent can construct a timeline. That is an Adlumin-product question, not visible from any brief document. [?] [WOBBLY — entire assumption 1 rests on internal knowledge not in the packet]

**Strongest objection:** The brief treats confidence display as the hardest design problem. Lean Startup says it is the wrong hard problem at this stage. Confidence display is a UI problem — it has known patterns (uncertainty quantification, calibration displays, explicit "I don't know" outputs). The evidence-chain existence is a platform problem with no known solution in the brief. Test whether the raw material for an RCA exists before designing how to display its uncertainty.

[ROI from this lens]
  Business: If assumption 1 fails (Adlumin separate lane), the ROI of this agent drops to: time savings on manual note-synthesis. Low value, easy to commoditize. If assumption 1 passes, the ROI is a billable vCISO deliverable line. These are not comparable. The assumption is load-bearing for the business case. [?]
  User: Unknown until assumption 1 is answered. [?]

---

## Tensions — unresolved, routed to Beth / Meaghan / Nicole

**RCA-T1 — Confidence display vs. evidence chain: which is the design-blocking problem?**
JTBD and Kano treat confidence display as the load-bearing design requirement (failure to show it is the losing condition). Lean Startup says confidence display is a UI problem and the blocking problem is whether the evidence chain exists (Gate C / Adlumin lane). These are not reconcilable as simultaneous priorities. Gate C must be answered first, or the design team spends cycles on confidence display for an agent that has no data to display confidence about. Route to Beth/Meaghan: what is the answer to Gate C, and when?

**RCA-T2 — Two-altitude split: one artifact or two?**
Service Blueprint finds three audiences (tech, MSP advisor, end-client) and argues the split must be structurally different, not cosmetic. SDT argues that the review gate's design determines whether the advisor feels like the author or a relay. These two voices agree the split is necessary but do not agree on whether it requires two artifacts or one artifact with two views. This is a design decision with engineering implications (one template or two) and cannot be deferred to build. Route to Beth.

**RCA-T3 — Sustaining innovation vs. vCISO-bundle ambition: what is this agent for?**
Christensen finds this is a sustaining play (faster IR for existing MSPs) and warns the brief may be mis-sequencing by using "bundle" language that implies new-market creation. JTBD finds the emotional and social jobs (liability relief, MSP credibility) require a client-facing artifact, which is what makes it vCISO-bundleable. These converge on the same design (report-only, client-facing, human-reviewed) but diverge on the commercial frame. The sustaining play sequences depth-first; the vCISO-bundle frame sequences breadth-first (security pair ships together). This is a product sequencing decision with resourcing implications. Route to Meaghan/Nicole.

**RCA-T4 — Review gate: liability protection or speed tax?**
Lean Startup names the risk that the human review gate will be skipped under incident-time-pressure. SDT argues that skipping the gate undermines autonomy by making the agent the de facto author of the client-facing output. These two voices agree the gate is essential but diverge on whether the design can make it feel fast enough to use. Service Blueprint adds that the gate's position in the backstage (between tech output and client-facing output) means it is invisible to the client — there is no external accountability for whether the MSP uses it. This is a product risk with no current design response. Route to Beth.

---

## Cannot-See Roll-Up

Across all seven voices, the shared blind spot is the same: none of the source material contains any description of what an actual incident response process looks like at an n=8 MSP firm. The study measured demand (the respondents want this agent) but did not observe the current-state IR workflow — how evidence is currently collected, how long timelines currently take to reconstruct, whether the MSP currently produces a written RCA for clients at all, and whether the client-facing artifact is standard practice or exceptional. Every design assumption in this brief — the two-altitude split, the review gate, the confidence display, the remediation-recommendation structure — is built on inferred practice, not observed practice. The riskiest design decisions are being made in an evidence vacuum about the actual work this agent replaces.

---

# SYNTHESIS
[0% Claude — fill this in]

---

## Honor Check

n=8 discipline held throughout: no voice claimed projectability. Do-not-cite list enforced: Vitali 15–20hrs, ScalePad displacement window, vCISO market dollar figures not cited as fact. Respondent names used only in evidence layer, not as claims. [CS:] applied to all factual claims. [WOBBLY] applied where source tradition is narrow or vendor-only. Framework-derived inferences marked [CS: MEDIUM] or lower; framework applications not misrepresented as sourced findings. Cynomi tripling tagged [CS: MEDIUM, WOBBLY-vendor] throughout. No synthesis across voices. Tensions routed to humans, not resolved.
