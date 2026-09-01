# HANDOFF — next Claude continuing ACP (QBR → coworker department)

**To:** the next Claude session picking up this work
**From:** the session that ran two research rounds on the ACP QBR Analyst
**Date:** 2026-07-06
**Owner:** Beth (UX Manager, N-able). **Decision-owners on this work: Beth, her boss Meaghan, and Nicole Reineke (Chief AI Officer).** Route all build/strategy/pricing calls to those three.

---

## ⏭ YOUR TASK (the reason for this handoff — start here)
**Rewrite the whole brief set around the FIVE-PRODUCT reframe, then rerun the FULL 44-voice council against the new brief.** This was in-flight when we stopped to hand off — the reframe below lives ONLY in this doc; it is not yet in the brief.

### The reframe (what changed the shape of the concept)
Beth surfaced a second ranking from Nicole's research (mean-rank, lower = better):
```
1  QBR: Business reporting      2.90
2  Alert flood suppression      3.23
3  Incident Response RCA        4.00
4  Continuous env health        4.18
5  Security Tabletop            4.95
6  Ticket Triage & Dispatch     (no value shown)
```
(Different metric from the earlier cumulative table where QBR=31 — but **QBR tops BOTH cuts.** That consistency is the strongest signal in the data. Small-n qual — treat as directional, per standing discipline.)

**The insight the rewrite must carry:** these are NOT five products. They are **three capability bands + one voice:**
- **Operational health** — Alert flood suppression · Continuous env health · Ticket triage (signal-from-noise, always-on).
- **Security / risk (vCISO)** — Incident Response RCA · Security Tabletop.
- **Business / client (the voice)** — QBR.

**QBR is not a peer of the other four — it is the OUTPUT / NARRATION layer for all of them.** The operational + security coworkers *do the work*; the QBR coworker *narrates it to the client and drives the decision.* This is ScalePad's "hub + feed it signals" architecture — except N-able's signals come from coworkers that actually do operational + security work (N-central / N-sight / **Adlumin**), not just asset-lifecycle data.

### The biggest plays the rewrite must evaluate
1. **The coworker "department" (operating-system play).** Ops + security do the work; QBR reports it. This **resolves the T4 fork toward Shape A (platform-embedded)** — QBR is naturally the reporting layer of a coworker platform; standalone QBR under-reaches.
2. **Security-led vCISO + QBR bundle (may be the biggest play).** 4 of the top 5 are security-flavored; only QBR is purely business. Demand's center of gravity is **security operations.** vCISO is the hotter market (MSPs offering it tripled YoY, per Cynomi/vendor). N-able has **Adlumin** to feed it. Bundle IR RCA + Tabletop + posture as a vCISO coworker, QBR narrates it.
3. **vCIO / vCISO split as coworkers** — Ops + QBR = vCIO capability; Security band = vCISO capability. The top five literally compose the two roles the industry sells as-a-service.

### How to run the rewrite (the pipeline)
1. **spec** (subagent) → rewrite `briefs/acp-qbr-analyst.brief.md` + `acp-qbr-analyst-math-recount.md` around the department/hub framing. New domain model: entities for each signal source (Alert, EnvHealthState, Incident/RCA, TabletopExercise, QBRReport) + a "signal → narration" service + vCIO/vCISO capability grouping. Fold in round-2 findings (see `round-2-findings.md`). Keep three-number honest math; likely still Tier 1 / gate 30 (the composition is a strategic [A]).
2. **critic** (pre-build) → re-score the new brief.
3. **council** (Hard Mode, ALL 44 voices, full owensing, **Opus** — strategic stakes) → rerun against the new brief. Synthesis slot stays `[0% Claude — fill this in]`. Aim fire at: the platform-composition thesis, QBR-as-hub, and the vCISO-vs-QBR center-of-gravity question.
4. Then cascade: update `product-experience-research.md` (the hub), `concept-mvps.md`, `staged-path.md` to the department framing.

