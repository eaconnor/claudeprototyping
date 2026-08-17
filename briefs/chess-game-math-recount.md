# Chess Game Brief — Three-Number Recount

**Date:** 2026-05-29  
**Brief:** chess-game.brief.md  
**Gate:** 30% (Concept / Tier 1)

---

## The Three Ratios

### 1. World-Claims Ratio (Gate 1 + Gate 2)
**What it measures:** Claims about users, the domain, competitors, the problem space — everything external to the prototype itself.

**Total claims:** 26  
**[R] Research:** 13 (50%)  
**[D] Data:** 0 (0%)  
**[A] Assumed:** 11 (42%)  
**[?] Unknown:** 2 (8%)  

**[A]+[?] = 50%**

**Verdict:** Half of all claims about the problem space and user needs are assumed or unknown. This is expected for a greenfield concept with no user research, but it means **we are not building from a sourced problem.**

---

### 2. Test-Plan Readiness (Gate 3)
**What it measures:** Claims about how the prototype will be tested, by whom, and what counts as success.

**Total claims:** 15  
**[R] Research:** 0 (0%)  
**[D] Data:** 0 (0%)  
**[A] Assumed:** 9 (60%)  
**[?] Unknown:** 6 (40%)  

**[A]+[?] = 100%**

**Verdict:** The test plan is entirely assumed or unknown. No user testing, no assistive tech validation, no error-rate baseline. Success criteria are technical (moves execute) rather than user-centered (time to first move, discoverability).

---

### 3. Inflated (All Tagged Claims)
**What it measures:** Everything, including the brief's meta-structure, TODOs, and self-referential claims.

**Total claims:** 52  
**[R] Research:** 14 (27%)  
**[D] Data:** 0 (0%)  
**[A] Assumed:** 35 (67%)  
**[?] Unknown:** 3 (6%)  

**[A]+[?] = 73%**

**Verdict:** This is the number that often gets quoted, but it's misleading because it includes claims like "this is a lo-fi prototype" and "Beth will test it" — statements about the brief itself, not the problem or solution.

---

## What the Numbers Mean

**World-claims ratio (50%) tells us:** We know the interaction patterns (drag-and-drop, click-to-move, notation entry) are documented. We know the standards (FEN, SAN). We do not know if users have a problem with existing chess interfaces, what their preferences are, or whether three interaction models in one UI create cognitive overload.

**Test-plan readiness (100% [A]+[?]) tells us:** The prototype has no validation plan beyond "Beth clicks around." No user testing, no assistive tech validation, no benchmarks for success.

**Inflated ratio (73%) tells us:** This is a concept exploration, not a sourced product brief. That's fine at 30% fidelity — but it means we're testing an idea, not solving a known problem.

---

## Integrity Check

**Is the brief ready?**  
Yes, for 30% fidelity. The brief names what's known (interaction patterns, standards) and what's assumed (user needs, cognitive load, accessibility goals). It does not fabricate evidence.

**What would make it ready for 60% fidelity?**  
1. User interviews with 3-5 chess players (online and/or over-the-board) about digital chess interface pain points  
2. Observation of one user attempting to complete a move via drag-and-drop, click-to-move, and notation entry  
3. Screen reader testing with one assistive tech user  
4. Baseline data on time-to-first-move and error rate for each interaction model  

**What would make it ready for 90% fidelity?**  
1. A/B test of single-interaction-model vs. multi-interaction-model interfaces with 20+ users  
2. Legal move validation integrated (chess.js or equivalent)  
3. Assistive tech audit (NVDA, JAWS, VoiceOver) with accessibility consultant  
4. Move history usability testing (can users find and replay past moves?)  
5. FEN import/export and game state persistence tested with 5+ users  

---

**The honest ratio for this brief is 50% [A]+[?] in the world-claims, 100% [A]+[?] in the test plan.** The 73% inflated ratio includes the brief's own structure and is less useful for integrity checks.
