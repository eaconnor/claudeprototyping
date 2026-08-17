# ACP Trust-Level Model UI — Council 44 Testimony

**Brief:** `briefs/acp-trust-level.brief.md` · Owner: Nicole Reineke · Tier 2 — Direction
**Library:** `briefs/methods-library-matrix.md` (44 methods · 14 clusters · RELATN 0..+2)
**Tier:** FEAST · ~55 ml water · 5.6 g CO2e
**Run:** all 44 methods owens itself in 6 fields. No synthesis.

---

## GATE CHECK

Gate 1 is **UNVERIFIED**. The brief self-reports 55% [A]+[?] (11 of 20 claims). The core problem statement — *"MSPs struggle to understand trust levels"* — is explicitly [?] (brief line 30): *"there is no evidence in the source material that MSPs currently struggle to understand trust levels."* Line 34: *"we have no user research showing MSPs asked to see the math."*

**The council testifies against a hypothesis, not a verified problem.** Voices requiring a sourced user problem will self-tag [WOBBLY · CODE]. This is the honest output of a Tier 2 brief, not a failure of the brief.

---

# THE 14 CLUSTERS · 44 VOICES

---

## CHTR — Charter — *What are we aiming at, at what force level, and what proposition does that make?*

### 07 — Owen Project Statement / IIT
**Sign** — The brief states an OKR objective ("Increase MSP confidence in AI Coworker autonomy decisions") and a key result (70% report understanding) [R — brief lines 7-8]. The aim is *confidence*, the deliverable is *a calculation breakdown UI* [R — brief title + line 6].
**Hypothesis** — The project statement conflates two ends: building confidence (a felt state) and explaining math (a comprehension task). A clean Owen statement separates the verb-object pair; this brief has two verbs ("understand why" AND "feel confident") riding one artifact.
**Kill criterion** — Wrong if beta testing shows comprehension and confidence move together (r high), meaning the conflation is harmless.
**Force level** — Must.
**Owens** — Split the project statement: "MSP understands trust-level change" (testable in usability) vs. "MSP is confident enough to graduate L3→L4" (testable only in field). The brief tests the first and *claims* the second [A — brief line 51].
**Cannot see** — Whether the two ends are actually the same end for this user. Owen structure can't tell you if comprehension *is* confidence here.

### 08 — Owen Defining Statements / IIT
**Sign** — "What Counts as Done" is tagged [A] in full (brief line 65). The defining statements (functional/emotional/practical attributes the thing must satisfy) are absent.
**Hypothesis** — Without defining statements, "done" defaults to deliverable-existence ("working HTML prototype") rather than attribute-satisfaction. The brief defines *artifacts produced*, not *qualities achieved*.
**Kill criterion** — Wrong if Nicole already holds defining statements verbally and the brief is shorthand.
**Force level** — Should.
**Owens** — Before build, write three defining statements: functional (MSP can name 2 of 5 components), emotional (MSP feels the boundary is *legible*, not arbitrary), practical (review takes <90s, brief line 63).
**Cannot see** — Whether stated attributes match unstated MSP attributes. Defining statements are only as good as the discovery that fed them — and that discovery is [?].

### 09 — Moore Positioning Statement / STRAT
**Sign** — No positioning statement present. The audience is "MSPs" undifferentiated [R — brief line 6]; no "for [target], who [need], unlike [alternative]" frame exists.
**Hypothesis** — The brief positions against an implicit alternative — *invisible trust calculation* (status quo) — but never names the competitive alternative the MSP would otherwise reach for (manual approval workflows, gut feel, ticket review).
**Kill criterion** — Wrong if "invisible math" is genuinely the only alternative and there is no substitute behavior to displace.
**Force level** — Should.
**Owens** — Write: "For the experienced MSP technician who currently approves every AI action manually, the trust breakdown shows why a task is safe — unlike the current black-box score that forces blanket caution."
**Cannot see** — Whether MSPs experience the status quo as a problem at all. Positioning assumes a felt alternative; the brief's [?] on the core problem undercuts that.

### 10 — Hard Mode Force Levels / IIT
**Sign** — The brief never assigns a force level to its own central claim. "MSPs may under-trust or over-trust" is [A] (brief line 32). Is transparency a Must, Should, Ought, or Nice?
**Hypothesis** — Run at Hard Mode, the trust-breakdown UI is at most a **Should**, not a Must. The earned-autonomy model functions today without it (brief line 28); the UI is an enhancement to comprehension, not a gate on safety.
**Kill criterion** — Wrong if there is a regulatory or contractual requirement that autonomy decisions be explainable to the MSP — then it's a Must.
**Force level** — Must (to assign force levels), Should (the feature itself).
**Owens** — Stamp the feature **Should** and say so. A Should-level feature gets a Tier 2 research prototype, not a production commitment — which is exactly what the brief is. The honesty is already there; make the force level explicit.
**Cannot see** — Compliance/contractual drivers outside the source docs.

### 11 — Theory of Change / PLAN
**Sign** — Implicit chain in the brief: show math → MSP understands → MSP confident → MSP graduates coworkers L3→L4 faster → Layer 3 licensing revenue compounds [R — assembled from brief lines 6, 47, 51]. Each arrow after "understands" is [A].
**Hypothesis** — The theory of change has a verified first link (math exists, brief line 30) and an unverified middle ("understands → confident → graduates"). The intermediate outcomes are stated as if causal but are assumed.
**Kill criterion** — Wrong if beta shows graduation rate rises measurably after UI exposure — that would validate the chain end-to-end.
**Force level** — Must.
**Owens** — Draw the ToC explicitly with each arrow tagged [R]/[A]/[?]. The brief's "Next Steps" (lines 101-105) is a latent ToC — surface it as the spine and instrument the weakest arrow (understands→graduates) first.
**Cannot see** — Whether revenue actually depends on this chain or whether Layer 3 monetizes regardless of UI. ToC maps logic, not market reality.

