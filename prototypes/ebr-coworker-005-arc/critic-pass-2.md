# Critic pass 2 (post-build) — EBR Coworker rebuild
Reviewed against: `briefs/ebr-coworker-rebuild-2026-09-01.brief.md` (incl. 4 addenda), `ebr-app.html` (1143 lines, read in full), `landing.html` (335 lines, read in full), `.claude/agents/build.md` (Apex Bridge canonical token block), `briefs/technica-ebr-runbook-draft-2026-08-21.md`, `critic-pass-1.md`.

## Scorecard

| Dimension | Pass 1 (brief-stage) | Pass 2 (build-stage) |
|---|---|---|
| Gate 1 — Problem | PASS | PASS |
| Gate 2 — Right thing | PASS (after fixes) | PASS |
| Gate 3 — Built right | PASS (protocol defined) | PARTIAL |
| Source check | PASS (after fixes) | PASS |
| Amendment/addendum compliance | 7/7 (brief-level) | 5/6 — landing.html addendum not executed |
| Design system compliance | PARTIAL (generic, brief-stage) | **FAIL** — canonical Apex Bridge token contract not implemented; Bradley rail entirely absent |

## Gate 1 — Problem
PASS: The build addresses the sourced problem (Technica's manual 8-tab review, backend reality gaps) rather than drifting. FINDINGS/AREAS data is reconciled per the File-layout instruction; the ⟨VERIFY⟩ slots (David's 8 tabs, delta-first opening) ship as visible `.verify-marker` chips with sourced tooltips (`technica-ebr-runbook-draft-2026-08-21.md`), not silently resolved — matches Failure Mode 1's mitigation exactly.

## Gate 2 — Right thing
PASS: Honesty badge exists and is wired to the real backend gap, not decoration. Counter-metric held: `console.html`'s nav is not restored (nav uses `NAVITEMS`, grounded in the real HARNESS screenshot per the file's own header comment); Marcus/Priya two-persona switching is scoped to FTUX first-screen guidance only, not a main-flow toggle — `role-play-simulator.html` stays a separate, clearly labeled link (`↗ Extended scenario — not MVP`, `target="_blank"`), never folded in.

## Gate 3 — Built right
PARTIAL. Breaking this into its named sub-checks per the task:

**3-site honesty badge — PASS, checked individually:**
- Site 1 (Coworkers list): `honestyBadge()` called on every FAMILY card (line 620) — the old "not in this demo" toast is gone, no onclick remains on `.cw` cards. PASS.
- Site 2 (Setup step 2, Connect AI): additive placement next to "Which runbook will this coworker run?" (line 655), existing screen content untouched. PASS.
- Site 3 (Runbooks screen): augments — not replaces — the "N Coworkers" scope pill in the detail header (line 552: `<span class="rb-pill scope">${r.coworkers} Coworker${...}</span>${honestyBadge()}`). PASS, correct composition per brief §E.3.
- **All 3 sites present and correctly composed — this specific failure mode (badge at 1–2 of 3 sites) did NOT occur.**

**9 Figma-derived states — PARTIAL:**
Counted what's actually reachable: locked-whole (qbr-narrative row, PASS), locked-section+no-permission (ticket-rca row, PASS), active/inactive toggle + pill (PASS), inactive info banner (cve-exposure/endpoint-sweep, PASS), clone kebab (ebr-review, platform-owned only, PASS), version-status pill draft/active/deprecated (all three values present across seed rows, PASS), "Locked by [name] · expires in [X] min" tooltip (qbr-narrative, PASS). That's 7 of the 8 states actually named in the task instructions confirmed reachable through a real click path.
- **RISK — dead code path:** `rbLockBadge()`'s non-`noPermission` branch (`'Section locked while in use.'`) is written but never reached — no seed row has `lock:{scope:'section', noPermission:false}`. The component exists in markup/logic but is not verifiably renderable, which is exactly the failure class this check exists to catch ("not just exist as dead CSS/markup").
- **Named-count mismatch, carried from the brief, not caught at Pass 1:** brief §D says "implement all **five** [state signals], with the two named fixes" then lists **six** bullets (locked-whole / locked-section / locked-extended / no-permission / active-inactive / clone) before the two fixes — a "47%-rule"-style self-report error in the brief itself. The task's framing of "9 states" doesn't cleanly map either (6 states + 2 fixes = 8, not 9). Flagging the arithmetic inconsistency rather than resolving it — Pass 1 should have caught this and didn't.

