**MEAL tier — ~3.20 ml water, ~0.38 g CO₂e (9.7× a Google search).**

# Council Testimony — betamax-long.brief.md

**Gate 1 status:** Sourced, not empty. The core problem — consumer demand for home recording and time-shifted viewing — is tagged `[D]`, well-documented. The specific sub-claim that determines whether the product satisfies that demand (does a 1-hour cassette cover the target use cases) is tagged `[?]`, untested. Proceeding — this is a sourced-problem/untested-spec brief, not an unsourced one.

---

### Jobs-to-Be-Done (Christensen / Ulwick) — the job is real, the spec may not finish it

The functional job is clear and well-evidenced: record broadcast TV, watch on the viewer's own schedule instead of the network's. [D] What gets fired is appointment viewing itself — the consumer's only prior option was "be in front of the TV when it airs, or miss it." That's a strong, unambiguous job with no existing consumer-grade solution, per the problem statement. [D]

The risk sits in execution, not job-existence: the brief names film and sports broadcasts as the primary recording targets consumers want (failure mode 1), and a 1-hour cap does not cover either without a manual tape swap. [D] A job that requires the user to babysit the machine mid-task to finish the job is a job half-hired.

**Strongest objection:** The brief assumes the job is "record and time-shift" when the job consumers are actually hiring for may be closer to "record and time-shift *without supervision*" — unattended capture of a 3-hour game is a different, harder job than unattended capture of a 30-minute sitcom, and the brief has not separated these as distinct jobs with distinct minimum specs.

**Verdict [this lens only]:** Good
**Why this strength, not one notch over:** Not Strong Good — the length gap hits the exact use cases (film, sports) the OKR is counting on, and that's a real risk to job-completion, not a footnote. Not Neutral — the underlying job is sourced, real, and has no incumbent consumer solution; that's a structurally sound bet independent of this spec detail.

[ROI from this lens]
  Business: Unknown — we don't have this data: no adoption/willingness-to-pay figures tied to recording length in the brief.
  User: Time-shifted viewing removes the "be home for the broadcast" cost — the size of that saving for a consumer who has to swap tapes mid-game is smaller than advertised. Unknown magnitude.

---

### Service Blueprint (Shostack / Bitner) — the chokepoint is the backstage risk, not the missing build

At gate 30, no backstage should be built yet — that's expected and not held against this brief. What *is* fair to score: the brief already names a specific structural backstage decision — license the format "slowly and selectively" (Gate 2) [A] — and that decision has a visible frontstage consequence already surfaced in the brief itself: fewer manufacturers, less retail shelf presence, less price competition (failure mode 2). This is not "unbuilt," it's a chosen chokepoint with a named downstream cost.

Second gap, genuinely unbuilt and worth naming at length even though it doesn't move the verdict: there is no support process defined for what happens when a recording hits the 1-hour wall mid-broadcast. Does the deck stop cleanly, warn the user in advance, or just cut off? That's a frontstage moment of failure with zero backstage design specified — normal for gate 30, but it will need an answer before Gate 3 closes for real.

**Strongest objection:** The brief treats "license slowly and selectively" as a Gate 2 strategic bet, but it is functionally a backstage support-and-distribution decision that determines how many households can even access the format — and the brief's own Gate 3 evidence says a rival is entering with a more open version of exactly this backstage choice. That's a structural chokepoint risk, not a stage-appropriate gap, and it's fair to mark down for it.

**Verdict [this lens only]:** Bad
**Why this strength, not one notch over:** Not Strong Bad — "slowly and selectively" is a pace choice, not a permanent lockout; it's a correctable risk if the owner reads the rival signal in time. Not Neutral — per the stage-appropriate rule, a *named* structural chokepoint with a *named* competitive threat (Gate 3) is more than "hasn't been built yet," so it earns the mark-down rather than sitting at Neutral by default.

[ROI from this lens]
  Business: Slow/selective licensing likely protects near-term per-unit margin on licensed hardware but at the cost of installed-base growth speed. Unknown: no royalty or volume figures in the brief.
  User: Unknown — no data on how licensing pace affects retail price or availability to the actual consumer.

---

### Self-Determination Theory (Deci / Ryan) — competence breaks exactly where the stakes are highest

Autonomy is well-served in principle: the entire premise is "record what you want, watch when you want" instead of being at the network's mercy. [D] That's a genuine autonomy gain over the prior state (no consumer option).

Competence is where the design fails on its own terms. The 1-hour cap means a user who does everything right — sets up a recording of a full film or a sports broadcast — is stopped by the machine, not by their own error, at the exact moment the recording matters most (failure mode 1). SDT would flag this as a design-induced competence violation: the user is likely to experience the cutoff as personal failure ("I did it wrong") rather than a spec limitation, because the brief gives no indication the device signals its own limit in advance.

Relatedness is thinner here but present: whether a household can actually get compatible hardware, or trade/share tapes with friends and family, depends on how many manufacturers are licensed — which loops back to the closed/slow strategy in Gate 2. [A] A tightly controlled format narrows who else has a compatible machine.

