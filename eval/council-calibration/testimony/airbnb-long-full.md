# Council Testimony — Air Bed & Breakfast (airbnb-long.brief.md)

**Gate 1 status:** Sourced but thin. Problem is [R] — founder-observed, n=1, conference-week scarcity. Not generalized research. Council proceeds; the brief owner should read every voice below with that ceiling in mind.

---

### Jobs-to-Be-Done (Christensen / Ulwick) — Two different jobs are bundled into one product and only one is validated

- The validated job is narrow and situational: "get me a bed when every hotel in this city is sold out or price-gouging" — a functional job tied to scarcity, not a preference for home-sharing. The brief's OKR ("idle housing supply as a substitute for hotel capacity" — line 6) quietly generalizes this into an everyday-travel job with no evidence support [A].
- The founders' own story is a supply-side job (cover rent) wearing a demand-side justification. That's fine as an origin myth, but the brief treats "strangers paid for it once, during a conference" as validation of ongoing demand — it validates willingness-to-pay under duress, not preference.
- The counter_metric (line 8) implicitly names the emotional job at stake: safety and trust. JTBD would ask what hotels are "fired" for — price and unavailability — and note that's a fragile firing reason. The day hotels have supply, the job reverts to hotel, unless a second job (money, novelty, connection) gets hired instead. Gate 2 admits this directly: "No data yet on whether travelers will choose a stranger's home over a hotel when hotels aren't sold out" (line 18).
- Social job (staying in someone's actual home, meeting a host) is entirely unaddressed in the brief — no [R], [A], or [?] tag even attempts it. That's a job-shaped hole, not just a data gap.

**Strongest objection:** The brief scores itself on the scarcity job's evidence (thin but real) while the OKR is written for a different, unvalidated job. JTBD would say Gate 1 and Gate 2 are answering two different questions and the brief doesn't notice the swap.

---

### Service Blueprint (Shostack / Bitner) — There is no backstage yet, and the brief knows it

- Gate 3 states plainly: no trust/safety mechanism, no reviews, no verification, no insurance, no liability model (line 21). In blueprint terms, the entire backstage — the support processes that make a frontstage "book a stranger's home" interaction survivable — does not exist. This isn't a missing feature, it's a missing operating model.
- The frontstage promise (book a stranger's home, stay there) requires a support line for the worst case — theft, assault, property damage (line 8) — and the brief has no line item for who handles that call, what the response SLA is, or what the company's liability posture is when it goes wrong.
- Legal status of short-term home rental is unclear per city (line 21) — this is a backstage/environment failure that will surface at the frontstage as a booking suddenly voided, a host in legal trouble, or a shutdown. The customer experiences a regulatory failure as a broken promise; the brief has not designed for that handoff.
- No named owner for "what's missing" (line 27-30) — trust & safety design, regulatory strategy, and demand evidence are all listed as gaps with no team or process attached, which in blueprint terms means the line of visibility has nothing behind it yet.

**Strongest objection:** A service blueprint pass on a brief with zero backstage design would normally halt here — you cannot map a process that hasn't been specified. The strongest objection is that this brief is pre-blueprint; running this voice at all risks manufacturing false confidence that "backstage" is merely TBD rather than currently unsafe to launch.

---

### Self-Determination Theory (Deci / Ryan) — Autonomy for the host, near-zero competence support for the guest

- Hosts gain autonomy (rent your own space, on your terms) — that's the strongest SDT signal in the brief, inherited directly from the founder story (line 5).
- Guests get autonomy of choice (book a stranger's home) but zero competence support: no verification, no reviews, no way to assess whether this specific stranger's home is safe (Gate 3, line 21). SDT would flag this as autonomy without competence — the worst combination, because it maximizes perceived control while leaving the person unequipped to judge risk.
- Relatedness is the theoretical upside SDT would predict (staying with real people, a human home vs. a corporate hotel) but the brief never mentions it as a design intent — it shows up nowhere, not even as [A]. If relatedness isn't designed for, the product may just deliver anonymous transactional risk with extra vulnerability, the opposite of relatedness.
- The trust model here isn't really an AI trust model (no AI in this brief) but the same SDT logic applies to any trust-mediating system: without reviews/verification, the guest's sense of agency is illusory — they can "choose," but they cannot know what they're choosing between.

**Strongest objection:** SDT's strongest objection is that the brief's only named counter_metric — safety incidents (line 8) — is the exact place competence-support (verification, reviews, insurance) should live, and it's explicitly marked unbuilt. The safety metric and the safety mechanism are disconnected in this brief.

---

### Disruptive Innovation (Christensen) — Classic low-end disruption pattern, but the brief hasn't named the incumbent's defense

- This reads as textbook low-end/new-market disruption: a worse product on traditional metrics (no concierge, no consistent quality standard, no brand guarantee) that's "good enough" and cheaper, entering where the incumbent (hotels) has no incentive to compete — scarcity-spike, price-gouged nights hotels are already profiting from.
- Who loses market position: independent hotels and budget chains in high-demand event markets lose the marginal high-price nights first — the segment least defended, since hotels have no reason to protect their most profitable, scarcity-driven pricing by getting cheaper.
- The brief has not asked the disruption question in reverse: what does the incumbent do when threatened? Hotel lobbies are exactly the actor that drives the regulatory failure mode named in the brief (line 25, "hotel/hospitality regulation... restricts or bans the model before it reaches scale") — this is disruption theory's classic incumbent-response move (regulatory capture), and the brief lists it as a risk without naming its source.
- Gate 2's unresolved bet (line 18) — will travelers choose this over a hotel when hotels have room — is exactly the test of whether this is disruptive (creates new demand / serves non-consumers) or just a cheaper substitute good that never escapes the low end. Christensen's frame says the answer determines whether this becomes a category or stays a niche; the brief has no evidence either way.

**Strongest objection:** Disruption theory would say failure mode #2 (line 25) isn't a random external risk — it's the predictable counter-move of the incumbent whose margin this product attacks. Naming it as an item on a list, rather than as the incumbent's rational best response, understates its likelihood and urgency.

---

### Value Chain (Porter) — The brief hasn't decided who holds the chokepoint, and that ambiguity is a liability, not a placeholder

- This inserts at the booking/reservation layer of a traveler's trip-planning value chain — the same layer hotels and travel agents currently hold. The margin question is real: does this add margin (new supply, no existing intermediary to disintermediate) or does it just create margin by extracting a transaction fee between two parties who'd otherwise transact directly (host and guest could, in principle, skip the platform)?
- Chokepoint control is unresolved in the brief. Trust & safety infrastructure (line 21, unbuilt) is exactly what would make the platform indispensable rather than disintermediate-able — if the company doesn't own verification/reviews/insurance, it owns nothing that a host and guest couldn't replicate directly after first contact. Right now the brief has a marketplace with no owned chokepoint.
- Regulatory exposure (line 21, 25) sits directly in the value chain as a cost the platform, not the host, will eventually have to absorb or pass through — legal ambiguity per city is effectively an unpriced input cost with no owner yet.
- No data exists yet [?] on what margin structure (take rate, insurance premium, verification fee) the market will bear — Gate 2/3 gaps mean the business model's margin capture mechanism is undesigned, not just untested.

**Strongest objection:** Porter's strongest objection is that a marketplace whose only current asset is "we found the underserved night" and whose trust/safety layer is unbuilt has no defensible chokepoint yet — the moment a host and guest have stayed once, they have every incentive to go direct next time, and nothing in this brief prevents that.

---

> **Disruptive Innovation and Value Chain diverge on what "at scale" looks like** — Disruption frames the hotel-regulation risk (line 25) as an inevitable incumbent counter-move once the model threatens real share; Value Chain frames the platform's own lack of a defensible chokepoint as the more immediate threat, independent of regulation, because disintermediation could happen host-to-guest with zero incumbent involvement. This is a decision about what risk to spend the next research cycle on, not a gap to resolve here.

> **Self-Determination Theory and Jobs-to-Be-Done diverge on what "relatedness" is doing in this product** — SDT reads the missing relatedness design as a risk (anonymous transactional vulnerability instead of human connection). JTBD reads the founders' story as evidence the job is scarcity/money, not connection, so relatedness may be a job nobody actually hired this product to do. Whether relatedness is a design opportunity or a category mismatch is the brief owner's call.
