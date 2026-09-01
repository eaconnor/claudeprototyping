# Critic Pass 1 (Pre-Build) — EBR Coworker 004 Assembly

**Reviewing:** briefs/ebr-coworker-004-assembly.brief.md
**Against:** briefs/ebr-coworker-004-assembly-math-recount.md + 5 cited sources (technica-ebr-runbook-draft, ebr-coworker-phased-plan, vertesia-brief, apex-sentient-design-deck-ref, idea-chess-qbr-round3) + 1 indirectly-cited source pulled for verification (mvp-thread-banked-2026-08-18.md)
**Not yet built:** no HTML exists. Apex Bridge design-system-compliance section is deferred to critic-pass-2 in full — nothing to check code against yet.

---

## Source check (done first, per contract)

**PASS — spot-checked claims trace cleanly.** Verified against source text, not just plausible wording: "Vertesia ships zero PSA connectors" (vertesia-brief-2026-08-21.md, quoted verbatim); "over 100 models with seamless switching" (same); Apex four primitives Customer/Device/Policy/Audit Log + sub-0.80 switch-affordance rule (apex-sentient-design-deck-ref, matches almost word for word); N3 verdict and its "partially superseded" characterization (idea-chess-qbr-round3, RE-SCOPED section, accurate); mvp-thread-banked row 9 quote "pricing/positioning ahead of what's earned is what killed the ~5% version" (confirmed verbatim in mvp-thread-banked-2026-08-18.md, though that file is not in the brief's own evidence_sources list — see FAIL below). Design tenet 1 (signal-fired not calendar-fired), the Nov 2 DECISION section, and C-11's Vertesia-is-a-given framing all match the phased-plan source closely, including the correct "not evidence, a decision" framing carried through.

**FAIL — tag inconsistency between Gate 1 and Gate 3 on the same underlying fact.** Gate 1 (brief line 34-35) tags "David's actual judgment. The 8-tab structure, the opening move..., and the exact gap-logic" as `[? — owner: David/Beth]`, explicitly unconfirmed. Gate 3's Autonomy section (brief line 58) describes the coworker running unattended through "the 8-tab grading pass" and tags this `[D — technica-ebr-runbook-draft-2026-08-21.md, intent steps 1–8]`. This is the identical fact — the runbook's own §18 hedges it with `⟨VERIFY: the exact 8 and the logic⟩` — carrying a `[?]` in one gate and a `[D]` in the other. Gate 3 is quietly building its autonomy claim on the more-confident version of a claim Gate 1 says is not yet confirmed. This is exactly the "Gate 3 quietly assumes something Gate 1 never established" pattern the review was asked to check for, and it's real, not merely apparent.

**FAIL — the 8-connector/6-source mismatch is real, and worse than the brief describes.** Confirmed: runbook wrapper says "manual paste (trial) → 8 connectors (later)" (technica-ebr-runbook-draft, line 42) against 6 explicitly named trial sources (N-Central, Enforcer, Usecure, Halo, Roost, Cloud Capsule; runbook line 22, brief line 36). The brief tags this `[? — not attempted in this pass]` — honest about not resolving it, but understates the scope. `mvp-thread-banked-2026-08-18.md` — already in the citation chain (the phased-plan quotes its row 9 directly, and it predates the 004-assembly brief by three days) — documents a *third*, non-equivalent "8": "N-able owns 3 of 8 EBR data pulls; other 5 (Halo PSA, M365, phish-sim, AD/IdP, compliance) not controlled." Those five don't map cleanly onto the runbook's 6 named sources either (Enforcer, Usecure, Roost, Cloud Capsule appear nowhere in the mvp-thread-banked list). Add vertesia-brief's "8 integrations" (a business-commitment figure, unrelated to trial connectors) and the 8-tab Excel, and there are at least four structurally different "8"s live in the same corpus, none reconciled to each other. Leaving this as a single unresolved `[?]` is defensible in outcome (there is no clean one-grep answer) but the brief's own evidence_sources list should have included mvp-thread-banked — it was one hop away and bears directly on the exact question Gate 1 raises.

**SINGLE-SOURCE — Gate 1's entire problem statement.** The blank-canvas EBR practice, the liability-logging discipline, the state-of-union framing, and the "million versions flying around" demand signal all trace to one document, SRC-U-009, cited by row number across six-plus distinct claims (rows 190/191, 258/278, 280, 281, plus the unlabeled "runbook intent step 1" citation). The only independent corroboration in Gate 1 is a single Reddit thread, and only for the calendar-theater half of the claim. This isn't hidden — the brief's own framing ("Craig's opinion" vs. "externally corroborated") shows awareness — but two source streams carrying an entire strategic bet's problem statement is a SINGLE-SOURCE condition that should be named explicitly, not left implicit in citation density.

**UNRESOLVED — SRC-U-009 could not be independently audited in this pass.** It was not among the five documents supplied for review, and a direct path-guess read failed (file not found at the attempted location). Every row-numbered claim traced to it in this review is therefore carried on trust from the brief's own transcription, not independently confirmed against the primary document. This is a gap in this critic pass, not a finding against the brief — but it should be closed before SOURCES.md is assembled at handoff (CLAUDE.md §9b), since SRC-U-009 is the single most load-bearing document in the whole assembly.

**PASS — no claim found that oversells its citation** beyond the two items flagged above. Everything else spot-checked (Vertesia allocation table, Confluence 62302388241 figures, apex-sentient-design intent-signal rule, N3/N2 idea-chess synthesis) matches its source's actual wording and hedging level.

---

## Gate 1 — Problem

**PASS:** the theater problem and the blank-canvas rework problem are sourced, not merely asserted, and the brief correctly separates "externally corroborated" (Reddit) from "single informant" (Craig/David via SRC-U-009) rather than blurring the two.

**FAIL:** see tag-inconsistency finding above (David's-judgment `[?]` vs. `[D]` in Gate 3).

**RISK:** the entire Gate 1 argument rests on two source streams (SRC-U-009 + one Reddit thread) for a bet being made against a fixed Nov 2 monetization date. If SRC-U-009 turns out thinner than its row-count citation density implies, Gate 1's "real and sourced, mostly" verdict weakens considerably. This can't be checked in this pass — flagged as UNRESOLVED above — but it is a standing risk to the brief's central claim.

## Gate 2 — Right thing

**PASS:** the mission call (Bet A, moat = C2) and its terms (N-able owns runbooks + every connector, Vertesia owns console only) are correctly characterized against the vertesia-brief source, and the brief is honest that this is "a call, not evidence" rather than dressing Beth's decision up as validated strategy.

**PASS:** the counter-metric (liability exposure, David/Craig trust divergence) is structurally protected independent of the unresolved risk-tier question — the brief correctly notes the liability-log rule holds "regardless of tier" (row 280), so the counter-metric protection doesn't collapse even if high-vs-medium stays unresolved.

**MISSING:** Gate 2 names the Defend crux (does C2 stay portable, or accumulate inside Vertesia's schema?) as "the single named Defend crux, unresolved" — correctly identified as the whole game for the venture — but never states whether or how this crux touches the *specific artifact about to be built* (a Phase 1 dashboard-surface prototype). If portability is a backend/runbook-storage-format question that a UI mockup cannot resolve or represent either way, the brief should say so explicitly rather than leaving a strategic unresolved crux dangling next to a build directive without scoping it out. As written, a reader can't tell whether build is expected to somehow gesture at this crux or is correctly exempt from it.

## Gate 3 — Built right

**FAIL (build-blocking):** the EBR-review primitive is explicitly undefined ("routed to the handoff thread") while Gate 3(a) simultaneously requires the coworker's output contract to "operate over Apex's existing four [primitives]." Per Apex's own Sentient Design model (apex-sentient-design-deck-ref), every primitive needs anatomy, lifecycle states, relationships, and render rules — a review isn't naturally a Customer, Device, Policy, or Audit Log. machine_behavior says "treat... primitive-definition as blocking opens, not defaults to silently resolve" but gives build no fallback instruction: render the review as a composite of existing primitives? As a bare Audit Log entry? Something else? Without an explicit scaffolding decision, build will either (a) invent a placeholder primitive to make the screen coherent — directly against CLAUDE.md §4's no-invented-grounding rule unless visibly marked `[A]`, or (b) build something that doesn't actually conform to the Sentient Design model the brief insists this be built in. This is the sharpest concrete build-blocking gap in the brief.

**FAIL (toothless directive):** machine_behavior instructs "treat risk-level... as blocking, not a default to silently resolve," but no "medium" guardrail behavior is defined anywhere in the source set — only the high-risk sign-off gate is ever described. In practice, whether or not risk-level is later confirmed as medium, build has no alternative behavior to fall back to and will de facto ship the high-risk gate regardless. The directive not to silently resolve the question is unenforceable as written because only one answer has ever been specified.

**RISK:** "signal" (for the signal-fired trigger) is undefined anywhere in the source set. Build will need *some* visible trigger example to make the entry point legible (a ticket spike, a renewal window, an explicit ask) — none of these are sourced. Whatever example gets used must be marked `[A]` visibly in the artifact per CLAUDE.md §4; the brief gives no advance guidance that this labeling requirement applies here, creating real risk of an invented-but-unlabeled example landing in the build.

**PASS:** the dual-surface split (Must 6, internal notes vs. client-facing, never a redaction toggle) is sourced accurately and stated as structural, not optional — a clear, buildable directive.

**PASS:** the sub-0.80 switch-affordance / Unverified-hard-block rule is sourced correctly to the apex-sentient-design deck and stated with enough precision (render best guess + expose switch; Unverified never renders client-facing regardless of sign-off) to be directly buildable.

**MISSING:** no instrumentation is defined for "pulled and used, not politely tolerated" — the brief names this gap itself. Not build-blocking for the HTML artifact, but it means the eventual Bradley rail's success-criteria/ROI fields will have nothing concrete to point to beyond the qualitative framing already in the brief. Flag now so handoff doesn't quietly manufacture a number to fill the gap.

**MISSING:** frontmatter `idea_score: 13` carries no inline confidence qualifier; the provisional caveat only appears in the body note. A reader who only reads frontmatter (or tooling that only parses frontmatter) would take 13 as a scored figure rather than an estimate acknowledged to have "no rubric text... in the source set for this pass."

---

## Buildability verdict (per CLAUDE.md §9b confidence regime)

`confidence_regime: PROCEED-FLAGGED` is the correct call given 46.7% > 30% (recount confirmed, not re-disputed here) — evidence uncertainty, not decision uncertainty, on most of what's flagged. The frontmatter's three required fields are present and mostly give build real direction (dashboard-surface-first, dual-surface structural, hard-block enforcement). But two specific gaps are genuinely build-blocking as stated, not just "provisional":

1. **The EBR-review primitive gap** — build cannot honor both "operate over Apex primitives" and "primitive-definition undefined, don't invent" without an explicit scaffolding decision this brief doesn't make.
2. **The risk-tier directive is unenforceable** — "don't silently resolve high vs. medium" has no medium behavior to resolve *to*, so build will silently resolve it by default regardless of intent.

Everything else flagged (signal definition, instrumentation, connector-count mismatch) is real but not build-blocking for a Phase-1 dashboard-surface prototype specifically — they're handoff-stage and Phase-3 concerns respectively, and should be named as such rather than left ambiguous about which stage owns them.

---

## Design system compliance

Deferred in full to critic-pass-2 (post-build) — no HTML exists yet, nothing to check Apex Bridge tokens, typography, or surface treatment against.
