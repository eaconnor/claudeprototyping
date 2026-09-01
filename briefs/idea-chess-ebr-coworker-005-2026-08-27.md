# IDEA CHESS — The EBR Coworker Arc (005) As Prototyped

**Target:** `prototypes/ebr-coworker-005-arc/` — the landing → console → confidence-gated build-EBR flow, plus the real-fetch simulator it hands off to.
**Stance:** adversarial. The job is to find where the concept's implicit bets fall in market and against evidence. Not to defend it. (Especially not to defend it — it was built this session, so the defense reflex is live.)
**Tagging:** `[BUILT]` = real in the prototype · `[SPECCED]` = named/wired but no real substrate · `[A]` = assumed, unsourced · `[?]` = unknown, named gap.
**Date:** 2026-08-27 · Owner: Beth Connor
**Grounded in:** FSN-83143 (DEC-006 coworker list) · stefanie-hammond-ebr-followup-transcript-2026-07-30 · lewis-pope-ebr-details-transcript-2026-08-25 · scout_input/01-nzo · Technica personas (Vanessa/David) · n-able.com brand.

---

## 0. Ground truth — what is actually real in this artifact

Leads because it reframes every bet.

| Layer | State | Note |
|---|---|---|
| The clickable arc (landing/console/build flow) | `[BUILT]` | Renders, links, the wizard runs, draft→activate is real UX |
| The confidence tiers + every grade | `[SPECCED]`/fabricated | **This is the actual product and it is 100% hollow.** No model scores anything |
| Cross-coworker feeds (Tabletop→risk, IR→incidents, EnvHealth→devices) | `[SPECCED]` UI-only | The feeds are drawn; the coworkers that produce them are 0/40 code (idea-chess-build) |
| Confidence-gated partial delegation | `[BUILT]` UI / `[A]` mechanism | The toggle works; the honest self-scoring it depends on does not exist |
| The EBR as a *living risk register* | `[?]` — not modeled | Prototype models a document with sections. Lewis says the durable artifact is a register |
| Evidence / reasoning trail | `[?]` — absent | No audit history, no "prove it" trace, no system-of-record |
| Teach-back (practitioner corrects a grade, coworker retains it) | `[?]` — absent | The one loop where judgment would get encoded |

**The single most important fact for this board:** the prototype is honest about *what* an EBR reports on and dishonest-by-construction about *the interpretation* — which is the whole product. Every bet is judged against that: **we have prototyped the packaging of a judgment the machine cannot yet make.**

**The one genuine structural strength (name it before the attacks):** unlike the ACP build's idea-chess board — which staged onboarding on Ticket Triage, a job *absent* from the researched top-five — this arc builds the **EBR/QBR coworker, which is demand rank #1** (FSN-83143 DEC-006, QBR Advisor priority 2.90; Chris Dunlop: "our most requested use case, where we're starting"). The day-1 job is the right job. That is why BET6 carries a high p and the others carry the weight.

---

## 1. Council adversarial pass

Each lens: its losing condition, and its best shot at showing a bet is wrong.

**1.1 Jobs-to-Be-Done** — *Losing condition: the artifact isn't the job the buyer hires for.*
**Pressures BET4.** The buyer (Stefanie, Lewis, Vanessa) hires the EBR to do one job: produce a **signed, defensible risk register that drives the client conversation and covers liability**. The prototype delivers a *report with sections and confidence tiers*. Lewis is explicit — "everything this is doing is findings… every finding has to be accounted for… the database underneath really should be a risk register" (2026-08-25). The prototype's spine is a document; the job's spine is a register. Right job, wrong shape of the artifact.

**1.2 Disruptive Innovation** — *Losing condition: you polish the surface while the demanded substrate is unbuilt.*
**Kills BET5.** The arc's richest promise is the family working together (Security Tabletop → risk). Those coworkers are `[SPECCED]`, 0/40 in code, and the flat coworker model has no orchestration layer (idea-chess-build BET3/BET9). A competitor who hardcodes a risk-register generator against one PSA ships the demanded artifact while this arc is still animating feeds that can't fire.

**1.3 Service Blueprint** — *Losing condition: a front-stage promise has no back-stage actor.*
**Kills BET5, pressures BET2.** Front-stage: "fed by Security Tabletop." Back-stage: no Security Tabletop, no scorer, no evidence store. The confidence-gate front-stages "it drafts only what it can stand behind" — back-stage there is no thing that can stand behind anything. The customer line is fully drawn; the support line is empty.

**1.4 Self-Determination Theory** — *Losing condition: the trust model frustrates the operator it protects.*
**Kills BET2.** Confidence-gating hands back the low-confidence sections — exec summary, carry-forward, the judgment calls. Lewis: ~50% of the user base is "lost… what am I supposed to do with this information, how do I operationalize this" and needs a *premium handholding coworker*. So the gate returns precisely the hardest work to precisely the user least able to do it, and calls it trust-building. For David (technical) it's a time-saver; for Vanessa (non-technical delivery lead) it's a pile of homework she can't grade.

