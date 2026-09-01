---
feature: "EBR Coworker rebuild — ebr-app.html unified SPA (Runbooks screen, 9-step run-cycle trace, Coworker↔Runbook honesty badge)"
title: "EBR Coworker rebuild — three-gate brief"
type: "prototype rebuild brief"
status: "corrected 2026-09-01 post-Beth-review — ready for critic (pre-build)"
generated: 2026-09-01
owner: "Beth"
problem_statement: "The previous EBR Coworker build (ebr-coworker-005-arc) mistook eng's placeholder demo UI for the design target and flattened a richer coworker-setup flow to match it [D — prototype-history audit], while also drifting from what the acp-core-main-3 backend actually supports (Coworker↔Runbook assignment, risk-guardrail enforcement) [R — schemas.py/ports.py/agents/models.py direct read]. The underlying business problem the coworker exists to solve — Technica's EBR practice, an 8-tab manual review with no continuity/delta step and no structured judgment trail — is sourced to SRC-U-009 (Craig/Technica) [R] and the Stefanie translate-formula from the coded corpus [R]."
okr_objective: "The rebuilt prototype demonstrates AI-assisted business-review workflow (EBR Coworker) without misrepresenting what the platform actually does today — advances the Zero Vector honesty commitment (CLAUDE.md §10b) and the three-gate anti-hallucination discipline (§9) more directly than it advances any single product metric. [A — this is this brief's framing of mission fit, not a company-tracked OKR]"
okr_key_result: "Rebuild passes post-build critic re-score with zero claims that imply backend enforcement/integration that doesn't exist (risk-guardrail sign-off, Coworker↔Runbook persistence), and the honesty badge is present at all 3 named sites, verified before handoff. [A — project-level target Beth set for this rebuild; no formal timeframe/OKR tracking exists for this artifact — flagged, not invented]"
counter_metric: "Rebuild does not reintroduce content the prototype-history audit explicitly identified as correctly cut (console.html's invented nav, two-persona-as-main-flow) and does not overstate backend integration status anywhere in copy. [D — both cut items are audit findings, not assumptions]"
idea_score: null  # not scored — no rubric was supplied or run for this pass; recorded as null rather than invented
evidence_sources:
  - "/Users/bethconnor/.claude/plans/starry-giggling-widget.md (approved plan + 2026-09-01 amendments — primary source for this brief)"
  - "briefs/technica-ebr-runbook-draft-2026-08-21.md (corrected 2026-09-01: field count 5→9, risk/guardrail overstatement fixed)"
  - "acp-core-main-3/apps/backend/app/runbooks/models.py"
  - "acp-core-main-3/apps/backend/app/runbooks/schemas.py (RunbookVersion, 9 fields, lines 63-75)"
  - "acp-core-main-3/apps/backend/app/runbooks/service.py"
  - "acp-core-main-3/apps/backend/app/runbooks/ports.py (InMemoryCoworkerAssignment stub, lines 52-84)"
  - "acp-core-main-3/apps/backend/app/agents/models.py (Coworker ORM, lines 24-57 — no runbook_id field)"
  - "the 002 runbook spec (NONGOAL-005 — trust/autonomy guardrail system out of scope)"
  - "the Intent Spec"
  - "Will Mincher's ACP-Vision Figma file (fileKey AdZ7Dvnm0E6USrDQRnjaVf, page 'Exploration', 9 Runbook-state frames + 3 app-shell references) — read as a behavioral/interaction reference, not a literal visual skin (see Visual system section)"
  - "prototypes/ebr-coworker-004-assembly/onboarding.html (primary content source for primitives grid / dual-artifact visual / intent-tier table)"
  - "prototypes/ebr-coworker-005-arc/DESIGN-REFS.md (2026-08-27 — superseded on the visual-system point, HARNESS/IA naming argument still holds)"
  - "ebr-coworker-004-assembly/RUNBOOK.md (9-step operator cycle vocabulary)"
  - "ebr-coworker-options/test-chooser-screen.html (Chooser UI port source)"
  - "build-ebr.html, console.html, ebr-dashboard.html, ebr-product.html (retired files — provenance for restored content); role-play-simulator.html (kept linked, not retired — see File layout)"
confidence_regime: PROCEED-FLAGGED
proceed_because: "Backend facts (9-field schema, no persisted Coworker↔Runbook link, no guardrail enforcement) are code-verified with file:line citations, and Figma facts (shell, list/detail pattern, all state signals) are frame-verified by direct review — neither is in question. The remaining evidence uncertainty is concentrated in named, already-flagged slots: David's exact 8 tabs / opening move / gap logic (⟨VERIFY⟩, carried forward from the runbook draft, unresolved by design — David's judgment, not Claude's to fill per CLAUDE.md §18), and a small number of build-agent decision points this brief surfaces rather than resolves. None of this blocks screen architecture or the build itself — proceeding with visible provisional markers lets Beth show David something concrete to correct against."
machine_behavior: "build all screens per the screen-by-screen spec below; surface every ⟨VERIFY⟩-sourced copy slot behind a visible provisional marker (do not silently resolve); preserve [R]/[D]/[A]/[?] tags verbatim rather than upgrading their confidence; ship the honesty badge at all 3 named sites; do not restore console.html's nav or fold two-persona switching into the main flow; keep role-play-simulator.html linked and reachable, labeled 'Extended scenario — not MVP', not archived; write vision-framing copy fresh (grounded in the Maister thesis + £300k-resilience material, not ported from any existing file — none exists as finished copy); seed data is fictional only (no Will Mincher/Technica/Craig Fisher — grep-check before handoff); product mockup renders in Apex Bridge (this repo's standing token system per `.claude/agents/build.md`, itself an approximation of N-able's real Apex 2.0) — Will's Figma is a behavioral/interaction reference only, not a literal skin; Itten/Bauhaus is reserved for the Bradley rail and Beth's own use, never the product mockup unless she explicitly says otherwise; address Will's Figma's own gaps (version-status indicator, lock-holder+TTL, locked gets its own semantic color distinct from selection-purple) rather than reproducing them; Runbooks screen grafts into ebr-app.html's existing nav, no separate full shell; content-sourcing priority is Beth's own onboarding.html first, Will's Figma fills named gaps second; single unified SPA extending ebr-app.html per file-layout section; retired files (build-ebr.html, console.html, ebr-dashboard.html, ebr-product.html) archived not deleted"
---

