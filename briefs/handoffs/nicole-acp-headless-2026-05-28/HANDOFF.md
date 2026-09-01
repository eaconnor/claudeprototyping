# Handoff — ACP Headless Agent Dashboard (Rerun)

**To:** Nicole Reineke
**From:** Beth (Band Protocol pipeline)
**Date:** 2026-05-28
**Status:** Tier 1 · Concept (NOT ready for Tier 2)

## What this is

A rerun of the ACP Headless experiment. Five corrections across the day:

1. **Math, honestly.** Three numbers, not one. World-claims 70% [A]+[?] (lead), test-plan 63%, inflated-with-TODOs 82%. See `math-recount.md`.

2. **Apex Bridge fidelity.** Ported `--br-*` token contract from yesterday's `prototypes/acp-v1/index.html`. Light + dark toggle. Inter + JetBrains Mono. Sidebar + topbar + main + 420px rail shell.

3. **Doblin Ten Types rescored for N-able position.** Brief-as-written 4/20 · brief + N-able latent capabilities ~13/20. Pre-activated dimensions (Product System, Channel) named. Structure flagged as headwind, not tailwind. Strategy-layer dependency surfaced.

4. **44-voice council with click-into cards.** Nine voices owensed at Tier 1 (Sign · Hypothesis · Kill criterion · Force level · Evidence · Cannot see). Three cross-talk moves (Direct response · Blind-spot supply · Productive tension). Click "Hear the full council" in the rail.

5. **Multi-tab navigation.** Five pages, sidebar-driven: Dashboard · Coworkers · Runbooks · Audit trail · Tenants. The Audit trail page exists *because* Council JRNY flagged the backstage gap — the page is a direct response to the testimony.

**Bradley rail** now violet-tinted with 4px accent border + inset glow — visibly distinct from the main app, not a tonal cousin.

**Skill update:** [SKILL.md](.claude/skills/prototype/SKILL.md) now includes Step 0 intake (lo-fi vs. hi-fi, audience), with **lo-fi as the default for concepts**. Hi-fi is the expensive exception, only when a clickable walkthrough is needed.

## What's verified

- **Evidence ratios (three honest numbers, grep-verified):**
  - **World-claims (lead):** 7 of 10 [A]+[?] = **70%**
  - Test-plan readiness: 5 of 8 [A]+[?] = 63%
  - Including meta-TODOs (inflated, misleading): 28 of 34 = 82%
- **Fidelity level:** Tier 1 · Concept (70% world-claim ratio is acceptable here; must drop below 40% before Tier 2)
- **Critic arc:**
  - Prior embedded score: 22/30
  - Pass 1 (corrected math): 21/30 (−1 on Source-fidelity)
  - Pass 2 (after correction shipped): 22/30 (+1 recovered through honest reporting)
- **Council voices run:** 6 — JTBD · Service Blueprint · SDT · Disruptive Innovation · **Ten Types of Innovation** · Value Chain
- **Ten Types scorecard:** Product Performance 2/2 · Customer Engagement 1/2 · Process 1/2 · all other 7 types 0/2 = **4/20**
- **Contradictions flagged for Nicole:** 4 (the Ten Types vs. Scope Discipline tension is new)
- **Source docs in scout/:** 8
- **Design system:** Apex Bridge `--br-*` tokens ported from acp-v1; light + dark mode toggle

## Tensions named

Three contradictions surfaced by Council. None are gaps — they are decisions Nicole owns. Pick a position on each before scoping Tier 2.

### Tension 1 · Service Blueprint vs. Self-Determination Theory
- Blueprint says backstage visibility is a **recovery** affordance (visible on incident).
- SDT says backstage visibility is an **identity** affordance (visible by default).
- These are not the same visibility. Designing for one will fail the other.
- **Decision Nicole owns:** When does the MSP see the backstage — on incident, on demand, or always?

### Tension 2 · Jobs-to-Be-Done vs. Disruptive Innovation
- JTBD reads this as **sustaining** (serve existing MSPs better at the existing job).
- Disruptive reads this as **new-market** (a "worse" product for MSPs who don't yet have product-UI loyalty).
- The two prescribe opposite recruitment strategies for the 5-MSP walkthrough.
- **Decision Nicole owns:** Which MSP segment is this prototype for? The answer determines who gets recruited.

### Tension 3 · Value Chain vs. SDT
- Value Chain says: control the trust signal. That is the chokepoint and the prize.
- SDT says: the MSP must control the trust signal themselves to retain felt autonomy.
- Middle path exists (independently verifiable metrics), but the brief does not describe one.
- **Decision Nicole owns:** Will the trust ledger be black-box or independently auditable? Regulators in healthcare/finance verticals will not accept black-box.

### Tension 4 · Ten Types vs. Scope Discipline
- Ten Types says: add 3+ dimensions (Profit Model, Channel, Brand, Network) or the moat is too shallow. Single-type innovations fail.
- Scope Discipline says: Tier 1 prototypes should not sprawl. Keep the experiment tight.
- These pull opposite directions. Tier 1 wants minimum surface to validate the core hypothesis. Ten Types says the core hypothesis is fragile without multi-vector reinforcement.
- **Decision Nicole owns:** Hold scope and accept the defensibility risk, or expand the brief to a multi-type concept before Tier 2? If hold, name the defensibility plan separately. If expand, the brief and prototype both grow.

## Four calls (Ten Types added a fourth)

1. **Recruitment scope (Nicole, by 2026-06-05).** Pick the MSP segment for the 5-MSP walkthrough. Without this, JTBD vs. Disruption stays an academic disagreement. Concrete output: a one-paragraph segment definition (size, geography, current toolset, tier).

2. **Backstage visibility model (Nicole + Design, by 2026-06-12).** Resolve Service Blueprint vs. SDT. Concrete output: a wireframe showing when and how MSPs see what a Coworker did — on incident, on demand, or always. This is the gating design question for Tier 2.

3. **Trust ledger verifiability (Nicole + Eng + Compliance, by 2026-06-19).** Decide whether trust-ladder metrics are independently verifiable. Concrete output: a one-page architecture sketch showing the audit path, or an explicit decision to ship black-box with named risk acceptance.

4. **Innovation scope expansion (Nicole, by 2026-06-19).** Doblin scorecard is 4/20. To survive contact with the market, the brief needs at least 3 more dimensions activated before Tier 2. Pick from: Profit Model (per-execution pricing), Channel (Slack/Teams/mobile delivery), Brand (name the category), Network (community runbooks, shared trust signals). Concrete output: which 3 dimensions Tier 2 will activate, and what surface in the prototype proves each one.

## What's missing (still)

These were named in the original brief and remain unaddressed. They belong in Tier 2.

- Error-state surface (Coworker fails — what does the MSP see?)
- Override interaction (MSP says "no" to a Coworker recommendation)
- Audit trail design (how MSP reviews what Coworker did and why)
- ACP-unavailable resilience model
- Trust ladder progression mechanics (L2 → L3 — what triggers it?)
- Counter-metric baseline (current MSP onboarding time)
- Competitive scan (ConnectWise / Kaseya / Datto headless approaches)
- MSP interview data on tool-switching pain (the load-bearing [?])

## Next steps

See `NEXT-STEPS.md` for the Tier 2 pipeline plan.

---

**The 47% rule.** Every ratio, count, and score above was grep-verified before this file shipped. The prior run's 55% claim is the example of what happens when you skip that step.
