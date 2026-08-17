# Critic Pass 1 — n-able Homepage (Pre-Build)

**Brief:** `briefs/n-able-homepage.brief.md`  
**Fidelity:** 30% concept tier  
**Declared claim ratio:** 94% [A]+[?]  
**Reviewer:** Critic  
**Date:** 2026-06-02

---

## Score Table

| Dimension | Score | Rationale |
|-----------|-------|-----------|
| **Coherence** | 3/5 | Solution (gray-led homepage) traces to stated design direction. No problem statement exists, so coherence is limited to "Beth asked for gray." At concept tier, acceptable. |
| **Source-fidelity** | 3/5 | 94% [A]+[?] is honestly declared. Brief names what's missing (customer research, brand guidelines, metrics, competitive analysis). For 30% fidelity, gap-naming is appropriate. Would score 1/5 at 90% tier. |
| **Demo-ability** | 5/5 | Clear component list (Hero, Product Cards, CTAs, Feature Sections). Apex Bridge delivery specified. Mode toggle defined. This can be built. |
| **Differentiation** | 2/5 | Gray-led palette is named, but brief acknowledges unknown: "Competitors already own neutral palette?" No evidence this is distinct vs. just different. |
| **Risk** | 4/5 | Two failure modes explicitly named: (1) Gray reads as unfinished/wireframe, (2) Brand erasure. Counter-metric stated (brand recognition must not degrade). Missing: technical risk, accessibility concerns. |
| **Scope discipline** | 5/5 | Single-page prototype. Five component types. No feature creep. Deliverable in one HTML file. |

**Average: 3.7/5** — Appropriate for concept-tier brief with honest gap-naming.

---

## Punch List

### PASS

- Brief is honest about what it is — a design direction, not a sourced problem
- Failure modes named (gray-as-wireframe, brand erasure)
- Domain model is complete and appropriate for homepage scope
- Demo-ability is high: clear components, Apex Bridge delivery, mode toggle specified
- Scope is disciplined: one page, five entity types, no sprawl
- Math is verified and prominently displayed (94% [A]+[?])
- Counter-metric stated: brand recognition must not degrade

### FAIL

- No problem statement [MISSING from Gate 1]
- No business case: "Why gray?" is unanswered beyond Beth's instruction [?]
- No metric baseline: current homepage conversion, bounce, time-on-page unknown [?]
- No test plan for validation (appropriate at 30%, but must exist before 90%)
- Differentiation claim is speculative — no competitive analysis to support "gray = distinct" [?]

### MISSING

- Customer research: What visual tone do MSPs respond to? [?]
- Brand guidelines: Is gray permissible within n-able's identity system? [?]
- Competitive landscape: Kaseya, Datto, ConnectWise visual approaches [?]
- Stakeholder context: Who owns the homepage? Who approves palette changes? [?]
- Accessibility audit plan: Does gray-led palette maintain WCAG AA contrast? [A — not mentioned]

### RISK

1. **Gray = wireframe perception.** Without strong hierarchy (type scale, elevation, spacing), neutral palette may read as unfinished, not polished. MSPs may interpret as "not enterprise-ready." [Named in brief, still a risk]
2. **Brand erasure.** If n-able's equity is tied to saturated color (blue/red), gray dilutes recognition. New visitors won't know they're on n-able.com. [Named in brief, still a risk]
3. **Mode toggle as distraction.** If the real question is "does gray work?", adding dark mode introduces a second variable. A/B test will be harder to interpret. [Not named in brief]
4. **No accessibility verification.** Gray-on-gray requires careful contrast management. Brief doesn't mention WCAG compliance check. [Not named in brief]

---

## Gaps to Address Before Build

At **30% fidelity**, these gaps are acceptable. The brief should proceed to build. However, before moving to **60% (schematic)** or **90% (spec-ready)**, the following must be resolved:

1. **Problem statement.** Why does the homepage need to change? What user or business outcome is at stake? Currently: [MISSING].
2. **Brand guidelines.** Is gray permissible? Does n-able have a defined palette? Currently: [?].
3. **Competitive context.** What do peer MSP platforms (Kaseya, Datto, ConnectWise) do visually? Does gray differentiate or commodify? Currently: [?].
4. **Metric baseline.** What's the current homepage conversion rate, bounce rate, time-on-page? Without this, no A/B test can be interpreted. Currently: [?].
5. **Test plan.** How will this be validated? Who reviews? What's the success threshold? Currently: [A — test method is assumed but not planned].
6. **Accessibility plan.** Gray-on-gray requires WCAG AA contrast verification. Not mentioned. Currently: [MISSING].

---

## Recommendations for Build

**Proceed.** This brief is honest about its limitations and appropriate for 30% fidelity. The build will produce a design conversation artifact, not a shippable spec.

**During build:**
- Apply Apex Bridge tokens systematically (not ad-hoc grays)
- Use elevation (shadow tokens) and type scale to create hierarchy — this is the primary defense against "gray = wireframe" perception
- Include mode toggle to demonstrate Apex Bridge's range, but note in Bradley rail that dark mode is a second variable (complicates A/B testing)
- Seed data: fictional MSP names, fictional testimonials (Pete Hegseth test applies)
- Bradley rail must name: "This is a design direction, not a validated solution. Customer research required before 60% tier."

**Post-build:**
- Run Critic Pass 2 against the working prototype
- Handoff packet should include: "Unresolved questions" section listing the six gaps above

---

**Status:** Ready for build. Score will be re-run post-build to measure delta.
