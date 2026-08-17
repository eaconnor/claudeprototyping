# Persona-weighted scoring + Ten Types scorecard — ACP concepts

**Scope:** Branch A (cross-vendor QBR) · Branch B (N-able native QBR) · IR RCA · vCIO/vCISO Advisory Package.
**Persona source:** `Persona_Explorer.html` (26-persona MSP/MSSP/vCISO/consultant/auditor library, vendor-neutral, "profiles are research-grounded hypotheses — validate with real users").
**Method source:** Stoll, McColgin, Gregory, Crow & Edwards, *Adapting Personas for Use in Security Visualization Design* (2008) — the persona-weighted feature matrix, Fig. 3. [TRADITION: Cooper/Grudin-Pruitt/Adlin participatory-design persona lifecycle]
**Weight/score assignments below are mine, not Beth's** — flagged `[A]` throughout. Adjust the weights and this whole ranking moves; that choice is the actual strategic lever, same as it is in the source paper (Frank weighted over Rob because the project chose to design for the cyber analyst first).

---

## 0. Does a persona-weighted-matrix skill exist in `vision`? Does Idea Chess = "murderbot"?

`[CS: VERIFIED]` — checked `.claude/skills/vision/SKILL.md` directly.

- **Idea Chess is documented** — Step 6.5, "stress-test the sketches before market, not in it." The skill file is explicit that **"murder board" and "murderbot" are retired vocabulary** — "Idea Chess is the only name — use it consistently... No martial/violent framing." So if you were looking for "murderbot" as a name, it was intentionally killed off in favor of chess language (positions, moves, checkmate, win-rate).
- **No persona-weighted feature matrix skill exists anywhere in the repo.** I grepped `vision/SKILL.md` and the `briefs/` tree — "persona" only appears as a word inside unrelated council/critic docs, never as a scoring method. What you have is the Stoll et al. paper + the new Persona Library, which is genuinely new material relative to what the Band Protocol currently does.
- This is a real gap worth naming, not filling silently: Idea Chess scores *survival* (will this ship, at what stage does it die). Nothing in the pipeline currently scores *fit* (whose job does this serve, and how much). They're complementary, not redundant — Idea Chess without persona weighting tells you a feature might survive market forces with no signal on whether the SOC manager or the owner-operator actually wanted it. `[A]` I'd suggest this becomes Step 6.75 in `vision/SKILL.md` if it proves useful below — your call, not mine to add unasked.

---

## 1. Persona-weighted feature matrices

Scoring per Stoll et al. Fig. 3: **score** = −1 harms persona · 0 doesn't matter · +1 helpful · +2 must-have. **Weight** = 0–100 across the persona set for this concept (mine, `[A]`). **Weighted priority** = weight × score, summed per feature.

### Branch A — Cross-vendor QBR (Package 5)

Personas: **am** (Account manager/vCIO, w=30) · **owner** (Owner-operator, w=25) · **sdm** (Service delivery manager, w=20) · **vciso** (fractional CISO, w=15) · **socmgr** (SOC manager, w=10)

| Feature | am | owner | sdm | vciso | socmgr | **Weighted priority** |
|---|---|---|---|---|---|---|
| Cross-vendor normalization layer | +2 | +2 | +1 | +1 | 0 | **145** |
| Value Ledger producer ($ narrative) | +2 | +2 | +1 | +1 | 0 | **145** |
| QBR runbook wiring (existing engine) | +2 | +1 | +1 | +1 | 0 | **120** |
| 15-min operator edit-and-send flow | +2 | +1 | +1 | 0 | 0 | **105** |
| Defensibility tiering (M/B/E/U) | +1 | 0 | +1 | +2 | +2 | **100** |

**Reading it:** normalization and the $-value narrative tie for top priority — consistent with the source brief's own claim that normalization is the whole point of Branch A. Defensibility tiering scores *lowest* here, which is the tell: the personas who'd most reward normalization (am, owner) don't personally carry legal/audit risk if a claim turns out wrong. `[WOBBLY]` — that's a real blind spot in a naive weighted score, not a reason to deprioritize defensibility.

### Branch B — N-able native QBR (Package 3)

