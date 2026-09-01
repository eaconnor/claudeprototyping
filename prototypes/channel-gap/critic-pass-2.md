# Critic — Pass 2 (post-build re-score)
**Brief:** briefs/channel-gap.brief.md · **Math recount:** briefs/channel-gap-math-recount.md
**Pre-build:** prototypes/channel-gap/critic-pass-1.md (25/30)
**Build reviewed:** prototypes/channel-gap/index.html
**Regime:** PROCEED-FLAGGED · **Tier:** 1 Concept — decision-space visualization

---

## Score table + delta

| Dimension | Pre-build | Post-build | Δ | Why |
|---|---|---|---|---|
| Coherence | 5 | 5 | 0 | Build stays on the named problem — decision space, not a pick. Framing line ("This shows the decision space, not an answer") and the rail's "not testing which channel is right" reinforce it directly. No drift. |
| Source-fidelity | 4 | 4 | 0 | Every claim spot-checked against the brief traces cleanly (workshop date, footnote numbers, schema line reference, both divergence quote pairs reproduced verbatim). One new minor issue offsets the carried-forward one: myITprocess is asserted to ship "PDF-by-email" — the brief only supports "PDF + always-on portal" (line 67), not that email is the delivery vector for the PDF. That's an added specificity not traceable to the passed corpus. The original dock (no-frontend finding rests on one snapshot lineage) is now surfaced transparently in the artifact's own "Open questions" list rather than buried — an improvement that roughly cancels the new issue. |
| Demo-ability | 3 | 5 | +2 | Pre-build docked this because the brief gave zero layout guidance. Build resolved it with one coherent, specific visual grammar — alphabetized 2×2 equal-card grid, shared evidence-tag legend, a labeled connector between zones, a repeatable split-quote-bubble "UNRESOLVED" pattern for both divergences — and named its own choices explicitly in the rail's "Assumptions made in this build" section rather than presenting an invented convention as brief-derived. A viewer unfamiliar with the brief could look at this once and understand what's decided, what's assumed, and what's open. `[CS: MEDIUM — assessed from markup/CSS, not a rendered browser check.]` |
| Differentiation | 5 | 5 | 0 | Carries forward the same structural additions (domain model, corrected tagging, named divergences, CE-adjacency model, failure modes) and adds a working visual instantiation of all of it. No new differentiation claim beyond what pre-build already credited. |
| Risk | 4 | 4 | 0 | The self-check matrix in the fidelity banner (4 ✓ / 2 ✗) functions as a retroactive acceptance check for exactly the four "what build must get right" constraints — but it is self-graded by the same artifact being checked, not an independent test, and the rail says so itself ("No acceptance test exists... that check happens at critic-pass-2, after the fact"). That honesty is good; it doesn't close the original gap. New risk introduced (ACP/Harness naming drift in persistent chrome, addressed below) roughly offsets the small mitigation from the self-check matrix. Net: no change. |
| Scope discipline | 4 | 5 | +1 | Pre-build worried the volume (4 candidates × evidence + 2 divergences + CE zone + 4 failure modes) would clutter a Tier 1 artifact or force a silent drop. Build handled the volume with collapsible `<details>` for rail sections and compact, symmetric card layout — nothing named in the brief appears to have been dropped. `[CS: MEDIUM — visual density inferred from CSS padding/font-size values, not rendered.]` |

**Total: 25/30 → 28/30 (+3)**

---

## Five build-time constraints from critic-pass-1 — verified

1. **Equal visual weight, alphabetized/randomized ordering.** PASS. Order is Email → Portal → PSA-writeback → SMS (alphabetical, verified letter-by-letter). Each card labeled "alphabetical N/4 — not a rank" — a direct, explicit counter to the pre-build "visual ordering as implicit ranking" risk. `[CS: MEDIUM]` on actual equal rendered height: each row pairs one candidate with a divergence block against one candidate with only a placeholder ("no unresolved competitor divergence flagged"), and CSS Grid's default `align-items: stretch` would equalize heights within each row — a reasonable mitigation, not independently confirmed by rendering.

2. **`[A]` tag same prominence as `[R]`/`[D]`/`[?]`.** PASS, confirmed at the CSS level: `.evid-r`, `.evid-d`, `.evid-a`, `.evid-q` all inherit identical `.evid-tag` base (font-weight, size, padding, border-radius, min-width) and differ only by color token. Not demoted to a tooltip or footnote — same badge, same position, same size everywhere it appears, including on the SMS card's bidirectional-extension line.

3. **Channel/Customer Engagement genuinely separate zones + labeled connector.** PASS. Different background tokens (`--bg-surface` vs `--bg-elevated`), different section-label zone-dot colors, and an explicit `.connector` element with the label "adjacent — not the same decision" between them. The CE zone also carries its own warning box calling out the exact Portal/CE-conflation risk named in the brief's failure mode 2 — a direct, specific answer, not a generic caveat.