# EBR Coworker rebuild — three-gate brief

## Evidence-ratio flag (read before Gate 1)

Of 66 tagged claims in this brief, 23 are [R] (34.8%), 13 are [D] (19.7%), 21 are [A] (31.8%), 9 are [?] (13.6%). **[A]+[?] = 45.5% — over the 30% threshold.** Named explicitly rather than shipped past: **by the strict Gate-1 rule, this brief is not fully ready.**

**Verification caveat (added post pre-build critic pass, 2026-09-01):** this tally is a manual line-by-line count, not a `grep -o` pass — critic sampled 6 citations from the math-recount against this brief's body text and found 2 of 6 had no locatable inline tag (the Runbooks-shell decision in Section D, and the entire Visual System section, which carries zero inline [R]/[D]/[A]/[?] markers). Per the CLAUDE.md §9b 47% rule, **do not quote 45.5% — or any number from this section — in a handoff or SOURCES.md without first running a literal grep pass against the final, as-shipped brief text.** The qualitative claim (core [R]/[D] facts are uncontested; the [A]/[?] volume is dominated by authorial decisions and named open questions, not fabrication) is not in dispute — only the precise percentage is unverified.

The nuance: every core factual claim about backend behavior (23 [R], code-line-cited) and Figma detail is solid and uncontested. The [A]/[?] concentration is almost entirely (a) Beth's own plan-level UX/architecture decisions — [A] because they're authorial choices, not because they're shaky — and (b) named build-agent decision points and ⟨VERIFY⟩ slots this brief exists to surface honestly, not resolve. Zero [R] or [D] claims are contested. Full claim-by-claim tally: `briefs/ebr-coworker-rebuild-2026-09-01-math-recount.md`.

---

## Gate 1 — Problem: real and sourced, or assumed?

The business problem is sourced: Technica's actual EBR practice — an 8-tab manual Excel review, no continuity/delta comparison against the prior review, no structured translate-to-business step — is grounded in SRC-U-009 (Craig/Technica interview) [R] and the coded corpus's Stefanie translate-formula (data → risk → what it means to you → consequences if unactioned) [R]. The runbook's `intent` field encodes this as documented practice, not invented workflow [R].

The *prototype* problem — why this rebuild, specifically — is a direct audit finding, not an assumption: the prior build (005-arc) mistook eng's placeholder demo UI for the design target and flattened the richer coworker-setup flow to match it [D — diff across 004/options/big-map/005-arc generations]. The evidence for what got lost is not assumed: role-play-simulator.html's 9-step simulator went orphaned, the capstone diff screen is missing from ebr-app.html, the 9-step operator vocabulary has zero hits in the current dashboard, the vision-framing material (Maister leverage-ratio, £300k-rebuild story) never became finished copy anywhere in the lineage, and 004's primitives grid + intent-tier table never survived past 004 — all confirmed by direct file diff [D].

The backend-reality problem is fully sourced against code: `RunbookVersion` has nine fields, verified against `schemas.py:63-75` [R]. `Coworker` has no `runbook_id`; assignment is an in-memory stub (`ports.py:52-84`, `agents/models.py:24-57`) [R]. Risk is stored on a runbook version but no guardrail/sign-off enforcement is wired to it — that belongs to the not-yet-built trust/autonomy system (NONGOAL-005) [R].

What remains genuinely unresolved, carried forward rather than papered over: David's actual practice on the exact 8 tabs, whether he opens on the delta view, and the precise gap-logic — all marked ⟨VERIFY⟩ in the runbook draft [A], and the risk level (high vs. medium), which is Beth's call, not yet made [A]. Per CLAUDE.md §18, these are David's tacit judgment to confirm or correct, not Claude's to infer.

## Gate 2 — Right thing: does this advance the mission?

The screen inventory and honesty-badge requirement are Beth's design decisions [A — authorial, not derived], but the *reason* the honesty badge exists is not assumed: it exists because a verified backend fact (no persisted Coworker↔Runbook relationship) [R] would otherwise be silently misrepresented as working integration. That's a direct instance of the three-gate mandate: design is the function with user evidence required to detect hallucination in strategy (§9), and a prototype that implies backend capability that doesn't exist *is* that hallucination, shipped as UI instead of text.

There is no formal, board-tracked OKR for this prototype [?] — the okr fields above are this brief's own framing, not a sourced business metric.

## Gate 3 — Built right: tested how, by whom, what counts as done?

