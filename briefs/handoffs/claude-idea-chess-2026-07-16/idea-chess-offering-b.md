# MURDER BOARD — Offering B · Governed Agent Control Plane

**Battleship Day. Job: sink the ship.** Adversarial. Nothing here defends B. Where evidence exists it is cited and tagged; where the board estimates, it says so. Grounded against `briefs/acp-offerings-2026-07-14.md`, `briefs/acp-word-sketches-2026-07-14.md`, `briefs/acp-why-nable-build-map-2026-07-14.md`, `briefs/acp-vision-synthesis-2026-07-14.md`, `scout_input/acp-tam-control-plane.md`, `scout_input/06-ncentral-automation-patterns.md`, `acp-findings-2026-07-14.json`, and the `acp-core-main-3` build read.

**The one-line indictment:** B has the best *build-readiness* and the worst *revenue-readiness* of the set. The engine is built and the need is real — but B's moat (governing agents it didn't build) is *unspecced*, its price (an agent-management seat) has *no precedent anywhere*, and the one buyer quote about paying for governance is a man saying you *won't* get paid for it. B is being sold as the sturdy offering because the code is real. The code being real is not the same as the *business* being real.

---

## 1. COUNCIL KILL-PASS

Twelve traditions. Each: its **kill criterion** (the evidence that proves B wrong) and its **single best shot** at sinking B. Sharp, cited, tagged.

### 1. Jobs-to-Be-Done (Christensen / Ulwick)
- **Kill criterion:** The job the MSP hires B for isn't "govern agents" — it's "sleep at night having handed real work to a thing I can't fire." If governance is a *feature the MSP expects for free* inside whatever tool ran the agent, then "governance" is not a job you can hire a separate product to do.
- **Best shot:** *Governance is a hygiene job, not a paid job.* Shawn — the literal expert who advises 200+ MSPs — says governance is *"probably not something you're going to get someone to pay for"* [CS: HIGH — Guidepoint, offerings §B-money]. JTBD's cruelest reading: the job exists, it's real, and the market's structural expectation is that whoever creates the agents *owes* you the governance for free. You can't monetize the seatbelt separately from the car.

### 2. Self-Determination Theory (competence / autonomy / relatedness)
- **Kill criterion:** If gated autonomy makes the MSP feel *less* competent ("the tool keeps asking me to approve things I don't understand well enough to approve"), the approval gate becomes anxiety, not control. Governance that offloads the *feeling* of accountability without the *capacity* to exercise it fails SDT.
- **Best shot:** The high-risk tier *always requires explicit individual sign-off and is never batched* [CS: VERIFIED, findings JSON]. For an MSP running Derek's *"200 agents"*, that is a flood of high-consequence approvals landing on one admin who cannot possibly hold context on all of them. The autonomy the tool *claims* to give (hand work to agents) is undercut by the competence it *demands* (understand every high-risk action well enough to sign). At scale, gated autonomy converges on alert fatigue — the exact failure the approval model was designed to prevent (findings JSON: *"runtime confirmation of every action would stall scheduled workers and create alert fatigue"*).

### 3. Service Blueprint / Kumar ethnography (Doblin backstage)
- **Kill criterion:** The frontstage promise is *"govern the agents you run."* The backstage step that makes it true — *pre-screening or intercepting an externally-built agent's actions* — does not exist. If the backstage can only *audit-after*, the frontstage promise ("govern") is a fiction at the line of visibility.
- **Best shot:** Governing externally-built agents is *"audit-after, no pre-screen… not specced"* — Nicole's own BIG QUESTION [CS: VERIFIED, why-nable-build-map:66]. The vision doc is blunt: *"The control plane does not pre-screen or approve runbooks before use… This is a big 'unknown'"* (acp-vision-from-pdfs). The blueprint's load-bearing backstage line is empty. B can *watch* the 200 agents; it cannot *stop* them. "Governed" is the frontstage word for a backstage that only logs.