**Locked's semantic color — PASS on the letter, RISK on the spirit:** `--lock:#a56a00` is a distinct token name from `--purple`/`--apex` (satisfies "not selection-purple"), but it is the *literal same hex value* as `--amber` (#a56a00), which this same file already overloads for: the "you do this" toggle state, `.chip.draft`, `.tier.estimated`, and `.warncall`. The brief's own example ("e.g. amber/warning") licenses this choice, but reusing an already-4-way-overloaded color for a 5th meaning undercuts "its own distinct semantic color" in practice, not just in variable-naming.

**No backend-enforcement overclaim — PASS.** Activate screen: "the product doesn't yet enforce who" (line 689). Dashboard signoff card describes UX gating, not backend enforcement. Chooser's "hard-blocked" language describes real, verifiable client-side JS (`toggleChooser` returns early on `tier==='unverified'`), which the brief explicitly permits as a true claim.

**Seed-data grep check — PASS.** Full-file read confirms "Will Mincher" appears only inside `/* */` comments, never in a rendered template-literal string. "technica-ebr-runbook-draft-2026-08-21.md" appears twice, both as permitted source citations inside `.verify-marker` tooltips (explicitly carved out by the task). "Craig Fisher" does not appear anywhere in the file. No violation.

**landing.html vision-framing — FAIL, confirmed.** Hero is still verbatim "Hire the coworker. Keep the judgment." with the pre-existing lede. No trace of the Maister leverage-ratio thesis ("automate the assembly, never the judgment") or the £300k UK-MSP resilience narrative anywhere in the file. Section G of the brief ("write fresh... this is original composition work") was not executed. This is not a partial miss — it's the same file, unchanged, as the user suspected.

## Source check
PASS — no UNSOURCED or SINGLE-SOURCE findings in the shipped build. Fictional seed data is explicitly labeled as fictional in-app (report footer: "Seed data — fictional"). Real backend facts carried into UI copy are correctly cited (`rbHistory()`: "the real backend tracks RunbookVersion rows (9 fields per version, schemas.py:63-75)" — matches the corrected runbook draft, confirmed by direct read of `technica-ebr-runbook-draft-2026-08-21.md` line 11, which does carry the 9-field correction, not the earlier "five fields" error).

## Addendum compliance (4 build-time addenda, 2026-09-01)
1. **Merged Build/Report flow** (steps 2–4 → "Build the register" with Build/Report toggle) — APPLIED. `BUILD` array confirms the 5-step IA; `S.brMode` toggle, per-section autonomy inline, lineage disclosure all present.
2. **Review asks for input** (per-row confirm/correct/hold chips) — APPLIED. `reviewRow()`, `S.reviewChoice`, progress readout ("N of M reviewed") all present and correctly scoped session-only per the addendum's explicit non-scope.
3. **Register↔Report arc diagram** (Manuel Lima arc technique) — APPLIED. `translateArc()` reuses `systemMap()`'s exact bezier math as instructed, wired live to `S.chooserTone`/`FINDINGS`, cross-linked both directions ("See how this becomes the report →" / "See where this came from ←").
4. **Lead with outcome, not the number** (`renderReport()` hierarchy flip) — APPLIED. `f.translate[S.chooserTone]` is now the headline (`.ft`), `plainNum(f.finding)` demoted to `.fm` supporting label; `exportDoc()` mirrors the same order.
5. **Vision-framing copy (brief §G, not a build-time addendum but part of the core spec)** — **NOT APPLIED.** See Gate 3 finding above.

**Net: 4/4 build-time addenda fully applied; the pre-existing brief requirement they don't cover (landing.html) remains outstanding.**

## Design system compliance — FAIL
This is the most significant regression this pass surfaces, and it wasn't visible at Pass 1 because Pass 1 only reviewed the brief text, not code.

