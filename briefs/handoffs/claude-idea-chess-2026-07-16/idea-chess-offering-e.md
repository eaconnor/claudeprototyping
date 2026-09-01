# MURDER BOARD — Offering E · Cross-Tool Reconciliation (the "AI Bookkeeper")

**Battleship Day. Job: sink the ship.** Adversarial. Nothing here defends E. Where evidence exists it is cited and tagged; where the board is estimating, it says so. Grounded against `briefs/acp-offerings-2026-07-14.md`, `acp-findings-2026-07-14.json` (shelves: user[64], user[78]/UC-B, user[82], market[2], market[16]), `scout_input/acp-tam-control-plane.md`, and the `idea-chess-offering-a.md` sibling (E inherits A's data-egress and operator holes and makes them worse).

**The one-line indictment:** E is not an offering. It is a research question wearing an offering's clothes. The pain is real and recurs across more voices than the brief credits (Jonathan, Derek, plus UC-B's *"ninety percent of the hands would go up,"* plus Julian's "reach into billing" and Sketch/Ditty's "beyond RMM") — but *every* structural fact about it points somewhere other than ACP: it is a **finance product**, its data lives in the **PSA/billing systems N-able wants as partners**, its accuracy bar is **money-grade** (a wrong reconciliation number is a wrong *invoice*, not a wrong uptime slide), it was **never in any ranked set**, its TAM is **unsized**, its buyer is **unknown**, and a narrower version of it **already has a home** as **UC-B License & Cost Optimization**. The honest verdict is not "E fails" — it's "E has not earned the right to be evaluated as an offering, and the one study that would resolve that has not been run."

---

## 0. EVIDENCE CORRECTION (before the kill — read this first)

The brief pins E's evidence as *"n=2 unprompted only."* Grep of the findings JSON says that is **understated**, and the correction matters both ways:

- **user[78] — UC-B "License & Cost Optimization":** *"License/cost reconciliation (active vs billed) is a near-universal MSP pain — 'ninety percent of the hands would go up' — but the data is not yet integrated; would-pay-if-ROI-clear signal (~$30/user)."* `[R, CS: MEDIUM — Aaron Betts / Robby Swartenbroekx, 2026-06-05]`. **This is the single most important fact on the board:** a reconciliation use case is *already scoped as UC-B*, has a hands-in-the-room demand signal, and even has a WTP anchor (~$30/user, conditional on ROI). E is therefore **not virgin white space** — a narrower version is already named in the use-case set.
- **user[64] — Julian Taylor, 2026-03-16:** MSPs run 4+ tools; want the coworker to reach into *"COVE, SentinelOne, MSP Manager, MDR/EDR and billing for a unified assistant."* `[R]`. A third voice on the cross-tool-including-billing pain.
- **user[82] — Sketch/Ditty partner, 2026-06-03:** wants access *"beyond RMM (MDR, EDR, Cove, MSP Manager) plus historical memory."* `[R]`. Fourth voice on cross-tool reach (not billing-specific).
- **market[2] — Nicole Reineke, 2026-06-08:** an MSP *already hand-built* a DIY control plane (Claude + Make across Cove, Autotask, N-Central); *"largest, most-mature shops are a displacement risk."* `[R]`. The DIY substitute for cross-tool visibility already exists in the field.

**What this does to the kill:** it *removes* "there's no demand" as a valid kill (there is a recurring, multi-source signal). It *sharpens* three other kills: (1) if the real, scoped thing is UC-B, then "Offering E" is either a **rename of UC-B** or a **scope-inflation of it** — and inflating "reconcile licenses" into "one AI watching all the money between all the tools" is exactly where the accuracy, legal, and is-it-our-job problems detonate; (2) the WTP anchor is **~$30/user conditional on ROI**, i.e. flat/per-seat and unproven, not the premium a money-product would need; (3) the DIY control plane (market[2]) is a live substitute. The brief's own "n=2" framing was accidentally *generous to E* — it let E stay vague. The evidence says the concrete version already exists and is smaller than the vision.

---

## 1. COUNCIL KILL-PASS

Ten traditions. Each: its **kill criterion** and its **single best shot**. Several will decline to score — and saying so *is* the finding.

