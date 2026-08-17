# Apex Bridge — Unlock Potential
**Source:** https://n-able.atlassian.net/wiki/spaces/ProdUX/pages/61900751068/
**Author:** Bryce Wilson
**Last modified:** May 01, 2026
**Space:** ProdUX

---

## Executive Summary

Apex Bridge is **not a cosmetic reskin**. It is an **infrastructure investment** that changes the economics of UI delivery across the N-able product portfolio. By decoupling the design experience from the application framework, it eliminates the single largest blocker to UX modernisation: the assumption that visual improvement requires application rewriting.

## Unlocks (summarized)

| # | Before Bridge | After Bridge |
|---|---|---|
| 1 | N-central ships with hardcoded 2018 colours. Brand updates = engineering sprints. Dark mode "not possible." Each product its own visual language. | One token file change updates the entire N-central surface. Dark mode toggles instantly. Brand cohesion across products via shared `--br-*` token contract. Customers see current Apex brand on day one. |
| 2 | Design → spec → Jira → sprint → engineer → QA → staged → deployed → feedback → iterate. **4–8 weeks per UI change.** | Designer creates mockup → web component built → injected via extension → validated in production with real data → feedback in hours → iterate same day → promote when proven. **1–5 days.** |
| 3 | Framework migration historically means rebuilding every UI component from scratch (Dojo → Angular → React, repeat). | Web components built today work in Dojo/Angular/React/any framework/no framework. Per-component framework migration: 2–4 hours via wrapper, not 2–4 weeks rebuild. |
| 4 | Apex vision team builds in Storybook/staging. Tested away from real content. | Production validation — same `--br-*` tokens. Future Apex experience tested against real N-central pages, real data, real workflows. Behind a toggle. |
| 5 | Embedded N-zo: bespoke per-integration. Wait for platform release. Theme mismatch. | Web component as drop-in. Release cycles decoupled. Theme consistency automatic via tokens. Cross-product workflows (N-zo action → N-central result) rendered as unified UI. |
| 6 | Each additional product = full UX modernisation initiative. | Adlumin = `bridge-adlumin.scss` + URL pattern + mount adapters. Days, not sprints. Marginal cost compounds downward. |

## Cost comparison (framework migration)

| Approach | Cost per component per framework migration |
|---|---|
| Framework-native rebuild | 2–4 weeks engineering per component |
| Web component wrapper | 2–4 hours per component |

For 10 components across 2 framework migrations:
- Traditional: 40–80 weeks
- Web components: 40–80 hours

## Risk Assessment

| Risk | Mitigation |
|---|---|
| Extension injection breaks page functionality | Non-destructive — token overrides use `!important` only on visual properties (color, border, bg). No layout or logic changes. |
| Chrome updates break extension | Manifest V3 is long-term stable. No deprecated features. |
| Performance impact | < 50KB CSS injection. Web components lazy-load. No JS frameworks at runtime. |
| Maintenance burden | Token system automated (compile from source). Icon remap generated (one script). Components independent. |
| "It's just a Chrome extension" perception | Extension is the **delivery vehicle, not the product.** Token system, web components, icon library exist independently and can deploy by any mechanism (CDN, bundled, npm, Chrome extension). |

## Summary table

| Capability | Without Bridge | With Bridge |
|---|---|---|
| Dark mode in N-central | Not possible (requires rewrite) | Toggle on/off instantly |
| Brand update across products | Multi-sprint engineering | Single token file change |
| UX redesign validation | 4–8 week cycle | Same-day production testing |
| Framework migration cost | Full rebuild per component | 15-line wrapper per component |
| N-zo embedded integration | Bespoke per-integration | Drop-in web component |
| Multi-product design consistency | Each product independent | Shared token contract |
| Adlumin modernisation | Separate initiative | Extension + bridge CSS |