### 4. Value-Based Pricing / Economic Buyer
- **Kill criterion:** If governance is priced as its own value (a line item) and the buyer values it at zero, the pricing model collapses to whatever *else* is in the bundle. B must be priced on something the buyer will actually pay for.
- **Best shot:** The offering *already conceded this* — governance is *"NOT a SKU"*, it rides as bill-and-compliance enablement (offerings:171). Which means B's headline value prop ("govern AI safely *and* bill for it") is monetized entirely through the *"and bill for it"* half — and that half rests on **one unprompted quote from one man** (Jonathan: *"the ability to charge my clients"* [CS: MEDIUM]). The economic buyer is being sold a governance product whose governance half is explicitly unpriced. B's revenue is a single-source anecdote wearing a platform's clothes.

### 5. Moore — Crossing the Chasm
- **Kill criterion:** If the early adopters (MSPs sophisticated enough to run 200 agents) *build their own* control plane, there is no referenceable pragmatist bridge.
- **Best shot:** *Vikram runs his own control plane* [CS: VERIFIED — blind-interviews:56] and *"we have automated all of this"* [vision-synthesis]. Derek: *"I could build that in Cloud in a day."* The segment with the *most acute* agent-sprawl pain (large, mature, technical) is precisely the segment that self-builds the governor. The visionaries defect to DIY; the pragmatists who'd buy don't yet *have* the sprawl problem acutely enough to feel it. The chasm's near bank is empty and the far bank isn't in pain yet.

### 6. Christensen — Disruption / Commoditization
- **Kill criterion:** If the platforms that *create* the agents (the LLM vendors, the orchestration layers, or N-central itself) fold governance/audit into their own runtime as table stakes, a standalone governance plane is commoditized before it monetizes.
- **Best shot:** The regulatory tailwind B leans on *cuts the other way.* If EU AI Act–style logging becomes *mandatory* [CS: LOW — outside training window, do not assert], every serious agent runtime will build audit-logging in to be sellable at all. Governance-as-compliance becomes a *commodity checkbox*, not a differentiator. The same regulation the offering cites as a tailwind (offerings:66) is the force that commoditizes the exact feature. B is monetizing the thing regulation will force everyone to give away.

