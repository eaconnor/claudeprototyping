# IDEA CHESS — Offering C · Live IR / RCA (Incident Response Root-Cause Analysis)

**Opening move. Job: find the losing line.** This is adversarial. Nothing here defends C. Where evidence exists, it's cited and tagged; where I'm estimating, it says so. Grounded against `briefs/acp-offerings-2026-07-14.md`, `briefs/acp-vision-synthesis-2026-07-14.md`, `briefs/council-mini-ir-rca.md`, `scout_input/02-adlumin-product.md`, `scout_input/01-huntress-product.md`, `scout_input/03-nable-adlumin-vs-huntress-compare.md`, `scout_input/05-internal-adlumin-vs-huntress-battlecard.md`, `scout_input/acp-tam-grounding.md`, and the `acp-core-main-3` build read (`specs/004-ai-coworker-registry/spec.md`, `Intent Specs/FSN-83143`).

**The one-line indictment:** C's wedge is "the RCA gets built *DURING* the incident, cross-stack, defensible by morning." But (a) the build already ships an "Incident Response Analyst" card scoped to *"root cause analysis on tickets and device events"* — post-hoc, single-source, not live cross-stack — so C's own platform is building the fallback, not the wedge; (b) the one capability that makes C credible (Signal→Story forensic narration) is, per N-able's *own internal threat team*, the thing **Huntress is better at today**; and (c) the entire evidence chain rides on Gate C (can Adlumin data even reach an ACP coworker?) which is **UNCONFIRMED**. C is being sold at 2am adrenaline pitch on a data pipe nobody has confirmed exists, into a narrative-quality contest N-able is currently losing.

**A discipline note that changes everything downstream:** C's demand signal is *weaker* than A's on the one instrument that isn't the shared n=8. Survey value-rating is **3.13 — soft** (`acp-vision-synthesis-2026-07-14.md` line 53). The #2-qual (26) and #3-priority (4.00) come from the same 8 people whose enthusiasm ≠ willingness to trust an AI mid-breach. Do not let "#2 by demand" launder into "validated."

---

## 1. COUNCIL ADVERSARIAL PASS

Twelve traditions. Each: its **losing condition** (the evidence that proves C wrong) and its **single best shot** at challenging C. Sharp, cited, tagged.

### 1. Jobs-to-Be-Done (Christensen / Ulwick)
- **Losing condition:** The job isn't "write the RCA." It's *"get me out of liability ambiguity and keep my expert identity intact in front of client + insurer."* If C optimizes for factual completeness (functional job) but a wrong-confident root cause fires it permanently at the client/insurer step, the hire fails on the two jobs that actually matter.
- **Best shot:** The mini-council already found this: *"a wrong root cause narrated confidently destroys both [emotional + social jobs] in one sentence"* [CS: VERIFIED — council-mini-ir-rca Voice 1]. **DURING the incident is the worst possible moment to be confidently wrong** — the facts are still moving, and C is racing to publish before they've settled. The wedge (speed) directly amplifies the kill risk (premature certainty). No respondent named the emotional/social job explicitly — it's inferred [?].

### 2. Kano
- **Losing condition:** Confidence display and calibrated uncertainty are **threshold (must-be) attributes** — absent or binary, the output is unsendable regardless of accuracy. Their presence doesn't delight; their absence is negligence.
- **Best shot:** For a *live* RCA, calibrated confidence is harder than for a post-hoc one — mid-incident you have partial telemetry and must say "I don't know yet" credibly. The mini-council names confidence display as the load-bearing requirement [CS: VERIFIED — council-mini-ir-rca Voice 2], but flags it's a *design-team inference, not a respondent quote* [WOBBLY]. If C ships a live RCA that reads at 90% confidence on 40%-complete telemetry, it fails the threshold test in the highest-stakes moment there is.

### 3. Self-Determination Theory (competence / autonomy / relatedness)
- **Losing condition:** A system that narrates at 100% when it's 60% certain removes the tech's judgment at exactly the review gate that's supposed to protect them. If confidence is a tech-only internal flag not carried to the review moment, the gate becomes theater.
- **Best shot:** The autonomy threat is *sharper* under incident-time pressure. SDT says a tech who signs off on a confident wrong root cause "feels incompetent — the agent made them look bad" [CS: MEDIUM — council-mini-ir-rca Voice 3]. At 2am, adrenaline high, the tech is *most* likely to defer to the machine and *least* able to exercise the judgment the design assumes. C's speed pitch and its autonomy-preservation requirement are in direct conflict.

