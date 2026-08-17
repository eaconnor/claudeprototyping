---
artifact: council-testimony
project: QBR/EBR offering (ACP)
brief_tested: briefs/context/qbr-ebr.ux.md
parent_context: briefs/context/acp-ux.md
date: 2026-07-30
task: "#3 (Council pass) — pending item flagged in qbr-ebr.ux.md §4"
tier: MEAL (~3.20 ml water / 0.38 g CO2e, ~9.7x a Google search)
gate_check: "Gate 1 sourced — Vanessa Chart identity-verified, Craig named buyer, 3-7h/quarter prep cost [CS: HIGH]. Proceeding without Gate-1 challenge per task instruction."
voices: [Jobs-to-Be-Done, Service Blueprint, Self-Determination Theory, Disruptive Innovation, Value Chain]
note: "Idea Chess pass (2026-07-20) already stress-tested value-prop/positioning — not repeated here."
---

# Council Testimony — QBR/EBR Offering (ACP)

Read in full: `briefs/context/qbr-ebr.ux.md` (663 lines, §1–§10 + footnotes) and parent `briefs/context/acp-ux.md` for gate/frontmatter context.

No synthesis below. Five voices, testimony only. Voices may contradict — named explicitly where they do, not resolved.

---

### Jobs-to-Be-Done (Christensen/Ulwick) — three different people are hiring three different jobs, and the loudest evidence is for the one who isn't the user

