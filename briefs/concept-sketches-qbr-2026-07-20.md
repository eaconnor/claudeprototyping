# ACP — Packaged Concept Sketches, ranked by survival
**Date:** 2026-07-20
**Status:** Concept stimulus — not spec-ready
**Unit:** the **package** (a thing an MSP buys and N-able sells), not the coworker
**Ranking axis:** Idea Chess survival — naive win-rate floor + where it dies + the lever that moves it
**Sources:** [idea-chess-fleet-synthesis-2026-07-14.md](idea-chess-fleet-synthesis-2026-07-14.md) · [idea-chess-five-to-build-2026-07-15.md](idea-chess-five-to-build-2026-07-15.md) · [acp-word-sketches-four-complete-2026-07-15.md](acp-word-sketches-four-complete-2026-07-15.md) · [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md) · per-offering Idea Chess passes

---

## READ FIRST — what this pass fixes

The prior version sketched **coworkers** ranked by **demand**. That's the wrong unit and the wrong axis. The real concept is the **package** — QBR-the-coworker isn't what an MSP buys; *Client-Facing Proof* is. And demand isn't what decides it — **survival against Idea Chess** is, because the strongest-demand offering in the whole set (Client-Facing Proof) is also one of the lowest-surviving until you move a specific lever.

So: **five packaged concepts, ordered by their Idea Chess win-rate**, each carrying where it dies and the one lever that changes the odds — plus fragments worth keeping.

**Two honest cautions on the numbers, up front:**
1. **Naive floor ≠ forecast.** Each survival % is the product of the *required* assumptions under an independence assumption. It punishes assumption-*stacks* brutally and is optimistic where failures correlate. Treat every number as directional, and read the **lever** column, not the decimal.
2. **Survival rank ≠ build priority.** The lowest-floor package (Branch A cross-vendor, ~0.43%) is the *most winnable* one per the fleet synthesis — because its two killers can be bought/partnered rather than built. A number this framework produces is a pointer to the cheapest decisive test, not a verdict.

---

## THE BOARD — every packaged concept, by survival

| # | Package | Naive floor | Where it dies (Oregon Trail stage) | The lever | Verdict |
|---|---|---|---|---|---|
| **1** | **vCIO/vCISO Advisory Package (flat-fee)** | **~14%** | Stage 3 — needs QBR quality underneath | flat-fee pricing (revenue-share = ~0.02%) | **HOLD — run positioning test first** |
| **2** | **Ticket Triage On-Ramp** | ~1.2%* | Defend — commoditized, "free in RMM" | instrument the conversion funnel | **On-ramp, not standalone** |
| **3** | **Client-Facing Proof — N-able Native (Branch B)** | ~0.9% | Adopt — mixed-stack MSPs see it as incomplete | scope honestly to N-able stacks | **Priority hold — near-term lead** |
| **4** | **Live IR/RCA Security Package** | ~0.55% | Build — the evidence chain may not exist | answer Gate C (Adlumin access) | **Conditional second** |
| **5** | **Client-Facing Proof — Cross-Vendor (Branch A)** | ~0.43–0.64% | Build — normalization + data-egress wall | **BUY normalization · PARTNER past egress** | **Biggest prize; most winnable *with* the lever** |
| — | Governed Agent Control Plane | ~0.35% | Defend — nobody pays for governance alone | price it as the seat under 1–5 | **Platform layer, not a sale** |
| — | Cross-Tool Reconciliation | ~0.34% | Gate-0 — "is it even ours to build" | one discovery interview | **Fragment → discovery spike** |
| — | Defensibility Layer (standalone) | ~0.28% | Stage 2 — no standalone WTP | embed it as trust architecture | **Fragment → feature of every package** |
| — | vCISO/vCIO (revenue-share) | ~0.02% | Stage 4 — the billing-disclosure question | (this is the version the lever kills) | **Closed — the counter-move exists** |

*\*Triage's ~1.2% is the highest coworker-offering floor **only because the commodity half is already built**; the differentiating wedge (live diagnostics) is uninstrumented and untested, so the honest survival of the *differentiated* offering is lower. See Package 2.*

**Independence caveat (fleet-wide):** correlated failures (legal hostile to normalization *and* to defensibility tiering at once) make every floor above optimistic. Read as directional, not as forecasts. [idea-chess-fleet-synthesis-2026-07-14.md](idea-chess-fleet-synthesis-2026-07-14.md).

---
---

# THE FIVE PACKAGES

---

## PACKAGE 1 — vCIO / vCISO Advisory Package *(flat-fee)* · **~14% — highest survival in the corpus**

