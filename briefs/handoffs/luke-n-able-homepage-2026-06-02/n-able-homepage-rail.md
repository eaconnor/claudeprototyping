# Bradley Rail — n-able Homepage (Portable Markdown)

**Project:** n-able Homepage — Gray-Led Aesthetic  
**Tier:** 1 · Concept (30% fidelity)  
**Date:** 2026-06-02

This is the Bradley rail extracted from `n-able-homepage.html` as portable markdown. If you can't view the HTML prototype, read this instead.

---

## Readiness Badge

**Tier 1 · Concept**

---

## What's Testing

This prototype tests whether a gray-led palette (vs. saturated brand colors) increases perceived enterprise credibility and CTA prominence for MSP decision-makers.

---

## Fidelity Checks (6 of 30)

| Check | Status | Notes |
|-------|--------|-------|
| **Real copy** | ✓ | Real n-able product messaging (N-central, MDR powered by Adlumin, Cove) |
| **Seed data** | ~ | Fictional MSP names and testimonials — Pete Hegseth test passed |
| **Core interaction** | ✓ | Mode toggle (light/dark/system) functional |
| **Full workflow** | × | Homepage only — no nav to product pages, pricing, or demo request flow |
| **Visual hierarchy** | ✓ | Type scale (48px hero, 36px sections, 22px cards) + elevation tokens applied |
| **Production ready** | × | Concept tier — no backend, no analytics, no A/B test integration |

**Progress:** 1 of 3 pips filled (Tier 1 of 3)

---

## What You Nailed

- **Gray-led palette with systematic Apex Bridge tokens** — No ad-hoc grays. `:root` block with canonical Apex tokens. Light and dark modes both defined.
- **Elevation hierarchy** — Shadow tokens create depth without color saturation. Cards lift on hover (`--shadow-md`). Three distinct surfaces (topbar, app canvas, Bradley rail).
- **Mode toggle (light/dark/system) functional** — 3-way toggle persists to `apx-mode-pref`, listens for OS changes when in system mode.
- **Real n-able product messaging** — N-central (RMM), MDR powered by Adlumin (security), Cove Data Protection (backup). "Expert behind the expert" positioning implied but not explicit in copy.
- **Fictional seed data** — FalconShield MSP, Summit IT Partners, Cascade Cyber. Marcus Chen, Sarah Patel, David Larson. Pete Hegseth test passed (no real company names, no private data).

---

## What Will Hurt You

- **No problem statement:** "Why gray?" unanswered beyond Beth's direction [?]. No evidence the homepage needs to change. No metric baseline (conversion, bounce, time-on-page all unknown).
- **No customer research:** What visual tone do MSPs respond to? Does gray signal enterprise credibility or "unfinished wireframe"? [?]
- **No brand guidelines verification:** Is gray permissible in n-able's identity system? Does n-able's brand equity depend on saturated blue/red? [?]
- **No metric baseline:** Current homepage conversion rate, demo request rate, bounce rate, time-on-page all unknown [?]. Can't measure A/B test lift without baseline.
- **No A/B test plan:** How will this be validated? Who tests? What's the success threshold? [A — all test-plan claims are assumed, not scoped]
- **Gray may read as wireframe:** Without strong type scale + elevation, neutral palette can look unfinished. MSPs may interpret as "not ready for enterprise." Mitigation: prototype uses 48px hero, 36px section headers, shadow tokens on hover. But risk remains until tested with real users.
- **Brand erasure risk:** If n-able's equity is tied to saturated color (blue/red), gray dilutes recognition. New visitors won't know they're on n-able.com. No n-able logo in prototype — can't assess brand-erosion risk without it.

---

## Routed Cards

### PRODUCT

**Product does:** Define business case for gray-led palette

**Why now:** [A] Current homepage conversion rate unknown — no metric to optimize against

**If you ship without it:** A/B test results will be uninterpretable (no baseline to compare gray variant against)

**ROI:**
- **Business:** Unknown — no current conversion rate to compare gray-led variant against [?]
- **User:** Unknown — no research on what visual tone MSP decision-makers respond to [?]
- **Unknown:** What's the actual problem gray is solving? Why not saturated blue?

---

### DESIGN

**Design does:** Verify gray palette against n-able brand guidelines and competitive audit

**Why now:** [?] Brand equity risk unknown — gray may weaken recognition if n-able identity is color-anchored

**If you ship without it:** Prototype may test well but violate brand standards, forcing rebuild or strategic tension with marketing

**ROI:**
- **Business:** Unknown — no data on whether gray vs. saturated brand colors affects MSP trust or conversion [?]
- **User:** Unknown — no usability testing on whether gray reads as professional or unfinished [?]
- **Unknown:** Does gray increase CTA prominence (hypothesis) or flatten visual hierarchy?

---

### RESEARCH

**Research does:** Validate gray hypothesis with MSP decision-makers (A/B or qualitative)

**Why now:** [?] No evidence that gray increases enterprise credibility or CTA prominence — hypothesis untested

**If you ship without it:** Design direction based on aesthetic preference, not user need — risk of investing in wrong direction

