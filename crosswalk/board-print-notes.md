# Board print-notes — decisions from the one-at-a-time pass

Running log of Beth's curation decisions, to apply when the dashboard is printed. Each bet: **clean assumption** (the row) · **status** · **dropdown** (details, kept off the row) · **sources** (links to add).

Convention agreed: keep the assumption statement clean and single; push all nuance into the expand/dropdown; add source links when available.

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
- Hardest single piece: **M6, the living-runbook problem** — the substrate the whole spec assumes, and "nobody has solved" creating/maintaining runbooks from tacit knowledge.
- Contains the "does it work *today*" honesty note: don't demo what renders $0 as if it works.

**Sources:** [EV-AB03 / EV-AB12 / EV-AB14](crosswalk/raw/evidence-field-AB-WM.md) · [I03 / I11 / I13 / I24](crosswalk/raw/claims-specs-arch-infra-usecases.md) · [S55 / S56 / S57](crosswalk/raw/claims-specs-arch-infra-usecases.md) · [SP16–SP19 runbook problem](crosswalk/raw/claims-superpower-deck-SP.md)

**Test for 2a — the Technica recreation (Beth: "Technica + us, use whatever makes sense" — pragmatic hybrid, human-in-loop):**
- **How close, precisely** (from [harness-ebr-v2 brief](briefs/harness-ebr-v2-2026-08-13.brief.md), 8 tabs / 27 parts):
  - **Fully automated recreation = far.** The core innovation, the **cycle-memory notebook** (Parts 8, 27), does not exist — no notebook, no diff against last cycle, no continuity (the whole point).
  - **~6 of 8 tabs need connectors not yet built:** HaloPSA/PSA (15, 25), Cloud Capsule + Inforcer (16, 20), uSecure (17), N-central + reconciliation (18), M365 (20, 24).
  - **Some parts have no source in any tool:** warranty/end-of-support (13, 19), what-went-wrong (14), sector signals (23), referrals (26) — human-only.
  - Today normalization is entirely manual ("pipes it in, copy-paste"). Regime is `PROCEED-FLAGGED` (build on imperfect evidence, don't claim validation).
- **The cheap real test:** run the Technica EBR **concierge-style** — David/Vanessa + N-able assemble it, ACP provides the notebook + structure — and measure **how much ACP carries vs. how much still needs David.** Tests 2a without waiting on six connectors.
- **Mode decision (applies to T3 too):** "Technica + us, whatever makes sense" — pragmatic hybrid, not purist customer-alone or native-only.

### 2b · People will buy the version we spec'd  ·  status: OPEN

**Clean assumption (row):**
> People will buy the version we've spec'd.

**Status:** Open — untested; distinct from "is there demand at all" (T1). Demand for the *job* can be real while the *spec'd realization* misses.

**Dropdown:**
- Not T1. T1 = is there demand for the job. 2b = does our specific spec'd version capture it.
- Spec choices the field questions: leading go-live with **Ticket Triage** while demand ranks **QBR #1** (S48 vs SP08); **headless** while 22 partners want a bookmarkable app (EV-AX16); the specific locked autonomy model.
- The version was spec'd off an incomplete, buyer-skewed base (only 8 of 20 interviews done; N-UEM catalog mislabeled) — so "the version" encodes bets the research didn't settle.

**Sources:** [S48 spec choice](crosswalk/raw/claims-specs-arch-infra-usecases.md) · [SP08 QBR#1 / SP12 8-of-20](crosswalk/raw/claims-superpower-deck-SP.md) · [EV-AX16 bookmarkable-app](scout_input/01-acp-axial-evidence-extraction.md) · [U-EV04/05 sample](crosswalk/raw/claims-specs-arch-infra-usecases.md)