Same personas/weights, same feature set, one swap: "cross-vendor normalization" → "cross-N-able (N-central+Cove+Adlumin) normalization," narrower scope.

| Feature | am | owner | sdm | vciso | socmgr | **Weighted priority** |
|---|---|---|---|---|---|---|
| Value Ledger producer ($ narrative) | +2 | +2 | +1 | +1 | 0 | **145** |
| Defensibility tiering (M/B/E/U) | +1 | +1 | +1 | +2 | +2 | **125** |
| QBR runbook wiring | +2 | +1 | +1 | +1 | 0 | **120** |
| 15-min operator edit-and-send flow | +2 | +1 | +1 | 0 | 0 | **105** |
| Cross-N-able normalization (narrow) | 0 | +1 | +1 | 0 | +1 | **55** |

**Reading it:** this is the interesting delta. Narrowing the normalization scope drops that feature from co-top (145 in A) to dead last (55 in B) — and defensibility tiering *jumps* from last to #2, because first-party telemetry makes "Measured" claims defensible day one (exactly the source brief's own argument for why B survives Build and A doesn't). The persona math independently reproduces the source brief's reasoning — that's a legitimate cross-check, not a coincidence I'm claiming credit for.

- **am's score on cross-N-able normalization is a flat 0**, not negative — the persona explorer's own "bad" list for am is "reporting that exposes the vendor's brand" / "no coherent narrative," not "scope is too narrow." A more skeptical read: mixed-stack MSPs' am could score this **−1** if a narrow QBR reads as an admission the MSP doesn't have full visibility to the client. `[A]` I scored it neutral; you may want it negative. That one-point swing moves cross-N-able normalization to the bottom by a wider margin either way — doesn't change the ranking, does change how badly you should worry about it.

### IR RCA (Package 4)

Personas: **t3soc** (Senior SOC/IR lead, w=25) · **socmgr** (SOC manager, w=20) · **vciso** (w=20) · **dfir** (External DFIR/retainer firm, w=15) · **insurer** (Cyber-insurance underwriter, w=20)

| Feature | t3soc | socmgr | vciso | dfir | insurer | **Weighted priority** |
|---|---|---|---|---|---|---|
| Confidence display per claim | +2 | +2 | +2 | +1 | +2 | **185** |
| Human review gate before client export | +1 | +2 | +2 | +2 | +1 | **155** |
| Two calibrated outputs (tech chain + narrative) | +1 | +2 | +2 | 0 | +2 | **145** |
| Live cross-stack correlation (Gate C) | +2 | +2 | +1 | 0 | +1 | **130** |
| Hardening rec + runbook update | +2 | +1 | +1 | 0 | 0 | **90** |

**The catch, stated plainly:** this weighting ranks confidence-display and the review gate *above* the correlation engine itself (Gate C). That's real signal about which features the accountable/paying personas care about most — but it is **not** a signal that Gate C matters less. Gate C is a binary existence question (does a reconstructable incident timeline exist in Adlumin at all) that every other row is downstream of. A persona-weighted matrix ranks features assuming they all ship; it cannot rescue a concept where the top-ranked *available* features sit on top of an unanswered *foundational* one. Don't let this table talk you into believing the trust layer is more urgent to build than answering Gate C — read it as "once Gate C clears, build in this order."

### vCIO/vCISO Advisory Package (Package 1)

Personas: **vciso** (w=30) · **am** (w=20) · **owner** (w=25) · **socmgr** (w=10) · **finadmin** (Finance/billing admin, w=15)

| Feature | vciso | am | owner | socmgr | finadmin | **Weighted priority** |
|---|---|---|---|---|---|---|
| QBR Analyst at quality (prerequisite) | +2 | +1 | +2 | 0 | 0 | **130** |
| Flat-fee billing by practice size | +1 | +1 | +2 | 0 | +2 | **130** |
| Bundle composition (vCIO/vCISO tiers) | +2 | +1 | +1 | +1 | 0 | **115** |
| MSP liability/contract language | +2 | 0 | +1 | +1 | +1 | **110** |
| Positioning/message test | +1 | +2 | +1 | 0 | 0 | **95** |