Not a coworker — the **positioning layer** that resells the proof coworkers as two productized advisory services: **vCIO** (QBR + Env Health + roadmap/planning) and **vCISO** (IR RCA + Tabletop + Alert Flood + identity). Tests whether MSPs will buy-and-resell a *packaged service* — and whether N-able can price it as a flat fee by practice size rather than per tool. This is the only path to the share-of-services ceiling, and the flat-fee framing is the single move that lifts it from near-dead to the most survivable bet on the board.

**Idea Chess survival:** ~14% naive (flat-fee) vs. **~0.02% (revenue-share)** — a 700× swing on one pricing decision. Dies at **Stage 3** (it can't ship before QBR quality exists underneath it). **Lever:** flat-fee by advisory-practice size — "how big is your practice?" is answerable at onboarding; "what do you charge each client?" (revenue-share) dead-ends the buyer's decision tree before value is discussed. **Dodges** death-pattern #4 (no line-item WTP): flat-fee has PSA/channel precedent; revenue-share has none. [acp-word-sketches-four-complete-2026-07-15.md](acp-word-sketches-four-complete-2026-07-15.md), Sketch 4.

**1. Problem / wicked bit:** MSPs want to expand from break-fix into advisory (vCISO/vCIO) but have the domain knowledge with no scalable proof layer, and no way to productize the engagement instead of billing hours. The industry has no AI-powered advisory-services *package* for the MSP channel — and per-tool pricing caps the market at the floor while the practice-based ceiling stays unreachable because the billing mechanism doesn't exist.

**2. Tension (Kolko):** MSPs are trying to sell advisory practices, but N-able's tooling is priced and packaged as tools — and no billing mechanism for practice-based pricing exists anywhere in the N-able stack today.

**3. How Might We:** How might we package the coworkers so MSPs sell a productized advisory *service* to their clients — priced by the value of the practice, not the cost of the tools?

**4. Value prop (Moore):** For MSPs building vCISO/vCIO practices, the N-able Advisory Package bundles the proof-layer coworkers into a recurring advisory retainer, priced as a flat fee by practice size. Unlike per-tool MSP AI subscriptions, it's sold as a service and grows when the MSP's practice grows.

**5. TAM:** Offering-level, and the point: per-tool floor **~$1B** vs. share-of-services ceiling **~$4.3B** — the spread *is* the pricing decision [CS: MEDIUM — WOBBLY, [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md)]. `[0% Claude — pricing model belongs here]`

**6. Necessary functionality:**
- QBR Analyst at quality (prerequisite — Package 3/5)
- Bundle composition: which coworkers in the vCIO tier vs. the vCISO tier (product decision, unmade)
- Flat-fee billing by practice size (the counter-move) — *not* revenue-share
- MSP liability/contract language for an advisory-service context
- A positioning/message test (resell a package vs. only individual coworkers)

**7. Evidence:**
- [CS: HIGH] **vCISO/vCIO named the highest-value use case in Guidepoint; the frame every coworker's commercial story leans on.** [vcio-vciso-industry-practice.md](../scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md).
  *Why relevant:* QBR is the recurring vCIO ritual; IR RCA + Tabletop are vCISO deliverables. The package is where the coworkers become a sellable line rather than a tool cost.
- [CS: LOW] **Flat-fee ~14% vs. revenue-share ~2.8% (gate) / ~0.02% (naive) — model output from assumption-probability shifts, not market data.** [acp-word-sketches-four-complete-2026-07-15.md](acp-word-sketches-four-complete-2026-07-15.md), Sketch 4.
  *Why relevant:* The billing mechanism is the survival driver. This is the concept whose odds are set almost entirely by one human pricing call.
- [CS: VERIFIED] **The positioning test is nearly free; the billing mechanism is genuinely new plumbing (multi-quarter). Don't prototype billing before the positioning test lands.** [idea-chess-five-to-build-2026-07-15.md](idea-chess-five-to-build-2026-07-15.md).
  *Why relevant:* Sequencing guard. Prototype the packaging-and-pricing *story* (days), not a working billing system (quarters).
- [CS: MEDIUM — WOBBLY vendor] **MSPs offering vCISO more than tripled (21%→67% YoY); 81% already use AI/automation.** Cynomi "State of the vCISO" (n=200, vendor-sponsored). *(Market-size dollar figures are not citable as fact.)*
  *Why relevant:* Directional tailwind — the practice MSPs are rushing into is the one this package equips.
- Strength: **strong on advisory demand · unverified on pricing mechanism · thin on billing feasibility.**

**8. Riskiest assumption:** The billing mechanism clears PSA/channel norms — MSPs accept N-able-determined pricing tied to their practice rather than per-tool/per-seat [P≈0.45 flat-fee; P≈0.20 revenue-share]. Refuting: no channel precedent for revenue-share; billing infrastructure doesn't exist in any N-able system today.

**9. N-able superpower:** Channel position — existing MSP relationships and PSA integrations make N-able the incumbent distribution layer for advisory services. No AI-native competitor (Cynomi et al.) has it. The moat is the channel, not the AI.

**10. The bet:** [0% Claude — fill this in]

---

## PACKAGE 2 — Ticket Triage On-Ramp · **~1.2% — but the number is inflated**

The day-1 coworker: classifies, routes, and runs safe diagnostics on arrival, so a junior tech starts from a diagnosis, not "FW: can you sort." Tests whether live diagnostics — not classification — are the real wedge, and whether the daily-frequency pain converts an MSP up into a Proof or Advisory package. **Its survival floor is the highest of the coworker offerings, but only because the commodity half is already built.**

**Idea Chess survival:** ~1.2% naive — top of the coworker offerings *because it's the one thing shipped*. Dies at **Defend** (commoditized: "build it into the RMM" caps WTP; PSA bundles classification free). **Lever:** instrument the conversion funnel (triage → trial → package) — currently **zero events tracked** — and bench-test the diagnostic delta vs. incumbents. **Exposed to** death-pattern #3 (commoditization) and #6 (built the substrate, not the demanded wedge): the differentiating live-diagnostics capability is uninstrumented and untested, so the honest survival of the *differentiated* offering is below the 1.2% the built-commodity floor reports. [idea-chess-five-to-build-2026-07-15.md](idea-chess-five-to-build-2026-07-15.md).

**1. Problem / wicked bit:** Every ticket starts cold — the tech re-gathers context the stack already knows. Classification/routing is a commodity the PSA bundles free; the unsolved part is *live diagnostics on arrival*, which no incumbent does because it needs endpoint access MSPs won't grant a new tool.

**2. Tension (Kolko):** Techs are trying to resolve tickets fast, but tickets arrive as context-free "FW: can you sort" emails, so the highest-frequency work carries the highest cumulative waste — and the tools that route tickets don't diagnose them.

**3. How Might We:** How might we have context, severity, and safe diagnostics already run when the tech opens the ticket — so the daily grind starts at "here's what's wrong," not "let me look"?

**4. Value prop (Moore):** For MSP service desks drowning in daily volume, Ticket Triage runs live diagnostics and surfaces likely root cause on arrival. Unlike Rewst/Thread/PIA-style classifiers, it diagnoses rather than just routes — with an explicit safe-auto / human-sign-off line.

**5. TAM:** On-ramp level; no independent sizing. Its commercial role is conversion into Packages 1/3/5 — and that funnel has zero instrumentation. `[?]`

**6. Necessary functionality:**
- Live diagnostics auto-run on arrival — the wedge (classification is table stakes)
- Severity + likely root cause at open
- Explicit safe-diagnostics-auto vs. human-sign-off line
- Conversion-funnel instrumentation (triage → trial → package purchase)
- Staged permission requests (trust-sequencing) for RMM/endpoint read access

**7. Evidence:**
- [CS: HIGH] **Highest qual intensity (8.3), most enthusiastic open-text — despite #6 forced-rank.** [Blind Interviews June 2026](../scout_input/acp-qbr-analyst/confluence-blind-interviews-study.md).
  *Why relevant:* Priority-rank undercounts daily-frequency pain; intensity says this is what people actually want to talk about. Real wedge energy — but wedge, not premium.
- [CS: VERIFIED] **The one coworker with a real spec, already built day-1 — but the built thing is the commodity half and the "converts up" story is uninstrumented.** [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md), build-state map.
  *Why relevant:* Cheapest de-risk in the set. Instrumenting the funnel is HIGH-doability (days) and answers the load-bearing "why lead with the #6 runbook" question — and the message-order risk (does leading with Triage anchor the platform as commodity).
- [CS: MEDIUM] **Derek: "max ~$300/mo" flat, per-tech; "build it into the RMM" caps WTP.** [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md).
  *Why relevant:* The commercial ceiling. If diagnostics-on-arrival isn't visibly more than classification, it's priced at $0 by expectation.
- Strength: **strong on enthusiasm · built but mis-aimed · conversion + diagnostic-delta untested.**

**8. Riskiest assumption:** MSPs draw the safe-auto / sign-off line where we do **and** the live-diagnostic delta vs. incumbents is real enough to escape "free in RMM" gravity. Refuting: day-1 scope is ticket read/write only; real diagnostics need endpoint access MSPs won't grant a new tool; diagnostic delta never bench-tested.

**9. N-able superpower:** The SOC 90%-auto-remediation corpus — the diagnostic intelligence that turns "here's the ticket" into "here's the likely cause and the safe check I already ran." A classifier is copyable; a diagnostic model trained on proprietary remediation telemetry is not.

**10. The bet:** [0% Claude — fill this in]

---

## PACKAGE 3 — Client-Facing Proof, N-able Native *(Branch B)* · **~0.9% — the near-term lead**

The QBR coworker + Value Ledger, scoped to MSPs with enough stack consolidation on N-able products (N-central + Cove + Adlumin) to make a first-party-only quarterly review meaningful. Same wicked problem as the cross-vendor version — client-ready proof of protection — but **no normalization dependency, no competitor ToS risk, and "Measured" claims defensible on day one.** Tests whether the near-term, buildable version of the #1-demand offering survives the honesty of a narrower scope.

**Idea Chess survival:** ~0.9% naive — higher than the cross-vendor branch precisely because it removes the two deadliest gates. Dies at **Adopt** (JTBD failure: mixed-stack MSPs experience Branch B as an *incomplete* Branch A). **Lever:** scope honestly to N-able-consolidated MSPs and treat it as the foundation that later expands — not a compromise. **Dodges** death-pattern #1 (data-egress wall — no cross-vendor pull) and #5 (accuracy/liability — first-party telemetry makes "Measured" defensible day one). **Still exposed to** #2 (operator never studied). [acp-word-sketches-four-complete-2026-07-15.md](acp-word-sketches-four-complete-2026-07-15.md), Sketch 2.

**1. Problem / wicked bit:** MSPs author every QBR by hand — 2–4 hours per client, no consistent evidence framework. The industry hasn't solved client-ready proof of protection at scale. The wicked bit persists even scoped to one stack: even with the data assembled, the MSP still has to decide *what to say* — the last mile of proof-of-value has never been automated.

**2. Tension (Kolko):** MSPs on consolidated N-able stacks are trying to get quarterly proof of protection in front of clients, but the cross-N-able product integration (N-central + Cove + Adlumin have different data models) is unscoped, and demand for the N-able-*native* job was never independently measured — the research asked about cross-vendor.

**3. How Might We:** How might we deliver a client-ready QBR for consolidated N-able-stack MSPs in one engineering cycle — no normalization acquisition — as the foundation for eventually expanding to cross-vendor scope?

**4. Value prop (Moore):** For N-able-stack MSPs who want to stop assembling QBRs by hand, Client-Facing Proof (Native) produces a client-ready, defensibility-tagged quarterly review from first-party telemetry in under 20 minutes. Unlike the cross-vendor branch, it needs no normalization and carries a legally cleaner data position — but is limited to clients on an N-able stack.

**5. TAM:** Scoped to N-able-consolidated MSPs; not independently sized. `[CS: FABRICATION RISK — do not estimate without a real cut of the installed base by stack consolidation. Omitted deliberately.]`

**6. Necessary functionality:**
- Cross-N-able product schema normalization (N-central + Cove + Adlumin data models — unscoped, uncosted)
- QBR runbook on the existing Runbook Engine (49/49 built — wiring only)
- Value Ledger producer (52/52 built — renders $0 today; needs a producer)
- Defensibility tiering: "Measured" defensible from first-party telemetry on day one
- 15-minute operator edit-and-send flow

**7. Evidence:**
- [CS: VERIFIED] **QBR is #1 across all three instruments — the only offering that is.** [Blind Interviews June 2026](../scout_input/acp-qbr-analyst/confluence-blind-interviews-study.md) + [survey table](acp-vision-sketches.brief.md).
  *Why relevant:* The parent demand is the strongest signal in the dataset. Branch B inherits it — with the caveat that the *native-only* job was never measured separately.
- [CS: VERIFIED] **The substrate exists: Runbook Engine + Value Ledger built; QBR runbook has no spec; normalization "Not started."** [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md), build-state map.
  *Why relevant:* This is why Branch B is the near-term lead — it's a runbook on plumbing that already exists, not a new platform. Branch A's expensive line (normalization) is exactly the line Branch B removes.
- [CS: UNKNOWN] **Demand for the N-able-native QBR *specifically* — never measured (the study asked cross-vendor).** [acp-word-sketches-four-complete-2026-07-15.md](acp-word-sketches-four-complete-2026-07-15.md), Sketch 2.
  *Why relevant:* The load-bearing gap. If operators just want "QBR drafting," Branch B survives; if they specifically wanted cross-vendor proof, Branch B is a stepping-stone, not a destination. This is what Q2 (operator study) resolves.
- Strength: **strong on parent demand · unverified on the narrowed job · thin on operator mechanism.**

**8. Riskiest assumption:** Mixed-stack MSPs pay a premium for N-able-only scope — they don't experience Branch B as an incomplete Branch A [P≈0.35]. Refuting: demand was measured for cross-vendor; cross-N-able schema delta unscoped.

**9. N-able superpower:** First-party Adlumin + Cove + UEM telemetry — here the telemetry *is* the product, not a prerequisite to it. "Measured" is defensible on day one with no external data dependency. Real but narrow.

**10. The bet:** [0% Claude — fill this in]

---

## PACKAGE 4 — Live IR/RCA Security Package · **~0.55% — the conditional second**

When something gets through, the coworker builds the customer-ready root-cause report *as the incident unfolds* — cross-stack, confidence-tagged, defensible by morning. Bundled with Tabletop as the vCISO security tier. Tests whether a live RCA is trusted enough to send to a client and an insurer without a human rewrite — and whether the data to build it is even reachable.

**Idea Chess survival:** ~0.55% naive. Dies at **Build** — the riskiest assumption isn't confidence display (a solvable UI problem), it's whether the *evidence chain exists*. **Lever:** answer **Gate C** (Adlumin incident data access — technical + legal, cross-tenant), which is binary and upstream of the entire design. **Partially dodges** death-pattern #4 (compliance-driven WTP is real: #1 on cyber-insurance policies). **Exposed to** #5 (a wrong confident root cause is asymmetric and unrecoverable) and #6 (no spec; live zero-holes correlation rated ~30%). [council-mini-ir-rca.md](council-mini-ir-rca.md); [idea-chess-fleet-synthesis-2026-07-14.md](idea-chess-fleet-synthesis-2026-07-14.md).

**1. Problem / wicked bit:** Post-incident, MSPs reconstruct what happened by hand, days later, from fragmented logs. The wicked bit: the report is a *liability artifact* — a wrong root cause narrated confidently destroys the MSP's credibility in one sentence, and no tool distinguishes a telemetry-sourced fact from a confident guess.

**2. Tension (Kolko):** MSPs are trying to prove they contained the breach — to client, auditor, and insurer — but the evidence is trapped across 6 tools, 3 threads, and one senior tech's memory, so the defensible report only exists days later, if at all.

**3. How Might We:** How might we let the MSP produce a defensible, confidence-tagged root-cause narrative *during* the incident — client-ready and insurer-ready by morning?

**4. Value prop (Moore):** For MSPs carrying incident-response obligations they can't staff with a full SOC, the IR/RCA coworker assembles a cross-stack, confidence-tagged root-cause report in real time. Unlike manual post-hoc RCA or a generic SIEM export, it produces two calibrated outputs — a tech evidence chain and a client/insurer narrative — with a human review gate before anything faces a client.

**5. TAM:** Component of the vCISO tier (Package 1); no independent sizing. Vikram: "10–15% of my SOC running expense"; per-incident (Jonathan) [CS: MEDIUM — Guidepoint, single-source]. `[?]`

**6. Necessary functionality:**
- Live cross-stack correlation, zero-holes ("architects can't poke holes") — genesis-stage, ~30%
- Confidence display per claim (threshold attribute — its absence is negligence, not a missing delighter)
- Two calibrated outputs: tech evidence chain + client/insurer narrative
- Human review gate before client-facing export (the liability protection; fictional if skipped)
- Closes with a hardening recommendation + updates the runbook

**7. Evidence:**
- [CS: HIGH] **#2 qual (26), #3 quant priority (4.00); the compliance driver; #1 on cyber-insurance policies.** [Blind Interviews June 2026](../scout_input/acp-qbr-analyst/confluence-blind-interviews-study.md) + [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md).
  *Why relevant:* Second-strongest demand, and the only one with a regulatory pull behind the WTP — which is what dodges the "nobody pays for it" death pattern.
- [CS: HIGH] **"Doing the RCA during the incident is equivalent to helping resolve it."** MSP-C, via [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md).
  *Why relevant:* The *during*, not *after*, is the wedge and the reason a client pays. Post-hoc, it collapses into the ticket-RCA card the build already has.
- [CS: VERIFIED] **The riskiest assumption is that the evidence chain exists — Gate C is UNCONFIRMED.** [council-mini-ir-rca.md](council-mini-ir-rca.md), Voice 7.
  *Why relevant:* If Adlumin is a separate lane, there's no data to reason over and this becomes a smaller, commoditizable text-synthesizer. Test Gate C before any design work — it's the whole existence question.
- Strength: **strong on demand + compliance pull · gated on Gate C · design case entirely open (operator/current-state IR never observed).**

**8. Riskiest assumption:** Structured incident data reconstructable into a timeline exists in Adlumin and is reachable by a coworker without a separate product-lane decision. Refuting: Gate C unanswered; live zero-holes correlation ~30% ([idea-chess-five-to-build-2026-07-15.md](idea-chess-five-to-build-2026-07-15.md)).

**9. N-able superpower:** Adlumin live threat telemetry + the SOC 90%-auto-remediation corpus — knowing what a signal *means* in context is what makes the root cause credible. Whoever owns the log at the bottom of the evidence chain owns the margin; if it's Adlumin-native, N-able owns the chokepoint. [council-mini-ir-rca.md](council-mini-ir-rca.md), Voice 5.

**10. The bet:** [0% Claude — fill this in]

---

## PACKAGE 5 — Client-Facing Proof, Cross-Vendor *(Branch A)* · **~0.43–0.64% — lowest floor, most winnable**

The full "holy grail": a QBR coworker that normalizes across the MSP's *entire* mixed-vendor stack, so the client-facing story is one comparable narrative from 6–8 competing tools. **Lowest naive survival of the five — and the fleet synthesis's pick for most winnable offering, because its two killers are the two lines N-able doesn't have to build.** Tests whether the biggest prize survives once you allow buy and partner as moves.

**Idea Chess survival:** ~0.43% (cross-vendor floor) to ~0.64% (blended). Dies at **Build — Ford 1**: normalization is "Not started" and the data-egress wall (competitor ToS/DPA) may make the cross-vendor promise *legally* unavailable, not just unbuilt. **The naive floor understates it** because the two hard lines dissolve under levers: **BUY the normalization moat** (an existing small-player category; collapses the multi-quarter line into a purchase) · **PARTNER past the egress wall** (marketplace/Vendor-Expert = the egress *solution*; ToS stops mattering when the vendor is a partner) · **BUILD** the QBR runbook on the existing engine · **STUDY** the cheap risks (Q1 legal read, Q2 operator). **Exposed to** death-patterns #1, #2, #3, #5 simultaneously — which is why it's last by the raw number and first by strategic winnability. [idea-chess-fleet-synthesis-2026-07-14.md](idea-chess-fleet-synthesis-2026-07-14.md) §6; [idea-chess-offering-a.md](idea-chess-offering-a.md).

**1. Problem / wicked bit:** An MSP runs 6+ vendors per client and can't tell one comparable story from them. No incumbent ships a QBR coworker that normalizes across *competitor* data. MSP-A: "cross-stack QBR is the holy grail — nobody has it." The wicked bit is that the most defensible comparison is the one that's legally hardest to assemble.

**2. Tension (Kolko):** MSPs are trying to prove strategic value every quarter, but the evidence is scattered across vendor tools that don't speak to each other — and the most defensible cross-vendor comparison is legally unavailable through competitors' data policies.

**3. How Might We:** How might we let an MSP walk in and prove, in numbers the client trusts, that the invisible work kept them safe across their *whole* stack — without spending a day hand-building it, and without needing data we have no right to?

**4. Value prop (Moore):** For security-focused MSPs assembling quarterly reviews by hand, Client-Facing Proof (Cross-Vendor) generates a client-ready, evidence-tagged narrative across the full vendor stack in under 20 minutes. Unlike manual assembly or single-vendor dashboards, it delivers cross-vendor normalized evidence with built-in defensibility tiering.

**5. TAM:** Offering-level. $1B–$4.3B depending on pricing model (per-tool floor vs. share-of-services ceiling); the gap is entirely the pricing decision. [CS: MEDIUM — WOBBLY, fleet-synthesis derivation]. `[0% Claude — pricing model belongs here]`

**6. Necessary functionality:**
- Cross-vendor normalization layer *(hypothesis: achievable via acquisition/partnership — the load-bearing assumption; "Not started" in-house, multi-quarter if built)*
- QBR runbook on the Runbook Engine (built — wiring only)
- Value Ledger producer (built — renders $0; needs a producer)
- Defensibility tiering on the narrative (Measured / Benchmarked / Estimated / Unverified)
- 15-minute operator edit flow

**7. Evidence:**
- [CS: HIGH] **#1 demand across all three Guidepoint instruments; MSP-A "the holy grail — nobody has it."** [Blind Interviews June 2026](../scout_input/acp-qbr-analyst/confluence-blind-interviews-study.md).
  *Why relevant:* Strongest demand in the dataset. But it's demand for the *destination* (a cross-stack QBR), never tested for the *mechanism* (AI drafts, you edit) — the H10 hole in the Idea Chess pass.
- [CS: VERIFIED] **The two death-drivers — normalization and data-egress — are BUY and PARTNER lines, not build lines.** [idea-chess-fleet-synthesis-2026-07-14.md](idea-chess-fleet-synthesis-2026-07-14.md) §6.
  *Why relevant:* This is the whole reason the lowest-floor package is the most winnable. Money and partnerships attack A's *exact* failure points; they don't help C's (insurer admissibility, mid-incident trust) nearly as well.
- [CS: UNKNOWN] **Cross-vendor data egress — can N-able legally pull competitors' data into a client-facing artifact? Unexamined. The single most decisive test in the portfolio (Q1).** [idea-chess-offering-a.md](idea-chess-offering-a.md), H2.
  *Why relevant:* Binary and upstream of the moat itself. If NO, the cross-vendor promise collapses to Branch B everywhere — which is why Package 3 exists as the fallback that needs no such clearance.
- Strength: **strongest demand · unverified normalization path · legally unexamined egress · operator never studied.**

**8. Riskiest assumption:** Three correlated required beliefs — normalization clears legal/ToS [P≈0.30], operators want to reduce verification work not just get output [P≈0.55], defensibility tiering holds under legal review [P≈0.45]. None tested; correlated, so the ~0.43% floor is a ceiling not a floor. Refuting: normalization "Not started"; competitor ToS unexamined; Derek "I could build that in Cloud in a day."

**9. N-able superpower:** First-party full-stack telemetry (Adlumin + Cove + UEM) is the only normalized source N-able controls — "Measured" is defensible from day one for N-able-native clients *without* any acquisition. The acquisition/partnership extends that moat across competitors' data. The superpower is the telemetry stack, not the AI on top.

**10. The bet:** [0% Claude — fill this in]

---
---

# PLATFORM LAYER — not a standalone sale

## Governed Agent Control Plane · **~0.35% standalone**

Best-built, worst-monetized offering in Idea Chess. The substrate that lets MSPs build, run, and govern AI coworkers with gated autonomy and a real audit trail. **Reclassify: it's the priced seat *under* Packages 1–5, not its own sales motion** — every package sits on it, and pricing/packaging it as the seat clarifies the whole portfolio even if it never sells alone.

**Idea Chess survival:** ~0.35% as a standalone sell — dies at **Defend**: Shawn says governance is desired but "probably not something you're going to get someone to pay for" as a line item (death-pattern #4). **Lever:** don't sell it; make it the metered seat. Its real moat — **G4, governing agents the MSP built elsewhere** — is unspecced and is the genuine long-horizon research question, not part of this round. [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md), Offering B dig; [idea-chess-five-to-build-2026-07-15.md](idea-chess-five-to-build-2026-07-15.md) #3.

- **Wicked problem:** governing agent sprawl + accountability of non-human actors ("AIs cannot be taken to court… there has to be a human in the loop" — Derek). [CS: HIGH — Guidepoint]
- **Why it's the seat, not a ship:** Runbook Engine + autonomy tiers + Value Ledger metering already exist in code; A and C both depend on it. Regulatory tailwind: EU AI Act enforceable 2026-08-02 makes the audit trail a compliance asset. **Bill governance as compliance/billing *enablement*, not a SKU.**
- **The bet:** [0% Claude — fill this in]

---
---

# FRAGMENTS — good bits worth keeping

- **Defensibility Layer (embedded)** — standalone survival ~0.28% (CLOSED — no standalone WTP), but as trust architecture across *every* package it's the answer to death-pattern #5 (the wrong-number catastrophe). Four-tier vocabulary (Measured / Benchmarked / Estimated / Unverified) + a **hard gate on the Unverified tier** (operator confirms before export — not a warning, warning-fatigue research says visible-warnings-requiring-no-action read as permission). *Why it's good:* one legal opinion on whether tiering protects or documents constructive knowledge [P≈0.45] answers it for Packages 1, 3, and 5 at once. *Why a fragment:* it's the trust layer of the QBR packages, not a product. [acp-word-sketches-four-complete-2026-07-15.md](acp-word-sketches-four-complete-2026-07-15.md), Sketch 3.

- **Cross-Tool Reconciliation** — ~0.34%, voted off → discovery spike. Jonathan (vendor-bill sync) and Derek (AI bookkeeper) raised billing/financial reconciliation *unprompted* — n=2, intense. Closer to the control-plane thesis than QBR. *Why it's good:* the pain that sits *between* the tools, which nothing watches. *Why a fragment:* dies at gate-0 ("is it even ours to build"), competes with the PSA partners the packages need. One discovery interview before it lives or dies. [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md) Offering E.

- **MSP Benchmarking** — bottom on both cuts, but Mike (the one buyer who named it) ranked it #1 for himself. *Why it's good:* "how do I compare to peers" is a genuine vCIO conversation-starter — a natural add to Package 1's vCIO tier. *Why a fragment:* needs cross-MSP data N-able may not have rights to aggregate.

- **Employee On/Offboarding** — #5 qual (16), #7 priority, lowest value-rating (2.94). *Why it's good:* named by three buyers; real recurring pain. *Why a fragment:* weakest value signal in the set — a workflow feature, not an advisory coworker. Promote only if a partner names it as a bundle gap.

- **Vendor-Agnostic Runbooks** (product philosophy) — Chris Barber ("not vendor specific… mix and choose") and William Mincher ("choose the service per step, like you choose an MCP instance"). *Why it's good:* if normalization lands (Package 5), agnostic runbooks are the moat's UX expression. *Why a fragment:* a philosophy cutting across every package, not a package itself. [brain-dump-triage-2026-07-14.md](../brain-dump-triage-2026-07-14.md).

---

## Two questions that unlock most of the board

Both are days, not quarters, and each gates 3+ packages — run before any expensive build:

- **Q1 · The data-egress read.** Can N-able legally/contractually pull non-N-able vendors' data into a client-facing artifact? *A legal/DPA review + one competitor ToS read.* Gates **Package 5, 4, and the cross-vendor version of 1.** If NO → the cross-vendor promise collapses to N-able-native everywhere (Package 3), and Package 5 is off the table. The single most decisive test in the portfolio.
- **Q2 · The operator + solution-fit study.** Does the operator (not the buyer) want the *mechanism* — AI drafts, you edit and defend — not just the *destination*? *One operator ethnography + prototype session.* Gates **Packages 1, 3, 4, 5.** Every package's demand is buyer purchase-intent; the operator was never studied.

---

## Cross-package test questions

- **The lever:** for this package, what single decision or test most changes whether it lives? (Names the load-bearing bet.)
- **Bill or bundle:** is this its own line, expected-included, or the thing you resell to your client?
- **The operator:** who runs this daily, and would *they* want it — or just the owner who'd buy it?
- **Trust threshold:** what would need to be wrong before you'd stop sending/acting on the output?

---

## Source index

| Source | What it contains | Used in |
|---|---|---|
| [idea-chess-fleet-synthesis-2026-07-14.md](idea-chess-fleet-synthesis-2026-07-14.md) | Six death patterns, naive survival per offering, most-winnable read, build/partner/buy grid | Board, 4, 5, platform |
| [idea-chess-five-to-build-2026-07-15.md](idea-chess-five-to-build-2026-07-15.md) | Doability per offering; Triage funnel gap; vCISO sequencing guard; G4 | 1, 2, 4, platform |
| [acp-word-sketches-four-complete-2026-07-15.md](acp-word-sketches-four-complete-2026-07-15.md) | Branch A/B split, Defensibility Layer, flat-fee vs. revenue-share survival table | 1, 3, 5, fragments |
| [idea-chess-offering-a.md](idea-chess-offering-a.md) | Offering A adversarial pass: H1–H11 holes, Monte Carlo, Oregon Trail, Q1/egress | 5 |
| [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md) | Five offerings, why-n-able moats, build-state map, WTP quotes, TAM, Value Ledger dig | all |
| [Blind Interviews June 2026](../scout_input/acp-qbr-analyst/confluence-blind-interviews-study.md) | Guidepoint n=8: 9-use-case ranking, verbatim quotes, adjacent needs | 2, 3, 4, 5 |
| [acp-vision-sketches.brief.md](acp-vision-sketches.brief.md) | n=119 survey + n=8 evidence table; priority/value/qual; 75/25 sentiment | Board, 2, 3 |
| [vcio-vciso-industry-practice.md](../scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md) | vCISO/vCIO deliverables, Cynomi adoption (WOBBLY vendor), frame test | 1 |
| [council-mini-ir-rca.md](council-mini-ir-rca.md) | IR RCA: Gate C, confidence display, three-audience split, chokepoint | 4 |
| [brain-dump-triage-2026-07-14.md](../brain-dump-triage-2026-07-14.md) | Vendor-agnostic runbook signals (Chris Barber, William Mincher) | fragments |

---

*[CS:] tags per Band Protocol. Small-n qual (n=8) is directional, not projectable — the two ranking cuts are the same 8 people. Survival %s are naive products of required-position probabilities under an independence assumption — directional, not forecasts; read the lever, not the decimal.*
*Do-not-cite-as-fact: 82/85% retention · ~30% AI efficiency · Gartner-70% · Kenneth $300/user · Vitali 15–20hrs · ScalePad displacement window · vCISO market $ figures. Cynomi tripling = MEDIUM/WOBBLY-vendor.*
*Idea Chess vocabulary only — the "murder board / battleship / sink" language in older source files is retired.*
*[0% Claude] bet slots stay empty until filled by the human.*
