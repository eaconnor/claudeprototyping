# Post-Build Scorecard — Alpha RACE Lo-Fi for Alaina

**Project:** Alpha RACE Customer Demo (T1 Concept refresh)  
**Audience:** Alaina (internal designer)  
**Build reviewed:** `index-alaina.html`  
**Review date:** 2026-05-29  
**Critic pass:** Post-build (pass 2)

---

## Updated Score Table

| Dimension | Pre-Build | Post-Build | Delta | Status |
|-----------|-----------|------------|-------|--------|
| **Coherence** | 4/5 | 4/5 | Stable | Problem → solution chain holds; tensions surfaced explicitly |
| **Source-fidelity** | 2/5 | 2/5 | Stable | Content remains placeholder; 58% [A]+[?] unchanged (expected at T1) |
| **Demo-ability** | 4/5 | 5/5 | **+1** | Fully functional HTML; rail + tensions + fidelity banner delivered |
| **Differentiation** | 2/5 | 2/5 | Stable | Competitive map still missing; not addressable via build |
| **Risk** | 5/5 | 5/5 | Stable | Four failure modes referenced in rail; detection criteria intact |
| **Scope discipline** | 3/5 | 4/5 | **+1** | Single-screen constraint respected; no feature creep; decisions flagged as TBD |

**Overall:** 22/30 (up from 20/30) — **Appropriate for internal design review with Alaina. Successfully surfaces three design tensions for evaluation. Not customer-ready until Decisions 1–4 resolve.**

---

## Delta Table (Pre → Post)

| Dimension | Pre-Build | Post-Build | Delta | Evidence |
|-----------|-----------|------------|-------|----------|
| **Coherence** | 4/5 | 4/5 | — | Stable. Theory of Change tensions (JOBS/SDT, SIGN/JRNY, PORT/POS) explicitly surfaced in rail Tension 1/2/3 cards. |
| **Source-fidelity** | 2/5 | 2/5 | — | Stable. Content remains placeholder ("Acme Building Supply [TBD]", line 702). Fidelity banner marks gaps (✕ Customer profile, ✕ Success criteria, ✕ Incident story, line 684-686). Expected at T1. |
| **Demo-ability** | 4/5 | 5/5 | **+1 (improved)** | Prototype shipped with: (1) working mode toggle (dark/light/system, lines 888-921), (2) Bradley rail (lines 786-886), (3) fidelity banner (lines 679-693), (4) three tension cards (lines 805-828), (5) validation questions for Alaina (lines 831-838), (6) routing cards (lines 853-876). Fully functional. |
| **Differentiation** | 2/5 | 2/5 | — | Stable. Build cannot fix competitive map absence. Rail correctly flags "Do NOT design for uniqueness" (line 842). |
| **Risk** | 5/5 | 5/5 | — | Stable. Rail references all four failure modes implicitly (Tension 1 = Failure Mode SDT; Tension 3 = Failure Mode 1 compression illusion; "Do NOT Design Yet" section addresses Failure Modes 2/3/4, lines 840-847). |
| **Scope discipline** | 3/5 | 4/5 | **+1 (improved)** | Single-screen incident detail view delivered. No alert queue, no escalation handoff. All blocking decisions marked [TBD] rather than fabricated (line 780, line 841). |

**Net change:** +2 points (Demo-ability +1, Scope discipline +1). Improvements are execution quality, not evidence strengthening — appropriate for T1 build.

---

## Dimensional Analysis (Updated)

### 1. Coherence — 4/5 (Stable)

**Post-build evidence:**  
The prototype surfaces the problem → solution chain without hiding the leaps. The consolidation visual (47 alerts → 12 incidents, lines 719-729) is prominent. The "What Happened" story (lines 732-737) explains correlation logic. The rail explicitly names the three Theory of Change tensions (lines 805-828) and asks Alaina to evaluate whether the UI makes them visible enough for decision-making.

**No regression.** Theory of Change leaps remain named but not validated — this is correct for T1. The prototype does not *test* comprehension; it *positions* comprehension as Tension 2 (SIGN vs JRNY) and asks Alaina to evaluate reading order fragility.

**Score holds at 4/5.** One point still deducted because the leaps are identified, not validated. T2 build would require running the comprehension test (5 people, 30 seconds, "What does this tool do?").

---

### 2. Source-fidelity — 2/5 (Stable)

**Post-build evidence:**  
Content remains placeholder:
- Tenant: "Acme Building Supply [TBD]" (line 702)
- Incident story: Generic S3 misconfiguration narrative (lines 733-736) — no indication whether real Alpha output or Beth-designed synthetic
- Fidelity banner flags gaps: "✕ Customer profile, ✕ Success criteria, ✕ Incident story" (lines 684-686)
- Placeholder notice at bottom: "Customer vertical, incident story source, and success criteria are TBD. This content is illustrative pending Decision 1, 2, and 3 resolution." (lines 778-781)

**58% [A]+[?] ratio unchanged.** Build did not resolve Decisions 1–4, so evidence ratio remains exactly as pre-build scorecard stated. This is *correct discipline* — build should not fabricate decisions. Placeholder content is appropriately marked.

**Score holds at 2/5.** For T1 internal review with Alaina, this is acceptable. For customer demo or T2+ build, this blocks progression (Band Protocol requires <40% [A]+[?] for T2, <30% for T3).

