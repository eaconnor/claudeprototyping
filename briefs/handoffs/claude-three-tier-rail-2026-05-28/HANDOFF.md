# HANDOFF — Three-Tier Rail Pattern Test (2026-05-28)

**To:** Next Claude session  
**From:** Current session (three-tier rail builder)  
**Date:** 2026-05-28  
**Status:** Test prototype validated, skill updated, ready for production use

---

## What this is

A validated three-tier rail pattern for Band Protocol prototypes that serve three different audiences across Gates 1, 2, and 3. The pattern was tested with Alpha RACE customer demo as the test case and is now documented in `.claude/skills/prototype/SKILL.md`.

---

## What shipped

### 1. Test prototype
**File:** `/Users/elizabeth/Desktop/Bethproto/prototypes/alpha-race-three-tier-test.html`  
**Status:** ✓ Validated by Beth

**What works:**
- T1/T2/T3 toggle switches rail content (non-cumulative)
- T1: Bradley scoring rail with risk score, 44-voice council modal, what you nailed/hurt, reasoning
- T2: PM Action Dashboard with 4 decision cards, hotspot + leader-line pattern
- T3: Engineering + Design QA rail with handoff specs and checklists
- Rail slides away to 56px, risk score stays pinned (T1)
- Council modal: 44 voices, 14 clusters, expand/collapse drill-down, cross-talk section
- All voice cards have full 6-field owensing (Sign, Hypothesis, Kill criterion, Force level, Evidence, Cannot see)
- Collapsible sections work correctly

### 2. Skill update
**File:** `.claude/skills/prototype/SKILL.md`  
**Lines:** ~130-227 (new section "Three-Tier Rail Pattern")

**What's documented:**
- When to use (multi-gate prototypes)
- Topbar structure with tier toggle
- T1 rail contents (Bradley scoring, council, reasoning)
- T2 rail contents (PM Action Dashboard, decision cards)
- T3 rail contents (Engineering handoff, Design QA, UAC)
- Rail behavior (slide-away, pinned score, collapsible sections)
- Council modal pattern (44 voices, 14 clusters, expand/collapse)

### 3. Tracking document
**File:** `/Users/elizabeth/Desktop/Bethproto/briefs/skill-updates-needed.md`  
**Status:** Referenced in skill update

---

## What was validated

### Pattern decisions Beth confirmed
1. **Three distinct rail structures** (not cumulative) — T2 doesn't show T1 content
2. **44 voices, not 11** — per methods-library-matrix.md standard
3. **Full 6-field owensing** in expanded voice cards — no abbreviations
4. **Expand/collapse drill-down** — collapsed shows summary, click expands to full grid-width
5. **Council modal depth** — matches idea-chorus v3 quality (Beth: "On the right track. Liked the depth")
6. **T1 = scoring, T2 = routing, T3 = QA** — each gate serves different audience with different question

### Build discipline established
- **Read skill first** before copying patterns from other prototypes
- **No abbreviations** — "[abbreviated for test]" is not acceptable
- **Grep-verify stats** before quoting (47% rule)
- **44 voices always** — not 11, not some other number
- **Track skill updates** — document what needs adding as you discover gaps

---

## The three tiers explained

### T1 (Gate 1 - Concept)
**For:** PM + leadership asking "Is this concept sound?"

**Rail shows:**
- Risk score block (owensed, not computed): "[N]/30 · NOT READY"
- Council button → 44-voice modal with executive summary, cross-talk
- What you nailed (5 wins)
- What will hurt you (7 risks with consequences)
- Reasoning (Oregon Trail, Monte Carlo, Charter Traversal tabs)

**When to use T1:** Early concept evaluation, before decisions are made, when PM needs council to weigh in on whether idea is worth pursuing.

### T2 (Gate 2 - Direction)
**For:** PM + cross-functional leads asking "What decisions unlock the build?"

**Rail shows:**
- Decision cards (numbered, mapped to hotspots on prototype)
- Each card: who to meet, why, sample questions, decision you own, ROI
- Footer with source tickets + timestamp
- Review Mode toggle shows hotspots + leader lines

