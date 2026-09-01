---
feature: "n-able Homepage — Gray-Led Aesthetic (Apex Bridge)"
gate: 30
owner: "Beth Schwindt (for Luke)"
problem_statement: "[MISSING] No sourced problem statement. Design direction from Beth: gray as main color."
okr_objective: "[ASSUMED] Establish visual differentiation for n-able homepage using neutral palette"
okr_key_result: "[MISSING] No measurable outcome defined"
counter_metric: "[ASSUMED] Brand recognition / product clarity must not degrade"
idea_score: null
evidence_sources: ["None — design direction only"]
status: "draft — concept tier"

# domain_model — nouns & verbs
domain_model:
  entities:
    - name: "Hero Section"
      identity: "Primary visual anchor with headline, subhead, CTA"
      attributes: ["background_color", "headline_text", "cta_variant"]
      evidence: "[A]"
    - name: "Product Card"
      identity: "Distinct n-able product offering (RMM, Security, Backup, etc.)"
      attributes: ["product_name", "icon", "description", "learn_more_link"]
      evidence: "[A]"
    - name: "Customer Testimonial"
      identity: "Social proof from MSP or enterprise customer"
      attributes: ["company_name", "quote", "logo", "vertical"]
      evidence: "[A]"
    - name: "CTA (Call-to-Action)"
      identity: "Action point for visitor (demo, trial, contact)"
      attributes: ["label", "href", "variant", "prominence"]
      evidence: "[A]"
    - name: "Feature Section"
      identity: "Benefit or capability block (security, scalability, automation)"
      attributes: ["headline", "body_copy", "supporting_visual"]
      evidence: "[A]"
  
  value_objects:
    - name: "Brand Color"
      describes: "Visual identity constraint from n-able brand guidelines"
      evidence: "[?]"
    - name: "Elevation Level"
      describes: "Visual hierarchy via Apex Bridge shadow tokens"
      evidence: "[A]"
    - name: "Mode Preference"
      describes: "Light/dark/auto theme setting"
      evidence: "[A]"
  
  services:
    - name: "Toggle Theme"
      acts_on: ["Hero Section", "Product Card", "Feature Section"]
      trigger: "User clicks mode toggle or OS setting changes"
      evidence: "[A]"
    - name: "Request Demo"
      acts_on: ["CTA"]
      trigger: "User clicks 'Request Demo' button"
      evidence: "[A]"
    - name: "Start Trial"
      acts_on: ["CTA"]
      trigger: "User clicks 'Start Trial' button"
      evidence: "[A]"
  
  ubiquitous_language:
    - term: "MSP"
      means: "Managed Service Provider — core n-able customer segment"
    - term: "endpoint"
      means: "Device (laptop, server, mobile) managed by n-able software"
    - term: "expert behind the expert"
      means: "n-able's positioning: we empower MSPs who serve end customers"
    - term: "enterprise-grade"
      means: "Security, scalability, compliance posture expected by large orgs"
---

## Gate 1 — Problem: Is the problem real and sourced?

**No problem statement exists.** [A]

Beth's request: "an n-able home page with gray as the main color." [R — from Beth's instruction]

**Assumed rationale (not sourced):**
- Current n-able homepage may rely on saturated brand colors (blue, red, green) that compete for attention [A]
- Gray-led palette could communicate enterprise credibility, reduce visual noise, let product/content hierarchy emerge [A]
- Apex Bridge tokens provide a systematic neutral palette (slate, stone, zinc) with built-in dark mode [A]

**What we don't know:**
- Why gray? What user or business outcome does this serve? [?]
- What's the current homepage conversion rate? Bounce rate? Time-on-page? [?]
- What do n-able customers (MSPs, enterprise IT) respond to visually? [?]
- What are competitors doing? (Kaseya, Datto, ConnectWise) [?]
- Does n-able have brand guidelines that constrain palette? [?]

**Gate 1 status: NOT READY.** This is a design direction, not a problem brief. Acceptable at 30% fidelity. Not acceptable past schematic tier.

---

## Gate 2 — Right Thing: Does this advance the mission?

