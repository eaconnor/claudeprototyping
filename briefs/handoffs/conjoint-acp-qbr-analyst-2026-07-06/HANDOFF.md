# HANDOFF — Conjoint Simulation — ACP QBR Analyst

**To:** a Claude running a choice-based conjoint (CBC) simulation
**From:** the ACP QBR Analyst product-experience research run
**Date:** 2026-07-06
**Status:** Concept validated (problem real + white space real); WTP + priority-axis unresolved — that's what the conjoint attacks.

## What this is
A cross-stack MSP "QBR Analyst" AI coworker (N-able / ACP). Target buyer = larger-side SMB MSP (20–100 clients, 10–50 techs). I have demand, feature set, competitor pricing, and per-respondent WTP — but no conjoint. Design and run a **simulated CBC** to answer two questions.

## The two questions the conjoint must answer
1. **#5 — WTP above the "build-it-into-the-RMM" floor.** Which feature+price bundle wins, and where does "bundle it free in the RMM" beat a paid standalone? (This is the platform-vs-standalone fork — the T4 decision.)
2. **#7 — is cross-stack normalization the priority axis**, or is vendor consolidation the real driver? Test whether cross-stack breadth actually moves choice.

## Suggested conjoint design (attributes → levels)
- **Price/model:** $50–100/org/mo · $100–150/org/mo · tiered by client-count (0–20 / 20–50 / 50+) · per-tech $25–50/mo · **bundled-free-in-RMM**
- **Integration breadth:** N-able-stack only · +top-3 third-party · full cross-stack (6–8 tools)
- **Provenance:** source labels only · drillable-to-source
- **Audience modes:** single format · CFO+owner+IT adaptive
- **Delivery:** on-demand · +scheduled · +client-portal publish
- **Forward-looking:** historical only · +priced opportunity slate / pipeline

Attributes trace to the `domain_model` in `acp-qbr-analyst.brief.md`. Include "bundled-free-in-RMM" as a real competing option — it is the #5 risk made explicit.

## Report out
Attribute importances · part-worth utilities · simulated share-of-preference across candidate bundles · WTP for cross-stack vs. the bundled-free option · the tipping point where free-in-RMM wins. Label everything **SIMULATED**.

## Priors / pricing anchors (use as priors — tag them; all respondent/vendor-reported, not public fact)
- Kenneth: per-tech $25–50/mo. Jonathan: $500–700/org or $100/client/qtr. Matt: $50–100/org/mo. Shawn: flat monthly + usage bucket (opposes per-client). Vitali: would pay, no ceiling given. Derek: free only (outside target).
- Competitor anchors: BrightGauge $316–436/mo · MSPbots $129–179/mo · Gradient ~$199/mo · ScalePad ceiling ~$300+/user/mo [?].
- Research landing zone (my read): $50–150/org/mo. [A]

## Simulation archetypes (from the 8-interview roster)
- **Bull's-eye buyers:** Kenneth (owner, <10 FTE but pre-sold), Jonathan (VP Tech, 10–50), Shawn (VP Strategy, advises 200+ MSPs), Matt (CISO, 10–50).
- **Stretch:** Mike (President, 10–50, does it manually today).
- **Exclude (out of target):** Derek (would build his own, free-only), Vikram (enterprise, 50-FTE AI team, builds internally).

## What's already been decided (don't re-open)
- Product-experience research, **NOT a go/no-go.** Build call stays with Beth, Meaghan (her boss), and Nicole.
- Target buyer = larger SMB (not enterprise, not sub-10-FTE hobby shops).
- A simulated conjoint is **synthetic**: utilities assumed, evidence is n=8 [?] + vendor pricing. Output = hypothesis to design a REAL conjoint, never presented as [D]/[R] findings.

## What's still open (yours to make)
- Attribute/level design, prior utilities, respondent-archetype weighting.
- Whether to add a "no-purchase / status-quo" option (recommended — status quo = manual prep or a ScalePad/Cognition360 incumbent).
- How many tasks/holdouts to simulate.

## Three calls this conjoint should tee up (for Beth, Meaghan (her boss), and Nicole)
1. **Standalone vs. platform-bundled** — does the data support a paid SKU, or does free-in-RMM dominate? (T4 fork.)
2. **Minimum integration set** — is "N-able-stack only" enough to win, or is full cross-stack required to clear the incumbents?
3. **Price band + model** — org-flat vs. client-tiered vs. per-tech, and the ceiling.

## The non-negotiables
- The prototyper holds the clipboard. Works for the person running it, not the vendor.
- [CS:] tags on every factual claim; every simulated number labeled SIMULATED.
- The 47% rule: grep-verify every stat before quoting it.
- Synthesis slot stays blank: `[0% Claude — fill this in]`.

---
**Verified before packaging:** the honest-math figures (world 24% / experience 93% / inflated 41%) were Bradley-ledgered PASS (see `.bradley-ledger.md`). Market/TAM figures are scout-sourced with URLs and deliberately kept as RANGES ([WOBBLY]) — do not collapse them to point estimates.