**Reading it:** the prerequisite (Branch A/B has to already exist) ties for first with the billing mechanism — which independently reproduces the source brief's own framing that this package's survival is "entirely conditional," gated at Stage 3, and that pricing model is the 700× lever. Two independent methods (Idea Chess survival math, persona-weighted feature matrix) landing on the same two bottlenecks is worth more than either alone.

---

## 2. Interviewee → persona tags

Nicole's qual — the "Ask N-zo feedback" 1:1s and the Empower 2026 CAB session, from `nicole-acp-datadump/transcripts/`. Tagged against the 26-persona library. Confidence reflects how explicit the role signal was in the transcript, not how good the fit feels.

| Interviewee | Persona tag | Evidence | Confidence |
|---|---|---|---|
| Aaron Betts | **Owner-operator** (`owner`) | Owns technicians, account managers, and "my security specialist Charles"; personally negotiates the $/tech pricing model | `[CS: MEDIUM]` |
| Boyd Smith | **Owner-operator** (`owner`) | Self-identifies verbatim: "I'm a non-technical business... business owner" | `[CS: HIGH]` |
| David @ Managed IT Experts | **Account manager/vCIO** (`am`) | Frames every use case around QBR narrative generation for clients, non-technical framing | `[CS: MEDIUM]` |
| Donald McKay | **Platform/tenant administrator** (`tenadmin`) | Manages own portals pulling from CRM+ERP+Central, 10,500-agent queries, patching/OS focus across the whole environment | `[CS: MEDIUM]` |
| Jeff Zimbalist | **Automation/centralized-services engineer** (`autoeng`) | Runs a local LLM in-house to compare against; exploratory/technical framing | `[CS: LOW]` — thin transcript |
| Jim Lapore | **Account manager/vCIO** (`am`) | Lifecycle planning + asset-replacement recommendations — matches am's "lifecycle and asset data" design bullet almost verbatim | `[CS: MEDIUM]` |
| John Joyce | **Owner-operator** (`owner`) | Delegates hands-on use to "Will Chimel, our solutions director"; "they don't let me do the fun work anymore" | `[CS: MEDIUM]` |
| Louis Oosthuizen | **Automation/centralized-services engineer** (`autoeng`) | Deep scripting-repository and documentation work, directs Tier-2 engineers, builds automations from the cookbook | `[CS: MEDIUM]` |
| Wesley Harris (co-present w/ Louis) | **Service desk technician** (`deskt`) | Secondary voice on the same call, lighter technical framing, defers to Louis on documentation | `[CS: LOW]` |
| Robby Swartenbroekx (b-inside) | **Automation/centralized-services engineer** (`autoeng`) | "His system engineers" use it in the field; resource-reallocation-across-servers framing — a manager of engineers, not the engineer himself | `[CS: MEDIUM]` |
| Sketch Ditty | **Owner-operator** (`owner`) | Relays feedback *from* his named "Help Desk Engineer" — Sketch Ditty is the principal being interviewed, one level up | `[CS: MEDIUM]` |
| — his Help Desk Engineer (unnamed) | **Service desk technician** (`deskt`) | Direct quotes attributed to "Help Desk Engineer" inside the same transcript | `[CS: HIGH]` |
| Taciano Tavares | **Detection/content engineer** (`deteng`) | Vulnerability prioritization, patch-failure explanations, root-cause-not-alert-noise asks | `[CS: MEDIUM]` |
| Thomas Collier | **Account manager/vCIO** (`am`) | Integration-layer/orchestration-across-corporate-functions framing — strategic, not hands-on | `[CS: MEDIUM]` |
| Chris Wendt | **Owner-operator** (`owner`) | Vertical-focused (construction) MSP strategy, flexible partnering decisions | `[CS: MEDIUM]` |
| Christian Kelly | **Account manager/vCIO** (`am`) | "Trusted advisor... guiding customer journeys" — generic advisory framing, security not specified | `[CS: LOW]` |
| Jeff Young | **Owner-operator** (`owner`) | Back-office expansion (HR/finance) strategy, deal-size/margin calls | `[CS: MEDIUM]` |
| Laura DuBois | **Owner-operator** (`owner`) | Debating engagement boundaries by margin/deal size | `[CS: LOW]` |
| Lee Snyder | **vCISO/fractional CISO** (`vciso`) | Explicitly "an MSSP representative" projecting the security-services market forward, portfolio/strategic framing rather than analyst-level | `[CS: MEDIUM]` — could also read as `socmgr`; flagging the alternate |
| Michael Bateman | *(insufficient signal)* | Only appears grouped inside Chris Wendt's segment in the source PDF extraction; no distinct quote isolated | `[CS: LOW — do not use for weighting]` |

