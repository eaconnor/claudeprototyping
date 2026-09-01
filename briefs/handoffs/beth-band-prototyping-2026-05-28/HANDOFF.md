# Handoff — Band Protocol + Prototyping Tool

**To:** Beth Schwindt (future session)
**From:** 2026-05-28 session
**Date:** 2026-05-28
**Status:** Skill complete for lo-fi · Hi-fi doc gap remains

---

## What this session built

### 1 · SKILL.md updates (`.claude/skills/prototype/SKILL.md`)

The skill grew from a flat pipeline spec to a tiered, council-aware, fidelity-disciplined build system. Today's additions, in order:

| Addition | What it does |
|---|---|
| **Step 0 intake** | Asks lo-fi vs. hi-fi and audience before scout runs. Lo-fi is the default nudge. |
| **Three-number math** | Reports world-claims / test-plan / inflated ratios separately. Prevents 47%-type errors. |
| **Apex Bridge token contract** | `--br-*` tokens required for all ACP prototypes. Inter + JetBrains Mono. Light/dark toggle. |
| **Bradley rail surface spec** | Violet-tinted bg, 4px brand-accent border, inset glow. Visibly distinct from app surface. |
| **44-voice council** | Points to `briefs/methods-library-matrix.md`. 14 clusters, tier-gated activation (≥6/≥11/all). |
| **Owensing format** | 6-field per voice: Sign · Hypothesis · Kill criterion · Force level · Evidence · Cannot see. |
| **Cross-talk requirement** | 3 mandatory moves: Direct response · Blind-spot supply · Productive tension. New claims only. |
| **Click-into council cards** | HTML/CSS/JS spec for the prototype's council modal surface. |
| **Doblin org-position scoring** | Two-column: brief-as-written vs. latent capabilities. Headwinds named. No lecture. |
| **Multi-page nav pattern (lo-fi)** | Vanilla JS show/hide. `navigate(name)` swaps pages, updates crumb + sidebar. |
| **Hi-fi reference** | `prototypes/acp-v1/index.html` named as the hi-fi standard. Lo-fi is default. |

**Current SKILL.md:** 819 lines (grep-verified). Healthy and shippable. The lo-fi pipeline is fully documented.

### 2 · acp-headless prototype rebuilt (`prototypes/acp-headless/index.html`)

Nicole's ACP Headless rerun. 5 pages (Dashboard, Coworkers, Runbooks, Audit Trail, Tenants). `--br-*` tokens from acp-v1. Violet Bradley rail. Click-into council with 9 voices, owensed format, 3 cross-talk moves. Ten Types re-scored with N-able latent capabilities. Beth ratified: "I think you got it. It is multi-tab now."

### 3 · Nicole handoff (`briefs/handoffs/nicole-acp-headless-2026-05-28/`)

Complete pipeline packet for Nicole. Not this session's continuation point — Nicole owns those decisions.

### 4 · Raj Claude handoff (`briefs/handoffs/claude-acp-v1-skill-extension-2026-05-28/`)

A packet addressed to the Claude session that built acp-v1, documenting 14 patterns from that prototype that the skill doesn't yet absorb. Contains:
- COMPONENT-INVENTORY.md — 14 patterns with line numbers
- SKILL-DIFF.md — 9 drafted additions, ready to apply
- acp-v1-reference.html — the hi-fi prototype (4,675 lines)
- acp-headless-current.html — today's lo-fi prototype (~1,650 lines)
- Three structured calls with options

**This packet IS the work queue for the Band/prototyping tool continuation.**

---

## Current gap: hi-fi is named, not documented

The skill says "hi-fi means acp-v1" but doesn't say *how to build acp-v1*. A Claude session asked to produce hi-fi output must currently re-derive the component library, icon catalog, wizard pattern, modal management, and page-as-function routing from scratch or by reading the 4,675-line reference file.

The SKILL-DIFF.md additions close this gap. Nine additions, ~250 lines total, skill grows to ~1,000 lines.

---

## The three calls

### Call 1 · Apply SKILL-DIFF.md (unblocked — apply any time)

Read `briefs/handoffs/claude-acp-v1-skill-extension-2026-05-28/SKILL-DIFF.md`. Nine additions:

