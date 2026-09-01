# Component Inventory — acp-v1 patterns the skill should absorb

**Source:** `prototypes/acp-v1/index.html` (2026-05-27, 4,675 lines).
**Target:** `.claude/skills/prototype/SKILL.md`.
**Frame:** these are patterns you built that the skill references as a destination but does not yet document as standards.

---

## 1 · ICON catalog (lines 1264-1292)

```js
const ICON = {
  dashboard: '<svg width="16" height="16" ...',
  coworkers: '<svg ...',
  // ... 25+ icons
};
```

**Why it works:** declared once, used everywhere via template literals (`${ICON.plus}`). Stroke-based, consistent 16px or 14px or 12px sizes per use site. `stroke="currentColor"` so they pick up text color via CSS cascade.

**Skill should document:**
- ICON catalog is a required asset for hi-fi prototypes.
- Recommended source: lucide.dev (matches your style — 2px stroke, rounded line-cap/join).
- Sizes: 16px default, 14px in dense rows, 12px in tile-meta or status indicators.
- `stroke="currentColor"` always; never hardcode color.

**Catalogue in your set (for reference):**
`dashboard · coworkers · executions · runbooks · experts · mcp · metering · ledger · settings · sun · moon · monitor · search · bell · chevR · back · close · check · x · pause · warning · plus · toolWrench · cpu · terminal · shield · branch`

---

## 2 · `<apx-sidebar>` (lines 1300-1442)

**Pattern:**
- Custom element with Shadow DOM
- Internal `items` array — `{ view, label, icon }`
- Grouped into sections: Operate (3) · Build (3) · Govern (3)
- Buttons emit `apx-navigate` CustomEvent with `{ view }` detail
- External `setActive(view)` method to mark current page
- Brand block at top, foot text at bottom

**Slots / API:**
- No slots; data is hardcoded in the component (today). Skill could spec a `<slot>` for items so each prototype can configure.
- Method: `setActive(view: string)`
- Event: `apx-navigate` (bubbles, composed)

**Skill should document:**
- `<apx-sidebar>` is the canonical hi-fi navigation surface.
- 248px wide, grouped sections.
- Emits navigation events; consumer (`setView`) handles routing.

---

## 3 · `<apx-productbar>` (lines 1444-1524)

**Pattern:**
- 56px tall, full-width across main area
- Left: breadcrumb (root crumb + current crumb)
- Right: actions slot (search, mode toggle, notifications, user chip)
- Updates on every `setView` via external `renderProductbar(name)`

**Slots / API:**
- Today: rendered via external function that writes innerHTML.
- Skill should spec a `<slot name="crumbs">` and `<slot name="actions">` so it composes cleanly.

**Skill should document:**
- Required for hi-fi prototypes.
- Breadcrumb format: `Root / Page · sub`.
- Right-side actions area handles search input + mode toggle + bell + user avatar.

---

## 4 · `<apx-card>` (lines 1526-1577)

**Pattern:**
- Container with: header bar (slotted title + aside) + body
- Slots: `header-title` (h3), `header-aside` (link or button), default slot for body
- Tokens for border, radius, padding
- Hover state subtle

**API:**
- Slots: `header-title`, `header-aside`, (default)

**Skill should document:**
- Default container component for hi-fi sections.
- The Bradley rail's own card blocks (math, council, dual, routed) should arguably be `apx-card` variants in hi-fi.

---

## 5 · `<apx-badge>` (lines 1579-1629)

**Pattern:**
- Attribute: `variant` — `brand` · `success` · `warning` · `danger` · `info` · `neutral`
- Optional `dot` attribute to render a leading dot
- Use cases: status indicators, trust levels, environment tags

**Skill should document:**
- Required for hi-fi.
- Trust ladder uses `apx-badge variant="success" dot` for L3, `variant="warning" dot` for L2, etc.

---

## 6 · `<apx-table>` (lines 1631-1661)