`[WOBBLY]`: nine of eleven Ask-N-zo 1:1 interviewees tag to **owner-operator** or **account manager/vCIO** — almost no Tier-1/Tier-3 SOC analyst or dedicated security-ops voice in this set. That's a real skew in *who Nicole talked to*, not a flaw in the tagging. If you're using this qual to validate the IR RCA or vCISO packages specifically, flag that the security-operations personas (t3soc, deteng, socmgr) are under-represented in this dataset — those two concepts' loudest advocates in your persona-weighted matrices above barely appear in the actual interview set.

---

## 3. Ten Types of Innovation + 5Es + Moore + riskiest assumptions

Ten Types = Doblin/Larry Keeley framework (Profit Model, Network, Structure, Process, Product Performance, Product System, Service, Channel, Brand, Customer Engagement). 5Es = Entice/Enter/Engage/Exit/Extend experience-design lens. Moore = *Crossing the Chasm* value-prop + whole-product/beachhead assessment.

### Branch A — Cross-vendor QBR

| Ten Types | Doing well | Missing |
|---|---|---|
| Profit Model | None claimed yet — TAM spread ($1B–$4.3B) *is* the undecided model | Pricing model entirely unset |
| Network | Buy/partner levers identified (acquire normalization moat, partner past egress wall) | No actual partner/target named |
| Structure | — | No org owns cross-vendor normalization today |
| Process | Runbook Engine + Value Ledger substrate already built | Normalization pipeline "Not started" |
| Product Performance | Would be the only cross-vendor QBR coworker on the market if shipped | Unbuilt — performance is hypothetical |
| Product System | Bundles with Value Ledger, defensibility tiering | Not yet wired to competitor data sources |
| Service | 15-min edit-and-send flow designed | Not tested with an actual operator |
| Channel | — | Egress/ToS legally unexamined — channel to competitor data may not exist |
| Brand | Would be "the holy grail nobody has" — strong differentiation story | Entirely unproven; brand claim outruns the build |
| Customer Engagement | Speaks to the #1 named demand across all 3 Guidepoint instruments | Demand tested for the destination, never the mechanism |

**5Es:** *Entice* — strong, "holy grail" framing sells itself. *Enter* — weak, no working demo exists yet. *Engage* — undesigned; 15-min edit flow is a hypothesis, not tested. *Exit* — undefined (what does the operator do after sending?). *Extend* — theoretically the widest of the four concepts (expands to every vendor an MSP runs) but only if normalization ships.

**Moore value prop:** *"For security-focused MSPs assembling quarterly reviews by hand, Client-Facing Proof (Cross-Vendor) generates a client-ready, evidence-tagged narrative across the full vendor stack in under 20 minutes. Unlike manual assembly or single-vendor dashboards, it delivers cross-vendor normalized evidence with built-in defensibility tiering."* — Chasm assessment: this is **pre-beachhead**. Moore's whole-product test fails outright — the single most load-bearing component (normalization) doesn't exist and may be legally unavailable. You cannot cross the chasm on a product whose core differentiator is unbuilt and untested for legality. `[CS: VERIFIED]` per source brief.

**Riskiest assumption:** Three correlated, untested beliefs — normalization clears legal/ToS [P≈0.30], operators want less verification work not just more output [P≈0.55], defensibility tiering holds under legal review [P≈0.45]. Correlated risk means the ~0.43% floor is a ceiling, not a floor.

---

### Branch B — N-able native QBR