**1.5 Value Chain (Porter)** — *Losing condition: value is captured at a link you deferred.*
**Pressures BET4/BET9.** Willingness-to-pay concentrates on the *signed risk acceptance* (CYA, insurance renewal, "I warned you for four years and I have the trail" — Lewis) and the client-facing narrative. The prototype invests in the *intake/config* link (a lovely FTUX) and defers the register + evidence trail where the money and the liability actually sit.

**1.6 Wardley** — *Losing condition: positioned at the wrong evolutionary stage.*
**Pressures BET8.** The 4-minute self-serve build positions EBR as a product/commodity ("configure it yourself, fast"). The market is genesis-stage and *relationship-led*: MSPs learn the manual ritual first (Stefanie), and the sale is the guidance ("the difference between making it yourself and buying from us is the guidance" — Beth, in the Lewis session). Self-serve speed optimizes the thing the buyer discounts.

**1.7 Real Options / Lean** — *Losing condition: you spent the option budget on the least-uncertain thing.*
**Ranks the risk.** The certain parts (a nice wizard, a tier taxonomy) are `[BUILT]`. The uncertain parts (can the machine score its own confidence honestly? is structure recoverable from a real messy report? will Vanessa trust a hand-back?) are 0% tested. Certainty bought where it was already cheap.

**1.8 Security / GRC** — *Losing condition: a governance promise has a gap an auditor drives through.*
**Kills BET9.** Lewis draws the line: keep the evidence or "this can't be a GRC solution anymore — it's a reporting mechanism, not an attestation mechanism." The prototype shows confidence tiers but preserves no evidence, no reasoning trail, no history. Across from opposing counsel, "prove MFA was on at this time" — the prototype cannot. The compliance moat is asserted (the rail says "liability log") and absent in the model.

**1.9 Migration-cost** — *Losing condition: the interim shape forces a painful rebuild.*
**Pressures BET4.** Model the EBR as a document now and the register/system-of-record/evidence schema is a later rebuild of the core entity — after cycles of client data reference the document shape. Register-first is additive; document-first is a migration.

**1.10 Ecosystem / two-sided** — *Losing condition: the platform ships with an empty side.*
**Kills BET5 + pressures BET6.** The arc's story is "build one, the family feeds it." The family is empty. And sequencing may be inverted: Lewis runs **tabletop a month *before* the EBR** and feeds its after-action report in — so the EBR's richest section *depends on* a coworker that should exist first. Building EBR first may be building the consumer before the supplier.

---

## 2. What we haven't thought about — concept-specific holes

Ranked by damage.

1. **The deliverable is a living risk register, not a report.** `[?]` (§1.1/1.9). The single biggest reframe. Findings owned, tracked over time, two views of one dataset (improvement-trend vs. unpaid-gap list — Lewis 2:24), evidence preserved. The prototype's document framing misses the spine.
2. **Confidence-gating dumps judgment on the least-capable user.** `[A]` (§1.4). Without a paired translation/handholding path, the hand-back is a feature for David and a wall for Vanessa. The research says Vanessa is the majority.
3. **No evidence/reasoning trail = no attestation = no moat.** `[?]` (§1.8). The liability value the buyer actually pays for is the part not modeled.
4. **Sequencing may be inverted.** `[A]` (§1.10). Tabletop feeds EBR and runs first; the arc builds the consumer before the supplier and animates a feed that can't fire.
5. **The interpretation layer — the product — is 100% fabricated.** `[SPECCED]`. Every demo lands the *feeling* of a judgment machine while proving none of it. Easy to over-read as validated.
6. **N-zo may be the wrong brain.** `[A]` (BET7). Advisory-only, device/telemetry-scoped; using it as the EBR narrative engine is an unexamined category fit.
7. **No unstructured client-interview step.** `[?]`. Lewis: some answers only come from a soft-skill client conversation; the coworker should generate/route that interview. The arc has no path for the data no connector holds.
8. **Structure-first with no teach-back never improves.** `[A]` (§1 BET3). Grades come back wrong on cycle one (by design) and nothing captures the correction, so cycle two is no better.

---

## 4. Monte Carlo read

**Method.** Naive survival = product of `p(true)` over the `required:true` bets. Independence assumed for the naive figure and **false** — see caveat.

| Bet | p | Why |
|---|---:|---|
| BET1 structure recoverable from a real report | 0.45 | flatters the organized; common case is a deck |
| BET2 confidence-gated hand-back builds trust | 0.50 | returns hardest work to least-able user |
| BET3 structure-first (no judgment capture) enough for v1 | 0.45 | no teach-back; grades never improve |
| BET4 report-framing (vs living risk register) is right | 0.40 | Lewis: the artifact IS the register |
| BET6 EBR/QBR is the right day-1 coworker | 0.75 | aligned with #1 demand (DEC-006) — the strength |
| BET8 4-min self-serve fits the buyer | 0.45 | manual-first pedagogy; ~50% lost |