1. Hi-fi component library table (`apx-*` contract)
2. ICON catalog rules (lucide.dev, stroke="currentColor", size matrix)
3. ModeManager upgrade (2-way → 3-way: light/dark/system, localStorage)
4. Wizard pattern documentation (5-pane, stepper, commit-and-route)
5. Modal management (`openModal`/`closeModal`, variants, ESC/backdrop)
6. Micro-charts (`miniBarChart`, `miniSparkline`, `miniDonut` — pure SVG, no library)
7. Multi-page pattern split by tier (lo-fi: show/hide · hi-fi: page-as-function)
8. Fidelity banner check matrix (6 items, ×/~/✓, 3 pip tier indicator)
9. Optional: `<apx-council>` custom element spec (see call 3)

**To execute:** tell Claude "apply the SKILL-DIFF.md additions to SKILL.md" and point to the packet. Claude can edit SKILL.md directly.

### Call 2 · Component extraction strategy (Beth's call)

The six `apx-*` web components (sidebar, productbar, card, badge, table, loader) live inline in `prototypes/acp-v1/index.html`. Three options:

- **A — Stay inline, copy to new prototypes.** Pro: self-contained. Con: drift.
- **B — Extract to `prototypes/_components/apx-bridge.js`.** Pro: single source of truth. Con: a change breaks all dependents.
- **C — Document the contract in the skill, leave implementation flexible.** Pro: discipline without coupling. Con: still duplication.

**Recommendation:** C now, B when a second hi-fi prototype gets built and the components have proven stable across two files.

No Claude decision needed — this is architecture, not writing. Beth decides when it matters.

### Call 3 · `<apx-council>` custom element (optional, scope risk)

The click-into council currently ships as ~400 lines of inline HTML + ~30 lines of JS + ~150 lines of CSS in every hi-fi prototype. Building `<apx-council>` as a proper web component would reduce every future prototype's council section to:

```html
<apx-council voices='[...]' cross-talk='[...]'></apx-council>
```

**If built:** Add Addition 9 from SKILL-DIFF.md. Component spec is already drafted.
**If deferred:** Inline pattern stays canonical; every prototype copies and adapts.

**Scope note:** This is a session's worth of work on its own. Don't start it in the same session as Call 1.

---

## Core principle — cooperation, not automation

The Band Protocol is a **cooperation tool**. It starts with PMs (they drive prototyping and readiness decisions) but many people contribute — designers for user-centered decisions, researchers for evidence, engineers for feasibility, strategists for positioning.

- **Routing cards** (Product · Design · Research · Eng) are the structural form of multi-contributor cooperation — each card carries the right question to the right human.
- **Design** owns user-centered decisions — the tool surfaces the tension, the designer resolves it.
- **Council tensions** are named and routed, never resolved. The council is evidence; the PM is the judge.
- **The synthesis slot** in the council summary is always `[0% Claude — fill this in]` — that sentence is the PM's job.
- **Attribution (X% PM)** centers the human as author.

**Why the 44-voice council exists — clash detection.** Before you commit resources to building something, run the idea through 44 analytical traditions and find where they disagree. JTBD says users want to reduce doing. SDT says users want to retain felt competence. Both sourced. That clash, undetected, builds the wrong product confidently. The council surfaces it. A human resolves it. Cross-talk is the mechanism — more voices = more surface area for finding where the idea breaks.

This principle should survive every future session that touches the skill. If a feature makes the tool more autonomous and less routing-oriented, it is moving in the wrong direction.

---

## What is stable and should not be touched

- The 44-voice council library in `briefs/methods-library-matrix.md`
- The owensing format (6 fields, fixed)
- Cross-talk requirement (3 mandatory moves)
- The fidelity tier system (lo-fi / hi-fi, Step 0 intake)
- The 47% rule and three-number math
- Bradley rail surface spec (violet-tinted, 4px border, inset glow)
- Nicole's four open calls (her decisions, not ours)

---

## File map

```
.claude/skills/prototype/SKILL.md          ← the skill (769 lines, lo-fi complete)
prototypes/acp-v1/index.html               ← hi-fi reference (4,675 lines)
prototypes/acp-headless/index.html         ← lo-fi reference (~1,650 lines)
briefs/methods-library-matrix.md           ← 44-voice council library
briefs/handoffs/
  beth-band-prototyping-2026-05-28/        ← this packet
  claude-acp-v1-skill-extension-2026-05-28/ ← Raj Claude packet (work queue for SKILL extension)
  nicole-acp-headless-2026-05-28/          ← Nicole's prototype handoff (her lane)
```

---

**The 47% rule:** Stats above verified against source files. SKILL.md is 819 lines (grep-verified). Raj Claude packet contains 8 files. acp-v1 is 4,675 lines per the COMPONENT-INVENTORY.md header.

Lucy holds the clipboard. Work for Beth, not the vendor.
