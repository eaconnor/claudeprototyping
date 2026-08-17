**MEAL tier.** Cost: ~3.2 ml water / 0.38 g CO₂e.

# Council Testimony — betamax-long.brief.md

**Gate 1 status:** Mixed, not clean. Core demand claim is sourced ("general consumer demand for home video recording, well established" [D]). But the load-bearing fit question — does a 1-hour cassette actually satisfy the stated use cases (full films, sports broadcasts) — is explicitly unresourced: `evidence_sources` lists "no cited research on minimum required recording length," and the counter_metric itself is tagged [?]. Council is testifying against a brief where the *existence* of the problem is verified but the *design constraint that determines whether the product solves it* is not. Proceeding, with that named.

---

### Jobs-to-Be-Done — the job is "let me watch the whole thing," and the spec doesn't deliver it

- The functional job stated in the brief is recording broadcast TV and watching on one's own schedule. The two named target use cases — full films, sports broadcasts — both routinely exceed 60 minutes. A 1-hour cassette forces a mid-recording tape swap, which means the product cannot complete the job it was explicitly hired to do for its own stated primary use cases (Gate 3).
- What gets fired if this job goes unserved: not a competing product, but the *habit* — appointment viewing, live broadcast, "you had to be there." If the format can't finish the job, users may simply not adopt recording behavior for these use cases, or wait for the rival format described in the brief.
- Gate 2's OKR ("become the consumer standard") is a company job, not a customer job. The brief conflates "win the format war" with "solve the customer's time-shifting problem" — they are not the same job and can be optimized against each other.

**Strongest objection:** The brief's own counter_metric — recording length sufficiency — is the single metric that determines job completion, and it's tagged [?] with zero cited research. This isn't a minor gap; it's the JTBD fit test, unresourced, sitting inside a brief that otherwise treats demand as settled.

---

### Service Blueprint — the tape swap is a frontstage failure with no backstage fix

- Mid-recording cassette change is a frontstage event: the customer experiences it directly, in real time, with no way for the company to smooth it over after the fact. Unlike a software gap, there's no backstage patch for a hardware ceiling.
- The brief names no support process for the swap — no auto-pause, no bundled second cassette, no guidance on how consumers are expected to time a mid-broadcast tape change without losing content. "What's missing" section is silent on this specific operational gap.
- Backstage licensing strategy (slow/selective) is invisible to the consumer until it surfaces at retail as fewer devices and higher prices (failure mode 2) — a backstage decision with a delayed frontstage consequence the brief doesn't trace through to the shelf.

**Strongest objection:** There is a visible, customer-facing failure point (the swap) that the blueprint can't paper over with process design — it requires a hardware fix the brief doesn't have, and no interim service accommodation is proposed.

---

### Self-Determination Theory — autonomy gain, competence cost, relatedness constrained by design choice

- Autonomy: real gain vs. the status quo of no recording at all — time-shifting is a genuine control increase over when content is consumed.
- Competence: undermined by the tape-swap requirement for the stated primary use cases. A user who has to correctly time a mid-broadcast cassette change and still loses part of the recording is not going to feel capable; they're going to feel the product failed them.
- Relatedness: the closed/slow licensing strategy (Gate 2) limits the number of compatible devices in the market, which constrains the social dimension of adopting a format — fewer friends/family on the same standard, less shared tape-lending culture, smaller ecosystem to feel part of. This is a user-facing cost of a decision framed in the brief purely as a competitive bet.

**Strongest objection:** The brief treats licensing strategy (Gate 2) as a market-control question only. SDT flags that the same decision has a direct, uncosted effect on user relatedness and competence — that cost never enters the OKR ("establish the standard").

---

### Disruptive Innovation — this is the historical Betamax setup, and the theory has already run this experiment

- Relative to the no-home-recording status quo, this is disruptive: it creates a market that didn't previously exist, and no incumbent format is being attacked because none exists yet (Gate 1).
- But the *strategy* named in Gate 2 — first to market, proprietary, closed/slow licensing — is a sustaining, margin-protecting move, not a disruptor's move. The brief's own failure mode 2 names a rival entering with longer recording time and more open licensing, which is the classically disruptive move: lower price via broader manufacturer competition, wider distribution, better fit to the stated use case.
- [CS: HIGH] This brief's structure closely mirrors the historical Sony Betamax vs. JVC VHS format war: Betamax was first, ran shorter maximum recording times, and pursued tighter licensing; VHS entered with longer recording time and looser licensing, and won the format war. If this brief is modeling that case, the theory doesn't predict an open outcome — it predicts the strategy in Gate 2 loses.
- Who loses market position if the *rival's* approach wins instead: this format's manufacturer, and any hardware partner who licensed in early expecting exclusivity or premium terms.

**Strongest objection:** The brief frames Gate 2's closed/slow strategy as a bet with uncertain odds. Disruptive Innovation theory — and the historical case this brief appears to be modeling [CS: HIGH] — treats it as a well-documented losing pattern, not an open bet. "Failure mode 2" undersells this by naming it as a possible consequence rather than the expected one.

---

### Value Chain — "establish the standard" is a chokepoint objective wearing a customer-problem costume

- This capability inserts between broadcast/film content distribution and home consumption — a new link in the value chain that didn't exist before recording was possible.
- Margin effect: a closed, slowly-licensed format is a chokepoint play — control format licensing fees and consumable media (cassette) sales rather than compete on hardware price. That protects per-unit margin but, per failure mode 2, shrinks manufacturer variety and retail shelf presence, trading margin-per-unit for total volume.
- The rival's open licensing is a different chokepoint bet entirely: give up format-control margin to win on network effects and distribution volume — first to scale wins the standard, not first to lock it down.
- Gate 1's customer problem (afford to record TV at home) does not require winning the standard war at all. "Establish the standard" (okr_objective) is a company margin/control objective, not a restatement of the customer problem — the brief moves from a sourced customer problem to an unsourced company strategy without marking the seam.

**Strongest objection:** The OKR's key result is written as if standard-adoption is what the customer wants. It isn't — Gate 1's problem statement is satisfied by *any* affordable recording format. "Becoming the standard" is the company's chokepoint objective, and the brief should tag it [A] rather than let it read as a natural extension of the customer problem.

---

> **Named divergence — Disruptive Innovation vs. Value Chain, on the same Gate 2 decision:** Value Chain reads the closed/slow licensing strategy as a *rational chokepoint play* — trade volume for margin control, a defensible strategic choice. Disruptive Innovation reads the identical decision as the *historically losing move* — the mechanism by which a first-to-market closed format loses to a later, more open entrant. Both voices are looking at the same line in Gate 2 ("license the format slowly and selectively") and reaching opposite verdicts on whether it protects or destroys value. This is not a gap to fill — it's a bet the brief owner has to place with eyes open, not average away.

> **Named divergence — Service Blueprint vs. Jobs-to-Be-Done, on severity of the tape-swap:** JTBD frames the 1-hour ceiling as disqualifying against the *stated* primary use cases (job fails to complete). Service Blueprint frames it more narrowly as a frontstage experience failure that *could* be mitigated with an unaddressed support process (e.g., bundled second cassette, guidance). One treats the gap as fatal to the product's core promise; the other treats it as a solvable service-design omission. The brief's "what's missing" section doesn't resolve which read is correct because it names the research gap, not a design response.
