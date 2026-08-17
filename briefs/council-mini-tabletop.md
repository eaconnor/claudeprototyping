# Mini Council Testimony — Security Tabletop Agent
**Brief target:** Security Tabletop coworker (agent #4 cumulative / #5 forced-rank)
**Source brief:** briefs/acp-qbr-analyst.brief.md · Gate 30 · Tier 1 Concept
**Panel:** 7 voices · Full 6-field owensing
**Cost:** MEAL (cost tier corrected by parent — a 7-voice mini is not a FEAST)
**Erratum in force:** the prior department council ran before Nicole's full ranking tables landed. Corrected positions: Security Tabletop cumulative #4 (mentions=4, total=19, avg=4.8); forced-rank #5 (mean 4.95). Both cuts hold. The "4 of top 5 are security-flavored" framing from the prior council is cut-dependent and should not be re-cited.
**Standing disciplines:** n=8 directional, not projectable. Do-not-cite as fact: 82/85% retention · ~30% AI efficiency · Gartner-70% · Kenneth $300/user · Vitali 15–20hrs · ScalePad displacement window · vCISO $1.06B→$1.48B. Cynomi tripling = [CS: MEDIUM, WOBBLY-vendor]. Respondent names in evidence layer only.

---

## Voice 1 — JTBD (Christensen / Ulwick) — The job is dual; the billing target and the practice target are not the same person

**Sign:** The read-out names two distinct outcome states for this agent: (1) the client's team *practices* before an incident is real; (2) the agent produces *evidence insurers and compliance frameworks request* [CS: VERIFIED — product-experience-research.md, Security Tabletop section]. These are different jobs with different beneficiaries. Job one is hired by the MSP's vCISO capability (a preparation service); job two is hired by the client's compliance officer or CFO (an artifact for a third party). A single agent cannot serve both jobs with the same interaction design.

**Hypothesis:** the billable job — the one where someone writes a check — is job two: the insurer/auditor-ready artifact. Job one (practice before it's real) is the *mechanism* that produces the artifact, but it is not itself the purchasing trigger. MSPs are not being hired to run exercises; they are being hired to produce coverage documentation their clients need to renew insurance or pass an audit. [CS: MEDIUM — inferred from vCISO deliverables in vcio-vciso-industry-practice.md; insurer-format requirements not sourced — [?]]

**Kill criterion:** if concept testing reveals partners expect to bill for *facilitation time* rather than for *the artifact*, the JTBD is the exercise, not the evidence — and the interaction design (and pricing model) must pivot. These cannot both be true simultaneously.

**Force level:** MUST — the JTBD determines whether the agent is a services-delivery tool (live facilitation is the product) or a documentation tool (live facilitation is the mechanism, the PDF is the product). Building without settling this is building without a customer.

**Evidence:** vCISO deliverables include compliance readiness assessments, remediation plans, security-awareness plans [CS: HIGH — vcio-vciso-industry-practice.md]; broad demand: cumulative mentions=4, named by four respondents [CS: VERIFIED — ranking tables]; insurer/auditor output framing is read-out hypothesis [A — product-experience-research.md line 144].

**Cannot see:** whether any respondent described the insurer artifact as the billable anchor vs. the exercise itself. The read-out is hypothesis. Respondent language at the session level is in Nicole's transcripts; this panel cannot reach it.

**Strongest objection:** the brief hypothesizes insurer/auditor value without citing a single insurer requirement [?]. The entire "artifact formats for insurers/auditors" framing may be a well-reasoned assumption landing in a market where insurers accept whatever the MSP produces, or demand something entirely specific that this agent cannot generate. Building the artifact design before verifying what insurers actually accept is backwards.

[ROI from this lens]
  Business: Unknown — insurer/auditor artifact value depends on what format is accepted and how it reduces a client's premium or audit friction [?]. No sourced figure.
  User: Unknown — exercise value to a client team practicing depends on scenario quality and facilitation rigor, neither of which has been tested [?].

---

## Voice 2 — Kano — Broad but shallow: probably a performance attribute masquerading as a differentiator

**Sign:** Security Tabletop is the *lowest per-mention intensity* in the study (4.8 avg, total=19) despite being named by four respondents — exactly as many as QBR Analyst and IR RCA [CS: VERIFIED — ranking tables]. Four people named it; none of them champion it hard. That is the Kano signal: it is present in the field of desire but not exciting anyone.

**Hypothesis:** this agent is most likely a *performance attribute* — expected by buyers sophisticated enough to know what a vCISO should deliver, valued when present, but not a purchase driver. It will not excite; it will satisfy. The episodic nature of tabletops (quarterly or annual) suppresses intensity scores relative to daily-pain agents — which means the 4.8 avg may *understate* satisfaction value while correctly reading *excitement* value as low. Separating episodic-pain from low-excitement is the critical Kano disambiguation.

**Kill criterion:** if a concept test reveals partners would walk away from a vCISO bundle that lacked tabletop exercises — not just rate it lower — it is a *must-be* (basic expectation), and absence is worse than low intensity implies. If partners shrug at its absence, it is a *nice-to-have* and should not anchor a pricing tier.

**Force level:** SHOULD — Kano classification changes the sequencing and pricing architecture. A must-be shipped late destroys bundle value; a nice-to-have shipped early wastes build capacity.

**Evidence:** avg per-mention 4.8, lowest in study [CS: VERIFIED — cumulative table]; episodic cadence (quarterly/annual) as intensity suppressor is read-out hypothesis [A — product-experience-research.md]; vCISO deliverables include security-awareness plans [CS: HIGH — vcio-vciso-industry-practice.md].

**Cannot see:** Kano requires asking the same question twice — "how do you feel with it?" and "how do you feel without it?" Neither was run in Nicole's study. The classification is inference from intensity scores, not a Kano instrument.

**Strongest objection:** a Kano inference from intensity scores is a category error. The 4.8 average reflects *scored salience in a ranking exercise*, not functional vs. excitement classification. The brief treats low intensity as "probably bundle-only" when it could equally be "expected baseline that nobody gets excited to name." The design and pricing implications are opposite. This needs a Kano instrument run, not a ranking extrapolation.

[ROI from this lens]
  Business: Unknown — Kano position determines whether tabletop drives bundle purchase, protects bundle retention, or adds no measurable lift [?].
  User: Unknown — satisfaction value for episodic use cases requires longitudinal observation; a single ranking exercise cannot surface it [?].

---

## Voice 3 — Self-Determination Theory (Deci / Ryan) — The live room is an autonomy event for every person in it; the agent changes that event in ways that are not designed

**Sign:** the read-out explicitly names this as the only *live-facilitate* agent — the only one of the five that "runs a meeting, not a pipeline" [CS: VERIFIED — product-experience-research.md]. SDT reads this as the highest-stakes interaction design of the five: you have a room of non-security humans whose autonomy, competence, and relatedness are all active during the exercise. The agent is in the room with them.

**Hypothesis:** autonomy threat is not the MSP's — it is the *client's team's*. A room of non-security staff being walked through a breach scenario by an AI moderator will experience one of two things: (a) the AI is scaffolding that makes them feel capable (competence supported, autonomy intact — they are practicing, the AI is a guide), or (b) the AI is the expert producing the exercise and they are subjects being assessed (competence undermined, autonomy inverted — they cannot challenge the AI's authority the way they could challenge a human facilitator). Design (a) or design (b) are not the same product.

**Kill criterion:** if the facilitation UX positions the AI as the authoritative scenario-runner with no mechanism for the room to push back on a scenario's realism — "this wouldn't happen in our environment" — the competence-support structure collapses. Non-security humans losing the feeling of agency in a security exercise stop engaging. A stopped tabletop produces no insurer artifact, billable or otherwise.

**Force level:** MUST — the live-facilitate class is the entire interaction design problem for this agent, and SDT names the core failure mode: an AI that undermines competence in a learning exercise defeats the learning and the artifact simultaneously.

**Evidence:** live-facilitate as its own interaction class [CS: VERIFIED — product-experience-research.md]; SDT framework applied by this panel; client-team engagement as value driver [A — inferred from "practice before it's real" framing]. **[WOBBLY · SDT]** — no study has observed a client team in an AI-facilitated tabletop; the competence-threat hypothesis is inference.

**Cannot see:** whether any respondent described the client's team's experience of existing tabletop exercises. The demand data is buyer-side (the MSP). The people in the room — the client's staff — were never in the room with Nicole.

**Strongest objection:** SDT applied to the *MSP* (not the client team) tells a different story. For the MSP conducting the tabletop, the AI is a force-multiplier — it runs the scenario engine so the MSP doesn't have to write the script. That is competence-supported: the MSP feels more capable, not less. The SDT analysis bifurcates here: the agent supports MSP autonomy and competence while potentially threatening client-team autonomy and competence. Both are in the room. Neither experience is designed.

[ROI from this lens]
  Business: Unknown — engagement quality of the exercise is a prerequisite for the insurer artifact's credibility [?]. An exercise that fails to engage the room produces a passed-tabletop document over a hollow event.
  User: Unknown — client team experience of AI-facilitated exercises has no sourced analog in this corpus [?].

---

## Voice 4 — Service Blueprint (Shostack / Bitner) — The backstage is the entire product; the frontstage has never been designed

**Sign:** the brief names facilitation UX as a required design artifact — "a live social event, unlike everything else on the list, and it needs its own interaction design work" [CS: VERIFIED — product-experience-research.md line 144]. No interaction design work has been done. The frontstage is a blank.

**Hypothesis:** the service blueprint for Security Tabletop has at least four distinct frontstage zones that share no design logic with the other four agents: (1) pre-exercise setup (scenario selection, stack grounding, participant briefing); (2) live session facilitation (scenario injection, pacing, role-play prompts, reading-the-room signals); (3) debrief (gap identification, scoring); (4) artifact production (insurer/auditor-ready output). Zones 1, 3, and 4 are variants of work the other agents do. Zone 2 is entirely unprecedented: an AI reading attention, managing discomfort, and pacing a room of humans in real time. That zone has no design precedent in the pipeline.

**Kill criterion:** if the MVP ships zones 1, 3, and 4 and treats zone 2 as "the AI facilitates the exercise" without specifying what that means in a live room, the backstage scenario engine produces an artifact that the frontstage never earned. The MSP has a document; the client team has no memory of practicing anything.

**Force level:** MUST — zone 2 (live facilitation) cannot be deferred to a later build. It is the interaction class that distinguishes this agent from a scenario generator that produces a PDF. If zone 2 is absent, the agent is a document tool, not a tabletop simulator.

**Evidence:** "live social event, unlike everything else" [CS: VERIFIED — product-experience-research.md]; facilitation UX named as needed but not designed [CS: VERIFIED — product-experience-research.md line 144]; four backstage processes required: scenario engine, stack-grounding feed, artifact template, insurer-format — none sourced or designed [A]. **[WOBBLY · BP]** — no service blueprint has been run on any existing tabletop exercise (human-facilitated or otherwise); frontstage/backstage inference is from first principles.

**Cannot see:** whether the MSP is in the room or whether the agent is running the exercise directly with the client's team. The human-agent handoff topology is unspecified. If the MSP is the facilitator and the agent is the backstage script engine, this is one interaction class. If the agent is the frontstage facilitator and the MSP is observing, it is another. The brief does not say.

**Strongest objection:** the most realistic MVP skips zone 2 entirely and ships an *async simulation*: the client team works through scenarios on their own timeline (text or video-guided), the agent scores responses and flags gaps, the MSP reviews and signs the artifact. This is not a live meeting — it is a structured self-assessment. The insurer artifact may be identical. The facilitation problem evaporates. Whether insurers or clients accept async simulation as equivalent to a live exercise is the kill question for the async path, and it is unasked [?].

[ROI from this lens]
  Business: Unknown — facilitation cost (who is in the room, how long, at what billing rate) changes the margin math completely [?]. Live facilitation by a human MSP is expensive; async simulation may carry better margin if the artifact value is equivalent.
  User: Unknown — client team time cost of live vs. async exercise not studied [?].

---

## Voice 5 — Value Chain (Porter) — The chokepoint is the insurer relationship; N-able does not own it

**Sign:** the brief's hypothesis is that billable value "likely lives in the insurer/auditor-ready output artifact" [CS: VERIFIED — product-experience-research.md line 144, tagged [A]]. That hypothesis places the value delivery downstream of N-able: the artifact is accepted by an insurer or auditor who N-able has no direct relationship with, under format requirements N-able does not set, at a frequency the insurer determines.

**Hypothesis:** N-able's position in the value chain here is *scenario engine and artifact producer* — an upstream input to a client relationship (client → insurer) that N-able does not touch. The MSP occupies the chokepoint: the MSP is the named party producing the tabletop evidence, and the MSP takes the liability if the artifact is wrong. N-able is a tool vendor to the MSP in a value chain where the MSP holds the margin and the risk. That is not a premium-product position; it is a platform position — and platform vendors get priced accordingly.

**Kill criterion:** if insurers begin certifying specific tabletop providers or accepting only exercises run by certified vCISO platforms — a plausible future given rising cyber insurance premium inflation [CS: MEDIUM — general knowledge; no specific sourced trend in corpus [?]] — N-able must be on the certified list or the MSP uses a different tool. The chokepoint shifts from the MSP to the insurer, and N-able has no path to that relationship.

**Force level:** OUGHT — this is a structural positioning risk, not an immediate build-blocker. But the positioning decision (tool vendor to MSP vs. accreditable platform) should be made before the artifact template is designed, because the template either applies for accreditation or it doesn't.

**Evidence:** insurer/auditor artifact as hypothesized value [A — product-experience-research.md]; vCISO deliverables include compliance readiness [CS: HIGH — vcio-vciso-industry-practice.md]; MSP-as-vCISO holds accountability [CS: HIGH — role definition]; insurer format requirements for tabletops: [?] — not sourced in any document in this corpus.

**Cannot see:** what insurers actually require. Without a sourced insurer or auditor requirement, the entire artifact-value hypothesis is [A]. The panel cannot assess margin contribution of an artifact whose acceptance criteria are unknown.

**Strongest objection:** the value chain analysis may be too narrow. If N-able bundles tabletop as part of a vCISO coworker offering and sells the *bundle* as a revenue-enabling service line for the MSP (not just a tool), N-able occupies a position in the MSP's *revenue* chain, not just their tool stack. That is a different margin calculation — one where N-able's cut is a share of the vCISO revenue line, not a per-seat license. The bundle changes where N-able sits. But this requires the bundle to exist and be priced, neither of which is designed.

[ROI from this lens]
  Business: Unknown — margin contribution depends on whether this ships as a tool (license) or a service-enabler (revenue-share or premium bundle) [?].
  User: Unknown — MSP's billing model for tabletop services not studied; client-side WTP for tabletop as a line item not studied [?].

---

## Voice 6 — Christensen Disruptive Innovation — This is not disruptive; it is a sustaining move into a commodity position

**Sign:** the brief frames the grounding claim (scenarios from the client's actual stack vs. generic templates) as the differentiation that escapes commodity [CS: VERIFIED — product-experience-research.md: "a generic template tabletop is a commodity PDF"]. This is a sustaining move — making the existing tabletop exercise better for existing vCISO-selling MSPs. It does not attack from below or create a new market.

**Hypothesis:** the true disruption opportunity is *democratization* — bringing tabletop exercises to the MSPs and clients who currently cannot afford a human vCISO to run them. If the current market for tabletop exercises is constrained by the cost of human vCISO time, an AI agent that runs exercises at a fraction of the cost could open a new customer tier (smaller MSPs, smaller SMB clients). That is the disruptive play. The brief does not frame it that way — it frames tabletop as a vCISO-bundle component for MSPs who already sell vCISO services.

**Kill criterion:** if the MSPs who would use this agent are the same ones who are already buying human vCISO tabletop services, this agent competes with existing human practitioners and does not expand the market. The incumbent it displaces is the human vCISO running the exercise — and that human will push back inside the same MSP relationships N-able sells through. Sustaining moves into existing markets at lower price points attract incumbent response; this one does so inside the partner channel.

**Force level:** OUGHT — the framing choice (sustaining premium vs. disruptive democratization) does not change the MVP, but it changes the target MSP profile and the pricing architecture. Choosing the wrong profile at concept stage means testing with the wrong partners.

**Evidence:** vCISO tripling 21%→67% YoY [CS: MEDIUM, WOBBLY — Cynomi vendor, n=200 vendor-sponsored]; "a generic template tabletop is a commodity PDF" [CS: VERIFIED — product-experience-research.md — framing is the brief's own, tagged [A]]; demand is present-in-both-cuts but not champion-intensity [CS: VERIFIED — 4.8 avg]. **[WOBBLY · DI]** — tabletop exercise market size, incumbents, and MSP adoption rates are not sourced in this corpus; the disruption framing is inference from first principles.

**Cannot see:** who currently runs tabletop exercises for MSP clients, at what price, with what quality level. The incumbent being disrupted (or not disrupted) is not named in any source document. Without knowing the incumbent's position — human vCISO, third-party tabletop firm, internal compliance staff — the disruption geometry is unresolved.

**Strongest objection:** the four respondents who named Security Tabletop are all security-sophisticated buyers (Kenneth — CISO/Director; Jonathan — VP Technology; Shawn — VP Strategy; Matt — Director Cybersecurity/CISO) [CS: VERIFIED — brief Gate 1 role descriptions]. These are not the MSPs who cannot afford vCISO services. They are the exact buyers who already know what a tabletop is and already run them or buy them. This agent is sustaining, aimed at sophisticated buyers who want it better and faster — not disruptive, aimed at buyers who currently can't have it.

[ROI from this lens]
  Business: Unknown — market size for AI-assisted tabletop within the MSP channel is not sourced [?]. The sustaining position competes with human vCISO practitioners on quality; the disruptive position competes on access. Neither price point is modeled.
  User: Unknown [?].

---

## Voice 7 — Lean Startup Riskiest Assumption — The scenario-grounding claim is the riskiest assumption and the most dangerous one to fake in a demo

**Sign:** the brief states the kill condition for this agent: "genericness — a template tabletop is a commodity PDF" [CS: VERIFIED — product-experience-research.md]. The differentiation claim is scenarios generated from the *client's actual stack* (Adlumin + N-central) — what the brief calls "grounded" scenarios [CS: VERIFIED — product-experience-research.md line 143]. That claim is the riskiest assumption.

**Hypothesis:** the grounding claim requires that Adlumin + N-central configuration data can be read by the scenario engine at sufficient fidelity to generate scenarios specific enough to be useful — not "you use an RMM and have a firewall" but "your firewall has this rule that a threat actor targeting your vertical would route around in this way." The difference between a usable grounded scenario and a flattering generic one is a data-model and inference problem that may not be solvable at v1 without exposing the client's actual vulnerability profile in a room of people who are not cleared to see it [A — product-experience-research.md scenario-vulnerability concern].

**Kill criterion:** if a grounded scenario requires surfacing a real vulnerability to generate a realistic tabletop moment — and the room includes client staff who are not part of the security function — the grounding that differentiates the agent is also the grounding that creates a disclosure event the MSP did not authorize. That is not a design problem; it is a legal one.

**Force level:** MUST — this is the riskiest assumption in the brief. It must be stress-tested before the scenario engine is designed. An MVP that fakes grounded scenarios (uses real stack labels on generic scripts) proves nothing about the differentiation claim and teaches the team false confidence.

**Evidence:** "scenarios generated from the client's *actual* stack" [CS: VERIFIED — product-experience-research.md]; "a scenario revealing real vulnerabilities in a room full of client staff" as a named risk [CS: VERIFIED — product-experience-research.md, task framing provided to this council]; Adlumin + N-central as grounding data sources [CS: VERIFIED — brief domain model]; Gate C relevance confirmed [CS: VERIFIED — brief Gate 2 vCISO bundle section]. **[WOBBLY · LS]** — vulnerability disclosure as a legal/liability concern in tabletop exercises is not sourced; this panel's assertion is from first principles.

**Cannot see:** what level of stack specificity produces a scenario that is *usable* (feels real to the room) vs. *over-specific* (reveals a vulnerability the room should not know). That threshold exists; it has not been defined, studied, or designed. The entire grounding claim lives in the gap between "generic enough to be safe" and "specific enough to be useful."

**Strongest objection:** the Lean Startup play is to test the grounding claim cheaply before building the engine — run one manual tabletop for a friendly partner using their actual Adlumin + N-central config as input, see whether the resulting scenario differs materially from a generic one, and observe whether it surfaces anything the client's staff should not be in the room for. That experiment costs one MSP relationship and a half-day of vCISO time. It answers the riskiest assumption without building anything. The brief does not propose this experiment [?].

[ROI from this lens]
  Business: The grounding claim is where premium pricing lives — a generic tabletop PDF has commodity margin; a grounded scenario engine has defensible margin [A — no price data sourced]. Unknown until the differentiation is verified.
  User: Unknown — whether clients' teams experience grounded scenarios as more engaging or more threatening than generic ones has not been studied [?].

---

## Tensions (unresolved — routed to Beth / Meaghan / Nicole)

**TT-T1: Live facilitation vs. async simulation — is zone 2 (the room) the product, or is the artifact the product?**
Service Blueprint (voice 4) names live facilitation as the unprecedented interaction class that must be designed. Lean Startup (voice 7) surfaces async simulation as a path that may produce the same artifact without the facilitation problem. JTBD (voice 1) cannot resolve this until the billable job is confirmed. These three voices disagree on whether the live meeting is the core value or an unnecessary constraint on the first form. This is a product-definition decision, not a design gap — route to Beth/Meaghan/Nicole before any UX work begins on the facilitation surface.

**TT-T2: Grounding specificity vs. disclosure risk — how specific is too specific?**
Lean Startup (voice 7) and Value Chain (voice 5) both surface the vulnerability-in-the-room problem from different angles: Lean Startup as the riskiest assumption in the scenario engine; Value Chain as a liability that lands on the MSP, not N-able. SDT (voice 3) adds that a room of non-security staff who see something they shouldn't understand will respond with anxiety, not engagement. There is no design answer in this corpus for where the grounding specificity threshold sits. This is a legal and product-design question that requires input from N-able's legal team and at least one cyber insurer before scenario engine design begins.

**TT-T3: Sustaining vs. disruptive target market — sophisticated vCISO buyer or underserved MSP?**
Disruptive Innovation (voice 6) observes that the four named respondents are all sophisticated security buyers who already know what tabletops are — not the MSPs who can't afford them. JTBD (voice 1) is agnostic on target market. Kano (voice 2) says the classification changes only if the agent is tested with partners for whom tabletop is a new capability, not a better version of an existing one. These voices do not agree on who the concept test should recruit. If the test partners are the same profile as Nicole's respondents, the concept test validates the sustaining play and cannot surface the disruptive one. Route to Beth/Meaghan/Nicole: which market are we designing for?

**TT-T4: Bundle dependency vs. standalone viability — does this agent ship at all outside the vCISO bundle?**
Value Chain (voice 5) and Kano (voice 2) agree the margin and pricing position are undefined without the bundle context. Christensen (voice 6) says the sustaining play requires the vCISO bundle to exist; a standalone tabletop tool competes on the generic PDF floor. JTBD (voice 1) says the billing trigger (exercise vs. artifact) determines whether the bundle or the standalone is the natural unit. The read-out already hypothesizes "probably ships inside the vCISO bundle, not alone" [CS: VERIFIED — product-experience-research.md]. These voices confirm that hypothesis but cannot confirm the bundle architecture, which is unresolved at the department level. This agent's sequencing depends on a decision that lives above it.

---

## Cannot-see roll-up

The dominant blind spot across all seven voices is the same: the people in the room during the exercise — the client's staff — were never studied. Nicole's demand data is buyer-side (MSP owners and VPs deciding whether to sell tabletop services). The SDT voice names what happens to a room of non-security humans in an AI-facilitated exercise; the Service Blueprint voice names the interaction zones that have never been designed; the Lean Startup voice names the disclosure event that grounded scenarios might create for that room. None of these can be resolved from a demand corpus. The second missing blind spot is the third-party acceptance standard: what insurers and auditors actually require in a tabletop artifact has not been sourced by anyone in this packet, and every voice that touches the artifact assumption tags it [?]. The demand case for this agent is real and broad. The design case is entirely open.

---

# SYNTHESIS
[0% Claude — fill this in]

---

## Honor check

The n=8 discipline was applied throughout — no voice treated the ranking as projectable. The respondent names stayed in the evidence layer; no voice cited a respondent as sourced data. The insurer/auditor requirement gap was tagged [?] in every voice that touched it; no requirement was fabricated. The Cynomi vCISO tripling figure was tagged [CS: MEDIUM, WOBBLY-vendor] and not re-cited as fact. The prior council's department-level tensions were not re-litigated; all tensions in this panel are Tabletop-specific. Voice 6 (Christensen) named the respondent profile observation as an objection, not a finding, because it is an inference from role descriptions, not a stated quote.