### 7. Porter — Five Forces
- **Kill criterion:** High supplier power (B depends on external LLMs for all inference) + high substitute threat (DIY, RMM-native automation) + low buyer WTP = no defensible margin.
- **Best shot:** *"All inference is delegated to external LLMs"* and under BYOM *"the control plane hands off to the customer's chosen model and does not sit in the inference path"* (acp-vision-from-pdfs). So the reasoning layer — the part that *feels* like the value — is a supplier B doesn't own and the customer can bring themselves. B's defensible position shrinks to the *governance wrapper and the connectors*. Supplier power on the LLM is high, buyer power on the wrapper is high (Shawn: won't pay), substitute is high (build-in-a-day). Three red forces.

### 8. Wardley Mapping (evolution)
- **Kill criterion:** If "agent governance / audit trail" is evolving toward utility/commodity faster than N-able can build the custom-built moat (G4 Action Proxy), N-able spends genesis effort on something the market will get as a utility.
- **Best shot:** Audit-logging and approval-gating are *already product-stage* (every serious platform has some form). The only *genesis*-stage, defensible component is the **Action Proxy that governs agents N-able didn't build** — and that is exactly the piece that is *unspecced* [why-nable-build-map:66]. B's map puts built effort into the product-stage components (runbook engine, approval tiers — real but copyable) and leaves the one genesis-stage moat as an open question. Building hard on the commoditizing layer; leaving the defensible layer as a TODO.

### 9. Kano
- **Kill criterion:** If gated autonomy / audit trail is a "must-be" (expected; dissatisfier if absent; *no* delight if present), it cannot command premium price — it's the price of entry.
- **Best shot:** The research says exactly this: *"Governance + rollback = price of entry"* [CS: VERIFIED — blind-interviews:55]; *"all-17-expect-human-control"* [CS: HIGH]. When 17/17 *expect* it, it is definitionally a must-be. Kano is unambiguous: a must-be feature priced as a delighter collapses. B's central capability is, by its own strongest evidence, table stakes.

### 10. Lean — Riskiest-Assumption Test
- **Kill criterion:** The RAT for B is *not* "do MSPs want governance" (answered, strong). It's "will anyone pay for an agent-management seat, at a price with no precedent, for a governance capability they expect free." If the RAT is unowned, the build is a leap.
- **Best shot:** Agent-seat ARPU has *"no price precedent… MOST FRAGILE"* [CS: UNKNOWN — tam-control-plane:57], and standalone governance WTP is *"unproven"* (Shawn). The two riskiest assumptions — *someone pays* and *how much* — are both unowned and one of them (WTP) has a named-expert quote pointing at **zero**. Lean's verdict: B is being built on the strength of its *engineering readiness* while its single riskiest *commercial* assumption sits untested with a negative signal attached.

### 11. Doblin — Ten Types of Innovation
- **Kill criterion:** If B innovates on *Product Performance* (a better governance dashboard) and *Structure* (owned stack) but not on a defensible *Profit Model*, the profit model is the copyable weak point.
- **Best shot:** B's genuinely defensible types are *Product System* (first-party stack) and *Process* (Deterministic Substitution Engine) — both real, both partly built. But the *Profit Model* (per-agent-seat + per-run metering) is the innovation that carries the revenue, and it is the *least* evidenced: no ARPU precedent, per-run metering *"EXCLUDED… unquantifiable"* [tam-control-plane:58,80]. Strong on the types that create defensibility, weakest on the one type that creates *revenue*.

### 12. Regulatory / Liability lens
- **Kill criterion:** If a *governed* agent still errs — B approved it, logged it, and it wiped a database anyway — does B's audit trail make N-able *more* liable (it was the system-of-record that let it through), not less? If "governed" implies a duty of care B cannot discharge (it doesn't pre-screen), the audit trail is a *discovery document*, not a shield.
- **Best shot:** Derek: *"AIs cannot be taken to court. They can't be fired… there has to be a human in the loop"* [CS: HIGH]. B's answer is the audit trail + human approval. But the audit trail records *that a human approved* a medium-risk batch with a default *"Approve all"* CTA (findings JSON) — which in litigation is evidence the human *rubber-stamped* it. And because B *"does not pre-screen"* externally-built agents, an audit-after log of a governor that couldn't intervene may *establish* N-able as the negligent party in the reliance chain. The compliance owner is `<TBD>` and the EU AI Act specifics are `[CS: LOW — outside training window]`. B ships a liability-record surface into a regulated space with no named owner and an unresolved question of whether the record protects the MSP or indicts the vendor. (See H1, H2.)

---

## 2. WHAT WE HAVEN'T THOUGHT ABOUT — the holes not on the list

*The most valuable section. Each gets a probability in §3.*

### H1 — The governor's liability paradox
The pinned list treats the audit trail as an asset ("compliance asset, not overhead," offerings:66). It does **not** ask the inverse: **does governing an agent make you liable for it?** Once N-able's control plane is the system that *approved, logged, and permitted* an agent's action, N-able has arguably assumed a duty of care over that action. If the agent errs anyway — deletes the wrong tenant, mis-classifies a threat, executes a destructive script it was "governed" to allow — the plaintiff's cleanest theory is: *the governor let it through.* The audit trail, marketed as protection, becomes the evidence file. **"Governed" may be a legally worse position than "ungoverned"** because it establishes knowledge and control. Nobody has scoped whether B's audit trail protects the MSP or exposes N-able. `[?]` — high-consequence, unexamined.

### H2 — The "govern agents we didn't build" trust/security paradox
This is B's *moat* and its deepest hole, and they are the same fact. To be "the governor of all agents" (the strong buy-vs-build position, why-nable-build-map:20), the Action Proxy must sit in the action path of agents N-able *did not write and cannot inspect.* That means: (a) an externally-built agent must voluntarily route its actions through ACP — why would a competitor's agent do that? (b) ACP must be trusted with the credentials/scope to *intercept and block* those actions — a massive new attack surface and a single point of catastrophic failure; and (c) B *"does not pre-screen"* — so it governs by watching, not gating, which is not governance. **The moat requires simultaneously being trusted enough to sit in everyone's critical path AND admitting you can't actually screen what passes through.** Walled-garden (only ACP-built agents) is buildable but has no moat; governor-of-all-agents is the moat but may be technically and commercially impossible. The load-bearing decision is unmade [offerings:172]. `[?]` — this may be the sink.

