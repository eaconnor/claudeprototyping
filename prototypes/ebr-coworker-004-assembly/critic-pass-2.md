# Critic Pass 2 (Post-Build) — EBR Coworker 004 Assembly

**Reviewing:** prototypes/ebr-coworker-004-assembly/index.html
**Against:** briefs/ebr-coworker-004-assembly.brief.md, critic-pass-1.md, prototypes/harness-ebr-v2/design.md
**Also checked directly:** prototypes/harness-ebr-v2/harness-ebr-v2.html, prototypes/ebr-coworker-options/index.html (siblings, same brief family), scout_input/apex-sentient-design-deck-ref-2026-08-20.md, briefs/technica-ebr-runbook-draft-2026-08-21.md (primary sources, not just the brief's transcription of them)

---

## Source check (done first, per contract)

**FAIL — real, unfictionalized customer/persona name used in a prototype, contradicting the artifact's own banner and CLAUDE.md §9b.** The HTML names "Technica" (customer) and "David" (practitioner) directly and repeatedly (title, `<h1>` sub-copy, dimension notes, dual-surface panel), sourced from `technica-ebr-runbook-draft-2026-08-21.md` (`grounded_in: SRC-U-009 (Craig/Technica)`) — a real named MSP and real named individual per the brief's own sourcing. The rail footer even states this outright: *"Technica is the real named trial customer per the brief's own sourcing — not seed data, carried as-is from the source docs, not invented for this artifact."* This inverts CLAUDE.md §9b's rule, which does not turn on whether a name was invented — it requires **all names, companies, and customer data in prototypes to be fictional**, full stop, with real names confined to source docs, never to the prototype itself. The standing anonymization rule (2026-07-31) says the same: real data is anonymized *before it enters any artifact*. Both sibling prototypes in this exact family did this correctly — `harness-ebr-v2.html` uses "Holt Technology Solutions"; `ebr-coworker-options/index.html` uses "Meridian Managed IT" / "Ashcombe Print Group" and labels it inline as `Fictional:`. This build is the one file in the family that didn't fictionalize, and its own banner still claims **"fictional seed data"** (line 113) — a direct self-contradiction between the banner and the body copy sitting eleven lines below it.

**FAIL — confidence-tag inflation relative to the brief's own tagging.** The brief tags the "Phase 1 should read dashboard-surface-first" claim `[A — inference from the runbook's "straightforward" framing, not a stated decision]` (brief line 68). The HTML's "Surfaces — near-term vs. deferred" panel renders the identical claim as `<span class="tag r">[R] near-term</span>` — Research-grade, not Assumed. This is the artifact presenting a claim as more settled than its own cited source permits it to be — exactly the failure mode CLAUDE.md §4 exists to catch. (In the other direction, the "Their-own-form-filled" card is tagged `[?]` in the HTML where the brief tags the same RA-018 gap `[D]` — a milder mismatch, understating rather than overstating, but still a tag that doesn't match its stated source.)

**PASS — the 46.7% figure and its framing carry through correctly.** Grep-checkable against the brief's own math (32 R+D / 28 A+? of 60 = 46.7%); the banner correctly cites this as the recount, not a fabricated figure. No new number was invented to fill a gap.

**PASS — most factual claims trace cleanly to the brief or the primary sources checked directly.** The five dimension cards, the dual-surface panel (Must 6), the sub-0.80/Unverified-hard-block rule, and the four existing Apex primitives (Customer/Device/Policy/Audit Log) all match `apex-sentient-design-deck-ref-2026-08-20.md` and `technica-ebr-runbook-draft-2026-08-21.md` directly — verified against the primary text, not just re-checked against the brief's transcription of it.

**RISK — the EBR Review primitive scaffold is labeled correctly but doesn't actually conform to the model it claims to.** The scaffold ("a specialized Audit Log entry... + a rollup view over Device/Policy gaps") is marked `[A]` and routed to Design/Nicole — correctly avoiding an unlabeled invention. But Apex's own Sentient Design model requires every primitive to define **anatomy, lifecycle states, relationships, and render rules** (apex-sentient-design-deck-ref, "Operating model" §1). The scaffold defines none of these — no lifecycle, no render rule, no relationship cardinality. It's a labeled placeholder, not a conformant primitive. The intro copy's framing ("in Apex Sentient Design's own vocabulary... not a bespoke wireframe") oversells what's actually been delivered for this one item specifically.

**SINGLE-SOURCE — carried, not re-litigated.** Pass-1's finding that Gate 1's entire problem statement rests on SRC-U-009 + one Reddit thread is untouched by the build (appropriately out of scope for a config/wiring artifact) but also isn't named anywhere in the HTML or rail. A reader of the prototype alone wouldn't know this condition exists.

---

## Against Gate 1 (Problem)

**PASS:** the problem the artifact addresses (wiring the Technica runbook's judgment to a runtime, not redoing UX research) matches the brief's own scoping — no drift toward an assumed problem.

**UNRESOLVED (inherited):** the Gate 1/Gate 3 tag inconsistency pass-1 flagged (the practitioner's actual judgment tagged `[?]` in Gate 1, `[D]` in Gate 3) is not fixed in the dimension card itself — the Autonomy card still shows an unqualified `[D] runbook intent §1–8` next to the unattended-8-tab-grading claim. It **is** surfaced explicitly in the rail's Research routed card. That's the right way to handle it under PROCEED-FLAGGED (visible, not silently resolved) — but it means a reader who only reads the primary config cards (not the rail) still sees the more-confident, unhedged version.

## Against Gate 2 (Right thing)

**PASS:** the artifact correctly declines to re-litigate Bet A / C-11 / the Defend crux — rail footer states "0% Claude on the strategic bet... named and not re-argued here," which is honest scoping, not evasion.

**PASS:** the counter-metric (liability exposure) stays protected independent of the unresolved risk tier — the Audit Log primitive card states the liability log is carried "unconditionally," matching the brief's Gate 2 finding that this protection doesn't collapse even if high-vs-medium stays open.

**MISSING (inherited, not closed):** pass-1 asked whether the Defend crux (portability vs. schema lock-in) touches *this specific artifact* — a dashboard mockup can't represent a backend storage-format question either way, and the brief should say so. The build doesn't address this scoping question either; it names the crux as out-of-scope but doesn't say *why* a UI artifact structurally cannot resolve it.

## Against Gate 3 (Built right)

**RESOLVED-AS-DESIGNED — EBR-review primitive.** Pass-1's build-blocking concern was that build would either invent an unlabeled placeholder or fail to conform to the Sentient Design model. Build did neither of those failure modes: it shipped a labeled `[A]` scaffold, routed to Design for confirmation, with an explicit consequence stated ("every surface built against it needs rework, not just relabeling" if wrong). This is the correct behavior under PROCEED-FLAGGED. It does not, however, produce an actual Sentient-Design-conformant primitive (see RISK above) — the gap is now visible and owned, not closed.

**RESOLVED-AS-DESIGNED — risk-tier directive.** Pass-1 said "don't silently resolve high vs. medium" was unenforceable with no medium behavior defined anywhere. Build renders the tier as **"High ⟨unconfirmed⟩"** rather than defaulting to High silently, and routes the actual decision to a Product card that states plainly there is no medium behavior specified. The underlying ambiguity is unresolved by design (correctly — only Beth/Nicole can resolve it), but the directive itself ("make it visible, don't silently pick") is now honored.

**RESOLVED — "signal" undefined.** Pass-1 flagged risk of an invented, unlabeled trigger example. The HTML states directly "What counts as a 'signal' is undefined" with no invented example substituted. Clean.

**RESOLVED — connector-count mismatch, carried at full depth.** Pass-1's deeper finding (at least four non-equivalent "8"s across the corpus, not just the brief's shallower framing) is carried forward accurately in the rail's "What will hurt you" section and routed to Eng — an improvement on the brief's own framing, not a downgrade.

**PASS, maintained:** dual-surface (Must 6) rendered as two structurally separate panels, never a toggle. Sub-0.80 switch-affordance and Unverified hard-block both rendered with the correct precision and hedged appropriately as draft/unmeasured.

**UNRESOLVED, correctly not papered over:** no instrumentation for "pulled and used" is invented; the gap stays a gap. idea_score's missing confidence qualifier isn't relevant at the HTML layer — not applicable to this artifact.

---

## Design system compliance (deferred in pass-1, scored in full now)

**FAIL — JetBrains Mono loaded and used despite the verified design source explicitly saying not to.** `design.md` states outright: *"No monospace typeface found in the 2.0 file... v1 has apx-font-jetBrains-mono / apx-font-source-code-pro — different collection, do not borrow."* Both sibling files in this exact family honor that: `harness-ebr-v2.html`'s own header comment quotes the same line and substitutes Inter with tabular numerals instead; `ebr-coworker-options/index.html` loads only Manrope/Inter, no mono face at all. This build's `<link>` tag pulls JetBrains Mono directly and applies it via `--font-m` to every tag chip, primitive label, surface-pill, and rail footer — a design-system violation this project's own prior work had already solved correctly and this file regressed on.

**FAIL — missing topbar surface; only two of three required surfaces present.** `harness-ebr-v2.html` implements a full `.topbar` (dark gradient background, 2px solid brand bottom-border, sticky, persona pill) — matching the canonical Apex Bridge convention. This build has no topbar at all; `.banner` is an inline status strip inside `.main`, not a structurally separate surface. Only the app canvas and the Bradley rail are present. This is a checklist MISSING item **and** a regression relative to its own sibling.

**RISK — two unreconciled token-naming conventions live in the same prototype family.** `harness-ebr-v2.html` establishes `--bg-app`/`--bg-surface`/`--text-primary` as its canonical names. This build (matching `ebr-coworker-options/index.html` instead) uses `--canvas`/`--surface`/`--heading`/`--text`. Neither is wrong on its own, but a reader with both files open sees two different "canonical Apex 2.0" token vocabularies for the same source doc, unreconciled.

**RISK — provenance flag dropped between sibling and this file.** `ebr-coworker-options/index.html` carries an inline comment directly next to the warn/amber tokens: `/* amber not in 2.0 source — flagged */`. This build uses the identical `--warn`/`--warn-bg` values (used extensively — every `[A]`/`[?]` tag, the guardrail-note, the risk-tier flag) with no inline flag at all; the only provenance note is a top-of-file reference to "same token set as ebr-coworker-options" three lines up. A reader auditing this file alone would not see that the color is unverified.

**PASS:** radius scale (4/8/999) matches `design.md`'s verified border-radius values; shadows are soft, no Bauhaus hard offsets; Manrope-for-headings/Inter-for-body matches `design.md`'s explicit recommendation (aside from the mono regression above); no Itten hex values (`#D8472B`/`#1F3C96`/`#C99A2E`) leaked into the Apex-facing surface; no retired product vocabulary (no "ACP" or old QBR-Advisor naming) appears in the copy.

