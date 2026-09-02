# Board print-notes — decisions from the one-at-a-time pass

Running log of Beth's curation decisions, to apply when the dashboard is printed. Each bet: **clean assumption** (the row) · **status** · **dropdown** (details, kept off the row) · **sources** (links to add).

Convention agreed: keep the assumption statement clean and single; push all nuance into the expand/dropdown; add source links when available.

---

## CONSOLIDATED BOARD (merges confirmed 2026-09-02) — 15 raw bets → 9 + 1 meta

Confirmed folds: **T2 (WTP), M5 (chokepoint), T5 (OS/one-job framing) → 2b** · **M1 (switch/fire), M3 (whose agency) → T1** · **M6 (runbook), T7 (does it work) → 2a**.

| # | Bet (clean assumption) | absorbs | status |
|---|---|---|---|
| 1 | **Data / interpretation** — ACP can interpret iffy, cross-vendor data into trustworthy QBR conclusions | T3 | partially answered ✎ |
| 2a | **We can build it as spec'd** — create & maintain the runbooks the thing runs on | T7, M6 | leaning no ✎ |
| 2b | **We can build a sustainable business off this** — pricing model is the deciding lever | T2, M5, T5 | open, mostly [A] ✎ |
| 3 | **Real demand** — the job is hire-worthy, for the operator not just the buyer | T1, M1, M3 | pending |
| 4 | **Right target** — nonconsumer or incumbent's customer? | M4 | pending |
| 5 | **Headless vs visible** — legit strategy or structural defect? | T4 | pending |
| 6 | **Earned autonomy is graspable** — comprehension without explanation | T6 | pending |
| 7 | **Failure path** — what happens when the AI is wrong in front of the client | M2 | pending |
| 8 | **Time-to-value** — 15/20-min achievable and the right bar | T8 | pending |
| meta | **Provenance** — is the research base sound (mis-ranks all else if not) | T9 | pending |

✎ = discussed in the one-at-a-time pass. **Remaining pass:** 3 (demand), 4 (target), 5 (headless), 6 (autonomy), 7 (failure path), 8 (time), meta (provenance).

---

## T3 · Data — the interpretation bet  ·  status: PARTIALLY ANSWERED

**Clean assumption (row):**
> ACP can interpret iffy, cross-vendor data into trustworthy QBR conclusions — flagging what's uncertain, not asserting what's wrong.

**Status:** Partially answered — *access/pull* looks feasible; **interpretation** (drawing the right meaning) and **graceful handling of iffy data** — the actual bet — are not yet answered.

