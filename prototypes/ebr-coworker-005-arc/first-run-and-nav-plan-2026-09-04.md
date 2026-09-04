# Plan — HARNESS nav/IA redesign + EBR first-run reframe (Tier 2 concept, plan + prework only)

## Context
Two threads that belong together, folded per Beth: (1) the **nav/IA redesign** that grew out of her 8 markup-review notes on `ebr-app.html`, and (2) the **first-run experience reframe** the markup-review peer session asked for. Both are **Tier 2 concepting / riffing — NOT spec-ready.** Plan + prework only; **no rebuild** of `ebr-app.html`/`landing.html`; **Beth signs off before anything touches the wizard.**

**Detailed source of truth stays `prototypes/ebr-coworker-005-arc/nav-redesign-intake-2026-09-03.md`** (workstreams, personas, scout findings, whiteboard transcription, card-sort inventory). This plan *unifies and sequences* the two threads; it does not replace that doc — which is intact (read-only).

## Decided 2026-09-04 (Beth — strong signal)
- **Nav frame → Option D: "working day, control-plane home"** (4 tabs: Home / Coworkers / Company / Settings; control plane is the *home surface*, not a 5th tab — threads D-Q2 without betting it). Sketch: `nav-options-sketch-2026-09-04.html`.
- **Home surface → the Floor.** Beth: *"I LOVE the floor!"* The control-plane home opens as an **establishing overview** — every coworker as a live line on a factory floor, work flowing, health + ★what's-scary at a glance — then **drills into the list** (overview→detail; the "walk the floor" opening). **Constellation** (whiteboard's Coworker Army radial) is the alternate lens, not the default. Sketch: `control-plane-home-sketch-2026-09-04.html`. Tier 1 vision, fictional data, layer-2 aspirational viz.
- Still open on the Floor: does the ★scary row wire to the 4 safety directions (rate / scope-drift / attention-decay / containment); the by-type⇄by-client facet; Floor-vs-Constellation default (Beth leans Floor).

## Settled (Dunlop + Beth, 2026-09-03 — do NOT re-open)
- **Experts cut** from the nav.
- **Execution = home / primary surface.**
- **Value Ledger = a setting**, not a primary tab.
- **All-coworkers status view needed.**
- **Three-layers rule** (`DESIGN-REFS.md`): marketing (`landing.html`) = its own language; Apex-UI data-viz can be aspirational; product **chrome/IA mirrors real HARNESS eng reality**, not a demo-invented nav.

## Unresolved upstream (Beth's calls — this plan must NOT bet on them)
- **Control-plane positioning (D-Q2):** "we are *not* selling a control plane" (North Star, Confluence 62176526400) vs. "N-able Harness **is** a control plane" (commercial Vertesia deck, Aug 2026). Sourced both sides; commercial deck carries a signature deadline. Making the control plane nav-prominent bets on one side.
- **Coworker org axis / fleet-view scope:** MSP-wide vs. per-client (D-Q1 and E — same ambiguity, twice).
- **Onboarding vs. standing feature** for the "shop for automation" flow (B / note 8).
- **Visualization ambition (C)** in service of or in tension with the tested "trust it fast" value prop — `[WOBBLY]`.

## Workstreams (from the intake, sequenced)
- **A — Nav & IA architecture.** De-risked by Dunlop's calls; final shape drawn once C/D land.
- **B — Onboarding / first-time UX.** ← the first-run reframe (deep dive below) is the centerpiece here.
- **C — Visualization system** (Manuel Lima ambition). Prework in `DESIGN-REFS.md`; `[WOBBLY]` flag on cost vs. clarity.
- **D — Coworker org model + "heart of the product" / control-plane.** The crux; two open questions above.
- **E — Human orientation / company / governance surface.** Build/buy/skin question (Vertesia may already own console/permissions/versioning).
- **F — Value Ledger metrics.** Demoted to a setting; grounding stays useful for *what* it shows (the `script_execution` vs `ai_reasoning` split; the "using default" baseline).
- **G — Daily-briefing home surface** (whiteboard): a "me / bot army" to-do split, sorted important/urgent.

## Activities to make it good (the full set)