- Functional job: cut the 3–7h/quarter hand-assembly cost `[CS: HIGH]`[^brief-fn1]. Emotional job: give a non-technical delivery lead (Vanessa) the confidence to run the room solo — evidenced only by proxy (Raybould's "curse of the expert," a coach's third-party diagnosis, not an operator's first-person admission, tagged `[THIN]` in the brief itself, §3). Social job: the ScalePad "relationship trust vs. impact trust" distinction (§4, fn48) — the clearest lens found on what the client exec is actually hiring the meeting to do, and it's a vendor-evangelist quote, not operator or client evidence.
- Fired solution: hand-built 15-tab Excel template (Stefanie's own artifact, §2) plus one n=1 Copilot-for-transcription trial (fn11). That's the entire competitive set this product has to unseat for Vanessa specifically.
- The brief's own Q2 (§4) is a JTBD question stated in JTBD terms and left open: "does the operator want the mechanism (AI drafts, human edits and defends) or just the destination?" Every demand signal in the corpus is buyer purchase-intent (Craig), not operator pull (Vanessa) — the brief says this plainly. JTBD lives or dies on whose job gets served; right now the evidenced job is the buyer's, and the designed mechanism (confirm-gate, drafting assist) is a bet on the user's job that has never been asked.
- The job-shop-vs-brains-work split (§6, Operating Principle 1) is a legitimate JTBD move at the task level — sorting which rows are "progress against a functional job" (automatable) vs. which are the actual emotional/social job (protect as brains-work). Good instinct, untested against the person actually doing it.

**Strongest objection:** this brief has a sourced problem and an unsourced solution-fit. Nobody has asked Vanessa — or anyone in her seat — whether she wants an AI-drafted risk register at all, only that the current process costs her time. JTBD would say: you know the job costs 3–7h, you do not know if "AI drafts, human clears" is a hire she'd make over "just give me the finished document" or "just give me back the 3–7h and I'll keep doing it my way."

[ROI from this lens]
Business: Unknown: we don't have this data — no N-able revenue/attach figure exists in the corpus; Value Webs' "N-able gets" row is `[A]`, not evidenced.
User: 3–7h/quarter recovered time `[CS: HIGH]`[^brief-fn1], *if* the mechanism (not just the destination) is the thing she'd actually hire — which is Q2, still open.

---

### Service Blueprint (Shostack/Bitner) — the blueprint exists and it counts its own gaps: 17 of 26 moments are absent

- This offering already ran a real service-blueprint pass (2026-07-29, canonical Flowers/Miller terminology) — 26 service moments, 7 stages, and an honest build-coverage tally: 0 built, 1 specced, 8 adjacent, 17 absent (§2, §8). That tally is grep-checkable and the brief already did the grepping — a rare case of a brief doing this framework's homework before Council arrived.
- Frontstage/backstage split is explicit and load-bearing: Must 6 (dual-surface, `[CS: VERIFIED — structural]`) makes the internal working document and the client-facing export two distinct data objects, not a redaction toggle — because a prior Tier-1 prototype made exactly the toggle mistake and council caught it (§6). That is a service-blueprint failure mode named and fixed in the artifact record, not hypothetically.
- The human-AI handoff is visible in one place only: the confirm-gate (Defensibility tiers, Must 8/Operating Principle 2) — hard-gated on Unverified, not a passive warning, because warning-fatigue research treats a no-action-required warning as permission. That's the correct blueprint move (a real line of interaction, not cosmetic).
- Support processes the brief does not address: Must 7 names "sustainable backstage load" as a failure point (four EBRs/week "not sustainable," fn33) but there is no defined support process for capacity monitoring, escalation, or what happens when the technical role (or the newly-named `sdm` persona) can't clear a queue in time. Nor is there a defined record-retention/support process for the legal-shield concern the brief itself flags: "a machine-assembled risk register that surfaces every detected gap expands the documented record of what the MSP knew" (§6, Must 8) — that's a backstage support-process gap (who owns purge/retention/amendment of that record), not just a client-facing language rule.

**Strongest objection:** a blueprint with 17 of 26 moments absent is a diagram of an intention, not a built service. Every claim in §6 that depends on backstage capacity (Must 7) is unverifiable against an actual staffing model, because the staffing/support process itself is `[?]`.

[ROI from this lens]
Business: Unknown: we don't have this data — no cost estimate exists for building the 17 absent moments, nor for the support processes (capacity monitoring, retention) the brief flags but doesn't spec.
User: reduced context-switching between one working doc and one client doc (Must 6) — plausible, not measured.

---

### Self-Determination Theory (Deci/Ryan) — autonomy is designed for, competence is assumed, relatedness is outside the product's reach

- Autonomy: Goal 2 ("run the room solo, no technician present") is autonomy-supportive by intent. But the hard-gate-on-Unverified mechanism (Must 8) removes her latitude at precisely the highest-stakes moment — whether that reads as *support* (a safety rail she'd want) or *erosion* (friction imposed by a system she didn't design) depends entirely on how the gate is presented, and the brief's own §6 placeholder admits the 5-second usability test on the confirm-gate hasn't been run yet.
- Competence: the cognitive-factor evidence for "she needs confidence to run the room solo" is thin by the brief's own admission — `[THIN]`, sourced from a hired coach's third-party diagnosis (Raybould), not Vanessa's own words (§3). Automating the "production line" rows (Operating Principle 1) may free her time, but SDT would ask the inverse question the brief doesn't ask: does removing those reps (agenda-building, data pulls) also remove the low-stakes repetitions that build the competence needed for the high-stakes brains-work rows?
- Relatedness: the EBR's actual social payoff — a referral from the first EBR she ran (fn12), a £70k project from one UK anecdote (fn17, fn37) — happens in the room, with the client, not with the tool. The product's entire footprint is backstage prep; it has no frontstage role in the relatedness moment it's designed to serve, which is a legitimate design choice but an unstated one.
- A genuinely well-designed piece of this brief for SDT: Operating Principle 2's "second reading of best interest" — gating N-able's own commercial upsell recommendations behind the same confirm-gate as AI errors, so vendor self-interest can't be laundered as neutral risk analysis. That is autonomy-protective against the *vendor*, not just against AI failure — an unusually mature move, worth naming as a strength rather than a gap.

**Strongest objection:** SDT's three constructs are empirical claims about lived experience. This brief's own §6 states no usability study has been run and the confirm-gate 5-second test is a placeholder, not a result. Every autonomy/competence/relatedness read above is design-intent, not evidence.

[ROI from this lens]
Business: Unknown: we don't have this data.
User: Unknown: gap — no measurement exists yet of whether the confirm-gate is experienced as control or as friction.

---

### Disruptive Innovation (Christensen) — the brief's own two-package split already encodes this fork as a live architectural bet, not just a classification exercise

- Package 3 (N-able Native, scoped to MSPs already consolidated on N-able's stack) is the sustaining choice: better tooling for existing customers, explicitly named as dying "at Adopt" for anyone with a mixed stack (§4). Package 5 (Cross-Vendor) is the classically disruptive bet — targets the non-consumption case (Andy Cormier's zero-QBR, $4.5M-revenue MSP, fn45) — but is gated entirely on Q1, an unresolved legal read on cross-vendor data rights.
- Who has to defend: not a single dominant incumbent. HaloPSA's own recommended agenda already gives risk review the longest block (45/110 min, fn49) but HaloPSA itself doesn't build QBR automation and points customers to a third party. The fragmented point-tool field (ScalePad/Cognition360, myITprocess, Datto, CloudRadial, BrightGauge) plus one competitor that tried and killed the exact feature (Zomentum, July 2024, fn44) is the signature of an attackable, non-consolidated category — closer to disruption-from-below than sustaining-innovation-against-an-incumbent.
- The uncited "only 20% of MSPs have a structured QBR process" stat `[CS: LOW]`[^fn46] is the single number that would resolve sustaining-vs-disruptive, and the brief names it as unverified and unresolved (B8, Kaseya/Syncro reports, unopened).
- Idea Chess already scored Package 3 as the near-term-survivable branch (~0.9%) and Package 5 as lower-floor but "most winnable" per the fleet synthesis (~0.43–0.64%) — meaning the disruptive branch scored *worse* on naive survival but was independently judged more strategically valuable. That's an explicit tension between near-term viability and long-term category capture, already logged, not new here.

**Strongest objection:** shipping Package 3 first is the safe, sustaining choice — and it is scoped to customers N-able already has. If the real opportunity is non-consumption (the Cormier existence-proof, the uncited-but-directionally-plausible 20% stat), the brief's own sequencing bet could optimize for the smaller, defensible market while the disruptive market goes unaddressed indefinitely, since Package 5 has no resolution path until Q1 (legal) closes — and DIV-001 (§5a) shows even the canonical spec hasn't decided which branch its shipping "QBR Advisor" Coworker assumes.

[ROI from this lens]
Business: Unknown: we don't have this data — no TAM split exists between Package 3's addressable (N-able-consolidated) base and Package 5's cross-vendor base.
User: Unknown: gap.

---

### Value Chain (Porter) — the one differentiator (PSA writeback) is also N-able's biggest dependency, and N-able's own margin capture is the least-evidenced number in the brief

- Insertion point: this sits in the MSP's account-management value chain, specifically the "prove and defend value to the client" link — downstream, client-facing, high-trust.
- Margin effect for the MSP (the buyer/operator side): direct, measurable — labor-cost avoidance on 3–7h of senior delivery-lead time per client per quarter `[CS: HIGH]`[^brief-fn1]. This is the clearest quantified margin claim in the entire document.
- Margin effect for N-able: entirely `[A]`-tagged. Value Webs' "N-able gets" row (partner attach/loyalty, product upsell, reduced churn) is inferred, not evidenced anywhere in the corpus (§3). No revenue or attach figure exists. Worse: Operating Principle 2 (the "second reading of best interest") structurally firewalls N-able's own commercial-interest signal from surfacing in the client-facing artifact without a flag — meaning the most direct value-chain capture mechanism this offering could use is deliberately gated by the brief's own ethics design. That is a real tension, not a contradiction to resolve here.
- Chokepoint: PSA writeback. Footnote 50 — of the full competitive sweep, only vCIOToolbox claims two-way ticket/opportunity sync, and its AI features are roadmap, not shipped. Whoever controls the PSA integration controls the literal value-chain link between "the review happened" and "the work got logged" (Must 3, ticket-conversion). N-able does not own the PSA layer (Halo, ConnectWise, Autotask are third-party) — the offering's sharpest differentiator is also its largest external dependency.
- WTP anchor is internally contradictory (§5, fn57/58): the vision doc's pricing anchor ("$300+/user," attributed to a single Guidepoint source) doesn't match any actual ScalePad pricing page fetched in the competitive scan (all per-client or per-PSA-seat-block, entry $250/mo). Any margin math built on the current WTP anchor is unreconciled.

**Strongest objection:** every hard number in this brief describes the MSP's cost, not N-able's revenue. A Value Chain read needs to know who captures the value created; right now the honest answer is "the client and the MSP capture visible value; N-able's own capture is asserted, not evidenced, and its most direct capture lever is deliberately gated by the brief's own trust design."

[ROI from this lens]
Business: Unknown: we don't have this data — Value Webs' N-able-side row is `[A]`, not sourced.
User (MSP): 3–7h/quarter labor-cost avoidance `[CS: HIGH]`[^brief-fn1] per client, times client count — the brief does not multiply this out per-book-of-business, so even the strongest quantified claim stops at the per-client unit.

---

> **Disruptive Innovation and Value Chain diverge on what Package 5 (Cross-Vendor) actually is.** Disruptive Innovation reads it as the market-expansion bet against non-consumption — the strategically "most winnable" branch per the fleet synthesis despite its lower naive-survival score. Value Chain reads the same package as fundamentally a chokepoint-control problem: N-able doesn't own the cross-vendor data, Q1's legal gate is really a question of who controls the value-chain link the whole differentiator depends on, and no margin claim is even calculable until that control question resolves. Both are reading the same open Q1 gate — one as a market-timing decision, one as a structural-control precondition. This is a decision, not a gap.

> **JTBD and Self-Determination Theory diverge on what the confirm-gate means to the user.** JTBD's unresolved Q2 — does the operator want the AI-assisted mechanism, or just the finished report? — is the precondition for SDT's autonomy-supportive reading of the hard-gate pattern (Must 8, Operating Principle 2). If Vanessa's actual hire is "give me the destination, not the process," the same confirm-gate SDT would read as control-preserving reads instead as imposed friction on a job she never asked the system to help her do. Neither framework can resolve this from the current corpus — Q2 has never been fielded to an operator. This is a decision, not a gap.

---

[0% Claude — fill this in]

---

[^brief-fn1]: As sourced in `briefs/context/qbr-ebr.ux.md` footnote 1 — Stefanie Hammond, N-able Head Nerd boot camp, 0:38:51. Vendor-relayed. Note the brief's own downgrade of the corroborating figure (fn2) from `[CS: HIGH — n=1]` to `[CS: LOW — echo, not triangulation]` per the 2026-07-29 service blueprint pass (Finding 2) — Vanessa's figure and Stefanie's figure measure the same transmitted process, not independent estimates.
[^fn46]: TruMethods blog, uncited survey, no n, no year — sells the competing myITprocess QBR tool. Per `briefs/context/qbr-ebr.ux.md` footnote 46.
