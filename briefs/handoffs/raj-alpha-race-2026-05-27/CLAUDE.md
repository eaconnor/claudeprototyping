# CLAUDE.md — Alpha RACE Customer Demo · Phase 2 Handoff

Orientation for any Claude session opening this folder. Read this before anything else.

---

## 1. Who you serve

**Raj Dhesi** — Alpha engine owner, assigned ADL-1839. You know this product from the inside. This packet is a design/PM handoff, not a technical brief.

**Beth Schwindt** is the originating designer. Edits route back to Beth.

**Alaina Schneider** owns Phase 2 design. The PM Action Dashboard structure and hotspot/leader-line pattern come from her anatomy doc (`alpha-race-phase2-anatomy.html`).

This brief is for a **customer-facing sales demo** — not an analyst tool. The target is an external customer evaluating Alpha RACE as a purchasing signal.

---

## 2. Pipeline state

```
scout (ADL-1839 + Beth handoff)
  → spec (.brief.md · DRAFT · 65% [A]/[?])
    → ← STOPPED HERE
```

**Brief is written. Brief is not ready for full build.**

Band Protocol threshold is 30% [A]/[?]. Current: 65% (grep-verified). Gate 3 — success criteria, testing approach, done definition — is almost entirely undefined.

**What's in this packet:**
- `alpha-race-phase2-shell.html` — Phase 2 structural framework (Tier 2 banner + lineage + PM Action Dashboard + Review Mode). Content is [DRAFT] pending the four decisions below.
- `alpha-race-customer-prototype.brief.md` — The three-gate brief as written. All claims tagged.

The shell is not a finished prototype. It exists so the next session has a working structural foundation and can fill in content once the four decisions are made.

---

## 3. What Phase 2 adds over Phase 1

Phase 1 (PUT-1166, Black Team MDR) shipped 2026-05-12 with a Bradley rail.
Phase 2 (this prototype) replaces the Bradley rail with the PM Action Dashboard pattern.

| Element | What it is |
|---------|-----------|
| **Tier 2 fidelity banner** | Orange stripe · structural fidelity, not UI polish |
| **Phase lineage strip** | Done → Active → Planned + Jira ticket refs |
| **PM Action Dashboard** | Numbered action cards with hotspot ↔ card linkage |
| **Review Mode** | Toggle → hotspot circles appear on prototype → SVG leader lines to cards |
| **Light / dark theme** | `body.dashboard-light` class swaps all palette tokens |

The shell HTML applies all of these. The PM Action Dashboard cards are adapted for the customer demo context (not the analyst tool decisions in the anatomy).

---

## 4. Four decisions before full build

These cannot be made by spec, build, or this Claude session.

| # | Decision | Who |
|---|---------|-----|
| 1 | **Which customer?** Industry, size, current tooling, buying stage | Beth + Raj |
| 2 | **What does the demo need to trigger?** Next meeting? Pilot commit? Expansion? | Beth + Sales |
| 3 | **Incident story source** — real Alpha output or Beth-designed synthetic? | Raj |
| 4 | **Has "what/why/next" been tested** with any analyst or customer? | Raj + Research |

Send answers to Beth. Spec re-runs → build runs → critic runs → packet refreshes.

---

## 5. Files in this folder

| File | What it is |
|------|-----------|
| `README.md` | Reading order + what's testing here |
| `HANDOFF.md` | Full handoff: Phase 2 anatomy, brief status, build-ready answer |
| `NEXT-STEPS.md` | Four decisions + pipeline re-run plan |
| `alpha-race-rail.md` | PM Action Dashboard as portable markdown (same content as shell right panel) |
| `alpha-race-customer-prototype.brief.md` | Three-gate brief — DRAFT, 65% [A]/[?] |
| `alpha-race-phase2-shell.html` | Phase 2 structural shell — DRAFT content, open in browser |
| `scout/` | Source doc refs (ADL-1839 ticket context) |

---

## 6. Governance

**[CS:] tags** — every factual claim in this packet. `[CS: VERIFIED]` / `[CS: HIGH]` / `[CS: MEDIUM]` / `[CS: LOW]` / `[CS: FABRICATION RISK]` / `[CS: UNKNOWN]`

**47% rule** — any ratio or count in a handoff must be grep-verified before quoting. The 65% [A]/[?] in this packet is grep-verified against the brief. [CS: VERIFIED]

**Seed data rules** — all customer names, company names, tenant data in prototypes must be fictional. Pete Hegseth test: if you wouldn't want it public, it doesn't go in a prototype. "Acme Bldg Supply" is the fictional company name in the existing prototype.

**Three-gate brief** — Gate 1 (problem real and sourced?) / Gate 2 (right thing?) / Gate 3 (tested how? by whom? what counts as done?). Claims: `[R]` Research · `[D]` Data · `[A]` Assumed · `[?]` Unknown. >30% [A]/[?] = not ready.

**Response sizing** — BITE (1–2 sentences) · SNACK (3–5 sentences) · MEAL (complex reasoning) · FEAST (coding). State tier + cost at MEAL or FEAST.

---

## 7. What to do when Raj opens this in Claude

**"What is this?"** → `README.md` → `HANDOFF.md` → open `alpha-race-phase2-shell.html` in browser.

**"What do I need to decide?"** → `NEXT-STEPS.md`. Four calls.

**"I have the incident story"** → Open `alpha-race-phase2-shell.html`. Find `[DRAFT: incident story]` placeholders in the main content area. Replace with real/synthetic content following Pete Hegseth rules.

**"Update the brief"** → Open `alpha-race-customer-prototype.brief.md`. Edit in place. Maintain claim tags. If an assumption resolves, flip `[A]` → `[R: source]`.

**"Run the full pipeline"** → Originating project is at `/Users/elizabeth/Desktop/Bethproto/`. Ping Beth to run.

---

## 8. Out of scope

- Making the four decisions for Raj or Beth
- Using real customer names or company names in prototype seed data
- Shipping the shell as final design — it is Tier 2 structural fidelity
- Building the analyst tool (that's Phase 1 / ADL-1836); this is the customer-facing surface
