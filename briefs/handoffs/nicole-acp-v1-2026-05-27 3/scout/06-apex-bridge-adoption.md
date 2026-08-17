# APEX Adoption Proposal (2026.4 Time-boxed Trial)
**Source:** https://n-able.atlassian.net/wiki/spaces/NCEN/pages/61924213046/
**Author:** Arnold German
**Last modified:** May 07, 2026
**Project Champion:** Patrick Cavanaugh
**Project Team:** Bryce Wilson (Arch SME & Token Scotsman), N-central Core Team 4

---

## What is APEX Bridge

**Definition:** APEX Bridge (Apex Design Experience) is a non-destructive injection layer that brings modern theming, dark mode, design tokens, SVG icons, and self-contained web components to legacy N-central pages. **CSS-first system backed by vanilla JavaScript web components — no frameworks, no dependencies, no build toolchain at runtime.**

**Does:**
- Remap all legacy hardcoded colours, borders, shadows to live CSS custom properties (`--br-*`)
- Instant dark/light mode toggle
- Replace 154+ PNG sprite icons with inline SVG
- Render modern web components (sidebar, product bar, tables, cards) alongside legacy UI
- Brand theming via token swap

**Does not:**
- Modify N-central source code
- Require backend changes
- Introduce React, Angular, or any framework dependency
- Change application logic, routing, or data flow
- Break existing functionality

## How APEX Works (Conceptual)

APEX compiles Apex design system tokens (from Figma) into CSS custom properties (`--br-*`). A bridge CSS layer targets every legacy selector in N-central and replaces hardcoded values with token references. A second CSS layer replaces PNG sprite icons with inline SVG data URIs. Web components (vanilla JS + Shadow DOM) are registered and mounted alongside legacy containers.

**A single HTML attribute (`data-apx-mode="dark"`) switches the entire surface between light and dark — no page reload, no JavaScript loop, under 16ms.**

## Token system

- ~30 semantic tokens (centralised from 2,400 unique hardcoded colour values in legacy codebase)
- Tokens follow `--br-*` naming convention
- Light/dark variants resolved natively by CSS cascade
- Theme preference stored server-side (user setting)
- No JavaScript loop needed for theme switching

## Web components shipped

| Component | Purpose |
|---|---|
| `apx-sidebar` | Modern navigation sidebar |
| `apx-productbar` | Top product bar |
| `apx-table` | Modern data table |
| `apx-card` | Card layout primitive |
| `apx-badge` | Status/state badges |
| `apx-pagination` | Pagination control |
| `apx-loader` | Loading indicator |

Built with **vanilla Web Components + Shadow DOM** — fully style-isolated. Communicate via standard `CustomEvent` dispatch. Framework-agnostic (W3C standard).

## Icon system

- 154+ legacy PNG sprites replaced with inline SVG data URIs
- Single colour → theme-reactive (inherit `currentColor`)
- ~12 KB gzipped (down from 500 KB)
- Zero HTTP requests
- Resolution-independent

## Performance budget

- Total CSS addition < 50 KB gzipped (< 31 KB measured)
- Theme toggle < 16ms (single frame)
- < 5ms parse time on M1, < 12ms on low-end hardware
- Zero layout shifts (CLS = 0)
- Web components lazy-load
- No measurable LCP increase

## Sprint scope (in/out)

### In scope (2-week sprint)
1. Embed `bridge-tokens.css` (custom property definitions) into N-central's global CSS bundle
2. Wire `data-apx-mode` attribute to user preference (server-side persistence)
3. Theme toggle in User Settings → Appearance (Light / Dark / System)
4. Include compiled bridge CSS (`bridge-full.css` + `bridge-less.css`) in page head
5. Dark mode QA pass across critical pages
6. Feature flag system (global / tenant / group / user levels)
7. Icon remap CSS behind `apex.icons.modern` flag
8. Web component sidebar registration + mount behind `apex.nav.modern` flag
9. Web component product bar registration + mount behind `apex.productbar` flag
10. Runtime flag toggle capability (no page reload)
11. Integration tests for flag combinations
12. Engineering documentation

### Out of scope
- Modifications to N-central's Java backend
- Changes to routing, authentication, or API layer
- Full Angular or Dojo migration
- Mobile / responsive layout changes
- Adlumin integration (infra ready, activation is separate decision)
- Customer-facing settings panel beyond theme toggle
- Telemetry / analytics integration
- Accessibility audit (follow-on)

## Rollback strategy

- **Dark mode:** Toggle `data-apx-mode` attribute off — instant revert, CSS cascade handles it
- **Feature-flagged enhancements:** Toggle flag off per user/tenant/globally — asset stops loading, legacy UI reappears
- **Full rollback:** Remove bridge CSS from page bundle — zero residual impact
- No database migrations, no backend changes to undo

## Recommendation

**Proceed with gated inclusion in 2026.4.** Dark mode as user-controlled preference (GA). All other enhancements behind feature flags (internal/beta only). 2-week sprint unlocks 12-month compounding return: progressive library removal (~1.7 MB client assets), 85% CSS complexity reduction, framework-agnostic component library, AI-accelerated delivery pipeline.

---

## Notes for ACP V1 prototype

The Apex Bridge is the **natural delivery vehicle** for an ACP V1 prototype:

1. ACP can be rendered as Apex Bridge web components (`apx-sidebar` for nav, `apx-table` for executions/coworkers lists, `apx-card` for KPI tiles, `apx-badge` for trust levels).
2. The `--br-*` token contract means the prototype uses the same design language as N-central's future Apex platform.
3. `data-apx-mode="dark"` gives dark mode for free.
4. The prototype can be staged via Chrome Extension overlay in N-central (per the Bridge thesis), or stood up as a standalone HTML surface that loads the same bridge CSS — same components, same tokens, same brand.
5. This validates the ACP prototype against the Bridge unlock: "designed to graduate to production behind a flag."