### H3 — Is metering the MSP's *own* agents even desirable — or legal?
Per-run metering assumes the MSP is happy to be charged per action their agents take. But **the fear that drives self-build is bill-shock** (pinned assumption, unproven). An MSP running Derek's 200 agents at per-run pricing faces an *unpredictable, usage-coupled bill that scales with their success.* Worse: some of those runs execute against the MSP's *clients'* infrastructure under the client's contract — **can N-able meter (and profit from) actions taken inside a third party's environment without the client's consent?** The metering meter runs on runs that touch data and systems N-able has no relationship with. Nobody has asked whether per-run metering of cross-tenant actions is contractually or legally clean. `[?]` — unexamined, possibly a DPA/consent problem.

### H4 — N-central / RMM already does a version of this (internal substitute)
The pinned list names external buy-vs-build (Derek, Vikram). It does **not** name the *internal* substitute: **N-able's own N-central already runs rule-based automation with policies and approval-adjacent controls** — patch deployment via group policy, service control, scripted remediation [CS: VERIFIED — 06-ncentral-automation-patterns.md]. To an MSP already inside N-central, "governed automation" isn't a new category — it's *what the RMM has always done*, minus the AI reasoning. This creates two problems: (1) **channel/positioning confusion** ("why is this a separate product from my RMM policies?"), and (2) **the honest value of B narrows to the AI-reasoning wrapper** — because the govern-and-execute substrate already exists in the installed base. B may be selling, as a new plane, a capability the buyer thinks they already own. `[A]` — unmodeled internal substitution.

### H5 — Latency in the critical path (the proxy tax)
The Action Proxy's own risk register names it — *"you must sit in the action path (latency, adoption)"* [word-sketches:104] — but nobody has *modeled* it. If every governed action routes through ACP's risk-tier gate, ACP adds a hop to *every action every agent takes.* For real-time work (a threat-response agent, an alert-flood suppressor), added latency in the critical path is not a UX nuisance — it can be the difference between containing and not containing. And an agent that must wait on a proxy that is *itself* calling external LLMs for reasoning inherits that latency too. **B proposes to insert itself into the critical path of time-sensitive automation with no latency budget, no SLA, and no benchmark.** `[?]` — named, never measured.

### H6 — The operator who configures the coworker was never studied
Every demand signal is *buyer purchase-intent.* The person who actually *builds and governs* a coworker — fills the 9-field Coworker Brief, sets the risk ceiling, picks the scripts, decides when to promote autonomy — was **never interviewed** (the operator/daily-user gap runs through the whole corpus; ~93% `[A]` on the daily user, vision-synthesis). B's entire premise is that a non-programmer MSP admin can *safely* configure a governed agent. We have zero evidence about whether that person can hold the mental model of risk tiers, batch approvals, promotion criteria, and scope guardrails without misconfiguring the safety that is the product's whole point. **A governance product whose safety depends on correct configuration, sold to an operator we've never watched configure anything.** `[A]` — the largest research gap, sitting *under* the offering.

### H7 — The promotion criterion is undefined and safety-critical
The autonomy model enforces Manual → Assisted → Autonomous but *"does not decide when to promote"* — a separate system does, and the *criterion is undefined* [findings JSON; council-mini-alert-flood]. This is the single most dangerous unspecced piece: **promote too early and a not-yet-trustworthy agent gets auto-execute on real infrastructure** ("one miss kills the relationship"). Promote too conservatively and B is just a very expensive approval queue with no autonomy payoff — i.e., it never delivers the labor savings that justify the seat. The product's core value (earned autonomy) and its core risk (premature autonomy) are the same knob, and the knob has no defined setting. `[?]` — safety-critical, unspecced.