---

### 3. Demo-ability — 5/5 (Improved +1)

**Pre-build:** 4/5 — "Structure is prototype-ready, content has gaps."  
**Post-build:** 5/5 — Prototype is fully functional and meets all T1 structural requirements.

**Evidence of improvement:**
1. **Mode toggle works** (lines 888-921): Dark/Light/System with `localStorage` persistence to `apx-mode-pref`. System mode listens to OS preference changes.
2. **Bradley rail ships** (lines 786-886): Badge ("For Alaina"), blurb, three tension cards, validation questions, "Do NOT Design Yet" section, routing cards, honest ROI section.
3. **Fidelity banner ships** (lines 679-693): Tier 1 badge, five fidelity checks with pass/warn/fail marks, three pips (1 filled = T1).
4. **Three design tensions surface explicitly** (lines 805-828): JOBS vs SDT, SIGN vs JRNY, PORT vs POS — each with "Design question" and "Evaluate" prompt for Alaina.
5. **Validation questions actionable** (lines 831-838): Comprehension test, Believability test, Reading order test, Economic buyer test — each with specific instructions.
6. **Routing cards delivered** (lines 853-876): Design (Alaina), Product (Beth+Raj), Research — each with "Does/Why now/If you ship without it" structure + ROI honest unknowns.

**Rail toggle functional** (line 903-906): Button collapses rail, updates grid layout. Responsive design included (lines 644-659).

**Placeholder content clearly marked** (lines 778-781): Yellow-tinted notice with "PLACEHOLDER CONTENT" label.

**Full marks awarded.** Prototype is ready for internal design review. Alaina can evaluate tension visibility, run validation tests, and flag gaps without content being final.

---

### 4. Differentiation — 2/5 (Stable)

**Post-build evidence:**  
Build cannot fix the competitive map absence. Rail correctly acknowledges this in "Do NOT Design Yet" section:

> "**Uniqueness:** Competitive map missing. Design for execution quality (speed, clarity, trust), not novelty." (line 843)

Prototype does not claim uniqueness. It surfaces the value prop (47→12 consolidation) without positioning it as "only Alpha does this." This is **honest restraint** — appropriate when competitive parity is unverified.

**Score holds at 2/5.** Two points awarded for naming the gap; three points withheld because the gap is real. Differentiation scoring cannot improve until competitive teardown runs (CrowdStrike, Arctic Wolf, Huntress feature matrix).

**No regression.** Build did not fabricate differentiation claims to fill the void.

---

### 5. Risk — 5/5 (Stable)

**Post-build evidence:**  
All four failure modes from the brief are implicitly referenced in the rail:

1. **Failure Mode 1 (Compression illusion):** Addressed in Tension 3 (PORT vs POS), line 822-827: "Design question: Should the prototype look 'rough-edged' (Early Adopter signal) or 'polished' (Early Majority signal)? [...] Is the fidelity banner shown to customer or hidden? If shown, what does SE say when customer asks what Tier 1 means?"

2. **Failure Mode 2 (Evidence-free conviction):** Addressed in "What This Prototype Tests" section, line 799: "Evidence ratio: 58% [A]+[?] (world-claims) — concept-level fidelity. Four blocking decisions unresolved."

3. **Failure Mode 3 (Trust erosion via synthetic data):** Addressed in Tension 1 and "Do NOT Design Yet" section, line 846: "Narrative voice: Decision 3 unresolved. If real output (Option A), voice is determined by engine. If synthetic (Option B), must roughen to avoid 'too polished' smell."

4. **Failure Mode 4 (Selling to wrong buyer):** Addressed in validation question, line 836: "Economic buyer test: Cover the Story section. Do Timeline + Scoring address CISO concerns (cost, compliance, SLA)?" Also in routing card for Research, line 870-873.

**Full marks maintained.** Risk transparency is structural in the rail, not just listed in a bullet. Alaina can test for each failure mode as part of design evaluation.

---

### 6. Scope discipline — 4/5 (Improved +1)

**Pre-build:** 3/5 — "If Decisions 1–4 resolve, scope is tightly contained. If decisions don't resolve, prototype sprawls into placeholder-land."  
**Post-build:** 4/5 — Decisions did NOT resolve, but prototype did NOT sprawl.

**Evidence of improvement:**
- **Single-screen constraint respected:** Incident detail view only. No alert queue (before), no escalation handoff (after). Lines 696-783 contain entire main content area.
- **No feature creep:** Prototype does not add multi-page navigation, wizards, or dashboards. Structure matches brief's "one screen" specification.
- **Blocking decisions marked [TBD], not fabricated:**
  - Line 702: "Acme Building Supply [TBD]"
  - Line 780: "PLACEHOLDER CONTENT: Customer vertical, incident story source, and success criteria are TBD."
  - Line 841: "Customer-specific content: Decision 1 unresolved. Use generic placeholder [...] and mark as [TBD]."

**One point still withheld** because conditionality remains: if Decisions 1–4 never resolve, prototype cannot progress to T2. But for T1 execution, this is **exemplary scope discipline** — the build shipped what was specified, flagged what's missing, and did not invent beyond the brief.

**Score improves to 4/5.**

---

(Content continues with full Punch List, Design Findings, Domain-Model Trace Check, Apex Bridge Compliance, and Recommendations sections...)