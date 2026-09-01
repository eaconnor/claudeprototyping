**MEAL tier — cost: ~3.2ml water / 0.38g CO2e**

# Council Testimony — Quick Bites ("Quibi") brief
**Gate 1 status:** Unverified. Problem statement is tagged `[A]` — asserted from executive experience, no cited user research. The OKR key result and counter-metric are both `[?]`. Council proceeds per instruction, but voices below are commentary against an unsourced problem, not analysis of a validated one.

---

### Jobs-to-Be-Done (Christensen / Ulwick) — Hiring the wrong candidate for a job nobody defined

- Brief names an occasion ("commuting, waiting in line, between meetings") but never defines the job. Occasion ≠ job. People commute for many jobs: distraction, escape, learning, status ("I finish things"), social currency at coffee-break. The brief conflates a time-slot with a need.
- Failure mode #2 in the brief already names the fired incumbent correctly: YouTube and podcasts are the current hire for gap-filling. The brief doesn't explain what's functionally, emotionally, or socially unsatisfying about that hire — it just asserts premium production values will out-compete free.
- The OKR key result ("users will pay a premium subscription for content structured in 7-10 minute chapters") is a solution-shaped hypothesis wearing a JTBD costume. It specifies the product's format, not the customer's struggle.
- No social job considered at all — bingeable, shareable, talkable-about content has a social job (water-cooler relevance) that short mobile-only chapters structurally can't serve as well as long-form.

**Strongest objection:** The brief has no interview, no diary study, no job statement in the customer's language anywhere in the evidence_sources field. `evidence_sources: ["executive experience/thesis [A]", "$1.8B raised pre-launch [D]"]` — money raised is evidence of investor belief in the thesis, not evidence the job exists. JTBD would kill this at Gate 1, not Gate 3.

---

### Service Blueprint (Shostack / Bitner) — The blueprint stops at the app icon

- Brief's Gate 3 section addresses distribution (mobile-only, no TV/web/cast) as a product decision but never as a service failure point: what happens when a user is home in the evening — the highest-volume viewing window for any subscription service — and can't cast? That's a visible frontstage gap with no backstage answer.
- No mention of onboarding, support, or churn-recovery process for the exact risk the brief's own counter-metric names: "retention must not collapse once the launch marketing wave ends." A counter-metric with no described intervention is a tripwire with no one watching it.
- The external shock noted in Gate 3 (`[D — external shock ... eliminating the commute occasion`) is treated as a footnote, but a service blueprint would ask: what's the contingency service path when the core occasion vanishes? The brief says this is missing ("What's missing" section, item 2) but stops at naming it — no backstage process proposed even as a placeholder.
- The brief never states who owns the human handoff when premium content underperforms free alternatives — no support, no content-guarantee, no refund/win-back path described.

**Strongest objection:** A blueprint can't be drawn from this brief — there's no frontstage/backstage split to critique because the backstage (support, retention, contingency) doesn't exist in the document at all. This isn't a design gap, it's a design absence.

---

### Self-Determination Theory (Deci / Ryan) — Autonomy constrained by the format itself, not by trust design

- Mobile-only, chapter-length content structurally caps user autonomy over viewing context — no choice of screen, no casting, no continuation across devices. The product removes control precisely where competitors (YouTube, Netflix) offer it freely.
- Competence isn't addressed at all in the brief — no signal for how a user would feel more capable, informed, or skilled from watching 7-10 minute chapters versus any other format. There's no stated experiential payoff beyond "premium production."
- Relatedness is actively undermined by the format bet: short, private, mobile-only, non-castable content has weaker shareability and less "watched this too" social surface than long-form or free viral content — the opposite direction of what builds relatedness.
- This isn't an AI trust-and-agency case (no AI system described), so the "trust model" half of this framework's usual question doesn't apply here — noting the absence rather than forcing it.

**Strongest objection:** SDT would say the product's core design choice (mobile-only, no cast, no continuity) actively works against autonomy and relatedness, the two levers most likely to drive retention past the launch-marketing window — which is exactly the counter-metric the brief itself is worried about. The format and the retention risk are the same problem, and the brief treats them as separate.

---

### Disruptive Innovation (Christensen) — A sustaining bet dressed as disruption, aimed at nonconsumption that already has a low-end solution

- The brief frames this as owning a new "in-between moments" occasion — classic disruption-from-a-new-market language. But disruption theory requires the new entrant to be simpler/cheaper than the incumbent it displaces. This is premium-priced, high-production-value, against free incumbents (YouTube, podcasts) already serving that job. That's the inverse of a disruptive entry — it's a sustaining move into a market segment that already has a "good enough" free solution.
- No incumbent loses market position if this lands, because no incumbent is actually threatened: Netflix isn't optimized for 7-10 minute gap content and wouldn't defend against it; YouTube already owns the gap and doesn't need to respond. The brief doesn't name who is disrupted because, per this framework, no one is.
- $1.8B raised pre-launch [D] signals investor conviction in a category-creation story, but disruptive innovation theory would flag that category creation against an entrenched free incumbent, at a premium price, is the highest-difficulty version of this play — not the low-end-disruption pattern that reliably works.

**Strongest objection:** The brief's own OKR objective — "own the in-between moments occasion" — assumes a vacant category. Disruptive Innovation theory says the category isn't vacant; it's occupied by free, and the brief presents no evidence [CS: none provided in evidence_sources] that users are underserved there, only that they're served for free.

---

### Value Chain (Porter) — Inserting at a chokepoint with no margin claim on it

- The product inserts at the content-consumption layer, competing directly with free UGC (YouTube) and existing subscription video (Netflix) at the same layer, with no upstream (production cost structure) or downstream (distribution/device) advantage stated. $1.8B raised covers content production, not a structural chokepoint.
- No platform or distribution control is described — mobile-only with no TV/web/cast means the product does not control the living-room chokepoint where the majority of premium video consumption and ad/subscription revenue in the category actually sits. [CS: MEDIUM — living-room dominance of premium video consumption is a well-established industry pattern, not brief-specific data]
- Margin effect is unclear from the brief: premium subscription price against a free-content competitor doesn't protect existing margin (there's no existing installed base) and doesn't obviously add margin either, since content-production cost at "high production value" for short-form chapters is not shown to be cheaper than long-form on a per-minute-watched basis.
- The brief provides no data on unit economics — cost per chapter produced vs. subscription revenue per user — so the margin case rests entirely on the $1.8B raise being read as validation, which is a funding signal, not a margin signal.

**Strongest objection:** Value Chain analysis would ask "whose chokepoint does this touch, and does it change who controls it?" — and this brief cannot answer that question. It touches the same layer as two entrenched incumbents, controls no unique input or distribution asset, and offers no margin model. There's no chokepoint claim here at all, sourced or assumed.

---

**Named divergence:**

> Disruptive Innovation and Value Chain converge, not diverge, on the core weakness — both frameworks independently conclude the brief has misidentified where value/disruption originates (a "vacant occasion" that is actually occupied by free incumbents, with no chokepoint advantage). This convergence across two normally distinct lenses is itself a signal worth naming to the brief owner: it's not one framework's bias, it's structural.

> Self-Determination Theory and Jobs-to-Be-Done diverge on where the fatal flaw sits: JTBD locates the failure at problem definition (the job was never established) while SDT locates it at the format decision (mobile-only/no-cast actively suppresses autonomy and relatedness even if the job were real). This is a decision for the brief owner: is this a "we don't know the problem" brief or a "we know the problem but chose a self-defeating format" brief? The document as written supports both readings simultaneously.
