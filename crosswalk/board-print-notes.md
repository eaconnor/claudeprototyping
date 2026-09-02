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
