# Council Testimony — QBR/EBR Offering (ACP)
**Date:** 2026-07-28
**Brief:** briefs/context/qbr-ebr.context.md (child of briefs/context/acp-context.md)
**Also read:** briefs/acp-problem-statement-2026-07-28.md (three ACP altitudes) · briefs/concept-sketches-qbr-2026-07-20.md (Idea Chess pass, Packages 3 & 5)
**Voices:** JTBD · Service Blueprint · Self-Determination Theory · Disruptive Innovation · Value Chain (default five)
**Rule:** no synthesis across voices. Contradictions are named, not resolved.

---

### Jobs-to-Be-Done (Christensen/Ulwick) — this brief bundles two jobs and has only studied one of them

- Functional job: produce a defensible, business-value-framed quarterly artifact with less senior prep time (3–7h/quarter `[CS: HIGH]`, ~4–5h/EBR `[CS: HIGH — n=1]`). Emotional job: give a deliberately non-technical delivery lead the confidence to run the room solo — Vanessa Chart's own account names this directly (`[CS: HIGH]`, footnote 15), and the "curse of the expert" proxy (Dr. Simon Raybould, `[THIN]`, footnote 52) is the only other evidence touching it. Social job: signal business maturity to the client — the relationship-trust-vs-impact-trust distinction (Luis Giraldo, ScalePad, `[CS: HIGH]` as a quote, flagged vendor-evangelist, footnote 48) is the sharpest single lens the whole corpus surfaces on this job.
- **These are not the same customer's job.** Goals 1 and 2 (§6) serve the operator (cut prep time, run solo); Goal 3 (turn EBR into a pipeline motion) serves the owner/buyer. The brief's own positioning fork (§5, open decisions) names this as unresolved — JTBD reads it as not a positioning question so much as a "whose job are we actually optimizing" question, and the Musts (§6) currently answer for the operator's job while the KPIs in Stefanie Hammond's own template (Territory Retention %, Referrals, New Sales Opps) answer for the owner's.
- **Existing solution that gets fired, if any:** for the mature operator (alpha persona, confirmed `[CS: HIGH]`), the fired solution is the hand-built deck. For Andy Cormier's segment — a $4.5M, 12-employee, 1,000+-client MSP that ran **zero** QBRs ever (`[CS: HIGH — n=1]`, footnote 45) — nothing gets fired, because nothing was ever hired. That's the disruptive-innovation-relevant existence-proof, but from JTBD's lens it's also evidence the "job" itself may not require a QBR-shaped artifact at all — the underlying job might be "prove I kept you safe," satisfiable by a different mechanism entirely. The brief doesn't engage this; it treats QBR-as-artifact as fixed and optimizes inside it.
- **On Q2 (operator never directly studied):** this is a JTBD failure mode by name — you cannot confirm what criteria the operator is "hiring" against, or what they'd fire, from buyer purchase-intent data alone. Every Must in §6 is derived from Vanessa (n=1, vendor-selected reference customer, `[WOBBLY]`) and Stefanie (vendor-relayed). JTBD's standard practice — direct interviews about a specific past switch — has not been run on this persona at all.

**Strongest objection:** Andy Cormier is deployed in §4 as a disruptive-read counterweight but is a Syncro (competing PSA vendor) Channel Chief — someone whose employer benefits from "MSPs don't need QBRs, they need my other tools" being true. That conflict of interest isn't named anywhere in the brief. `[A]` — this is my read, not sourced in the corpus.

```
[ROI from this lens]
  Business: Unknown — no data connects EBR-artifact quality to referral/upsell conversion rate; footnote 17's £70,000 project is n=1.
  User: prep-time reduction is plausibly quantifiable once the job-shop/brains-work split (§6) is actually measured against real prep logs — currently theoretical, not measured. `[?]`
```

---

### Service Blueprint (Shostack/Bitner) — strong frontstage content, almost no backstage modeled, and the brief says so itself