### 4. Service Blueprint (Shostack / Bitner) — the backstage fiction
- **Losing condition:** The frontstage promise ("correlated across the whole stack in real time") requires a backstage evidence-ingest pipeline. If Adlumin is a separate lane, **the evidence chain breaks before the agent can construct a timeline** — the service fails at the line of visibility.
- **Best shot:** This is C's version of A's H2. The mini-council names it flat: *"The Adlumin data-ingest and normalization pipeline that populates the evidence links — if Adlumin is a separate lane, the evidence chain breaks"* [CS: VERIFIED — council-mini-ir-rca Voice 4/5]. Plus a *three-audience* split C hasn't scoped: the tech (fixing), the MSP advisor (presenting), and now a **fourth reader the offering itself names — the insurer/auditor** — who has evidentiary standards no font-toggle satisfies.

### 5. Value Chain (Porter) — the chokepoint is the log, not the narrative
- **Losing condition:** Whoever owns the incident telemetry owns the agent's margin. If C must pull from a rival SIEM (SentinelOne, Rapid7, Proofpoint — the actual MSP stack), N-able controls no chokepoint and is at the mercy of competitors' API terms.
- **Best shot:** *"If N-able does not own the log, N-able is a narrator for someone else's data and cannot protect margin"* [CS: VERIFIED — council-mini-ir-rca Voice 5]. C's superpower is "Adlumin real first-party telemetry" — but that only holds **for incidents inside Adlumin-monitored estates.** The moment the incident touches a non-Adlumin control (the client's own firewall, a third-party EDR), C is reaching through brittle competitor APIs — the same egress problem A has in H2, and here the vendors are *security competitors* with active incentive to throttle.

### 6. Christensen — Disruption / Commoditization
- **Losing condition:** If Huntress/Blackpoint/CrowdStrike fold live-RCA narration into their existing managed-SIEM/MDR (where they already own the telemetry and the SOC), C is commoditized before it monetizes — and they have *more* incident data than Adlumin alone.
- **Best shot:** Huntress' Managed SIEM already advertises a *"24/7 AI-Assisted, human-led SOC [that] writes/tunes detections, triages, investigates, delivers incident reports"* [CS: HIGH — scout 01]. That is the offering. The incumbents aren't a future threat — **they ship the adjacent product now**, with the telemetry ownership C lacks off-Adlumin. C is a sustaining feature for an MDR, and the MDR vendors are better positioned to add it than N-able is to compete on it.

### 7. Porter — Five Forces
- **Losing condition:** High buyer power (per-incident pricing is churny, low lock-in) + high substitute threat (Huntress SOC delivers the report; DIY correlation) + high supplier power (Adlumin gates the data internally; rival SIEMs gate it externally) = no defensible margin.
- **Best shot:** Three of five forces are red. The *only* favorable force is first-party Adlumin telemetry as a rivalry moat — and it's (a) unconfirmed as accessible to ACP (Gate C) and (b) narrower than the cross-stack claim, because it stops at the Adlumin estate boundary.

### 8. Wardley Mapping (evolution)
- **Losing condition:** If "AI-narrated incident report" is evolving toward product/commodity faster than N-able can build the genesis-stage cross-stack correlation, N-able invests custom-build effort where the market will get it bundled.
- **Best shot:** LLM incident-narration is *already product-stage* (Huntress ships it). The only genesis/custom component is **live cross-stack correlation during the incident** — rated ~30% [?, P1] in the offering's own risk register. C's map puts effort into the narration layer (commoditizing) and hand-waves the correlation layer (the actual hard, unbuilt part). Building on the wrong evolutionary stage — same error the board flagged for A.