**Pattern:**
- Wraps a `<table class="t">` with proper token styling
- Slot for custom cells (e.g., embedded buttons, trust badges)
- Hover row state, clickable row state (`tr.clickable`)

**Skill should document:**
- Required for data-dense hi-fi pages (Coworkers list, Executions log, Runbooks).
- Defines the canonical table rhythm (10/12px header, 12/14px body, 1px subtle borders).

---

## 7 · `<apx-loader>` (lines 1663-1695)

**Pattern:**
- Inline loading state, sized via attribute
- Spinner SVG with brand-primary tint
- Optional label slot

**Skill should document:**
- Required for any hi-fi prototype that simulates async behavior.
- Lo-fi prototypes can skip; hi-fi cannot.

---

## 8 · ModeManager (lines 1701+)

**Pattern:**
- 3-way preference: `light` · `dark` · `system`
- Persists to localStorage
- Applies via `data-apx-mode` attribute on `<html>`
- Reacts to `prefers-color-scheme` media query when in system mode
- Renders a 3-button toggle in the productbar (light / dark / system, each with icon)

**The skill currently documents 2-way toggle only.** Update to 3-way.

**Skill should document:**
- 3-button mode toggle (`light` · `dark` · `system`) in the productbar right area.
- localStorage key (e.g., `apx-mode-pref`).
- System mode listens to `matchMedia('(prefers-color-scheme: dark)')`.
- Apply on load before first paint (`ModeManager.apply()` early).

---

## 9 · 5-step wizard (lines 2244-2410)

**Pattern (Coworker creation):**

```
Step 1 · Identity        (name, description)
Step 2 · Experts         (multi-select from catalog)
Step 3 · Runbook         (link to existing or create new)
Step 4 · Tools           (MCP servers, scoped permissions)
Step 5 · Trust & Trigger (initial trust level, schedule/event)
```

**UI:**
- Stepper at top: `① Identity · ② Experts · ③ Runbook · ④ Tools · ⑤ Trust & Trigger`
- Each step has an `active` or `done` state
- `.wizard-pane` divs, one per step; only the active pane is visible
- Footer with `Back` / `Next` / `Create` buttons
- Final step triggers "create" action, closes modal, navigates to detail page

**Skill should document:**
- Wizard pattern is the canonical hi-fi way to expose any multi-decision creation flow.
- Steps named, not numbered-only (numbers + named).
- Active/done/pending states visually distinct.
- Wizard panes are full-modal-width; do not split-pane unless the task genuinely requires side context.
- Final step does the commit, then routes the user to the thing they just made.

---

## 10 · Modal management

**Pattern (lines throughout):**
- `openModal(content)` mounts to `.modal-mount` and adds `.open` class
- `closeModal()` removes `.open` class
- Modal markup is a `.modal` div inside `.modal-mount` (full-screen overlay)
- Modal variants: default (540px), `.modal.wide` (720px)
- Header / body / footer split with subtle dividers
- Backdrop click closes

**Skill should document:**
- `openModal` / `closeModal` is the canonical hi-fi modal control.
- Variants: default, wide; warning state for destructive actions.
- ESC key closes; backdrop click closes.
- Use modals for: wizards, editors (runbook, MCP), activation flows, confirmation dialogs.

**Specific modal patterns in acp-v1:**
- Coworker wizard (5-step)
- Runbook editor (multi-pane: meta + content + workflow)
- MCP server modal (add new MCP)
- Activation modal (with warning state for risky promotions)

---

## 11 · `miniBarChart` SVG utility (lines 2036-2060)

**Pattern:**

```js
function miniBarChart(values, labels) {
  const w = 480, h = 160, pad = 24;
  const max = Math.max(...values);
  // ... SVG generation
  return `<svg width="${w}" height="${h}">...</svg>`;
}
```

**Use case:** Value Ledger trend display (hours saved per month, last 6 months).

**Skill should document:**
- Micro-chart utility for inline trend display.
- Pure SVG, no library.
- Variants needed: `miniBarChart`, `miniSparkline`, `miniDonut` (for trust ladder distribution).
- Tokens for fill/stroke (`var(--br-color-brand-primary)` etc.) so dark mode works free.

