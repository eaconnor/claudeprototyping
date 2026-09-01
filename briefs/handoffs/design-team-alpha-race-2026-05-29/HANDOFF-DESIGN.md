# Alpha RACE Lo-Fi — Design Team Handoff

**To:** Design Team (UX/IA review)
**From:** Raj Dhesi (Alpha engine owner)
**Date:** 2026-05-29
**Prototype:** `prototypes/alpha-race-lo-fi/index.html`

---

## What this is

Lo-fi incident detail view testing: **Does consolidating 47 alerts → 12 incidents communicate value in a 30-second scan?**

**Design review scope:**
- Information architecture (3 blocks: Story, Correlation, Score — do they work independently or require synthesis?)
- Reading order (which block anchors attention? Hero metric, or 94 score?)
- Affordances (tooltips, collapsibles, mode toggle — are they discoverable?)
- Mobile/touch accessibility (2 critical tooltips hover-only — fail on iPad)
- CISO section placement (economic buyer content below fold — invisible on first screen)

**Out of scope for this review:**
- Hi-fi interactions (wizards, modals, editors — this is T1 concept only)
- Production data binding (seed data stamped throughout)
- Competitive differentiation (no UI teardown vs CrowdStrike/Arctic Wolf)

---

## Design Score: 21/30

| Dimension | Score | Gap |
|-----------|-------|-----|
| Coherence | 4/5 | Layout supports intended flow but doesn't enforce it |
| Source-fidelity | 3/5 | Rail-right layout assumed, not tested |
| Demo-ability | 3/5 | Clickable but no test protocol staged |
| Differentiation | 2/5 | No competitive UI teardown |
| Risk | 4/5 | Reading order uncontrolled, tooltips fail mobile |
| Scope | 5/5 | T1 lo-fi correctly scoped |

---

## 10 Prioritized Design Gaps