### H8 — Drift: "lock it once it works, until something goes wrong"
The determinism demand (Shawn/Vikram want *locked deterministic* workflows) is B's best superpower-alignment — but the *drift-detection mechanic that watches a frozen workflow and unfreezes it when the environment changes* is **unspecced** [offerings:170]. A locked runbook that keeps executing after the environment has drifted (a patched OS, a changed API, a renamed field) is *worse* than no automation — it confidently does the wrong thing at scale. B's headline safety claim (determinism) has no answer for the moment determinism becomes stale. `[?]` — unspecced, and the failure mode is silent + scaled.

### H9 — Marketplace chicken-and-egg
B's distribution story leans on a marketplace of certified Expert/Vendor agents (Shopify pattern). But the marketplace is ranked *"6 · marketplace ([A] demand)"* — dead last, assumption-only [offerings:167] — and *"needs supply side first… heavy + slow for a one-off agent"* [word-sketches:113]. **No vendor partners are named as committed supply.** A two-sided marketplace with no committed supply and unvalidated demand is the classic cold-start failure. If the marketplace is load-bearing for B's TAM ceiling (rev-share), that ceiling rests on a market that doesn't exist yet. `[A]` — cold-start, no supply commitment.

### H10 — Per-run metering has no price and may be unpriceable
Beyond "does it cause bill-shock" (H3): the per-run price *itself* has **no public benchmark anywhere** — *"EXCLUDED… CS: FABRICATION RISK if numeric… unquantifiable from public data"* [tam-control-plane:58,80]. n8n/Zapier per-op pricing is cited as precedent but those meter *integration steps*, not *governed autonomous infrastructure actions* — a different risk and value profile entirely. **A pillar of B's monetization has a price the board is explicitly forbidden to invent.** That's not a gap you close with a pricing study; it may be a gap that means per-run metering isn't a viable pillar at all. `[?]`.

### H11 — The registry that makes governance real is designed, not built
Coworker/Expert are *"flat pre-registry tables"* — the versioned/guardrail registry is *"designed, not migrated"* [why-nable-build-map:65]. Governance *is* versioning and guardrails: without a versioned registry you cannot answer "what exactly was this agent permitted to do on the date it erred?" — the core audit question (and the core H1 liability question). **B's build-readiness claim ("lowest build risk," offerings:66) is true for the runbook engine and false for the governance registry** that actually delivers the value prop. The glamorous "it's already built" story rests on the engine; the governance substrate is a migration that hasn't happened. `[A]/[?]` — build-state gap hidden inside a build-readiness boast.

### H12 — Standalone-WTP disproof would collapse B into a *feature of A*
Follow the logic the offering itself already half-concedes: governance isn't a SKU (offerings:171), it should be priced *"as the seat under A/C"* (offerings:164). If standalone governance WTP tests at ~zero (Shawn's prediction), then **B is not an offering — it's the pricing mechanism for A and C.** That's not necessarily fatal to N-able, but it *is* fatal to B-as-a-standalone-bet, which is how it's being positioned ("serious second," a distinct offering with its own TAM). The murder-board reading: B's most likely true identity is *infrastructure that A and C are sold on*, and treating it as a standalone product with a $3B TAM is the category error. `[?]` — reframes the whole bet.

---

## 3. ASSUMPTION MODEL

*(Companion file: `idea-chess-offering-b.assumptions.json`.)*

---

## 4. MONTE CARLO READ

**Naive survival = product of REQUIRED probabilities.** The `required: true` assumptions (B-as-standalone-offering cannot survive without each):

| id | label | p |
|---|---|---|
| B1 | Someone pays for governance (not free/expected) | 0.35 |
| B2 | Agent-seat ARPU exists at a defensible price (no precedent) | 0.40 |
| B3 | Can govern externally-built agents (the moat) | 0.30 |
| H2 | Governor-of-all-agents is technically + commercially viable | 0.30 |
| H6 | The operator can safely configure a governed agent | 0.55 |
| H7 | Promotion criterion definable safely (autonomy payoff without premature-autonomy risk) | 0.50 |

**Naive product:** 0.35 × 0.40 × 0.30 × 0.30 × 0.55 × 0.50 ≈ **0.00347 → ~0.35%.**