- **Canonical Apex Bridge `:root` block — FAIL.** `.claude/agents/build.md`'s required tokens (`--bg-app`, `--bg-surface`, `--brand`, `--brand-strong`, `--brand-soft`, `--alpha-accent`, `--radius-sm/md/lg/full` at 2/4/16/999px) are **not used anywhere in `ebr-app.html`**. The file's actual `:root` (lines 16–27) is a different, older token set inherited from this file's pre-rebuild HARNESS-mirror styling: `--canvas`, `--surface`, `--nav`, `--apex`, `--r`/`--r-lg`/`--r-pill` (6/10/999px, not 2/4/16/999). This is a direct violation of the brief's own `machine_behavior` line ("product mockup renders in Apex Bridge... build against its actual tokens") and of `build.md`'s explicit token-naming contract.
- **Typography — FAIL.** Google Fonts link loads only Manrope + Inter (line 14). **JetBrains Mono is never loaded**, and `--font-m` is mapped to `'Inter', ui-monospace, monospace` instead. Required per both the brief and `build.md`: "Inter (UI/body) + Manrope (product-bar/headings) + JetBrains Mono (metrics/code)."
- **Bradley rail — FAIL, MISSING entirely.** Full read of the 1143-line file confirms there is no rail markup, no `--rail-bg`/`--rail-border` anywhere, no readiness badge, no "what you nailed / what will hurt you" block, no routed cards (Product/Design/Research/Eng). CLAUDE.md §9b states this "always ships" and is non-negotiable for any prototype; `build.md` calls the topbar/canvas/rail three-surface distinction a hard requirement. `landing.html` also has no rail.
- **3-way mode toggle — FAIL, MISSING entirely.** No `data-theme` attribute, no toggle control, no `apx-mode-pref` persistence anywhere in either file.
- **No Itten/Bauhaus leakage — PASS.** No vermillion/ochre/ultramarine found in the product mockup; Band's own palette correctly kept out.
- **No retired-terminology violation — PASS.** "ACP" appears only in citation-context file paths (`acp-core-main-3/...`), never as product-facing copy. "HARNESS" used correctly and consistently as the product name.
- **Rounded corners, soft shadows — PASS on the narrow check.** `--r`/`--r-lg`/`--r-pill` are all rounded; `--sh`/`--sh-lg` are soft blur shadows, no Bauhaus `6px 6px 0` hard offsets found anywhere.

## Punch list — Pass 2

**PASS:** Honesty badge present, individually verified, correctly composed at all 3 named sites — the specific failure mode the brief called out (Failure Mode 2) did not occur.
**PASS:** No backend-enforcement overclaim anywhere in shipped copy; the Activate screen and dashboard signoff card are explicit that the product doesn't enforce sign-off ownership.
**PASS:** Seed-data grep check clean — "Will Mincher" only in comments, "Craig Fisher" absent, "Technica" only as a permitted source-citation string.
**PASS:** 9-field runbook correction (5→9) confirmed actually landed in `technica-ebr-runbook-draft-2026-08-21.md`, not just claimed.
**PASS:** All 4 build-time addenda (merged Build/Report, per-row review choices, translate arc, lead-with-outcome) verifiably implemented and wired to live data, not mocked.
**FAIL:** `landing.html` was not updated with the Maister thesis / £300k-resilience vision framing — still the pre-existing "Hire the coworker. Keep the judgment." hero, unchanged. Confirms the suspicion stated in the task.
**FAIL:** No canonical Apex Bridge `:root` token block anywhere in the build — a different, pre-existing token set is used instead, contradicting both the brief's explicit instruction and `build.md`'s contract.
**FAIL:** JetBrains Mono never loaded; `--font-m` silently substitutes Inter.
**FAIL:** Bradley rail entirely absent from both `ebr-app.html` and `landing.html` — CLAUDE.md's non-negotiable "always ships" requirement is not met.
**FAIL:** 3-way light/dark/system mode toggle with `apx-mode-pref` persistence entirely absent.
**RISK:** `rbLockBadge()`'s "Section locked while in use" (permitted, non-blocked) tooltip branch has no seed data that ever renders it — dead code path in a place the brief specifically asked to be checked for exactly this.
**RISK:** Locked's "own distinct semantic color" is the literal same hex as `--amber`, already carrying 4 other meanings in this file — satisfies the letter of the brief's example but not its "distinct" intent.
**MISSING:** Explicit reconciliation of the brief's own §D count error ("five" state signals, six bullets listed) — not a build defect, but a Pass-1 miss that should be named before this brief is treated as a clean spec for future reuse.

## Verdict
Build-specific requirements (3-site badge, grep-clean seed data, no-overclaim, 4 addenda) are cleanly met. Two categories of failure sit outside what Pass 1 could see because Pass 1 never touched code: the vision-framing copy work was skipped entirely, and the entire design-system/Bradley-rail contract — the thing critic is specifically tasked to check per its own operating instructions — was not implemented. **Not ready for handoff as-is.**
