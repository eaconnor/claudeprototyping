# Critic — Pass 1 (pre-build)
**Brief:** briefs/channel-gap.brief.md · **Math recount:** briefs/channel-gap-math-recount.md
**Regime:** PROCEED-FLAGGED · **Tier:** 1 Concept — decision-space visualization
**Reviewer note:** No build exists yet. Design-system compliance section below is N/A for this pass — re-score in critic-pass-2 once HTML exists.

---

## Score table

| Dimension | Score /5 | Why |
|---|---|---|
| Coherence | 5 | Solution (decision-space viz) traces directly to the named problem (Channel undecided). No drift toward "let's just pick one." |
| Source-fidelity | 4 | 26.3% [A]+[?] verified by hand recount against the brief's own claim table — matches. Spot-checked against source files (blueprint §15, gateway code dump, CHORES.md, competitor-patterns scout) — every [R] claim traces to real text, no invention found. Docked one point: Gate 1's core "no frontend exists" finding rests on two reads of the *same static snapshot lineage*, not an independently sourced second copy — the brief names this itself (failure mode 3) but it's still a live unresolved fidelity gap, not a closed one. |
| Demo-ability | 3 | The brief specifies *what* the Tier 1 artifact must show (four candidates + evidence status, two divergences, Channel/Customer-Engagement separation, SMS-tag honesty) but gives build zero layout/interaction guidance for *how*. A "decision-space visualization" could become a table, a matrix, a card wall, or a swimlane diagram — nothing here constrains that choice, which means fidelity to the brief's intent is entirely dependent on build's unguided judgment. |
| Differentiation | 5 | Adds real structure beyond re-stating blueprint §15: explicit domain model, corrected [R]/[A]/[?] tagging vs. the prior pass's 57-62%, two named unresolved competitor divergences, a Customer-Engagement adjacency model with an explicit non-conflation warning, and four named failure modes tied to specific downstream build behaviors. |
| Risk | 4 | Four failure modes named with mechanism, not just labeled. Docked one point: naming a failure mode ("silent bias toward SMS") is not the same as giving build a checkable constraint to verify it didn't happen — there's no acceptance test for "did the artifact avoid this," which is exactly the gap critic-pass-2 will have to catch after the fact instead of before. |
| Scope discipline | 4 | Correctly scoped as one visualization, not a build-out of any candidate channel. Docked one point on volume: four channel candidates × evidence status + two carried-forward divergences + a separate-but-adjacent Customer-Engagement model + four failure-mode callouts is a lot of simultaneous surface area for a Tier 1 artifact to hold without becoming visually cluttered or, worse, getting simplified in a way that quietly drops one of the required elements. |

**Total: 25/30**

---

## Gate check (narrative)

**Gate 1 (Problem — real and sourced?):** PASS. Strongest gate in the brief. Backend infra existence and frontend absence are both `[R]`, code-verified, with the one honest exception (`apps/fake-mcps` snapshot-freshness question) named rather than papered over.

**Gate 2 (Right thing — advances mission?):** Correctly answered "cannot be answered" rather than manufactured. OKR objective/KR/counter-metric are `[?]`, named as absent in frontmatter, not filled with a plausible-sounding guess. This is the brief doing exactly what §4 of CLAUDE.md requires — unknown as a terminal answer, not a low-confidence one.

**Gate 3 (Built right — tested how?):** Deliberately N/A per `machine_behavior`. The brief is explicit that 0/4 candidates have a test plan and that this is correct, not a gap, at this tier. No objection.

---

## Punch list

**PASS:** Every `[R]` claim checked against its cited source file (blueprint §15, `channel-gap-03` code dump, `channel-gap-02` CHORES excerpt, `channel-gap-05` competitor scan) matches the source text. No invented grounding found.

**PASS:** Math recount arithmetic verified by hand: 10R+4D+1A+4?=19; 5/19=26.3%; inflated-with-meta 9/23=39.1%. Both numbers are correct, and the brief uses the honest lead number (26.3%) rather than the flattering-but-wrong inflated denominator or a deflated one.

**PASS:** The brief self-flags its own single-source and thin-pool risks (footnotes 42/43/50 → one file; five-vendor competitor scan → zero independent confirmation) rather than presenting synthesis as consensus. This is the source-check work critic normally has to do from scratch, already done in the artifact.

**PASS:** `proceed_because` and `machine_behavior` fields are both present and specific — "build a decision-space visualization, not a recommendation" is an instruction build can be held to, not a vibe.

