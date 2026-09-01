# Skill Updates Needed — Three-Tier Rail Pattern

**Date:** 2026-05-28
**Context:** Building alpha-race three-tier rail test to establish canonical pattern for `.claude/skills/prototype/SKILL.md`

---

## What the skill currently documents

**Bradley rail (lines 436-450):**
- Readiness badge
- Blurb
- "What you nailed" / "What will hurt you"
- Routed cards (Product, Design, Research, Eng)

**Council (lines 547+):**
- 44 voices from methods-library-matrix.md
- 14 clusters
- 6-field owensing format
- Cross-talk required
- Click-into modal pattern

**Problem:** Skill does NOT document the three-tier rail pattern (T1/T2/T3 toggle with different rail structures per gate).

---

## What needs to be added to skill

### New section: "Three-Tier Rail Pattern"

**When to use:** When prototype needs to serve three different audiences:
- Gate 1 (Concept) → PM + leadership evaluating idea soundness
- Gate 2 (Direction) → PM + cross-functional making decisions
- Gate 3 (Spec-ready) → Engineering + Design validating completeness

**Structure:**

#### Topbar with tier toggle
- Single sticky topbar (44px min-height)
- Brand + divider
- Tier toggle: segmented control (T1 | T2 | T3)
- Council button (visible only in T1)
- Rail toggle (slide away/show)
- Theme toggle
- Beta pill showing phase/status
- User chip

#### T1 (Gate 1 - Concept) → Bradley scoring rail
**Audience:** PM + leadership
**Question:** "Is this concept sound?"

Rail contains:
- Risk score block: "[N]/30" with owensed reasoning (NOT computed)
  - Shows "NOT READY" | "PROMISING" | "READY" state
  - Brief [A]+[?] percentage
  - Pinned when rail collapses
- Council button → 44-voice modal
- Section "What you nailed" (default collapsed)
  - 5 specific wins from brief
- Section "What will hurt you" (default collapsed)
  - 7 risks with consequences
- Section "Reasoning" (default collapsed)
  - 3 tabs: Oregon Trail | Monte Carlo | Charter Traversal
  - Oregon Trail: readiness state grid
  - Monte Carlo: 4-quadrant outcomes
  - Charter: 5-rung traversal chain from brief to prototype

#### T2 (Gate 2 - Direction) → PM Action Dashboard
**Audience:** PM + cross-functional leads
**Question:** "What decisions unlock the build?"

Rail contains:
- Decision cards (number varies by project)
- Each card:
  - Numbered anchor (matches hotspot on prototype)
  - Card title: the decision question
  - Meet with: [named people with roles]
  - Why this meeting: [sourced reasoning or [A]]
  - Sample items to address: [bulleted questions]
  - Decision you own coming out: [what gets locked]
  - ROI block: Business / User / Unknown (honest, not fabricated)
- Footer: source tickets + updated timestamp
- Hotspot + leader-line pattern (Review Mode toggle)

#### T3 (Gate 3 - Spec-ready) → Engineering + Design QA rail
**Audience:** Engineering + Design
**Question:** "Is this ready to build correctly?"

Rail contains:
- Section "Engineering handoff" (default collapsed)
  - schema.json contract
  - API endpoints with methods
  - Component specs (with props/events if using design system)
  - Data binding requirements
  - Dependencies (services, libraries)
- Section "Design QA checklist" (default collapsed)
  - ✓/~/✕ Usability tested (with whom, when, what learned)
  - ✓/~/✕ Accessibility baseline (WCAG AA, keyboard nav, screen reader)
  - ✓/~/✕ Content reviewed (voice, terminology, microcopy)
  - ✓/~/✕ Visual design complete (not approximations)
  - ✓/~/✕ Responsive breakpoints defined
  - ✓/~/✕ Error states documented
- Section "User acceptance criteria" (default collapsed)
  - Gate 1 trace: problem solved (sourced claim)
  - Gate 2 decisions: all T2 decisions answered
  - Details correct: design + eng sign-off required

#### Rail behavior
- Slides away to 56px when toggle clicked
- Risk score block (T1 only) stays pinned when collapsed
- Tier toggle switches rail content (non-cumulative — T2 doesn't show T1 content)
- Collapsible sections: `.rail-section` with chevron, default collapsed except first section per tier

#### Visual pattern
- Rail background: `--bg-deep` (darker than main)
- Rail border-left: `1px solid --border`
- Collapsible section headers: hover state, chevron rotates 90deg when open
- Risk score block (T1): distinct background, top of rail
- Decision cards (T2): numbered badge top-left, color-coded by team (Product/Design/Research/Eng)

---

## Errors found in idea-chorus v3 prototype

**❌ Said "11 voices" — WRONG**
- Skill standard: 44 voices, always
- Source: methods-library-matrix.md
- Grouped into 14 clusters

**Fix:** All council references must say "44 voices"

---

## Alpha-race test prototype corrections needed

1. ✗ Change "11 voices" → "44 voices" (topbar council button, T1 rail)
2. ✗ Remove `alert()` stub — build proper council modal or leave button non-functional for test
3. ✗ Verify risk score block stays pinned when rail collapses
4. ✗ Verify collapsible sections work (toggleSection function was broken, now fixed)
5. ✗ Verify T1/T2/T3 toggle switches rail content correctly
6. ? Council modal: stub or build full 44-voice modal with 14 cluster grid?

---

## Decision needed

**Council modal in test prototype:**
- **Option A:** Leave as non-functional button (test is about rail structure, not council content)
- **Option B:** Build full 44-voice modal (requires reading methods-library-matrix.md, owensing all 44, cross-talk)

**Recommendation:** Option A for this test. Council modal is documented in skill Step 6 (lines 547-617). This test is proving the three-tier rail toggle pattern, not the council modal pattern.

---

## Skill sections to update after test validates

1. **New section after "Multi-page prototypes":** "Three-Tier Rail Pattern"
   - Document T1/T2/T3 toggle
   - Document three rail structures
   - Document when to use (multi-gate prototypes)
   
2. **Update "Bradley rail" section (line 436):**
   - Current doc assumes single rail structure
   - Update to clarify: single-tier rail (default) vs. three-tier rail (when serving multiple gates)
   
3. **Update proctor checks (line 761):**
   - Add check: if prototype declares three-tier, all three rail modes must be present
   - Add check: tier toggle must switch rail content
   - Add check: council references must say "44 voices"

---

## Process note

**What went wrong:** Copied patterns from idea-chorus v3 without checking skill. That prototype had outdated "11 voices" reference.

**Correct process:** 
1. Read skill first
2. Build according to skill
3. Document gaps/updates needed
4. Test validates or reveals issues
5. Update skill with validated patterns

This tracking doc follows that process.
