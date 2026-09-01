# Shell vs. Docs — What Changed When Shell Went Tier 1

**Date:** 2026-05-28
**Context:** Beth said "Tier 1" for Phase 2, shell updated from Tier 2 → Tier 1. Now handoff docs describe Tier 2 but shell shows Tier 1.

---

## What's in the shell (current state)

### Structural elements (all present)

| Element | Status | Location |
|---------|--------|----------|
| **Tier 1 fidelity banner** | ✓ Present | Lines 602-624 |
| **Phase lineage strip** | ✓ Present | Lines 673-696 |
| **PM Action Dashboard** | ✓ Present | Right rail (lines ~1100+) |
| **Review Mode toggle** | ✓ Present | Lines 657-661 + JS |
| **Hotspot anchors** | ✓ Present | Throughout main content |
| **SVG leader-line layer** | ✓ Present | CSS + JS (lines 434+) |
| **Light/dark theme toggle** | ✓ Present | Lines 652-656 + JS |
| **Three phases with nuance** | ✓ Present | Lines 675-691 |

### Fidelity banner details (after Tier 1 update)

```html
<!-- Line 602-624 -->
<div class="fidelity-banner">  <!-- removed .tier2 class -->
  <div class="fidelity-flag">  <!-- removed .tier2-flag class -->
    Apex Prototype · Tier 1 · Concept · DRAFT  <!-- was "Tier 2 · Structural" -->
  </div>
  <div class="fidelity-label">Concept fidelity — content pending 4 decisions</div>
  <!-- 6 check items (unchanged) -->
  <div class="fidelity-tier">
    <span class="tier-pill on"></span>  <!-- 1 filled -->
    <span class="tier-pill"></span>
    <span class="tier-pill"></span>
    <span style="color: var(--critical);">1 / 3</span>  <!-- was "2 / 3" in orange -->
  </div>
</div>
```

**Visual change:** Orange stripe → Red stripe (default critical color, not tier2 orange)

### Phase lineage (unchanged)

```html
<!-- Lines 673-696 -->
<div class="lineage-strip">
  <div class="lineage-step done">
    <span class="lineage-marker">✓</span>
    <span class="lineage-label">Phase 1 · PUT-1166</span>
    <span class="lineage-detail">MDR Black Team · shipped 2026-05-12</span>
  </div>
  <span class="lineage-arrow">→</span>
  <div class="lineage-step active">
    <span class="lineage-marker">◐</span>
    <span class="lineage-label">Phase 2 · this prototype</span>
    <span class="lineage-detail">Customer demo path · DRAFT</span>
  </div>
  <span class="lineage-arrow">→</span>
  <div class="lineage-step planned">
    <span class="lineage-marker">○</span>
    <span class="lineage-label">Phase 3 · TBD</span>
    <span class="lineage-detail">Partner / MSP self-service (Q1 2027 candidate)</span>
  </div>
  <!-- 3 Jira refs: ADL-1836, ADL-1839, PUT-1166 -->
</div>
```

**Status:** All three phases present with full nuance. Green (done) → gray (active) → muted (planned). Jira ticket refs on the right.

---

## What the handoff docs say (documentation drift)

### HANDOFF.md (lines 19-46)

Says Phase 2 is **Tier 2 (structural fidelity)**:

> ### Tier 2 fidelity banner
> Orange stripe across the top. Phase 1 was Tier 1 (concept). Phase 2 is Tier 2 (structural fidelity — layout and information architecture are defined, UI polish is not).

**Drift:** Shell now shows Tier 1 red stripe, not Tier 2 orange.

### CLAUDE.md (table in section 3)

Says Phase 2 has:

| Element | What it is |
|---------|-----------|
| **Tier 2 fidelity banner** | Orange stripe · structural fidelity, not UI polish |

**Drift:** Shell now shows Tier 1, not Tier 2.

### Brief frontmatter (alpha-race-customer-prototype.brief.md line 3)

```yaml
gate: 30
```

**Alignment:** ✓ Brief says `gate: 30` (Tier 1 · 30% fidelity). Shell now matches.

---

## What needs updating to align docs with shell

### Update 1 — HANDOFF.md section "What Phase 2 adds over Phase 1"

**Current text (lines 21-23):**
> Phase 1 was Tier 1 (concept). Phase 2 is Tier 2 (structural fidelity — layout and information architecture are defined, UI polish is not). The banner is honest declaration: show this for alignment, not as shipped design.

**Proposed:**
> Phase 1 was Tier 1 (concept) for the MDR analyst tool. Phase 2 is also Tier 1 (concept) — customer demo path with structural additions (lineage, PM Action Dashboard, Review Mode). The banner is honest declaration: show this for alignment, not as shipped design.

