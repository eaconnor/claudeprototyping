# Apex Bridge — POC / Delivery Sprint Overview
**Source:** https://n-able.atlassian.net/wiki/spaces/ProdUX/pages/61901308079/
**Author:** Bryce Wilson
**Last modified:** May 01, 2026
**Space:** ProdUX (UX Product)

---

## Scope

The Apex Bridge POC delivers a **non-destructive, zero-risk injection layer** that brings the full Apex Design Experience — themes, tokens, icons, illustrations, and interactive components — into the legacy N-central application without modifying a single line of the production codebase.

Achieves this via a Chrome Extension that intercepts page loads and injects:

1. **A CSS Token Bridge** — maps every hardcoded legacy colour, border, shadow, font-size to a live Apex CSS custom property (`--br-*`), enabling instant dark/light mode and brand theming across the entire N-central surface.
2. **A Design System Asset Layer** — replaces legacy PNG sprites with modern SVG icons from the Apex icon library, injects illustrations where appropriate.
3. **Standalone Web Components** — fully self-contained UI experiences (sidebar, product bar, tables, cards) built with vanilla JavaScript and Shadow DOM, consuming Apex tokens natively.

## What ships in this sprint

| Deliverable | Description |
| --- | --- |
| Token bridge (SCSS + LESS pipelines) | Complete colour/typography/spacing remap for N-central legacy pages |
| Dark mode | Full light ↔ dark toggle with no page reload |
| Icon remap system | 154+ legacy sprite → SVG replacements with automatic theme-aware inversion |
| Web component library | `apx-sidebar`, `apx-productbar`, `apx-table`, `apx-card`, `apx-badge`, `apx-pagination`, `apx-loader` |
| Chrome Extension (lean-less variant) | Production-ready extension that activates per-tenant, with settings panel |
| Design System output | Icons, illustrations, brand assets compiled and bundled |

## What it does NOT do

- Modify the N-central source code or deployment pipeline
- Require any backend changes or API modifications
- Introduce framework dependencies (no React, no Angular, no build toolchain)
- Break existing functionality — additive and toggle-able

## High-Level Technology

| Layer | Technology | Purpose |
| --- | --- | --- |
| Injection | Chrome Extension (Manifest V3) | Intercepts N-central pages, injects CSS and JS |
| Token Bridge | SCSS → CSS / LESS → CSS | Maps legacy hardcoded values to `--br-*` custom properties |
| Theming | CSS Custom Properties + `data-apx-mode` attribute | Dark/light mode, brand switching, density control |
| Components | Vanilla Web Components (Shadow DOM) | Framework-agnostic UI modules |
| Assets | SVG icons, CSS masks, inline data URIs | Resolution-independent, theme-reactive visuals |
| Build | Node.js scripts (no bundler) | Compile tokens, eject extension, generate icon remap |

**Deliberately dependency-free at runtime.** No React, no Angular, no Webpack. Extension loads plain CSS and plain JavaScript directly. Key technical decision that unlocks portability.

## Unlock potential

1. **Immediate:** Legacy N-central gets the Apex experience today — Apex theming, dark mode, modern iconography across all pages without rewrite.
2. **Near-term:** Web components as portable building blocks — wrap in Angular/React, use standalone in any HTML, share across products.
3. **Strategic:** Fast-track workflow redesigns without risk — new UX built as web components, validated in production via extension, promoted to core codebase when ready. Extension = staging ground for the future UI.
4. **Aligned with Mike Adler's Apex vision** — Bridge web components consume the same `--br-*` design tokens as the future Apex platform.
5. **Velocity:** Embedded N-zo components at pace — integrated as web components, tested live, graduated to production when ready.

## Transferability to Adlumin (and any future acquisition)

Token system (`--br-*`) defines an abstract design language, not N-central-specific colours. Repo already contains `bridge-adlumin.scss` mapping Adlumin's legacy CSS to the same token set. Same approach — Chrome Extension injection, token bridge, web component overlay — could deliver Apex experience into Adlumin console with minimal additional effort. **Marginal cost: days, not sprints.**
