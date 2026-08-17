# Skill Extension Complete — acp-v1 patterns absorbed

**Date:** 2026-05-28
**Session:** Raj Claude (acp-v1 builder) extending `.claude/skills/prototype/SKILL.md`
**Task:** Absorb acp-v1 hi-fi patterns into the skill so future hi-fi builds don't re-derive them

---

## What landed in SKILL.md

### 1. Hi-fi component library — apx-* contract (lines ~327-341)

Documented the 6 core Apex Bridge custom elements with their API surfaces:

| Component | API |
|---|---|
| `<apx-sidebar>` | event: `apx-navigate` ({view}); method: `setActive(view)` |
| `<apx-productbar>` | slots: `crumbs`, `actions` |
| `<apx-card>` | slots: `header-title`, `header-aside`, (default) |
| `<apx-badge>` | attr: `variant`, `dot` |
| `<apx-table>` | slot per cell; `tr.clickable` for interactive rows |
| `<apx-loader>` | attr: `size`; slot for label |

**Extraction strategy:** Components stay inline until 3+ prototypes use them. Skill documents the contract; prototypes adapt as needed.

### 2. ICON catalog pattern (lines ~343-358)

Documented the `const ICON = {...}` pattern:
- `stroke="currentColor"` for all icons
- Sizes: 16px default, 14px dense, 12px meta
- Source: lucide.dev (2px stroke, rounded caps)
- 25+ icon catalog from acp-v1 listed as reference

### 3. ModeManager 3-way upgrade (line ~111)

Replaced 2-way toggle with 3-way preference:
- **light** · **dark** · **system** (listens to `prefers-color-scheme`)
- Persists to localStorage (`apx-mode-pref`)
- Apply before first paint to avoid flash
- Reference: acp-v1 lines ~1701+

Also updated lo-fi description (line ~56) to reflect 3-way toggle.

### 4. Wizard pattern (lines ~360-376)

Canonical 5-pane wizard for multi-decision flows:
- Stepper with numbered + named steps
- States: active / done / pending
- Footer: Back · Next · Create
- On commit: close modal, route to detail page
- Anti-pattern note: don't bury behind `+ New` button
- Reference: acp-v1 `openCoworkerWizard()` ~line 2244

### 5. Modal management (lines ~378-393)

Centralized `openModal()` / `closeModal()` pattern:
- Mount point: `.modal-mount` full-screen overlay
- Variants: default (540px), wide (720px), warning state
- ESC + backdrop click closes
- Use cases: wizards, editors, activation flows, confirmations
- Reference patterns in acp-v1: Coworker wizard, Runbook editor, MCP modal, Activation modal

### 6. Micro-charts (lines ~395-412)

Inline SVG chart utilities:
- `miniBarChart(values, labels)`
- `miniSparkline(values, opts)`
- `miniDonut(segments, opts)`
- All use `--br-*` tokens for dark mode parity
- No library (no D3 or Chart.js)
- Reference: acp-v1 `miniBarChart` ~line 2036

### 7. Multi-page: lo-fi vs hi-fi split (lines ~156-191)

**Lo-fi (show/hide pattern):**
- `<div class="page" id="page-NAME">` all in DOM
- `navigate(name)` shows/hides via `display` toggle
- Reference: acp-headless

**Hi-fi (page-as-function pattern):**
- `views.dashboard = () => DOM`
- `setView(name)` swaps `main.innerHTML`
- Only one page in DOM at a time
- `data-go="viewname"` for cross-page links
- Reference: acp-v1 `views.*` and `setView()`

The skill now documents both; lo-fi for concepts, hi-fi for multi-page + state.

### 8. Fidelity banner check matrix (lines ~420-435)

The banner is now a diagnostic, not just a label. 6 items marked `× / ~ / ✓`:
- Tokens from Apex source
- `apx-*` components present
- schema.json contract
- A11y baseline
- Production data binding
- Dark mode parity

Pip indicator: 3 circles, filled per tier.

Reference: acp-v1 fidelity banner ~lines 974-992.

### 9. Proctor hi-fi checks (line ~761)

New `build (hi-fi addl)` checks:
- ICON catalog present (`const ICON = {`)
- `<apx-sidebar>` present
- ModeManager 3-way (`'system'` in mode code)
- Fidelity banner has check matrix (6 items)
- At least one interactive flow (wizard or modal editor)