---

## SIGN — Sign Reading — *What is the world signalling, and what does that mean?*

### 01 — Peirce / ABD
**Sign** — The brief presents a surprising fact: a sophisticated trust calculation exists (5 components, brief line 30) yet is "currently invisible" (brief line 6). Invisibility of a built capability is the abductive anomaly.
**Hypothesis** — The best explanation for *why it's invisible* is not "MSPs need it surfaced" — it may be that the team built the calculation for the system's own gating and never had a user-facing reason to expose it. The brief assumes the inverse (invisibility is a problem to solve).
**Kill criterion** — Wrong if a single MSP interview surfaces an unprompted request to see the math.
**Force level** — Must.
**Owens** — Treat "MSPs need the math" as one hypothesis among several. Competing hypothesis: "MSPs need a *verdict*, not the math." Run both in the prototype test (the brief's failure-mode section already entertains this, line 37).
**Cannot see** — Which hypothesis is true without contact with the world. Abduction generates the candidate; it cannot confirm.

### 02 — Tavory/Timmermans / ABD
**Sign** — The brief is doing abductive work on itself: it names the surprising fact, generates the assumed problem, AND names the disconfirming absence ([?] at line 30). This is unusually disciplined for a draft brief [R — brief lines 30-34].
**Hypothesis** — The brief's author already practiced abductive defamiliarization — they refused to treat "transparency is good" as obvious. The 55% [A]+[?] ratio is not sloppiness; it is honest abduction in progress.
**Kill criterion** — Wrong if the [?] tags are decorative and no follow-up research is planned — but "Next Steps" (line 101) plans exactly that.
**Force level** — Should.
**Owens** — Keep the abductive posture into the test. Frame the usability test as hypothesis-disconfirmation ("can we kill 'MSPs want the math'?"), not feature-validation.
**Cannot see** — Whether the alternative casings the author *didn't* generate are the live ones. Abduction is bounded by the analyst's imagination.

### 03 — Owen Design Factor / IIT
**Sign** — Five named components are design factors: track record, risk classification, scope boundaries, escalation rules, audit trail [R — brief line 30]. The brief treats them as display elements, not as factors to be weighted/traded.
**Hypothesis** — These are genuine design factors, but the brief never asks which factor *drives* the trust verdict. If track record dominates, the other four are explanatory garnish; if they interact, the UI must show the interaction, not five parallel bars.
**Kill criterion** — Wrong if the underlying model weights all five roughly equally — then parallel display is honest.
**Force level** — Must.
**Owens** — Get the weighting from Engineering before designing the breakdown. A breakdown that misrepresents factor weight is worse than no breakdown (it teaches a false model).
**Cannot see** — The actual model internals. Design Factor analysis needs the spec; "risk classification" is undefined (brief line 79, [?]).

### 04 — Mode 1 Semiotics / IIT
**Sign** — "Trust level," "L3," "L4," "autonomous" are signs carrying meaning the brief treats as transparent [R — brief lines 28, 51]. A numeric "trust score" is itself a sign (brief line 40 flags false precision).
**Hypothesis** — A number signifies *measured precision* to a technician audience. Surfacing "trust score: 87" signals an accuracy the model does not have early in a coworker's life (brief line 40 names this). The sign overclaims.
**Kill criterion** — Wrong if MSPs read the number as ordinal/categorical (a band) rather than cardinal (a measurement).
**Force level** — Must.
**Owens** — Test sign interpretation directly: show numeric vs. badge ("Supervised/Trusted/Autonomous," brief line 109) and ask what each *means* to the MSP. The brief already proposes the badge fallback — make it an A/B arm, not a consolation prize.
**Cannot see** — How the sign reads in the MSP's actual semiotic context (their existing dashboards, their ticketing vocabulary).

### 05 — Mode 4 Hypothesis / IIT
**Sign** — The brief contains a falsifiable hypothesis with success/failure criteria: 70% identify 2 of 5 components; failure if >90s without the "why" answer [R — brief lines 62-63].
**Hypothesis** — This is a well-formed Mode 4 hypothesis statement — rare in a Tier 2 brief. The metric ("identify components") tests comprehension, but the OKR ("confidence," line 7) is the real target. The hypothesis tests the proxy, not the goal.
**Kill criterion** — Wrong if comprehension is a validated proxy for confidence — but no such validation is cited.
**Force level** — Should.
**Owens** — Add a confidence-measure to the test (post-task: "would you let this coworker run autonomously now? why?"). Comprehension without confidence-shift is the false-positive the brief should fear.
**Cannot see** — Whether the lab task ("why did trust change?") predicts the field decision (graduate or not). Hypothesis discipline can't bridge lab-to-field alone.

### 06 — Cynefin / CMPLX
**Sign** — The brief sits in a domain where cause-effect of "transparency → confidence" is not known in advance [R — entire Gate 3 is [A], brief line 59].
**Hypothesis** — This is a **Complex** domain (probe-sense-respond), not Complicated. The right move is a safe-to-fail probe — which is precisely a Tier 2 research prototype. The brief's instinct (build to learn) matches the domain.
**Kill criterion** — Wrong if the relationship is actually Complicated (knowable via expert analysis) — then skip the prototype and ask a senior MSP-facing PM.
**Force level** — Should.
**Owens** — Frame the prototype explicitly as a Complex-domain probe with a dampener (the counter-metric, brief line 9) and an amplifier (graduation rate). Don't over-instrument; probe, sense, respond.
**Cannot see** — Whether the team can act on probe results fast enough for the probe to matter. Cynefin classifies; it does not supply organizational velocity.

---

## PORT — Strategic Portfolio — *What kind of innovation is this in our portfolio?*

### 12 — Doblin 10 Types / IIT
**Sign** — The trust-breakdown UI touches "Customer Engagement" (how the MSP experiences trust) and arguably "Product System" (it connects to the autonomy gate and Value Ledger, brief lines 49) [R — brief lines 47-49].
**Hypothesis** — This is a single-type innovation (Customer Engagement) bolted onto a multi-type platform play. Single-type innovations are the easiest to copy and the least defensible. The defensible innovation is the *earned-autonomy model itself*, not its UI.
**Kill criterion** — Wrong if the breakdown UI integrates ≥3 Doblin types (e.g., also Profit Model via licensing) — then it's a stronger play.
**Force level** — Ought.
**Owens** — Position the UI as enabling the defensible types (Product System + Profit Model via Layer 3), not as the innovation itself. The brief already links to monetization (line 47) — make the UI a servant of that, not the headline.
**Cannot see** — Which types competitors already cover. Doblin needs the landscape (handed to LAND).

### 17 — Ansoff / STRAT
**Sign** — The feature serves existing customers (beta MSPs, brief line 60) with an enhancement to an existing product (ACP) [R].
**Hypothesis** — Market penetration / product development quadrant — the safest Ansoff cell, lowest growth ceiling. No new market, no new buyer. This is consistent with a Tier 2 confidence-enhancement, not a growth bet.
**Kill criterion** — Wrong if trust-transparency unlocks a new buyer segment (e.g., compliance-bound MSPs who couldn't adopt autonomy without explainability).
**Force level** — Nice.
**Owens** — Treat as penetration: the metric is *graduation rate within existing accounts*, not new logos. Don't oversell it to Nicole as a growth lever.
**Cannot see** — Whether a compliance-driven new segment exists (no data, brief is silent).

### 18 — Innovation Ambition / STRAT
**Sign** — Resources implied: one Tier 2 prototype, a small beta test (5-8 MSPs, brief line 60) [R].
**Hypothesis** — This sits firmly in the **Core** band of the ambition matrix (70% of typical innovation spend), not Adjacent or Transformational. Correct allocation for a comprehension-layer feature.
**Kill criterion** — Wrong if leadership is funding this as a transformational trust-platform bet — then ambition and resourcing are mismatched.
**Force level** — Nice.
**Owens** — Confirm with Nicole that this is funded as Core. A Core feature with Transformational expectations is how good prototypes get killed for "not moving the needle."
**Cannot see** — The actual portfolio allocation. No budget data in source.

---

## FEAT — Feature / Concept Quality — *What kind of feature value is this, against alternatives?*

### 13 — Kano / INNOV
**Sign** — Two competing read-outs in the brief itself: transparency could be a delighter (builds confidence, line 7) OR a non-feature that creates cognitive load (Failure Mode 1, line 37) [R].
**Hypothesis** — Trust transparency is most likely a **Performance** attribute for *some* MSPs (more = better, linear satisfaction) and an **Indifferent** attribute for others (they want the verdict). It is unlikely to be a Must-be. The brief's failure mode 1 is the Indifferent-segment risk.
**Kill criterion** — Wrong if it's a Must-be (absence causes dissatisfaction) — testable: do MSPs refuse to graduate coworkers *because* the math is hidden?
**Force level** — Should.
**Owens** — Kano-survey the beta: functional + dysfunctional question pair on "seeing the trust math." Segment the result. The brief's binary (tests well / tests poorly, lines 101/107) hides the likely answer: it's Performance for power users, Indifferent for the rest.
**Cannot see** — How the attribute migrates over time (today's delighter is tomorrow's expected). Kano is a snapshot.

### 14 — Blue Ocean ERRC / STRAT
**Sign** — The brief's "tests poorly" path proposes Reduce/Eliminate: collapse to outcome-only, drop the numeric score for badges (brief lines 108-109) [R].
**Hypothesis** — The ERRC grid is implicitly drawn: **Eliminate** false-precision number, **Reduce** review time, **Raise** legibility of boundaries, **Create** a graduation-readiness signal. The brief gestures at this but frames it as failure-recovery, not design strategy.
**Kill criterion** — Wrong if the numeric score is the thing MSPs value most — then eliminating it destroys value.
**Force level** — Should.
**Owens** — Build the ERRC grid *now*, not as a fallback. The "badge instead of number" idea (line 109) may be the *primary* design, with the breakdown as progressive disclosure.
**Cannot see** — Buyer value-curve vs. competitors. ERRC needs the competitive frame (handed to LAND/POS).

---

## POS — Market Position / Adoption — *Where does this sit in the market's adoption story?*

### 16 — Moore Crossing the Chasm / STRAT
**Sign** — The brief targets "mature MSPs" for whom L4 autonomy is "self-evident UX" [R — brief line 34, Ewan Cameron experiment].
**Hypothesis** — "Mature MSPs" are early-majority/pragmatists, not innovators. Pragmatists need *references and whole products*, not explanations of internal math. A trust-breakdown UI serves the *technophile* (wants to see the engine), not the pragmatist (wants the proof it works for peers like them).
**Kill criterion** — Wrong if the target is actually early-adopter MSPs who delight in mechanism.
**Force level** — Should.
**Owens** — If the buyer is a pragmatist, the confidence lever is *peer track record* ("MSPs like you graduated this coworker in 14 days"), not *the math*. Test whether social proof beats mechanism for confidence.
**Cannot see** — Where on the adoption curve these beta MSPs actually sit. No segmentation data (brief line 76, [?]).

### 19 — Christensen Disruptive Innovation / INNOV
**Sign** — ACP/AI Coworkers reduce technicians needed [R — brief line 26]. The brief names a disruptive entrant context elsewhere (Huntress, library line 389) [R — methods library].
**Hypothesis** — The earned-autonomy model is the disruptive core (does the job cheaper/with fewer humans). The trust UI is a *sustaining* innovation on top — it makes the disruptive engine palatable to incumbents' customers. Sustaining innovations don't win markets; the disruptive engine does.
**Kill criterion** — Wrong if trust-explainability is itself the wedge that lets ACP attack a market incumbents can't serve (regulated/high-trust environments).
**Force level** — Ought.
**Owens** — Don't let the UI distract from the disruptive engine. But test one disruptive hypothesis: does explainability open a *down-market or new-context* segment (smaller MSPs afraid to automate) that the incumbent ignores?
**Cannot see** — Incumbent response. No competitive intelligence in the brief.

---

## LAND — Landscape / Competitive Structure — *What is the external market actually doing?*

### 33 — Kumar Mode 2 Landscape / IIT
**Sign** — The brief contains **zero** competitive landscape data. No mention of how competitors surface (or hide) AI trust/autonomy [R — brief has no competitor section].
**Hypothesis** — The landscape is unmapped. Trust-explainability for AI agents is an emerging category; whoever defines the *vocabulary* of trust (L3/L4 vs. competitor framings) may own the category narrative.
**Kill criterion** — n/a — insufficient material to form a falsifiable hypothesis.
**Force level** — Should.
**Owens** — Mode 2 scan before design: how do Huntress, ConnectWise, Atera frame AI autonomy and trust? Borrow or differentiate the vocabulary deliberately.
**Cannot see** — Anything — the brief gives no landscape input.
**[WOBBLY · LAND]** — No competitive material in the brief. This voice runs on inference, not source.

### 34 — Porter's Five Forces / STRAT
**Sign** — No supplier, buyer, substitute, entrant, or rivalry analysis in the brief [R — absent].
**Hypothesis** — The relevant force is **buyer power**: MSPs choose whether to graduate coworkers. The trust UI is an attempt to shift buyer behavior (lower their perceived switching/risk cost of granting autonomy). That's a buyer-power intervention, not a competitive moat.
**Kill criterion** — Insufficient sourced material to falsify.
**Force level** — Ought.
**Owens** — Recognize the UI affects buyer-side adoption friction, not rivalry. It won't defend against entrants; pair it with the licensing model (the actual switching cost).
**Cannot see** — All five forces — no data provided.
**[WOBBLY · LAND]** — No market-structure source in brief. Porter cannot run on a single feature spec.

### 35 — Wardley Mapping / STRAT
**Sign** — The trust-calculation engine is built (brief line 30); the *UI to expose it* is novel. Two components at different evolution stages [R].
**Hypothesis** — The calculation engine is moving toward **Product** stage (built, stable). Trust *explainability UI* is **Custom-built/Genesis** — novel, no convention yet. Mapping shows you're innovating at the visible UI layer while the durable value sits in the engine beneath.
**Kill criterion** — Wrong if explainability UI is already commoditized in adjacent products (then it's Product, not Genesis).
**Force level** — Ought.
**Owens** — Map the value chain: user need (confidence) → trust verdict → breakdown UI → calculation engine. Invest visibly at the engine (defensible), prototype cheaply at the UI (commoditizing).
**Cannot see** — Climatic patterns (where the market moves next). Needs the unmapped landscape.

---

## JOBS — Jobs Theory — *What is the customer hiring this to do?*

### 15 — JTBD Functional / INNOV
**Sign** — The brief's failure mode 1 names the suspected real job: "if they only care about the outcome ('can I trust this?')" [R — brief line 37]. The functional job is *decide whether to grant autonomy*, not *understand the math*.
**Hypothesis** — The MSP hires the trust UI to do one functional job: **reduce the decision cost of granting/withholding autonomy**. Seeing the math is a *means* candidate, not the job. If a verdict + confidence band does the job, the breakdown is fired.
**Kill criterion** — Wrong if MSPs, asked "what were you trying to get done," describe wanting to *learn the model*, not *make a decision faster*.
**Force level** — Must.
**Owens** — Test the job, not the feature: "Walk me through the last time you decided whether to let a coworker run on its own" (the brief's own Next-Step research, line 102). Build the UI to the job that surfaces.
**Cannot see** — Emotional/social dimensions of the same job (handed to 22).

### 22 — JTBD Emotional/Social / INNOV
**Sign** — The OKR target is "confidence" (brief line 7) — a felt state, not a functional output [R]. The brief's failure mode 2 (false precision, line 40) is an emotional risk: a number that *feels* authoritative but isn't.
**Hypothesis** — The emotional job is **"let me feel I am not being reckless when I hand work to a machine."** The social job: **"let me defend this decision if a client asks why the AI did it."** Transparency serves the *social* job (defensibility/audit) more than the functional one. The audit trail (brief line 30) is the social-job component.
**Kill criterion** — Wrong if MSPs feel zero accountability anxiety about AI autonomy (then no emotional job exists).
**Force level** — Should.
**Owens** — Reframe the UI around defensibility: "here's what you'd show a client if they asked why the coworker did X." This may matter more than comprehension of the score.
**Cannot see** — The functional efficiency cost of serving the emotional job. The reassurance UI might add the very review time the counter-metric guards against (brief line 9).

---

## NEEDS — Need Theory — *What human drive is engaged beyond function?*

### 20 — SDT / PSYCH
**Sign** — The brief's whole tension is an autonomy question — but the AI's autonomy, not the human's. The MSP's own SDT needs are unexamined [R — brief frames trust as the coworker's permission, line 49].
**Hypothesis** — **Competence** is the live need. Showing the math can support competence ("I understand my tools, I'm a capable operator") OR undermine it ("the system does math I can't follow — I feel less capable"). The numeric score (line 40) risks the latter: false precision makes the human feel the machine knows something they don't. **Autonomy** (human's): the UI should make the MSP feel *they* decide, with the AI advising — not that the AI's score *tells them* what to do. **Relatedness**: thin here.
**Kill criterion** — Wrong if MSPs report the breakdown makes them feel *more* capable regardless of design — testable via competence-item in post-task survey.
**Force level** — Must.
**Owens** — Design for competence-support: the breakdown should let the MSP feel "I can read this and judge it," not "the score has decided." Frame as *advisory input to the human's decision*, preserving human autonomy. This is the SDT-aligned trust model.
**Cannot see** — Functional task time. SDT can make someone feel capable while slowing them down (collides with the counter-metric, line 9, and with JOBS-functional).

### 21 — Maslow / PSYCH
**Sign** — The relevant tier is **Safety/Esteem**, not self-actualization. The MSP's anxiety is operational risk (a coworker doing something harmful autonomously) [R — brief line 32, "over-trust... risky tasks"].
**Hypothesis** — The trust UI operates at the Safety need (protect me from a bad autonomous action) and the Esteem need (let me look competent/in-control to my clients and peers). Confidence (the OKR) is an Esteem-adjacent state.
**Kill criterion** — Wrong if the dominant driver is purely economic (time saved) with no safety/esteem charge.
**Force level** — Ought.
**Owens** — Lead the UI with safety framing (boundaries, escalation rules, rollback — brief lines 30, 81) before efficiency framing. Safety needs dominate when risk is salient.
**Cannot see** — Whether the need hierarchy holds for B2B operators (Maslow is contested outside individual psychology). **[WOBBLY · NEEDS]** — Maslow applied to MSP buying behavior is a stretch; flagging the tradition's reach.

---

## JRNY — Journey — *How does the use-sequence break apart?*

### 23 — Kumar Mode 3 Ethnography / IIT
**Sign** — **No ethnographic data exists.** The brief explicitly lacks observation of MSP trust-decision behavior [R — brief line 75, line 102 plans it as a future step].
**Hypothesis** — The entire brief is built without watching a single MSP make a trust decision. The "under-trust/over-trust" framing (line 32) is an armchair model of behavior.
**Kill criterion** — n/a — there is no field data to be wrong about.
**Force level** — Must.
**Owens** — The brief's own Next-Step #1 (line 102, "walk me through how you decide") IS the missing Mode 3 work. Do it *before or alongside* the prototype, not after. Otherwise the prototype tests a UI for a journey nobody has observed.
**Cannot see** — n/a.
**[WOBBLY · JRNY]** — Zero ethnographic source. This voice can only point at the hole.

### 24 — UX 5Es / UX
**Sign** — The brief addresses one E weakly (Efficiency, via the <90s / <10% counter-metrics, lines 9, 63) and ignores Entice, Enter, Engage, Exit [R].
**Hypothesis** — The trust UI's journey is unmapped. Where does the MSP *enter* it (a notification that trust changed? a dashboard glance? a moment of doubt before granting autonomy)? The brief assumes a "review the breakdown" moment but never locates it in the workflow.
**Kill criterion** — Wrong if the entry point is fixed and obvious (a single dashboard panel) — then 5Es is over-engineering.
**Force level** — Should.
**Owens** — Map the 5Es around the *trust-change event*: Entice (badge nudge) → Enter (tap to expand) → Engage (read breakdown) → Exit (decision: keep/escalate) → Extend (next time, trust the verdict faster). The Extend stage is where the counter-metric is won.
**Cannot see** — Whether the entry moment exists in real workflow. Needs the Mode 3 data (handed from 23).

### 25 — Service Blueprint / UX
**Sign** — The brief is silent on backstage: who/what maintains the trust calculation, what happens when it's wrong, who the MSP escalates to [R — "rollback conditions" is [?], brief line 81]. Frontstage = breakdown UI; backstage = undefined.
**Hypothesis** — The frontstage/backstage handoff is invisible and undesigned. Critical: when a coworker at L4 errs, does the MSP get a frontstage rollback notification, and what backstage process triggers it? The brief flags this as missing (line 81) but the *service* of trust, not just the *display* of it, is the real product.
**Kill criterion** — Wrong if trust is purely a display with no service obligations behind it — but the audit trail and escalation rules (line 30) imply a service.
**Force level** — Must.
**Owens** — Blueprint the failure path explicitly: L4 coworker errs → frontstage rollback notice + audit surface → backstage trust recalculation → frontstage explanation of the drop. The brief's "Design for failure" (line 105) is this; pull it forward.
**Cannot see** — Whether the backstage capacity exists. A blueprint can specify a support process the org can't staff.

### 26 — Signal Entropy / UX
**Sign** — Five components surfaced at once (brief line 30) plus a numeric score is a high-entropy signal — many bits competing for attention [R].
**Hypothesis** — High signal entropy at the decision moment increases cognitive load (Failure Mode 1, line 37). The MSP needs a low-entropy primary signal (the verdict) with high-entropy detail available on demand. Showing all five flat = maximum entropy = the load failure the brief fears.
**Kill criterion** — Wrong if MSPs can parse all five components in <90s without load (the brief's own threshold, line 63).
**Force level** — Should.
**Owens** — One-bit primary signal (safe / not safe to grant), progressive disclosure to the five components. Entropy budget: the glance should cost ~1 bit, the deep-dive can cost five.
**Cannot see** — The meaning-value of each bit to the MSP. Entropy measures quantity of signal, not its decision-relevance.

---

## ECON — Economics — *What are the money and buyer dynamics?*

### 27 — Value-Based Pricing / MKT
**Sign** — The brief links trust to Layer 3 licensing revenue (brief line 47) but assigns **no value** to the trust UI itself [R].
**Hypothesis** — The trust UI is a value *enabler*, not a value *capture* point. Its economic worth = (faster L3→L4 graduation) × (incremental Expert licensing revenue per graduated coworker). Unpriced and unmeasured in the brief.
**Kill criterion** — Wrong if graduation speed is unrelated to licensing revenue.
**Force level** — Ought.
**Owens** — Don't price the UI; instrument its lever (graduation velocity → licensing attach). The brief's missing baseline (line 76, [?]) is the denominator you need.
**Cannot see** — The actual licensing economics. **[WOBBLY · ECON]** — No pricing data in source.

### 28 — Price Corridor / MKT
**Sign** — No pricing or alternative-cost data in the brief [R — absent].
**Hypothesis** — n/a — insufficient material.
**Kill criterion** — n/a.
**Force level** — Nice.
**Owens** — Out of scope for a Tier 2 comprehension prototype. Defer to Layer 3 pricing work.
**Cannot see** — Everything pricing-related.
**[WOBBLY · ECON]** — Brief contains no price/corridor material. Voice declines to pad.

### 29 — Economic Buyer / MKT
**Sign** — The brief's user is the MSP *technician* (makes the autonomy decision, line 6), but Layer 3 licensing is paid by the MSP *business* [R — brief lines 6, 47]. User ≠ buyer.
**Hypothesis** — The technician's confidence (the OKR) and the business's willingness to pay licensing fees (the revenue, line 47) are held by different people. The trust UI serves the *user*; the *economic buyer* cares about labor reduction and predictable cost. The brief optimizes for the user and assumes the buyer follows.
**Kill criterion** — Wrong if technician and economic buyer are the same person (small MSP, owner-operator).
**Force level** — Should.
**Owens** — Name the buyer. If the breakdown only persuades the technician, who persuades the owner to pay for more Experts? The defensibility/audit angle (JTBD-social, 22) may be the buyer-facing value.
**Cannot see** — The actual org chart of the buying MSP. No buyer data sourced.

---

## CNPT — Concept Work — *Is the thing we are making any good?*

### 36 — Kumar Mode 5 Concept Generation / IIT
**Sign** — The brief generates exactly **two** concepts: the breakdown UI (primary) and the badge/collapsed fallback (lines 108-109) [R].
**Hypothesis** — Two concepts is thin concept generation. The space includes at least: numeric score, five-bar breakdown, badge tiers, peer-comparison ("MSPs like you"), narrative explanation ("trust rose because 30 days clean"), and decision-assist ("recommend: grant"). The brief pre-converged.
**Kill criterion** — Wrong if the team generated and discarded a wide concept set before writing the brief.
**Force level** — Should.
**Owens** — Generate ≥5 concepts before building one. The narrative explanation and decision-assist concepts may beat the breakdown on the actual job (JTBD, 15).
**Cannot see** — Which concept is best without evaluation (handed to 37).

### 37 — Kumar Mode 6 Evaluation / IIT
**Sign** — The brief has explicit evaluation criteria (70% identify 2/5; <90s; counter-metric <10% time, lines 9, 62-63) [R].
**Hypothesis** — The evaluation criteria are well-formed for *comprehension* but missing for *decision quality* and *confidence*. You can pass all three stated criteria and still build a UI that doesn't shift the graduation decision.
**Kill criterion** — Wrong if comprehension perfectly predicts graduation decisions.
**Force level** — Should.
**Owens** — Add two evaluation criteria: decision-shift (does exposure change the grant/withhold choice?) and confidence-shift (self-report). The brief tests if MSPs *understand*; add whether they *act differently*.
**Cannot see** — Long-term outcome (does graduation hold?). Mode 6 evaluates the concept, not its field durability (handed to Mode 7).

### 38 — Owen Quality Pyramid / IIT
**Sign** — The brief addresses lower pyramid tiers (function: shows the math; reliability: implied) but the top tiers (does it *please*, does it *transform* the MSP's relationship to AI trust) are aspirational [R — OKR "confidence," line 7].
**Hypothesis** — A breakdown UI can satisfy Function and Reliability and still fail at Pleasure (it's a chore) and Meaning (it doesn't change how the MSP relates to AI autonomy). The OKR lives at the top of the pyramid; the build plan lives at the bottom.
**Kill criterion** — Wrong if functional comprehension *is* the meaningful outcome for this user.
**Force level** — Ought.
**Owens** — Don't stop at "MSP can read it." Climb to "MSP feels the boundary is *legible and fair*" — that's where confidence lives. The audit-trail-as-defensibility angle (22) reaches Meaning.
**Cannot see** — The MSP's value hierarchy. Pyramid assumes a universal quality ladder; B2B operators may cap at Reliability.

---

## EVID — Evidence Math — *the scoring math itself, inside every cluster*

### 30 — Owen RELATN / IIT
**Sign** — The brief's own evidence ratio is stated and (per the 47% rule) should be grep-verified: 9 [R] / 0 [D] / 9 [A] / 2 [?] = 20 claims, 55% [A]+[?] [R — brief lines 87-93]. The widest-reach hub in the library (15 partners, library line 352).
**Hypothesis** — The RELATN structure of this brief is *honest but thin*: zero [D] (data) claims is the loudest signal. Every quantitative threshold (70%, 90s, 10%) is [A] — invented, not measured (brief lines 53, 63). The math underneath the brief has no empirical floor.
**Kill criterion** — Wrong if the [D] count rises above 0 after baseline instrumentation (Next Step #3, line 104).
**Force level** — Must.
**Owens** — Flag the **zero-[D] condition** as the single most important gap. A Tier 2 brief may carry 55% [A]+[?], but 0% data means every success threshold is a guess. Instrument baseline graduation rate (line 76) before claiming any threshold.
**Cannot see** — Whether the assumptions are *right* — RELATN scores confidence in sourcing, not in truth.

### 31 — [CS:] Confidence Tags / ANT
**Sign** — The brief tags claims with [R]/[A]/[?] consistently (brief throughout) [R — Band Protocol convention]. The 47% rule applies: ratios must be grep-verified before quoting (library/CLAUDE convention).
**Hypothesis** — The tagging discipline is present and correct — this brief practices what the protocol preaches. But the brief quotes its own ratio (55%) without showing the grep. Per the 47% rule (spec once said 47%, grep showed 80%), the ratio is itself an unverified claim until counted.
**Kill criterion** — Wrong if a grep of the brief confirms exactly 20 tagged claims at the stated split.
**Force level** — Must.
**Owens** — Grep-verify the 20-claim count before this brief ships in any handoff. Fluency does not know its own math.
**Cannot see** — Whether a correctly-tagged claim is *true*. [CS:] tags sourcing confidence, not correctness — same blind spot as RELATN, by design (they're +2 partners, library line 283).

---

## META — Metaplan — *governance: how the work runs*

### 40 — Owen Means/Ends / IIT
**Sign** — The brief's end (MSP confidence, line 7) and means (breakdown UI, title) are stated but the means-end chain has an unjustified link: *why is "show the math" the means to "confidence"?* [R — link is [A], line 47].
**Hypothesis** — The means was likely chosen before the end was analyzed (the calculation existed, so exposing it became the means). A clean means/ends analysis might select a *different* means (peer proof, decision-assist) for the same end.
**Kill criterion** — Wrong if "show the math" is the only means that reaches "confidence" for this user.
**Force level** — Should.
**Owens** — Run means/ends backward from "confidence": list every means that could produce it, then test which the prototype should embody. Don't assume the built calculation is the right means just because it exists.
**Cannot see** — The end's true definition (is "confidence" comprehension, safety-feeling, or defensibility?). Needs JOBS/NEEDS input.

### 41 — Owen Metaplanning / IIT
**Sign** — The brief plans its own next steps and failure branches (lines 99-109), including discovery research, taxonomy definition, instrumentation [R]. The governance hub of the library (14 partners, line 353).
**Hypothesis** — The metaplan is *inverted*: discovery (line 102), taxonomy (line 103), and baseline data (line 104) are scheduled *after* the prototype. Sound metaplanning would front-load the discovery that resolves the [?] core problem, then build. The brief builds first because it's a research instrument — defensible at Tier 2, risky if results get treated as validation.
**Kill criterion** — Wrong if the prototype is explicitly a discovery *probe* (Cynefin, 06) whose only job is to provoke the Mode 3 conversation.
**Force level** — Must.
**Owens** — Make the sequencing explicit and intentional: "we build to provoke discovery, not to validate." Otherwise a well-tested prototype becomes false evidence that the [?] problem was real.
**Cannot see** — Organizational pressure to ship. Metaplanning assumes the plan can be followed.

### 42 — Owen Two-Step Development / IIT
**Sign** — The brief separates a research prototype (step 1, Tier 2) from production (step 2, implied in Next Steps) [R — lines 95, 101].
**Hypothesis** — The two-step structure is present and correct: divergent exploration (which trust UI?) before convergent development (build the chosen one). The brief is honestly at step 1.
**Kill criterion** — Wrong if the org treats the Tier 2 prototype as step 2 (production-bound).
**Force level** — Should.
**Owens** — Protect the two-step boundary in the handoff to Nicole: this is a step-1 artifact. The badge-vs-breakdown question (lines 108-109) is exactly the divergence step-1 should resolve.
**Cannot see** — Whether step 2 will actually run, or whether the prototype ships as-is.

### 43 — Owen Originator/Contributors / IIT
**Sign** — Owner is Nicole Reineke (brief line 5); contributors (Engineering for model weights, Research for discovery) are named only implicitly in Next Steps (lines 103-104) [R].
**Hypothesis** — The originator is clear; the contributor structure is under-specified. Critical contributors not yet engaged: Engineering (owns the calculation internals — needed by Owen Design Factor, 03) and Research (owns the missing discovery, 23).
**Kill criterion** — Wrong if Nicole has already secured Eng + Research commitments.
**Force level** — Should.
**Owens** — Name the contributors and their deliverables before build: Eng → component weights + risk taxonomy (line 79, [?]); Research → the Mode 3 sessions (line 102).
**Cannot see** — Actual team availability. Originator/Contributors maps roles, not capacity.

### 44 — IDEO Design Thinking / IDEO
**Sign** — The brief skips Empathize (no MSP observation, line 75) and Define (problem is [?], line 30) and lands at Prototype [R].
**Hypothesis** — The 5-stage process is entered at stage 3 (Prototype) without stages 1-2 (Empathize, Define). This is "prototype to learn" — legitimate IDEO practice *when the prototype's job is to build empathy*, illegitimate when it's treated as a solution.
**Kill criterion** — Wrong if the prototype is explicitly used as an empathy-generation tool (show MSPs, watch reactions, define backward).
**Force level** — Should.
**Owens** — Use the prototype as a Define-stage instrument: put it in front of MSPs not to validate but to provoke "actually, what I really want is…" The brief's failure-mode awareness (lines 37-40) shows the team is ready to learn from rejection.
**Cannot see** — Whether the team has the humility to let the prototype fail and redefine. Process can't supply culture.

---

## RLZE — Realize — *post-launch (visible in tree, not scored pre-launch)*

### 39 — Kumar Mode 7 Realize / IIT
**Sign** — The brief plans for failure-design and rollback (lines 81, 105) but no realize/rollout plan: no phased release, no adoption monitoring, no field-feedback loop [R].
**Hypothesis** — Realize is correctly out of scope at Tier 2. But one realize-stage concern leaks back: the counter-metric (review time, line 9) is only measurable *in the field*, not in a lab usability test. The brief's own success criterion partly requires realization to verify.
**Kill criterion** — Wrong if the counter-metric can be validated in the lab.
**Force level** — Ought.
**Owens** — Note that the time-cost counter-metric (line 9) is a field measurement; the lab test can only estimate it. Flag this to Nicole so a passing lab result isn't read as a passing field result.
**Cannot see** — Pre-launch behavior. Mode 7 is structurally post-launch; against a Tier 2 brief it can only point forward.
**[WOBBLY · RLZE]** — Realize is post-launch; minimal sourced material at this stage. Voice stays light by design (library line 79: "not scored in pre-launch Planning use").

---

# CROSS-TALK

*Three required moves. RELATN is bounded 0..+2 — these are different questions surfacing innovative space, not conflicts (library line 38, Principle F).*

## Move 1 — Direct Response (one voice re-reads another's Sign)

**SDT (20) responds to JTBD-Functional's (15) Sign.**
JTBD-Functional reads the brief's failure-mode-1 (line 37) as: the job is *decide faster*, and the math gets fired if a verdict does the job. SDT reads the *same line 37* differently: "if they only care about the outcome" is not just an efficiency signal — it's a **competence-protection** signal. The MSP may resist seeing the math not because it's slow, but because *not understanding it threatens their sense of being a capable operator*. Same sign (MSPs want the verdict, not the math); two hypotheses (it's about time / it's about felt competence). Neither voice produced this alone: **the verdict-preference may be a competence-defense, which means a faster UI doesn't fix it — only a UI that makes the MSP feel the math is theirs to judge does.**

## Move 2 — Blind-Spot Supply (one voice fills another's "Cannot see")

**Kumar Mode 3 Ethnography (23) fills JTBD-Functional's (15) blind spot.**
JTBD-Functional cannot see the emotional/social dimension of the job and cannot confirm the job without field contact. Mode 3's owens *is exactly the field instrument*: the brief's own Next-Step #1 ("walk me through how you decide," line 102) is unrun ethnography. The blind spot JTBD names ("I can't confirm the job") is filled by the work Mode 3 demands be moved earlier. **The functional job is unconfirmable until the ethnography JTBD depends on is run before the build, not after — which inverts the brief's sequencing (Metaplanning, 41, flagged this independently).** Two voices converging on the same correction is a +1 reinforce, not a conflict (RELATN: 15↔23 = +1, library line 223).

**Service Blueprint (25) fills SDT's (20) blind spot.**
SDT cannot see functional task time — it can make the MSP feel capable while slowing them. Service Blueprint supplies the missing backstage: the failure-path blueprint (L4 errs → rollback → recalculation, line 81) is *where* competence is won or lost. **The MSP's sense of competence isn't built at the happy-path breakdown screen; it's built or destroyed at the moment a trusted coworker fails and the system either explains the drop (competence preserved) or silently demotes it (competence destroyed).** Neither SDT nor Blueprint said this alone.

## Move 3 — Productive Tension (different questions, named not resolved)

**Tension A — JOBS (15) vs. NEEDS (20): does showing the math reduce work, or protect felt competence?**
JTBD-Functional: the job is decision efficiency; the math is overhead to be minimized; collapse to a verdict (RELATN-neutral with SDT — different cluster, different question). SDT: the math, *if framed as advisory input the human judges*, is what preserves the human's competence and autonomy in the trust relationship — removing it may feel like the machine deciding *for* them. **One voice wants to hide the math to save time; the other wants to keep it visible to save agency. The brief sets this up directly (Failure Mode 1, line 37, vs. OKR "confidence," line 7).** This is Beth's to route. RELATN-honest framing: these are two different questions (efficiency vs. agency) that happen to point at the same UI control — the innovative space is a design that does both (verdict-primary, math-on-demand, framed as the human's tool). Per library Principle F, the paradox is the source, not the problem.

**Tension B — Owen Project Statement (07) vs. Mode 4 Hypothesis (05): is the brief testing the right thing?**
Project Statement: the aim conflates *comprehension* and *confidence* — two ends on one artifact. Mode 4: the brief's hypothesis tests comprehension (70% identify 2/5 components, line 62), which is the *proxy*, not the goal. **Together: the brief will produce a clean result on the wrong variable. A 70%-comprehension pass tells Nicole nothing about whether confidence moved or graduation accelerated.** Different questions (is the aim clean? / is the metric the aim?) converging on one defect: the success criterion measures the means, not the end. Route to Beth.

**Tension C — Christensen (19) vs. Doblin (12): where is the defensible value?**
Christensen: the disruptive engine is earned-autonomy (does the job with fewer humans, line 26); the trust UI is sustaining, and sustaining innovations don't win markets. Doblin: the UI is single-type (Customer Engagement), the least defensible innovation type. **Both voices, from different questions (adoption position / portfolio shape), land on: the trust-breakdown UI is not where the moat is — the moat is the autonomy model and the Layer 3 licensing it enables.** RELATN: 12↔19 not directly listed (independent), but both reinforce the same downstream caution. Route to Beth: is this prototype being asked to carry more strategic weight than a comprehension layer can bear?

**Tension D — EVID (30/31) vs. the whole council: zero-[D] floor.**
Owen RELATN and [CS:] tags both name the same structural fact: **zero [D] claims.** Every threshold the other voices critique (70%, 90s, 10%) is [A]-invented. This isn't a tension *between* voices — it's the EVID cluster informing all the others that their kill criteria cannot yet be evaluated against data, only against future instrumentation (Next Step #3, line 104). The council is testifying against a hypothesis with no empirical floor. That is the gate-check finding, restated by the math voices from inside.

---

# SYNTHESIS

[0% Claude — fill this in]