**Done / in-hand (don't redo — reuse):**
- **Scout returned** → `scout/onboarding-and-governance-viz-inspiration-2026-09-03.md`. Bucket 1 (onboarding/fTUX): **Clay** (survey→AI-generated first workspace) and **Lemonade/Maya** (one-question-at-a-time conversational intake) are the two strongest precedents for note 8's "bring your task, get matched"; **Capital One** = keep object-based primary nav + add a goal-driven finder layer; Superhuman/Linear/Arc/Notion `[CS: MEDIUM]`. Bucket 2 (governance viz): **Kiali/Istio** (live topology + policy state on one graph), **Wiz Security Graph**, **AWS IAM Access Analyzer**, **Backstage catalog** — typed relationship graphs for E. Named gap: no admin dashboard cites Lima `[WOBBLY]`.
- **DESIGN-REFS.md** (2026-08-27) — Beth-curated Lima sourcing + Google dataviz principles + the three-layers rule. Feeds C.
- **Value Ledger regrounded** to the spec's real JTBD (`003-value-ledger-council-testimony-2026-08-03.md`): the credible client-facing ROI number; the `script_execution` (admin owns baseline) vs `ai_reasoning` (self-reported, unreviewed) split; the "using default" baseline chokepoint. Also caught a header-says-4/list-shows-3 coworker inconsistency in the ledger (47% rule).
- **Personas cast** (reuse, don't reinvent): Priya Nandakumar (relationship lead), Marcus Whitfield (owner-operator, in the weeds), Deepa Chandran (MSSP, "what's scary"), Tom Reyes (burned-before skeptic). Weight Deepa + Tom on the safety/trust work.
- **Whiteboard transcribed** (Board 1 daily-briefing + task-decision-tree + create-bot loop; Board 2 "Coworker Army" radial + factory/Kits). Beth's own mental model captured, cross-referenced to the kitting thesis.
- **Dunlop review** — four settled calls (above).

**To do (owner):**
- **Card sort** *(Beth)* — the immediate action. Full candidate-card set assembled at `nav-redesign-intake…:216-244` (current nav minus Experts · `FAMILY` types `ebr-app.html:764-769` · company/governance items · daily-briefing surface · org-axis options · Vertesia lifecycle · golden-tenant/deltas). Doubles as evidence toward D's org-axis and A's shape.
- **Moodboard for B + C** *(Beth)* — from scout + DESIGN-REFS + the whiteboard's radial "Coworker Army" burst.
- **JTBD pass on the fleet view** *(Claude, `[A]` hypothesis)* — functional/emotional/social jobs of "a view of my whole coworker fleet"; started in intake, extend before E is drawn.
- **Framing metaphor pick** *(Beth)* — react to the brainstorm list (crew · guild/apprentice · roster · orchestra · kitchen brigade · garden · squadron/fleet · newsroom · constellation/swarm…). Ingredients, not a shortlist.
- **"What's scary" / safety design** *(Claude + Beth)* — rogue-fleet precedent (Hugging Face swarm, Jul 2026, 17,600 actions/~4 days undetected) reframes task #3 from "flag a bad output" to "could the fleet take cascading unauthorized actions unnoticed." Ties to the audit-trail claim + gated-autonomy MUST.
- **Get Sidhant's build-status-bar screenshot** *(Beth/Dunlop)* — real precedent, not locatable here `[CS: UNKNOWN]`; needed before the status view is built to spec, not guessed.
- **Reconcile the deck's build/buy/skin contradiction** *(Dunlop/Nicole)* — "What the User Sees" (N-able owns app/coworkers/runbooks) vs "Partnership Grid" (Vertesia owns them). Decides whether E's company/permissions/version surface is N-able's to build or Vertesia's console to surface. Read `briefs/vertesia-brief-2026-08-21.md`, don't re-scout.
- **Confirm the coworker count** *(Beth)* — the two five/six errors (brief §D + `landing.html:261` "Five" but six cards) reconcile once the real number (DEC-006 / FSN-83143) is named.

## DEEP DIVE — first-run experience reframe (workstream B)
**The problem:** first run doesn't teach the "coworker" mental model or answer the job-threat fear, and the app's *most* persuasive surface (the multi-cycle delta/register) is gated **behind** activation (`ebr-app.html:1289`), behind its *least* persuasive one (a 9-area accordion). **The reframe:** the user already owns the answer key — they hand over 2–3 past EBRs; the coworker's first act is to rebuild quarters they already know and show where it matched and missed, so carry-forward delta is real **day one**.

**1 · Sequencing** — reuse existing surfaces, move the aha *before* configuration:
- Step 1 "Your report" → **"Your last few quarters"** — accept 2–3 past EBRs + a few questions. **Per-quarter parse confidence shown, never averaged across years** (clean recent workbook vs. old slide deck differ — feature if shown, credibility problem if hidden). Leans on `SHAPES`/`runParse`; explicit clean/medium/low grade is the piece to build `[CS: MEDIUM — parse sim exists, grading not confirmed]`.
- **NEW aha beat before "Connect AI": "Here's your last quarter, rebuilt"** — replay a quarter the user knows, show **match vs. miss** (reuse `deltaView()`/`spark()`/`overTime()`). Several quarters in → delta is real immediately.
- **Demote the 9-area accordion** — detail after the reveal earns attention, not the first wall.
- **Connect AI / Activate move later** — configuration after trust, not before.

**2 · Kits mental model as UX (not copy)** — the job-threat answer as an *object*: you hand over your piece, it comes back **done** — you never gave it away. Visualize the ingest→rebuild→return round-trip as a kit; reuse the arc technique (`translateArc()`/`systemMap()` bezier) for input→work→artifact-returned, both directions. **No copy line** — a visible two-way movement of the user's own object.

**3 · Earned autonomy per-section (not a settings screen)** — standing mechanic expressed *in the flow*: each area shows the coworker's **self-rated capability + a human co-rating** ("transparency = winning") as the graduation currency for manual → assisted → autonomous. One thread, three places: reuse `honestyBadge()` + close the Value Ledger `ai_reasoning` review-gap (workstream F). Inline at the point of work; UX expresses *earning* without claiming backend enforcement (`trust_level` is `[CS: UNKNOWN — no acp-core access]`).

**4 · Stays low-fidelity (explicit)** — the **8 Prep pulls** and the **Judge ★ moment** stay lower fidelity; **do not build toward Tier 3.** Riffing to give Beth something to react to.

## Recommended order (from intake :248-268, post-Dunlop)
1. **Card sort** (now) — doubles as D/A evidence.
2. **D-Q2 control-plane tension** — Beth's call.
3. **D-Q1 org axis + E fleet-view scope** — resolve as one decision.
4. **Beth's moodboard** for B + C (scout material + `DESIGN-REFS.md` + the whiteboard's radial "Coworker Army" burst).
5. **A — nav shape** — draw once C/D land.
6. **First-run reframe build** (workstream B deep dive) — when Beth signs off.
7. **Resume `NEXT-STEPS-2026-09-02` Step 4** (landing copy) — independent, anytime.

## Constraints (non-negotiable)
Apex Bridge tokens (`.claude/agents/build.md`) · honesty badge verbatim **`◐ TARGET STATE — not yet wired`** ×3 sites · `⟨VERIFY⟩` slots ship with visible provisional markers · all seed data fictional (§9b).

## Grounding verified against files (not relayed)
- Machinery exists, mis-sequenced: `CYCLES` (:771), `FINDINGS` history/since/cycles, `deltaView()`/`overTime()`/`spark()`/`translateArc()`, all behind `S.activated` (:1289); `BUILD` 5 steps (:778). [CS: VERIFIED]
- Whiteboard transcribed in `nav-redesign-intake…:140-162` — Kits two-way arrow, create-bot "runs tests," co-rating "transparency = winning." [CS: VERIFIED]
- Maister job-shop/production-line (`ebr-service-blueprint-2026-07-29.md:~446`) + kitted-mechanism (`vision-synthesis-2026-07-27.md:23`). [CS: VERIFIED]
- Dunlop's four calls + settled nav decisions (`nav-redesign-intake…:170-173`). [CS: VERIFIED — intake doc]

## Not building anything
Plan + prework only. `ebr-app.html` / `landing.html` untouched. Beth signs off before build.