**Reasoning:** Phase 2 adds structural *elements* (dashboard, lineage, review mode) but the overall fidelity is still Tier 1 concept. The elements are new; the fidelity tier is unchanged.

### Update 2 — CLAUDE.md table (section 3)

**Current text (line showing Tier 2 banner):**
> | **Tier 2 fidelity banner** | Orange stripe · structural fidelity, not UI polish |

**Proposed:**
> | **Tier 1 fidelity banner** | Red stripe · concept fidelity · content pending decisions |

### Update 3 — HANDOFF.md lines 74-77 (discussion of 65% [A]/[?] readiness)

**Current text:**
> Band Protocol threshold: >30% [A]/[?] = not ready. Name it before building.

**Status:** ✓ No change needed — this is correct.

---

## Questions for Beth

### Q1 — Phase 2 tier vs. Phase 2 structure

Phase 2 adds:
- Phase lineage strip (provenance timeline)
- PM Action Dashboard (replaces Bradley rail)
- Review Mode (hotspots + leader lines)
- Light/dark theme toggle

Are these additions **structural elements** (things the prototype has) or **structural fidelity** (the tier level)?

**My read:** Phase 2 has new structural *elements*. But if the content is 65% [A]/[?] and pending 4 decisions, it's still Tier 1 (concept). Tier 2 (structural fidelity) would mean "layout and IA locked, ready for content fill."

**Beth's answer:** Tier 1. Shell now reflects this.

**Question:** Should HANDOFF.md say "Phase 2 adds structural elements but stays Tier 1" or something else?

### Q2 — What's the difference between Phase 2 at Tier 1 and Phase 1 at Tier 1?

Phase 1 (PUT-1166):
- MDR analyst tool
- Bradley rail (PM readiness panel)
- Tier 1 concept

Phase 2 (this prototype):
- Customer demo path
- PM Action Dashboard (replaces Bradley rail)
- Phase lineage, Review Mode, theme toggle
- Tier 1 concept

**Both are Tier 1.** What makes Phase 2 a phase (not just an iteration)?

**My read:** The **audience shift** (analyst tool → customer demo) + the **structural additions** (lineage, dashboard, review mode) make it Phase 2. The tier is the same; the structure and purpose evolved.

**Question:** Is that the right framing?

### Q3 — When does Phase 2 hit Tier 2?

If Phase 2 is Tier 1 now (65% [A]/[?], content pending 4 decisions), when does it become Tier 2?

**Options:**
- A. After the 4 decisions are answered → spec re-runs → [A]/[?] drops below 30% → build runs → content locked → **then Tier 2**
- B. Phase 2 stays Tier 1 through the customer demo → Phase 3 is Tier 2
- C. Something else

**Question:** Which one?

### Q4 — Is the fidelity banner color/tier per phase or per build?

The shell currently has:
- **Fidelity banner:** Tier 1 red stripe (concept)
- **Phase lineage:** Phase 2 active
- **Brief frontmatter:** `gate: 30` (Tier 1)

All three say "Tier 1" now. Is that correct, or should one of them be different?

**Question:** Does Phase 2 = Tier 2, or can Phase 2 be at Tier 1 initially and upgrade to Tier 2 after decisions are made?

---

## Nice things in the shell (inventory)

Beth said "we also had a lot of nice things going on." Here's what's still in the shell:

### 1. Phase lineage with full nuance

- ✓ Three phases (done · active · planned)
- ✓ Color states (green done · white active · gray planned)
- ✓ Symbols (✓ · ◐ · ○)
- ✓ Phase names + ticket refs (PUT-1166, ADL-1836, ADL-1839)
- ✓ Context strings ("MDR Black Team · shipped 2026-05-12", "Customer demo path · DRAFT", "Partner / MSP self-service (Q1 2027 candidate)")

**Status:** Fully intact. Nothing changed here.

### 2. Review Mode with hotspots + leader lines

- ✓ Toggle button (top right, next to theme toggle)
- ✓ Hotspot anchors throughout main content (numbered circles)
- ✓ SVG leader-line layer (Bezier curves from hotspots to dashboard cards)
- ✓ Click hotspot → card scrolls and highlights
- ✓ Hover card → hotspot pulses
- ✓ Toggle off → all hotspots and lines disappear

**Status:** Fully intact. CSS + JS implemented (lines 398-446 + JS functions).

### 3. PM Action Dashboard

- ✓ Right rail (420px wide)
- ✓ Four cards adapted for customer demo context:
  1. Customer profile (Decision 1)
  2. Success trigger (Decision 2)
  3. Incident story source (Decision 3)
  4. Narrative testing (Decision 4)
- ✓ Each card: numbered anchor + who to meet + why + sample questions + decision you own

