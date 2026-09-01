# Alpha RACE Lo-Fi Prototype — Reading Order

**Project:** Alpha RACE Customer Demo (Tier 1 Concept)  
**Owner:** Beth Schwindt  
**Created:** 2026-05-29  
**Fidelity:** Tier 1 (30% stakeholder/exec review)

---

## What's testing in this packet

Does consolidating 47 alerts → 12 incidents communicate value to customer buyers (CISOs, IT Directors) in a 30-second read?

**Target audience (internal stakeholder review):** Carla, Nicole, Zachary  
**Target audience (NOT READY for):** Customer demo without Decision 1-4 resolution + SE narration

---

## Reading order

1. **This file (README.md)** — You are here. Sequencing guide.

2. **HANDOFF.md** — Grep-verified findings. Three sections:
   - What the math actually says (58% [A]+[?] verified)
   - Three productive tensions from council (JOBS×SDT, SIGN×JRNY, PORT×POS)
   - Three calls (decisions Beth must make, with names and timelines)

3. **NEXT-STEPS.md** — Four blocking decisions + pipeline re-run plan. This is the "what happens next" artifact.

4. **index.html** — Working prototype. Open in browser. Click "Council · 44 voices" button for tensions modal. Click "Rail" toggle to show/hide Bradley rail.

5. **alpha-race-rail.md** — Bradley rail as portable markdown (readable without opening HTML). Includes readiness score (21/30 — NOT READY), routed cards (Product/Design/Research/Eng), and honest Unknown ROI.

6. **alpha-race.brief.md** — Full three-gate brief with [R]/[D]/[A]/[?] tagging. Self-reported 58% [A]+[?] evidence ratio. Four blocking decisions named in Gate 3 section.

7. **critic-pass-1.md** — Pre-build scorecard (24/30). Coherence strong, source-fidelity weak. Punch list identifies missing decisions before build.

8. **critic-pass-2.md** — Post-build re-score (26/30, +2 net gain). Coherence and demo-ability strengthen. Risk drops due to fidelity banner placement risk and unvalidated CISO content.

9. **council-testimony.md** — Full 45-voice council pass. 14 clusters (7 full owensing, 7 abbreviated). 3 productive tensions in cross-talk section. Testimony itself is 91% [A]+[?] (voices speculating about brief's gaps). Executive summary at top.

10. **Optional:** `../../alpha-race-math-recount.md` (parent directory) — Honest math discipline. Three-ratio breakdown (world-claims / test-plan / inflated-with-meta). Explains variance between 58% (generous floor) and 68.5% (strict count).

---

## How to open the prototype

1. Navigate to this folder in Finder: `briefs/handoffs/beth-alpha-race-lo-fi-2026-05-29/`
2. Double-click `index.html` to open in browser
3. Click "Council · 44 voices" button (topbar) to see tensions modal
4. Click "Rail" toggle (topbar) to show/hide Bradley rail
5. Use light/dark/system mode toggle (topbar) to test theme parity

**Fidelity checks visible in banner:**
- ✓ Apex Bridge token set
- × apx-* components (not implemented at T1)
- ~ schema.json contract (outlined, not enforced)
- ~ A11y baseline (partial)
- × Production data binding (seed data only)
- ✓ Light / dark parity

---

## What's in each artifact

| File | Purpose | Evidence ratio | Length |
|------|---------|----------------|--------|
| HANDOFF.md | Verified findings, three calls | 100% grep-verified stats | ~1,200 words |
| NEXT-STEPS.md | Decisions only Beth can make | N/A (decision routing) | ~800 words |
| alpha-race.brief.md | Three-gate brief, claim-tagged | 58% [A]+[?] world-claims | ~3,500 words |
| index.html | Working prototype | Seed data stamped | 1,189 lines |
| alpha-race-rail.md | Bradley rail (portable) | Rail inherits brief ratio | ~1,000 words |
| critic-pass-1.md | Pre-build scorecard | N/A (scorecard) | ~500 words |
| critic-pass-2.md | Post-build delta table | N/A (scorecard) | ~900 words |
| council-testimony.md | 45 voices, 3 tensions | 91% [A]+[?] (testimony) | ~11,000 words |

---

## Handoff packet structure (Band Protocol standard)

Every completed prototype ships this structure:

```
briefs/handoffs/[recipient]-[project]-[date]/
├── CLAUDE.md              ← orientation (this session's context)
├── README.md              ← reading order (you are here)
├── HANDOFF.md             ← verified math, tensions, three calls
├── NEXT-STEPS.md          ← decisions only Beth can make
├── [project]-rail.md      ← Bradley rail (portable markdown)
├── [project].brief.md     ← three-gate brief, claim-tagged
├── index.html             ← working prototype
├── critic-pass-1.md       ← pre-build scorecard
├── critic-pass-2.md       ← post-build delta table
└── council-testimony.md   ← 45 voices, 3 tensions
```

**The 47% grep-gate:** All stats in HANDOFF.md are verified before handoff ships. Spec once self-reported 47%; grep showed 80%. Fluency does not know its own math. This packet passed the gate: lead number (58% [A]+[?]) is grep-verified against `alpha-race-math-recount.md` lines 99-101, 168.

---

**End of README.md. Start with HANDOFF.md next.**
