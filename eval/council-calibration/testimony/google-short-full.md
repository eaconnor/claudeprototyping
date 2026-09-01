# Council Testimony — Brief: `google-short.brief.md`

**Brief text (verbatim, in full):** "Google — search engine that ranks results by which pages other pages link to, not by keyword stuffing or paid placement."

**Gate 1 status:** Unverified/empty. This is a one-sentence description of a mechanism, not a sourced customer problem statement — no named user, no [R]/[D] evidence, no stated pain point being solved. Council voices below are testifying against the *implied* case (this reads as the historical PageRank/Google 1998 positioning), not a sourced brief. Treat all five blocks as commentary on a thin artifact, not validated analysis.

---

### Jobs-to-Be-Done (Christensen / Ulwick) — Mechanism described, job assumed

- The brief states *how* ranking works (link topology) but never states the job being hired. The implied functional job is "find the most trustworthy/relevant page fast" — the brief substitutes a technical differentiator for a job statement.
- The job that gets fired here isn't one job, it's two different incumbent solutions: keyword-stuffed pages (AltaVista/Lycos-era engines) [CS: HIGH] and human-curated directories (Yahoo's editorial hierarchy) [CS: HIGH]. The brief conflates "not keyword stuffing" and "not paid placement" as if they're the same threat, but they're different jobs-to-be-done being displaced — one is a relevance job, the other is a trust/integrity job.
- Emotional job is invisible in the brief: the actual selling point historically wasn't "better math," it was "results I can trust because nobody paid to be there" — a trust job, not a retrieval job. The brief's framing (link-counting) buries this.

**Strongest objection:** The brief describes an algorithm, not a customer. JTBD has nothing to hire against here — there's no stated "who," no stated "struggling moment." Without that, this is an engineering spec wearing a positioning sentence.

---

### Service Blueprint (Shostack / Bitner) — All backstage, no frontstage named

- The brief is 100% backstage (link-graph computation) and 0% frontstage. There's no mention of what the user sees, types, or experiences — the single search box, the results list, the absence of visible "why this ranked #1" — none of it is in scope.
- No handoff to human process is named: what happens when a site owner disputes a low rank? Webmaster relations, spam appeals, manual reviewer override of the algorithm — these support processes are structurally required the moment you replace paid placement with an opaque score, and the brief is silent on all of them.
- "Not paid placement" is a backstage business-model choice being narrated as a frontstage feature. The actual frontstage consequence (no visible ads, no visible "why") isn't described at all.

**Strongest objection:** There is no frontstage in this brief to blueprint. A one-line mechanism statement cannot be blueprinted without inventing the customer-facing surface — anything said here about touchpoints is fabricated on the council's part, not sourced from the brief.

---

### Self-Determination Theory (Deci / Ryan) — Competence gain, autonomy/trust tradeoff unexamined

- Competence: removing keyword-stuffing tricks plausibly raises user-felt competence — you no longer need to know SEO tricks to get a good answer, you just ask. That's a real autonomy-support signal on the query side.
- Autonomy on the *output* side is weaker than it looks: the user has no visibility into why a page ranked #1 vs #2. Trust is being asked for on faith in an opaque scoring system — the brief replaces one opaque manipulation (paid placement, at least legible as "someone paid") with another opaque signal (link topology, invisible to the user entirely).
- Relatedness is absent from the brief and arguably absent from the product as described: search-as-described is a solitary retrieval act with no visible connection to the "other pages" whose links are doing the voting. The social signal (other creators voting via links) is real but never surfaced to the end user — it's backstage trust, not felt trust.

**Strongest objection:** SDT would flag that the brief celebrates removing one form of manipulation (paid placement) while introducing an equally opaque authority structure (the ranking algorithm itself) — and calls that a win for the user without asking whether opacity itself erodes agency, regardless of which opacity it replaces.

---

### Disruptive Innovation (Christensen) — Disruptive from below, but against two different incumbents

- This reads as classic disruption from below: a simpler value proposition (relevance) attacking an established business model (pay-to-rank) rather than a sustaining improvement for existing search customers. [CS: HIGH — matches the widely documented positioning of Google vs. AltaVista/Yahoo/GoTo.com-Overture-era paid placement search, circa 1998]
- Two different incumbents lose position for two different reasons: keyword-based engines lose on *relevance quality*; paid-placement sellers (GoTo.com/Overture and portal ad models) [CS: MEDIUM] lose on *business model legitimacy* — free, unbiased ranking undercuts the thing they were charging for. The brief treats these as one threat; they are structurally different fights.
- What the paid-placement incumbent has to defend isn't a product feature, it's a revenue model. That's a much harder thing to defend than a feature gap — DI would flag that the brief's framing ("not paid placement") is actually an attack on the incumbent's entire monetization logic, not a feature comparison.

**Strongest objection:** The brief undersells its own disruptiveness by describing it as a ranking-mechanism difference. DI would say the real disruption is economic (unbundling relevance from payment), and the brief buries that under a technical description.

---

### Value Chain (Porter) — Inserts at the chokepoint of the entire web's attention allocation

- This capability doesn't sit inside one company's value chain — it inserts itself as the gatekeeper *between* every content producer on the web and every searcher. That's an unusually powerful chokepoint: control of the ranking function is control of who gets found at all.
- Margin effect is asymmetric and the brief doesn't name either side: it is margin-accretive for whoever controls the ranking algorithm (visibility becomes a scarce, controllable resource) and margin-threatening for anyone whose prior business model depended on buying visibility (paid placement sellers) — the brief states the mechanism but not the margin transfer this causes across the ecosystem.
- The chokepoint is the algorithm's opacity itself — nobody outside the company can audit or replicate why a page ranks where it does. That opacity *is* the moat; it is also the exact thing SDT flags as an agency risk to the end user.

**Strongest objection:** The brief describes a technical differentiator without naming who now controls the chokepoint or what leverage that creates. Porter's frame would say: whoever owns this ranking function owns the market's attention allocation — and the brief treats that as a footnote to "better results," not the central business fact it is.

---

> **Named divergence — SDT vs. Value Chain on algorithmic opacity:** SDT reads the invisibility of the ranking logic as a risk to user autonomy and trust — the user is asked to trust a black box. Value Chain reads that same invisibility as the defensible chokepoint that makes the whole model economically powerful — the opacity *is* the moat. These are not reconcilable within one framework: one calls the black box a cost to the user, the other calls it the asset that makes the business work. This is a decision about what the brief is optimizing for (user trust vs. competitive defensibility), not a gap to be closed by more research.

> **Named divergence — JTBD vs. Disruptive Innovation on what's being displaced:** JTBD reads two different jobs being fired (a relevance job served by keyword engines, a trust job served by human editorial directories) and treats them as separate customer needs. DI reads one displacement (a business-model attack on paid placement) as the central disruptive act. The brief's single sentence supports both readings simultaneously and does not resolve which displacement is the actual bet being made.

[ROI from Value Chain lens]
  Business: Unknown — the brief names no revenue model (this predates AdWords, which is a separate later monetization layer [CS: HIGH]); margin capture from chokepoint control is directionally real but has no number attached in this artifact.
  User: Unknown: we don't have this data — "better relevance" is asserted, not measured (no query success rate, no time-to-answer baseline stated).
