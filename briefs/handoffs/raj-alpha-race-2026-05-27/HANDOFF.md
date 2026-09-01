# Handoff — Alpha RACE Customer Demo · Phase 2

**For:** Raj Dhesi · **From:** Beth (via Band Protocol pipeline) · **Date:** 2026-05-27

---

## What this is

A working prototype brief + Phase 2 structural shell for the Alpha RACE customer-facing demo. The pipeline ran scout → spec and stopped. Brief is DRAFT at 65% [A]/[?] — above the 30% threshold for build. This packet hands off everything the next Claude session (and Raj) needs to make the four decisions that unlock the build.

---

## What Phase 2 adds over Phase 1

Phase 1 (PUT-1166) shipped 2026-05-12 as a Black Team MDR analyst tool with a Bradley rail — a right-side readiness panel that gave PM/Design a read on the prototype.

**Phase 2 replaces the Bradley rail with the PM Action Dashboard.**

Structural additions from Alaina Schneider's anatomy (`alpha-race-phase2-anatomy.html`):

### Tier 2 fidelity banner
Orange stripe across the top. Phase 1 was Tier 1 (concept). Phase 2 is Tier 2 (structural fidelity — layout and information architecture are defined, UI polish is not). The banner is honest declaration: show this for alignment, not as shipped design.

Two orange pips lit (Tier 2). The third pip lights when it reaches Tier 3 (high fidelity / pre-production).

### Phase lineage strip
Below the fidelity banner. Three steps: **Phase 1 (PUT-1166, done)** → **Phase 2 (this prototype, active)** → **Phase 3 (TBD, planned)**. Jira refs live in the strip (ADL-1836, ADL-1837, PUT-1166). The strip is a timeline provenance record — anyone opening the file sees where it came from and where it's going.

### PM Action Dashboard
The right rail. Not a PM's read on the prototype (that was Bradley). A structured set of cross-functional decisions that must be made before Phase 2 ships. Six cards in Alaina's anatomy (for the analyst tool); this packet's shell has four cards adapted for the customer demo context.

Each card has:
- A numbered anchor (matches a hotspot on the prototype)
- Who to meet with
- Why this meeting
- Sample questions to bring
- The decision you own coming out

### Review Mode
Toggle button (top right of prototype). When on: numbered hotspot circles appear on the prototype surface. An SVG leader-line layer draws Bezier curves from each hotspot to its matching dashboard card. Click a hotspot → dashboard card scrolls and highlights. Hover a card → matching hotspot pulses. Turn Review Mode off → all hotspots and lines disappear, prototype reads clean.

The review mode is a meeting tool. Run it with Alaina, Julian, or Raj before the customer demo.

### Light / dark theme
`body.dashboard-light` class swaps all `--bg-*`, `--text-*`, and `--border-*` tokens to a cream paper palette. Persists across page reloads via `localStorage`. Both themes are fully styled.

---

## Brief status — why it stopped

The brief is at 65% [A]/[?]. That number is grep-verified [CS: VERIFIED] — count from the actual `alpha-race-customer-prototype.brief.md` file, not self-reported.

| Claim type | Count | % |
|-----------|-------|---|
| [R] Research / sourced | 9 | 35% |
| [D] Data | 0 | 0% |
| [A] Assumed | 12 | 46% |
| [?] Unknown | 5 | 19% |
| **[A] + [?] total** | **17** | **65%** |

Band Protocol threshold: >30% [A]/[?] = not ready. Name it before building.

**Where the holes are:**

- **Gate 1** (problem real and sourced?): Problem is sourced from ADL-1839. Magnitude, frequency, and customer impact are assumed. No customer interviews or analyst time studies cited. [CS: VERIFIED]
- **Gate 2** (right thing?): Target customer profile is undefined. Whether prototype will be effective as a sales tool is [A]. The strategic intent is clear; the audience is not.
- **Gate 3** (built right?): Almost entirely [?]. Success criteria are undefined. Testing approach is undefined. Done definition is undefined. This is the biggest gap.

---

## What build-ready requires

