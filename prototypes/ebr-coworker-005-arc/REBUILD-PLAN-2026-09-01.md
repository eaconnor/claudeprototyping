<!--
Durable in-repo copy of the plan-mode file at /Users/bethconnor/.claude/plans/starry-giggling-widget.md,
copied here 2026-09-01 because plan-mode files live outside this repo (~/.claude/plans/) and are easy to lose track of.

READ THIS FIRST: this file is frozen as originally approved. Two things in it were corrected AFTER this
plan was written, by the pre-build critic pass — read briefs/ebr-coworker-rebuild-2026-09-01.brief.md
for the current, operationalized, corrected version:
  - Visual system (this file's §4, and §9 Amendment 5): said "Apex 2.0" — the brief corrects this to
    **Apex Bridge**, this repo's own documented token system (.claude/agents/build.md), which is itself
    an approximation of the real Apex 2.0. Follow the brief, not this file, on visual system.
  - Role-play-simulator.html, vision-framing-as-new-copy, content-sourcing priority, Will's-Figma-gap
    fixes, and the Runbooks-screen-grafts-into-nav decision (§9 Amendments 1-4, 6) are all correctly
    reflected in the brief too — this file and the brief agree on those points.

Pipeline status as of 2026-09-01: plan approved → brief written + critic-pass-1 (fixed) → build Pass 1
complete (data reconciliation, Setup-screen merge, capstone diff, honesty badge sites 1-2) → Pass 2
(run-cycle stepper, Chooser port, Runbooks screen, badge site 3, vision copy) not yet started, paused
for Beth's review per her "human in the loop" request.
-->

# EBR Coworker rebuild — grounded in acp-core-main-3 + Will's ACP-Vision Figma

## Context

The previous EBR Coworker build (`ebr-coworker-005-arc`) triggered the Microsoft Bob demotion: it mistook eng's placeholder demo UI for the design target and flattened the real, richer coworker-setup flow down to match it. This session's job is a rebuild that (1) restores what was genuinely lost without re-restoring things that were correctly cut, (2) grounds every claim about "Runbook" and "Coworker" behavior in what `acp-core-main-3` actually does — not an invented model, and (3) grounds the visual/interaction design of any Runbook-management surface in William Mincher's real ACP-Vision Figma exploration, not a reinvented one. Beth's instruction: treat both the repo and Will's Figma as ground truth ("these are god") — the build conforms to them, not the other way around.

Two research passes back this plan: a full read of the real backend (`runbooks/models.py`, `schemas.py`, `service.py`, `ports.py`, the 002 spec, the Intent Spec, and `agents/models.py`), an audit diffing every prior EBR prototype generation (004/options/big-map/005-arc) for what got dropped, and a visual review of Will's Figma (`ACP-Vision`, fileKey `AdZ7Dvnm0E6USrDQRnjaVf`, page "Exploration") covering all 9 Runbook-state frames + 3 app-shell references.

---

## 1. Grounding corrections (backend reality)

- The real `RunbookVersion` schema has **nine** fields (`intent`, `risk`, `script_refs`, `ai_reasoning_boundaries`, `escalation_rules`, `handoff_logic`, `executor_type`, `change_summary`, plus family-level `name`/`description`) — the current brief (`briefs/technica-ebr-runbook-draft-2026-08-21.md`) says "five fields" and is wrong. Fix this before it ships into UI copy.
- **`Coworker` has no `runbook_id` field, and coworker↔runbook assignment (`app/runbooks/ports.py`) is an in-memory stub** (`InMemoryCoworkerAssignment`), not a persisted relationship. "EBR Coworker runs the EBR Advisor runbook" is target-state, not current backend behavior. The build must represent this honestly, not silently.
- Risk classification (low/medium/high) is stored on a runbook version, but **no guardrail/sign-off enforcement is wired to it at this layer** — that belongs to the not-yet-built trust/autonomy system (explicitly out of scope, NONGOAL-005). The brief's "risk: high → guardrail high = explicit sign-off" claim overstates what exists today; the chooser gate's sign-off behavior is real UX design, but it isn't backend-enforced yet. Keep the UX (it's good design), drop the implication that the platform enforces it today.
- v1 runbooks are text-first: no workflow references, no child-runbook nesting (schema rejects both). Only script references exist.

---

## 2. Prototype-history findings — what's actually present vs. missing

**Already present in `ebr-app.html` (005-arc), carried forward correctly — do not re-restore:**
Fill-the-gaps client interview, multi-file + Stefanie template, Advisor/handholding checkbox, teach-back (though thinner/relocated — see below).