**Naive survival (product of the six `required:true`):** 0.45 × 0.50 × 0.45 × 0.40 × 0.75 × 0.45 ≈ **0.0137 → ~1.4%.**
*(grep-verified: `python3 json.load` + `math.prod` over `required:true` = 0.01367, 2026-08-27.)*

Read it as the ACP board read its own: not a forecast, a floor-of-alarm showing how fast a chain of load-bearing medium-confidence bets multiplies toward zero.

**Sensitivity ranking — validate/fix first (most damage, most reversible):**
1. **BET4 (report → living risk register).** Cheapest to fix, highest leverage, and Lewis hands you the direction. Reframe the spine before more UI hardens on the document shape. **Fix first.**
2. **BET2 (confidence-gated hand-back).** Pair the gate with a translation/handholding path, or it fails the majority persona. Test the hand-back with a Vanessa, not a David.
3. **BET8 (self-serve adoption).** Add the guidance/interview step; test time-to-build with real MSP admins, not the design constraint.
4. **BET1 (structure recoverable).** The Stefanie-template start-from-scratch already hedges it; test on two messier real reports.
5. **BET3 (teach-back).** Design the correction loop; it's the only thing that makes cycle two better than cycle one.
6. **BET6.** High p; leave it — it's the load-bearing strength.

**Independence caveat.** Correlated: BET4, BET2, BET9 fail *together* through one root cause — modeling a document instead of an owned, evidence-backed register. Fix the spine and three lift at once. So true joint odds are **higher than 1.4%**, and the actionable output is the sensitivity list, not the number.

---

## 5. Oregon Trail — where the concept dies on the map

Phases: **build → launch → adopt → defend.**

- **BUILD — survivable.** The arc clicks; the honesty apparatus (tiers, draft→activate, the rail) is real and good. But the interpretation layer is 0%, so you've built the wagon's paint job, not its engine.
- **LAUNCH — sequencing risk.** The demoed family feeds need Security Tabletop et al. built first, and Lewis says tabletop *precedes* EBR. Launch either slips behind the supplier coworkers or ships an EBR whose richest section (risk) runs on raw data with no register behind it.
- **ADOPT — most likely death.** The ~50%-lost majority (Vanessa-shaped) hits the confidence-gated hand-back, gets the judgment calls dumped back, and stalls — no translation coworker, no client-interview step, no teach-back so cycle-one wrongness persists. "Cute first run, no second act." *The oxen have nothing to eat on the far bank.*
- **DEFEND — structural.** If it holds, the document-not-register framing comes due: the first "prove it to my insurer/auditor" request hits a system that kept no evidence. You lose the attestation moat to whoever kept the trail. *The dysentery of GRC-adjacent products: you were a reporting tool the day you needed to be a system of record.*

**Where it most likely falls:** at the **framing** — a report where the durable, billable, defensible artifact is a *living, evidence-backed risk register* — and at **adoption**, where confidence-gating hands the hardest judgment to the least-capable user with no handholding path.

---

## Bet / Assumption table (companion to the JSON)

| ID | Bet | State | p | Required? | Losing condition |
|---|---|---|---:|:--:|---|
| BET1 | Structure recoverable from an MSP's real report | `[BUILT]` UI/`[A]` | 0.45 | ✅ | common case is a deck; flatters the organized |
| BET2 | Confidence-gated hand-back builds trust | `[SPECCED]` | 0.50 | ✅ | dumps judgment on the least-able (Vanessa) |
| BET3 | Structure-first (no judgment capture) enough for v1 | `[BUILT]` UI/`[A]` | 0.45 | ✅ | no teach-back; never improves |
| BET4 | EBR deliverable is a report-with-sections | `[BUILT]`/`[?]` | 0.40 | ✅ | the artifact IS a living risk register (Lewis) |
| BET6 | EBR/QBR is the right day-1 coworker | `[SPECCED]` | 0.75 | ✅ | it's demand #1 — the strength |
| BET8 | 4-min self-serve fits how MSPs adopt | `[BUILT]` UI/`[A]` | 0.45 | ✅ | manual-first; ~50% lost |
| BET7 | N-zo is the right AI brain for EBR | `[A]` | 0.55 | ❌ | advisory/device-scoped; category mismatch |
| BET5 | Cross-coworker feeds buildable/orchestratable | `[SPECCED]` | 0.45 | ❌ | 0/40 code; no orchestration; supplier unbuilt |
| BET9 | Evidence/traceability is a later concern | `[?]` absent | 0.40 | ❌ | it's the attestation moat + system of record |
| HOLE1 | Sign-off owner settled | `[?]` | 0.30 | ❌ | product asks for a signer it can't enforce |

---

*Values over rules. The concept picks the right day-1 job (EBR is demand #1 — a real advance over the Triage-first build) and dresses it in an honest apparatus. Its board position: it models the packaging of a judgment the machine can't yet make, frames a report where the market needs a living risk register, and — through confidence-gating — hands the hardest judgment back to the person least able to supply it. Fix the spine (register-first, evidence-kept, teach-back, a handholding path for Vanessa) and the same arc's odds move off the floor.*
