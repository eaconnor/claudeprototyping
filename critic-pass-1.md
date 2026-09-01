# Critic — Pre-build Scorecard · Alpha RACE Customer Demo
**Brief:** briefs/alpha-race.brief.md (verified-evidence revision)
**Sources:** ADL-1838 / ADL-1839 / PUT-1166 (live, 2026-06-25); alpha-race-math-recount.md; scout_input/05-jira-verified-tickets.md
**Gate:** 30 / Tier 1 Concept · **Idea score (brief self-report):** 15/20
**Reviewer:** Critic (pre-build) · 2026-06-25

A brief exists. This is a review, not opinion.

---

## Score table (6 dimensions, 1–5)

| # | Dimension | Score | One-line basis |
|---|-----------|:-----:|----------------|
| 1 | Coherence | 4 | Solution (one ranked incident story vs 3–4 tickets) traces cleanly to the sourced problem. The *demo artifact* does not trace as cleanly to a Phase-1-MDR-only ticket. |
| 2 | Source-fidelity | 4 | Problem half is first-party [R] verbatim; quantification honestly demoted to [A]/[?]. 41.5% world-claims [A]+[?] — passes T1, fails build threshold. Honest, not inflated. |
| 3 | Demo-ability | 4 | Ranked list + incident detail (story / timeline / score / rationale) is straightforwardly lo-fi renderable. Held off 5 only by the undefined scoring model — a core screen element with no defined content. |
| 4 | Differentiation | 3 | Two rivals named *with positioning* verbatim ([R]); wedge (probabilistic correlation + generated story) is real. But durability unknown, broader set (Huntress/Sophos/Red Canary) unmapped, and "sustaining not disruptive" is [A]. |
| 5 | Risk | 4 | Four failure modes named, each with a detection criterion. Strong. Off 5 because the #1 risk (scope overrun) is named but not *resolved* — the brief carries the contradiction it diagnoses. |
| 6 | Scope discipline | 3 | One prototype is achievable. But "Customer Demo" with undefined audience invites scope creep at build time — synthetic story, scoring rationale, consolidation animation each tempt expansion. Decision 0 must precede build or scope drifts. |

**Composite read:** Solid T1 concept brief. The two 3s (Differentiation, Scope) and the two contained-but-unresolved 4s (Coherence, Risk) all point at the same root: **the customer-demo-vs-MDR-only tension is named but not decided, and the scoring model is a hole in a screen the demo must show.**

---

## Punch list

### PASS
- **Problem statement is first-party and verbatim.** ADL-1838 Problem Statement reproduced exactly; Hilda evidence (2-events-per-activity → 3–4 tickets, SOAR noise) quoted from the live Epic. Gate 1 is genuinely sourced, not assumed.
- **Math is honest and verifiable.** 41.5% [A]+[?] world-claims is grep-traceable in the recount (17 of 41). The [D]→[A]/[?] demotion of "47→12" / "42→17" is the correct call — prior brief over-credited them. The 47% rule was applied, not asserted.
- **Counter-metric is real and specific.** "Demo credibility — synthetic must not read as misleading; T1 fidelity must not read as unpreparedness; must not overstate readiness the ticket defers." That is the right counter-metric for this artifact.
- **Competitive read is grounded.** Arctic Wolf (rules-based) and CrowdStrike (correlation w/o story gen) named with verbatim positioning. Wedge is defensible against the two named rivals.
- **Failure modes carry detection criteria**, not just labels. Each says how to spot it ("ask who's in the room and what we claim is live").
- **Seed-data guard is explicit.** James Moore / Raj Dhesi / Hilda / Figma URL flagged to stay in source, never the prototype. Pete Hegseth test applied.

### FAIL
- **Title contradicts every source ticket.** The brief is "Alpha RACE *Customer* Demo." ADL-1838: "Out of scope: customer-visible UI/notifications." PUT-1166: "Out of Scope: customer-visible dashboards… usable + trusted by MDR Black Team *without customer exposure*." The artifact's name asserts a scope the evidence explicitly defers. The brief *names* this (the framing-tension callout, Decision 0) but does not resolve it — so the build inherits a contradiction in its own title. A brief that ships a known-unresolved contradiction in its title is not build-ready, only concept-ready. [CS: VERIFIED against ADL-1838 / PUT-1166]
- **Scoring model is undefined yet load-bearing on screen.** PUT-1166 AC requires "what contributed to the score" and "scoring rationale" *visible in incident detail*. ADL-1838 Should-Have requires transparent scoring for analyst trust. The model/weights are [?]. The demo must render a score and its rationale; it cannot honestly do so. This is not a missing nice-to-have — it is undefined content for a required screen region. [CS: VERIFIED — requirement in tickets, mechanism absent]