**Assumed mission (not verified):** n-able homepage should convert visitors (MSPs, enterprise IT) into leads (demo requests, trial signups). [A]

**Gray-led aesthetic might advance mission if:**
- Neutral palette increases perceived credibility/trust with enterprise buyers [A]
- Reduced color saturation improves readability and CTA prominence [A]
- Dark mode support (via Apex Bridge) matches IT professional preferences [A]

**Gray-led aesthetic might harm mission if:**
- Brand recognition depends on saturated color (red/blue) and gray dilutes it [A]
- MSP audience prefers energetic, action-oriented visual tone [?]
- Competitors already own neutral palette and n-able loses differentiation [?]

**What outcome moves?** [?]  
No metric defined. Assumed: demo requests, trial starts, qualified lead volume.

**Gate 2 status: NEEDS WORK.** No clear outcome. Aesthetic choice without business case.

---

## Gate 3 — Built Right: Tested how? By whom?

**No test plan.** [A]

**If this were to ship:**
- Test cohort: MSP decision-makers (IT service owners, operations leads) [A]
- Test method: A/B test gray-led homepage vs. current saturated palette [A]
- Success metric: conversion rate to demo request or trial signup [A]
- Counter-metric: brand recall ("Do you recognize this as n-able?") [A]
- Test duration: 2–4 weeks, minimum 10k unique visitors per variant [A]

**Counts as done:**
- Static HTML prototype with Apex Bridge tokens applied [A]
- Gray-led hero, product cards, feature sections, CTAs [A]
- Light/dark mode toggle functional [A]
- Delivered to Luke for design review [A]

**Gate 3 status: CONCEPT ONLY.** No production test plan. Prototype is design conversation artifact.

---

## Failure Modes

1. **Gray reads as "unfinished" or "wireframe."**  
   Without careful hierarchy (type scale, elevation, spacing), neutral palette can look like a lo-fi prototype, not a polished product page. MSPs may interpret this as "not ready for enterprise."

2. **Brand erasure.**  
   If n-able's brand equity is tied to saturated blue/red, a gray-led palette may dilute recognition. New visitors won't know they're on n-able.com.

---

## What's Missing

- **Customer research:** What visual tone do MSPs respond to? [?]
- **Brand guidelines:** Does n-able have a defined palette? Is gray permissible? [?]
- **Metric baseline:** Current homepage conversion rate, bounce rate, time-on-page. [?]
- **Competitive analysis:** What do Kaseya, Datto, ConnectWise homepages look like? [?]
- **Business case:** Why gray? What outcome does this serve? [?]
- **Stakeholder context:** Who owns the homepage? Who approves palette changes? [?]
- **Test plan:** How would this be validated before launch? [?]

---

## Domain Model — Extracted

**Entities:**
- Hero Section [A]
- Product Card [A]
- Customer Testimonial [A]
- CTA (Call-to-Action) [A]
- Feature Section [A]

**Value Objects:**
- Brand Color [?]
- Elevation Level [A]
- Mode Preference [A]

**Services:**
- Toggle Theme [A]
- Request Demo [A]
- Start Trial [A]

**Ubiquitous Language:**
- MSP = Managed Service Provider (core n-able customer)
- endpoint = device managed by n-able software
- "expert behind the expert" = n-able's positioning
- "enterprise-grade" = expected security/scalability posture

---

## Math — Three Numbers (see math-recount.md for line-by-line breakdown)

| Bucket | Count | Ratio |
|--------|-------|-------|
| **World-claims** (about n-able, MSPs, market) | 47 | 94% [A]+[?] |
| **Test-plan readiness** (prototype's own validation) | 8 | 100% [A] |
| **Inflated (with meta-TODOs)** | 55 | 95% [A]+[?] |

**Lead number: 94% [A]+[?] (world-claims).**

This brief is honest about what it is: a design direction with no customer evidence. Acceptable at 30% fidelity. Not shippable past schematic tier without research.

---

**Next step:** Build the prototype. Then run critic to score it against the six dimensions and generate the pre-build punch list.