| Ten Types | Doing well | Missing |
|---|---|---|
| Profit Model | Inherits existing N-able seat/platform pricing — no new model needed | Doesn't capture cross-vendor value even if clients would pay for it |
| Network | None needed — first-party only | — |
| Structure | Fits inside existing coworker/runbook architecture | — |
| Process | Runbook Engine + Value Ledger already built; this is wiring, not invention | QBR runbook itself has no spec yet |
| Product Performance | "Measured" claims defensible day one from first-party telemetry | Narrower scope than the demand that was actually measured |
| Product System | Clean fit with existing Adlumin+Cove+UEM telemetry | — |
| Service | Same 15-min edit flow, lower legal/technical risk | Still untested with an operator |
| Channel | No channel risk — no competitor data involved | — |
| Brand | "Foundation that later expands," not a compromise — if positioned that way | Risks reading as "QBR-lite" to mixed-stack MSPs |
| Customer Engagement | Inherits #1 demand signal, buildable now | Demand was measured for the *cross-vendor* job, not this narrower one — the load-bearing gap |

**5Es:** *Entice* — moderate; "buildable now" is a weaker hook than "holy grail." *Enter* — strongest of the four concepts; substrate exists, shortest path to a real demo. *Engage* — same 15-min edit flow, same untested status. *Exit* — same gap as Branch A. *Extend* — narrower ceiling than A by design; the whole pitch is "start here, expand later."

**Moore value prop:** *"For N-able-stack MSPs who want to stop assembling QBRs by hand, Client-Facing Proof (Native) produces a client-ready, defensibility-tagged quarterly review from first-party telemetry in under 20 minutes... needs no normalization and carries a legally cleaner data position — but is limited to clients on an N-able stack."* — Chasm assessment: this is the only one of the four with a plausible **beachhead segment already named** (N-able-consolidated MSPs) and a **whole product that's mostly assembled**. Moore's discipline says pick the narrowest winnable beachhead first — this is that beachhead. The risk isn't the chasm crossing, it's whether the beachhead is big enough to be worth crossing for.

**Riskiest assumption:** Mixed-stack MSPs pay a premium for N-able-only scope — they don't experience Branch B as an incomplete Branch A [P≈0.35]. Never tested; demand was measured for cross-vendor only.

---

### IR RCA

