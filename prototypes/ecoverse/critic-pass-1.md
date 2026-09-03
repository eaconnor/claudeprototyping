# Critic Pass 1 — Ecoverse Product & GTM Strategy (Working Draft)

**Artifact under review:** `scout/ecoverse/ecoverse-gtm-deck-2026-09-03.md` (extracted text of *Ecoverse Product & GTM Strategy – Working Draft.pptx*, Brian Mackie / N-able, `/Copilot/Created/` folder)
**Council input read:** `scout/ecoverse/council-ecoverse-2026-09-03.md`
**Pass type:** Pre-kickoff review of a strategy/GTM deck. NOT a build. No HTML, no Apex Bridge, no Bradley rail — design-system compliance section is N/A and omitted.
**Reviewer:** Critic · Cost tier: MEAL
**Scale:** 0–5 per dimension (0 absent · 1 broken · 2 weak/gapped · 3 holds-with-named-gaps · 4 solid · 5 kickoff-ready)
**Abductive hypothesis under test (Beth):** "This seems a bit AI-generated." Council found ~2/3 honest draft, ~1/3 fluent scaffolding. Critic does not re-litigate that; it scores and ranks.

---

## Scorecard (6 dimensions)

| # | Dimension | Score | One-line basis |
|---|---|---|---|
| 1 | Problem clarity | **3/5** | IT Pro consolidation problem sourced and hireable; MSP-switch problem undefined — the deck's own margin note asks it as an open question. |
| 2 | Evidence quality | **3/5** | Genuine hygiene (self-caveats, graded matrix, Flamingo/Thread catch) — but load-bearing internal figures cite source slides not present in the corpus, and external figures are vendor/aggregator single-chain. |
| 3 | Internal consistency | **2/5** | "Greenfield" IT Pro <1000 falsified by Action1 data in the same deck; "win through simplicity" vs "super automated execution"; product named Ecoverse in body, "ACP" in margin. |
| 4 | Differentiation & positioning | **2/5** | Differentiator is a capability list, not a job; killer app off Ninja unanswered; squeezed middle between two free/cheap disruptors + Intune below and enterprise UEM above; the one real chokepoint (the agent) is a margin note. |
| 5 | Feasibility (delivery realism) | **2/5** | Section 04 status columns "intentionally left blank"; user mgmt 2027, permissions/audit in-dev 2026; no margin math; AI-error recovery/rollback undesigned for the exact target persona. |
| 6 | Decision-readiness for kickoff | **2/5** | No explicit ask, no framed options/decisions for the room; the single load-bearing question exists only as a margin annotation; confident scaffolding reads as settled strategy, honest caveats read as optional. |

**Aggregate read:** A legitimate working draft (its own banner says so) whose *format actively misdirects* — the polished body invites ratification, the honest margins carry the real, unresolved strategy. Not slop; not kickoff-ready as a decision driver without the P0 fixes below.

---

## Gate check (three-gate framework, §9)

**Gate 1 — Do we understand the customer problem?**
Partially. IT Pro functional consolidation is real and sourced (deck names the exact fired stack: WSUS/Intune/1patch/RC/monitoring) `[CS: HIGH — deck states it]`. The MSP competitive-switch problem is labelled "Hypothesis only" by the deck itself — undefined. Half the strategy sits on an unsourced problem statement the author flags in his own hand.

**Gate 2 — Are we making the right thing? Is the counter-metric protected?**
Weakly. The stated mission tie ("Land and Retain hit the company OKRs") is asserted, not shown — the OKR itself is not in the artifact `[CS: UNKNOWN — OKR not in corpus]`. Counter-metric protection is *partial*: the deck does protect the existing base ("No Classic N-sight dependency for new NCA customers; N-central unchanged") — credit that. But two counter-metrics are unprotected: (a) technician trust/agency (the deck worries about "fear for their job" once, then never designs against it), and (b) cannibalization risk of the existing N-sight/N-central MSP base by a cheaper self-serve Ecoverse entry. Neither has a guardrail.

**Gate 3 — Are we making the thing right? Tested how, by whom?**
Not yet, and honestly so. Gates-and-Measures slide says "Working progression criteria, not committed thresholds… Advance by evidence, not by date." That is the right posture, but there is no baselined success metric and no test protocol — nothing to advance *against*. Research is explicitly "in progress" (ITP ICP). This is appropriate for the stage but means the deck cannot yet drive a go/no-go.

---

## Source check (protocol §4 — required)

Three buckets. I can only verify against the corpus in front of me; the deck's cited internal source slides are **not in the scout folder**, so I cannot grep-verify them (47% rule: a stat you can't verify, you don't quote as fact).