Testing is specified in the plan's Verification section [R]: click through Setup → capstone diff → Run cycle → Chooser → Dashboard, confirming delta view is the default landing tab; confirm the Runbooks screen renders all Figma-derived states (in Apex Bridge visual language) and the honesty badge appears at all three named locations; run `grep -ri "will mincher\|technica\|craig fisher" prototypes/ebr-coworker-005-arc/` on new/edited files and confirm it returns nothing [D — directly executable check]; confirm landing.html carries newly-written resilience/£300k framing; confirm no screen implies backend enforcement of the risk-guardrail sign-off.

Who signs off: **David or Vanessa** (Beth, 2026-09-01) — not narrowed further, and not blocking this build; the ⟨VERIFY⟩ slots ship with visible provisional markers regardless of when sign-off actually happens [A].

**Resolved by pre-build critic pass, 2026-09-01:** the post-build critic scorecard **must** include an explicit named line item checking honesty-badge presence at all 3 sites individually (Coworkers list, Setup screen 2, Runbooks screen) — not a single "badge present: yes/no" check, since a badge present at 1–2 sites but missing at the 3rd should fail this specific check, not pass on partial coverage.

The rebuild lands **in place**, inside `prototypes/ebr-coworker-005-arc/` — extending `ebr-app.html` directly per the File layout section, not a new sibling directory. This is stated explicitly so the Gate 3 grep check's target path (`prototypes/ebr-coworker-005-arc/`) is confirmed correct, not inherited silently from the plan.

"Done" = critic post-build re-score with no unresolved ⟨VERIFY⟩ slot presented as settled fact, the honesty badge present and correctly worded at all 3 sites (checked individually, per above), the grep check clean, and the two "correctly cut, leave cut" items absent from the served build.

---

## Screen-by-screen build spec

Two granularities of the same system, not two wizards: Setup runs once (or on reconfiguration); the Run cycle exposes what happens on every review.

### A. Setup (7 screens, extends existing `ebr-app.html` `S.*` states)

1. **Your report** — existing, unchanged [D]. No changes beyond the FINDINGS/AREAS data-shape reconciliation (do before writing any new render function against it).
2. **Connect AI** — existing content, **plus** the Coworker↔Runbook honesty badge (site 2, section E).
3. **Structure & sources (merged)** — new: merge "Read it" and "Sources" into one two-tab screen [A]. Exact current `S.*` state names not yet identified [?] — build agent locates them directly before merging; do not guess.
4. **Fill the gaps** (client interview) — existing, unchanged [D].
5. **How much it does** (autonomy/trust gate) — existing, unchanged [D]. Do not add copy implying platform enforcement — it doesn't exist yet [R].
6. **Review the register** — content unchanged; position moves to a secondary Dashboard tab once delta view is default (section B) [A].
7. **Activate** (3-checkbox gate) — existing, unchanged. Immediately followed by the restored capstone diff screen [D — confirmed present in build-ebr.html, confirmed missing from ebr-app.html].