| Ten Types | Doing well | Missing |
|---|---|---|
| Profit Model | Compliance-driven WTP is real — #1 named driver on cyber-insurance policies | No independent TAM; bundled inside vCISO tier pricing, unresolved |
| Network | Positions N-able as chokepoint if Adlumin owns the log at the bottom of the chain | Depends entirely on Gate C (data access) clearing |
| Structure | Bundles cleanly with Tabletop as the vCISO security tier | No spec yet; "genesis-stage" |
| Process | Two-output design (tech chain + client narrative) + human review gate already conceived | Live zero-holes correlation rated only ~30% feasible |
| Product Performance | Second-strongest demand signal (#2 qual, #3 quant priority) in the whole dataset | A wrong confident root cause is asymmetric and unrecoverable — no room for the ~30% to be optimistic |
| Product System | Confidence-tagging pattern reusable elsewhere in the coworker stack | Evidence chain existence (Gate C) entirely unconfirmed |
| Service | "During, not after" is a genuine wedge — a live RCA is part of the response, not a report | Untested whether a live version is trusted enough to send without human rewrite |
| Channel | Cross-tenant Adlumin access is the whole existence question | Technical AND legal clearance both open |
| Brand | Compliance-anchored positioning ("the RCA during the incident is equivalent to helping resolve it") is strong and quotable | Nothing built to back the quote yet |
| Customer Engagement | Persona-weighted matrix above shows strong demand across t3soc/socmgr/vciso/insurer simultaneously | Operator's current-state IR process was never directly observed |

**5Es:** *Entice* — the compliance hook is the strongest "why now" of the four. *Enter* — worst of the four; nothing exists, and the entry point (Gate C) is a legal/technical unknown, not a design problem. *Engage* — well-conceived (confidence tags, review gate) but unbuilt. *Exit* — the closing "hardening recommendation + runbook update" is the most complete exit loop of any concept here. *Extend* — high ceiling (feeds detection engineering, tabletop, vCISO tier) if Gate C clears.

**Moore value prop:** *"For MSPs carrying incident-response obligations they can't staff with a full SOC, the IR/RCA coworker assembles a cross-stack, confidence-tagged root-cause report in real time. Unlike manual post-hoc RCA or a generic SIEM export, it produces two calibrated outputs... with a human review gate before anything faces a client."* — Chasm assessment: **cannot be assessed yet.** Moore's whole-product model requires a working core; here the core (the evidence chain) is an open existence question, not a completeness gap. This is pre-product, not pre-chasm.

**Riskiest assumption:** A reconstructable incident timeline exists in Adlumin and is reachable by a coworker without a separate product-lane decision. Gate C is unconfirmed; this is binary and upstream of everything else in the table above.

---

### vCIO/vCISO Advisory Package

| Ten Types | Doing well | Missing |
|---|---|---|
| Profit Model | The actual innovation lives here — flat-fee vs. revenue-share is a 700× survival swing, correctly identified as the lever | Billing mechanism for practice-based pricing doesn't exist in any N-able system today |
| Network | Channel position (existing MSP relationships, PSA integrations) is the named N-able superpower — no AI-native competitor has this | Not activated — no PSA billing integration built |
| Structure | Clean two-tier structure (vCIO strategy-facing / vCISO risk-facing) maps directly onto existing coworkers | Tier composition itself is "unmade" |
| Process | — | Entirely dependent on Branch A/B shipping first; dies at Stage 3 if they don't |
| Product Performance | Highest naive survival of any package in the corpus (~14% flat-fee) | That number is a model output, not market data — `[CS: LOW]` per source |
| Product System | Bundles QBR + Env Health + roadmap (vCIO) and IR RCA + Tabletop + Alert Flood + identity (vCISO) | Half the bundle (roadmap, tabletop, alert flood, identity) is unmade |
| Service | Positions N-able as *reselling* proof coworkers as a service, not shipping a new one | No MSP liability/contract language drafted |
| Channel | Rides the existing MSP channel — genuinely differentiated vs. Cynomi-style AI-native entrants | No channel precedent for revenue-share pricing exists to borrow from |
| Brand | "Not a coworker — a way to sell what the coworkers already prove" is a sharp, honest positioning line | Positioning itself is untested — "nearly free to test," per source, and not yet run |
| Customer Engagement | vCISO named the highest-value use case in Guidepoint; vendor data shows MSPs offering vCISO tripling 21%→67% YoY | That YoY stat is vendor-sponsored, n=200 — `[CS: MEDIUM — WOBBLY]` |

**5Es:** *Entice* — strong if positioned correctly ("sell what you already have," not "buy something new"). *Enter* — blocked; can't enter until Branch A/B exist at quality. *Engage* — the billing/bundle mechanic itself is unbuilt anywhere. *Exit* — undefined; no contract/liability language yet. *Extend* — the widest ceiling of the four (grows with the MSP's whole practice, not one report) but entirely theoretical until the prerequisite ships.

**Moore value prop:** the source material doesn't supply a single-sentence Moore-format value prop for this package (it's a positioning layer, not a product) — closest equivalent: *"For MSPs building vCISO/vCIO practices, this bundles proof-layer coworkers into a recurring advisory retainer, flat fee by practice size; grows with the MSP's practice."* Chasm assessment: this is **downstream of the chasm, not on it** — it's a go-to-market/pricing innovation layered on top of Branch A/B's product-market fit, not a product with its own beachhead. Applying Moore's whole-product discipline here is close to a category error; the real test is a pricing/positioning experiment, not a chasm crossing.

**Riskiest assumption:** the billing mechanism clears PSA/channel norms — MSPs accept N-able-determined pricing tied to practice size rather than per-tool/seat [P≈0.45 flat-fee, P≈0.20 revenue-share]. No channel precedent exists either way.

---

## What this whole exercise is actually saying, stated once

Two independent scoring methods (Idea Chess survival math from the source brief, and the persona-weighted feature matrix built here) land on the same two chokepoints without being asked to agree: **Branch A/IR RCA are both gated on an unresolved data-access/legal question that no amount of feature design fixes**, and **the vCIO/vCISO package's whole survival is a pricing decision, not a build decision.** The Ten Types table adds one thing neither prior method surfaced on its own: of the four concepts, **Branch B is the only one with a genuinely complete whole product and a named beachhead** in Moore's sense — which is a specific, checkable claim, not a vibe. `[A]` Worth deciding whether "buildable now" is a strategy or just what's left after the other three get blocked.