_(Framing chosen: the bet is "we handle it NOT being good enough, gracefully" — not "the data will be good enough." The latter is already contradicted, so it's a loser to bet on.)_

**Two distinct risks inside the interpret step (don't merge them):**
1. **Gaps** — data is missing/incomplete (350 servers → 9). Failure = a hole. Handled by *flagging* it.
2. **Interpretation** — data is present but the *conclusion drawn is wrong* ("environment was quiet" when alerts were miscategorized). Failure = a confident, plausible, client-facing wrong claim, invisible until the client finds it. This is the one Beth named as tricky, and it's where N-able is *vouching* for the meaning. Sourced: narration-hub error propagation, [acp-qbr-analyst brief Failure Mode 5](briefs/acp-qbr-analyst.brief.md).

**Dropdown (details, off the row):**
- **Two modes, different risk.** If the **customer pulls + interprets with their own AI**, it's their data and their judgment call — N-able's exposure is low. If **N-able interprets**, N-able is vouching for a number built on iffy data — that's the tricky, unanswered half.
- **Devs vs Lewis answer different questions.** Devs say the *pull/connect* is doable (per-instance MCP wiring). Lewis was hand-wavy on the harder half — reliably making sense of what comes back. One "yes" doesn't cover the other.
- **Iffy data is the crux, not an edge case.** Betting on clean data is betting on a loser (normalization ~30% vs 75% bar; 350 servers returned 9; data accuracy = the #1 adoption blocker). The survivable bet is graceful handling: flag the gaps (e.g. "3 devices missing backup") rather than ship wrong numbers as fact.
- **Native de-risks; cross-vendor doesn't.** On N-able's own stack the superpower thesis holds ("Measured" tier defensible day one). Cross-vendor is where the ~40% DPA/egress wall + normalization gap live.
- **Technica = a native-case pilot, not a cross-vendor test.** N-central-heavy stack tests "can we do it on home turf" with real data; it does not test the cross-vendor wall.
- **The twist:** interpreting is the moat *and* the liability. If customers self-interpret, N-able stops being the chokepoint (ties to M5) — you can't give interpretation away to de-risk the legal side without giving away the reason to buy.

**Sources (links):**
- Iffy-data evidence — [EV-AX11 / EV-AX12](scout_input/01-acp-axial-evidence-extraction.md) (normalization ~30%/75%; 350→9; #1 blocker)
- Egress/DPA wall — [EV-AB09 / EV-AB10](crosswalk/raw/evidence-field-AB-WM.md)
- BYOK path (control plane not in inference path) — [H22](crosswalk/raw/claims-headless-H.md)
- Superpower / native-only "Measured" — [SP02 / SP04](crosswalk/raw/claims-superpower-deck-SP.md)
- Per-instance MCP wiring (devs' "yes") — [EV-WM01](crosswalk/raw/evidence-field-AB-WM.md)
- Technica native stack — [harness-ebr-v2 brief](briefs/harness-ebr-v2-2026-08-13.brief.md)
- _[TODO: Lewis Pope "we don't enable QBRs" quote — EV-AB06, add runbooks-transcript link when located]_

---

## #2 (was T7) · splits into TWO assumptions — Beth's call

### 2a · We can build it as spec'd  ·  status: LEANING NO / NOT YET

**Clean assumption (row):**
> We can build it as spec'd.

**Status:** Leaning no — actively contradicted by build-state; the risk is the *spec itself*, not just whether engineers can code it.

**Dropdown:**
- Open + blocking questions in the spec as written: exact ConnectWise API scopes unknown; whether a qualifying AI Expert even exists at launch; on-prem support undecided.
- Internal contradictions: Expert "executes" vs "advisory-only"; composability claimed then removed at v0.1.1; management-MCP auth model still an open question.
- Honest build-state underneath: QBR Advisor 0/40 tasks ("the name exists; the thing does not"); Value Ledger renders $0 (built but no producer wired); governance is audit-after, not control.
- **The heart of this bet is the living-runbook problem (was M6 — now folded into 2, Beth's call).** "Can we build it as spec'd" *is* "can we create and maintain the runbooks" — the substrate everything runs on. The deck: "the answer everyone agrees on and nobody actually has" — create from tacit knowledge, keep current against drift, close the loop from incidents. Six failure modes (go stale · never existed · loop never closes · lost at 2am · cold start · blind to drift). **Dual nature: the top kill-risk if unsolved, the real differentiator if solved.** Sourced [SP16–SP19](crosswalk/raw/claims-superpower-deck-SP.md).
- Contains the "does it work *today*" honesty note: don't demo what renders $0 as if it works.

_Board bookkeeping: M6 retired as a standalone row — absorbed into #2 (2a). Kill-order shifts up by one below it._

**Sources:** [EV-AB03 / EV-AB12 / EV-AB14](crosswalk/raw/evidence-field-AB-WM.md) · [I03 / I11 / I13 / I24](crosswalk/raw/claims-specs-arch-infra-usecases.md) · [S55 / S56 / S57](crosswalk/raw/claims-specs-arch-infra-usecases.md) · [SP16–SP19 runbook problem](crosswalk/raw/claims-superpower-deck-SP.md)

**Test for 2a — the Technica recreation (Beth: "Technica + us, use whatever makes sense" — pragmatic hybrid, human-in-loop):**
- **How close, precisely** (from [harness-ebr-v2 brief](briefs/harness-ebr-v2-2026-08-13.brief.md), 8 tabs / 27 parts):
  - **Fully automated recreation = far.** The core innovation, the **cycle-memory notebook** (Parts 8, 27), does not exist — no notebook, no diff against last cycle, no continuity (the whole point).
  - **~6 of 8 tabs need connectors not yet built:** HaloPSA/PSA (15, 25), Cloud Capsule + Inforcer (16, 20), uSecure (17), N-central + reconciliation (18), M365 (20, 24).
  - **Some parts have no source in any tool:** warranty/end-of-support (13, 19), what-went-wrong (14), sector signals (23), referrals (26) — human-only.
  - Today normalization is entirely manual ("pipes it in, copy-paste"). Regime is `PROCEED-FLAGGED` (build on imperfect evidence, don't claim validation).
- **The cheap real test:** run the Technica EBR **concierge-style** — David/Vanessa + N-able assemble it, ACP provides the notebook + structure — and measure **how much ACP carries vs. how much still needs David.** Tests 2a without waiting on six connectors.
- **Mode decision (applies to T3 too):** "Technica + us, whatever makes sense" — pragmatic hybrid, not purist customer-alone or native-only.
- **Technica is the first pancake, not the plan (Beth).** Assume MORE MSPs after — Technica is one rough learning case, not the product shape. This *de-risks n=1* (we don't freeze Technica; also retires the white-label #4 objection — #1/#2 still hold) but *sharpens 2a's core difficulty*: more shops = more heterogeneous stacks = more of the T3 connector/interpretation wall. So the real test question isn't "can we rebuild Technica's EBR" — it's **"how much of what we learn on shop #1 carries to shop #2 vs. resets to zero."** That carry-over rate is the actual 2a signal, and it's the lean-startup loop in action (pancake → learn → next shop → refine).

### 2b · We can build a sustainable business off of this  ·  status: OPEN — mostly [A]

**Clean assumption (row):** *(Beth reframed from "people will buy the spec'd version" — more precise: needs $ estimates + upside)*
> We can build a sustainable business off of this.

**Status:** Open, and the money is mostly scaffolding — nearly every figure is [A], single-source, or self-contradictory. The load-bearing *undecided* lever is the **pricing model**, not the market size.

**The shape of the money (dropdown):**
- **Floor vs ceiling fork:** per-tech/tools model ≈ **$1B floor**; share-of-services model ≈ **$4B+ ceiling**. Both [A] — price/capture inputs unsourced; the concept brief flags the $4.3B as "directional only, not a citable source."
- **The pricing-model choice IS the lever** — it alone decides which universe (tools ~$1B vs services ~$4B). Undecided.
- **Billing mechanism inside vCIO/vCISO:** flat-fee-by-practice-size survives ~14%; revenue-share ~0.02% — a 700× swing. *(Cited to a file not read directly — verify before quoting.)*
- **Survival scores:** ambitious/OS version ~5%; tactical QBR-only ~45–50%, ~$5M scale. Package floors all <14% except vCIO/vCISO packaging (~14%).
- **The board contradicts itself:** $15M ARR / $2,200/mo on one slide, $5M topline "back of envelope" the next. The contradiction *is* the finding.
- **WTP anchors are all single Guidepoint voices** — Derek $300/mo, Vikram 10–15% of SOC spend, Kenneth $300/user "nuts." Do not project.
- (Still-true spec-fit sub-note: the version was spec'd off an incomplete base — 8 of 20 interviews, N-UEM catalog mislabeled — leading with Ticket Triage while demand ranks QBR #1, headless while partners want a bookmarkable app.)
- **Absorbs T5 (OS / one-job framing).** "Which business shape" *is* the pricing fork: a narrow QBR tool (~$1B, ~45–50% survival) vs. the expansive "one operating system / one department" LEAP (~$4B ceiling, ~5% survival). Same decision, two vocabularies — the framing choice and the pricing-model choice are the same lever. Sourced [SP05 LEAP](crosswalk/raw/claims-superpower-deck-SP.md) · [EV-AB15 survival](crosswalk/raw/evidence-field-AB-WM.md).
- **Absorbs M5 (chokepoint/home-field):** the superpower thesis (first-party stack) is the asserted answer — native-only. **Absorbs T2 (WTP):** the single-Guidepoint anchors above.

**What makes it bigger (upside levers, dropdown):**
- Pricing-model choice (per-tech → share-of-services) · flat-fee vCIO/vCISO packaging · buy/partner the normalization moat (**Thread**: 725+ MSP partners, ConnectWise/Autotask/HaloPSA integrated — unvetted deal) · vendor marketplace + take-rate (cold-start, no committed supply) · installed-base cross-sell (number unverified) · reframe Control Plane as flagship · Candidate 1's certification/insurance up-market escape (zero buyer validation).
- Every lever is [A]/unvetted. **A menu of bets, not a plan.**

**Considered → rejected: white-label Technica** *(Beth's call — language kept as-is, not softened)*
- **#1 · It's not yours to take.** Technica's EBR is David and Vanessa's hard-won expertise, shared as *research* — not a product to resell to other MSPs, possibly their own competitors. Value extraction, not creation — the §10b anti-pattern.
- **#2 · Ships the skeleton without the muscle.** The EBR works because their *judgment* fills the parts no tool can. White-label the template and you sell the frame minus the thing that made it good — and commoditize the bespoke competence MSPs sell as their own. The deck's rule: "MSP owns the voice." A white-labeled Technica is nobody's voice.
- (Also true but survivable: #3 borrows a moat you don't own · #4 bakes n=1 into the product · #5 doesn't build the missing connectors.)
- **#1 and #2 are the ones with teeth** — why it's *wrong*, not just *hard*.

**Sources:** [monetary estimates + levers](scout_input/01-acp-monetary-estimates-and-bigger-levers.md) · [TAM fork / pricing](briefs/acp-concept-brief-2026-07-20.md) · [board ARR contradiction + survival](briefs/acp-problem-statement-2026-07-28.md) · [spec choices SP08/EV-AX16](crosswalk/raw/claims-superpower-deck-SP.md) · white-label reasoning per CLAUDE.md §10b
