Cost: MEAL (five-voice council pass against a single historical brief; no build/file operations).

# Council Testimony — Webvan (long), gate 30

Gate 1 is unverified: the problem statement is explicitly tagged [A] — "inferred from general dot-com-era enthusiasm, not deep research" — and no target-market-specific evidence is cited for willingness to pay a premium to avoid grocery shopping. Proceeding per instruction; these are voices reading a directional bet, not a validated brief. The brief itself is a retrospective/calibration fixture (real historical case: Webvan, 1999–2001), so testimony draws on documented outcome facts alongside the brief's own content — flagged inline.

### Jobs-to-Be-Done (Christensen / Ulwick) — A chore-removal bet with no fired-solution analysis

- The brief frames the job as purely functional/negative ("remove a low-value chore") [A], but never names what existing solution gets fired — the in-store trip, a competing delivery service (Peapod), or an informal solution (asking a family member). Without naming the incumbent being displaced, there's no baseline to measure switching cost against.
- Emotional job (reclaim time, reduce drudgery) is asserted, not sourced. Social job is absent from the brief entirely — grocery shopping carries browsing/selection behavior for a meaningful segment that a warehouse-pick model removes, and the brief doesn't test for that segment.
- The okr_key_result ("[?] prove unit economics in at least one market") depends on volume and repeat use, both of which depend on the job actually being painful enough to sustain a delivery premium in a 1–3% margin category [CS: HIGH] — untested at Gate 1.

**Strongest objection:** JTBD would say this brief skips the single most falsifiable question in the framework — "what do people currently do, and why would they stop?" — and goes straight to infrastructure capital commitment [D] without answering it.

**Verdict:** Moderate
**Why this strength:** The functional-job framing is plausible and consistent with the era's narrative, but the emotional/social job claims are inferred rather than sourced — the brief gives no research to confirm or deny them.

---

### Service Blueprint (Shostack / Bitner) — Backstage is the product, and it's the failure mode

- This brief is not an early concept — it documents Gate 3 reality: automated warehouses built, delivery fleet operating, 30-minute windows commercialized, $1B+ capital committed [D], multi-market expansion underway [D]. Frontstage (website, slot picker, driver at door) is thin; backstage (cold-chain, automated pick/pack, last-mile routing, driver labor, fleet maintenance) is where the actual capital and risk sit.
- The 30-minute window promise creates backstage load invisible to the customer until it fails — missed windows, substitutions, stockouts. The brief names none of the support processes required to handle that (refund/credit policy for perishable no-shows, customer service for substitutions).
- Gate 3's own note — expansion to many markets ahead of confirming unit economics in one — is a backstage sequencing failure: fixed-cost infrastructure (warehouses) being replicated city-by-city before the first one is proven to work operationally or financially.

**Strongest objection:** The framework's default prompt (AI handoff visibility) doesn't apply here — there's no AI system in this brief — but the analogous risk is worse, not absent: backstage capital IS the business model, and the brief treats it as a build decision rather than the central unproven variable.

**Verdict:** Strong
**Why this strength:** Stage-appropriate scoring rule applies here. This is a Gate 3 ("built right") brief with warehouses already live and capital already committed — there is real operational content to score against, not a hypothetical. An early-stage concept brief with no build detail would necessarily score this voice Weak (nothing backstage yet to evaluate); this brief earns Strong because the backstage failure is already documented in its own [D]-tagged content.

---

### Self-Determination Theory (Deci / Ryan) — Chore-removal framing assumes the chore has no positive value

- Autonomy: scheduled delivery windows trade one kind of control (shop whenever) for another (commit to a slot) — not obviously a net autonomy gain, and the brief doesn't test which way the tradeoff lands for the target user.
- Competence: the product removes a task rather than building capability in the user — SDT would flag this as competence-neutral at best, not a design strength the brief can claim.
- Relatedness: grocery shopping carries embedded social/sensory value for a real segment — physical selection of produce, neighborhood routine, deal-hunting — that a pre-packed warehouse model eliminates. The brief's problem statement assumes the chore is uniformly unwanted [A] with no segmentation.
- No AI trust-model question applies — there's no AI agent in this brief, so that prompt is set aside rather than force-fit.

