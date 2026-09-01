# Alpha RACE Lo-Fi Handoff — Start Here

**For:** Alaina (Designer)  
**From:** Beth Schwindt  
**Date:** 2026-05-29  
**Tier:** 1 Concept (30% fidelity)

---

## What's in this packet

Complete Band Protocol handoff for Alpha RACE lo-fi prototype. Everything you need to evaluate design tensions, run validation tests, and identify next moves.

**15 files total:**
- 5 new handoff documents (CLAUDE.md, README.md, HANDOFF.md, NEXT-STEPS.md, alpha-race-rail.md)
- 5 source artifacts (brief, prototype HTML, 2 critic passes, council testimony)
- 5 scout inputs (source material from prior work)

---

## Quick start (5 minutes)

1. Open `index-alaina.html` in browser
2. Review the prototype (single-page incident detail, 47→12 consolidation)
3. Read the Bradley rail (right side) — three design tensions explained
4. Come back here and pick your reading path below

---

## Reading paths by role

### Path 1: Designer (Alaina — you)

**Goal:** Evaluate whether design tensions surface clearly enough for decision-making.

1. **index-alaina.html** — Open in browser, review prototype
2. **HANDOFF.md** — Tensions named (5 total), your three calls
3. **critic-pass-2-alaina.md** — Design findings section (lines 200+)
4. **NEXT-STEPS.md** — Your validation tests (comprehension, believability, reading order, economic buyer)
5. **council-testimony-alaina.md** — Executive summary first (readiness score, top tensions). Drill into full voices if needed.

**Time:** 20-30 minutes for core review. 1-2 hours if reading full council testimony.

**Deliverable:** Short report to Beth. Which tensions surface clearly? Which need UI iteration? Which are blocked without decisions?

---

### Path 2: Product / PM (Beth, Raj)

**Goal:** Understand what decisions block T2 build and how to resolve them.

1. **HANDOFF.md** — What's verified, tensions named, three calls
2. **NEXT-STEPS.md** — Four blocking decisions (customer profile, success criteria, incident story source, narrative format validation)
3. **alpha-race.brief.md** — Gate assessments, failure modes, routing
4. **critic-pass-2-alaina.md** — Delta table (what improved pre→post)
5. **council-testimony-alaina.md** — Cross-talk section (productive tensions)

**Time:** 45-60 minutes

**Deliverable:** Meeting to resolve four blocking decisions. Re-run brief to <40% [A]+[?] for T2.

---

### Path 3: Research

**Goal:** Understand what tests are ready to run and which depend on decisions.

1. **HANDOFF.md** — Call 3 (comprehension test, competitive teardown)
2. **NEXT-STEPS.md** — Test protocols with pass/fail criteria
3. **alpha-race.brief.md** — Theory of Change (three untested leaps), test plan outlined in Gate 3
4. **council-testimony-alaina.md** — SIGN cluster (Lean Startup Riskiest Assumption), JOBS cluster (functional/emotional jobs)

**Time:** 30 minutes

**Deliverable:** Comprehension test results (N/5 passed). Competitive feature matrix (CrowdStrike, Arctic Wolf, Huntress).

---

### Path 4: Deep dive (full context)

**For:** Anyone who needs complete understanding of brief → build → critique → council flow.

**Reading order:**
1. **README.md** (this file) — Orientation
2. **alpha-race.brief.md** — Three-gate brief, 58% [A]+[?], four blocking decisions
3. **critic-pass-1-fresh.md** — Pre-build scorecard (20/30 baseline)
4. **index-alaina.html** — Working prototype
5. **critic-pass-2-alaina.md** — Post-build scorecard (22/30, +2 from execution quality)
6. **council-testimony-alaina.md** — 44 voices, 3 productive tensions
7. **HANDOFF.md** — Verified math, tensions named, three calls
8. **NEXT-STEPS.md** — Decisions pending, T2/T3 prerequisites
9. **scout/** directory — 5 source docs (if you need to trace sourcing)

**Time:** 2-3 hours for full read

---

## What's testing in this prototype

**Primary question:** Does the customer comprehend "47→12 alert consolidation" value without explanation?

**Three design tensions explicitly surfaced:**

1. **JOBS vs SDT** — Override-logging: autonomy-support or surveillance?  
   Prototype status: Logging mentioned but UI not shown. Cannot evaluate without seeing logging interface.

2. **SIGN vs JRNY** — Reading order: modular sections or sequential reading?  
   Prototype status: Story/Timeline/Scoring sections present but not visually sequenced. Customer can read in any order.  
   Finding: Story is weight-bearing; Timeline/Scoring are not standalone.

3. **PORT vs POS** — Fidelity signal: rough-edged Early Adopter or polished Early Majority?  
   Prototype status: Fidelity banner says "Tier 1 Concept" (rough), but visual execution is polished (Apex Bridge tokens). Signals conflict.

**Two additional tensions from council:**

4. **Narrative clarity vs economic buyer gap** — Demo optimizes for analyst (user buyer). CISO (economic buyer) concerns not addressed.

5. **Synthetic data credibility threshold** — Incident story may read "too clean to be real" if Beth-designed (Decision 3 unresolved).

---

## What's ready vs what's blocked

**✓ Ready:**
- Prototype functional (mode toggle, Bradley rail, fidelity banner, three tension cards)
- Critic scored pre/post (20/30 → 22/30)
- Council ran (44 voices, 3 productive tensions)
- Validation tests specified with pass/fail criteria

**✗ Blocked (decisions pending):**
- Customer profile (Early Adopter vs Early Majority?)
- Success criteria ("This demo succeeds when ___")
- Incident story source (real vs synthetic?)
- Narrative format validation (works for CISOs or only analysts?)

---

## Files reference

### Core handoff documents
- **CLAUDE.md** (4.8K) — Orientation for any Claude session
- **README.md** (this file, 8.6K) — Reading paths, what's testing
- **HANDOFF.md** (12K) — Verified math, tensions, three calls
- **NEXT-STEPS.md** (16K) — Decisions pending, validation tests, T2/T3 prerequisites
- **alpha-race-rail.md** (5.0K) — Bradley rail extracted as markdown

### Source artifacts
- **alpha-race.brief.md** (17K) — Three-gate brief, claim-tagged
- **index-alaina.html** (26K) — Working prototype
- **critic-pass-1-fresh.md** (20K) — Pre-build scorecard
- **critic-pass-2-alaina.md** (10K) — Post-build scorecard + delta table
- **council-testimony-alaina.md** (9.0K) — 44 voices, executive summary

### Scout inputs (in /scout/)
- alpha-race-01-prototype-extract.md
- alpha-race-02-blocking-decisions.md
- alpha-race-03-competitive-context.md
- alpha-race-04-technical-components.md
- alpha-race-05-council-tensions.md

---

## Attribution

60% Beth (structure, tensions, design decisions) + 40% agents (formatting, council, critic scoring)

Band Protocol: Lucy holds the clipboard. This work serves Beth, not the vendor.

---

**Next:** Pick your reading path above, or jump to HANDOFF.md for the executive summary.