---

## 12 · Page-as-function pattern (lines 1963, 2061, 2473, 2599, 2662, 2818, etc.)

**Pattern:**

```js
const views = {};

views.dashboard = () => {
  const wrap = el('div');
  wrap.appendChild(el('div', { class: 'page-head', html: '...' }));
  // ... compose DOM
  return wrap;
};

function setView(name) {
  const f = views[name] || views.dashboard;
  document.querySelector('apx-sidebar').setActive(name);
  renderProductbar(name);
  const main = $('#main');
  main.innerHTML = '';
  main.appendChild(f());
}
```

**Advantages over show/hide:**
- Only one page in DOM at a time
- Pages can use shared helpers (`el()`, template strings)
- Easier to compose with components
- Cross-page links work via `data-go="viewname"` + delegated handler

**Skill should document:**
- For hi-fi prototypes, page-as-function is the canonical pattern.
- For lo-fi, show/hide stays (simpler, no JS templating cost).
- The `setView(name)` function handles: sidebar active state, productbar update, main swap, scroll reset.

---

## 13 · `data-go` cross-page links

**Pattern:**
- Any anchor or button with `data-go="viewname"` triggers a page navigation.
- Delegated handler in each view: `wrap.querySelectorAll('[data-go]').forEach(a => a.addEventListener('click', e => { e.preventDefault(); setView(a.dataset.go); }))`.

**Use case:** Feed row links to executions, "open ledger" link on dashboard, "view all executions" links.

**Skill should document:**
- Standard cross-page link pattern.
- Avoids hard-coded `onclick`; works with any element.
- Delegated handler attached when the view mounts.

---

## 14 · Fidelity banner check matrix (lines 974-992)

**Pattern:**
- 6 check items: tokens · components · schema · a11y · production data · dark mode parity
- Each marked `× / ~ / ✓`
- Color-coded (red / amber / green) via the mark element
- Tier indicator: 3 pips, filled per tier (1/3, 2/3, 3/3)

**Skill should document:**
- The fidelity banner is a diagnostic, not just a label.
- The check matrix is required for hi-fi prototypes (lo-fi can use a simpler version).
- Naming the gaps visibly is part of the protocol — fidelity is a claim, not a feeling.

---

## What you also did that I didn't list

Spot-check on patterns I may have missed (you'll know):

- KPI tile with delta indicator (`grid-4`)
- Activity feed with row icons + meta + timestamp
- Ledger drill-in
- Stepper component (reused outside wizard?)
- Filter bar pattern
- Tile grid for Experts
- Layer rows for Metering & Chargeback

If any of these are reusable patterns rather than one-offs, add them to the skill too.

---

## Summary table

| # | Pattern | Skill action |
|---|---|---|
| 1 | ICON catalog | Document as required asset |
| 2 | `<apx-sidebar>` | Spec contract (events, methods) |
| 3 | `<apx-productbar>` | Spec slots + crumb pattern |
| 4 | `<apx-card>` | Spec slots (header-title, header-aside) |
| 5 | `<apx-badge>` | Spec variants |
| 6 | `<apx-table>` | Spec rhythm + clickable-row state |
| 7 | `<apx-loader>` | Spec sizing + label slot |
| 8 | ModeManager (3-way) | Upgrade from 2-way |
| 9 | 5-step wizard | Document as canonical multi-step creation flow |
| 10 | Modal management | Spec openModal/closeModal + variants |
| 11 | `miniBarChart` | Document micro-chart utilities |
| 12 | Page-as-function | Document as hi-fi canonical (lo-fi stays show/hide) |
| 13 | `data-go` links | Document cross-page nav pattern |
| 14 | Fidelity banner matrix | Document required check items |

Each row is roughly one paragraph in SKILL.md. See [SKILL-DIFF.md](SKILL-DIFF.md) for drafted additions.
