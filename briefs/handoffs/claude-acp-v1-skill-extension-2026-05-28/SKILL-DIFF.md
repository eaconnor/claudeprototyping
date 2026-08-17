# SKILL-DIFF — Proposed additions to SKILL.md

**Purpose:** drafted prose blocks to add into [SKILL.md](.claude/skills/prototype/SKILL.md). Refine, prune, merge in the order that makes sense. The intent is to document the patterns from acp-v1, not to demand them — each addition has a "where" so you know where to drop it in.

---

## Addition 1 — under "Apex Bridge — the default delivery vehicle"

Append the following subsection:

```markdown
### Hi-fi component library — the apx-* contract

When the user has chosen hi-fi, the prototype ships with the following Apex Bridge custom elements. Each is a Web Component (Custom Element + Shadow DOM) defined once and reused across pages.

| Component | Purpose | Key API |
|---|---|---|
| `<apx-sidebar>` | Primary navigation, grouped sections | event: `apx-navigate` ({view}); method: `setActive(view)` |
| `<apx-productbar>` | 56px topbar with crumbs + actions | slots: `crumbs`, `actions` |
| `<apx-card>` | Default container with header bar | slots: `header-title`, `header-aside`, (default) |
| `<apx-badge>` | Status/tag chip | attr: `variant` (brand · success · warning · danger · info · neutral), `dot` |
| `<apx-table>` | Token-styled data table wrapper | slot per cell; `tr.clickable` for interactive rows |
| `<apx-loader>` | Loading state | attr: `size` (sm · md · lg); slot for label |

Reference implementation: `prototypes/acp-v1/index.html` lines 1300-1695.

**Extraction strategy** (decision pending — see handoff): components currently live inline in acp-v1. Hi-fi prototypes either copy the definitions or `<script src>` a shared `prototypes/_components/apx-bridge.js`. The skill does not yet mandate one approach.
```

---

## Addition 2 — under the Apex Bridge subsection

Append:

```markdown
### ICON catalog

Hi-fi prototypes include an inline SVG icon catalog declared once:

```js
const ICON = {
  dashboard: '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">...</svg>',
  // ... 25+ icons
};
```

**Rules:**
- All icons use `stroke="currentColor"` so they pick up text color from CSS cascade.
- Sizes: 16px default, 14px in dense rows, 12px in tile-meta or status indicators.
- Stroke width: 2px default, 2.2-2.4px for emphasized icons (check, x, pause).
- Source family: lucide.dev (matches the 2px-stroke, rounded line-cap aesthetic).

Catalog reference (acp-v1 set): `dashboard · coworkers · executions · runbooks · experts · mcp · metering · ledger · settings · sun · moon · monitor · search · bell · chevR · back · close · check · x · pause · warning · plus · toolWrench · cpu · terminal · shield · branch`.

Lo-fi prototypes can use Unicode glyphs (⊕ ⊖ ◑ ◐ ●) or a smaller subset. Hi-fi requires the catalog.
```

---

## Addition 3 — replace the existing mode-toggle paragraph

Find:
```
- Light mode default + dark mode via `data-apx-mode="dark"` on `<html>`. Toggle button required.
```

Replace with:
```markdown
- **Mode preference is 3-way: light · dark · system.** The 3-button toggle lives in the productbar (right area). The `system` option listens to `prefers-color-scheme`. Preference persists to localStorage (key: `apx-mode-pref`). Apply on load before first paint to avoid flash.

  Implementation reference: `prototypes/acp-v1/index.html` ModeManager IIFE (~lines 1701+).
```

---

## Addition 4 — new subsection under "Apex Bridge"

Append:

```markdown
### Wizard pattern (hi-fi only)

When a hi-fi prototype needs to expose a multi-decision creation flow (new Coworker, new runbook, new tenant onboarding), use the canonical 5-pane wizard pattern:

- Stepper at top: numbered + named steps (e.g., `① Identity · ② Experts · ③ Runbook · ④ Tools · ⑤ Trust & Trigger`).
- States: `active` (current), `done` (passed), `pending` (future) — visually distinct (color + filled circle vs. outline).
- One `.wizard-pane` per step, only the active pane visible.
- Footer: `Back` · `Next` · `Create` (commit button on last step).
- On commit: close modal, route the user to the detail page of the thing just created.

**Anti-pattern:** putting the wizard behind a `+ New` button buried in a corner. The wizard is the front door for the flow it represents. If the prototype's load-bearing capability is creating new Coworkers, the dashboard empty state should *invite* a wizard launch, not list zero rows.

Reference: `prototypes/acp-v1/index.html` `openCoworkerWizard()` (~line 2244).
```

---

## Addition 5 — new subsection

Append:

```markdown
### Modal management

Hi-fi prototypes use a centralized modal control:

```js
function openModal(content) { /* mounts into .modal-mount, adds .open */ }
function closeModal()      { /* removes .open */ }
```

- Mount point: a single `.modal-mount` div positioned absolute, full-screen overlay.
- Variants: default (540px wide), `.modal.wide` (720px), warning state (destructive actions).
- Header / body / footer split with subtle dividers.
- ESC closes. Backdrop click closes.

**Use modals for:** wizards, editors (runbook editor, MCP server config), activation flows, confirmation dialogs. **Do not use modals for:** the council surface (it has its own larger modal pattern; see Step 6).

Reference patterns in acp-v1: Coworker wizard (5-step), Runbook editor, MCP server modal, Activation modal (with warning state).
```

---

## Addition 6 — new subsection

Append:

```markdown
### Micro-charts

Hi-fi prototypes ship inline SVG micro-charts via pure-function utilities — no library.

```js
function miniBarChart(values, labels) { /* returns SVG string */ }
function miniSparkline(values, opts) { /* returns SVG string */ }
function miniDonut(segments, opts)   { /* returns SVG string */ }
```

**Rules:**
- All charts use tokens (`var(--br-color-brand-primary)` etc.) for fill and stroke so dark mode is free.
- Values + labels are arrays; opts is an object for size/padding/colors.
- Charts are *inline strings* injected via innerHTML, not framework components. They never reach for D3 or Chart.js — those are overkill for trend display.
- Use cases: Value Ledger trend (last 6 months), per-Coworker execution sparkline, trust distribution donut.

Reference: `prototypes/acp-v1/index.html` `miniBarChart` (~line 2036).
```

---

## Addition 7 — modify the "Multi-page prototypes" section

Find:

```markdown
Pattern (vanilla JS, no framework, from `prototypes/acp-headless/index.html`):
- Each page is a `<div class="page" id="page-NAME">` inside `.main-wrap`.
- Sidebar items carry `data-view="NAME"` and `onclick="navigate('NAME')"`.
- `navigate(name)` hides all `.page` elements, shows the target...
```

Replace with:

```markdown
Two patterns, picked by tier:

**Lo-fi multi-page (show/hide pattern):**
- Each page is a `<div class="page" id="page-NAME">` inside `.main-wrap`.
- Sidebar items carry `data-view="NAME"` and `onclick="navigate('NAME')"`.
- `navigate(name)` hides all `.page` elements, shows the target, toggles `.active` on sidebar, updates the topbar breadcrumb (`#tb-crumb`), scrolls main to top.
- One page is `display: block` on load; rest are `display: none`.
- Reference: `prototypes/acp-headless/index.html`.

**Hi-fi multi-page (page-as-function pattern):**
- Each page is a function: `views.dashboard = () => DOM`.
- `setView(name)` calls the function, swaps `main.innerHTML`, updates sidebar via `apx-sidebar.setActive()`, rerenders productbar crumbs.
- Only one page in DOM at a time. Lighter, composes better with components.
- Cross-page links use `data-go="viewname"` attribute + delegated click handler.
- Reference: `prototypes/acp-v1/index.html` `views.*` functions and `setView()`.

