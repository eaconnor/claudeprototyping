# notify-email — Honest Math Recount

Three ratios. Every tagged claim bucketed. Grep-verifiable against the brief above (the 47% rule: counts done by hand here, recount before quoting elsewhere).

## Bucket 1 — World-claims ratio (LEAD)
Claims describing the world/problem (Gate 1 + Gate 2 evidence) vs. all tagged claims.

Grounded world-evidence claims [R]/[D] in Gate 1 & 2:
1. fail-silent rescue mechanism [R]
2. 14,149 tenants default config [D]
3. NCIP-17468 field discovery [R]
4. four customer routing requests [R]
5. over-notification Case 02681702 [R]
6. async zero-impact decoupling [R]
7. Twilio no-impact-on-email [R]
8. routing tension (more-targeting vs less-noise) [R]

World-evidence [R]/[D] = **8**

**[RECONCILED — critic-pass-1 caught an arithmetic error.]** The original draft set total = 18, but 8 grounded + 14 soft = **22**. The correct denominator is 22.

Total tagged claims across brief prose (excluding YAML domain_model): 8 (G1/G2 grounded) + 14 soft ([A]/[?]) = **22**

**World-claims ratio = 8/22 = 36.4%**
This is the lead number: just over a third of all claims are sourced world-evidence — strong for a Tier 1 concept where the problem is the thing that must be real.

## Bucket 2 — Test-plan readiness
Gate 3 claims that are grounded vs. total Gate 3 claims.

Gate 3 claims: tested-how [A], by-whom [A], shadow-run-role [A], done-definition [A], metrics-mock [?] = 5 claims.
Grounded among them: 0 ([R] reference to shadow-run exists but prototype's role is [A]).

**Test-plan readiness = 0/5 = 0%**
Gate 3 is entirely unsettled. Acceptable at Tier 1; flagged loud.

## Bucket 3 — Inflated-with-meta-TODOs
[A]/[?] claims that are really deferred decisions (meta-TODOs), vs. all [A]/[?].

Total [A]/[?] = 2 (G2 bets) + 5 (Gate 3) + 6 (What's missing) + 1 (idea_score) = **14**
Of these, meta-TODOs (decisions to be made, not facts): done-definition, metrics-mock, latency-unmeasured, recipient-resolution-detail, usability-evidence, idea_score-pending = **6**

**Inflated-with-meta-TODOs = 6/14 = 42.9%**
Nearly half the soft claims are deferred decisions, not knowledge gaps — they convert to scoped work, not research.

## Domain model evidence tally (YAML, separate from prose)
14 domain elements. [R]: 13. [A]/[?]: 0 — but note Latency/2-min is [R] spec-value, [?] as-measured.
Domain model is the most grounded section: 13/14 = 92.9% [R].

## Overall soft-claim share
[A]+[?] = 14 of **22** prose claims = **63.6%** soft. (Was misstated as 14/18 = 77.8% in the draft; reconciled.)
Per CLAUDE.md §9, >30% soft = "not ready" as a build spec. **Named explicitly:** this is a Tier 1 Concept where high soft-share is acceptable IF concentrated correctly. Here the softness sits in Gate 3 (test plan), not Gate 1 (problem). The problem is verified; the build approach is not. That is the right place for the gaps at gate 30.
