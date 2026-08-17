**Tier: MEAL** — 3.20 ml water · 0.38 g CO₂e

# Council Testimony — `iphone-long.brief.md`

**Gate 1 status:** Sourced, not empty, but mixed confidence. The problem statement is tagged `[D]` ("competitor product specs, publicly known") — real sourcing exists for what BlackBerry/Palm/Windows Mobile devices are and do. But the supporting claim ("No dominant device treats the phone as a general consumer computer") is tagged `[A]` — an inference, not a citation. `okr_key_result` and `counter_metric` are both `[?]` — unvalidated at this stage. Gate is marked `30`, reading as early-concept maturity. Proceeding with council — there is a sourced problem to test, but the brief owner should know Gate 1 is partial, not fully verified.

---

### Jobs-to-Be-Done — a consumer job hired, an enterprise job explicitly fired

- The functional job is named directly: converge phone + media player + internet communicator into one device "consumers want, not just enterprise IT departments" (`okr_objective`). That's a clean JTBD reframe — moving the job from "enterprise productivity tool" to "personal computer in the pocket."
- The fired solution is explicit: BlackBerry, Palm, Windows Mobile — stylus/keyboard devices optimized for precision input (email, calendar), not browsing or media. [D]
- Failure mode 1 names the job the new device does *not* do well: "typing accuracy... especially for email-heavy use." That's a job being dropped, not solved differently — and nothing in Gate 3 names a compensating mechanism (predictive text, larger touch targets, anything). The brief is silent on how the emotional/social job (desirability, "this feels like the future") is meant to outweigh a functional regression in a job millions of existing users already do well on hardware keys.
- Social job is implied but never stated: "consumers want" (Gate 2) reads as a status/identity bet — owning the converged device — but the brief never separates the social job from the functional one. That's a gap in the JTBD frame itself, not just missing data.

**Strongest objection:** The `okr_key_result` — "consumers can type accurately... on a touchscreen-only device" — is tagged `[?]`. JTBD lives or dies on whether the *functional* job gets done at least as well as the incumbent. This brief bets the whole convergence story on an unvalidated typing-accuracy claim while simultaneously admitting (Gate 2) "no prior product has validated all-touch typing at scale." That's the job at the center of the bet, unverified.

**Verdict:** Strong objection.
**Why this strength:** The unresolved claim isn't peripheral — it's the counter-metric itself (`counter_metric` `[?]`). A `[?]` on the make-or-break mechanic of the core bet, at any gate stage, is a structural gap, not a maturity artifact.

---

### Service Blueprint — the exclusivity chokepoints are backstage decisions with frontstage consequences

- Frontstage is clear: touch-only device, single first-party app suite, no stylus, no keyboard (Gate 3). The user-facing interaction model is well specified for a concept-stage brief.
- Backstage is where the brief goes quiet: AT&T single-carrier exclusivity (Gate 3, `[A]`) and no third-party app store (Gate 3, `[A]`) are both backstage/business decisions that directly shape what the customer can access — carrier coverage, price plans, available software — yet neither is connected to a frontstage consequence anywhere in the brief.
- Support processes the brief doesn't touch: no onboarding/education flow for users learning a touch keyboard for the first time, no path for what happens when failure mode 1 occurs (a user rejects the keyboard) — no return, no fallback, no service recovery moment named.
- **Stage-appropriate scoring applied:** `gate: 30` marks this as an early-concept brief — there is no built service yet, so granular backstage detail (support scripts, in-store training flows, AT&T handoff processes) is not a fair ask at this maturity. Full backstage blueprinting would be premature and this voice does not score the brief down for its absence.

**Strongest objection:** Stage-appropriateness excuses missing *process* detail, not missing *decision* visibility. AT&T exclusivity and the closed app store are named as `[A]` assumptions already baked into Gate 3 — they are decisions, not blueprint mechanics — and the brief never traces either decision to a customer-facing consequence (limited coverage, capped utility). That omission doesn't get a pass just because the brief is early.

**Verdict:** Moderate objection (dampened from Strong under the stage rule).
**Why this strength:** The missing backstage *mechanics* are stage-appropriate and not penalized. The missing *consequence-tracing* for two already-stated business decisions is not a maturity issue — it's a gap in the brief's own Gate 3 reasoning — so the objection holds at Moderate rather than being fully waived or escalated to Strong.

---

### Self-Determination Theory — autonomy gained at the interaction layer, spent at the platform layer

- Autonomy at the interaction level goes up: multitouch, direct manipulation, no stylus intermediary — the device responds to the user's own hand, which SDT would read as increasing felt control over the interaction itself.
- Autonomy at the platform level goes down, and the brief doesn't distinguish this from the above: "no third-party app store at launch; only Apple's own applications" (Gate 3, `[A]`) removes user choice over what software can run. Two different autonomy effects, same device, opposite directions — the brief treats them as one design story.
- Competence is directly at risk and the brief names it without resolving it: failure mode 1 — typing rejection by users "accustomed to physical keys" — is a felt-competence hit for exactly the population (email-heavy users) most likely to compare themselves to their old muscle memory and feel worse at the new device, not better.
- Relatedness is implied through convergence (phone + media + browsing = one object connecting the user to calls, content, and the web) but never argued — it's assumed the bundling itself produces connectedness, which is a stretch not examined anywhere in the brief.

