# Critic Pass 2 — Post-Build Re-Score
**Brief:** ACP Control Plane + QBR Native (July 2026 Rerun)
**Prototype:** `prototypes/acp-headless-v2/acp-headless-v2.html`
**Fidelity:** Tier 1 · Concept
**Date:** 2026-07-21
**Scorer:** Critic (post-build)
**Pass 1 total:** 24/30

---

## Delta Table — Pass 1 vs. Pass 2

| # | Dimension | Pass 1 | Pass 2 | Delta | What changed |
|---|-----------|--------|--------|-------|--------------|
| 1 | Problem clarity | 4/5 | 4/5 | → | Build surfaces the narrowed scope persistently (data sources strip, journey map stage 02, scope panel). Brief's problem statement gap unchanged. |
| 2 | Evidence quality | 4/5 | 4/5 | → | No new evidence in the build. SEED badges correct. Reineke claim still secondhand and load-bearing. |
| 3 | Test design | 3/5 | 3.5/5 | ↑ | 15-min edit path labeled on button surface (`⚠ P0 assumption [A ~35%]`). Research routing card names verbatim exit-quote collection and counter-signal. Facilitation protocol still absent: no prompt wording, no facilitator, no timing. Half-credit. |
| 4 | Audience fit | 4/5 | 4/5 | → | Build calibration to governance/security lens is strong. Council roster still [A] — unconfirmed. |
| 5 | Failure mode visibility | 5/5 | 5/5 | → | All four failure modes on the surface. Governance thesis label load-bearing and correctly placed. Score holds. |
| 6 | Scope discipline | 4/5 | 5/5 | ↑ | All four "must show" items present and sequenced via journey map spine. N-able-native scope persistent across five distinct surface labels. Edit path shown as assumption, not promise. |

**Pass 2 total: 24.5/30**
*(Dimension 3 scored 3.5 — half-point is real; not rounded without the facilitation protocol.)*

---

## Dimension Scores

| # | Dimension | Score | Justification |
|---|-----------|-------|---------------|
| 1 | Problem clarity | 4/5 | Build surfaces the narrowed scope persistently. Brief's problem statement still doesn't foreground N-able-native vs. cross-vendor as the core distinction. Visual fix, brief gap remains. |
| 2 | Evidence quality | 4/5 | No new evidence in the build. SEED badges correct. Reineke claim still secondhand and still load-bearing for a governance audience. |
| 3 | Test design | 3.5/5 | P0 assumption labeled on the surface — real improvement. Research routing card names counter-signal and exit-quote collection. Facilitation protocol still absent: no prompt wording, no named facilitator, no timing, "unprompted" still undefined in procedure. |
| 4 | Audience fit | 4/5 | Build calibration to governance/security lens is strong. EU AI Act date in footer, compliance owner in critical red, governance strip thesis-labeled. Roster unconfirmed. |
| 5 | Failure mode visibility | 5/5 | All four failure modes present on the surface. "NOT A REPORT TOOL — THIS IS THE THESIS" directly addresses the primary failure mode. Score holds. |
| 6 | Scope discipline | 5/5 | All four "must show" items present and ordered via journey map spine. N-able-native scope persistent. Edit path labeled as assumption. |

---

## Punch List — Post-Build

**PASS:** 15-minute edit path assumption visible on the prototype surface — `⚠ P0 assumption [A ~35%]` adjacent to Edit QBR button. Council cannot evaluate it without seeing it.

**PASS:** Governance layer labeled explicitly as the thesis. "NOT A REPORT TOOL — THIS IS THE THESIS" on the governance section header. Addresses the primary failure mode from the brief.

**PASS:** N-able-native scope is persistent — data sources strip, journey map stage 02, scope panel in governance strip, package nav (QBR Cross-Vendor marked NOT STARTED), sidebar footer. Five distinct surface labels.

**PASS:** EU AI Act enforcement date (2026-08-02) in sidebar footer with compliance owner in `var(--critical)` red. The gap is visible before anyone asks.

**PASS:** 46% [A]+[?] score block in the Bradley rail, grep-verified math displayed, threshold warning visible.

**PASS:** 7-tension council modal present. Tensions substantive, non-synthesized, contradictory. Synthesis block correctly "[0% Claude — fill this in]."

**PASS:** SEED badges on all fictional data. No real tenant names. Pete Hegseth test passes.

**PASS:** Design system — Inter + JetBrains Mono loaded, `:root` token block complete, three-surface distinction maintained, 4px violet rail border + inset glow.

**FAIL:** 3-way mode toggle does not persist to `localStorage` key `apx-mode-pref`. `setTheme()` sets `data-theme` on `html` but contains no `localStorage.setItem()` call. Preference resets on reload.

**FAIL:** Topbar is not dark in both modes. Light theme sets `--topbar-bg: #f6f8fa` — light gray, not dark. Apex Bridge spec requires topbar dark in both modes.

**FAIL:** `--radius-lg: 10px` — Apex Bridge caps at 8px. Minor design system deviation on QBR card and governance strip.

**FAIL:** Facilitation protocol still absent. Research routing card tells someone to collect verbatim exit quotes but names no facilitator, no timing, no exact prompt wording, no method for distinguishing unprompted from prompted articulation. OKR is not operationalizable without this.

**MISSING:** Test prompt wording. OKR requires "unprompted articulation." No script line, no session structure, no timing guidance.

**MISSING:** Council roster confirmation. Audience is [A]. If the actual room is engineering-lens, the prototype calibration misfires.

**RISK:** Reineke licensing claim ([CS: MEDIUM], secondhand) absent from prototype surface — correct. But if a council member asks for the primary source, there is no artifact to show. Named as live session risk.

**RISK:** Council modal synthesis block reads "[0% Claude — fill this in]" — correct protocol, reads as incomplete if opened during the walkthrough. Pre-fill or hide until post-session. No instruction exists in the prototype or rail.

---

## What the Build Resolved from Pass 1

| Pass 1 FAIL/MISSING | Resolution status |
|---------------------|------------------|
| Test protocol missing — who captures, when, what prompt | PARTIAL — verbatim quote collection named in routing card; prompt wording and facilitator still absent |
| 15-minute edit path P0 and unowned | RESOLVED — labeled on button surface with confidence tag |
| Four "must show" items unsequenced | RESOLVED — journey map provides structural sequence |
| Test prompt wording missing | UNRESOLVED |
| Council roster unconfirmed | UNRESOLVED |

---

## Design System Compliance — Pass 2

| Check | Status | Note |
|-------|--------|------|
| `:root` token block present | PASS | All required tokens present |
| Inter + JetBrains Mono via Google Fonts | PASS | Both loaded |
| `--radius-*` system used | PARTIAL | `--radius-lg: 10px` — should be 8px |
| Soft shadows only | PASS | No Bauhaus hard offsets |
| Three distinct surfaces | PASS | Topbar / app canvas / rail visually distinct |
| Topbar dark in both modes | FAIL | Light theme topbar is `#f6f8fa` — not dark |
| 3-way mode toggle present | PASS | Present and functional |
| `localStorage` persistence (`apx-mode-pref`) | FAIL | Not implemented |
| No Itten palette / no ad-hoc colors | PASS | No vermillion/ochre/ultramarine |

---

*End of Pass 2 scorecard. 2026-07-21.*