"Build-ready" means the brief drops below 30% [A]/[?] and Gate 3 is defined well enough to test against.

**Currently: 65% [A]/[?] → 17 claims unresolved.**

The four decisions below resolve an estimated 12–14 of those 17 claims [CS: MEDIUM — count estimate, not grep-verified]. Residual after answering: ~15–20% [A]/[?], which is below threshold and build-ready.

### Decision 1 — Which customer?

Resolves ~4 Gate 2 and Gate 3 unknowns:
- Is customer target profile defined? [?] → resolves
- Is prototype for one customer or reusable? [A] → resolves
- What decision does customer make after seeing this? [?] → partial
- Whether "demonstrating correlation → customer value perception" is [A] → can now test

**What you need:** Company vertical + size + current tooling + buying stage. (Not the real customer name — use a fictional proxy in the prototype.)

### Decision 2 — What does the demo need to trigger?

Resolves all of Gate 3 success criteria (currently 3 [?] claims):
- Customer comprehends incident story in <X minutes [?] → define X
- Customer can articulate value prop back [?] → define what counts
- Prototype triggers follow-up / pilot commitment [?] → define the ask

**What you need:** One sentence: "This demo succeeds when ___."

### Decision 3 — Incident story source

Resolves ~3 Gate 3 claims about prototype content:
- Before view: how many individual alerts? What types? [?] → define
- Real Alpha output vs. Beth-designed synthetic? [A] → lock
- Does synthetic data map to this customer's environment? [A] → resolves

**What you need:** Either (a) real Alpha correlation output from Raj, or (b) confirmation that Beth designs synthetic content mapped to the chosen customer's industry.

### Decision 4 — Has "what/why/next" been tested?

Resolves the narrative assumption that runs across Gate 1 and Gate 3:
- "Narrative format is sufficient for comprehension" is [A] throughout
- If it has been tested (even informally with one analyst): [A] → [R], brief strengthens

**What you need:** Yes/no + who saw it + how they responded. If never tested: that's honest, and the brief stays [A] with a note.

---

## What the pipeline does after you answer

```
Raj + Beth answer the four decisions
  → spec re-runs (Gate 3 defined, [A] → [R] where evidence exists)
    → critic pre-build (6-dimension scorecard)
      → build (full customer demo HTML, Phase 2 structure, content locked)
        → critic post-build (re-score vs. pre-build)
          → handoff packet refreshes
```

Estimated cost: one FEAST session.

---

## The prototype that exists

`alpha-race-apex.html` (Phase 1) is in `/Users/elizabeth/Desktop/Bethproto/prototypes/`. It has:
- A 94-score lateral movement incident ("Acme Bldg Supply" — fictional, correct per Pete Hegseth rules)
- The what/why/next narrative structure
- A Bradley rail (Phase 1 readiness panel)
- Tier 1 fidelity banner

The Phase 2 shell in this packet (`alpha-race-phase2-shell.html`) upgrades the structural framework. When the four decisions are made, the full build will:
- Fill the [DRAFT] content placeholders with locked content
- Replace fictional "Acme Bldg Supply" with a fictional proxy for the actual customer's industry
- Lock the PM Action Dashboard cards to final decisions

---

## Governance notes for Raj

**The 47% rule:** The brief says 65% [A]/[?]. That number was grep-verified before shipping this packet. If you see a ratio anywhere in this packet and wonder if it's right — verify it. The prior ACP handoff shipped a stat the spec got wrong. Grep is truth.

**Seed data:** "Acme Bldg Supply" is the current fictional company. If you swap it for something more industry-realistic, keep it fictional. Real company names from your customer list do not go into prototype HTML.

**[CS:] tags:** Every factual claim in this packet is tagged. `[CS: VERIFIED]` means it was checked against source. `[CS: MEDIUM]` means plausible but not directly confirmed. Trust the tag, not the fluency.

---

*Bradley · this is a read on the brief and the handoff, not a verdict on Alpha.*
→ Four decisions. Then the work routes.
→ Bring Raj, Beth, and Alaina into the room before the customer demo ships.
→ Next pipeline run: when the four answers land.