**Genuinely missing — restore, named:**
- **`role-play-simulator.html`** — finished, 9-step two-persona simulator, orphaned (nothing links to it since `build-ebr.html` became a superseded "separate track"). Its `STEPS` array is the real 9-step operator vocabulary.
- **The capstone diff screen** — `build-ebr.html`'s final step ("What you brought" vs. "What you have now") is missing from `ebr-app.html`, which jumps straight from Activate to the dashboard.
- **The 9-step operator cycle vocabulary** (`ebr-coworker-004-assembly/RUNBOOK.md`): Ingest → Continuity/delta-first → Judge the 8 tabs → Translate → Getting-business/upsell-from-gaps-only → Chooser (ranked include/exclude, confidence-tiered) → Deliver → Liability & state-of-union. Zero hits anywhere in `ebr-app.html`'s dashboard, which opens on the register/spectrum view instead of delta-first, and has no upsell surface or interactive chooser.
- **Vision framing** — the big-map's Maister leverage-ratio thesis ("automate the assembly, never the judgment") and the two independent adversarial passes that converged on a business-resilience narrative (the £300k-rebuild UK MSP story) — absent from `landing.html`'s current generic "hire the coworker, keep the judgment" copy.
- **004's `onboarding.html`** had a primitives grid, a dual-artifact (internal/client) visual, and an intent→surface→confidence-tier table that never survived past 004 — restore both the primitives grid and the intent-tier table (the dual-artifact rule is already stated in prose in `ebr-app.html`; give it the visual too).

**Correctly cut — leave cut:**
- `console.html`'s invented nav (DESIGN-REFS.md itself calls it "a franken harness" against the real HARNESS screenshot) — `ebr-app.html`'s nav already supersedes it correctly.
- Two-persona (Marcus/Priya) switching as the *main* flow — keep as an archived teaching/demo device, not folded into the primary single-operator experience.

---

## 3. Will's Figma — the Runbooks surface (fully specified, not deferred)

File: `ACP-Vision` (branded **AILERON**), page "Exploration," 9 frames across 4 sections, plus 3 app-shell references. This is the canonical reference for any Runbook-management screen in the rebuild.

**Shell:** left sidebar (Search → Home/Recent → CONTROL PLANE: Coworkers, In Flight → CAPABILITIES: **Runbooks**, Skills, Tools → CONTEXT: Experts, Knowledge Base → CONNECTORS → GOVERNANCE), top breadcrumb (`Capabilities / Runbooks`) + utility icon cluster, page header with a "6m ago" sync indicator, filter toolbar (`View`, `Status`, `Reset`, `Save`, `Ask N-zo`), primary actions (`+ Build a runbook`, `Import a runbook`). Two-pane content: list (search + Publisher/Author/Category/Last-updated filters) + details.

**List row pattern:** name (purple/link when selected) + date, plus two pills below: lifecycle status (`Active`=green / `Inactive`=grey) and a scope pill (`N Coworkers`, blue, present regardless of status).

**Details pane pattern:** `Details - [Name]` header + description, Active/Inactive toggle top-right, tabs `Details` / `Version history`. Sections: GENERAL DETAILS (author/created/updated), CONNECTED SERVICES, WORKFLOW STEPS (numbered plain-text list) — each section has its own pencil+duplicate edit icons, **except** platform-owned runbooks, which show a single bare lock icon instead (this is the visual encoding of `ownership: platform` vs `tenant` — read-only vs. editable chrome).

**State signals:**
- **Locked** (whole-record): purple-outlined "Locked" pill + padlock glyph, next to the toggle.
- **Locked (section-scoped)**: same pill, but attached to one section header (e.g. Connected Services) instead of the whole pane — other sections keep their normal edit icons.
- **No permission to unlock**: same as locked-section, plus a dark tooltip on hover: *"Unlock permission required."*
- **Active/Inactive**: toggle position+color, list-row pill text+color, and — inactive only — a blue info banner under the header: *"This runbook is not currently active. Activate the Runbook to allow Coworkers to use it. Learn more ↗"*
- **Clone**: a row-level `⋮` kebab menu, `Clone Runbook` as the only fully-specified action (menu has unlabeled placeholder rows below it — don't invent labels for those), demonstrated only on platform-owned rows.

**Gaps in Will's design — don't invent fixes, just note them:**
- No visible draft/deprecated version states or `has_draft` indicator in these 9 frames (likely lives under "Version history," not captured here).
- No lock-holder name or TTL countdown shown, despite the backend's 15-min pessimistic lock.
- Purple is overloaded as the single "attention" accent for selected/locked/filtered/active-nav all at once — inherited ambiguity, not this build's problem to fix.

**Seed-data correction required:** Will's Figma uses his own real name ("Will Mincher") and a joke description as filler data. Per this project's fictional-only seed-data rule, the rebuild must use a fictional author name — do not carry a real person's name from the source Figma into the prototype.

---

## 4. Visual system — resolves the DESIGN-REFS.md conflict [SUPERSEDED — see note at top of file]

Three candidate systems exist in the lineage: the org-wide Itten/Bauhaus Band Protocol palette (CLAUDE.md §11), the rougher "HARNESS-screenshot mirror" `DESIGN-REFS.md` argued for previously, and Will's actual current AILERON/purple Figma system.

**Resolution:** the EBR Coworker mockup body follows **Will's real Figma visual language** (AILERON shell, purple accent, pill-badge vocabulary, two-pane list/detail pattern) — it is the authoritative, current product-UI reference, superseding the older screenshot-mirror approximation. The **Bradley rail** that ships with every prototype per §9b keeps the Itten/Bauhaus system — that's the Band Protocol's own deliverable wrapper around the mockup, a different frame, not a competing skin on the same screen. No actual conflict once the two frames are kept visually distinct (the rail is clearly a right-side meta-panel, not part of the product surface it's reviewing).