- The Dual-surface Must (#6, §6 — internal notes vs. client-facing export) is a real Line of Visibility instinct and it's evidenced (`[CS: HIGH]`, footnote 32).
- But §2 states plainly: this offering's journey map is **not yet reconciled** against canonical service-blueprint terminology (Customer Actions / Line of Interaction / Frontstage-Backstage / Line of Internal Interaction / Support Processes, Flowers/Miller). That's flagged, not done. Consequence: no Support Processes are named anywhere in the brief. What happens when PSA (Halo) writeback fails? What's the SLA when the risk register can't regenerate because RMM data is stale (the brief's own "artifact-freshness" built-in test, Must 2, implies this can happen and doesn't say what happens next)? Nothing.
- **The confirm-gate (operating principle 2) is a backstage control with no frontstage disclosure decision made.** The operator must actively clear Unverified content before it reaches the client — good backstage design. But whether the client is ever told an AI drafted part of what they're seeing is not addressed anywhere in the Musts or Tests. A service blueprint forces the question of what crosses the Line of Interaction; this brief hasn't asked it yet.
- **The hybrid-row classification (job-shop/production-line principle) blurs the Line of Internal Interaction.** The template maps "Risk & Security Review, Compliancy Review, Technology Roadmap" as one Hybrid row (§6), but register-entry (backstage, automatable) and narrative synthesis (frontstage-adjacent judgment) are different actors doing different work at different times — the brief doesn't say whether the narrative synthesis happens live in the room or is pre-drafted and reviewed beforehand. That ambiguity is exactly what a reconciled blueprint would resolve, and it's currently unresolved.
- **On the MVP spine call (Env Health assembly vs. severing the service-desk dependency):** this is a backstage-staff-ownership question, not a scoping nicety. Env Health assembly keeps the risk register's production dependent on the service desk's shared, already-strained capacity (Must 7, "having four EBRs a week was actually not sustainable," `[CS: HIGH — n=1]`, footnote 33). Severing it reassigns that backstage swimlane entirely — a different Support Process, a different failure mode, a different owner. The brief names this as an open decision (§5, §7) but doesn't diagram what changes structurally on either branch.
- **On Q1 (cross-vendor data-egress):** from this lens, data rights are fundamentally a Support Process question — who backstage is contractually and technically permitted to touch what. Treating it as a standalone legal memo (as both this brief and the concept-sketches doc do) risks it staying disconnected from the actual backstage architecture that would need to enforce whatever the legal answer turns out to be.

**Strongest objection:** the brief is ready to hand Gate 3 acceptance criteria to eng (§6's Tasks, Musts, Built-in Tests) while its own §2 admits the underlying service blueprint isn't reconciled. Acceptance criteria built on top of an un-diagrammed backstage risks inheriting the ambiguity silently.

```
[ROI from this lens]
  Business: Unknown — cost of an un-modeled backstage failure (bad data reaching a client, missed SLA) has no figure anywhere in the corpus.
  User: Unknown — "who do I call when this breaks" friction reduction is unmeasured.
```

---

### Self-Determination Theory (Deci/Ryan) — the confirm-gate is well-designed for autonomy; competence effects are untested and could run either direction

- **Autonomy:** the hard confirm-gate on the Unverified tier — "a visible warning requiring no action reads as permission, not as a stop" (§6, operating principle 2) — is a genuinely strong autonomy-supportive design choice. It requires an active act, not passive acceptance, which is the correct SDT move against automation complacency.
- **Competence — the untested risk.** Automating the "production-line" rows (agenda, asset review, KPIs, action-item-to-ticket conversion) to "buy back time for brains-work" (§6's stated mechanism) assumes the delivery lead experiences this as freed capacity. But building the risk review from service-desk capacity is currently a demonstration of the technical role's expertise (Must 7, footnote 33) — if that construction work moves to AI-draft-plus-edit, the person who used to feel ownership over building it may feel *decreased* competence, not increased, even while gaining time. Nothing in the corpus tests this either way — this is precisely the Q2 gap (operator never directly studied) expressed in SDT terms rather than research-methodology terms.
- **Relatedness — client-side, entirely unaddressed.** The relationship-trust-vs-impact-trust distinction (footnote 48) is arguably a relatedness question for the *client*, not just a positioning question for N-able — a client who feels the meeting has become scripted/automated may experience reduced relatedness even if the content is more accurate. The Musts (§6) protect the operator's competence/autonomy implicitly; nothing protects or even measures the client's felt experience of the relationship.
- **One place client autonomy is explicitly protected, worth naming:** the confirm-gate extension to commercial-interest recommendations — flagging an upsell suggestion as commercial rather than laundering it as neutral risk analysis (§6, operating principle 2, closing paragraph) — is a genuine SDT-aligned move on the client's behalf, not just the operator's. This is the one place in the brief where the *client's* autonomy, not the operator's, is the explicit design target.

**Strongest objection:** every claim above about the operator's felt autonomy/competence is inference, not evidence — no operator has ever been asked how they'd feel about AI drafting a register they currently build by hand. The brief treats "buys back time for brains-work" as an unambiguous good; SDT says that's an empirical question, and it's the same unanswered question Q2 already names.

```
[ROI from this lens]
  Business: Unknown.
  User: Direction unknown — could be net-positive (more time for judgment work) or net-negative (deskilling, reduced ownership) depending on operator response never collected. `[?]`
```

---

### Disruptive Innovation (Christensen) — the brief has already half-answered its own "still open" question, and doesn't say so

- §4 states the sustaining/disruptive read is "still open," but §5 has already marked the alpha persona as **confirmed** — "mature operator (dedicated delivery lead, EOS, PSA queue)" `[CS: HIGH]`, 🟢. That persona choice *is* the sustaining answer: tooling for MSPs who already run EBRs well. §4 and §5 disagree with each other on whether this question is settled, and neither section flags the other.
- If the target were instead Andy Cormier's segment or the ~80% of MSPs the uncited TruMethods figure claims lack a structured process (`[CS: LOW]`, footnote 46, no survey, no n, no year, sold by a competing tool vendor), the read would be disruptive-from-below: a simpler, cheaper proof mechanism reaching non-consumption. The brief hasn't chosen, and the persona confirmation quietly forecloses it.
- **Incumbent defense, or its absence:** the competitive scan found no shipping, generally-available, publicly-priced MSP-specific AI QBR tool with real PSA writeback (`[CS: HIGH]`, footnote 42) — and one vendor (Zomentum) already built and killed this exact feature (footnote 44), with no stated reason beyond "focusing elsewhere." Christensen's frame reads this two ways at once: unclaimed ground (attractive), or a category that already failed to find a business model once (a real risk the brief names honestly in §8 but doesn't resolve).
- **Who loses market position if this lands:** PSA vendors and standalone QBR-report tools (ScalePad/Cognition360, myITprocess, Datto Strategy Overview, CloudRadial) whose one live differentiator against each other is report generation without PSA writeback (`[CS: MEDIUM]`, footnote 50) — if N-able ships writeback bundled at platform cost rather than as a paid SKU, that's a bundling move that could commoditize their whole category, not just compete inside it.
- **On the ACP altitude question:** this lens reads directly onto the three-candidate problem statement. Candidate 2 (QBR-only, ~45–50% survival) is named in that document's own adversarial pass as commoditizable by exactly this dynamic in reverse — "a competitor ships an AI QBR/report generator inside the tool MSPs already trust with the data… the wedge dies as a feature; the platform never gets its at-bat" (`[CS: VERIFIED — recurred across 3 of 5 adversarial voices]`). That is a textbook disruption-in-reverse pattern: a sustaining feature bundled free by an incumbent before it earns platform position. Disruptive Innovation theory would flag Candidate 2 as *structurally* the shape most exposed to this, independent of any other analysis in this brief.

**Strongest objection:** the brief conflates two different disruption questions — "does this disrupt how MSPs currently run EBRs" (evidenced, real) vs. "does this disrupt N-able's competitors" (unevidenced — no data on which incumbent loses share). Andy Cormier is cited as evidence for the former but is functionally being used to argue the latter, and he's a competing vendor's employee.

> **Named divergence:** Disruptive Innovation and Value Chain diverge on how much new value-chain position is required to escape the Candidate 2 commoditization trap. Disruptive Innovation theory (above) reads Candidate 1's compounding-moat structure as the theoretically correct escape from bundling risk. Value Chain (below) reads Candidate 1 as requiring N-able to occupy value-chain nodes — insurance-liability transfer, business-coaching/certification — it doesn't currently hold, a materially larger bet than "avoid the commoditization trap" implies on its own. This is a decision, not a gap — routed to whoever owns the Candidate 1/2/3 altitude call.

```
[ROI from this lens]
  Business: Unknown — no data on incumbent share actually at risk.
  User: Unknown.
```

---

### Value Chain (Porter) — the chokepoint claim is real in code today, and Q1 is the single biggest threat to it

- EBR sits at the value-chain node between service delivery and account management — a retention/margin-*protection* function more than a margin-*creation* one, consistent with Stefanie Hammond's own template KPIs (Territory Retention %, Referrals, Testimonials, New Sales Opps, EBRs Delivered vs. Planned, `[CS: VERIFIED — primary source]`).
- For N-able specifically, the Value Webs analysis (§3) already names this as margin-protection: partner attach/loyalty, reduced churn (`[A]` — inferred, not stated by any source) — consistent with Candidate 2's ceiling (~$5M scale, a feature in the stack) rather than a new margin pool. Candidate 1's altitude explicitly reaches for a different value-chain position: certification/advisory/insurance-liability transfer, a genuinely new node N-able doesn't occupy today.
- **Chokepoint control, and its dependency on Q1.** The Defensibility tier (Measured/Benchmarked/Estimated/Unverified) sitting over the `baseline_source` field is *already implemented in code* (`[CS: VERIFIED]`, footnote 59) — that's real chokepoint infrastructure: whoever controls the "last mile of proof" narrative controls the value the client actually trusts. But that chokepoint claim is currently scoped to first-party (N-able-native) telemetry only. If Q1 resolves NO (N-able cannot legally pull cross-vendor data into a client-facing artifact), the chokepoint claim shrinks to Package 3's scope — and a PSA vendor with uncontested first-party rights to the *entire* client stack (e.g., Halo, which the brief itself notes independently surfaced as a must-integrate PSA across two different research methods, footnote 62) is in a *stronger* structural position to build the same last-mile chokepoint than N-able is, cross-vendor. Q1 isn't just a legal gate — at the value-chain level it determines who can even compete for this chokepoint at all.
- **On the MVP spine call:** Env Health assembly keeps N-able's margin capture embedded inside the existing service-delivery value chain, dependent on a shared/constrained backstage resource (Must 7). Severing the dependency is a value-chain repositioning move — necessary if the ambition is Candidate 1's owned distribution layer, unnecessary if the ambition is Candidate 2's feature-in-stack. The brief names this as an open decision without stating that it's really a decision about which value-chain node N-able is trying to own.

**Strongest objection:** the entire "N-able gets" row of the Value Webs analysis (§3) — partner attach, upsell, reduced churn — is tagged `[A]`, inferred, not evidenced. A Porter value-chain read is only as good as its margin data, and there is none here: no source quantifies how much of the 3–7h prep cost is billed vs. absorbed, or whether EBR quality measurably moves MSP retention or N-able attach. The brief's own §8 confidence score names this honestly ("thinner than it looked on what to build") — worth restating in Porter's own terms: the margin thesis for this offering is a hypothesis, not yet a value-chain fact.

> **Named divergence:** Value Chain and Service Blueprint diverge on what Q1 fundamentally *is*. Value Chain reads it as a competitive-positioning question (who can even contest the chokepoint). Service Blueprint reads it as a backstage-architecture question (which Support Process enforces whatever the legal answer is). Both are right; they're not the same question, and resolving one doesn't resolve the other — this should be named explicitly to whoever runs the Q1 legal read, so the answer gets used twice, not once.

```
[ROI from this lens]
  Business: Unknown — margin/retention lift from EBR quality is inferred `[A]`, not measured anywhere in the corpus.
  User (MSP-side): Unknown beyond one anecdote (£70,000 project closed off one EBR, n=1, footnote 17) — not projectable.
```

---

[0% Claude — fill this in]
