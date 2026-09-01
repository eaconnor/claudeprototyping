# Alpha RACE — math recount (verified-evidence revision, 2026-06-25)

Counted line by line against the revised brief, which is re-tagged against live tickets ADL-1838 / ADL-1839 / PUT-1166. Lead number is the **world-claims** ratio.

## Three buckets

| Bucket | Total tagged claims | [A]+[?] | Ratio | Gate |
|--------|--------------------:|--------:|------:|------|
| **World-claims (LEAD)** | 41 | 17 | **41.5%** | T1 PASS · build FAIL (<30%) |
| Test-plan readiness | 11 | 11 | 100% | designed, not run |
| Inflated (w/ meta + decisions + tensions) | 63 | 38 | 60.3% | context only |

**Prior brief lead: 58%. New lead: 41.5%.** The verified tickets converted ~9 problem/competitive claims from secondhand/[A] to first-party [R].

---

## Bucket 1 — World-claims (41 claims about the world / product / market)

### [R] — Research (sourced verbatim in live tickets) — 22
1. Detections presented in isolation though part of same incident [R] ADL-1838
2. Manual correlation increases investigation time [R] ADL-1838
3. Loss of situational awareness during active incidents [R] ADL-1838
4. Redundant escalations/tickets/notifications produced [R] ADL-1838
5. This drives customer alert fatigue [R] ADL-1838
6. "Event-driven must evolve to incident-driven" [R] ADL-1838
7. Hilda: Defender = 2 events per malicious activity [R] ADL-1838
8. Hilda: each event → 1 alert → 1 ticket [R] ADL-1838
9. Hilda: single incident = 3–4 tickets, same account/host/IP [R] ADL-1838
10. Hilda: SOAR actions contribute to alert fatigue [R] ADL-1838
11. Hilda: automated responses are operational not investigative [R] ADL-1838
12. Arctic Wolf — rules-based partial grouping [R] ADL-1838
13. CrowdStrike — correlation without incident-story generation [R] ADL-1838
14. Positioning: addresses top pain points / differentiated MDR [R] ADL-1838
15. Prioritization Scorecard 2.57 (initiative score, not priority) [R] ADL-1838
16. Function: correlates via probabilistic scoring + standardized fields [R] ADL-1838
17. Success: one incident instead of multiple tickets [R] ADL-1838
18. Success: analysts use stories daily [R] ADL-1838
19. Success: correlation independent of alert severity [R] ADL-1838
20. Success/scope: validated in MDR-only beta, no customer exposure [R] ADL-1838 / PUT-1166
21. RACE = Rapid Alert Correlation Engine [R] ADL-1838
22. PUT-1166 Done; MDR-only Phase 1 design; ranked incident list + drill-in [R] PUT-1166

### [A] — Assumed — 9
23. "47→12" consolidation ratio (illustrative, no ticket) [A]
24. "42→17" investigation-time figure (illustrative, no ticket) [A]
25. Alert fatigue is "emotional, not operational" [A]
26. Customer demo conviction translates toward a buying step [A]
27. Sustaining-innovation classification [A]
28. Easily-copied-by-incumbents claim [A]
29. Moore Early-Adopter mapping [A]
30. T1 fidelity may read as unpreparedness to external customer [A]
31. Demo content scales from a single chosen customer profile [A]

### [?] — Unknown — 8
32. Demo audience: internal stakeholder vs external customer [?]
33. Probabilistic scoring model / weights undefined [?]
34. Target value + timeframe for "reduced investigation time" [?]
35. Whether demo customer experiences problem at Hilda's scale [?]
36. Competitive durability / fast-follow window [?]
37. Broader competitive set (Huntress / Sophos / Red Canary) unmapped [?]
38. Economic buyer at target customer [?]
39. Pricing model (bundled vs upsell) [?]

**[A]+[?] = 9 + 8 = 17 of 41 = 41.5%.**

---

## Bucket 2 — Test-plan readiness (11 claims)

All four named tests plus their pass thresholds are *designed, not executed*; every line is [A] until run.
1. Comprehension test exists [A]
2. Comprehension pass threshold (≥4/5) [A]
3. Believability test exists [A]
4. Believability pass threshold (≥4/5) [A]
5. Reading-order test exists [A]
6. Reading-order method [A]
7. Scoring-trust test exists [A]
8. Scoring-trust criterion [A]
9. Tester recruitment plan [A]
10. Audience-conditional test variant (Decision 0) [A]
11. Seed-number on-surface flagging check [A]

**11 of 11 = 100% (designed, not run).**

---

## Bucket 3 — Inflated (world-claims + meta-notes + decisions + tensions + score lines) (63 claims)

= 41 world-claims + 5 meta-notes + 5 blocking decisions (0–4) + 4 failure modes + 3 council tensions + 5 routing/score framing lines.

- [A]+[?] carried from world-claims: 17
- Meta-notes (owner correction, re-baseline, 47% discipline, seed guard, ratio) — 4 [A] (process assertions) + 1 [R]
- Decisions 0–4: 4 [A] + 1 [R]/[?] mixed → counted 5 as unresolved
- Failure modes: 3 [A] + 1 [R]/[?]
- Council tensions: 2 [?] + 1 [R]/[?]
- Routing/score: 5 [A]

[A]+[?] inflated total = 17 + 4 + 5 + 4 + 3 + 5 = **38 of 63 = 60.3%.**

---

## Verdict

- **Lead (world-claims): 41.5% [A]+[?].** Fidelity tier **30 / Tier 1 — PASSES** the concept gate. **FAILS** the <30% full-build threshold.
- The verified tickets pulled the lead down from 58% to 41.5% by sourcing the entire problem statement, Hilda evidence, SOAR-noise, and two competitive insights as first-party [R].
- Remaining assumption mass is concentrated in **Gate 3** (demo audience, success criteria, story source) and the **scoring model** [?] — not in the problem.
- Counted fresh, line by line, per the 47% rule. Not self-reported.
