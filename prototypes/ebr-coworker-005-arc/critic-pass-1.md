# Critic pass 1 (pre-build) — EBR Coworker rebuild
Reviewed against: `briefs/ebr-coworker-rebuild-2026-09-01.brief.md` (pre-fix version), `briefs/ebr-coworker-rebuild-2026-09-01-math-recount.md`, `~/.claude/plans/starry-giggling-widget.md` (incl. 2026-09-01 Amendments), `briefs/technica-ebr-runbook-draft-2026-08-21.md`

## Scorecard

| Dimension | Rating |
|---|---|
| Gate 1 — Problem | PASS |
| Gate 2 — Right thing | PARTIAL |
| Gate 3 — Built right | PARTIAL |
| Source check | PARTIAL |
| Amendment compliance (7 amendments) | PARTIAL — 6/7 fully applied |
| Design system compliance (brief-stage) | PARTIAL |

## Gate 1 — Problem
PASS: Business problem (Technica's 8-tab manual review) traces to SRC-U-009 + coded corpus [R]. Prototype-problem (005-arc drift) traces to direct file diff [D]. Backend-reality claims are code-line cited (schemas.py:63-75, ports.py:52-84, agents/models.py:24-57) and match the runbook draft's corrected figures (5→9 fields, guardrail-overstatement fix) verbatim.

## Gate 2 — Right thing
PASS: Honesty-badge rationale ties directly to a verified backend gap, not an assumed preference.
FAIL (at time of review): Counter-metric had no committed enforcement mechanism for 3-site badge coverage. **Fixed post-review**: Gate 3 now names an explicit per-site post-build check.

## Gate 3 — Built right
PASS: Test protocol is concrete and executable (click-through path, grep command, landing.html copy check, guardrail-enforcement negative check).
MISSING (at time of review): Sign-off ownership for ⟨VERIFY⟩ slots before they ship even as provisional remains genuinely open — not fixed, correctly left as an honest gap (this is Beth/David's call, not a brief defect).
RISK (at time of review): Site-3 honesty-badge composition (replace vs. augment) was unspecified. **Fixed post-review**: specified as augment, with rationale (the count is real display info, the badge caveats what the relationship means vs. what it is).

## Source check
FAIL (at time of review) — math-recount not independently verifiable: sampled 6 tag citations against the brief body. 2 of 6 had no locatable inline tag (Runbooks-shell decision in Section D; the entire Visual System section carried zero inline markers). This is the CLAUDE.md §9b 47%-rule scenario. **Fixed post-review**: brief's Evidence-ratio section now carries an explicit verification caveat — the 45.5% figure is flagged as unverified pending a fresh grep pass, not presented as settled.
FAIL (at time of review) — compound tag `[R backend fact / A new design element]` broke single-character tag countability. **Fixed post-review**: split into properly separated single-character tags.
UNSOURCED (at time of review) — `gate: 60` frontmatter field had no definition or citation, inconsistent with the discipline applied to `idea_score: null` on the same block. **Fixed post-review**: field removed.

## Amendment compliance (7 amendments, starry-giggling-widget.md §9)
1. role-play-simulator.html kept-linked/labeled/not-archived — APPLIED. RISK noted: "Correctly cut — leave cut" section header read more absolute than its own body text. **Fixed post-review**: added an explicit literal-reading note at the top of that section.
2. Vision framing = write fresh, not restore — PARTIALLY APPLIED at time of review: body text was correct but grouped under a "### F. Restored content: ... vision copy" header, contradicting itself. **Fixed post-review**: split into Section F (primitives grid/intent-tier table, genuinely restored) and a new Section G (vision copy, explicitly titled "NOT a restoration, write fresh").
3. onboarding.html-first / Figma-fills-gaps priority — APPLIED, no changes needed.
4. Will's Figma gaps addressed (version-status indicator; lock-holder+TTL; locked's own color) — APPLIED, no changes needed.
5. Visual system = not Itten, not literal Figma skin — APPLIED in substance at time of review, but named only as generic "Apex 2.0" with no tie to an actual spec a build agent could check against. **Fixed post-review**: retitled to Apex Bridge (this repo's actual standing token system per `.claude/agents/build.md`) with the concrete token list (--bg-app/--brand/--radius-*, Inter/Manrope/JetBrains Mono, three-surface rule) pulled in directly.
6. Runbooks screen grafts into existing nav, no full shell — APPLIED, no changes needed.
7. Proceed to execution — reflected via `confidence_regime: PROCEED-FLAGGED`.

**Net after fixes: 7/7 amendments cleanly applied.**

## Design system compliance (brief-stage)
RISK (at time of review): "Apex 2.0" was an unanchored gesture with no tie to a checkable spec. **Fixed post-review**: see amendment 5 fix above.
PASS: No retired-terminology violation. "ACP" appears only in citation-context identifiers, never as product-facing copy. "HARNESS" used correctly.
PASS: Itten/Bauhaus correctly scoped to the Bradley rail only, consistent with CLAUDE.md §11 and `build.md`'s own three-surface rule.

## Seed-data / real-name check
PASS: "Will Mincher"/"Technica"/"Craig Fisher" explicitly banned from seed data multiple times; grep command directly executable.
RISK (at time of review): grep target directory assumed the rebuild's location without stating it. **Fixed post-review**: Gate 3 now states explicitly the rebuild lands in place inside `prototypes/ebr-coworker-005-arc/`.

## Punch list — final status
1. Section F/G header contradiction — **FIXED**.
2. 45.5% figure stated as unverified fact — **FIXED** (caveat added, not re-derived — still needs a real grep pass before quoting in a handoff).
3. `gate: 60` unexplained — **FIXED** (removed).
4. No named owner/mechanism for post-build 3-site badge check — **FIXED**.
5. Site-3 badge composition ambiguous — **FIXED**.
6. Compound tag format — **FIXED**.
7. Grep-check directory target unstated — **FIXED**.
8. "Correctly cut" header reads absolute — **FIXED** (clarifying note added).
9. No tie from "Apex 2.0" to a checkable spec — **FIXED** (Apex Bridge + token list).

## Outstanding, correctly left open (not defects)
- David's actual practice on every ⟨VERIFY⟩ slot — his judgment, not resolvable here.
- Risk level, high vs. medium — Beth's call.
- Sign-off ownership for ⟨VERIFY⟩ copy before shipping as provisional.
- Exact `S.*` state names for the Setup merge, exact capstone diff field mapping — build agent's to locate directly, not to guess.
- Whether/when Coworker↔Runbook assignment becomes real — a roadmap question, correctly out of this brief's scope.

**Verdict: ready for build.** All fixable brief-stage defects addressed; remaining open items are genuine judgment calls or build-time lookups, not brief gaps.