Read honestly: **as an independent product of required gates, B-as-a-standalone-offering is a near-certain sink** — a lower naive survival than Offering A (~0.6%). But the number's job is to point at the fix, not forecast doom. Two things it's telling us:

1. **B's required gates are *commercial*, not *technical*.** A's killers were build-and-legal (normalization unstarted, data egress). B's killers are *will-anyone-pay* and *can-the-moat-exist* — B *inverts* A. A had strong demand and weak readiness; B has strong readiness and weak monetization + weak moat.
2. **The lowest-probability gate (B3 / H2 at 0.30) is the moat itself.** B's defensibility and B's likeliest death are the same fact — governing agents it didn't build.

**Independence caveat (honest):** these are correlated, so true survival is higher than 0.35%. B1 (someone pays) and B2 (ARPU exists) are the *same knot* — if standalone WTP is zero, ARPU is moot; if it's positive, a price emerges. B3 and H2 are nearly the same gate viewed from product vs. strategy. So the six gates cluster into **three knots**: **(1) the money knot [B1+B2] — will anyone pay, and how much; (2) the moat knot [B3+H2] — can you govern what you didn't build; (3) the safety-config knot [H6+H7] — can a real operator run this without misconfiguring the safety.** Untangle one knot and its paired probability moves with it.

### Sensitivity ranking — which single failure kills the most scenarios

1. **B3 / H2 — governing externally-built agents (the moat).** *Test first — cheapest, most upstream, most decisive.* At p=0.30 and `required`, it's the lowest gate, and it's *upstream of the entire "control plane" framing*: if B can only govern agents it built (walled garden), it isn't a control plane, it's an agent builder — a smaller, less defensible product with no buy-vs-build moat. This is a **spec + architecture question that costs no build spend to resolve**: can the Action Proxy technically intercept-and-gate a third-party agent's actions, and would any MSP route their agents through it? → *Test: G4 Action Proxy spec run + 3 operator interviews asking "would you route your Cloud/Claude-built agents through our gate, and why."*
2. **B1 — standalone governance WTP.** The named-expert signal points at *zero* (Shawn). If confirmed, B collapses into a feature of A/C (H12) rather than dying — but it kills B-*as-an-offering*. → *Test: pricing conversation with 5 MSPs — "would you pay a line item for agent governance, or do you expect it bundled." Cheap, decisive, and Shawn already predicted the answer.*
3. **B2 — agent-seat ARPU.** No precedent anywhere [CS: UNKNOWN]. Even if B1 clears (someone pays), the *price* is unanchored. → *Test: same 5-MSP pricing conversation; probe a number.*
4. **H7 — promotion criterion.** Safety-critical and unspecced; gates whether B ever delivers the autonomy payoff that justifies the seat. → *Test: design spike — define the evidence standard for Manual→Assisted→Autonomous, route the risk-tolerance call to the product team.*

**The first test to run is not about governance demand (answered, strong) — it's the G4 moat spec + the standalone-WTP conversation.** Both are days, not quarters, and neither requires building anything. They also resolve the biggest strategic question in one move: *is B an offering, or is it the seat under A and C?*

---

## 5. OREGON TRAIL — where B dies, by stage

**BUILD → LAUNCH → ADOPT → DEFEND.** The river crossings, in order:

### BUILD
- **Ford 1 — The governance registry (H11).** The runbook engine is across; the *versioned/guardrail registry* — the thing that makes "governed" true and auditable — is *"designed, not migrated."* A shallow-looking creek that's actually the value.
- **Ford 2 — The Action Proxy moat (B3/H2).** *This is the widest, coldest crossing, and it's the one with no bridge and no map.* Governing externally-built agents is unspecced, and it may be that the far bank *doesn't exist* — that no MSP will route third-party agents through your gate. Unlike A (which dies at BUILD from an unstarted-but-buildable capability), **B may die at BUILD from a capability that can't be built as promised** — governor-of-all-agents may be commercially impossible, not just unstarted.