**Externally sourced, but single-chain / vendor-authored (SINGLE-SOURCE — credit the honesty, don't moat on the number):**
- Action1: $12.7M ARR, +76% YoY, 275% six-figure ARR, 98% retention, 5,000+ customers, 10M+ endpoints. Appendix cites Crunchbase/PitchBook/GetLatka/Tracxn/PRNewswire and *the deck itself* caveats "vendor-authored claims, not independently tested." `[CS: MEDIUM — aggregator chain, vendor-origin]` Load-bearing for the entire "greenfield is actually occupied" finding, so its softness matters.
- Flamingo: 298 customers from 1,000-MSP waitlist, $1/$3/$5 pricing, $2.2M pre-seed. Deck states case studies are "Flamingo-published, not third-party verified." **SINGLE-SOURCE (vendor-published).** `[CS: LOW]`

**Internally-sourced-only — traceable to a named slide, unverifiable in this corpus:**
- Canalys "MSPs <10 = 73% but $8B value" — deck says "reused internally… totals debated, likely high." Source slide (LRP PlatformDefinition.pptx) not in corpus. `[CS: MEDIUM — cannot grep-verify]`
- pNPS 2025: "39% of 318 respondents," remote control/patch/monitoring top tasks. Source: pNPS 2025 Understanding RMM Customers sl.8,19,23,28. Not in corpus. `[CS: MEDIUM — cannot grep-verify]`
- Canalys channel survey: 49% fully managed / 37% co-managed / 14% mixed, N=432 Nov 2024. Not in corpus. `[CS: MEDIUM — cannot grep-verify]`
- Business-maturity bands (0–15 "creating a business," 10–60 "professionalising"); Gartner-derived best-of-breed vs bundle buyers. Internal GTM slides, not in corpus. `[CS: MEDIUM]`

**UNSOURCED — presented in body as fact, no locatable source:**
- **"ITP is more greenfield"** (Scratchbook + margin note) — asserted as rationale for "why IT Pro first," carries no citation AND is contradicted by the Action1 slide in the same deck. **UNSOURCED + self-contradicted.** `[CS: FABRICATION RISK — as a factual market claim]` This is the most dangerous line in the deck because it drives sequencing.
- **"Killer outcome… reduces effort, increases technician productivity, improves cyber-resilience"** — a hypothesis stated as an outcome. Deck labels the *section* "Working Hypothesis," which partly rescues it, but the body prose reads as settled. `[CS: LOW — framed as outcome, sourced as hope]`
- **"Winning formula" four clauses** — no source, no Ecoverse-specific content; a generic aphorism. Not a factual claim per se, but presented as strategy. Flag as scaffolding, not fact.
- Four-phase "Outcome:" clauses — asserted, not derived; no evidence trail.

**Note (does not block, must be named): licensed-source reuse.** Canalys and Gartner figures are "reused internally"; the deck itself warns "Validate licensed source tables before external publication." `[CS: VERIFIED — deck says this]` Any external use of these numbers is a licensing exposure (CLAUDE.md §10b — purpose limitation / legitimate basis). Flag carried, not resolved.

**Note (provenance): offered, in scope.** Deck reached Beth via a Teams sharing link from Mackie's personal OneDrive — offered, not taken. `[CS: VERIFIED — path/share string in SRC]` No ethics flag on access. But it is a *personal-drive working draft from a Copilot/Created folder*, not a sanctioned strategy doc — the room must not treat it as ratified. This is a decision-readiness caveat, above.

---

## Punch list (prioritized — fix before this deck drives a kickoff decision)

### P0 — blocks a kickoff decision

1. **The killer app that motivates a swap off NinjaOne exists only as a question in a margin.** (Section 01, Evidence-to-ICP margin note: "What is the Killer app that motivates a swap off Ninja?") The single most load-bearing claim in the MSP GTM has no answer in the body. A slide-skimmer concludes the switch motion is settled; it is not. Resolve or explicitly park it as the kickoff's #1 open decision. **Do not fix here — name it and route.**

2. **"Greenfield" (IT Pro <1000) is falsified by the deck's own Action1 slide.** (Scratchbook / margin note "ITP is more greenfield" vs Section 02 Action1: 5,000+ customers, 10M+ endpoints, free tier <200 endpoints, IT-Pro-direct, +76% YoY.) The word drives the "IT Pro first" sequencing decision and is internally contradicted. UNSOURCED as a market claim. Kill it or defend it against the Action1 numbers.

3. **No explicit "what we need from this room" slide.** The deck presents analysis but frames no decision, no options, no ask. For a kickoff, the three cross-voice cruxes (killer app / greenfield / propose-vs-execute) should be the agenda; the deck buries them. Decision-readiness gap.

### P1 — must be surfaced at kickoff or the decision is built on sand

4. **Two ICPs, one GTM number.** (Section 01, both ICP slides.) IT Pro = functional consolidation (sourced, hireable). MSP = competitive switch (hypothesis, unproven). Deck prices both as "land and expand" under one motion. These are different hires; a single GTM number covering both hides the risk.

5. **Differentiator is undecided and it's the whole strategy.** (Section 01 "super automated," "execution" vs "win through simplicity" + margin "fear for their job.") For the low-capability generalist persona the deck targets, "auto-execute" vs "propose-and-confirm" is the differentiation, not a UX detail. The deck says both. `[CS: HIGH — deck's own tension]`

6. **Load-bearing internal figures are unverifiable in this corpus.** (Evidence-to-ICP matrix source trail.) LRP / QLS GTM / pNPS source slides are cited by slide number but not present in `scout/`. Per the 47% rule these cannot be quoted as fact at handoff until pulled and grep-verified. The ICP sizing rests on them.

### P2 — real, but will not block the kickoff if named

7. **The one durable chokepoint (endpoint agent + execution/data plane) is a margin note, not a thesis slide.** (Section 01 margin: "our agent secret sauce.") The deck's strongest structural asset is under-sold while the headline competes where Action1/Flamingo/Intune sit at zero margin.

8. **No margin math.** No entry ACV, no CAC, no expansion rate. (Value-chain gap, Section 03.) "Advance by evidence, not by date" is honest but there is no P&L to advance against, and no way to test the land-low/expand-up bet.

9. **AI-error recovery / rollback is absent for the target persona.** (Section 04, no such row.) "AI Coworkers execute, super automated" against endpoints for a "limited platform-eng capacity" IT team with no described catch/rollback. Structural support cost once built; belongs on the Phase 1 critical path, not Phase 3 governance.

10. **Product-name drift.** Body = "Ecoverse"; margin note = "Does this cohort switch to **ACP**?" (Section 01 ICP margin.) This is a *citation of Mackie's own words*, so it is not a product-copy violation — but the internal ambiguity (Ecoverse / ACP, and whether the current product name is something else again) should be pinned before external use. `[CS: LOW — cannot confirm current canonical product name from this corpus]` `[WOBBLY]`

11. **Licensed-source external-publication risk.** (Evidence matrix; deck's own warning.) Canalys/Gartner reuse must be cleared before any of these figures leave the room. Named, not resolved.

12. **Format inversion risk (the deck's own trap).** Confident scaffolding ("winning formula," four symmetrical phases, blank Section 04 tables, the capability wheel) reads as strategy; the honest caveats and margin notes read as optional commentary. In a kickoff the room will anchor on the polished parts and skim the load-bearing questions. This is a *presentation* risk that will actively distort the meeting if not pre-empted.

---

## RISK (will break under realistic use)

- **RISK:** If the kickoff opens on the "Winning formula" / four-phase slides, the room ratifies template-as-thesis and the killer-app question dies in the margin. Council's Editor line — read the margin notes first, as the agenda — is the mitigation; the deck's default reading order is the hazard.
- **RISK:** Entering IT Pro <1000 at a low-price/self-serve posture to match Action1/Flamingo is margin-dilutive at entry with no modelled accretive expansion — the P&L bet is currently unfalsifiable.
- **RISK:** Self-serve trial promised (frontstage) while permissions/audit are "in dev 2026" and user-mgmt is a "2027 candidate" (backstage). The customer hits the wall inviting a second technician. `[CS: HIGH — inference from Section 04 status]`

---

## What the council missed (critic value-add)

- **No framed decision / ask for the room** — council named the cruxes but not the *structural* absence of a decision slide. (P0 #3.)
- **Source-verifiability gap** — council took the internal figures as sourced; critic flags that the cited source slides are *not in the corpus* and therefore cannot be grep-verified before quoting (47% rule). (P1 #6.)
- **Licensing exposure** on Canalys/Gartner reuse (§10b) — an ethics/legal flag council did not raise.
- **Counter-metric read (Gate 2)** — cannibalization of the existing N-sight/N-central base is an unprotected counter-metric; the deck only partially guards it. Council's lenses did not score mission/counter-metric.
- **Product-name drift** (Ecoverse vs ACP) — an internal-consistency flag council did not surface.

---

## Handoff note

This is a pre-decision review of a working draft, not a build re-score — there is no `critic-pass-2` unless a revised deck or a build follows. Every UNSOURCED/SINGLE-SOURCE finding above must be resolved or cut before any of these figures reach a SOURCES.md or leave the kickoff room (CLAUDE.md §4, §9b). The three P0 items are decisions for Beth and the room, not gaps critic closes.