**Orchestration contract:** pipeline subagents (scout/spec/critic/council) are Read-only and end with `FILE:` blocks — the PARENT writes every file. Large build/council outputs (>50KB) get persisted to a temp JSON; extract the FILE block programmatically (see the prototype skill), never hand-truncate.

---

## WHAT'S ALREADY DONE (don't redo)
Two research rounds, fully sourced. Round 1: demand + market + experience frameworks. Round 2 (16-question queue): ScalePad deep-dive, vCIO/vCISO, landscape/Zomentum/plug-in/cross-industry, M&A targets. All in the packet.

**Load-bearing conclusions already established (with evidence):**
- **QBR is the #1-demanded coworker** in Nicole's 8-interview study (and tops both ranking cuts). [R/directional — n=8 qual]
- **Nobody does true cross-vendor end-to-end normalization** (two independent absence-findings); Backup Radar proves the mechanic for one data type. **Normalization is the hardest-to-replace moat.** [CS: MEDIUM]
- **ScalePad reframed UP** to "Five products. One operating system" for customer success. Don't fight on "a better QBR." [CS: HIGH]
- **Deck-generation is commoditizing** (ScalePad Copilot on MCP, Cassidy, Cast.app, Plus AI). Don't race deck-gen; race normalization + decision-driving. [CS: HIGH]
- **"Lifecycle management" is ScalePad's frame, not the industry's** — category is frame-contested (lifecycle / tech-alignment / vCIO / customer-success). Pick a frame. [CS: MEDIUM]
- **Plug-in is viable** — ScalePad MCP + open APIs; **Rewst already integrates N-central + N-sight.** A QBR agent could consume cross-vendor data via MCP/APIs. [CS: HIGH]
- **Biggest-ROI acquisition = Gradient MSP** (cross-vendor normalization, already Cove-integrated, ~$8M raised) — could buy the moat outright. Liongard = deeper alt; vCIOToolbox/CloudRadial = delivery layer (already N-able partners). [facts CS: HIGH / fit A]
- **Buyer-vs-user gap:** Nicole studied *buyers* ("would you pay"); the daily *user* (vCIO/analyst) is unstudied. Experience layer is 93% [A].
- **Concept shapes (A/B/C):** A platform-embedded (market favors), B standalone cross-stack (highest risk), C narrow N-able-stack beachhead. Ladder = C→A→B.

## STANDING DISCIPLINES (non-negotiable — Beth stress-tests these)
- **[R]/[D]/[A]/[?]** on every claim; **[CS:]** confidence tags; **[WOBBLY]** for vendor-only sourcing.
- **Qual needs quant triangulation** — small-n qual is directional, NOT projectable. A structured-qual score that *looks* quant (e.g. "#1, total 31") is still n=8. Name method + n; ask what independent quant backs it.
- **Three-number honest math**, never one blend (world / test-plan / inflated). Report the LEAD (world-claims) number.
- **47% rule** — grep-verify every stat before quoting (Bradley is the gate; log to `.bradley-ledger.md`).
- **This is product-experience research, NOT a go/no-go.** Build call + timing stay with Beth, Meaghan, Nicole.
- **Synthesis slot stays `[0% Claude — fill this in]`** — the human writes it.

## ⛔ DO-NOT-CITE (verified traps)
- "82% / 85% QBR retention stats" — don't trace to a primary source.
- "~30% AI efficiency" (VC rollups) — FABRICATION RISK.
- "Gartner: 70% of enterprise presentations AI-generated by 2026" — secondhand, FABRICATION RISK.
- Kenneth "$300+/user/mo" · Vitali "15–20 hrs" — respondent-reported, unverifiable.
- ScalePad "displacement window" — public record contradicts (LM X is the NEW product being sold).
- vCISO "$1.06B→$1.48B by 2032" — no named firm; [CS: LOW]. ScalePad pricing conflict ($250/$125 vs $149/$15) unresolved.

## OPEN QUESTION FOR BETH (was pending at handoff)
Q11 in the queue: "mine the comparison table" — confirm she means `scout/market-competitive-landscape.md` (assumed) or an external one.