**ROI:**
- **Business:** Unknown — no baseline conversion to measure lift [?]
- **User:** Unknown — no research on visual preferences or trust signals for MSP buyers [?]
- **Unknown:** What visual tone do MSPs associate with enterprise credibility? Is gray preferred, neutral, or off-brand?

---

### ENGINEERING

**Eng does:** Audit feasibility of gray palette in existing component library and CMS

**Why now:** [A] Assumed this is a CSS token swap, but may require component refactor if color semantics are hard-coded

**If you ship without it:** Design approved but unshippable without rework — timeline and budget blown

**ROI:**
- **Business:** Unknown — implementation cost depends on component architecture (days vs. weeks) [A]
- **User:** No direct user impact — this is delivery feasibility
- **Unknown:** Can gray palette be deployed incrementally (A/B test) or does it require full rebuild?

---

## Design System Compliance

**Tokens:** Apex Bridge canonical `:root` block. `--bg-app`, `--bg-surface`, `--bg-elevated`, `--brand`, `--alpha-accent` all present. No Itten palette (vermillion/ochre/ultramarine/violet) in main content. Band colors only in Bradley rail accent.

**Typography:** Inter (UI/body) + JetBrains Mono (headers/labels). Google Fonts loaded. Applied systematically.

**Shape:** `--radius-sm/md/lg` (4px/6px/8px). Applied to buttons, cards, toggles, rail badge. No Bauhaus hard corners.

**Shadows:** Soft shadows only (`--shadow-sm/md/lg` with rgba). No Bauhaus `6px 6px 0` hard offset.

**Three distinct surfaces:**
1. Topbar: `--topbar-bg` (dark in both modes) + 2px brand bottom-border
2. App canvas: `--bg-app`
3. Bradley rail: `--rail-bg` (violet-tinted) + 4px `--rail-border` left + inset glow

**Mode toggle:** 3-way (light/dark/system). Persists to `apx-mode-pref`. Listens for OS changes in system mode.

---

## Domain-Model Fidelity: 95%

**Expected entities from brief:**
- Hero Section → PRESENT (lines 682–689 in HTML)
- Product Card → PRESENT (lines 697–713: N-central, MDR, Cove)
- Customer Testimonial → PRESENT (lines 747–768: three fictional MSPs)
- CTA → PRESENT (lines 686–687, 776–779: Request Demo, Start Trial)
- Feature Section → PRESENT (lines 722–738: Security, Reliability, Partnership)

**Ubiquitous language check:**
- Brief says "MSP" → UI says "MSP" ✓
- Brief says "endpoint" → UI says "endpoints" ✓
- Brief says "enterprise-grade" → UI says "Enterprise-grade uptime" ✓
- Brief says "expert behind the expert" → NOT PRESENT in UI copy (minor gap)

**Entities in model with NO surface built:** NONE. All five entity types have corresponding UI.

**UI surfaces with NO domain-model trace:**
- Fidelity banner — Apex Bridge scaffolding (expected)
- Bradley rail — scaffolding (expected)
- Mode toggle — traced to "Mode Preference" value object + "Toggle Theme" service in domain model ✓

**Domain-model fidelity: 95%.** One ubiquitous-language term missing. All entities present.

---

## Accessibility (Not Verified)

**Risk:** Gray-on-gray requires careful contrast management to meet WCAG AA (4.5:1 for body text, 3:1 for large text). The prototype uses `--text-primary` on `--bg-app` and `--text-secondary` on `--bg-surface`, but actual contrast ratios are not calculated.

**Next step:** Run axe DevTools or Lighthouse accessibility audit before advancing to 60% schematic.

---

## Seed Data Notice

All customer names, company names, and testimonials are **fictional**:
- FalconShield MSP (fictional)
- Summit IT Partners (fictional)
- Cascade Cyber (fictional)
- Marcus Chen, Director of Operations (fictional)
- Sarah Patel, CEO (fictional)
- David Larson, CTO (fictional)

Pete Hegseth test passed: no real company names, no private data, no information that wouldn't be safe if public.

If this prototype is shared externally, it MUST be labeled "concept" or "example data." The fidelity banner and Bradley rail do this, but if the HTML is extracted without scaffolding, the risk resurfaces.

---

## What's Missing (Named Honestly)

1. **Problem statement:** Why does the homepage need to change? [MISSING from Gate 1]
2. **Customer research:** What do MSPs respond to visually? [?]
3. **Brand guidelines:** Is gray permissible? Does n-able have a defined palette? [?]
4. **Competitive analysis:** Kaseya, Datto, ConnectWise visual approaches [?]
5. **Metric baseline:** Current homepage conversion, bounce, time-on-page [?]
6. **Business case:** Why gray? What outcome does this serve? [?]
7. **Stakeholder context:** Who owns the homepage? Who approves palette changes? [?]
8. **Test plan:** How will this be validated? [A — test method assumed but not scoped]
9. **Accessibility verification:** WCAG AA contrast check [MISSING]
10. **n-able logo:** Not present in prototype — can't assess brand-erosion risk without it [MISSING]

---

## Next Step for Luke

Read **HANDOFF.md** for verified math, council tensions, and three calls Luke must make before advancing to 60% schematic tier.

---

**Bradley · Band Protocol pipeline gate · 2026-06-02**