**When to use T2:** After concept is validated (T1 passed), when specific cross-functional decisions are blocking the build. Routes to humans for decision-making.

### T3 (Gate 3 - Spec-ready)
**For:** Engineering + Design asking "Is this ready to build correctly?"

**Rail shows:**
- Engineering handoff (schema, API, components, dependencies)
- Design QA checklist (usability, a11y, content, visual, responsive, errors)
- User acceptance criteria (Gate 1 trace, Gate 2 decisions, details correct)

**When to use T3:** After decisions are made (T2 complete), when spec needs engineering + design sign-off before production build.

---

## File locations

| File | Purpose | Status |
|------|---------|--------|
| `prototypes/alpha-race-three-tier-test.html` | Test prototype | ✓ Validated |
| `.claude/skills/prototype/SKILL.md` | Updated skill with pattern | ✓ Shipped |
| `briefs/skill-updates-needed.md` | Tracking doc | ✓ Complete |
| `briefs/handoffs/claude-three-tier-rail-2026-05-28/` | This handoff | ✓ Created |

---

## What the next session needs to know

### If building a new prototype with three-tier rail
1. Read `.claude/skills/prototype/SKILL.md` lines ~130-227
2. Copy structure from `prototypes/alpha-race-three-tier-test.html`
3. Adapt T1/T2/T3 content to your project's gates
4. Council modal: 44 voices from methods-library-matrix.md, full 6-field owensing
5. No abbreviations — use real, substantial content

### If extending the skill further
1. Read `briefs/skill-updates-needed.md` for context
2. Check if proctor needs new checks for three-tier rail (noted in tracking doc)
3. Consider whether to extract council modal to shared component (current: inline per prototype)

### If updating the test prototype
1. The test uses Alpha RACE context — voice testimonies speak to MDR analysts, incident correlation, customer demo
2. All 44 voices have full owensing — adapt content, don't abbreviate
3. CSS matches idea-chorus v3 depth — don't simplify
4. Council modal drill-down is core UX — don't break expand/collapse

---

## Known issues / open questions

### None blocking
All issues from build session resolved:
- ✓ localStorage removed (was causing file:// CORS error)
- ✓ toggleSection fixed (was looking for wrong IDs)
- ✓ Council modal built (not stub)
- ✓ 44 voices, not 11
- ✓ Full owensing depth, not abbreviated
- ✓ Expand/collapse drill-down working

### Questions for future sessions
1. **Component extraction:** Should council modal be extracted to `prototypes/_components/council-modal.js`? Current recommendation: leave inline until 3+ prototypes use it.
2. **Proctor checks:** Should proctor verify three-tier rail structure when prototype declares multi-gate? (Noted in tracking doc, not yet added to proctor agent)
3. **Council voice content:** Each prototype needs 44 voices contextualized to its domain. Generate? Template? Require human input? (Current: generate per prototype)

---

## Three calls for next session

### 1. Validate the pattern in production
**Who owns:** Next PM who builds a multi-gate prototype  
**What to check:** Does the three-tier rail actually serve three different audiences effectively? Or does it feel like over-engineering for most projects?  
**Decision needed:** Keep as documented, or add guidance on when NOT to use (e.g., "single-gate prototypes don't need this")

### 2. Extract or leave inline?
**Who owns:** Next session that touches council modal  
**What to check:** If 2-3 more prototypes need the council modal, extract to shared component. If not, leave inline.  
**Decision needed:** Component extraction timing

### 3. Proctor integration
**Who owns:** Next session that touches proctor agent  
**What to add:** Proctor checks for three-tier rail (if prototype declares multi-gate, verify all three rail modes present, tier toggle functional, council has 44 voices)  
**Decision needed:** Which checks are structural (proctor) vs. quality (critic)

---

## Success criteria met

✓ Test prototype built and validated by Beth  
✓ Skill updated with canonical pattern  
✓ Tracking doc created  
✓ Handoff packet ready  
✓ Build discipline established (read skill first, no abbreviations, 44 voices, full depth)  
✓ All issues resolved  
✓ Pattern ready for production use  

---

**The prototyper holds the clipboard.** This pattern works for Beth, validated with Alpha RACE test case. Next session: use it.