### LAUNCH
- **Ford 3 — Pricing model (B1, B2, H10).** *The most likely death.* No ARPU precedent, per-run metering unpriceable, and the one expert quote says governance won't sell as a line item. You can ship the best-built product in the set and price it into a market that returns zero. B dies here not because the product fails but because *the meter has no legitimate reading.*
- **Ford 4 — Compliance owner `<TBD>` + the liability paradox (H1, §1.12).** Launching a governance-of-record product into a regulated space with no named compliance owner — and no answer to whether the audit trail protects the MSP or indicts N-able — is fording at flood stage.

### ADOPT
- **Ford 5 — The operator configures it wrong (H6, H7).** The buyer signed; now an unstudied non-programmer admin must configure risk tiers, scopes, and promotion criteria *correctly* or the safety is theater. **The insidious death**: it happens after revenue, and it happens as a *safety incident* (a mis-promoted agent executes something destructive), not just churn.
- **Ford 6 — Latency tax (H5) + drift (H8).** In production, the proxy adds a hop to every action and the locked runbooks go stale. Both silent, both scaled.

### DEFEND
- **Ford 7 — Commoditization by regulation + runtime (§1.6, §1.8).** Governance/audit becomes a mandatory table-stakes checkbox everyone ships; the DIY segment (Vikram) already self-builds; N-central-native automation (H4) confuses the position from *inside* N-able. Margins compress.
- **Ford 8 — Marketplace never ignites (H9).** If the TAM ceiling leaned on marketplace rev-share, the cold-start failure caps B at the floor.

### Verdict — the stage B most likely dies
**B dies at LAUNCH (Ford 3: pricing), and if it somehow prices, its moat was never built at BUILD (Ford 2), so it dies at DEFEND as an undifferentiated governance checkbox.**