**FAIL — no layout/interaction spec.** The brief tells build *what* four things must be visible (candidates+evidence, two divergences, Channel/Customer-Engagement separation, honest SMS tagging) and *never* tells build what shape that takes. At Tier 1 that's defensible as "give build room," but combined with zero acceptance criteria for the failure modes (see below), it means build's actual layout choices are unreviewable against this brief until critic-pass-2 — which is too late to be a design decision and becomes a rework decision instead.

**FAIL — no acceptance check for the named failure modes.** Failure mode 1 ("silent bias toward SMS looking decided") is well-argued in prose but has no corresponding "here's how you'd know if the build did this" test. Same for failure mode 2 (Channel/Customer-Engagement conflation). Naming a risk in a brief and giving build a way to self-verify against it are different deliverables; only the first exists here.

**MISSING — explicit render guidance for the two carried-forward divergences.** The brief says "carry both unresolved competitor divergences forward without picking a side" but doesn't specify the visual grammar for "unresolved" (a flagged icon? an explicit toggle between two claims? a footnote?). Without this, build has to invent a convention for showing "we don't know" — which is precisely the kind of decision that can accidentally resolve toward one reading under time pressure.

**MISSING — no stated audience or "job the artifact does when looked at" beyond the qualitative (a)-(d) list in Gate 3.** Tier 1 Concept still benefits from one sentence: who looks at this, and what does looking at it let them decide that they couldn't decide before. Absent that, "does this pass demo-ability" has no test beyond critic's own read.

**MISSING — org-ownership (Structure) gap.** Already self-named in the brief's own "What's missing" section as adjacent, not solved here. Confirmed real and correctly scoped out — flagging only so it isn't lost between this brief and whatever picks up the Channel decision once made.

**RISK — Bradley rail's routed cards could smuggle in a recommendation.** The standard `[ROI]` block format (Business/User/Unknown per card, per §9b) is exactly the place a Tier-1-respecting brief can accidentally stop being Tier-1-respecting: if build fills in plausible Business/User value numbers for one candidate channel and leaves the others thin, the rail itself becomes the recommendation the brief explicitly forbids. `machine_behavior` says "do not claim validation on any candidate" — the routed-card ROI block is the single highest-risk surface in the whole build for violating that line, and the brief does not call this out directly.

**RISK — visual ordering as implicit ranking.** If build lists SMS first (because it has the most prose in this corpus, thanks to the workshop call and the mspprocess precedent), first-position bias alone can read as "the leading candidate" regardless of caption text. The brief names the SMS-bias failure mode in the abstract but doesn't tell build anything about candidate ordering, sizing, or visual weight — the most likely place the PROCEED-FLAGGED regime gets violated by accident, not by intent.

**RISK — footnote/WOBBLY flags may not survive translation into a visual artifact.** The brief carries [WOBBLY] and single-source flags correctly in prose. A visualization has no native grammar for "this looks like a fact but rests on one file" unless build deliberately builds one (e.g., a visible confidence-tier marker per data point). If build drops the tag under space constraints, the artifact will look more settled than the brief it's built from.

**Not scored — design system compliance.** No HTML exists yet. Defer to critic-pass-2: check for Apex Bridge token block, Inter/JetBrains Mono, rounded corners/soft shadows (no Bauhaus `6px 6px 0`), 3-way mode toggle, no Itten palette bleed, no retired-term drift (confirm "ACP/Harness" naming matches current product name per CLAUDE.md AGENTS section — brief itself uses "ACP/Harness" throughout, which is fine for citation but should be checked against current product-facing naming before it lands in UI chrome).

**UNSOURCED:** None found. Every factual claim checked traces to a locatable file/line/quote.

**SINGLE-SOURCE:** Already self-flagged inside the brief (footnotes 42/43/50 → `qbr-competitor-products-2026-07-28.md`; five-vendor competitor scan → zero independent confirmation). No new single-source finding beyond what the brief itself names — confirming it, not discovering it.

---

## What build must get right to honor PROCEED-FLAGGED

1. No candidate channel gets first position, larger visual weight, a higher implicit score, or a filled-in ROI number that the other three lack.
2. The [A] tag on "bidirectional SMS extension beyond the cited inbound-only precedent" must render as visibly as the [R] tags around it — not demoted to a tooltip or footnote a viewer can miss.
3. Channel and Customer Engagement need genuinely separate visual zones (not just separate headings on one continuous card) — a portal candidate touching both decisions is the single most likely place these collapse into each other.
4. Both unresolved competitor divergences (CloudRadial portal claim, vCIOToolbox sync-vs-AI-features) render as open questions with a visible "unresolved" marker, not as settled facts with a citation.
5. The Bradley rail's routed cards and ROI blocks stay generic across "whichever channel gets chosen" rather than pre-filled per candidate — Unknown ROI stays honestly Unknown per §9b, not filled with a plausible number to make the rail feel complete.