### 1. Jobs-to-Be-Done (Christensen / Ulwick)
- **Kill criterion:** The job is "stop the money leaking / bill my clients correctly." If the person who *hires* for that job is the MSP's finance/owner function, they already hire a **PSA + accounting stack** (Autotask/ConnectWise + QuickBooks/Xero) for it. E is hired only if it beats the tool the customer *already fired the old way for*.
- **Best shot:** The job is a **finance job**, and finance jobs are the best-defended incumbency in the MSP stack. UC-B's own framing — *"active vs billed"* reconciliation — is a **PSA/billing report**, not an ops-agent task. JTBD says: you are competing with the PSA, not with a blind spot. *(This is the existential kill in JTBD clothing.)*

### 2. "Not enough signal to evaluate" — Discovery / Lean-Startup abstention
- **Kill criterion:** N/A — this voice refuses to score.
- **Best shot:** *"This is a research question, not an offering."* E was never in the ranked six/eight; TAM is `[?]`; buyer is `[?]`; WTP is a single conditional anchor. There is **nothing here to build a scorecard against**. The correct artifact is a discovery study, and pretending otherwise is theater. **Blunt: any framework that returns a confident verdict on E is overfitting to four data points.**

### 3. Porter — Five Forces (turned on the *partners*)
- **Kill criterion:** If building E means competing with the PSA/billing vendors ACP needs as **integration partners and marketplace Vendor-Experts** (HaloPSA, ConnectWise, Autotask — named must-integrate in the survey), the offering creates a **channel conflict** that damages A and B.
- **Best shot:** PSA-software TAM is **$16.92B (2026)** `[CS: MEDIUM — Mordor]` — larger than *all of ACP's own TAM bands combined*. Reconciliation-across-tools is squarely **PSA/billing territory.** E asks N-able to walk into the one product category where its intended partners make their living. Supplier power (the PSA vendors own the billing data E needs) is maximal; the partner you must integrate with is the competitor you'd be attacking. **E may poison the partnerships that A and B depend on.**

### 4. Regulatory / Liability — the money-accuracy lens
- **Kill criterion:** If E produces a reconciliation number that is wrong and the MSP **bills a client on it** (or fails to catch being overbilled by a vendor), the error is a **financial misstatement**, not a soft narrative slip. The accuracy bar for money is categorically higher than for a QBR uptime figure.
- **Best shot:** A wrong QBR number is embarrassing; a wrong *invoice* is **fraud exposure, clawback, and a broken client relationship** — and if the MSP relies on E for its own vendor-bill disputes, a wrong number means eating the overbill. The findings JSON already carries a live warning about money math: **CLAIM-MATH-DISPUTED-001** (a $33,600/mo figure that *"does not reconcile with its own stated formula — do not quote externally"*). **The project has already shipped a reconciliation-math error in its own analysis.** That is a direct, cited omen for a product whose entire job is reconciling money.

