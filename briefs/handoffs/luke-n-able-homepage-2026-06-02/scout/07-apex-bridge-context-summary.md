# Apex Bridge Context Summary — For Homepage Prototype
**Source:** Local artifacts (04-apex-bridge-poc.md, 05-apex-bridge-unlock.md, 06-apex-bridge-adoption.md)
**Extraction date:** 2026-06-02
**Confidence:** [CS: VERIFIED] — Local Confluence export documents

---

## What Apex Bridge is

Apex Bridge is a **non-destructive, zero-risk injection layer** that brings the full Apex Design Experience — themes, tokens, icons, illustrations, and interactive components — into legacy N-central application without modifying production codebase. [CS: VERIFIED]

Delivered via Chrome Extension that injects:
1. **CSS Token Bridge** — maps legacy hardcoded values to live Apex CSS custom properties (`--br-*`)
2. **Design System Asset Layer** — replaces PNG sprites with modern SVG icons
3. **Standalone Web Components** — fully self-contained UI (sidebar, product bar, tables, cards) built with vanilla JavaScript and Shadow DOM

[CS: VERIFIED — from POC doc]

## What it does NOT do

- Modify N-central source code or deployment pipeline
- Require backend changes or API modifications
- Introduce framework dependencies (no React, no Angular, no build toolchain)
- Break existing functionality — additive and toggle-able

[CS: VERIFIED]

## Technology stack

| Layer | Technology | Purpose |
|---|---|---|
| Injection | Chrome Extension (Manifest V3) | Intercepts N-central pages, injects CSS/JS |
| Token Bridge | SCSS → CSS / LESS → CSS | Maps legacy values to `--br-*` tokens |
| Theming | CSS Custom Properties + `data-apx-mode` | Dark/light mode, brand switching |
| Components | Vanilla Web Components (Shadow DOM) | Framework-agnostic UI modules |
| Assets | SVG icons, CSS masks, inline data URIs | Resolution-independent, theme-reactive |
| Build | Node.js scripts (no bundler) | Compile tokens, eject extension, generate icon remap |

[CS: VERIFIED]

**Deliberately dependency-free at runtime.** No React, no Angular, no Webpack. Extension loads plain CSS and plain JavaScript directly. [CS: VERIFIED]

## Unlock potential

1. **Immediate:** Legacy N-central gets Apex experience today — theming, dark mode, modern iconography without rewrite
2. **Near-term:** Web components as portable building blocks — wrap in Angular/React, use standalone in any HTML
3. **Strategic:** Fast-track workflow redesigns without risk — new UX built as web components, validated in production via extension, promoted to core when ready
4. **Aligned with Mike Adler's Apex vision:** Bridge web components consume same `--br-*` tokens as future Apex platform
5. **Velocity:** Embedded N-zo components at pace — integrated as web components, tested live, graduated to production when ready

[CS: VERIFIED — from unlock doc]

## Transferability to Adlumin (and any future acquisition)

Token system (`--br-*`) defines an abstract design language, not N-central-specific colors. Repo already contains `bridge-adlumin.scss` mapping Adlumin's legacy CSS to same token set. Same approach — Chrome Extension injection, token bridge, web component overlay — could deliver Apex experience into Adlumin console with minimal additional effort. **Marginal cost: days, not sprints.** [CS: VERIFIED]

## Cost comparison (framework migration)

| Approach | Cost per component per framework migration |
|---|---|
| Framework-native rebuild | 2–4 weeks engineering per component |
| Web component wrapper | 2–4 hours per component |

For 10 components across 2 framework migrations:
- Traditional: 40–80 weeks
- Web components: 40–80 hours

[CS: VERIFIED — from unlock doc]

## 2026.4 adoption proposal

**Scope:** 2-week sprint to embed `bridge-tokens.css` into N-central global CSS, wire `data-apx-mode` to user preference (server-side persistence), add theme toggle in User Settings, include compiled bridge CSS in page head, dark mode QA pass, feature flag system (global/tenant/group/user), icon remap + web component registration behind flags. [CS: VERIFIED — from adoption doc]

**Out of scope:** Backend modifications, routing/auth changes, full Angular/Dojo migration, mobile/responsive changes, Adlumin integration, telemetry, accessibility audit (follow-on). [CS: VERIFIED]

## Notes for homepage prototype

The **Apex Bridge is the natural delivery vehicle** for an n-able public homepage prototype:
1. Prototype can be rendered as Apex Bridge web components (sidebar, tables, cards, badges)
2. `--br-*` token contract means prototype uses same design language as N-central's future Apex platform
3. `data-apx-mode="dark"` gives dark mode for free
4. Prototype can be staged via Chrome Extension overlay in N-central, or stood up as standalone HTML that loads same bridge CSS
5. Validates the Bridge unlock thesis: "designed to graduate to production behind a flag"

[CS: VERIFIED — from adoption doc, ACP V1 notes]