### 9. Lean — Riskiest-Assumption Test
- **Losing condition:** The RAT is not "do MSPs want RCA" (answered, mixed-soft). It's *"can Adlumin's structured incident data flow to an ACP coworker at all (Gate C), and will an MSP trust an AI mid-incident enough to USE it during rather than after."* Both unowned.
- **Best shot:** The mini-council is explicit: *"The riskiest assumption is not confidence display. It is that the evidence chain exists... Test assumption 1 [Gate C] before any design work"* [CS: VERIFIED — council-mini-ir-rca Voice 7]. If Gate C returns "separate lane," C *"shrinks to a structured-text synthesizer over free-form incident notes (low value)"* — which, notably, **is exactly the card the build already shipped.** C is being specced as a leap over its own riskiest, untested, gating assumption.

### 10. Doblin — Ten Types of Innovation
- **Losing condition:** If C innovates only on *Product Performance* (faster/better report) it's the single most copyable type. Defensibility needs Profit Model, Network, or Product System innovation too.
- **Best shot:** C's only defensible type is *Product System* (Adlumin first-party telemetry feeding the coworker) — unconfirmed (Gate C). The *Profit Model* (per-incident / % of SOC) is unproven (n=2 named, both Guidepoint). The narration is *Product Performance* — Huntress already has it. One-and-a-half types, and the half is a maybe.

### 11. Regulatory / Liability + Evidentiary Admissibility
- **Losing condition:** If an AI-generated RCA is *relied upon* by an insurer to pay (or deny) a claim, or enters litigation/regulatory proceedings, and it's wrong or its provenance is challenged, liability lands on the MSP and plausibly N-able as tool provider. The offering *explicitly* positions the artifact as "the artifact the insurer requires" — which walks it straight into the reliance chain by design.
- **Best shot:** A QBR that's wrong loses an account (A's H1). **An IR/RCA that's wrong loses a claim, or gets an MSP sued.** The offering makes reliance a *feature* ("defensible by morning, the artifact the insurer requires") without scoping whether AI-authored incident forensics are admissible, discoverable, or acceptable to insurers as-is. EU AI Act enforceable 2026-08-02; compliance owner across ACP is `<TBD>` [CS: VERIFIED — offerings doc]. C ships a legally-relied-upon forensic document with no admissibility scoping and no named compliance owner. This is C's deepest and most C-specific hole (see H1, H2).

### 12. The Competitive-Truth lens (N-able's own threat team)
- **Losing condition:** If the capability C is built to deliver is one N-able is *currently behind on*, C is asking the org to win a contest it's losing with a product that doesn't exist yet.
- **Best shot:** N-able's *internal* Adlumin-vs-Huntress battlecard says the real competitive gap is **Signal→Story, not Signal→Alert** — that Adlumin has the detections but is *"missing relative to Huntress: 'why this matters' narrative, persistence-focused clustering, attack-path explanation across events, customer-consumable forensic summaries"* [CS: HIGH that this is N-able's internal position — scout 05]. **That list is a near-verbatim description of Offering C's value prop.** C proposes to leapfrog, via an unbuilt AI coworker, the exact narrative/forensic layer N-able's own analysts admit is their weak spot today. The strongest possible objection to C comes from inside the house.

---

## 2. WHAT WE HAVEN'T THOUGHT ABOUT — the holes not on the list

*Most valuable section. None of these are in the pinned assumption list. Each gets a probability in the JSON (§3).*

