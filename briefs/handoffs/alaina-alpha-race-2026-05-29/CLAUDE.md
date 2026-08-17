# CLAUDE.md — Alpha RACE Handoff Packet for Alaina

**To:** Alaina (internal designer)  
**From:** Beth Schwindt  
**Date:** 2026-05-29  
**Packet type:** Design review handoff

---

## What this packet contains

This is a complete design review handoff for the **Alpha RACE Customer Demo** prototype (Tier 1 Concept). The prototype is a single-screen incident detail view showing alert consolidation (47 alerts → 12 incidents) with narrative transparency.

**Audience:** This packet is for Alaina (internal designer) to evaluate design tensions and validate whether the UI surfaces the tensions clearly enough for decision-making.

**Status:** Tier 1 Concept (30% fidelity) — appropriate for internal design review. NOT customer-ready until four blocking decisions resolve.

---

## Reading order

Start here:
1. **README.md** — Overview and reading order for first-time readers
2. **HANDOFF.md** — Verified math, tensions, and three calls
3. **alpha-race.brief.md** — Full three-gate brief with claim tagging
4. **index-alaina.html** — Working prototype (open in browser)
5. **alpha-race-rail.md** — Bradley rail as portable markdown
6. **critic-pass-1-fresh.md** — Pre-build scorecard
7. **critic-pass-2-alaina.md** — Post-build scorecard with delta table
8. **council-testimony-alaina.md** — 44-voice multi-framework analysis
9. **NEXT-STEPS.md** — Decisions pending and pipeline re-run plan
10. **scout/** — Source material (5 files)

---

## What decisions are pending

Four blocking decisions prevent progression past Tier 1:

1. **Decision 1: Customer profile** (Beth + Raj + Sales/CSM) — Vertical, endpoint count, SOC maturity, fictional proxy for content
2. **Decision 2: Success criteria** (Beth + Sales lead) — "This demo succeeds when ___" (one sentence)
3. **Decision 3: Incident story source** (Raj + Beth) — Real Alpha output (anonymized) or Beth-designed synthetic?
4. **Decision 4: Narrative format validation** (Beth + Research + 5-10 MDR analysts) — Does "What/Why/Next" format work for buyers (CISOs) vs users (analysts)?

**Until these resolve:** Prototype content remains placeholder ("Acme Building Supply [TBD]"). Evidence ratio stays at 58% [A]+[?] (above Band Protocol 30% threshold for full build).

---

## What Alaina is evaluating

Three design tensions from the brief:

1. **JOBS vs SDT** — Does override-logging feel like autonomy-support (competence) or surveillance (controlled-autonomy)?
2. **SIGN vs JRNY** — Can each section (Story / Timeline / Scoring) stand alone, or do they require linear reading?
3. **PORT vs POS** — Should fidelity signal "rough-edged Early Adopter" or "polished Early Majority"? Is the T1 banner shown to customer or hidden?

**Four validation tests for Alaina:**
- Comprehension test: Show "47→12" to 5 people (cold, 30 sec). Can ≥4 explain consolidation?
- Believability test: Does incident story look like real Alpha output or smell like design fiction?
- Reading order test: Remove one section at a time. Does Story-only work? Timeline-only? Scoring-only?
- Economic buyer test: Cover Story section. Do Timeline + Scoring address CISO concerns (cost, compliance, SLA)?

---

## Known gaps (named, not hidden)

- **Competitive map missing:** No feature parity analysis for CrowdStrike, Arctic Wolf, Huntress
- **Mode 3 ethnography absent:** No workflow observation of MDR analysts in situ
- **Economic buyer unmapped:** CISO/VP Security ROI concerns (cost-per-incident, audit logs, analyst retention) not addressed in current design
- **Success criteria undefined:** No north star for "this demo succeeds when ___"
- **Narrative format unvalidated:** "What/Why/Next" shipped to analysts (users). Showing to customers (buyers) is different claim requiring validation.

---

## How to use this packet in a Claude session

If you open this packet in a new Claude Code session:

1. **Tell Claude:** "I'm reviewing the Alpha RACE handoff packet for Alaina. Read HANDOFF.md first."
2. **For design questions:** "Reference the three design tensions in alpha-race-rail.md. How should I test Tension 2 (reading order)?"
3. **For context on decisions:** "Show me Decision 1 from alpha-race.brief.md. What's blocking?"
4. **For prototype changes:** "Open index-alaina.html. I want to test Tension 2 by hiding the Timeline section. Show me the edit."

This packet is self-contained. All source material is in `/scout/`. All analysis is in the root files.

---

## Attribution

**Prototype authorship:**
- Brief: 75% Beth, 25% Spec agent (Band Protocol pipeline)
- Build: 60% Beth (prior three-tier-test.html structure), 40% Build agent
- Rail content: 80% Beth (tensions from brief + council), 20% Bradley agent
- Council testimony: 62% [A]+[?] evidence ratio (council analysis introduces assumptions when extending brief's sourced claims)

**Band Protocol:** Lucy holds the clipboard. This work serves Beth, not the vendor.

---

**End of CLAUDE.md.**
