# IDEA CHESS v2 — Ecoverse "Emerging Killer-App Hypothesis" (post-kickoff deck revision)

**Target:** the Ecoverse Product & GTM Strategy deck as revised 2026-09-09 — specifically its new "Emerging Killer-App Hypothesis" slide, read against the full corpus assembled this session.
**Stance:** adversarial. The job is to find where this specific new claim fails in market. Not to defend it.
**Tagging:** `[BUILT]` = real, shipped, live-in-market evidence (verified via Jira/SharePoint) · `[SPECCED]` = named in the deck, no delivery evidence · `[A]` = assumed, unsourced · `[?]` = unknown, named gap.
**Date:** 2026-09-09 · Owner: Beth Connor
**Grounded in:** `scout/ecoverse/ecoverse-gtm-deck-2026-09-03.md` (original) · `scout/ecoverse/ecoverse-gtm-deck-2026-09-09-UPDATE.md` (this revision) · `scout/ecoverse/council-ecoverse-2026-09-03.md` · `prototypes/ecoverse/critic-pass-1.md` · `scout/ecoverse/riskiest-assumptions/01–07` (incl. the Jira/SharePoint ground-truth follow-up) · the prior board `prototypes/ecoverse/idea-chess-ecoverse-2026-09-09.md`, superseded by this one on every point the new deck content touches.
**What's new since v1:** a named killer-app hypothesis exists now (v1 found none). Section 04's capability tables are filled in with real statuses instead of blank. Two new "market assessment" slides adopt materially more honest, gated language. This board evaluates whether the new answer survives adversarial pressure — it does not re-litigate points v1 already settled unless the new content changes them.

---

## 0. Ground truth — what is actually real, updated for the new content

| Layer | State | Evidence |
|---|---|---|
| Everything in v1's ground-truth table (Ecoverse live w/ customers, Coworkers UI broken, permissions/CMMC tests passing, no margin model, no rollback design) | **Unchanged — carries forward** | `prototypes/ecoverse/idea-chess-ecoverse-2026-09-09.md` §0 |
| **The killer-app hypothesis itself** | **`[SPECCED]`** — a named slide, zero build evidence, zero customer validation | New slide, `ecoverse-gtm-deck-2026-09-09-UPDATE.md` |
| **"Deep Endpoint Intelligence" pillar** | `[SPECCED]`/partial `[BUILT]` — asset/software inventory exist and ship (`[BUILT]` per v1 Jira), but "rich endpoint data" is flagged "spike into how we get more" in Section 04 Core Features | Deck Core Features table |
| **"Trusted Action" pillar** (deterministic execution, RBAC, audit trail) | **`[BUILT]`-partial, `[BUILT-but-broken]` at the one visible surface** — permissions/CMMC test suites pass (v1 Jira finding), but Coworkers UI itself doesn't render (`FSN-90125`, still open) | v1 Jira follow-up, carried forward |
| **"Prove the Outcome" pillar** (auto-generated reports/evidence) | **`[?]` — no value-ledger producer exists.** Same absence v1 found for the margin model applies here: nothing in Section 04 or Jira shows a working report/evidence-generation pipeline | Deck Section 04; no contrary Jira evidence found |
| **The four-vendor "market proof point" claim** (Action1+Automox+Tanium+NinjaOne "validate" pieces Ecoverse "potentially combines") | **`[A]`** — an assertion about the market, not a built or tested claim about Ecoverse. "Potentially combines" is the deck's own hedge word | Direct quote, new slide |
| **"Frictionless self-service onboarding" / "AI-powered trial UX"** (Phase 1 "why we win," unchanged from 09-03 draft) | **`[SPECCED]`, contradicted by the deck's own new data** — Section 04 now shows Trial sign-up page, Trial UX with AI, Purchase self-serve, Account creation, Agent install workflow **all "Not started"** | New Section 04 table, this same deck |
| **The "greenfield"/"blue ocean" claim** | **Now self-refuted, by the deck itself, in two places at once** — Scratchbook still says "ITP is more greenfield" (unchanged); new Pure-Play Benchmarks slide says "the 'blue ocean' claim remains unproven" | Both quotes present verbatim in the same current deck |
| **"Not proof of product-market fit"** (new Preliminary Position slide) | **`[D]` — the deck's most honest sentence, and new** | Direct quote |