4. **Both divergences render as "UNRESOLVED — both sides sourced," not settled fact.** PASS. Identical `.divergence` treatment for CloudRadial and vCIOToolbox — same badge, same split quote-bubble grid, same dated-source convention, same closing "not resolved here" note. Consistent, not settled-looking.

5. **Rail ROI blocks stay generic, no invented per-candidate numbers.** PASS. All four routed cards (Product/Design/Research/Eng) use the identical string "Unknown until Beth picks a channel — ROI depends entirely on which one" for both Business and User lines. No candidate gets a filled-in number the others lack — the single highest-risk surface named in pre-build's RISK item did not violate the regime.

---

## Brief-level gaps (FAIL/MISSING from pass-1) — how build's own invented answers held up

- **No layout/interaction spec → resolved well.** Build invented one specific grammar and named it as invented, not as brief-derived truth (see rail: "the brief named the requirement but not the visual form; this is one workable form, not the only one"). This is the correct move — it doesn't launder an invention as a spec finding.
- **No acceptance check for failure modes → resolved partially, honestly.** The fidelity banner's 6-item check matrix operationalizes the four "must get right" constraints as self-graded checkmarks. It is not an independent acceptance test (nothing external verifies "✓ All four channel candidates render at equal visual weight" beyond the artifact's own claim), and the rail says so rather than overclaiming. Reasonable at Tier 1; still a self-report, not a test.
- **No render guidance for divergences → resolved well.** Split quote-bubble + "UNRESOLVED" badge applied identically to both divergences, and explicitly flagged in the rail as one possible convention rather than the only one.

---

## Design system compliance

- **PASS** — Canonical token block present: `--bg-app`, `--bg-surface`, `--brand`, `--alpha-accent`, plus severity tokens (`--critical`/`--high`/`--medium`/`--low`) and topbar/rail-specific tokens.
- **PASS** — Three visibly distinct surfaces: topbar (`--topbar-bg` fixed dark in both light and dark modes, 2px brand bottom-border), app canvas (`--bg-app`, changes per mode), Bradley rail (`--rail-bg`, 4px violet `--rail-border`, inset glow via `box-shadow: inset 6px 0 14px -10px rgba(167,139,250,0.5)`).
- **PASS** — Soft shadows only. No Bauhaus `6px 6px 0` hard offsets anywhere in the stylesheet.
- **PASS** — No Itten palette bleed (no vermillion/ochre/ultramarine).
- **PASS** — 3-way mode toggle present (Light/Dark/System), and "system" correctly reads `prefers-color-scheme`.
- **FAIL — radius scale exceeds spec.** `--radius-lg: 16px` is used on all main cards, zones, and the modal. The compliance spec caps rounded corners at 4/6/8px. 16px is double the stated ceiling — this is a real deviation, not a rounding error.
- **FAIL — third typeface introduced.** `Manrope` (weights 600/700/800) is loaded and used for `h1`, `.brand-mark`, and `.channel-name` (`--font-brand`). The compliance spec names exactly two typefaces: Inter (UI/body) and JetBrains Mono (headers/labels/code). Manrope is neither. This is ad-hoc typography mixed into a token-driven system.
- **FAIL — ad-hoc hex colors outside the token system.** `.product-name { color: #c9d3ea; }`, `.brand-mark { color: #fff; }`, `.divergence-label .qmark { color: #16112e; }`, `.modal-overlay { background: rgba(4,7,16,0.72); }` — none of these are tokens; all are one-off hex values sitting alongside a token-driven `:root` block, which is exactly what the "no ad-hoc colors mixed with tokens" rule exists to catch.
- **RISK — mode-persistence key namespaced, not canonical.** Build persists to `apx-mode-pref-channel-gap`, not the literal `apx-mode-pref` the compliance spec names. If the intent behind `apx-mode-pref` is a single cross-prototype preference (one choice, remembered everywhere), this build silently forks it per-prototype instead. `[CS: UNKNOWN — whether a shared cross-prototype key was actually intended; not stated in the brief or critic-pass-1, but the compliance spec names the key literally.]`
- **FAIL — ACP/Harness naming drift not addressed.** Critic-pass-1 explicitly deferred this to pass-2: "confirm 'ACP/Harness' naming matches current product-facing naming before it lands in UI chrome." The build's persistent topbar chrome (`brand-mark`) renders "ACP · AGENT CONTROL PLANE," dropping "Harness" entirely from UI chrome, while the brief itself consistently pairs "ACP/Harness" throughout (frontmatter, domain model, Gate 1). Build picked one name for persistent chrome without naming why, and without resolving whether ACP is a retired term. `[CS: UNKNOWN — whether ACP is currently retired in favor of "Harness" per current n-able product naming; not resolved in this corpus, but the flagged question from pass-1 was not addressed, only silently answered one way.]`

---

## Domain-model fidelity

PASS — every rendered surface traces to a named entity in the brief's domain model: Channel (4 candidates), MCP Gateway, Credential/auth layer, Tool-discovery sync, the unimplemented delivery service (rendered as absence claims), `notification_recipients` schema, Apex Bridge (correctly rendered as excluded, not as a candidate), Customer Engagement (4 options, matching the brief's named options exactly: bespoke/templated/client-facing-between-EBRs/scored-gamified). No invented entity, no surface with no backing source.