**Strongest objection:** The brief conflates "the device feels more natural to touch" with "the device gives the user more control," when Gate 3's closed app store is a straightforward reduction in user autonomy at the platform level. SDT would call this exactly the trust-model erosion the framework warns about: the interaction feels empowering while the platform decision quietly narrows what the user is allowed to do with it.

**Verdict:** Strong objection.
**Why this strength:** This isn't a data gap — it's a conflation embedded in the brief's own structure (Gate 3 lists the closed platform as a build decision without ever weighing its autonomy cost). Strength doesn't scale down with stage because the flaw is in the reasoning, not the evidence base.

---

### Disruptive Innovation — a new-market bet dressed in disruption language, not a low-end attack

- The brief's framing ("consumers, not just enterprise IT") reads as classic Christensen new-market disruption — serving a non-consumption case (consumers who found existing smartphones irrelevant) rather than under-cutting incumbents on price for existing customers. [A]
- But the mechanics contradict a low-end/new-market play: AT&T-exclusive distribution and no third-party apps *narrow* the addressable market at launch rather than broadening it the way new-market disruption typically requires (cheap, accessible, "good enough"). Nothing in the brief states price position relative to BlackBerry/Palm.
- Who loses market position: BlackBerry, Palm, and Windows Mobile lose ground only if the enterprise gap the brief admits ("no enterprise adoption path," What's Missing) turns out not to matter to the market this device is targeting. The brief bets against the incumbents' home turf without contesting it directly.
- What the incumbent defends: precision input for email-heavy business use is untouched — this brief doesn't compete there, it routes around it. That's coherent with new-market disruption theory, but the brief never states it as a deliberate non-competition choice; it reads as an omission (`[?]` on enterprise adoption path) rather than a strategy.

**Strongest objection:** Disruptive Innovation theory requires either an overlooked non-consumer segment (new-market) or an overserved low-end segment (low-end) to make the disruption thesis coherent. This brief has neither clearly stated — no pricing data, no non-consumption evidence beyond an `[A]` assumption ("no dominant device treats the phone as a general consumer computer") — so the "disruption" label is asserted, not demonstrated.

**Verdict:** Strong objection.
**Why this strength:** The theory's own entry conditions (non-consumption or overserved low end) aren't established with evidence — both routes rely on `[A]`/`[?]` tags, at gate 30 that's expected for a concept brief, but the objection concerns whether the disruption *frame itself* is earned, which is a conceptual gap independent of build maturity.

---

### Value Chain — Apple and AT&T jointly control every chokepoint, and the margin logic is invisible

- Insertion point: the device sits across three chokepoints simultaneously — telecom distribution (AT&T exclusivity), hardware, and software platform (Apple-only apps at launch). That's an unusually concentrated position for a single product.
- Margin effect: unclear by the brief's own admission. "What's Missing" names it directly — "Economics and demand for a future app ecosystem" `[?]`. There's no stated carrier subsidy structure, no stated device margin, no stated future software take-rate.
- Chokepoint control: "no third-party app store at launch" (Gate 3, `[A]`) is presented as a product decision but it is functionally a 100% software-chokepoint claim — Apple captures all software margin and all software risk simultaneously, and the brief doesn't name this as a deliberate control play.
- Single-carrier exclusivity (AT&T) is a classic margin-vs-reach tradeoff — narrower reach traded for (presumably) better carrier economics or subsidy terms — but the brief states the decision without stating the trade.

**Strongest objection:** Value Chain analysis would flag that the brief treats "no third-party apps" and "AT&T exclusive" as build/scope decisions (Gate 3) when both are fundamentally margin-and-control decisions with named alternatives (open app store, multi-carrier) that were rejected for reasons the brief never states. Without the economics, there's no way to tell whether this is a margin-protecting move or a reach-limiting one — and the brief already flags this as unknown.

**Verdict:** Strong objection.
**Why this strength:** The gap is self-identified by the brief ("What's Missing") but the framework treats it as load-bearing, not peripheral — chokepoint control decisions without margin logic behind them are exactly the kind of `[?]` that should block a Gate 2/3 "right thing" call, not just get listed as a future unknown.

---

> **Disagreement, named, not resolved:** Self-Determination Theory and Value Chain diverge on the closed app store (Gate 3). SDT reads it as an autonomy cost to the user — a trust-eroding platform constraint. Value Chain reads the same decision as a margin-and-control play that may be entirely rational for the business. Both readings are valid from their own frame. This is a decision for the brief owner: is the closed platform a user-experience liability to manage, or a margin strategy to defend? The brief currently treats it as neither — just a stated fact in Gate 3.

> **Disagreement, named, not resolved:** Jobs-to-Be-Done and Disruptive Innovation diverge on who this device is for. JTBD reads the brief's framing at face value — "consumers, not enterprise IT" — as a legitimate job reframe. Disruptive Innovation questions whether AT&T-exclusive, Apple-apps-only actually reaches "consumers" broadly, or narrows the addressable market to an early-adopter slice that resembles neither the enterprise base nor a mass consumer base. Route this to whoever owns the market-sizing call.
