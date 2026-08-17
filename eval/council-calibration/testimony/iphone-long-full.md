**MEAL — council testimony on `iphone-long.brief.md`**

Gate 1: sourced but thin. Problem statement carries `[D]` (competitor specs, publicly known) but the framing claim — "No dominant device treats the phone as a general consumer computer" — is `[A]`, unsourced. Gate is set to 30 (idea stage). Proceeding with commentary on a partially-sourced brief; flagging, not blocking.

### Jobs-to-Be-Done — convergence bet with an unvalidated functional core

- The functional job stated in the OKR ("converge phone, media player, internet communicator") is real but the *actual* job being hired for at Gate 3 is narrower: touch-only input replaces precision typing, which is the job BlackBerry/Palm/Windows Mobile were actually hired to do (enterprise email). The brief doesn't reconcile this — it just drops the enterprise job from the "what's missing" list.
- Emotional/social job is implicit and untagged: "one device, not three" is a status/simplicity job, not named anywhere in the frontmatter as `[A]` or otherwise. That's a gap in the brief's own tagging discipline.
- What gets fired: not just competitor phones — the brief's own convergence bet fires the iPod as a standalone product line. That's a self-fire, not a competitive fire, and JTBD would ask whether Apple modeled cannibalization risk. Nothing in Gate 2 addresses it.
- The counter-metric (`typing error rate... tolerate versus physical keys [?]`) is the right JTBD instinct — checking whether the new solution actually does the old job — but it's `[?]`, meaning the brief is shipping the bet without having defined what "good enough" typing looks like.

**Strongest objection:** The brief bets that consumers will trade a validated job (accurate typing) for an unvalidated one (single-device convergence) and tags the key result and counter-metric both `[?]`. JTBD has no evidence the job-switch is real; it's an assumption wearing an OKR's clothing.

### Service Blueprint — frontstage failure with no backstage recourse

- Failure mode #1 (typing rejection) is a frontstage failure with zero backstage mitigation named. No physical keyboard fallback, no stated software correction/support flow. The brief identifies the failure and stops — it doesn't blueprint what happens next for the user who mistypes an email in front of a client.
- The AT&T exclusivity (`[A]`) is a backstage business relationship that becomes frontstage friction immediately: activation, network coverage, and support are now bottlenecked through a single carrier's retail and service infrastructure, and the brief treats it as a distribution decision, not a service-experience decision.
- No third-party app store at launch (`[A]`) means Apple is the sole support entity for every software interaction on the device — there is no blueprint for what "support" means when the whole software surface is vertically owned. This is a real support-process gap, not a feature choice, and it isn't in "what's missing."
- "What's missing" names the *economic* gap for a future app ecosystem `[?]` but not the *service* gap — who handles a broken/rejected software experience in year one when there's nothing to swap in.

**Strongest objection:** The brief names its own biggest failure mode (typing rejection) and then offers no backstage process for it. A blueprint with an identified frontstage failure and no support path behind it isn't a blueprint — it's a bet with the safety net removed.

### Self-Determination Theory — competence risk shipped without a threshold

- Autonomy: removing the stylus is a genuine autonomy gain (direct finger manipulation vs. an intermediary tool) — this cuts in the design's favor and should be named as a strength, not just a risk.
- Competence: the glass keyboard directly threatens competence for users trained on physical keys (explicitly BlackBerry users per Gate 1). The counter-metric exists to catch this, but it's `[?]` — there is no operational definition of "tolerable" error rate, meaning the team knows competence is at risk and hasn't decided when to pull the plug.
- Relatedness: no third-party apps at launch (`[A]`) cuts off relatedness to a developer/customization ecosystem — at launch, the device connects the user only to Apple's own app set, not to a broader community of tools or peers building on the platform. This is a real relatedness deficit, time-boxed to "at launch," which the brief doesn't flag as temporary or permanent.
- Trust model: the brief offers no correction UI, no undo, no adaptive learning behavior for the keyboard itself — competence support depends entirely on the user's own learning curve, with the system offering nothing back.

**Strongest objection:** SDT's core question — does the system support the user's growing competence, or just demand it? — has no answer in this brief. The counter-metric is the right instinct but it's unweighted (`[?]`), so there's no actual trigger for when competence failure becomes a kill criterion.

### Disruptive Innovation — new-market disruption, but incumbents aren't actually being attacked

- Classic low-end/new-market disruptive profile: worse on the metric incumbents compete on (precision input, enterprise app support — both explicitly absent per Gate 3 and "what's missing"), better on a dimension incumbents don't serve (converged consumer media + browsing). This is textbook Christensen disruption-from-below.
- But the brief frames the incumbent as BlackBerry/Palm/Windows Mobile without naming what those incumbents actually have to defend: enterprise IT contracts, keyboard-trained user bases, existing app ecosystems for business. The brief doesn't touch that defense — it just exits the enterprise market rather than attacking it. That's disruption by *avoidance*, not by *attack*, and it's worth naming as a strategic choice, not a gap.
- The more interesting disruption the brief misses: this product cannibalizes Apple's own iPod line. Self-disruption isn't addressed anywhere in Gate 2 — "who loses market position" is answered only externally (competitors), never internally.

**Strongest objection:** Disruptive Innovation would name this as a company willing to disrupt itself (iPod) while avoiding, not attacking, the enterprise incumbents' defended ground — and the brief has no language acknowledging either dynamic.

### Value Chain — single-carrier exclusivity is an unmodeled chokepoint decision

- The AT&T exclusive deal (`[A]`) trades reach for a distribution chokepoint — one carrier controls activation, network, and likely subsidy economics. The brief names this as a build decision (Gate 3) but never as a margin decision; there's no accompanying `[D]` or `[?]` on what Apple gave up or gained in that exclusivity.
- No third-party app store at launch means 100% of software value capture sits with Apple in year one — no revenue-share ecosystem exists yet to diffuse or multiply value through developers. This is high control, but it's also a chokepoint with no stated plan to open it, which the brief's own "what's missing" section flags only as an economics gap, not a control/margin one.
- The convergence bet (phone + media player + internet communicator into one SKU) is itself a value-chain move: it compresses three margin pools (carrier device sales, media player sales, communication device sales) into one owned chokepoint. Whether that adds margin, protects it, or just consolidates risk is untagged anywhere in the brief.

**Strongest objection:** The brief's own "what's missing" section already flags app-ecosystem economics as `[?]` — Value Chain pushes further: the carrier-exclusivity chokepoint has the same unmodeled-margin problem and isn't named as missing at all. It's a silent assumption, not even flagged `[A]`.

---

> **Named divergence — JTBD vs. Self-Determination Theory on the touch-only keyboard.** JTBD reads the stylus/keyboard removal as serving a plausible emotional/social convergence job (simplicity, one device) even while flagging the functional risk as unvalidated. SDT reads the same decision as a direct competence threat with no defined tolerance and no system-side support for the user's learning curve. Same design choice, two different verdicts on whether it's a strength or a liability — this is a decision for the brief owner, not a gap to close.

> **Named divergence — Disruptive Innovation vs. Service Blueprint on the closed platform.** Disruptive Innovation reads "no third-party apps at launch" as coherent with a low-end disruption strategy — simpler, Apple-controlled, fine for a first mover attacking from below. Service Blueprint reads the same fact as an unaddressed support-process gap — no ecosystem to lean on, no blueprint for what happens when Apple's own app set doesn't cover a use case. Both are legitimate reads of the same `[A]` tag; the brief doesn't decide between "feature" and "risk," and should.