### H1 — Admissibility / reliance-chain liability ("the AI wrote your incident report")
The pinned list flags "#1 on cyber-insurance policies" as *demand*. It never asks the inverse: **if the AI-authored RCA is wrong and an insurer denies a claim on it — or a court relies on it — who is liable?** The offering *designs for reliance* ("the artifact the insurer requires," "defensible by morning"). That makes C fundamentally different from every other offering: its output is intended to be *relied upon by a third party in an adversarial financial/legal context.* Questions unasked: Is an AI-generated forensic timeline **admissible**? **Discoverable** (does the model's reasoning become evidence)? Will insurers **accept** AI-authored RCAs, or require a human forensic examiner's sign-off (making C an input, not the artifact)? Is there a **spoliation** risk if the AI's correlation drops or alters evidence? `[?]` — unexamined, and potentially fatal to the headline value prop. This is C's H2-equivalent-but-worse: A's wrong number loses an account; C's wrong RCA loses a *claim*.

### H2 — Gate C: can Adlumin data legally + technically reach an ACP coworker, across tenants?
This IS on the pinned list, but it's under-weighted as "unconfirmed." Escalate it to **the existence question.** Two layers stack: (a) *technical* — is Adlumin a separate product lane whose incident data model isn't exposed to ACP coworkers (mini-council Voice 7 [CS: VERIFIED unknown])? (b) *legal* — Adlumin is monitoring the MSP's *clients'* estates; piping that incident telemetry into a *different* N-able product (ACP) for a *different* purpose (report generation) is a **cross-purpose, cross-tenant data-use question** with DPA/consent implications the offering hasn't touched. If either layer says no, C collapses to the ticket-and-device-event synthesizer the build already has. `[?]` — the single load-bearing unknown.

### H3 — The 2am reliability / uptime bar
Nobody has scoped the **operational SLA for a coworker that runs DURING an active incident.** A QBR coworker can be down for an hour — you reschedule. An IR/RCA coworker that's supposed to correlate *as the breach unfolds* must be up, fast, and correct at **the worst possible moment**, often at 2–4am, often while the estate itself (network, identity, endpoints) is degraded *by the incident C is analyzing.* If the ransomware took down the same telemetry pipe C reads from, C is blind exactly when it's promised to see. No uptime target, no degraded-mode design, no "what C does when its own data source is compromised" — all unscoped. `[?]` — operational, unmodeled, and structurally nasty (the failure is correlated with the event C exists to handle).

### H4 — Does an MSP trust an AI mid-incident? (the adrenaline problem)
The North Star assumes ~50% of MSPs use C *during* the incident, not after [?, behavior untested — pinned]. But the pinned list treats this as a usage-rate estimate, not a *behavioral hypothesis about human decision-making under acute stress.* Mid-incident, a senior tech is in fight-or-flight: do they (a) trust an AI's live correlation and act on it, or (b) fall back to the senior human's judgment and *ignore the tool until the fire's out*? If (b), C is a **post-hoc report generator wearing a "live" badge** — which is the build's existing card, and destroys the wedge. Incident-response culture is deeply human-trust-based (you trust the on-call engineer you know). No evidence any MSP will hand live incident reasoning to an AI. `[?]` — the wedge's behavioral load-bearing assumption, untested.

### H5 — Alert-to-RCA false-trigger cost (the boy-who-cried-wolf failure)
For C to run "AS the incident unfolds," something must **decide an incident is happening** and trigger the RCA. Alerts are noisy (this is literally why "Alert Flood Suppressor" is a sibling default). If C fires an RCA on a false positive, it (a) burns LLM cost, (b) creates a "we had an incident" artifact that may itself be discoverable/reportable, and (c) trains the MSP to ignore C's triggers — the exact failure mode that kills alerting tools. If C *waits* for human confirmation before triggering, it's no longer "during the incident" for the early phase where speed matters most. The trigger logic is a genuine dilemma the offering hasn't named. `[?]` — unmodeled.

### H6 — The competitor already ships it (Huntress / Blackpoint)
Escalated from §1.6/§1.12 to a named fatal position. **Huntress Managed SIEM: 24/7 AI-assisted human-led SOC that "delivers incident reports"** [CS: HIGH — scout 01]. **Blackpoint: "Active Defense" MDR** — N-able's own battlecard positions Adlumin as *Blackpoint-style* [CS: MEDIUM — scout 05], i.e. Blackpoint owns this posture. Both own the telemetry and the SOC labor. C's differentiator is "cross-stack + during + AI-authored" — but a managed SOC that already sees the whole monitored estate and staffs humans 24/7 delivers a *human-defensible* incident report today, which is strictly safer for the liability job (H1) than an AI-authored one. **C isn't entering white space; it's entering the incumbents' core competency from behind, on the narrative axis N-able's own team says it's losing.** `[R]` competitor capability, `[A]` competitive-response modeling.

### H7 — LLM COGS per incident + unbounded incident length
A's H8 (COGS) applies here and is *worse.* A QBR is a bounded, quarterly, predictable generation. An incident is **unbounded** — it can run hours to days, generate continuous correlation over a live-updating telemetry stream, and re-generate the RCA repeatedly as facts change. Priced "per incident," a single major breach could produce enormous large-context token spend with no ceiling, while the per-incident fee is fixed. **The unit that's billed (one incident) and the unit that costs (continuous correlation over incident duration) are decoupled — and a bad breach is exactly when both spike.** `[?]` — unit economics unmodeled, and the pricing model may invert margin on precisely the incidents that matter most.

### H8 — The build already contradicts the offering
Not a market hole — an *internal-coherence* hole. The build's default card (DEC-006, ratified by Nicole Reineke) is **"Incident Response Analyst — Root cause analysis on tickets and device events; diagnose and remediate"** (`FSN-83143`, `specs/004`). That is: **post-hoc, single-to-few-source, ticket/device-scoped.** Offering C's pitch is **live, cross-whole-stack, during the incident.** These are different products. The build is shipping the *fallback* C's own mini-council warned about (Voice 7: "shrinks to a structured-text synthesizer"). So either (a) the offering is over-claiming relative to what's specced, or (b) the build is under-scoping relative to the offering — and nobody has reconciled them. **C's spec would have to argue *against* the platform's own ratified default.** `[CS: VERIFIED — build read]`.

### H9 — Adlumin already "does RCA" — is C redundant with the superpower it rides?
Adlumin markets *"audit-ready case files,"* *"self-service access to underlying investigation data,"* SOAR playbooks, and threat hunting [CS: LOW/MEDIUM — vendor, scout 02/03]. The MDR *already produces* investigation artifacts. So C's actual net-new isn't "an incident report exists" — Adlumin makes one. C's net-new is "a *client/insurer-formatted, cross-stack, MSP-brandable* report on top of it." That's a **thin narration layer over Adlumin's existing case file** — which (a) shrinks C's real value to a formatting/translation job and (b) invites the same "why isn't this just an Adlumin feature?" cannibalization question A faced (H7). If C is a report skin on Adlumin's case file, it doesn't need ACP's whole coworker apparatus, and Adlumin's team may build it first. `[?]` — redundancy/cannibalization, unexamined.

### H10 — Demand is soft where it's independent, and untested for the mechanism
C's "#2 by demand" rests on the shared n=8 qual (26 cumulative). The one *independent* instrument (n=39 survey) rates C's **value at 3.13 — soft** (`acp-vision-synthesis` line 53), even while ranking it #3 priority (4.00). Read honestly: **when you ask people how much they'd value it rather than how they'd rank it, the enthusiasm drops.** And as with A's H10, all of it measured desire for *the outcome* ("a fast defensible RCA"), never for *the mechanism* ("an AI correlates and drafts it live, you approve"). Destination-demand, softening under independent measurement, untested for solution-fit. `[D/R, mixed]`.

### H11 — Multi-tenant approval authority during a time-critical event
The build has 5 open approval-model questions (OQ-001..005), including whether approval cascades to the end-customer admin in multi-tenant [CS: VERIFIED — findings JSON / A's H11]. C inherits all of them **under time pressure.** Autonomy is "read + write-with-approval (8/8 universal)." But *who approves, at 2am, when the RCA needs to go to the insurer by morning*? If the approving human is asleep or the authority cascade is unresolved, the write-with-approval gate becomes a bottleneck at exactly the moment C promises speed — or gets skipped, voiding the liability protection (SDT / Voice 3). `[?]` — governance-timing conflict, unowned.

---

## 4. MONTE CARLO READ

*(§3 assumptions JSON is the companion file `idea-chess-offering-c.assumptions.json`.)*

**Naive survival = product of REQUIRED probabilities.** The `required: true` assumptions (C cannot survive without each):

| id | label | p |
|---|---|---|
| C-GATE | Gate C: Adlumin incident data reaches an ACP coworker (tech + legal, cross-tenant) | 0.40 |
| C-CORR | Zero-holes cross-stack correlation at scale, during the incident | 0.30 |
| C-LIVE | MSPs actually USE it DURING, not after (the wedge) | 0.45 |
| C-TRUST | MSP trusts an AI mid-incident enough to act (adrenaline problem) | 0.45 |
| C-LIABLE | AI-authored RCA is admissible / insurer-acceptable / non-catastrophic-liability | 0.45 |
| C-SOLN | Demand is for THIS mechanism (live AI RCA), not just the destination | 0.50 |

**Naive product:** 0.40 × 0.30 × 0.45 × 0.45 × 0.45 × 0.50 ≈ **0.0055 → ~0.5%.**

Read honestly: **as an independent product of required gates, C as currently framed is a near-certain sink — marginally worse than A (~0.6%).** The number's job isn't doom; it's to show C is a *stack of unowned, load-bearing unknowns*, and several are binary and upstream. C has a *softer* demand signal than A and a *harder* set of gates (a live data pipe, live correlation, mid-crisis human trust, and third-party legal reliance). The naive math punishes that stack correctly.

**Independence caveat (honest):** These are NOT independent. They cluster into **three knots:**
- **The data knot [C-GATE + C-CORR]** — if Gate C returns "Adlumin lane exposed to ACP," correlation quality improves too (you have the structured signal). If it returns "separate lane," *both* collapse together and C becomes the build's existing ticket-synthesizer card.
- **The trust/behavior knot [C-LIVE + C-TRUST + C-SOLN]** — whether MSPs use it during, trust it enough to act, and want *this mechanism* are the same behavioral question measured three ways. One good operator study moves all three.
- **The liability knot [C-LIABLE + H1 + H3]** — admissibility, uptime-at-2am, and false-trigger cost all feed the "is this safe to rely on when it matters" question. One legal + reliability scoping pass moves the cluster.

So true survival is higher than 0.5%, but the *structure* is real: **untangle the data knot first, because it's binary and upstream of everything.**

### Sensitivity ranking — which single failure kills the most scenarios

1. **C-GATE — Adlumin data access (technical + legal, cross-tenant).** *Test first.* If Adlumin can't feed an ACP coworker, there is no cross-stack correlation, no live evidence chain, and C degrades to the ticket-synthesizer already in the build. **Highest scenario-kill count — it's upstream of the correlation, the narrative, and the whole "first-party telemetry" why-n-able claim.** → *Test: internal Adlumin-eng + legal review — is the incident data model exposed to ACP, and is cross-product / cross-tenant use permitted under existing client DPAs? Cheapest, most decisive, requires zero build.*
2. **C-LIABLE / H1 — admissibility + reliance-chain liability.** Binary and potentially fatal to the *headline* value prop ("the artifact the insurer requires"). If insurers won't accept AI-authored RCAs without a human forensic sign-off, C is an *input to* a human's report, not the artifact — a smaller, different product. → *Test: legal scoping + 2–3 cyber-insurer conversations — will you accept an AI-generated RCA as the reliance document, or require a licensed examiner's attestation?*
3. **C-TRUST / C-LIVE — mid-incident behavior.** The wedge is "during." If MSPs default to human judgment under stress and use C only after, the differentiation evaporates. → *Test: contextual inquiry with 3–5 MSPs on their actual current IR workflow (the mini-council's shared blind spot — nobody observed real IR practice), then a wizard-of-oz live-RCA session under simulated incident pressure.*
4. **C-CORR — cross-stack correlation at scale.** Even with data access, "zero-holes" during a live, degraded-estate event is a genuine hard problem (~30% in the offering's own register). → *Test: replay 3 historical multi-source incidents, measure correlation completeness + false-linkage rate.*

**The first test is not about RCA demand — it's the C-GATE internal data/legal read and the C-LIABLE insurer-acceptability read.** Both are days, not quarters, and neither requires building anything. This mirrors A exactly: C's two most-likely killers are also its two cheapest tests.

---

## 5. OREGON TRAIL — where C dies, by stage

**BUILD → LAUNCH → ADOPT → DEFEND.** The river crossings, in order:

### BUILD
- **Ford 1 — Gate C (C-GATE).** Can Adlumin's incident data reach an ACP coworker, technically and legally, across tenants? **This is where C most likely dies, and it dies before a single screen is designed.** The mini-council said it outright: test this before any design work. If the answer is "separate lane," the wagon never leaves — C becomes the ticket-synthesizer already parked in the build.
- **Ford 2 — Cross-stack correlation (C-CORR).** Even with the data, "zero-holes, during the incident, at scale" is genesis-stage. The narration layer is a shallow creek (Huntress ships it); the *live correlation* is the wide unbridged river.
- **Ford 3 — Build-vs-offering reconciliation (H8).** The specced default card ("RCA on tickets and device events") contradicts the offering ("live cross-stack"). Before C can be built, someone must decide which product it is — and argue against Nicole's ratified DEC-006 default if it's the ambitious one.

### LAUNCH
- **Ford 4 — Admissibility / insurer acceptance (C-LIABLE, H1).** EU AI Act live 2026-08-02, compliance owner `<TBD>`. Launching an AI-authored document *designed to be relied upon by insurers and auditors* with no admissibility scoping is fording at flood stage with the wagon full.
- **Ford 5 — 2am reliability bar (H3).** Launch requires an incident-grade SLA and a degraded-mode design (what C does when the incident took down its own telemetry). No such design exists.
- **Ford 6 — Pricing / COGS (H7).** Per-incident price against unbounded per-incident LLM cost. Cross before you launch or you lose money on the worst breaches.

### ADOPT
- **Ford 7 — Mid-incident trust (C-TRUST, C-LIVE, H4).** The buyer signed; now the senior tech, at 2am, adrenaline high, must *choose to trust the AI's live correlation and act on it* rather than fall back to human judgment. This is the **second most likely death** and the more insidious one — it happens as *silent non-use during incidents*, where the tool is bought and then quietly bypassed exactly when it's supposed to shine. The metric (North Star ~50% use-during) is a hope, not a finding.
- **Ford 8 — False-trigger erosion (H5).** Enough false-positive RCA triggers and the MSP mutes C, killing the "live" premise.

### DEFEND
- **Ford 9 — Incumbent + house-team gap (H6, §1.12).** Even a fully-adopted C faces Huntress/Blackpoint shipping human-defensible incident reports from a position of telemetry ownership — on the *exact narrative/forensic axis N-able's own threat team says it's currently behind.*
- **Ford 10 — Adlumin cannibalization (H9).** Adlumin's "audit-ready case files" already exist; C risks being a report-skin the Adlumin team could absorb, triggering internal channel conflict.

### Verdict — the stage C most likely dies
**C dies at BUILD (Ford 1: Gate C data access), and if it survives that, it dies at LAUNCH (Ford 4: admissibility/insurer acceptance) or ADOPT (Ford 7: mid-incident trust).**

BUILD is the most *probable* death because the evidence chain's existence is unconfirmed and the build has already hedged by shipping the fallback. LAUNCH is the most *distinctive* death — C is the only offering whose output is *designed to be relied upon by an adversarial third party (the insurer)*, which turns liability from a risk into a headline dependency. ADOPT is the most *insidious* — a tool bought for "during" that gets used "after," dressed as a win until the churn shows up.

**The mercy (same as A):** C's two most likely killers are also its two cheapest tests. The Gate C internal data/legal read and the insurer-acceptability conversations cost days, not quarters, and neither requires building anything. **Run those two before you spec the IR/RCA runbook. If Gate C fails, C already exists — it's the ticket-synthesizer card in the build, and it's not the offering you pitched.**

---

## READABLE ASSUMPTION TABLE (companion to §3 JSON)

| id | label | p | required | stage | evidence |
|---|---|---|---|---|---|
| C-GATE | Adlumin incident data reaches ACP coworker (tech + legal, cross-tenant) | 0.40 | ✔ | build | [?] CS:LOW — Gate C UNCONFIRMED; the load-bearing unknown |
| C-CORR | Zero-holes cross-stack correlation, during, at scale | 0.30 | ✔ | build | [?] ~30% P1 — offering's own risk register |
| C-LIVE | MSPs USE it during, not after (the wedge) | 0.45 | ✔ | adopt | [?] North Star ~50%, behavior untested |
| C-TRUST | MSP trusts AI mid-incident enough to act | 0.45 | ✔ | adopt | [A] — no evidence; adrenaline/human-trust culture |
| C-LIABLE | AI RCA admissible / insurer-acceptable / non-catastrophic | 0.45 | ✔ | launch | [?] — offering designs for reliance, never scoped |
| C-SOLN | Demand is for THIS mechanism, not just the destination | 0.50 | ✔ | adopt | [A] — all demand measured the outcome, not live-AI RCA |
| C-DEMAND | RCA demand exists (the destination) | 0.80 | ✘ | launch | [D/R mixed] #2 qual(26)/#3 survey(4.00); VALUE soft 3.13 |
| C-PAY | Per-incident / %-of-SOC WTP holds | 0.55 | ✘ | defend | [R] MEDIUM — Vikram 10–15% SOC, Jonathan per-incident, n=2 |
| C-EGRESS | Non-Adlumin stack correlation legally/contractually permitted | 0.40 | ✘ | build | [?] — same egress problem as A's H2; vendors are competitors |
| H1 | No account/claim-ending wrong-RCA or admissibility failure | 0.50 | ✘ | launch | [?] — reliance-chain liability, unexamined, C-specific |
| H3 | 2am reliability/uptime + degraded-mode design exists | 0.50 | ✘ | launch | [?] — SLA unscoped; failure correlated with the incident |
| H5 | Alert-to-RCA trigger doesn't false-fire into erosion | 0.55 | ✘ | adopt | [?] — trigger logic dilemma unnamed |
| H6 | Survives Huntress/Blackpoint who ship incident reports now | 0.45 | ✘ | defend | [R] competitor capability CS:HIGH; response [A] |
| H7 | Per-incident LLM COGS fits per-incident price on bad breaches | 0.45 | ✘ | build | [?] — billed unit ≠ cost unit; unbounded incident length |
| H8 | Build (ticket-RCA card) reconciles with offering (live cross-stack) | 0.50 | ✘ | build | [CS:VERIFIED] contradiction — DEC-006 vs offering pitch |
| H9 | Doesn't get absorbed as an Adlumin case-file feature | 0.55 | ✘ | defend | [?] — Adlumin already ships "audit-ready case files" |
| H11 | Multi-tenant approval authority resolvable under time pressure | 0.50 | ✘ | build | [?] — OQ-001..005 open, now with 2am timing conflict |

**Required gates (C cannot survive without):** C-GATE, C-CORR, C-LIVE, C-TRUST, C-LIABLE, C-SOLN. Naive product ≈ **0.5%** (independence caveat above).

---

## CHECKMATE, IN ONE PARAGRAPH

Offering C has a *softer, mixed* demand signal than A and a *harder* set of gates. Its wedge — "the RCA gets built DURING the incident, cross-stack, defensible by morning" — rides on a data pipe nobody has confirmed exists (Gate C, Adlumin-to-ACP, technically and legally across tenants), on a live cross-stack correlation the offering's own register rates at ~30%, into a narrative/forensic quality contest **N-able's own threat team says it is currently losing to Huntress.** Worse, C is the one offering whose output is *designed to be relied upon by an adversarial third party* — the insurer — which converts liability from a background risk into a headline dependency nobody has scoped for admissibility. And the platform already reveals the tell: the build ships an "Incident Response Analyst" card scoped to *"RCA on tickets and device events"* — post-hoc, single-source — which is precisely the fallback C's own mini-council warned it would collapse into if Gate C fails. Six required assumptions, mostly unowned and several binary, multiply to a ~0.5% naive sink. **C does not have a demand problem so much as an existence problem: the wedge depends on a data pipe, a mid-crisis trust behavior, and a legal-reliance acceptance that are all unconfirmed — and its two most-likely killers (Gate C data access, insurer admissibility) are also its two cheapest tests. Run those two before you spec the runbook. If Gate C fails, C already exists in the build, and it isn't the offering that was pitched.**

*Grep-verified stats (47% rule): IR RCA #2 qual cumulative (26) · #3 survey priority (4.00) · survey VALUE 3.13 soft (acp-vision-synthesis line 53) · both qual cuts = same n=8 · build default card "Incident Response Analyst — RCA on tickets and device events" (FSN-83143 / specs/004, DEC-006, Nicole Reineke) · Gate C UNCONFIRMED (offerings build-state map line 136; mini-council Voice 7) · Adlumin "70%+ autonomous mitigation" (scout 02, vendor) vs "SOC 90%" (RSAC 2026, separate claim) — do not conflate · N-able internal battlecard: competitive gap is Signal→Story / "customer-consumable forensic summaries," Huntress ahead (scout 05) · Huntress Managed SIEM "delivers incident reports" (scout 01) · EU AI Act 2026-08-02, compliance owner <TBD> (offerings doc) · MDR TAM ~$4–6B 2026, ~17–23% CAGR (acp-tam-grounding §5). All probabilities in required-gate math are [A] estimates by the board, tagged in JSON. Money quotes (Vikram 10–15% SOC, Jonathan per-incident) single-source Guidepoint, n=2 — directional, not projectable.*
