# Alpha RACE Customer Demo — Handoff Packet

**Project:** Alpha RACE Customer Demo (Tier 1 Concept)
**Date:** 2026-05-29
**Readiness:** 24/30 (NOT READY)
**Fidelity:** Tier 1 (30%, lo-fi stakeholder review)

---

## What this packet contains

Complete handoff for Alpha RACE customer demo prototype. Includes brief, prototype, critic scores, council tensions, Bradley rail, and source docs.

**Status:** Concept-stage exploration. High assumption ratio (58% [A]+[?]). Four blocking decisions unresolved. **Do not ship to customer** without decision resolution + brief re-run.

---

## Reading order

1. **Start here:** `HANDOFF.md` — verified math, tensions named, three calls
2. **Decisions:** `NEXT-STEPS.md` — four blocking decisions + pipeline re-run plan
3. **Brief:** `alpha-race.brief.md` — three-gate framework, claim-tagged, 58% [A]+[?]
4. **Math:** `alpha-race-math-recount.md` — honest ratio breakdown (three buckets)
5. **Prototype:** `alpha-race.html` — working HTML (open in browser)
6. **Rail:** `alpha-race-rail.md` — Bradley rail as portable markdown
7. **Critic:** `critic-pass-1.md` (pre-build: 21/30) + `critic-pass-2.md` (post-build: 24/30)
8. **Council:** `council-summary.md` — 10 framework tensions from cross-talk
9. **Sources:** `scout/` — 5 source docs (prototype extract, blocking decisions, competitive context, technical components, council tensions)

---

## What this tests

**Core question:** Does consolidating 47 alerts → 12 incidents communicate value to customer buyers (CISOs, IT Directors) in a 30-second read?

**Secondary questions:**
- Does "What happened / What we did / What to do next" narrative format land with economic buyers (CISOs), or only with users (analysts)?
- Does transparency UI (override controls, lineage strip, scoring breakdown) build trust or trigger surveillance concerns?
- Is 47→12 ratio self-explanatory, or does it risk opacity perception ("What happened to the other 35 alerts?")?

---

## What you nailed

- **Problem traceability:** Hilda quote ("3-4 tickets turn out to be one incident") → 47→12 consolidation logic
- **Failure mode naming:** 4 modes with detection criteria (compression illusion, evidence-free conviction, trust erosion, wrong buyer)
- **Honest math:** 58% [A]+[?] disclosed upfront; math-recount file shows three-bucket breakdown
- **Council tensions:** 3 major framework clashes named (JOBS/SDT, SIGN/JRNY, PORT/POS)
- **Fidelity transparency:** T1 (30%) appropriate for concept; "NOT READY" banner honest

---

## What will hurt you

- **Gate 2 gaps:** Theory of Change has three untested leaps (comprehension, interpretation, conviction)
- **Gate 3 empty:** Success criteria undefined, test plan unexecuted
- **Competitive blind spot:** Zero competitive analysis (CrowdStrike, Arctic Wolf, Huntress feature parity unknown)
- **Economic buyer gap:** Demo optimized for analyst (user), not CISO (economic buyer)
- **Source fidelity:** 58% [A]+[?] insufficient for customer demo per Band Protocol (<30% required for production)
- **Four blocking decisions:** Customer profile, success criteria, incident story source, narrative format validation — all unresolved
- **Compression illusion risk:** T1 shipped to customer without framing = "n-able unprepared"

---

## Readiness summary

| Dimension | Pre-build | Post-build | Delta |
|-----------|-----------|------------|-------|
| Coherence | 4/5 | 5/5 | +1 |
| Source-fidelity | 2/5 | 2/5 | 0 |
| Demo-ability | 4/5 | 5/5 | +1 |
| Differentiation | 2/5 | 2/5 | 0 |
| Risk naming | 5/5 | 5/5 | 0 |
| Scope discipline | 4/5 | 5/5 | +1 |
| **Total** | **21/30** | **24/30** | **+3** |

**Tier:** 1 (Concept)
**Readiness:** NOT READY for customer demo
**Blocking:** Four decisions (see `NEXT-STEPS.md`)

---

## Three calls (from blocking decisions)

1. **Decision 1 (customer profile):** Product owns. Resolve before T2 build. Every content decision scales from this.
2. **Decision 2 (success criteria):** Product + Sales own. Blocking for any demo. "This demo succeeds when ___" must be one sentence.
3. **Decision 3 (incident story source):** Eng + Product own. Real Alpha output (anonymized) vs. Beth synthetic. Demo credibility depends on this.

---

## Council tensions (3 of 10)

1. **JOBS (functional) vs. SDT (autonomy threat):** Alpha solves functional job (triage faster) but override-logging may feel like surveillance, not empowerment.
2. **SIGN (narrative anchor) vs. JRNY (reading order):** Customer may read "47→12" as workload reduction OR as opacity risk ("What happened to 35 alerts?"). Reading order uncontrolled.
3. **PORT (sustaining innovation) vs. POS (Early Adopter):** Alpha is Type 7+9 Doblin (easily copied). Short competitive lead. Early Adopter customer tolerates rough edges; Early Majority expects polish. T1 fidelity will lose Early Majority.

See `council-summary.md` for all 10 tensions.

---

## Next moves

**Immediate (before any customer demo):**
1. Product + Sales: Resolve Decision 1 (customer profile) + Decision 2 (success criteria)
2. Product + Eng: Resolve Decision 3 (incident story source: real vs synthetic)

**If moving to T2 (directional fidelity, 60%):**
3. Design: Run comprehension test (does "47→12" land without explanation?)
4. Competitive intelligence: Feature matrix for CrowdStrike, Arctic Wolf, Huntress
5. Spec agent: Re-run brief after Decisions 1-4 resolve. Target <40% [A]+[?] for T2.

**If moving to T3 (spec-ready / production, 90%):**
6. Research: Mode 3 ethnography (shadow 3 MDR analysts, 4 hours each)
7. Product: Economic buyer validation (rebuild value prop for CISO: cost-per-incident, audit logs, SLA, attrition)
8. Design: Kano questionnaire (10 analysts, classify transparency UI as Basic vs Attractive)
9. Spec agent: Re-run brief. Target <30% [A]+[?] for production.

See `NEXT-STEPS.md` for full decision tree.

---

## Environmental note

This handoff packet generated at **FEAST tier** (55ml water, 5.6g CO₂e per response). Equivalent to ~137 Google searches. Used for: pipeline execution (scout → spec → critic → build → critic → council → handoff). Default response tier is **BITE** (0.26ml water, 0.03g CO₂e). Escalate to FEAST only for agentic/coding work.

---

**End of README.**