The lo-fi pattern is fine for a single-decision concept. The hi-fi pattern scales to dozens of pages and dynamic state without bloating the DOM.
```

---

## Addition 8 — replace fidelity banner mention

Find:

```markdown
- Fidelity banner top of page: tier flag + checks + pip indicator + mode toggle.
```

Replace with:

```markdown
- Fidelity banner top of page: tier flag + check matrix + pip indicator + mode toggle.

  **The check matrix** is required for hi-fi (optional for lo-fi). It is a diagnostic, not just a label. Six items, each marked `× / ~ / ✓`:
  
  | Mark | Item |
  |---|---|
  | × / ~ / ✓ | Tokens from Apex source |
  | × / ~ / ✓ | `apx-*` components present |
  | × / ~ / ✓ | schema.json contract |
  | × / ~ / ✓ | A11y baseline |
  | × / ~ / ✓ | Production data binding |
  | × / ~ / ✓ | Dark mode parity |
  
  Pip indicator: 3 circles, filled per tier. Tier 1 → 1 filled. Tier 2 → 2. Tier 3 → 3.
  
  Naming the gaps visibly is part of the protocol — fidelity is a claim, not a feeling.
```

---

## Addition 9 — optional: `apx-council` component

If the council surface is upgraded from inline HTML to a custom element, add:

```markdown
### `<apx-council>` — the canonical council surface (hi-fi)

```html
<apx-council
  voices='[{"code":"CHTR","name":"Moore positioning","tradition":"STRAT","force":"must",...}]'
  cross-talk='[{"move":"direct","voices":["SIGN","JOBS"],"body":"...","new-claim":"..."}]'
></apx-council>
```

The component:
- Renders a card grid of voice cards (clusters as color-coded tags).
- Handles expand/collapse with one voice expanded at a time (or multi-expand via attribute).
- Renders the cross-talk section below the grid.
- Emits `apx-council-open` and `apx-council-close` events for the host app.

**API:**
- Attributes: `voices` (JSON), `cross-talk` (JSON), `tier` (1/2/3), `multi-expand` (boolean).
- Method: `open()`, `close()`, `expandVoice(code)`.
- Slots: optional `header-aside` for custom controls.

Reference (inline pattern, to be migrated to the component): `prototypes/acp-headless/index.html` council modal section.
```

(If `apx-council` is not built, leave this addition out and keep the current inline-HTML council documented as the standard.)

---

## Where these additions go in SKILL.md

Roughly in this order (line numbers approximate):

1. Step 0 intake (already at top — no change)
2. Pipeline overview (no change)
3. **Apex Bridge default delivery vehicle** — **Additions 1, 2, 3** go here
4. **Wizard pattern** — **Addition 4** as new subsection
5. **Modal management** — **Addition 5** as new subsection
6. **Micro-charts** — **Addition 6** as new subsection
7. **Bradley rail visibly distinct** (no change)
8. **Multi-page prototypes** — **Addition 7** replaces existing pattern paragraph
9. **Fidelity banner** — **Addition 8** replaces existing mention
10. (Optional) **`<apx-council>` component** — **Addition 9** as new subsection in Step 6
11. Step 6 (Council) — no change to the 44-voice/owensing/cross-talk content
12. Step 7 (Handoff) — no change

Estimated total addition: ~250 lines to SKILL.md. The skill grows from 769 → ~1,000 lines. That's the right size for a hi-fi-capable skill.

---

## What you might want to leave out

Some patterns in acp-v1 are project-specific to the ACP V1 prototype and probably should not become skill-level standards:

- **Step-trace accordion** — specific to the Coworker execution trace UI; might not generalize.
- **Runbook editor multi-pane layout** — specific to runbook content + workflow; might be an over-fit.
- **Activation modal with warning state** — could generalize, could be over-spec'd.

You'll know better. If they generalize, document. If they're one-offs, leave them in acp-v1 as reference but not as skill-level patterns.

---

**Lucy holds the clipboard.** Each addition is a claim that this pattern is reusable. If you disagree with any claim, prune it. Skill discipline > skill completeness.