### 1. CISO section below fold (CRITICAL)
- **Where:** Lines 932-952 in HTML, estimated ~1400px from top
- **Problem:** Economic buyer content (Time Savings, Cost Impact, Analyst Retention, Audit Trail) invisible on first screen (1080p/13" viewport)
- **Why it hurts:** If CISO in demo room, vital ROI/defensibility claims missed
- **Fix:** Move CISO section above correlation grid, OR add jump-link from hero metric

### 2. Reading order uncontrolled
- **Where:** Main content stacks Story → Correlation → Score → CISO linearly
- **Problem:** 3 blocks compete (Story 14px prose, Score 38px red number, Correlation scan-fast grid). No visual hierarchy enforces top-to-bottom. Customer may anchor on 94 score before reading 47→12 hero.
- **Test:** Eye-tracking or show to 5 people, ask "what did you read first?"
- **Fix:** Progressive disclosure (hero → expand story → expand score) OR font-size/color hierarchy that forces hero-first

### 3. Tooltips mobile-inaccessible
- **Where:** Hero metric explainer (line 860), Alpha score explainer (line 905)
- **Problem:** Hover-only `::after` pseudo-elements. Fail on iPad/mobile. Critical transparency claim ("all 47 alerts remain visible") buried.
- **Fix:** Move transparency claim from tooltip to inline text below hero metric

### 4. 47→12 opacity risk unmitigated
- **Where:** Hero says "47 alerts → 12 incidents" but customer sees only THIS incident
- **Problem:** Where are the other 11? Not linked. Customer cannot verify. Correlation shows 47 chips but no drilldown (just IDs, no detail).
- **Fix:** Add link "View all 12 incidents in this group" OR make correlation chips clickable (modal with alert detail)

### 5. Council button mismatch
- **Where:** Topbar button "Council · 44 voices" → modal shows 3 tensions
- **Problem:** Signifier promises all voices, affordance delivers 3
- **Fix:** Relabel "Top 3 Tensions" OR add second modal tier "View all 44 voices"

### 6. Fidelity banner narration gap
- **Where:** Sticky banner "Tier 1 · Concept" (lines 829-846)
- **Problem:** Designers understand tiering; customers read as "unfinished"
- **Fix:** Add tooltip "Tier 1 = Lo-fi concept for feedback" OR stage SE narration script

### 7. CISO metrics unverified
- **Where:** "42min → 17min" and "83 hours saved" (lines 936-937)
- **Problem:** ROI claim ships to economic buyer but rests on internal test data (not customer-validated per brief line 33)
- **Fix:** Footnote "Time savings based on internal beta; your environment may vary"

### 8. Collapsibles lack ARIA state
- **Where:** Rail sections (lines 977-1001)
- **Problem:** No `aria-expanded` — screen readers cannot announce state
- **Fix:** Add `aria-expanded="false"`, toggle to `true` on click

### 9. Tooltip contrast fails WCAG AA
- **Where:** `.tooltip-trigger` (lines 323-335)
- **Problem:** 16px circle, `--text-tertiary` on dark bg — appears <4.5:1 contrast
- **Fix:** Increase trigger size to 20px, use `--text-secondary` (higher contrast)

### 10. Correlation grid non-interactive
- **Where:** 47 alert chips (ALT-8472 to ALT-8518, lines 1171-1177)
- **Problem:** Shown but inert (no tooltip, no drilldown). Symbolic transparency may read as opacity.
- **Fix:** Add hover tooltip "ALT-8472: Mimikatz process, 14:23 UTC" OR make clickable

---

## Test Protocols for Design Validation

**Comprehension test (30-second cold read):**
- Show prototype to 5 people (no context, no narration)
- 30 seconds to scan
- Ask: "What does this tool do?"
- **Pass:** ≥4 say "consolidates alerts" (not "hides alerts" or "scores incidents")
- **Fail:** ≥2 choose opacity-risk reading ("what happened to 35 alerts?")

**Reading-order test (eye-tracking or self-report):**
- Show prototype to 10 people
- Ask: "What did you read first: hero number, story, score, or CISO section?"
- **Success:** ≥7 anchor on hero metric (47→12)
- **Failure:** ≥5 anchor on score (94) or skip hero entirely

**Mobile/touch test:**
- Load prototype on iPad
- Attempt to read hero metric explainer tooltip (line 860)
- **Result:** Tooltip inaccessible (hover-only, no touch fallback)

**Affordance audit:**
- Identify all interactive elements (mode toggle, rail collapse, collapsibles, tooltips, council button)
- Test discoverability: Can tester find affordances without instruction?
- **Known fails:** Tooltips (small, low-contrast), Collapsibles (no ARIA state)

---

## What Product Must Resolve Before Design Iterates

**Design cannot fix these — Product owns:**

1. **Decision 1 (customer profile):** Actual customer vertical, endpoint count, SOC maturity, adoption profile (Early Adopter vs. Early Majority), fictional proxy for seed data. Every design decision (CISO placement, reading order, fidelity banner narration) scales from this.

2. **Decision 2 (success criteria):** "This demo succeeds when ___." Without success definition, design cannot validate. Is success = customer commits to pilot? Or = customer validates category need? Two different UX optimizations.

**Why design waits:** CISO section placement depends on whether CISO is in room (Decision 1). Reading order optimization depends on success metric (comprehension vs. conviction, Decision 2). Fidelity banner narration depends on whether customer is Early Adopter (tolerates rough edges) or Early Majority (expects polish).

---

## Design Team Routing

**Design does:**
1. Run comprehension test (5 people, 30 sec, "what does this tool do?")
2. Run reading-order test (10 people, "what did you read first?")
3. Audit mobile/touch (iPad test: can you access hero tooltip?)
4. Propose fix for gaps 1-5 (CISO placement, reading order, tooltip mobile access, 47→12 drilldown, council button mismatch)

**Why now:** Gaps 1-5 are UX/IA decisions Design owns. Product must resolve Decisions 1-2 before design can finalize, but design can prototype alternatives (e.g., CISO above vs below fold, progressive disclosure vs linear scroll).

**If you ship without this:** Opacity risk fires (customer misreads 47→12 as "hid 35 alerts"), CISO content invisible (economic buyer misses ROI), mobile demo fails (tooltips inaccessible).

**ROI:**
- **Business:** Unknown — need Decision 2 (success criteria) to measure demo conversion lift
- **User:** Design team validates layout before customer exposure, avoids redesign mid-demo
- **Unknown:** Competitive UI novelty (CrowdStrike/Arctic Wolf may ship similar — no teardown run)

---

## Apex Bridge Compliance (PASS)

Design system check:
- ✓ Canonical `:root` token block (lines 15-54)
- ✓ Inter (UI/body) + JetBrains Mono (headers/labels/code)
- ✓ Rounded corners via `--radius-*` (4/6/8px), soft shadows only
- ✓ 3 distinct surfaces: topbar (dark + brand border), app canvas, Bradley rail (violet + inset glow)
- ✓ 3-way mode toggle (light/dark/system), persists to `apx-mode-pref`
- ✓ No ad-hoc colors (all derive from tokens)
- ✓ No Itten palette (vermillion/ochre/ultramarine correctly excluded)

Deviation (acceptable for T1):
- × `apx-*` components (raw HTML + CSS, appropriate for concept fidelity)
- ~ `schema.json` contract (data structure implied, not formalized)

---

## Next Steps

**Immediate (Design Team, 1 week):**
1. Run comprehension test + reading-order test
2. Propose fixes for gaps 1-3 (CISO placement, reading order, tooltip mobile)
3. Report findings to Raj + Product

**Blocked on Product (Decision 1-2, must resolve before design finalizes):**
4. CISO section placement (depends on whether CISO in demo room)
5. Fidelity banner narration (depends on customer adoption profile)
6. Reading order optimization (depends on success criteria: comprehension vs. conviction)

**If moving to T2 (directional fidelity):**
7. Design adds: mobile breakpoints, touch-optimized tooltips, ARIA states, interactive correlation drilldown
8. Research validates: CISO narrative format (does it land with economic buyers?), competitive UI teardown (CrowdStrike/Arctic Wolf parity check)
9. Product resolves: Decision 3 (incident story source: real vs synthetic), Decision 4 (narrative format validation)

---

**End of design handoff. See `critic-pass-design.md` for full design review findings.**