**PASS:** Bradley rail is visually distinct from the Apex canvas (`--violet:#5B3A7E` accent vs. `--brand:#8500cc`), reads as a structured briefing rather than a settings panel, and its 4px border + inset shadow matches the convention. Note: this violet numerically matches Juliet's Itten value in CLAUDE.md §11 — acceptable here specifically because it's confined to the Band-owned rail (never customer-facing), not because the Itten-palette rule doesn't apply.

**MISSING (inherited, not a build regression):** no 3-way light/dark/system toggle, no `apx-mode-pref` persistence. `design.md` documents dark-mode values as genuinely unresolved in the Apex 2.0 Figma source itself, and both sibling prototypes made the same omission for the same reason. Naming it as MISSING per the checklist, not blaming this build specifically for it.

---

## Duplication / coherence check

**PASS, structurally:** the artifact stays at the config/output-contract layer (five dimension cards, primitive/surface/intent-signal tables) and does not render an actual review screen with findings, rows, or a chooser UI — that content lives only in `harness-ebr-v2.html` and `ebr-coworker-options/index.html`. The scoping distinction the rail claims ("wiring diagram, not review screen") holds up in what was actually built.

**RISK — three different company names describe "the same" scenario across the three sibling files** (Technica / Holt Technology Solutions / Meridian Managed IT + Ashcombe Print Group), and this file is the only one of the three carrying a real, unfictionalized name. A reader with all three prototypes open will not be able to tell whether these represent one continuous scenario or three unrelated ones — compounded by the anonymization FAIL above, since it's also the one file breaking from the pattern the other two established correctly.