### MISSING
- **Decision 0 — audience (internal stakeholder vs external customer).** Load-bearing, [?], owned by Beth + Raj + Sales. Everything downstream (fidelity banner meaning, "live vs concept" claims, whether seed numbers are acceptable) hangs on it. Cannot build the banner correctly without it.
- **Decision 2 — success criteria.** "This demo succeeds when ___." Undefined [?]. Without it, critic-pass-2 has nothing to test the build against (Gate 3).
- **Decision 3 — incident story source** (real anonymized vs Beth-designed synthetic). Story credibility — the believability test — depends on this, untyped.
- **Measured consolidation / time metrics.** ADL-1838 calls for correlation-accuracy + consolidation-rate monitoring; results not yet available [?]. The seed numbers stand in for data that doesn't exist yet.
- **Economic buyer + pricing model.** Both [?]. Acceptable to defer at T1, but named here so they don't silently vanish.

### RISK
- **Seed numbers ("47→12", "42→17") read as measured data under demo pressure.** Brief flags this (Failure Mode 2) and routes "flag every unsourced number on-surface." Realistic break: a technical buyer asks methodology mid-demo; there is none. The on-surface "illustrative" flag must be unmissable, not a footnote — or the counter-metric (demo credibility) is breached live. [CS: HIGH — based on brief's own analysis, not run]
- **Scope creep at build.** "Customer Demo" + undefined audience tempts the build toward polish (animated consolidation, narrative flourish, customer-branded chrome) that overshoots T1 and reads as "shipped customer capability" — exactly the scope-overrun failure mode. Decision 0 must gate the build, or scope drifts during construction.
- **Fidelity banner ambiguity.** Same banner means "early internal probe" to an exec and "is this real yet?" to a customer. Until Decision 0 lands, the banner copy cannot be written correctly — and a wrong banner actively damages the counter-metric.
- **Differentiation durability unknown.** If shown externally, a buyer who already runs Arctic Wolf / CrowdStrike may not perceive the wedge as durable ([?] fast-follow window). Not a build blocker; a positioning risk if Decision 0 = external.

---

## Specific gaps to address before build

1. **Resolve or explicitly frame Decision 0 (audience) — blocking.** If unresolved at build time, the build MUST hard-frame as "forward-looking concept, MDR-only Phase 1" and the title should read as such on-surface, not "Customer Demo" unqualified. Do not let the HTML assert customer-facing readiness the tickets defer.
2. **Decide how the scoring rationale renders without a defined model.** Either (a) show rationale as explicitly illustrative/placeholder with an on-surface "model TBD" marker, or (b) omit the score-explanation region and note it as a known gap. Do NOT hand-wave a real-looking "why this ranked highest" the system can't back. This directly protects the transparency-vs-undefined-model tension.
3. **Write the one-sentence success criterion (Decision 2) before build** so critic-pass-2 and the test plan have a target. A build with no defined "succeeds when" cannot be re-scored on Gate 3.
4. **Make every unsourced number on-surface-illustrative, not footnoted.** "47→12" and "42→17" need a visible, non-removable "illustrative — not measured" treatment adjacent to the number itself.
5. **Confirm story source (Decision 3)** before the believability test is designed, or the test measures the wrong thing.
6. **Bradley rail must carry the audience caveat and the scoring-model [?]** as named gaps, with Unknown ROI stated honestly (no invented numbers) — consistent with the rail contract.

None of these are fixes I'm making — they're the conditions the build must meet for critic-pass-2 to have something testable.

---

## Honor check

- **Judgment vs mechanics:** This review is mechanics (compliance check of build output against a spec). The judgment — audience decision, scoring-model definition, success criteria — remains Beth's / Raj's / Sales'. I named the gaps; I did not fill them. No substitution.
- **No fabrication:** All [R] claims spot-checked against scout_input/05-jira-verified-tickets.md. The 41.5% ratio was traced, not trusted. Numbers I could not verify by running the build are tagged [CS:].
- **No repair:** No fixes, no rewrites, no suggested copy beyond naming what's wrong. Punch list only.
- **Counter-metric honored in the review:** demo-credibility risk surfaced as the dominant cross-cutting thread, not buried.

*Critic pre-build complete. Build may proceed at T1; Decisions 0, 2, 3 and the scoring-model treatment are the gates for a meaningful post-build re-score.*