This is the sharp contrast with A. **A dies at BUILD** — it can't make the thing. **B *can* make the thing** (that's its whole boast) — **B dies at LAUNCH because no one will pay for it as a standalone, and at DEFEND because the one thing that would make it defensible (governing agents it didn't build) is the one thing that was left as an open question.** B's tragedy is the inverse of A's: A is a great problem with an unbuilt solution; B is a well-built solution to a problem the market expects solved *for free*, wrapped around a moat that isn't specced.

**The mercy (same as A):** B's two most likely killers are also its two cheapest tests. The G4 moat spec and the standalone-WTP conversation cost days, not quarters, and neither requires building anything. And they resolve the deepest question in one move — **run them before you position B as a standalone offering, because they'll likely tell you B is the *seat under A and C*, not a ship of its own.**

---

## READABLE ASSUMPTION TABLE (companion to §3 JSON)

| id | label | p | required | stage | evidence |
|---|---|---|---|---|---|
| B1 | Someone pays for governance (not free/expected) | 0.35 | ✔ | launch | [A] CS:HIGH-against — Shawn "won't pay" |
| B2 | Agent-seat ARPU exists at a defensible price | 0.40 | ✔ | launch | [?] CS:UNKNOWN — no precedent, "most fragile" |
| B3 | Can govern externally-built agents (the moat) | 0.30 | ✔ | build | [?] unspecced — Nicole's BIG QUESTION |
| B4 | Gated autonomy is wanted | 0.92 | ✘ | adopt | [R] CS:HIGH — 5/5 + 13/17 + 17/17 expect |
| B5 | Governance-as-bill-enablement works | 0.50 | ✘ | launch | [A] — Jonathan, single unprompted source |
| B6 | Determinism demand aligns with DSE | 0.70 | ✘ | defend | [A]/MEDIUM — Shawn/Vikram want locked |
| B7 | MSPs want to build own agents (retention) | 0.55 | ✘ | adopt | [A] — pre-spec'd on-ramp assumption |
| B8 | Per-run metering doesn't trigger bill-shock | 0.45 | ✘ | launch | [A] — the fear that drives self-build |
| B9 | EU AI Act makes audit a compliance *asset* | 0.50 | ✘ | defend | [CS: LOW — outside training window] |
| H1 | Governing doesn't *increase* N-able liability | 0.50 | ✘ | defend | [?] — audit trail as discovery document |
| H2 | Governor-of-all-agents technically+commercially viable | 0.30 | ✔ | build | [?] — moat = deepest hole, same fact |
| H3 | Metering cross-tenant runs is legal/desirable | 0.55 | ✘ | launch | [?] — DPA/consent unexamined |
| H4 | Not confused with / cannibalized by N-central automation | 0.55 | ✘ | defend | [A] CS:VERIFIED N-central already automates |
| H5 | Proxy latency acceptable in critical path | 0.55 | ✘ | adopt | [?] — named, never measured, no SLA |
| H6 | Operator can safely configure a governed agent | 0.55 | ✔ | adopt | [A] CS:HIGH — ~93% [A] operator gap |
| H7 | Promotion criterion definable safely | 0.50 | ✔ | adopt | [?] — unspecced, safety-critical |
| H8 | Drift detection for locked runbooks solvable | 0.55 | ✘ | defend | [?] — unspecced, silent+scaled failure |
| H9 | Marketplace supply side ignites | 0.35 | ✘ | defend | [A] — no committed supply, cold-start |
| H10 | Per-run metering is priceable at all | 0.45 | ✘ | launch | [?] CS:FABRICATION-RISK if numeric |
| H11 | Governance registry gets built (not just engine) | 0.60 | ✘ | build | [A]/[?] — designed, not migrated |
| H12 | B survives as standalone (not just A/C's seat) | 0.35 | ✘ | launch | [?] — offering itself half-concedes seat-under-A |

**Required gates (B-as-offering cannot survive without):** B1, B2, B3, H2, H6, H7. Naive product ≈ **0.35%** (independence caveat above — three knots: money, moat, safe-config).

---

## THE KILL, IN ONE PARAGRAPH

Offering B is the best-built and worst-monetized bet in the set — the exact inverse of Offering A. Its engine is real, its need is triangulated and strong (17/17 expect gated control), and its build risk is genuinely the lowest. And none of that is where it dies. B dies at **LAUNCH**, because the one buyer-expert who was asked says governance is *"probably not something you're going to get someone to pay for,"* the agent-management seat it wants to sell has **no price precedent anywhere on earth**, and per-run metering is a pillar the evidence forbids putting a number on. If it somehow prices, it dies at **DEFEND**, because its only real moat — governing agents the MSP built *elsewhere* — is Nicole's own unspecced BIG QUESTION, a "governor-of-all-agents" position that requires being trusted enough to sit in everyone's critical path while admitting you *can't actually pre-screen what passes through*. And underneath both: a governance product whose safety depends on correct configuration, sold to an operator nobody has ever watched configure anything, promoted to autonomy by a criterion that doesn't exist yet. **B's most likely true identity is not a standalone offering — it's the priced seat underneath A and C.** The two tests that would prove this — the G4 moat spec and a five-MSP standalone-WTP conversation — cost days and build nothing. **Run them before you call B a ship. They will most likely tell you it's the keel.**

*Grep-limited note: Bash/grep was denied this session; citations verified by direct Read of source files and one Explore sweep, not a raw grep. Stats surfaced: gated autonomy 5/5 transcripts + 13/17 Condens + 17/17 expect-control (offerings:57, blind-interviews:55); Shawn "won't pay" (offerings:62); Jonathan "recurring revenue generator" (offerings:60); agent-seat ARPU no precedent / per-run metering excluded (tam-control-plane:57–58,80); B-by-itself TAM ~$0.5–9.6B midpoint ~$3B [WOBBLY, single syndicated shop] (offerings:162, tam-control-plane:64); govern externally-built = audit-after no pre-screen, unspecced (why-nable-build-map:66, offerings:172); Action Proxy latency risk named (word-sketches:104); Coworker/Expert flat pre-registry tables (why-nable-build-map:65); N-central rule-based automation already exists (06-ncentral-automation-patterns.md). DO-NOT-CITE honored: $33,600/mo excluded; EU AI Act specifics tagged [CS: LOW — outside training window], not asserted as fact. All probabilities in the required-gate math are [A] murder-board estimates, tagged in the JSON.*