**New — capstone diff screen** (restore from `build-ebr.html`'s final step; archive the source file once folded in): two-column "What you brought" / "What you have now." Insert directly after Activate, before Dashboard [D]. Exact field-level mapping not specified [?] — derive from what Setup screens 1–7 actually produce; do not invent untraceable fields.

### B. Run cycle (new — 9-step operator trace, collapsible stepper)

Currently absent entirely from `ebr-app.html`'s dashboard [D]. Step order/definitions sourced from `RUNBOOK.md`'s vocabulary, cross-checked against the runbook draft's `intent` field [R]. Render as a collapsible run-trace stepper from the Dashboard, each step collapsed by default with a one-line label + status chip:

1. **Ingest** — operator's EBR file + stack sources; flags stale/absent sources at Source-Unavailable defensibility tier [R].
2. **Continuity / delta** — opens the run; compares to the last EBR. Becomes the Dashboard's default landing state. ⟨VERIFY: does David actually open on the delta?⟩ — unresolved [A].
3. **Judge the 8 tabs** — gap-vs-baseline (NCSC 10 / Cyber Essentials), graded red/amber/green. ⟨VERIFY: David's exact 8 tabs and gap-logic⟩ — unresolved [A]. Do not invent tab names.
4. **Translate** — technical → business, Stefanie's formula, two registers (CFO/owner tone), no graphs/percentages client-facing (Must 1) [R].
5. **Getting-business** — not its own screen; an upsell tag/filter *inside* Chooser (step 6), sourced from gaps only [A]. Note: 8 visible stepper stops, not 9 — "Getting-business" is vocabulary realized as a sub-filter, not a distinct stop [?] — flagged, not resolved either way.
6. **Chooser** — ranked include/exclude, confidence-tiered (Measured/Benchmarked/Estimated/Unverified); Unverified hard-blocked client-side. **Port the UI directly from `ebr-coworker-options/test-chooser-screen.html`** — reuse its markup/logic [D].
7. **Deliver** — dashboard/review render, or write-back into the operator's own Excel (M365-write gap, RA-018 — flag as heavier) [R].
8. **Liability & state-of-union** — combined final step: every risk surfaced-and-declined logged as a written, dated, append-only warning, plus the forward 12-month framing [R].

**Dashboard changes:** Delta view (step 2's content) becomes the default landing tab [A]. Register/spectrum view (Setup screen 6) becomes a secondary tab [A].

### C. Post-activation / steady state — existing, keep as-is except where noted

- **Coworkers list** — keep, but replace the current "not in this demo" toast with the honesty badge (site 1).
- **Dashboard → Runs/Audit** — unchanged.
- **Client report** (dual-surface, chooser-filtered) — unchanged, but confirm it reads its filter state from the Chooser step's selections; exact wiring not specified [?].
- **Teach-back** — keep as-is; audit found it "thinner/relocated" [D] but no instruction to expand it — don't.

### D. Runbooks screen — new, behaviorally specified from Will's Figma, executed in Apex Bridge

**Shell: resolved — graft into `ebr-app.html`'s existing nav, no separate full shell.**

Two-pane layout: list (left) + details (right), rendered in Apex Bridge tokens (see Visual system section for the exact token list) — Will's Figma is the reference for *what states exist and how they behave*, not for the AILERON purple skin itself.

**List pane:** search + filters (Publisher/Author/Category/Last-updated). Each row: name + date, plus a lifecycle pill (Active=green/Inactive=grey) and a scope pill ("N Coworkers" — honesty-badge site 3, see Section E for exact composition). `RunbookVersion.status` genuinely tracks draft/active/deprecated [R], and Will's captured frames show no visible indicator for it [?] — **add a new version-status indicator** next to the lifecycle pill to close that gap [A].

**Details pane:** header + description, Active/Inactive toggle, tabs Details/Version history. Sections: GENERAL DETAILS, CONNECTED SERVICES, WORKFLOW STEPS — each with edit/duplicate affordances except platform-owned runbooks, which show read-only chrome instead [R — encodes `ownership: platform` vs `tenant`].

**State signals — implement all five, with the two named fixes:**
- **Locked** (whole-record) — badge + icon, **in its own distinct semantic color (e.g. amber/warning)**, not the same accent used for selection/filtering [A — fixes Will's purple-overload gap].
- **Locked (section-scoped)** — same badge, attached to one section only.
- **Locked, extended** — **add "Locked by [fictional name] · expires in [X] min"** to the badge/tooltip, since the backend's lock is real (15-min TTL, `locked_by` field) and Will's frames didn't show it [A — fixes a named gap].
- **No permission to unlock** — locked-section + dark tooltip: "Unlock permission required." [R]
- **Active/Inactive** — toggle + list pill + (inactive only) info banner: "This runbook is not currently active. Activate the Runbook to allow Coworkers to use it. Learn more ↗" [R]
- **Clone** — row-level kebab menu, "Clone Runbook" only fully-specified action, platform-owned rows only — do not invent labels for unlabeled placeholder rows [R].

**Content-sourcing priority:** where a field/section needs content not covered by Will's Figma (e.g. the primitives grid's undefined "EBR Review" slot, section F below), default to Beth's own `onboarding.html` (004) first; use Will's Figma's field vocabulary (how CONNECTED SERVICES/WORKFLOW STEPS are modeled) only to fill what onboarding.html leaves genuinely open.

**Seed data:** fictional author name only — never "Will Mincher" or the source Figma's joke description [A].

### E. Coworker↔Runbook honesty badge — one component, three placements, no substitutions

**Component:** dashed-border chip, `◐ TARGET STATE — not yet wired`. Hover tooltip, verbatim: *"Today, a coworker's runbook is configured per-build. The backend doesn't yet persist which runbook a coworker runs — this connection is in-memory only."* [R]

**Placement sites (all three required) — composition specified for each, do not leave any as replace-vs-augment guesswork:**
1. **Coworkers list** — *replaces* the current "not in this demo" toast entirely.
2. **Setup screen 2 (Connect AI)** — *additive*: existing screen content stays, badge is new.
3. **Runbooks screen** — *augments*, does not replace, the "N Coworkers" scope pill: the pill still shows the real (fictional-seed) count, the badge sits immediately adjacent to it. The count is legitimate display information; the badge's job is to caveat what that count *means* (a live, persisted assignment) against what it actually *is* (an in-memory stub) — replacing the pill would lose real information the count still conveys.

**Explicit exclusion:** not on the Activate gate — that's a different, real behavior (sign-off discipline); mixing messages dilutes both [R].

### F. Restored content: primitives grid, intent-tier table

**Primitives grid + intent→surface→confidence-tier table** — restore from `onboarding.html` (004) as primary source [D — content confirmed present there, absent everywhere after]. Where onboarding.html left a slot undefined (the "EBR Review primitive — to define" gap), fill using Will's Figma's field vocabulary per the content-sourcing priority above — do not invent free-form structure.

### G. New copy: vision framing — NOT a restoration, write fresh

**Vision-framing copy (landing.html, Fill-the-gaps/Getting-business panels) — write fresh, do not port, do not go hunting for source text to lift.** No prior generation produced finished copy in the Maister ("automate the assembly, never the judgment") / £300k-resilience framing — the big-map file is a research map, the option-testimonies are strategy docs, neither is copy. Ground new writing in that material; this is original composition work [A — correction from an earlier "restore" framing that this section header now deliberately separates from Section F to avoid a build agent treating it as a porting task].

---

## Visual system (correction — supersedes any earlier "match Will's Figma skin" framing)

**Itten/Bauhaus is Beth's own palette — reserved.** Never apply it to the product mockup unless she explicitly says so. Will's ACP-Vision Figma is a **behavioral/interaction reference** (states, IA, field vocabulary, copy) — his file's own AILERON purple reskin is a rough exploration artifact, not the real system to copy literally.

**Default: Apex Bridge** — this repo's own standing token system (`.claude/agents/build.md` "Design system — Apex Bridge" section), described there as "Bethproto's own approximation of n-able's real Apex 2.0 design system." This is the concrete, already-documented system Beth's "tried and true Apex 2.0" instruction resolves to — not a fresh invention. Build against its actual tokens: `--bg-app`/`--brand`/`--brand-strong`/`--brand-soft` for surface/accent color, `--radius-sm/md/lg/full` (2/4/16/999px) for shape, Inter (UI/body) + Manrope (product-bar/headings) + JetBrains Mono (metrics/code) for type, soft shadows only (no Bauhaus hard-offset shadows), and the topbar/app-canvas/Bradley-rail three-surface distinction (rail = `--rail-bg`, 4px `--rail-border` left edge, inset violet glow) already specified there.

Execute Will's Figma-documented states and interactions in this real token system — this also resolves the purple-overload gap naturally, since Apex Bridge's semantic tokens don't reuse one accent for four unrelated meanings (selection, locking, filtering, active-nav each get their own signal via distinct token roles, not one brand-purple doing everything).

The **Bradley rail** keeps the Itten/Bauhaus identity per `build.md`'s own three-surface rule (it's explicitly "the Band's own, not Apex" even within Apex Bridge) — no new decision needed here, the standing system already separates these correctly. `DESIGN-REFS.md` needs a superseding note at handoff (Apex Bridge for the mockup, confirming/replacing its 2026-08-27 HARNESS-screenshot-mirror framing; its underlying HARNESS-vs-console.html naming/IA argument still holds) — flagged here, executed at handoff.

---

## File layout

**Single unified SPA, extending `ebr-app.html` directly** [A]. `role-play-simulator.html` was not orphaned because multi-file is bad — it became a parallel, non-integrated app (own persona system, own findings data, own visual tokens); the fix is integration, not more files [D].

- Fold restored content into `ebr-app.html` as new `S.*` states/`render*()` functions, reconciling the `FINDINGS`/`AREAS` constants that have drifted into three incompatible shapes across `ebr-app.html`, `build-ebr.html`, and `role-play-simulator.html` — reconcile *before* building new screens against it [D].
- `landing.html` stays separate (its own marketing audience/license) [A].
- `md-coworker/` stays a separate, cross-linked track (different medium) [A].
- **`role-play-simulator.html` — correction: keep linked and reachable** (e.g. a footer/help-panel link from the unified SPA), explicitly labeled **"Extended scenario — not MVP."** Not archived, not folded into the main flow — scoped-out-but-discoverable [A — supersedes the earlier "retire as served file" instruction].
- Retire `build-ebr.html`, `console.html`, `ebr-dashboard.html`, `ebr-product.html` as served files once folded in; keep on disk under an archive path with a README stating explicitly these are retired-with-reason, not pending [A].

---

## Correctly cut — leave cut (non-negotiable)

**Read literally, not by section title alone:** what's cut below is specific *content/patterns*, not files. `role-play-simulator.html` itself is explicitly **not** cut — it stays linked and reachable (File layout section) — only the pattern of making its two-persona mode the primary flow is cut.

- **`console.html`'s invented nav** — do not restore; `ebr-app.html`'s nav already supersedes it correctly against the real HARNESS screenshot [D].
- **Two-persona (Marcus/Priya) switching as the *main* flow** — do not fold into the primary single-operator experience. The file itself lives on, linked-not-archived, labeled not-MVP [D].

---

## Failure modes

1. **A build agent silently resolves a ⟨VERIFY⟩ slot** (8-tab list, delta-first opening, risk level) because a stepper UI reads awkwardly with a visible placeholder. Mitigation: every ⟨VERIFY⟩-sourced copy slot ships with a visible provisional marker, not a clean final string.
2. **Honesty badge ships at 1–2 of 3 required sites**, most likely dropped from the Runbooks screen. Mitigation: critic's post-build pass checks all 3 sites by name.
3. **"Correctly cut" content quietly resurfaces**, or `role-play-simulator.html`'s "not MVP" label gets lost and it reads as core flow. Mitigation: archive path gets a README; the simulator's link is visually labeled, not just differently routed.
4. **FINDINGS/AREAS reconciliation gets skipped** under time pressure. Mitigation: treat as a hard gate before new render functions, not optional cleanup.
5. **Will's Figma skin gets copied literally** (AILERON purple, his exact chrome) instead of re-executed in Apex Bridge. Mitigation: build agent treats the Figma report as a states/behavior spec, checks every visual decision against the Apex Bridge token block in `build.md`, not against the Figma screenshots directly.

---

## What's missing (honest list — not resolved here)

- Exact current `S.*` state names in `ebr-app.html` for the "Read it"/"Sources" merge.
- Exact field-level mapping for the capstone diff screen's two columns.
- David's actual practice on every ⟨VERIFY⟩ slot — his judgment, not this brief's or Claude's to supply (CLAUDE.md §18).
- Risk level, high vs. medium — Beth's call, not yet made.
- Who signs off on ⟨VERIFY⟩ copy slots before they ship even as provisional.
- Whether critic's post-build scorecard has an explicit line item for honesty-badge 3-site coverage.
- The EBR-review primitive definition and its mapping to Vertesia (routed to the handoff thread).
- Portability of this runbook off Vertesia (routed to Beth + Nicole) — now tracked as **RA-023** in `briefs/vertesia-brief-2026-08-21.md` (logged 2026-09-01, Beth's position: portable, not yet a verified fact).
- **How the Client report (Section C) actually reaches the end client once rendered — not decided by this brief and not this rebuild's job to decide.** The delivery-channel decision itself (SMS / email / portal / PSA-writeback — zero built, 0/4 test plans, no owner) is being worked as a separate thread: `prototypes/channel-gap/` (brief + build + 44-voice council, complete 2026-09-01; also logged to the ACP North Star Vision Clash Report, Confluence 62176526400, same date). This rebuild's Client report screen should render the artifact without implying any specific channel exists — same honesty-badge pattern as Section E if a build agent is tempted to imply otherwise.
- Whether/when Coworker↔Runbook assignment becomes a real persisted backend relationship — a roadmap question; the honesty badge exists precisely so the prototype doesn't get built as if this is already solved.
- `idea_score` — not scored this pass; no rubric was run.

**Resolved since the previous draft of this brief (Beth's corrections, 2026-09-01):** Runbooks-screen shell (graft, not full shell) · role-play-simulator.html treatment (linked + labeled, not archived) · visual system (Apex Bridge default, Itten reserved) · Will's Figma gaps (addressed, not left open) · vision-framing copy (write fresh, not restore) · content-sourcing priority (onboarding.html first, Figma fills gaps).

**Resolved by pre-build critic pass, 2026-09-01:** `gate: 60` frontmatter field removed (unsourced, no rubric — inconsistent with `idea_score: null`'s discipline) · Section F/G split so vision copy is no longer filed under "Restored" · compound tag at the version-status-indicator claim split into proper single-character tags · honesty-badge site 3 composition specified as augment-not-replace · post-build critic now required to check all 3 badge sites individually, not as one aggregate check · rebuild path stated explicitly as in-place inside `ebr-coworker-005-arc/` · "Apex 2.0" language tied to the actual documented Apex Bridge token system (`build.md`) rather than left as an unanchored gesture · "Correctly cut" section given a literal-reading note so it isn't misread as cutting the role-play-simulator.html file itself.

---

## Addendum (2026-09-01, post-Build-Pass-2 review) — merged Build/Report flow

Beth reviewed the live build against an older reference generation (`ebr-coworker-004-assembly`, downloaded as a zip) and gave 6 corrections. Five were fixed directly (logo/tone, vision-page link, FTUX first-screen guidance) — documented in-session, not restated here. The sixth — Structure & Sources redesign — required research before building. `scout` returned real, named patterns (`prototypes/ebr-coworker-005-arc/scout/` — see files below); Beth approved the synthesized direction ("hell yes"). This addendum is that direction's spec.

**What's wrong today [D — confirmed by screenshot, not just code read]:** Setup step 2 ("Structure & sources") renders a literal terminal-log console ("Reading…", black box, scrolling text) as its primary content on the "Read it" tab, plus a wall of collapsed technical rows on "Sources." Unreadable to a non-technical reader; no data lineage; no interactivity. Step 3 ("Fill the gaps") and step 4 ("Decide how much it does") are separate wizard steps for content that belongs in the same mental model.

**New shape — collapse 4 steps into 1, add a mode toggle:**
- Steps 2–4 (Structure & sources / Fill the gaps / Decide how much it does) merge into **one screen, "Build the register."** Steps renumber: 0 Your report, 1 Connect AI, 2 **Build the register** (merged), 3 Review *(unchanged content, renumbered)*, 4 Activate. [A — new IA, supersedes Section 5A's 7-step list]
- That merged screen carries a **Build / Report mode toggle**, modeled on Power BI's Reading view ↔ Editing view (a named, real pattern — `scout/03-report-mode...`: switch via one button; Reading view interacts with existing filters but can't restructure; Editing view is full authoring) — not invented from scratch. **Build mode** = the technical view (parse log collapsed by default behind a "Details" disclosure, not shown raw; per-section source/connector detail; per-section autonomy control inline). **Report mode** = the client-legible view (plain findings, no technical chrome) — this *is* the item-6 "mini dashboard... snapshot" ask; Report mode is the snapshot.
- **Per-section autonomy goes inline, not a separate step.** Each section in Build mode carries its own draft/hold control at the point where that section's content lives — modeled on Gmail filters / Zapier's Human-in-the-Loop (`scout/03-...`: each rule/step is independently scoped, not one global toggle). The existing `AREAS`-level toggle list is replaced by inline per-section controls; `countDoes()`/`autoDoes()` logic is preserved, just relocated.
- **Every finding gets an expandable lineage trail**, modeled on dbt Explorer / Tableau's Lineage tab (`scout/02-...`: click a node, see source → transformation → this value). Minimum viable version: source name → connector/tier (`techStr(a)`, already computed) → the finding. Not a live-recompute data-massage tool this pass — that's Observable Inputs-level effort [A — scoped down; name the gap in SOURCES.md rather than half-build it].
- **Activate becomes "Publish"** — framed as exiting Build mode into Report mode (the same toggle, not a separate modal gate), per Tableau's Presentation Mode metaphor. The three existing sign-off checkboxes and the David/Vanessa ⟨VERIFY⟩ warncall carry over unchanged in content — only the framing/entry-point changes.
- **Manuel Lima's taxonomy** (`scout/01-...`) — [WOBBLY], single-author aesthetic — is not a mandate to re-skin `systemMap()`. If touched, treat as a refinement of the existing radial diagram's legibility (label collision, hierarchy), not a new visual system.

**Not in scope this pass:** live data-massaging/pivot-style editing (Observable Inputs-level interactivity), a full Lima-style visual system rework, Manuel Lima citations appearing as UI copy.

**Sources:** `prototypes/ebr-coworker-005-arc/scout/01-manuel-lima-info-design.md`, `02-data-lineage-provenance-ui.md`, `03-autonomy-confidence-threshold-patterns.md`, `04-report-mode-dashboard-toggle.md`.

---

## Addendum (2026-09-01, second pass) — Review needs to ask for input, not just display

Beth's framing, verbatim: **"coworker is that magic assistant butler that is doing someone's work and asks for input. We lost this magic. and need to build more in."** Concretely: **"need a way to make review go back to making choices for the excel sheet."**

**Grounding check — this is honestly a NEW extension, not a restoration.** Searched `_archive/build-ebr.html`, `ebr-coworker-004-assembly/onboarding.html`, and `ebr-coworker-options/*.html` for a prior interactive per-finding decision mechanic at review time. Found only: (1) `_archive/build-ebr.html`'s `.status-pill` (open/deferred/accepted/remediated) — a **static display label** from fixture data, no `setStatus()`, never user-settable [D — confirmed no click handler exists]; (2) the Dashboard's existing "Teach it your judgment" box (`ebr-app.html`, `tb-grade`/`tb-note`/`saveTb()`) — a real, working correct-a-grade mechanic, but it's **one canned example finding, post-activation only**, not available during Review and not per-row. Nothing found is literally "review, but with choices" — so this is new work extending an existing pattern (teach-back) to a place it's never been, not un-deleting a lost screen. Say so plainly if asked — don't let this read as restored.

**What to build — Review (step 3, "Here's the register I'd build") stops being read-only:**
- Rewrite the panel's framing copy. Current: *"Immutable once you activate it, so read it now."* That sentence is the bug — it tells the user their only job is to read, then a door closes. Replace with something that frames the coworker as asking, not presenting a fait accompli (e.g., along the lines of: the coworker drafted this and wants to know, before it goes live, whether each finding is right — exact wording is a copy pass, not this addendum's job to finalize).
- `regTable()` gains a **review mode** (param, e.g. `regTable(true)` for Review vs. `regTable()` for Dashboard — don't change Dashboard's existing behavior). In review mode, each row gets three inline choice chips, reusing the *visual* language of the existing `tb-grade` pills (color-coded, same border/pill styling) but per-row: **Looks right** / **Correct the grade** / **Hold from client**. Choosing "Correct the grade" expands an inline mini version of the existing `tb-grade`+`tb-note` pattern (pick red/amber/green, one-line reason) scoped to that row — do not build a second, different-looking correction UI; reuse the CSS classes already defined for `.tb-grade`/`.tb-note`.
- Store choices in new state, e.g. `S.reviewChoice = {}` keyed by finding id: `{action:'confirm'|'correct'|'hold', grade?, note?}`. Nothing here needs to persist beyond the session — this is a prototype demonstrating the interaction, not a real backend write.
- Add a small progress readout (e.g. "3 of 6 reviewed") so there's a visible sense of the butler waiting on you, not a silent form. Don't block the Publish button on full review — per this project's own honesty rule, forcing 100% engagement to proceed would misrepresent how a busy technician actually works; an unreviewed finding should just carry no override (defaults to the coworker's original grade), stated plainly, not hidden.
- This does **not** replace the Dashboard's own "Teach it your judgment" box — that stays as the ongoing-cycle version of the same muscle. Review is the *first* time you exercise it, on the whole draft register at once.

**Not in scope:** making choices here actually rewrite `FINDINGS` data live (would require restructuring how the register renders downstream) — visually and interactionally real, but the underlying array stays as-is this pass. Name this limitation in code comments, don't silently fake persistence.

---

## Addendum (2026-09-01, third pass) — Register↔Report connection, Manuel Lima treatment "to 11"

Beth's framing: **"the biggest source of dissonance is connecting the report and the register"** → **"I want a risk register that translates into the report in the framework of the MSP. You can do that."** → **"Also Manuel Lima this up. Like to 11. All of it."**

**Grounding check — the MSP translation framework already exists, this is not new business logic.** `FINDINGS[]` already carries a `translate:{cfo, owner}` field per finding (e.g. `f1.translate.cfo`/`f1.translate.owner`) plus a `consequence` field — this is **Stefanie's formula**, cited in-code (`translateBody()`'s own lede: *"Technical → business, Stefanie's formula: data → risk → what it means to you → consequence if unactioned"*). It already renders today, but only as plain stacked cards inside the Run Cycle accordion's collapsed "Translate" step (`translateBody()`, called from `renderRunCycle()`) — nobody sees it unless they expand step 4 of an already-collapsed disclosure buried in the Dashboard. **The MSP framework is not missing. The connective visualization is.** Do not invent new translation copy or a new business framework — wire up what's already there.

**The actual dissonance, concretely:** `renderReport()`'s "What we found" section and `regTable()`'s register rows are both reading from the same `FINDINGS[]` array, but nothing on screen shows that. The only navigation between Register and Report is one button (`openReport()`, on the coworker-detail action row) that does a hard full-screen takeover with its own "← Back to dashboard" exit. No shared view, no traceability, no visible transform step in between.

**What to build:**

1. **A real Translate visualization — an arc diagram, Manuel Lima's named technique** (`scout/01-manuel-lima-info-design.md`: arc diagrams are one of his ~15 documented network-diagram types, used for exactly this shape of problem — two parallel node sets with relationship curves between them). Two columns: **left = Register** (each `FINDINGS[]` row — finding name, grade dot using the existing `GC` map, tier), **right = Report** (the same finding's `translate.cfo` or `translate.owner` line, whichever tone is active — reuse the existing `chooserTone`/`S.chooserTone` cfo/owner toggle already in state if that's the right precedent, check before inventing a new toggle). Smooth bezier arcs connect each left node to its right counterpart, colored by `GC[f.grade]` — reuse the exact curve-drawing technique already proven in `systemMap()` (quadratic bezier `Q` paths between two point sets) rather than inventing new curve math.
2. **This is the literal "translate" step made visible**, not a new concept — it should replace or dramatically upgrade `translateBody()`'s current plain-card rendering, and ideally become reachable directly from both Register (a "See how this becomes the report →" link) and Report (a "See where this came from ←" link), so the two screens finally reference each other.
3. **"To 11 / all of it" — apply Manuel Lima's actual documented principles, not just this one diagram.** Per `scout/01-manuel-lima-info-design.md`: his recurring thesis is **"beautiful AND legible"** — decoration in service of clarity, not instead of it. Concretely this means: generous whitespace, confident typographic hierarchy, smooth/considered curves (not jagged straight connectors), and — where it genuinely helps grouping — his *Book of Circles*/*Book of Trees* taxonomy (radial/hierarchical layouts) applied to the **existing `systemMap()`** as a secondary pass if time allows, refining its legibility (the scout dossier already flags label-collision as its known weakness) rather than replacing it with something unrelated.
4. **This is a different "beautiful" than the logo's iridescent glam pastel gradient** — that palette is reserved for the brand mark (`--brand` treatment, established this session). The register/report/translate visualization stays in the app's real serious-UI tokens (`--apex`, `--cyan`, `GC.red/amber/green/held`, existing typography). Lima's own reference work (network science, biology, information taxonomies) is sophisticated data-viz, not decoration — "to 11" means maximum craft within that idiom, not sparkle. State this explicitly if asked; don't let "beautiful" regress into the pastel-cutesy pattern this project has already had to correct twice.
5. **[WOBBLY] carried forward from scout**: Lima's taxonomy is a single-author aesthetic system, not a cross-checked design-history consensus. Fine to use as the concrete technique reference for arc diagrams specifically (that type is well-documented and genuinely fits this exact left-set/right-set/relationship-curve problem) — just don't present "Manuel Lima" in any UI copy as an authoritative standard; it's this build's stylistic choice, not an industry rule.

---

## Addendum (2026-09-01, fourth pass) — lead with the outcome, not the number

Beth's framing, after seeing the translate-arc build: **"look back at the risk register — needs to translate to business outcomes WAY better."** and **"I also want reports that lead with the business outcomes instead of the numbers."**

**Grounding — the exact gap, confirmed by direct code read, not inference:**

- `renderReport()`'s "What we found" section (search `<h3>What we found`) builds each card as: grade dot → `plainNum(f.finding)` (the **technical finding name**, e.g. "3 admin accounts without MFA," lightly de-numbered) as the headline (`.ft` class) → `f.why` (mechanism) → `f.ask` (recommendation). **It never reads `f.translate.cfo` or `f.translate.owner` at all** — the exact business-outcome sentence this session just wired into the new Translate arc view (e.g. *"If one admin password is phished, the attacker has the keys to everything — mail, files, backups"*) is sitting unused right next to the weaker technical-name-first framing that ships today. `exportDoc()` (Word export) mirrors the same finding-name-first structure. `exportCSV()` already includes `f.why`/`f.ask` as columns but not `translate` either.
- The Register (`regTable()`) only surfaces outcome language if a user clicks a row open (`toggleFinding()` → `.fdetail`), and even then shows `f.why` (mechanism: *why* it's risky) not the outcome/consequence framing (`f.translate.cfo/owner` or `f.consequence`, which is the sharper "if unactioned" business-stakes sentence). Nothing in the collapsed row hints an outcome exists — you must know to click.

**What to build:**

1. **`renderReport()`'s "What we found" cards flip their hierarchy.** Lead each card with `f.translate[S.chooserTone]` (cfo or owner tone, whichever is active — reuse `S.chooserTone`, don't add a new toggle) as the headline sentence. The technical finding name (`plainNum(f.finding)`) becomes a small supporting label underneath — still present (nothing gets deleted, the "47% rule"/honesty apparatus depends on the technical trail staying visible), just demoted visually, not the first thing read. `f.ask` (the recommendation) stays, likely right after the outcome sentence since it's the natural next beat (outcome → what we recommend). Apply the same lead-with-outcome reordering to `exportDoc()`'s Word output for consistency — a client shouldn't get a different narrative order in the browser vs. the exported doc.
2. **Register rows surface the outcome, not just the mechanism.** In `toggleFinding()`'s `.fdetail` expansion, add the `f.translate[S.chooserTone]` (or `f.consequence` if that reads better in an internal/technical context — your call, but pick one and be consistent, don't show three overlapping "why is this bad" sentences) as the lead line of the expanded detail, ahead of `f.why`. If there's room, consider surfacing a short outcome preview even in the *collapsed* row (not just on click) — Beth's "WAY better" reads as "don't make me hunt for it," not just "improve the text once I've found it."
3. **Don't invent new copy.** `translate.cfo`, `translate.owner`, and `consequence` already exist per finding and are already correct/sourced (Stefanie's formula). This addendum is entirely about **which existing field leads**, not about writing new business-outcome language.