**The single most important fact for this board:** the deck did the right thing and got more honest about its gaps — and in doing so, it created a **checkable, same-document contradiction** that didn't exist before: the Phase 1 "why we win" slide still claims frictionless self-service onboarding as a going-in advantage, while the Section 04 table three slides later shows every component of that onboarding motion is **"Not started."** A reader who flips between the two slides catches this without needing Jira, Confluence, or any external source. **The deck no longer needs an outside fact-check to find its biggest problem — it contains the refutation of its own headline claim.**

---

## 1. Ten-tradition adversarial council pass

### 1.1 Jobs-to-Be-Done
**Losing condition:** the hypothesis names a job no single named competitor is currently failing to do.
**Sharpest shot — kills nothing outright, pressures BET1 hard.** The new slide's own market-proof logic undermines itself: if Action1 already validates security-led self-service, Automox already validates automation-led ops, Tanium already validates real-time intelligence at scale, and NinjaOne already validates operational simplicity — then by the deck's own framing, **the job is already being done, competently, by four different specialists.** JTBD doesn't ask "can one vendor claim to combine four validated approaches," it asks "what job is currently unmet." The slide names zero unmet job; it names four *met* jobs and asserts, without evidence, that stacking them is itself a new job. That's a feature-bundle argument wearing a killer-app label.

### 1.2 Disruptive Innovation (Christensen)
**Losing condition:** you're proposing to out-execute four specialists simultaneously rather than entering where none of them compete.
**Best shot — kills BET1 and BET10-equivalent (the synthesis claim).** Christensen's core warning about "integrated vs. modular" competition applies directly: Action1, Automox, and Tanium each won their lane by being *narrower and better* than a generalist platform, not broader. A single new entrant claiming to match all four's specialisms simultaneously is the textbook shape of a *sustaining* move that historically loses to focused competitors on cost and depth in each individual lane — while gaining nothing that a determined customer couldn't assemble via best-of-breed. The deck's own "table stakes" language on the very next slide half-admits this: *"being good at these capabilities earns the right to compete, but does not differentiate."*

### 1.3 Service Blueprint
**Losing condition:** a front-stage promise has no back-stage actor.
**Kills the internal contradiction directly.** "Prove the Outcome" (front-stage: auto-generated reports, ROI visibility, "tasks completed, time saved") has no back-stage producer — Section 04 shows no reporting/evidence pipeline built, and v1's Jira check found no value-ledger writer either. Worse, the *entry point* to the whole blueprint — "AI-powered Trial UX," self-service onboarding — is front-staged on the GTM slide and explicitly **"Not started"** on the capability slide. The customer's first-ever interaction with the promised experience currently doesn't exist in any form.

### 1.4 Self-Determination Theory
**Losing condition:** the trust model frustrates the operator it claims to protect.
**Partial credit, then a kill.** Credit where due: "Trusted Action" now explicitly names deterministic execution, permissions, audit trail, RBAC — better autonomy-supporting language than the 09-03 draft's bare "super automated." That's real improvement. The kill: the one UI surface a nervous technician would actually use to see and approve what a Coworker did (`FSN-90125`, Coworkers UI) is still broken in Jira as of the last ground-truth check, and nothing in this revision indicates it's fixed. Better words on a strategy slide don't change what render on screen.

### 1.5 Value Chain (Porter)
**Losing condition:** value is captured at a link you deferred, while your real chokepoint sits unmonetized.
**Unchanged from v1, restated because it still holds.** "Deep Endpoint Intelligence — data as core IP" is the closest this new slide comes to naming the real asset (the agent/telemetry moat v1 identified). But it's pillar 1 of 4 in a list, not the thesis — the slide's headline is the *synthesis claim*, not the *data moat claim*. The asset is finally named in the strategy narrative (progress since 09-03, where it was a margin note); it's still not the center of gravity of the pitch.

