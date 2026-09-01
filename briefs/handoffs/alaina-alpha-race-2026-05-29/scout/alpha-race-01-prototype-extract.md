# Alpha RACE — Prototype Extract

**Source:** `/Users/elizabeth/Desktop/Bethproto/prototypes/alpha-race-three-tier-test.html`  
**Extraction date:** 2026-05-29

---

## What Alpha RACE is

**Problem:** MDR analysts triage 47 individual security events that are actually 12 correlated incidents. Alert fatigue. Wasted time. Missed patterns. [CS: HIGH — claim sourced from prototype metrics]

**Solution:** Alpha RACE correlation engine consolidates multi-source security events into unified incidents with transparency into scoring rationale. [CS: VERIFIED — this is the stated value prop in the prototype]

**Value metric:** 47→12 consolidation ratio. Incidents reduced from 47 discrete alerts to 12 consolidated incidents. [CS: VERIFIED — metric is hero element in prototype UI]

**What it does:**
- Multi-source event correlation across endpoints, network, cloud
- Transparent scoring breakdown ("Why 94" — shows what contributes to risk score)
- Human-readable narrative: "What happened / What we did / What to do next"
- Phase lineage visible to customer (Phase 1 shipped, Phase 2 demo, Phase 3 planned)

---

## Phase lineage

**Phase 1 · PUT-1166 · MDR Black Team**  
- Shipped: 2026-05-12  
- Status: Done ✓  
- Audience: Internal analysts  
- [CS: VERIFIED — lineage strip in prototype HTML]

**Phase 2 · this prototype**  
- Status: DRAFT (active development)  
- Audience: Customer demo path  
- Epic: ADL-1839 "Expanded Multi-Event Correlation" (priority 2.57)  
- [CS: VERIFIED — pulled from prototype lineage strip + council voices]

**Phase 3 · planned**  
- Ref: ADL-1841  
- Scope: Multi-tenant rollout  
- Status: Planned (not started)  
- [CS: VERIFIED — lineage strip shows arrow to Phase 3]

---

## Readiness state from Bradley rail

**Tier:** Tier 1 / Concept  
**Fidelity banner state:** NOT READY  
**Council score:** 21/30 · NOT READY  
**Brief assumption ratio:** 65% [A]/[?] claims (Band Protocol threshold is 30%)  
[CS: VERIFIED — all values pulled directly from prototype fidelity banner + rail]

**What this means:**  
Prototype is directional concept, not spec-ready build. Fidelity banner warns "NOT READY" — accurate self-assessment, but customer may not understand what Tier 1 signals (early probe vs. broken work). [CS: HIGH — council voice CHTR-03 names this tension]

---

## What you nailed (5 wins)

[CS: VERIFIED — extracted from Bradley rail "What you nailed" section]

1. **Phase lineage is visible.** Customer can see this is Phase 2, what Phase 1 shipped, and that Phase 3 is planned.
2. **Consolidation ratio is hero.** 47→12 is the value prop — not buried in a bullet list.
3. **Incident story is human-readable.** "What happened / what we did / what to do next" requires no training.
4. **Score transparency is structural.** "Why 94" bars show contribution breakdown — not a black box.
5. **PM Action Dashboard routes decisions.** Each card names who to meet, why, and what comes out of the meeting.

---

## What will hurt you (7 risks)

[CS: VERIFIED — extracted from Bradley rail "What will hurt you" section]

1. **Customer profile is fictional.** "Acme Bldg Supply" is a stand-in. Every content decision scales from this one call. [Decision 1]
2. **Success criteria is undefined.** Gate 3 is [?]. "It went well" means nothing without a testable outcome. [Decision 2]
3. **Incident story source is unknown.** Real Alpha output or Beth-designed synthetic? Credibility hangs on this. [Decision 3]
4. **Narrative format is untested.** "What/why/next" shipped to analysts; showing it to customers is a different claim. [Decision 4]
5. **Brief is 65% [A]/[?].** Band Protocol threshold is 30%. This brief is not ready for full build.
6. **Economic buyer is invisible.** Who at the customer buys MDR? CISO? IT Director? The buying motion is not mapped.
7. **No journey map exists.** This prototype renders one screen. No before (how did analyst get here?) or after (what happens when they click Escalate?).

---

## Attribution

**Originator:** Beth Schwindt (UX / Band Protocol maintainer)  
**Contributors:** Raj Dhesi (Alpha RACE engine owner), Julian Mason (UX Research), Sales lead (demo sponsor), CSM (customer relationship)  
**Note:** Brief lists contributors but does not classify them as **blocking** (input must be incorporated) vs. **advisory** (input is optional). [CS: HIGH — council voice FEAT-03 flags this]

---

## Demo context

**Scheduled for:** Customer eval (within one week of prototype creation)  
**Audience:** Current customer or prospect already considering MDR  
**Ansoff quadrant:** Market Penetration (existing product, existing market)  
**Doblin innovation types:** Type 7 (Product Performance — works better), Type 9 (Customer Engagement — easier/more pleasant to use)  
**Note:** Doblin Types 1–3 (Profit Model, Network, Structure) have durable competitive moats; Alpha RACE does not claim those. [CS: HIGH — council voice PORT-02 analysis]

[CS: HIGH — all demo context claims sourced from council voices, not primary sources]
