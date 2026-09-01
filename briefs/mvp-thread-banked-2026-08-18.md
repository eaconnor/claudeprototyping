---
title: MVP Thread — banked from Council-44 abductive coding
type: working-note
status: BANKED — feeds row-6 MVP pass (not yet a brief)
generated: 2026-08-18
source: abductive coding pass, rows 6/8/9/10/12/13/14
---

# MVP Thread — banked 2026-08-18

Beth's row-6 code: "break down MVP and distill functionality for getting to this level of revenue."
These are the load-bearing findings that pass will draw on. Not synthesized into a brief yet.

## The spine
- **The data-trust / normalize agent is the MVP spine**, not the QBR coworker. Product IS a data-hygiene tool. Dead tenet: no data trust → no product trust. (rows 8, 76; see memory `project-data-trust-tenet`)
- Candidate shape: **Bradley-type governor / attestation layer**, not a domain coworker. Maps to Nicole's "governor-of-all-agents" BIG QUESTION + unwritten G4 Action Proxy (row 85).
- Requires **negotiating NONGOAL-002**: distinguish orchestration (banned) from governance/attestation (the product).

## OPEN — not connected yet, Beth's own words (2026-08-19, rows 47 & 50)

**Row 47:** "in that MVP doc we need to work out this because I haven't connected the dots for myself yet" — referring to the direct, unreconciled tension between the deck's capstone thesis ("these aren't six products, it's one job," QBR as capstone, others feed it) and the canonical spec's NONGOAL-002 (coworker-to-coworker orchestration banned). This is the same tension the "negotiating NONGOAL-002" line above gestures at, but Beth flagged explicitly that the dots aren't connected for her yet — don't treat that bullet as resolved.

**Row 50:** "is it the data moat or the runbooks, and how are they dependent on each other?" — Dunlop (Stefanie-followup transcript, row 50): "QBR coworker is our most requested use case... our IP is not the platform itself but the runbooks." Sits right against this file's own spine claim (data-trust/normalization IS the moat, rows 8/76) and against row 8's Lewis Pope finding ("the data moat is short-lived... trivial to copy"). Three candidate assets have been named across this pass — data/normalization, runbooks/tacit judgment (Dunlop, this row), and distribution (row 11's four-lock stack) — and nobody has worked out whether they're independent moats, one is load-bearing and the others are decoration, or they're mutually dependent (e.g., runbooks are only defensible *because* the data-trust layer makes them reliably applicable across a normalized dataset). Real unresolved question, not answered here.

## What's already half-built (consolidate, don't invent)
- DIV-004 refusal to ship un-triangulated time-saved number (row 44) = a Bradley refusal.
- Four-tier Measured/Benchmarked/Estimated/Unverified + hard gate (row 90) = confidence tags + gate.
- Append-only immutable Value Ledger FR-006/010 = audit-trail asset (parity, not moat; row 9).

## The P0 risk that is also the differentiator
- **Cross-vendor normalization = zero code, "Not started"** (idea-chess-build). P0 kill-risk: "if normalization fails, the whole thing fails."
- Nobody else has it — "holy grail, nobody has it" (row 74). N-able edge = **normalize from INSIDE** the source (N-central/Cove/Adlumin) vs. competitors' brittle third-party APIs.
- N-able owns 3 of 8 EBR data pulls; other 5 (Halo PSA, M365, phish-sim, AD/IdP, compliance) not controlled — Halo reauth fragility real (row 43).

## Positioning discipline for the MVP
- **Wedge, not platform.** QBR/EBR is the wedge (day-one keepable promise); platform is earned later. Killed Candidate 3 (~5% survival) = pricing/positioning as platform before earning it (rows 9, 12).
- **The product is the ritual, not the deck** — 26 service moments / 7 stages; report is the prop.
- **Job-shop vs production-line (row 14):** deck-gen automates the production-line half (Agenda, Asset Review, KPIs). The value rows — Business Priorities, Tech Budget, Referrals — are brains-work/job-shop. "Deck in seconds" makes the corpus's top failure mode (show output, skip translation) *easier* to commit. Do NOT race deck-gen (row 14).

## Co-owned decisions (not Beth-solo)
- Build cross-stack normalization now vs. buy parity (OEM/M&A) — row 11, row 17.
- Say the job-shop framing out loud as positioning — row 14.
- Negotiate NONGOAL-002 — with Nicole (governor question is hers to co-own).

## Phased plan — setting expectations for Nicole (added 2026-08-19, row 37)

Beth's row 37 code: "we probably need to think about phased development / five-step business plan and the reality of what we are doing, to set up expectations for our company/Nicole so choices can be made." Grounded in scores already in the corpus — not invented here, assembled:

- **Two independent survival passes disagree on WHICH near-term bet wins, and that disagreement is the plan's shape, not noise to resolve:**
  - `qbr-ebr-council-testimony-2026-07-30.md` (row 37 itself): Package 3 (N-able Native) ≈0.9% naive survival; Package 5 (Cross-Vendor) ≈0.43–0.64% naive — but the fleet synthesis independently judged Package 5 "most winnable" strategically. Near-term-viable ≠ long-term-winnable, named explicitly as unresolved tension.
  - `acp-problem-statement-2026-07-28.md` (row 7): ambitious control-plane version ≈5% survival ($2,200/mo, $15M ARR Yr3); QBR-only version ≈45-50% survival "in some viable form" (~$5M scale, a feature in the stack); third reframe (agentic business OS) unscored, gated on two human decisions.
  - Read together: **the smaller, native, QBR-only bet is the one with real near-term survival odds (45-50%, not <1%)** — the ambitious and cross-vendor bets both score under 5% naive in every pass that's touched them.

- **Candidate phase structure (ingredients, not a decided plan):**
  1. **Phase 0 — native wedge.** QBR/EBR coworker, N-able-owned data only (N-central/Cove/Adlumin — 3 of 8 pulls). Matches the ≈45-50% survival "feature in the stack" version. This is what's actually buildable today without resolving the cross-vendor legal question (row 38's Q1) or the NONGOAL-002 negotiation.
  2. **Phase 1 — data-trust spine.** Build the data-trust/normalize governor (this file's own thesis, rows 8/76) against the 5 N-able owns, so the MVP's core differentiator (trust discipline, not deck-gen) is real before it's asked to scale to sources N-able doesn't control.
  3. **Phase 2 — cross-vendor expansion.** Gated on: (a) Q1 legal read on cross-vendor data rights (row 38, no resolution path or timeline named), (b) NONGOAL-002 negotiated (orchestration vs. governance/attestation, this file's own open item), (c) build-vs-buy decision on normalization (Gradient/Liongard/Narmada/BrightGauge — row 11/17, none of the four verified candidates closes the gap outright; see `scout_input/13-nable-tap-partnership-landscape.md`). This is the "most winnable" long-term bet (Package 5) but scores worst near-term — it should not be promised on Phase 0's timeline.

- **What this is FOR, per Beth:** not a roadmap to ship as-is — a way to tell Nicole (and the company) what's real now vs. earned later, so choices get made against actual survival evidence instead of against the ambition of the pitch. Echoes the Candidate 3 kill lesson already in this corpus (row 9 context): pricing/positioning ahead of what's earned is what killed the ~5% version.

- **Not yet resolved — needs Beth/Nicole:** whether Phase 2's gate is a hard sequence (must finish Phase 1 first) or parallel-track (legal/NONGOAL-002 negotiated while Phase 0 ships). The corpus doesn't decide this; it's a real project-sequencing call.