### 5. Christensen — Disruption / Commoditization
- **Kill criterion:** If the PSA incumbents fold "active-vs-billed reconciliation" into their platform (they own the billing data; it's a sustaining feature for them), E is commoditized before it monetizes.
- **Best shot:** This is UC-B's *"data is not yet integrated"* caveat read competitively: the reason it isn't integrated is that **the integration is the PSA's to build, and cheaper for them to build than for N-able.** Reconciliation inside the billing system is a sustaining innovation for Autotask/ConnectWise. N-able would be building, from outside, a feature the data-owner can ship from inside for free.

### 6. Moore — Crossing the Chasm (DIY defection)
- **Kill criterion:** If the enthusiastic early segment self-builds cross-tool visibility, there's no referenceable beachhead.
- **Best shot:** **market[2] is the DIY defection, already observed:** an MSP built a Claude+Make control plane across Cove/Autotask/N-Central. Derek — one of E's two "unprompted" champions — is *also* the man who says he'd *"build that in Cloud in a day"* (A's murder board §5). **E's most vocal demanders are its most likely self-builders.** The chasm has no bridge population, and the visionaries are already across it on their own.

### 7. Value-Based Pricing / Economic Buyer
- **Kill criterion:** If the only WTP anchor is flat and conditional (~$30/user *if ROI is clear*), E can't command the premium a money-critical, high-liability product needs to justify its accuracy engineering.
- **Best shot:** UC-B's *"would-pay-if-ROI-clear (~$30/user)"* is the *whole* pricing evidence, and it's **the same low flat per-seat ceiling that caps A** — but E has to fund a *far* higher accuracy and reconciliation-logic cost against it. **The margin math is worse than A's, on the same ceiling, for a harder problem.** No per-outcome or per-dollar-recovered anchor exists.

### 8. Wardley Mapping (evolution)
- **Kill criterion:** If cross-tool financial reconciliation is evolving toward a commodity utility owned by the PSA/accounting layer, N-able is investing genesis effort into a square someone else owns the terrain under.
- **Best shot:** Billing/reconciliation is a **product-to-commodity** component in the finance stack; the *genesis* piece (cross-tool AI that reasons over it) sits on top of data N-able **does not own** (the PSA's, the vendors' invoices). N-able would be doing genesis work on a commodity foundation it rents. Wrong evolutionary stage, wrong owner of the substrate.

### 9. Service Blueprint / Doblin backstage
- **Kill criterion:** The frontstage promise ("one AI watching all the money between systems") requires a backstage line — *pull and normalize billing/financial data from every tool* — that is **more legally fraught than A's normalization, not less.**
- **Best shot:** A's murder board already found cross-vendor normalization *"Not started"* and its cross-vendor egress *possibly legally impossible* (H2). E is **A's H2 raised to the financial-data power**: now the egress includes invoices, license counts, and contract terms from finance/billing systems, each with its own DPA, and at least one of which (the PSA) is a competitor. **The backstage line E needs is the single hardest data-access problem in the entire ACP portfolio.**

### 10. Kano
- **Kill criterion:** If cross-tool reconciliation lands as a **"must-be"** (MSPs expect their PSA to eventually do it; delight-if-present is low, dissatisfier-if-absent-from-PSA is high), it can't be a premium standalone.
- **Best shot:** *"Ninety percent of the hands would go up"* (UC-B) reads as a **must-be**, not a delighter — universal pain is the signature of a hygiene factor. Kano says a hygiene factor priced as a premium product collapses. The universality that *looks* like a green light is actually the tell that it belongs in the platform, free.

**Council summary (blunt):** Of ten voices, **one (Lean/Discovery) refuses to score and that refusal is correct**; **three (JTBD, Porter-on-partners, Service Blueprint) deliver existential kills** (wrong product category, poisons partners, hardest data problem in the portfolio); the rest each find E strictly *harder* than A on the same evidence. **No voice finds a reason E should be built now.** Several find reasons it should be *researched* — which is a different sentence.

---

## 2. WHAT WE HAVEN'T THOUGHT ABOUT — the holes not on the pinned list

*The most valuable section. Each hole gets a probability in the JSON (§3).*

### H-E1 — This is a finance product, not an ops product (the existential hole)
The pinned list asks *"is it ACP's job?"* but frames it as one open question among many. It is not — it is **the** question, and the evidence tilts toward *no*. UC-B's own words — *"active vs billed"* — describe **accounts-payable/receivable reconciliation**, a finance function. The buyer for that is the **owner/controller**, not ops; the tools that own it are the **PSA and the accounting system**. Every other ACP offering serves the ops/security buyer with ops/security data N-able largely owns. E serves a **different buyer, with financial data N-able does not own, in a category N-able does not play in.** If E is real, it may be a *different company's product* — or a partnership with a PSA/accounting vendor, not a solo N-able build. **This hole is upstream of everything else in this document.** `[? — the existential question, unresolved]`

### H-E2 — The accuracy asymmetry: a wrong number here is a wrong invoice
A's H1 (wrong number in a boardroom) is embarrassing and account-risking. E's version is **worse in kind, not degree.** A reconciliation product exists to tell the MSP "you are being overbilled by \$X" or "you are underbilling this client by \$Y." If it's wrong: the MSP disputes a bill that was correct (relationship damage with a vendor/partner), or bills a client for money it doesn't owe (**potential fraud, clawback, regulatory exposure**), or eats a real overbill it was told didn't exist. The **tolerance for error in a money product is near zero**, and the findings JSON shows the project *already produced* an unreconcilable money figure (CLAIM-MATH-DISPUTED-001). **The accuracy engineering cost to make E safe is far higher than any other offering, against the lowest, most-conditional WTP anchor in the set.** `[A] — high-consequence, unmodeled.`

### H-E3 — E cannibalizes / collides with the partners ACP needs (channel conflict)
Not modeled anywhere: E competes directly with **PSA and billing vendors** — the exact partners named as *must-integrate* (HaloPSA) and as marketplace Vendor-Experts in B's strategy. PSA-software TAM is **$16.92B** `[CS: MEDIUM]`, dwarfing ACP's own TAM. Building E means N-able tells Autotask/ConnectWise/Halo *"we now do your billing-intelligence job."* **That can sour the integrations A and B are built on.** E is the one offering whose success could *subtract* from the portfolio's whole. `[? — partner-strategy conflict, unexamined]`

### H-E4 — The demand may be idiosyncratic / a survey-abstention artifact
Two of E's champions (Jonathan, Derek) are the **same two names** who anchor high-WTP anecdotes elsewhere and self-build — i.e. **atypical, technically sophisticated operators**, not the median MSP. UC-B's *"ninety percent"* is a **show-of-hands** figure `[CS: MEDIUM]`, the softest instrument in the corpus (no forced-rank, no independent-n survey, unlike QBR's three instruments). E's demand has **never faced a forced-rank tradeoff** — the one test that separates "nice if free" from "would trade budget for." When a pain is universal *and* has never survived a tradeoff, the universality is suspect. `[A] — demand shape untested under scarcity.`

### H-E5 — Data egress is A's H2, financially compounded
E requires pulling **billing, license, contract, and invoice data** from every tool — including finance/accounting systems and the competing PSA. This is A's cross-vendor egress problem (H2, ~0.45) **with strictly higher legal weight** (financial data, contractual terms, possibly PII in invoices) **and a hostile data-owner** (the PSA competitor has no incentive to grant billing-data egress to a rival). **The one capability E is entirely about — cross-tool visibility into money — sits behind the least-obtainable data in the portfolio.** `[?] — likely worse than A's H2, unexamined.`

### H-E6 — Buyer/user ambiguity fractures the whole spec
The pinned list flags *"buyer unknown — owner or ops?"* The deeper hole: **the answer changes the entire product.** If the buyer is the **owner (money view)**, E is a finance dashboard with an accounting-grade bar. If it's **ops (tools view)**, E is a cross-tool status assistant (closer to user[82]'s "beyond RMM" ask) with a lower accuracy bar and a different value prop. **These are two different products with two different accuracy requirements, two different WTPs, and two different competitors.** You cannot spec E without answering this, and it is unanswered. `[?] — spec-fracturing, unresolved.`

### H-E7 — "AI bookkeeper" invites a trust/liability frame E can't yet carry
Naming the thing an **"AI bookkeeper"** (Derek's own words) sets a client expectation of **bookkeeping-grade reliability** — a regulated, professional-standard frame. If E is marketed near that word, it inherits **professional-liability and possibly financial-regulatory** expectations without the controls a bookkeeping product carries. The framing writes a check the current build cannot cash. `[A] — framing-risk, unexamined.`

### H-E8 — Pricing/metering is undecided even for the offerings that ARE being built
market[16]: pricing is an **open workstream** (Gaurav Bahl), with an unresolved *"Usage Logic Decision"* and *"First-In Usage Build"* — the metering model **is not decided for A or B.** E, a still-more-speculative offering with a harder cost base (accuracy) and a softer WTP anchor, has **no pricing path at all** in a portfolio that hasn't priced its lead offerings. Sequencing E's monetization is premature by two steps. `[? — depends on an upstream decision not yet made]`

---

## 3. MONTE CARLO READ

*(§3 assumptions JSON is the companion `idea-chess-offering-e.assumptions.json`.)*

**Naive survival = product of REQUIRED probabilities.** The `required: true` gates (E cannot exist as an ACP offering without each):

| id | label | p |
|---|---|---|
| E1 | It is ACP's job at all (not a finance/PSA product) | 0.25 |
| E2 | Real, tradeoff-tested demand (survives forced-rank, not just show-of-hands) | 0.45 |
| E5 | Cross-tool *financial* data egress is legally/contractually obtainable | 0.35 |
| E3 | Doesn't fatally conflict with PSA/billing partners ACP needs | 0.45 |
| E6 | A single buyer/user can be identified (product doesn't fracture) | 0.55 |
| E2b | Money-grade accuracy is achievable at a WTP that funds it | 0.35 |

**Naive product:** 0.25 × 0.45 × 0.35 × 0.45 × 0.55 × 0.35 ≈ **0.0034 → ~0.34%.**

Read honestly: **as a product of required gates, E as an *offering* is a near-certain sink — and it sinks a full order lower than A's ~0.6%, from the same math.** But the number is doing something specific here: it is **dominated by two gates, not six.** E1 (is-it-ACP's-job, 0.25) and E2 (real tradeoff-tested demand, 0.45) together carry the sink. If you *only* multiplied those two you'd get ~0.11 — everything else is a second-order haircut. **The math is not saying "E is bad." It is saying: E is entirely a bet on two unresolved upstream questions, and until those are answered the four downstream gates aren't even worth pricing.**

**Independence caveat (honest):** these are *not* independent, and the correlations run the wrong way for E. E1 (is-it-our-job) and E3 (partner conflict) are the **same fact from two angles** — if reconciliation is the PSA's job, then building it both fails E1 *and* triggers E3. E5 (financial egress) and E3 (partner conflict) are correlated — the PSA that won't grant billing-data egress is the same partner you're conflicting with. So the true survival is somewhat higher than 0.34% because the gates cluster into **one knot: "does the money-reconciliation job, and the money-reconciliation data, belong to N-able or to the PSA/finance layer?"** Answer that one question and E1, E3, and E5 all resolve together — up or down.

### Sensitivity ranking — the ONE study to run first
1. **E1 — is-it-ACP's-job.** `Test first.` This is the master gate; it resolves E3 and E5 with it. **The study: a discovery interview series (8–10 MSPs, mixed owner + ops) that asks two things — (a) whose job is cross-tool money reconciliation in your shop today, and what tool/person owns it; (b) would you buy this from your *platform vendor* (N-able) or expect it from your *PSA/accounting* system.** If the answer is "the PSA / our accountant," E is not an ACP offering — it's a partnership or a pass. **Cheapest, most upstream, highest kill-count.**
2. **E2 — tradeoff-tested demand.** Put reconciliation into a **forced-rank** against the other use cases (the instrument it has never faced). Show-of-hands universality is not the same as budget-priority. Fold into the same interview series as E1.
3. **E5 — financial-data egress.** A legal/DPA read + one PSA-ToS read (Autotask or ConnectWise) on whether N-able may extract billing/license data. Only worth running **if E1 comes back "yes, it's ours."**

**The first action is not a build and not a spec — it is one discovery study whose primary question is "is this even ours to build."** No other offering in the portfolio has *that* as its first gate. That difference is the whole point of this murder board.

---

## 4. OREGON TRAIL — where E dies, by stage

**Unlike A, E's most likely death is at a stage *before* BUILD.** Frame it as a pre-build gate the wagon has to pass just to *join the trail*.

### GATE 0 — "SHOULD WE EVEN DO THIS" (pre-build)
- **The fork before the trailhead (E1 + E2).** Every other offering starts the Oregon Trail at BUILD. **E has to survive a gate to reach the trailhead at all:** is cross-tool money reconciliation N-able's job, and is the demand real under a tradeoff? **This is where E most likely dies — and it dies before a dollar of build spend, which is the *good* death.** The mercy of E is that its most-probable failure is also its cheapest to discover: one discovery study, days not quarters.

### BUILD
- **Ford 1 — Financial-data egress (E5).** A's washed-out normalization ford, deeper: now the river is billing/invoice/contract data from a PSA that competes with you. Likely uncrossable without a partnership.
- **Ford 2 — Money-grade accuracy engine (E2b).** Building a reconciliation engine whose errors are *invoices* demands validation the flat ~$30/user WTP cannot fund.

### LAUNCH
- **Ford 3 — Buyer fracture (E6).** Launch to the owner or to ops? Pick wrong and the product misses its buyer; the two products have different accuracy bars and different competitors.
- **Ford 4 — Partner channel conflict (E3).** The moment E ships, the PSA partners A and B depend on learn N-able entered their category.

### ADOPT / DEFEND
- **Ford 5 — DIY + commoditization (market[2], Christensen).** The sophisticated MSPs already built it (Claude+Make); the PSA vendors can bundle it free from inside the billing data. Even a launched E gets squeezed from both ends.

### Verdict — the stage E most likely dies
**E dies at GATE 0 — "should we even do this" — before BUILD.** That is the correct framing and the honest one: E is not a wagon that fails to ford a river; it's a wagon that **may not belong on this trail.** If GATE 0 comes back "yes, it's ours and demand survives a tradeoff," *then* E enters at BUILD and faces the same (worse) fords A does. But the murder board's single most useful output is this: **do not spec E, do not build E, do not price E. Run the one discovery study that answers "is this ACP's job." Everything else is downstream of an answer we do not have.**

---

## READABLE ASSUMPTION TABLE (companion to §3 JSON)

| id | label | p | required | stage | evidence |
|---|---|---|---|---|---|
| E1 | It is ACP's job at all (not a finance/PSA product) | 0.25 | ✔ | gate-0 | [?] — the existential question; UC-B "active vs billed" reads as finance/PSA |
| E2 | Demand survives a forced-rank tradeoff | 0.45 | ✔ | gate-0 | [A]/[R] CS:MEDIUM — "90% of hands" show-of-hands only; never forced-ranked |
| E2b | Money-grade accuracy achievable at fundable WTP | 0.35 | ✔ | build | [A] — accuracy bar highest in portfolio, WTP lowest; CLAIM-MATH-DISPUTED-001 omen |
| E3 | No fatal PSA/billing partner conflict | 0.45 | ✔ | launch | [?] — PSA TAM $16.92B; competes with must-integrate partners |
| E4 | Demand is not idiosyncratic to 2 self-builders | 0.50 | ✘ | gate-0 | [A] — Jonathan/Derek atypical; Derek self-builds |
| E5 | Cross-tool financial data egress obtainable | 0.35 | ✔ | build | [?] — A's H2 compounded; hostile data-owner (PSA) |
| E6 | A single buyer/user identifiable (no fracture) | 0.55 | ✔ | launch | [?] — owner(money) vs ops(tools) = two products |
| E7 | "AI bookkeeper" frame doesn't over-promise reliability | 0.55 | ✘ | launch | [A] — framing invites bookkeeping-grade liability |
| E8 | A pricing/metering path exists | 0.45 | ✘ | build | [?] — metering undecided even for A/B (market[16]) |
| E9 | Not commoditized by PSA bundling / DIY | 0.45 | ✘ | defend | [R]/[A] — market[2] DIY already exists; PSA can bundle free |
| E10 | UC-B is not already the right-sized version of this | 0.40 | ✘ | gate-0 | [R] — UC-B License & Cost Optimization already scoped, narrower |

**Required gates (E cannot exist as an ACP offering without):** E1, E2, E2b, E3, E5, E6. Naive product ≈ **0.34%**, dominated by E1 and E2 (independence caveat above: E1/E3/E5 collapse into one "whose job is it" knot).

---

## THE KILL, IN ONE PARAGRAPH

Offering E is the portfolio's most speculative bet and the only one whose first gate is not "can we build it" but **"is it ours to build."** The pain is real and recurs across more voices than the brief credited — but every structural fact points away from ACP: it is a **finance job** (UC-B's *"active vs billed"*), its data lives in the **PSA and accounting systems N-able wants as partners** (PSA TAM $16.92B, larger than all of ACP's), its accuracy bar is **money-grade** (a wrong number here is a wrong *invoice* — and the project has *already* shipped one unreconcilable money figure, CLAIM-MATH-DISPUTED-001), it was **never forced-ranked**, its buyer is **unknown and buyer-choice fractures the product into two**, and a right-sized version **already exists as UC-B**. Six required gates multiply to a ~0.34% naive sink — an order below A — but the number is honest about what it means: E is **entirely a bet on two upstream questions** (is-it-our-job, is-the-demand-real-under-tradeoff) that no study has asked. **Do not spec E. Do not build E. Do not price E.** Run one discovery study — 8–10 MSPs, owner and ops — that asks whether cross-tool money reconciliation is N-able's job or the PSA's, and whether the demand survives a forced-rank. If it comes back "the PSA's," E is a partnership or a pass, not an offering. **E's most likely death is the cheapest one in the portfolio to discover — and discovering it costs days, not a build.**

*Grep-verified evidence (47% rule): UC-B "License & Cost Optimization" + "ninety percent of the hands" + ~$30/user (findings user[78]) · Julian "reach into billing" (user[64]) · Sketch/Ditty "beyond RMM" (user[82]) · DIY Claude+Make control plane (market[2]) · pricing/metering undecided (market[16]) · PSA-software TAM $16.92B (acp-tam-control-plane.md, Mordor, CS:MEDIUM) · CLAIM-MATH-DISPUTED-001 $33,600/mo does-not-reconcile (findings, DO-NOT-CITE honored) · E never in ranked six/eight, TAM [?], buyer [?], WTP [?] (offerings doc §E). All required-gate probabilities are [A] estimates by the murder board, tagged in the JSON.*
