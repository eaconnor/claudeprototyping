---
scope: "harness-ebr-v2 prototype only — not a project-wide design system doc"
design_system: "Apex 2.0 (N-able) — NOT Apex v1, NOT Band Protocol/Itten palette"
source: "Figma fileKey K9CTAzip5gwJmhOQpyfbvM, 'Apex 2.0 — Core', extracted 2026-08-13"
confirmed_by: "Beth, 2026-08-13 — 'apex is purple, believe 2.0 file'"
---

# Design Reference — Harness EBR v2 (Apex 2.0)

This resolves the build-blocking gap critic-pass-1.md flagged: the brief's original Apex instruction was four words ("no Itten palette") with zero operational content. This file is what Session B's build agent should follow instead.

**The repo already contains a different, fully-cataloged token set for Apex v1** (`acp-core-main-3/.claude/skills/apex-design-system/references/tokens.md`, 519 variables) where the brand accent is blue and the primary typeface is Open Sans. That is a different, older generation of the same design system. **Beth confirmed 2026-08-13: use Apex 2.0, and Apex 2.0's brand is purple.** Do not use the v1 blue tokens for this build.

## Brand / Accent Colors

| Token | Value | Confidence |
|---|---|---|
| `border/container/active` | **`#8500cc`** | [VERIFIED] — get_variable_defs, node 23635:75103; independently confirmed by pixel-sampling |
| Hero/display background purple | ~`#a90aff` | [OBSERVED] — sampled, no token name resolved |
| Logo gradient light endpoint | ~`#c046ff` | [OBSERVED] — sampled from header |

No single canonical Foundations/Color swatch page exists in the Apex 2.0 file — brand purple was recovered by extraction and pixel-sampling, not read off a labeled palette. Treat `#8500cc` as the confirmed accent; treat the other two as directional, not exact.

## Semantic Status Colors

| Status | Value | Confidence |
|---|---|---|
| Success text | ~`#1a8c4c` | [OBSERVED] |
| Success-subtle fill | ~`#e8f7ed` | [OBSERVED] |
| Error/critical text | ~`#d93333` | [OBSERVED] |
| Neutral border (down state) | `#5c5c66` | [VERIFIED] — `border/status/default/down` |
| Warning, info | not found | — |

## Surface / Container Hierarchy

| Token | Value | Confidence |
|---|---|---|
| `surface/container/default` | `#ffffff` | [VERIFIED] |
| `surface/status/default/subtle/hover` | `#fafafa` | [VERIFIED] |
| `content/default/heading` | `#18191a` | [VERIFIED] |

No distinct "app background" vs. "card surface" vs. "elevated surface" token tier was found in the 2.0 file (that concept exists in the separate v1 set — do not borrow it across generations).

## Typography — [WOBBLY]: three families registered, boundaries unclear

- `fonts/context/brand` = **Manrope** [VERIFIED] — used for hero/display headings (confirmed on the Typeface/Manrope specimen page, weights Regular/Medium/SemiBold/Bold).
- A header component instance separately resolves brand family to **Inter** [VERIFIED] — conflicts with the above; likely a different mode/context binding under the same semantic token name.
- Component spec sheets (Chip, Checkbox) state default type as **"Inter Semi Bold · 12px"** and **"Inter Regular · 14px"** [OBSERVED] — Inter is the more likely actual UI/component text face.
- `typeface/open-sans/style/name` = Open Sans is also a registered typeface [VERIFIED] but no usage was located.

**Recommendation for this build:** Manrope for hero/section headings, Inter for all component/body/UI text. Do not use Open Sans unless a specific component spec sheet calls for it.

| Token | Value | Confidence |
|---|---|---|
| `font/heading/h2/size` | 36 | [VERIFIED] |
| `font/heading/h3/size` / line-height / letter-spacing | 30 / 44 / -0.02 | [VERIFIED] |
| `font/heading/h4/size` | 24 | [VERIFIED] |
| h5 (`type/base/size`) | 14, weight 600, letter-spacing -0.02 | [VERIFIED] |
| Hero-1 (h1-equivalent) size / line-height | 42 / 64 | [VERIFIED] |
| Hero-4 size / line-height | 24 / 32 | [VERIFIED] |
| Base body size / line-height | 14 / 20 | [VERIFIED] |
| `font/brand/small` line-height | 32 | [VERIFIED] (size token not resolved) |

No h1 (non-hero), h6, body-small/large, or caption tokens surfaced. No monospace typeface found in the 2.0 file (v1 has `apx-font-jetBrains-mono` / `apx-font-source-code-pro` — different collection, do not borrow).

## Border Radius Scale — [OBSERVED, screenshot]

| Name | Px |
|---|---|
| none | 0 |
| small | 2 |
| base | 4 |
| large | 8 |
| x-large | 16 (matches `border/rounding/xl`=16 [VERIFIED]) |
| 2x-large | 24 |
| full | 999 |

## Border Width — [OBSERVED]

none = 0, x-small = 0.25px, small = 0.5px, base = 1px. (A second labeled "x-large 16px" row in the source frame looks like a documentation artifact/typo — flagged, not used.)

## Shadow / Elevation — [OBSERVED, names only]

x-large, large, medium, small, x-small, inner, focus. No hex/alpha values recovered. Focus ring renders light blue, not purple — possibly deliberate accessibility exception.

## Spacing — [VERIFIED]

`space/xs`=8, `space/sm`=12, `space/lg`=20, `space/2xl`=32, `space/3xl`=40, `space/4xl`=48. No `space/md` or `space/xl` resolved — gap, not confirmed absent.

## Dark Mode / Theme

**Not found.** Apex components expose a Theme dropdown (Light/Dark/High Contrast) per the library's own onboarding docs, but resolving dark-mode values requires a live component selection in the Figma desktop app, which remote MCP access can't drive. Named as inaccessible, not guessed. If Session B needs a dark mode, treat it as unspecified rather than inventing values.

## Component References (screenshots, short-lived URLs — re-fetch if expired)

- Docs header (brand lockup + purple accent bar)
- Border/Rounding swatch sheet
- Border/Width swatch sheet
- Typeface/Manrope specimen (purple hero block)
- Effects/Shadow swatch sheet
- Chip component doc (full anatomy/variants/props/measurements/do-don't)
- Checkbox component doc (same structure)

Local high-res crops saved during extraction: `/private/tmp/claude-501/-Users-elizabeth-Desktop-Bethproto/5f5e3f4b-f7a4-4045-8f87-492aaf353fc9/scratchpad/figma/` (`header.png`, `rounding2.png`, `width2.png`, `crop_type_specimen.png`, `chip_full.png`, `filter_full.png`, `shadow2.png`) — these are session-scratchpad, not permanent; copy anything needed into this prototype folder before the scratchpad is cleared.

## Not found / inaccessible

- Dedicated Foundations/Color palette page — doesn't exist in Apex 2.0's three top-level pages (Getting Started, Icons, Doc Templates).
- Full semantic status hex values (warning, info).
- Dark mode / High Contrast values.
- Complete typography scale (h1 non-hero, h6, body-small/large, caption).
- Icons page was not catalogued (too large for this pass — not needed for this prototype's fidelity level).