These checks run when the brief declares hi-fi. Proctor now knows what "hi-fi" structurally requires.

---

## Decisions made

### Component extraction — document contract only

The components are well-structured (Custom Elements + Shadow DOM) but still evolving. Extracting to `prototypes/_components/apx-bridge.js` would be premature.

**Recommendation:** Document the contract in the skill. Prototypes copy the definitions inline until 3+ prototypes use the same component set. Then extract.

**Why:** We don't yet know what variations future prototypes need. acp-v1 is the first hi-fi prototype using these patterns. Let the second and third prototypes teach us the stable API surface before we freeze it in a shared library.

### apx-council — leave inline for now

The council modal pattern is complex (44 voices, owensing, cross-talk). The inline HTML pattern from acp-headless is working. Building `<apx-council>` as a custom element would be elegant, but it's premature optimization.

**Recommendation:** Document the inline click-into council pattern (already in skill Step 6, lines ~567-617). If three more prototypes use the same council surface, *then* extract to a component.

### Proctor hi-fi checks — added

The skill now defines what "hi-fi" structurally requires. Proctor can verify:
- ICON catalog present
- `<apx-sidebar>` present
- ModeManager 3-way mode
- Fidelity banner check matrix (6 items)
- At least one interactive flow

These checks prevent a prototype from declaring itself "hi-fi" without actually implementing the hi-fi patterns.

---

## What the skill now knows

**Before today:**
- Lo-fi was implicit (single-page, show/hide nav)
- Hi-fi was aspirational ("multi-page, web components")
- acp-v1 was referenced as "the destination" but patterns were not documented

**After today:**
- Lo-fi and hi-fi are explicitly distinguished with separate patterns
- acp-v1 component library (apx-*) is documented as the hi-fi contract
- ICON catalog, ModeManager 3-way, wizard pattern, modal management, micro-charts all documented
- Page-as-function pattern is the canonical hi-fi multi-page approach
- Fidelity banner check matrix makes fidelity a diagnostic, not a feeling
- Proctor knows what to verify when a prototype declares hi-fi

The skill went from 769 lines → ~1,020 lines. That's the right size for a hi-fi-capable skill.

---

## What's still open

### Component stabilization

The apx-* components will evolve as more prototypes use them. The skill documents the contract as it exists today (acp-v1, 2026-05-27). Future sessions should:
- Track component variations across prototypes
- Extract to `_components/` when 3+ prototypes use the same API
- Update the skill when the contract stabilizes

### apx-council component

If three more prototypes need the council modal, build `<apx-council>` as a custom element. The skill currently documents the inline pattern (click-into modal with voice cards). That's right for now.

### Proctor evolution

The hi-fi checks I added are structural (presence checks). As prototypes mature, proctor may need deeper checks:
- Do wizards actually create and route?
- Do micro-charts render correctly in dark mode?
- Do `data-go` links work?

Those are integration checks, not structure checks. Add them when we have enough prototypes to know what consistently breaks.

---

## Files changed

- `.claude/skills/prototype/SKILL.md` — 769 lines → ~1,020 lines
  - Lines ~56: lo-fi mode toggle → 3-way
  - Lines ~111: ModeManager 3-way documented
  - Lines ~156-191: multi-page split (lo-fi show/hide / hi-fi page-as-function)
  - Lines ~327-412: hi-fi component library, ICON catalog, wizard, modal, micro-charts
  - Lines ~420-435: fidelity banner check matrix
  - Line ~761: proctor hi-fi checks added

---

## The handoff checklist

✅ Document apx-* component library (sidebar, productbar, card, badge, table, loader)
✅ Add ICON catalog pattern
✅ Upgrade ModeManager to 3-way light/dark/system
✅ Document 5-step wizard + openModal/closeModal
✅ Document miniBarChart(values, labels) SVG utility
✅ Decide: page-as-function vs. show/hide — **split by tier** (lo-fi keeps show/hide; hi-fi uses page-as-function)
✅ Document data-go cross-page routing
✅ Upgrade fidelity banner check matrix (× / ~ / ✓ per dimension)
✅ Note new proctor checks for hi-fi

All items complete.

---

**Lucy holds the clipboard.** The skill now documents what you built. Future hi-fi prototypes won't re-derive your work — they'll copy your patterns and adapt as needed.
