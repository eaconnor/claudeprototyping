# Critic Post-Build Scorecard — Edinburgh Office Monthly Candy Survey

**Brief:** `briefs/edinburgh-candy-survey.brief.md`  
**Prototype:** `prototypes/edinburgh-candy-survey/index.html`  
**Fidelity:** Tier 1 · Concept (30% schematic)  
**Review date:** 2026-06-02  
**Reviewer:** Critic agent  

---

## Score Summary (Post-Build)

| Dimension | Pre-Build | Post-Build | Delta | Reasoning |
|-----------|-----------|------------|-------|-----------|
| **Coherence** | 4/5 | 4/5 | **0** | Survey form maps cleanly to brief. Q1 multi-select (candy options) → Candy Option entity. Q2 Likert (satisfaction) → Preference Rating value object. Q3 optional free text → Response entity. Results panel → ShareResultsBack service. No logic drift. Vendor agreement gap remains (expected — this is a form prototype, not an ecosystem). Score holds. |
| **Source-fidelity** | 2/5 | 3/5 | **+1** | Brief's 73% [A]+[?] ratio is named in Bradley rail (line 862). Seed data is labeled "🌱 Seed data — fictional" (line 844). Attribution says "0% Beth — survey design generated from brief" (line 849). Five critical gaps inventoried in readiness block (lines 863-865). ROI unknowns named honestly in routing cards. Prototype does NOT fabricate data to fill gaps — this is an improvement over the brief's risk of "empty [?] slots." Score rises from 2 to 3 because the built artifact makes gap-honesty visible, not just documented. |
| **Demo-ability** | 5/5 | 4/5 | **-1** | Form is functional for demo: multi-select works, radio buttons work, textarea works, mode toggle works, Bradley rail collapsibles work. However, submit button is disabled with "Prototype — form does not submit" note (lines 829-830). This is appropriate for Tier 1 Concept, but reduces demo-ability — cannot show end-to-end flow (submit → results aggregation → next wave). Randomization is documented but not implemented (line 712 comment). Score drops to 4 because key interactions (submit, randomization) are deferred. Still highly demo-able for static review. |
| **Differentiation** | 2/5 | 2/5 | **0** | Prototype does not articulate differentiation from Google Forms. Engineering routing card (lines 963-977) mentions "Google Forms does not track respondents across waves or auto-generate trend summaries," but this is backend logic not visible in the form UI. Results panel (lines 835-845) shows "Results from last month" — a ShareResultsBack surface — but this could be a manually updated webpage, not evidence of custom tooling. Score holds at 2. Differentiation remains unarticulated. |
| **Risk** | 4/5 | 5/5 | **+1** | Pre-build scorecard named four failure modes (survey fatigue, re-identification, vendor inaction, sample size invalidity). Post-build, all four are carried into Bradley rail "What will hurt you" (lines 893-899) with specific consequences named. Routing cards add implementation-level risks: Product card says "response rate collapses by Wave 3" if vendor ignores results (line 912); Design card says "attrition exceeds threshold" if >90-second duration (line 933); Research card names GDPR risk if anonymity breached (line 952). Risk inventory is now operationalized (who fixes it, what breaks if you don't). Score rises to 5. |
| **Scope discipline** | 5/5 | 5/5 | **0** | Scope held tightly: one survey form (3 questions), one results panel, one Bradley rail. No dashboard, no analytics platform, no multi-wave comparison UI built. Engineering routing card (lines 963-977) describes longitudinal tracking as future work, not current scope. Fidelity banner correctly labels this "Tier 1 · Concept" with "× Full workflow" marked incomplete (line 679). No sprawl detected. Score holds. |

**New overall readiness:** 3.8/5 (was 3.7/5 pre-build) — Slight improvement. Gap-honesty operationalized in Bradley rail (source-fidelity +1), risk inventory strengthened with consequences (risk +1), but demo-ability reduced by deferred submit/randomization (demo-ability -1).

---

## Delta Table (Pre-Build vs. Post-Build)

| Dimension | Movement | Why |
|-----------|----------|-----|
| **Coherence** | → (held 4/5) | Form structure traces cleanly to domain model. No drift between brief and build. |
| **Source-fidelity** | ↑ (+1, now 3/5) | Gaps made visible in UI (readiness block, ROI unknowns named, seed data stamped). Brief documented 73% [A]+[?] ratio; prototype surfaces it for stakeholders. |
| **Demo-ability** | ↓ (-1, now 4/5) | Submit disabled, randomization deferred. Cannot show end-to-end flow. Appropriate for Tier 1 but limits live demo scenarios. |
| **Differentiation** | → (held 2/5) | No visible differentiation from Google Forms. Backend sophistication (longitudinal tracking, auto-aggregation) not demonstrated in UI. |
| **Risk** | ↑ (+1, now 5/5) | Risk inventory operationalized. Routing cards specify who fixes each gap, consequences if unfixed, realistic ROI unknowns. |
| **Scope discipline** | → (held 5/5) | Tight scope maintained. Single form, no sprawl into dashboard/analytics. |

**Net change:** +1 point overall (3.7 → 3.8). Improvements in source-fidelity and risk transparency outweigh demo-ability reduction.

---

## Summary

**Prototype PASSES for Tier 1 Concept review (30% schematic fidelity).** Three critical defects block pilot testing. Five critical gaps block production. Appropriate for stakeholder review of survey structure, question wording, and Bradley rail routing cards. NOT appropriate for respondent-facing pilot without fixes.

**Critical defects:**
1. Mode toggle does NOT persist to localStorage
2. Randomization not implemented
3. Submit button disabled

**High-severity risks:**
1. Q2 unanswerable without current stock list
2. Results panel static, no update mechanism shown
