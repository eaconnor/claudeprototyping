# Apex Bridge Token Contract — Gray Scale & Design System
**Source:** `/Users/elizabeth/Desktop/Bethproto/.claude/agents/build.md`
**Extraction date:** 2026-06-02
**Confidence:** [CS: VERIFIED] — Local artifact, source of truth for prototype design system

---

## Gray scale (dark mode)

```css
:root {
  /* ===== canvas ===== */
  --bg-app: #0b1220;       /* main app canvas — dark blue-gray */
  --bg-surface: #121b2e;   /* cards, panels — lighter blue-gray */
  --bg-elevated: #182238;  /* hover, raised — elevated surface */
  --bg-deep: #070d18;      /* wells, insets — deepest background */
  --border: #1f2c47;       /* standard borders — muted blue-gray */
  --border-strong: #2a3a5c; /* emphasized borders */

  /* ===== text ===== */
  --text-primary: #e6edf7;   /* primary text — near-white with blue tint */
  --text-secondary: #9aa8c2; /* secondary text — mid-tone gray */
  --text-tertiary: #6b7a96;  /* tertiary text — muted gray */
  --text-muted: #4b5772;     /* muted/disabled text */
}
```

## Gray scale (light mode)

```css
[data-theme="light"] {
  --bg-app: #f4f6fb;       /* main app canvas — very light blue-gray */
  --bg-surface: #ffffff;   /* cards, panels — pure white */
  --bg-elevated: #eef1f8;  /* hover, raised — light blue-gray */
  --bg-deep: #e6eaf3;      /* wells, insets — slightly darker than elevated */
  --border: #d8deeb;       /* standard borders — light gray-blue */
  --border-strong: #c3ccdd; /* emphasized borders */

  --text-primary: #0d1424;   /* primary text — near-black with blue tint */
  --text-secondary: #45506b; /* secondary text — dark gray-blue */
  --text-tertiary: #6b7790;  /* tertiary text — mid-tone gray */
  --text-muted: #94a0b8;     /* muted/disabled text */
}
```

## Brand color (Adlumin blue)

```css
--brand: #3b82f6;        /* primary brand blue */
--brand-strong: #2563eb; /* stronger/darker brand blue */
--brand-soft: rgba(59,130,246,0.14); /* soft blue background wash */
```

## Status colors

```css
--critical: #ef4444;  --critical-soft: rgba(239,68,68,0.13);
--high: #f97316;      --high-soft: rgba(249,115,22,0.13);
--medium: #eab308;    --medium-soft: rgba(234,179,8,0.12);
--low: #22c55e;       --low-soft: rgba(34,197,94,0.12);
```

## Bradley / council accent (violet)

```css
--alpha-accent: #a78bfa;  /* violet accent for council/reflection surfaces */
--alpha-soft: rgba(167,139,250,0.13); /* soft violet wash */
```

## Distinct surfaces — topbar + Bradley rail

```css
--topbar-bg: #0a1730;          /* brand-blue cast, darker than app */
--topbar-border: var(--brand); /* 2px brand line under topbar */
--rail-bg: #16112e;            /* violet-tinted — visibly NOT the app */
--rail-border: var(--alpha-accent);  /* 4px solid left border */
```

Light mode topbar stays dark:
```css
[data-theme="light"] {
  --topbar-bg: #0a1730;  /* keep topbar dark + branded in both modes */
  --rail-bg: #f0eafa;    /* violet-tinted light surface */
}
```

## Shape + typography

```css
--radius-sm: 4px;
--radius-md: 6px;
--radius-lg: 8px;

--font-ui: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
--font-mono: 'JetBrains Mono', ui-monospace, monospace;
```

## Design notes

**Aesthetic:** Clean security-product SaaS (Adlumin), dense but legible, dark-first.

**Surface hierarchy:** Elevation is signaled by lightness in dark mode, not shadow depth. As surfaces elevate, they get lighter and tinted toward brand blue.

**Contrast:** The reviewer must tell the topbar, app canvas, and Bradley rail apart at a glance. Three distinct surfaces with visually different backgrounds.

**Typography:** Inter for UI/body, JetBrains Mono for headers/labels/code/metrics. Load both via Google Fonts CDN.

**Rounded corners:** Use `--radius-*` variables. Soft shadows only — no Bauhaus hard offset shadows.

**This is NOT the Band's Bauhaus palette.** The Bauhaus/Itten colors (vermillion, ochre, Kalam, no-rounded-corners) are the Band Protocol's own brand identity and never appear in customer-facing prototypes.