**Strongest objection:** SDT would say the brief's core assumption — that grocery shopping is pure friction to be automated away — is itself the least-tested claim in the whole document, and the framework has no data to confirm or refute it either.

**Verdict:** Weak
**Why this strength:** This is a speculative extension of the framework into a domain (physical retail chore) with no direct SDT literature cited in the brief and no segment-level evidence either way. The observations are framework-plausible, not brief-evidenced.

---

### Disruptive Innovation (Christensen) — This is a sustaining bet wearing disruption's clothes

- Classic disruption enters from below: simpler, cheaper, initially worse-but-good-enough, serving an overlooked segment. This brief's model is the opposite — more capital-intensive, more operationally complex, and more expensive to build than the incumbent supermarket model it's attacking [D: $1B+ commitment before profitability proven anywhere].
- Who loses market position if this lands: traditional grocery chains — but only if Webvan can match their scale economics, which the brief gives no evidence of. Webvan is taking on an incumbent's cost structure (real estate analog: warehouses; fleet: delivery vans) without an incumbent's existing customer base or balance sheet.
- Gate 2 explicitly names the choice against partnering with existing grocers [A] — rejecting the lower-capital, higher-leverage playbook (e.g., what Peapod/Instacart's later model would use) in favor of full vertical build. That's a bet against a proven-cheaper alternative, and the brief doesn't argue why full ownership wins.

**Strongest objection:** By Christensen's own framework, this isn't disruptive at all — it's a sustaining, high-cost entrant with none of the low-end cost advantage that makes disruption durable. The brief's failure modes list margin thinness and capital burn but never names "this was never structurally disruptive" as the root cause — a framing gap, not just an execution gap.

**Verdict:** Strong
**Why this strength:** This read is well-supported by the brief's own [D]-tagged capital and expansion facts, and consistent with widely published post-mortem analysis of this exact case [CS: HIGH].

---

### Value Chain (Porter) — Vertical integration into a margin the brief never proves exists

- Webvan inserts itself across the full chain — sourcing, fulfillment, last-mile — that incumbents split across grocers, wholesalers, and independent couriers. That's a chokepoint-control play, but chokepoint control only pays off if the resulting margin exceeds the cost of controlling it.
- Grocery is a 1–3% margin category by nature [CS: HIGH]. The brief's own okr_key_result ("prove unit economics in at least one market" [?]) and counter_metric ("capital burn must not require new-market expansion before existing markets are profitable" [?]) are both unresolved at brief time — meaning the vertical-integration bet is being funded before its central margin question is answered.
- Gate 3's sequencing problem (multi-market expansion ahead of single-market proof) is a value-chain error specifically: fixed-cost chokepoint infrastructure (automated warehouses) is being replicated before the chain proves it adds margin anywhere.

**Strongest objection:** Porter's framework asks "where does the margin come from" before capital deployment — this brief has no answer (idea_score: null, evidence_sources citing "no cited single-market profitability data at time of multi-market expansion"). The bet is being made on speed of capital deployment, not on a demonstrated margin advantage over the partner-with-grocers alternative Gate 2 rejected.

**Verdict:** Strong
**Why this strength:** Directly evidenced by the brief's own [D]-tagged margin and expansion-sequencing content — this isn't an inference the framework has to import from outside the document.

---

> Jobs-to-Be-Done and Self-Determination Theory diverge on whether removing the grocery-shopping chore is straightforwardly good for the user: JTBD frames automation as fulfilling an unwanted-task job; SDT frames the same automation as potentially stripping relatedness/competence value that a segment of shoppers actually derives from the task. This is a segmentation decision the brief hasn't made, not a gap either framework can close alone — route it to the brief owner.