**Strongest objection:** The brief's OKR bets on this format becoming "the consumer standard" [A], but the two named failure modes — a functional gap on the primary use cases, and a closed distribution strategy — both actively work against the sense of competence and belonging that would make early adopters *evangelize* the format to others. Standard-setting historically runs on word-of-mouth and shared-hardware normalcy; this design risks undermining both at once.

**Verdict [this lens only]:** Bad
**Why this strength, not one notch over:** Not Strong Bad — the competence failure is confined to long-form content; short recordings (news, sitcoms) still complete cleanly, so the flaw is partial, not total. Not Neutral — the failure lands precisely on the two use cases (film, sports) the brief itself names as primary demand drivers, so it's not a marginal edge case.

[ROI from this lens]
  Business: Unknown — no churn or satisfaction data tied to mid-recording failures.
  User: A user who loses the second half of a game to a tape swap loses the entire value of "time-shifting" for that instance — the cost is total, not partial, for that use.

---

### Disruptive Innovation (Christensen) — sound new-market thesis, wrong-playbook execution bet

This reads as new-market disruption, not sustaining innovation: there is no existing consumer product being improved for existing customers — the problem statement says no affordable consumer format exists yet. [D] The incumbent under threat is the live-broadcast/appointment-viewing ecosystem (networks' ad model depends on people watching at broadcast time); this format, if it succeeds at all, erodes that regardless of tape length.

The tension: Christensen's new-market playbook wins on breadth — more manufacturers, more price points, more retail doors — because the disruptor is competing against non-consumption, not against a rival on performance. Gate 2's bet to license "slowly and selectively" [A] is the sustaining-incumbent playbook (protect control of a category that already has demand) applied to a market that doesn't exist yet. Gate 3 already shows the cost of that mismatch: a rival is entering with both a technical edge (longer recording) and the breadth playbook (more open licensing). [D]

**Strongest objection:** The brief frames the competitive fight as "us vs. no home recording," but the more dangerous fight is horizontal — a rival executing the correct disruption playbook while this format executes the incumbent playbook. If that rival wins distribution breadth first, this format doesn't just lose share, it loses the standard-setting race the entire OKR depends on. [A]

**Verdict [this lens only]:** Neutral
**Why this strength, not one notch over:** Not Good — the licensing strategy is a real category mismatch against a named, evidenced rival move, not a hypothetical risk. Not Bad — the disruption thesis itself (create the home-recording market) is sound and sourced [D]; the flaw sits in one strategic lever (licensing pace), not in whether the opportunity exists.

[ROI from this lens]
  Business: First-mover standard-setting has historically high winner-take-most value in format wars. Unknown: no market-share or timeline projection in the brief.
  User: Unknown — no data on how format-war outcomes affected pricing or availability for the household buyer in this scenario.

---

### Value Chain (Porter) — the chokepoint bet is undercut by the brief's own evidence

This inserts a new node between broadcast/content distribution and the living room: consumer-controlled recording and playback, a capability that didn't exist for home users before. [D] That's margin-creating, not margin-protecting — a new hardware category plus a recurring consumables revenue stream (cassettes) that has no prior claimant.

The chokepoint is the format standard itself: whoever controls it controls royalty flow from every hardware manufacturer and eventually every tape and content licensor downstream. Gate 2's closed/selective licensing bet [A] is a direct attempt to hold that chokepoint. But chokepoint control in a two-sided hardware market usually has to be earned through installed-base speed, and installed-base speed is exactly what breadth of manufacturers and price points delivers — which is exactly what the rival is doing instead (Gate 3). [D]

**Strongest objection:** The brief's own sourced evidence — a rival entering with longer capacity *and* more open licensing — describes the textbook way an incumbent chokepoint gets lost in a standards race: not through inferior technology alone, but through slower installed-base growth. If that rival wins the standard, this format doesn't retain a smaller slice of the chokepoint — it loses the chokepoint entirely and becomes the also-ran format.

**Verdict [this lens only]:** Bad
**Why this strength, not one notch over:** Not Strong Bad — Gate 2's language ("slowly and selectively") signals this is a pace choice, not a locked-in policy; it's still correctable if the owner acts on the Gate 3 signal. Not Neutral — the threat to the margin mechanism isn't speculative, it's named directly in the brief's own Gate 3 evidence, so it earns more than a wait-and-see score.

[ROI from this lens]
  Business: Chokepoint control, if won, converts to durable royalty and standards-setting margin for years. Unknown: no figures on licensing terms or projected royalty rate in the brief.
  User: Unknown — no data on how the standards race outcome would affect eventual consumer price.

---

> **Disruptive Innovation and Self-Determination Theory diverge on the 1-hour cap.** Disruptive Innovation would read an inferior-on-mainstream-metrics launch spec as the normal, expected shape of a new-market disruptor — Christensen's theory predicts disruptors under-perform on the metrics incumbents/rivals care about and improve later, so the cap alone isn't damning. SDT reads the same cap as a design-induced competence violation that lands on the primary use cases the OKR depends on, and treats it as a real flaw regardless of category-entry norms. This is a decision about how much tolerance the owner has for "ship imperfect and iterate" versus "the first user experience on the flagship use case has to work" — not something the council resolves. Route to Beth, Meaghan, and Nicole.
