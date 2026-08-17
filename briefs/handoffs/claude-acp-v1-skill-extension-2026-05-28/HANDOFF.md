# HANDOFF — to the Claude session that built acp-v1

**Date:** 2026-05-28
**Subject:** Extend the skill with patterns you invented but the skill does not yet document.
**Status:** Skill currently 769 lines. Knows lo-fi vs. hi-fi. Names you as the hi-fi reference. Does not yet document your component library or wizard pattern.

## Update — 2026-05-28 (after this packet was first written)

**Proctor agent added.** A new meta-level quality gate agent ships as `.claude/agents/proctor.md`. It checks process compliance — did agents follow the honor code — not prototype quality (that's still critic's job). Four stages: `proctor spec` / `proctor build` / `proctor council` (optional) and `proctor handoff` (REQUIRED before Step 7 — the 47% rule gate).

The skill now documents Proctor Gates in a section before Step 7. The pipeline overview shows proctor gate annotations. The `required_agents` frontmatter includes `proctor`.

**When you extend the skill:** proctor is already wired in. You do not need to add it. But when you document your component patterns, note any checks that proctor should add — e.g., if a hi-fi prototype must include `apx-sidebar`, proctor build should verify it's present. Add those checks to `proctor.md` or note them here for Beth to add.

The SKILL.md copy in this packet has been refreshed to the current version (includes proctor). Diff against it, not the old version.

---

## What landed today

The 2026-05-28 session ran a rerun of the ACP Headless experiment for Nicole. Three rounds of fidelity correction landed before Beth said "I think you got it." Along the way, [`.claude/skills/prototype/SKILL.md`](.claude/skills/prototype/SKILL.md) absorbed:

| Pattern | State in skill |
|---|---|
| Three-number math (world-claims · test-plan · inflated-with-TODOs) | Documented as required output |
| Apex Bridge `--br-*` token contract | Required for all prototypes |
| Light + dark via `data-apx-mode` | Required (2-way toggle) |
| Inter + JetBrains Mono | Required |
| Bradley rail violet surface + 4px accent border | Required, recipe documented |
| 44-voice council library reference | Skill links to `methods-library-matrix.md` |
| Owensed format (6-field per voice) | Required |
| Cross-talk (3 moves: Direct response · Blind-spot supply · Productive tension) | Required, with "new claim" criterion |
| Click-into council modal | Spec'd; reference is today's acp-headless |
| Doblin scored from organizational position | Required, no-lecture rule |
| Multi-page navigation (Tier 2+) | Documented, vanilla JS show/hide pattern |
| Step 0 intake (lo-fi vs. hi-fi, audience) | **Lo-fi is the default** |

What is **not** documented in the skill yet — and what this handoff exists to fix:

| Pattern | Source in acp-v1 | Skill status |
|---|---|---|
| `apx-sidebar` component | Lines 1300-1442 | Referenced, not specced |
| `apx-productbar` component | Lines 1444-1524 | Referenced, not specced |
| `apx-card` component | Lines 1526-1577 | Referenced, not specced |
| `apx-badge` component | Lines 1579-1629 | Referenced, not specced |
| `apx-table` component | Lines 1631-1661 | Referenced, not specced |
| `apx-loader` component | Lines 1663-1695 | Referenced, not specced |
| ICON catalog (25+ SVG icons) | Lines 1264-1292 | Skill says "inline SVG"; doesn't doc the catalog |
| ModeManager (3-way: light/dark/system) | Lines 1701-... | Skill docs 2-way only |
| 5-step wizard (Coworker creation) | Lines 2244-2410 | Skill silent on wizards |
| `openModal` / `closeModal` pattern | Throughout | Skill silent |
| `miniBarChart(values, labels)` SVG utility | Lines 2036-2060 | Skill silent on micro-charts |
| Page-as-function (`views.NAME = () => DOM`) | Lines 1963, 2061, 2473, 2599, 2662 | Skill uses show/hide instead |
| `data-go` cross-page link routing | Throughout views | Skill silent |
| Productbar breadcrumb pattern | Line 1444+ | Skill mentions topbar; no crumb spec |
| Fidelity banner check matrix | Lines 974-992 | Skill has thinner version |

See [COMPONENT-INVENTORY.md](COMPONENT-INVENTORY.md) for line-by-line breakdown.

## The three calls

### 1 · Component extraction strategy

Your `apx-*` web components currently live inline in `prototypes/acp-v1/index.html`. They are reusable in principle but bound to that file in practice.

**Option A — Leave them in acp-v1, reference by copying.** New hi-fi prototypes copy the relevant component definitions into their own file. Pro: no shared-state risk, each prototype is self-contained. Con: components drift, no single source of truth.

**Option B — Factor to `prototypes/_components/apx-bridge.js`.** Future prototypes `<script src="...apx-bridge.js"></script>` and get all the components for free. Pro: one source of truth, components can evolve. Con: a change breaks every dependent prototype.

**Option C — Document the component contract in the skill, leave duplication for now.** Skill describes each component's slots/attributes/events. New prototypes implement to spec. Pro: skill-level discipline. Con: still duplication.

**Recommendation:** B if the components are stable enough; C if they're still evolving. You know better than I do.

### 2 · Page-as-function vs. show/hide

Today's lo-fi acp-headless uses simple show/hide: every page is a `<div class="page">` in the DOM, `navigate(name)` toggles `display`.

Your acp-v1 uses page-as-function: `views.dashboard = () => DOM`, `setView('dashboard')` calls the function and swaps `main.innerHTML`. Lighter DOM at any moment, cleaner for hi-fi.

The skill currently documents show/hide as the multi-page pattern. **The right answer is probably:**
- **Lo-fi:** show/hide is fine. Cheap, no JS templating, easy to read.
- **Hi-fi:** page-as-function is canonical. Lighter DOM, easier to compose with components.

If you agree, update the skill's multi-page section to split the recommendation by tier.

### 3 · Council as `apx-council` component?

Today's click-into council shipped as inline HTML in the Bradley rail of each prototype. ~400 lines of HTML for the modal, ~30 lines of JS for the interactions, ~150 lines of CSS for cards + cross-talk blocks.

This is a copy-paste tax every hi-fi prototype will pay. **`<apx-council>` would solve it.** Component takes a `voices` attribute (or slot), renders the grid, handles expand/collapse, hosts the cross-talk section as slots.

If you build this, the skill should reference it as the canonical council surface. The current inline pattern stays as the lo-fi fallback.

## What I need from you (so the skill is correct going forward)

- Decide the component extraction strategy (call 1) and update the skill to match.
- Decide page-as-function vs. show/hide per tier (call 2) and update the skill.
- Decide whether to ship `apx-council` (call 3); if yes, build it and update the skill.
- Add the ICON catalog, ModeManager (3-way), wizard, and modal patterns to the skill as documented standards for hi-fi.

## Calls Beth still owns (do not pre-empt)

These are open from the ACP Headless rerun and need Nicole's input, not yours:

- Pick MSP segment for 5-MSP walkthroughs (by 2026-06-05)
- Choose backstage visibility model (incident-only / on-demand / always) (by 2026-06-12)
- Lock trust-ledger verifiability (auditable / black-box with risk acceptance) (by 2026-06-19)
- Pick which 3+ Doblin dimensions to activate before Tier 2 (by 2026-06-19)

These are Nicole's decisions, routed via Bradley. You may inform them with prototype work; you do not resolve them.

---

**The 47% rule.** Every claim in this packet is grep-verified against the actual files referenced. Line numbers point to the code that exists, not the code that should exist.

Lucy holds the clipboard. Work for Beth, not the vendor.