**Status:** Fully intact. The four cards directly map to NEXT-STEPS.md four decisions.

### 4. Light/dark theme with dashboard palette

- ✓ Toggle button (sun/moon icons)
- ✓ `body.dashboard-light` class swaps all `--bg-*`, `--text-*`, `--border-*` tokens
- ✓ Cream paper palette for light mode
- ✓ Persists to localStorage

**Status:** Fully intact. CSS vars + JS toggle (lines 211-225, ~540-580).

### 5. Fidelity banner check matrix

- ✓ 6 items with `× / ~ / ✓` markers:
  - Tokens (real Apex) — ~
  - apx-* components — ~
  - schema.json contract — ~
  - Customer profile locked — ✕
  - Success criteria defined — ✕
  - Live data binding — ✕

**Status:** Fully intact. Diagnostic, not just a tier label.

### 6. Beta pill in topbar

```html
<span class="beta-pill">● Alpha (RACE) · Phase 2 · Customer Demo [DRAFT]</span>
```

**Status:** Fully intact. Shows phase context inline.

### 7. User chip with avatar

```html
<div class="user-chip">
  <div class="user-avatar">R</div>
  <div>
    <div class="user-name">Raj D.</div>
    <div class="user-role">PM · Alpha engine</div>
  </div>
</div>
```

**Status:** Fully intact. Shows who the demo is for.

---

## Summary of what changed vs. what stayed

### Changed when Beth said "Tier 1":

| What | Before | After |
|------|--------|-------|
| Fidelity flag | `Tier 2 · Structural` | `Tier 1 · Concept` |
| Banner stripe | Orange (`.tier2` class) | Red (default `.fidelity-banner`) |
| Banner label | "Structural fidelity" | "Concept fidelity" |
| Tier pills | 2 filled (orange) | 1 filled (red) |
| Tier count | `2 / 3` | `1 / 3` |

### Unchanged (all "nice things" intact):

- ✓ Phase lineage strip (3 phases, full nuance, Jira refs)
- ✓ Review Mode (toggle, hotspots, leader lines, interactions)
- ✓ PM Action Dashboard (4 cards, hotspot linkage)
- ✓ Light/dark theme toggle
- ✓ Fidelity banner check matrix (6 items, honest gaps)
- ✓ Beta pill showing "Phase 2 · Customer Demo [DRAFT]"
- ✓ User chip (Raj D. · PM · Alpha engine)
- ✓ Topbar breadcrumbs
- ✓ All main content (metrics, incident list, narrative sections)

**Nothing was removed.** Only the tier declaration changed (Tier 2 → Tier 1).

---

## What needs updating (docs only)

| File | Line(s) | Current text | Needs to say |
|------|---------|--------------|--------------|
| **HANDOFF.md** | 21-23 | "Phase 2 is Tier 2 (structural fidelity)" | "Phase 2 is Tier 1 (concept) with structural additions" |
| **HANDOFF.md** | ~15 (header) | "Structural fidelity (Tier 2)" | "Concept fidelity (Tier 1)" |
| **CLAUDE.md** | Table row | "Tier 2 fidelity banner · Orange stripe" | "Tier 1 fidelity banner · Red stripe" |

**Shell HTML:** ✓ Already updated. Matches brief `gate: 30`.

---

## List for Beth: Add/Change decisions

Nothing needs to be added to the shell — all structural elements are present.

**Docs that need alignment:**

1. ☐ **HANDOFF.md line 21-23** — Update "Phase 2 is Tier 2" → "Phase 2 is Tier 1 with structural additions"
2. ☐ **HANDOFF.md line ~15** — Update subtitle "Structural fidelity (Tier 2)" → "Concept fidelity (Tier 1)"
3. ☐ **CLAUDE.md table** — Update Tier 2 banner row → Tier 1 banner row

**Questions that need answers:**

4. ☐ **Q: Phase 2 tier vs. structure** — Are the new elements (lineage, dashboard, review mode) what make it "Phase 2," or is Phase 2 a tier progression?
5. ☐ **Q: When does Phase 2 hit Tier 2?** — After 4 decisions answered + build runs, or does it stay Tier 1 through customer demo?
6. ☐ **Q: Tier per phase or per build?** — Can Phase 2 start at Tier 1 and upgrade to Tier 2, or is the phase tied to a tier?

**Shell changes (optional):**

7. ☐ Consider whether "Concept fidelity" label should say something more specific like "Concept with structural additions" to clarify Phase 2 vs. Phase 1
8. ☐ Consider whether the 6 fidelity checks need reordering or relabeling for customer demo context (currently: tokens, components, schema, profile, criteria, data binding)

Nothing is broken. The phases are intact. The nice things are all there. Just docs/labels need alignment.