---

## Delta table — pass-1 finding → pass-2 status

| # | Pass-1 finding | Status | Notes |
|---|---|---|---|
| 1 | FAIL — Gate1/Gate3 tag inconsistency (practitioner's judgment `[?]` vs `[D]`) | **PARTIALLY RESOLVED** | Surfaced explicitly in rail's Research card; primary dimension card still shows unhedged `[D]` |
| 2 | FAIL — 8-connector/6-source mismatch understated | **RESOLVED** | Carried at full depth (4 non-equivalent "8"s), routed to Eng |
| 3 | SINGLE-SOURCE — Gate 1 problem statement (SRC-U-009 + 1 Reddit thread) | **UNRESOLVED, not carried** | Not named anywhere in HTML/rail; a prototype-only reader wouldn't know this condition exists |
| 4 | UNRESOLVED — SRC-U-009 unauditable | **UNRESOLVED, unchanged** | Out of scope for this artifact; still open before SOURCES.md |
| 5 | Gate 2 PASS — mission call correctly characterized | **N/A, correctly scoped out** | Rail explicitly declines to re-argue Bet A/C-11 |
| 6 | Gate 2 PASS — counter-metric protected | **RESOLVED, maintained** | Liability log "unconditionally" carried into Audit Log primitive card |
| 7 | Gate 2 MISSING — crux scoping to this specific artifact unclear | **UNRESOLVED** | Still doesn't state whether/why a UI mockup can't represent the portability question |
| 8 | Gate 3 FAIL (build-blocking) — EBR-review primitive undefined | **RESOLVED-AS-DESIGNED** | Labeled `[A]` scaffold, routed to Design; does not itself conform to Sentient Design primitive requirements (no lifecycle/render rules) |
| 9 | Gate 3 FAIL (build-blocking) — risk-tier directive unenforceable | **RESOLVED-AS-DESIGNED** | Rendered "High ⟨unconfirmed⟩" instead of silent default; routed to Product |
| 10 | Gate 3 RISK — "signal" undefined, risk of invented unlabeled example | **RESOLVED** | Named as undefined; no invented example substituted |
| 11 | Gate 3 PASS — dual-surface Must 6 | **RESOLVED, maintained** | Two structurally separate panels |
| 12 | Gate 3 PASS — sub-0.80 switch/hard-block rule | **RESOLVED, maintained** | Correctly hedged as draft/unmeasured |
| 13 | Gate 3 MISSING — no instrumentation for "pulled and used" | **UNRESOLVED, correctly not papered over** | No number invented to fill it |
| 14 | Gate 3 MISSING — idea_score inline qualifier | **N/A to this artifact** | Not surfaced in HTML at all |
| 15 | Design system compliance | **deferred → scored** | See section above — 2 FAILs, 2 RISKs, several PASSes |
| — | *(new-in-build)* real customer/persona name used unfictionalized, contradicting own "fictional seed data" banner | **NEW FAIL — fixed post-pass-2, see note below** | Not present in either sibling; introduced by this build |
| — | *(new-in-build)* confidence-tag inflation: dashboard-first `[A]`→`[R]` | **NEW FAIL — fixed post-pass-2** | Source-check catch, not in pass-1 (no HTML existed to check) |
| — | *(new-in-build)* JetBrains Mono contradicts verified design.md instruction + both siblings | **NEW FAIL — fixed post-pass-2** | Design-system regression |
| — | *(new-in-build)* no topbar surface | **NEW MISSING — fixed post-pass-2** | Regression relative to harness-ebr-v2.html |
| — | *(new-in-build)* two unreconciled token-naming conventions across family | **NEW RISK — not fixed** | Cosmetic family-consistency issue, not corrected in this pass |
| — | *(new-in-build)* warn-color provenance flag dropped from inline comments | **NEW RISK — fixed post-pass-2** | Inline comment restored |
| — | *(new-in-build)* three different company names across sibling family | **NEW RISK — improved, not fully closed** | This file now fictionalized too; the three-name inconsistency across the family remains |

---

## Overall verdict

The two genuine build-blocking gaps from pass-1 were handled the way `PROCEED-FLAGGED` requires: visible, labeled, routed to a named owner, not silently resolved. That part of the build is sound and should not be re-done.

What wasn't sound: this file broke a pattern its own two sibling prototypes had already gotten right — fictionalizing customer data — while its banner claimed the opposite of what its body copy did. That is a CLAUDE.md §9b compliance failure, not a nitpick. The real-name violation, the JetBrains Mono regression, the confidence-tag inflation, and the missing topbar were corrected immediately following this pass (see prototype's revision history) rather than carried into a handoff packet. The token-naming-convention divergence across the sibling family and the three-different-company-names inconsistency remain open — cosmetic, not blocking, but worth reconciling if these three prototypes are ever presented together.