---

## Standard build checks

- **PASS** — Fidelity banner present at top: 3-pip indicator (1/3 filled = Tier 1), 6-item check matrix (4 ✓ / 2 ✗), exact counts matching the spec requirement.
- **PASS** — Bradley rail complete: readiness badge, "what this is testing" blurb, "what you nailed"/"what will hurt you" dual block (5 points / 4 risks, collapsible), 4 routed cards (Product/Design/Research/Eng) each with team/action/why-now/consequence/ROI, council entry point (topbar + rail button) opening a modal that correctly states "not yet run" and lists the five default voices from CLAUDE.md §9b (Jobs-to-Be-Done, Service Blueprint, Self-Determination Theory, Disruptive Innovation, Value Chain) as unrun — no fabricated testimony.
- **PASS** — Ownership attribution displayed: "0% Beth — tool-generated this pass, not yet human-edited" in footer.
- **PASS** — Seed data: no fictional customer/persona data invented (none needed for this artifact type); explicit seed-stamp states "seed data: none invented — content sourced from briefs/channel-gap.brief.md." Publicity-test clean.
- **PASS** — Math block (26.3% / 0% / 39.1%) matches `channel-gap-math-recount.md` exactly, including the "DO NOT QUOTE" label on the inflated denominator — the 47% rule is honored, not just referenced.

---

## Punch list (post-build)

**PASS:** All five PROCEED-FLAGGED build constraints verified against source markup — none violated.

**PASS:** Both unresolved competitor divergences render identically and honestly as open, sourced-both-sides, not settled.

**PASS:** ROI blocks generic across all four routed cards — the highest-risk surface named in pass-1 did not leak a recommendation.

**PASS:** Council modal correctly states testimony was not run rather than fabricating multi-voice output.

**FAIL:** `--radius-lg: 16px` exceeds the compliance spec's 4/6/8px ceiling on every major card, zone, and the modal.

**FAIL:** Third typeface (Manrope) introduced for headers/brand text outside the canonical Inter + JetBrains Mono pairing.

**FAIL:** Multiple hardcoded hex colors (`#c9d3ea`, `#fff`, `#16112e`, `rgba(4,7,16,0.72)`) sit alongside the token system rather than being tokenized.

**FAIL:** ACP/Harness naming question flagged in critic-pass-1 was not addressed — build silently picked "ACP" alone for persistent UI chrome, dropping "Harness," without checking or naming the current product-facing term.

**FAIL — myITprocess over-specification.** The Email candidate card states myITprocess "ships PDF-by-email as part of its delivery pattern." The brief (line 67) supports only "PDF + always-on portal" — email as the PDF's delivery vector is not stated in the sourced material passed to this build. This is a small but real instance of exactly the "no invented grounding" failure mode CLAUDE.md §4 exists to catch, inside an artifact that is otherwise careful about tagging.

**RISK:** Self-graded fidelity-banner checkmarks (✓/✗) are asserted by the same artifact being checked, not independently verified. The rail names this honestly ("that check happens at critic-pass-2, after the fact") but the underlying acceptance-test gap from pass-1 is still open.

**RISK:** localStorage key `apx-mode-pref-channel-gap` diverges from the canonical `apx-mode-pref` name in the compliance spec — a per-prototype fork of what may be intended as a single shared preference. `[CS: UNKNOWN — intent not stated anywhere in this corpus.]`

**RISK (carried forward, unresolved):** "A 2×2 grid still has a reading order" — named honestly in the rail's own "what will hurt you" section; alphabetizing removes topic bias but not position bias. Correctly self-flagged, not fixed, not fixable at this fidelity tier.

**MISSING (carried forward, correctly scoped out):** Org-ownership (Structure) gap — named in both the brief and the build's rail ("resurfaces the moment Beth makes the Channel call"), consistently treated as adjacent-not-solved in both passes.

**UNSOURCED:** myITprocess "PDF-by-email" claim (see FAIL above) — the specific delivery mechanism (email) is not traceable to the brief text provided to this pipeline.

**SINGLE-SOURCE:** Correctly carried forward, not newly discovered — footnotes 42/43/50 flagged in the PSA-writeback card exactly as the brief flagged them ("Single-source, flagged [WOBBLY] by the source scout").

---

## Honor check

Files read this pass, by direct Read tool call, absolute path:

1. `/Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/briefs/channel-gap.brief.md`
2. `/Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/briefs/channel-gap-math-recount.md`
3. `/Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/prototypes/channel-gap/critic-pass-1.md`
4. `/Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/prototypes/channel-gap/index.html`

No file was written by this pass — Critic is read-only by contract. Claims about rendered visual behavior (equal card heights via CSS Grid stretch, mode-toggle persistence across reloads, responsive breakpoint below 1100px) are tagged `[CS: MEDIUM]` or `[CS: UNKNOWN]` inline above — inferred from static markup/CSS, not confirmed by running the file in a browser.