---

## 5. Screen/flow inventory

Two granularities of the same thing, not two wizards: the existing 8-step `BUILD` sequence is **setup** (once, or on reconfiguration); the 9-step operator cycle is **what happens on a run**, currently invisible.

**A. Setup (7 screens — merges "Read it" + "Sources" into one two-tab screen):**
1. Your report (drop/pick a shape incl. Stefanie template + multi-file add)
2. Connect AI
3. Structure & sources (merged)
4. Fill the gaps (client interview — unchanged, keep)
5. How much it does (autonomy/trust gate — unchanged, keep)
6. Review the register
7. Activate (3-checkbox gate) → **immediately followed by the restored capstone diff screen** ("what you brought" / "what you have now")

**B. Run cycle (new — expose the 9-step vocabulary as the run's own visible trace, not a second wizard):**
A collapsible run-trace stepper: Ingest → **Continuity/delta** (opens the run) → Judge the 8 tabs → Translate → Getting-business (upsell tag, sourced from gaps only) → **Chooser** (ranked include/exclude, confidence-tiered, port the UI from `ebr-coworker-options/test-chooser-screen.html`) → Deliver → Liability & state-of-union.
- **Delta view** becomes the dashboard's default landing state (not the register/spectrum view, which becomes a secondary tab).
- **Getting-business/upsell** is a tagged filter inside Chooser, not its own screen.

**C. Post-activation / steady state (existing, keep as-is):** Coworkers list, Dashboard → Runs/Audit, Client report (dual-surface, chooser-filtered), Teach-back.

**D. Runbooks screen (now fully specified from §3, not deferred):** the list+details two-pane pattern, all 9 Figma states (provided/custom, locked/locked-section/no-permission, active/inactive, clone), with the Coworker↔Runbook honesty badge (§6) placed at the assignment/scope-count pill.

---

## 6. Coworker↔Runbook honesty gap — where it surfaces

One reusable component: a dashed-border chip, `◐ TARGET STATE — not yet wired`, hover tooltip: *"Today, a coworker's runbook is configured per-build. The backend doesn't yet persist which runbook a coworker runs — this connection is in-memory only."* Placed:
- Coworkers list — replacing the current generic "not in this demo" disabled-click toast.
- Setup step 2 (Connect AI) — where the coworker is conceptually paired with a runbook.
- Runbooks screen (D) — on the scope/coworker-count pill, since that pill is exactly what `InMemoryCoworkerAssignment` fakes.
Do **not** put this in the Activate gate (that's a different, real behavior — sign-off discipline — and mixing messages dilutes both).

---

## 7. File layout

**Single unified SPA, extending `ebr-app.html` directly.** `role-play-simulator.html` didn't get orphaned because multi-file is bad — it got orphaned because it became a parallel, non-integrated app (own persona system, own findings data, own visual tokens). The fix is integration, not more files.

- Fold restored content into `ebr-app.html` as new `S.*` states / `render*()` functions, reusing (and reconciling) its existing `FINDINGS`/`AREAS` constants — these have drifted into three incompatible shapes across `ebr-app.html`, `build-ebr.html`, and `role-play-simulator.html`; reconcile to one shape before building new screens against it.
- `landing.html` stays separate (marketing has its own audience/license — DESIGN-REFS.md's own layer argument holds here).
- `md-coworker/` stays a separate, clearly cross-linked track (different medium, not competing UI).
- Retire `build-ebr.html`, `console.html`, `ebr-dashboard.html`, `ebr-product.html`, `role-play-simulator.html` as served files once their content is folded in; keep on disk under an archive path for provenance. *(Superseded for role-play-simulator.html by Amendment 1 below — kept linked, not retired.)*

---

## 8. Execution sequencing (through the Band Protocol pipeline — §9b, non-negotiable, no steps drop)

1. **Correct the brief first**: fix `briefs/technica-ebr-runbook-draft-2026-08-21.md`'s field count (5→9) and the risk/guardrail overstatement. Pure fact corrections against the code — doesn't touch David's `⟨VERIFY⟩` judgment slots, safe to make directly.
2. **Reconcile `FINDINGS`/`AREAS` data shape** across the three divergent files as a short data-model note before any new render function is written against it.
3. **Spawn `spec`** to fold this plan's decisions (screen inventory, visual-system resolution, honesty-badge placement, Figma-grounded Runbooks screen) into an updated brief.
4. **Spawn `critic`** (pre-build) against the updated brief.
5. **Spawn `build`** with the corrected brief + this plan as input. Build order: Setup → Run cycle/Chooser → Dashboard delta-reopen → Runbooks screen (Figma-matched) → Coworker↔Runbook badges → vision-framing copy pass (landing.html + Fill-the-gaps/Getting-business panels).
6. **Spawn `critic`** (post-build) — re-score, delta table vs. pre-build.
7. **Handoff** — SOURCES.md (cite `acp-core-main-3` file paths + Figma frame IDs per claim), Bradley rail (Itten palette, per §4's resolution), updated `DESIGN-REFS.md` noting the visual-system resolution.

Per CLAUDE.md: these are subagent calls, not work done in the main conversation — the plan above is the input each pipeline stage builds from.

---

## 9. Amendments (2026-09-01, post-approval — Beth's corrections, supersede the sections named)

1. **`role-play-simulator.html` — do not archive/retire.** Keep it linked and reachable from the unified SPA (e.g. a footer/help-panel link), explicitly labeled **"Extended scenario — not MVP."** Corrects §2/§7: it's scoped out of the core flow, not hidden.
2. **Vision framing is new copywriting, not a restore.** No earlier generation wrote finished marketing copy in the Maister/£300k-resilience framing — the big-map file is a research map, the testimonies are strategy docs, neither is finished copy. Treat landing.html's and the Fill-the-gaps/Getting-business panels' copy as work to write fresh, grounded in that material, not text to port. Corrects §2's "restore, named" framing for this one item only.
3. **Content-sourcing priority: Beth's own `onboarding.html` (004) first, Will's Figma fills named gaps second.** Where 004's primitives grid left something undefined (e.g. "EBR Review primitive — to define"), pull structure from Will's Figma's actual field vocabulary (e.g. how CONNECTED SERVICES / WORKFLOW STEPS are modeled) to fill that specific gap — don't invent free-form, and don't default to Will's content where Beth's own already covers it.
4. **Address Will's Figma's own gaps — don't just note them:**
   - No draft/deprecated version indicator in his 9 frames → add a version-status pill (draft/active/deprecated) since the backend genuinely tracks this (`RunbookVersion.status`).
   - No lock-holder/TTL shown despite the real 15-min pessimistic lock → extend the "Locked" pill/tooltip to "Locked by [name] · expires in [X] min."
   - Purple overloaded as the one accent for selected/locked/filtered/active-nav → give **locked** its own distinct semantic color (e.g. amber/warning), reserve purple for selection/navigation only.
5. **Visual system — correction, supersedes §4 entirely. [FURTHER CORRECTED — see brief]** Itten/Bauhaus is Beth's own palette, reserved — never use it for the product mockup unless she explicitly says so. Will's Figma is a **behavioral/interaction reference** (states, IA, copy, field vocabulary), not a literal skin to copy. **The brief further resolves "Apex 2.0" to Apex Bridge** (this repo's documented token system, `.claude/agents/build.md`) — follow the brief on this point, not the "Apex 2.0" wording here.
6. **Runbooks screen shell — resolved.** Graft the two-pane list/detail pattern into `ebr-app.html`'s existing nav. No separate full AILERON left-nav shell.
7. **Proceed to execution now** — build the corrected brief through the pipeline without further pause on these points.

## Verification

- Open the rebuilt `ebr-app.html` in the browser preview; click through Setup → capstone diff → Run cycle → Chooser → Dashboard (confirm delta view is the default landing tab).
- Confirm the Runbooks screen renders all Figma-matched states (locked/unlocked/locked-section/no-permission/active/inactive/clone) and that the honesty badge appears at all three named locations.
- `grep -ri "will mincher\|technica\|craig fisher" prototypes/ebr-coworker-005-arc/` on the new/edited files — must return nothing (fictional seed data only).
- Confirm `landing.html` copy carries the resilience/£300k-story framing and the Maister "automate the assembly, never the judgment" line.
- Confirm no screen implies backend enforcement of the risk-guardrail sign-off (UX may still gate on it; copy must not claim the platform enforces it today).