### 1.6 Wardley Mapping
**Losing condition:** positioned at the wrong evolutionary stage, ceding the category story.
**Sharpens against BET1.** "Ecoverse potentially combines all four" positions the product as a *category rollup* — a genesis-stage claim (new category: "the platform that does what Action1+Automox+Tanium+Ninja each do") stapled onto commodity-stage components (patching, inventory, remote access — all Section 02's own "table stakes" list). Rollup claims without a working rollup are the highest-risk Wardley position: you've announced the ambitious story before any of the commodity-stage components that would make it credible are done (Trial UX: Not started; reporting: no producer).

### 1.7 Real Options / Lean
**Losing condition:** the validation budget was spent on the least-uncertain thing.
**Unchanged in substance, sharper now.** The newly-filled Section 04 table shows exactly where effort went: permissions/audit/SSO (certain, low-risk, `[BUILT]` per Jira) are done or in-dev; the actually uncertain thing — will a generalist IT team believe "combines all four" and act on it — has zero build, zero test, and, per the new Preliminary Position slide, explicitly **no product-market-fit evidence yet.** The lean sequencing problem v1 flagged is unresolved; the new slide adds a specific, testable hypothesis but no test.

### 1.8 Security / Threat-model / GRC
**Losing condition:** a governance promise has a gap an auditor or a bad AI action drives through.
**Improved on paper, unchanged in practice.** "Trusted Action" pillar language (RBAC, audit trail, deterministic execution) is a real improvement in how the risk is described versus the 09-03 draft. But v1's HOLE2 (no rollback/recovery story, and the one visibility surface is broken) is not addressed by better prose — it's addressed by a working, visible Coworkers UI and a described recovery path, neither of which this revision adds.

### 1.9 Migration-cost / Architecture debt
**Losing condition:** the interim shape forces a painful rebuild once real usage references it.
**New evidence sharpens v1's HOLE1.** The new Section 04 table confirms — more clearly than v1 could from Jira alone — that "Ecoverse" the live shipped product (patch, nav, permissions, policy tags) and "Ecoverse" the vision (self-service trial, billing, account creation, AI-powered onboarding) are genuinely different scopes: the vision-scope items are almost uniformly **"Not started."** Building the vision on top of the live product's name, before reconciling what the name currently means to a real customer with a real support ticket, is exactly the naming-collision risk v1 flagged as cheap-to-fix-now, expensive-later.

### 1.10 Ecosystem / Two-sided platform
**Losing condition:** the platform ships with an empty side.
**Unchanged, still live.** "Open-platform Coworkers (harness)" has no status entry at all in the new Section 04 table — not even "not started," just absent. GraphQL/MCP are marked "TBC per Taha research." The open-ecosystem half of the pitch is exactly as empty as v1 found it.

---

## 2. What we haven't thought about — holes, updated

Ranked by damage.

1. **The deck now contradicts itself in a way anyone can catch by flipping three slides.** `[D]` (§0, §1.3). Phase 1 "why we win" claims frictionless self-service onboarding; Section 04 says every component is "Not started." This is new, sharper, and cheaper to fix than any other finding on this board — it's an editorial reconciliation, not a research question.
2. **The killer-app hypothesis is a bundling claim, not a job claim.** `[A]` (§1.1, §1.2). "Combines all four" needs either evidence that bundling beats best-of-breed for this buyer, or it needs to be reframed around an actual unmet job the four specialists collectively miss — which the deck hasn't named.
3. **The deck disagrees with itself on greenfield, unreconciled, in two directions at once.** `[D]` (§0). Scratchbook: "ITP is more greenfield." New slide: "the 'blue ocean' claim remains unproven." Nobody has gone back and resolved the earlier claim against the newer, more rigorous one — both are still live in the same document.
4. **"Prove the Outcome" has no producer, still.** `[?]` (§1.3, §1.7). Carried forward from v1's HOLE re: the value ledger; the new slide restates the promise without adding the mechanism.
5. **The open-platform/ecosystem side is now visibly, not just implicitly, empty.** `[?]` (§1.10). Absence of a status entry is more damning than a "not started" label — it suggests the item hasn't been scoped enough to even estimate.

---

## 4. Monte Carlo read

**Method.** Naive survival = product of `p(true)` over `required:true` bets only. Independence assumed for the naive number and **false** — see caveat.

**Required bets, revised for this deck version:**

| Bet | p(true) | Why (what changed since v1) |
|---|---:|---|
| BET1 — the killer-app synthesis (combining 4 vendors' strengths) is real, differentiated, non-diluted | 0.25 | new, specific, and adversarially weak — JTBD/Disruption/Wardley all read "bundle claim," not "unmet job"; no build, no test |
| BET2 — greenfield/blue-ocean segment is real | 0.15 | **lower than v1's 0.25** — the deck now refutes this itself ("blue ocean claim remains unproven"), on top of the external Action1/Flamingo/Intune evidence v1 already found |
| BET3 — land-low/expand-up margin model holds | 0.35 | unchanged — still no ACV/CAC/expansion data anywhere, including in this revision |
| BET4 — auto-execute AI Coworkers build (not erode) technician trust | 0.40 | **slightly up from v1's 0.35** — "Trusted Action" pillar's RBAC/audit/deterministic language is real improvement on paper; held back by the still-broken Coworkers UI in practice |
| BET5 — IT-Pro-then-MSP sequencing is the right order | 0.40 | unchanged — no new evidence either way |
| BET7 — the strategy's narrative matches what's actually built | 0.20 | **lower than v1's 0.25** — v1's mismatch needed Jira to find; this revision's mismatch (Phase-1-claims vs. Section-04-status) is checkable within the deck itself, which is worse, not better |

**Naive survival (product of the six `required:true` entries):** 0.25 × 0.15 × 0.35 × 0.40 × 0.40 × 0.20 ≈ **0.00042 → ~0.042%.** *(grep-verified: `python3 math.prod` = 0.00042, 2026-09-09.)*

This is lower than v1's 0.09% — not because the deck got worse overall (it got more honest in real ways), but because the one new, central claim (BET1, the synthesis hypothesis) is itself weak under adversarial pressure, and the new evidence sharpened two other bets (BET2, BET7) downward rather than up. **Read this as the cost of specificity**: v1 scored an open question; v2 scores a stated, testable answer, and the answer doesn't yet hold up. That is progress in the sense that matters — a wrong, testable claim can be fixed; an unanswered question cannot be scored at all.

**Non-required bets (asset/framing, excluded from the product):**

| Bet | p | Note |
|---|---:|---|
| BET6 — endpoint agent + first-party data is a durable moat | 0.65 | unchanged from v1; now named as pillar 1 of the new slide (progress), still not the thesis |
| BET8 — internal ICP-sizing evidence is solid enough | 0.50 | unchanged; deck's new self-awareness (§0) doesn't change the underlying source-verifiability gap |
| BET9 — "winning formula" narrative is the right category story | 0.35 | unchanged — the four-clause aphorism is untouched by this revision |
| BET11 — "operating-model continuity" positioning (self-managed→MSP-assisted→co-managed→MSP-led) is a credible differentiator | 0.55 | new; modest, explicitly-not-a-breakthrough framing is more defensible precisely because it doesn't overclaim — the strongest new framing on this board |

**Named holes:**

| Hole | Read |
|---|---|
| HOLE1 — "Ecoverse" in Jira and in the vision deck are the same scope | **Sharpened toward "no."** Section 04's near-total "Not started" status on vision-scope items (trial, billing, account creation) makes the scope split more concrete than v1's Jira-only read could. |
| HOLE2 — AI-error recovery/rollback governance is coherent | Language improved ("Trusted Action"); built reality unchanged (Coworkers UI still broken per last check). |
| HOLE3 (new) — the deck holds two contradictory positions on "greenfield" simultaneously, unreconciled | Not a probability question — an editorial-hygiene gap. Cheap to fix: someone needs to go back and either delete the Scratchbook line or explicitly supersede it. |

**Sensitivity ranking — what to fix first (most damage if wrong, cheapest to test/fix):**
1. **The Phase-1-claims-vs-Section-04-status contradiction (feeds BET7, HOLE1).** Cheapest possible fix on this whole board — it's a same-document editorial reconciliation, not a research project. Fix before this deck is shown externally again.
2. **BET2 (greenfield).** The deck has already done the work of refuting itself — someone just needs to delete or supersede the Scratchbook line and update the Phase 1 sequencing rationale accordingly.
3. **BET1 (the synthesis hypothesis).** Needs either a sharper, evidence-backed unmet-job claim, or an honest reframe from "killer app" to "credible bundling strategy for a specific buyer who values consolidation over depth" — a real, smaller claim, better than an unearned big one.
4. **HOLE2 / BET4 (AI trust, in practice).** Fix the Coworkers UI bug and the governance language this revision added will actually mean something to a user, not just to a slide.
5. **BET3 (margin math).** Still needs real modeling work; unchanged priority from v1.
6. **BET5 (sequencing).** Lowest urgency; revisit once 1–4 are resolved.

**Independence caveat.** BET1, BET2, and BET7 are now more tightly correlated than in v1: all three trace to the same root cause — **the deck asserts differentiation and market position more confidently in its narrative slides than its own capability and competitive-benchmark slides support.** Fixing that one root inconsistency (bring the narrative slides down to what Section 04 and the new Pure-Play Benchmarks slide actually show) would move all three bets at once. The naive 0.042% is a floor-of-alarm, not a forecast; the sensitivity ranking is the real output.

---

## 5. Oregon Trail — where this version dies on the map

Phases: **align → differentiate → scale → defend** (unchanged from v1 — still the right shape for a strategy layered on a partly-shipped product).

- **ALIGN — improved, but not resolved.** v1's biggest risk was the room debating a Phase-1-launch narrative for a product that's already live. This revision's new "Preliminary Position" slide (**"we have not proven product-market fit"**) is a real step toward alignment — it's honest in a way the 09-03 draft wasn't. But the new Phase-1-vs-Section-04 contradiction is a *fresh* alignment problem the deck introduced by getting more honest in one place before reconciling the other. **Net: alignment risk shifted, not removed.**

- **DIFFERENTIATE — now the most dangerous phase, because there's finally something specific to test and it's weak.** v1 had no killer-app answer to stress-test; v2 has one, and JTBD/Disruption/Wardley all read it as a bundling claim dressed as a category claim. If this hypothesis goes to market as written — "we combine what four specialists validated" — the likely market response is the one Section 02's own Pure-Play Benchmarks slide already predicts: *"being good at these capabilities earns the right to compete, but does not differentiate."* The deck is arguing with its own upcoming failure mode, three slides apart.

- **SCALE — unchanged from v1.** Still no margin model. Still no evidence the price floor (Action1 free, Flamingo cheap, Intune bundled) has been priced against.

- **DEFEND — unchanged from v1, with one addition.** The governance story is better-worded ("Trusted Action") but not better-built. Add to it: the ecosystem side (open-platform Coworkers) now shows as un-scoped, not just unbuilt, which pushes any real defend-phase readiness further out than v1 estimated.

**Where it most likely falls:** at **DIFFERENTIATE** — because for the first time this strategy has stated a specific, falsifiable killer-app claim, and the sharpest adversarial reading available (the deck's own next slide) already predicts its failure mode. The die was thrown; the number came up low.

---

## Bet / Assumption table (companion reference, this revision)

| ID | Bet | State | p | Required? | Losing condition (one line) |
|---|---|---|---:|:--:|---|
| BET1 | Killer-app synthesis (4-vendor combine) is real, non-diluted differentiation | `[A]`/`[SPECCED]` | 0.25 | ✅ | reads as a bundling claim, not an unmet-job claim; own next slide predicts this |
| BET2 | Greenfield/blue-ocean segment is real | `[A]`, self-refuted | 0.15 | ✅ | the deck's own new slide says "remains unproven" |
| BET3 | Land-low/expand-up nets positive margin | `[?]` | 0.35 | ✅ | zero ACV/CAC/expansion data, still |
| BET4 | Auto-execute AI Coworkers build trust, not erode it | `[BUILT-but-broken]` | 0.40 | ✅ | governance language improved; the one visible surface is still broken |
| BET5 | IT-Pro-then-MSP sequencing is right | `[SPECCED]` | 0.40 | ✅ | unresolved, no new evidence |
| BET7 | Strategy narrative matches what's actually built | `[A]`, worse | 0.20 | ✅ | now a same-document, checkable contradiction |
| BET6 | Endpoint agent + first-party data is a durable moat | `[BUILT]`, now named | 0.65 | ❌ | real asset; still pillar 1-of-4, not the thesis |
| BET8 | Internal ICP-sizing evidence is solid enough | `[D]` self-graded | 0.50 | ❌ | unchanged evidence-quality gap |
| BET9 | "Winning formula" narrative is the right category story | `[SPECCED]` | 0.35 | ❌ | untouched by this revision |
| BET11 | Operating-model-continuity positioning is a credible differentiator | `[SPECCED]`, modest | 0.55 | ❌ | strongest new framing — doesn't overclaim |
| HOLE1 | "Ecoverse" in Jira and in the deck are the same scope | `[?]`, sharpened toward "no" | 0.20 | ❌ | Section 04's near-total "Not started" on vision items confirms the split |
| HOLE2 | AI-error recovery/rollback governance is coherent | `[?]` | 0.35 | ❌ | better words, same broken UI |

---

*The deck did real work between the two pulls of this file — it got honest about product-market fit, it named the agent as a real asset, it upgraded its own governance language, and it let its own competitive-benchmark slide call out the "blue ocean" claim it was still making three slides earlier. That is the genuine strength, and it's not small. The fatal-if-true weakness is that the one new, specific, testable thing this revision added — "we combine what four specialists each validated" — is the exact shape of claim the deck's own adjacent slide already predicts won't differentiate, and the deck's own Section 04 shows the onboarding motion meant to deliver it hasn't been started. Fix the same-document contradiction first; it's the cheapest move on the board and it's sitting in plain sight.*
