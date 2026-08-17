# Math Recount — Anomaly Detection for Cove Data Protection
## IC-2026-001 v0.2.0 | Brief date: 2026-06-05

This file contains the three-number recount for the brief at `briefs/anomaly-detection-cove.brief.md`.
The proctor may grep this file against the brief prose to verify counts.

---

## Bucket 1 — World-claims ratio

**Scope:** All tagged factual claims in Gate 1, Gate 2, Gate 3 prose body, Failure Modes, and What's Missing sections. Excludes: YAML frontmatter, section headers, the blocking-questions table rows (classified separately), and the honor-check section.

| Tag | Count | Lines (representative) |
|-----|-------|------------------------|
| [R] | 18 | Problem users sourced; scope items; invariants; domain model services; routing; deduplication; toggle; tenant isolation; feedback write-only; non-regression invariant; positioning constraint terms |
| [D] | 12 | ≥99% coverage; ≤15% FP; ≥50% action rate; ≥40% feedback rate; +0.5 CSAT; <5% CPU; <50MB memory; Phase 1 minimum FP target; alert action rate metric; acceptance criteria items 1–3, 6 |
| [A] | 11 | Manual review current state; technician 48h behavior; feedback engagement; detection fidelity coherence; Phase 1 value coherence; liability framing on positioning; alert fatigue collapse; support ticket consequence; hook non-regression; FP cascade; incident mental model drift |
| [?] | 8 | No user research cited; no recovery time baseline; Q-005 silent failure; CSAT methodology; non-regression threshold; Phase 2 sufficiency gap; copy review absence; cold-start UX |
| **Total** | **49** | |

**World-claims ratio:** [A]+[?] = 19 / 49 = **38.8%**
**Threshold:** 30%
**Status:** ABOVE THRESHOLD — named in brief

---

## Bucket 2 — Test-plan claims ratio

**Scope:** Gate 3 "What's testable" and "What's not yet testable" blocks plus the acceptance criteria numbered list only.

| Tag | Count |
|-----|-------|
| [R] | 5 |
| [D] | 6 |
| [A] | 4 |
| [?] | 3 |
| **Total** | **18** |

**Test-plan ratio:** [A]+[?] = 7 / 18 = **38.9%**
**Status:** ABOVE THRESHOLD

---

## Bucket 3 — Inflated ratio (with gap inventory)

**Scope:** World-claims (49) plus the 8 gap items in "What's Missing" treated as additional [?] claims.

| Tag | Count |
|-----|-------|
| [R] | 18 |
| [D] | 12 |
| [A] | 11 |
| [?] | 16 (8 world + 8 gap inventory) |
| **Total** | **57** |

**Inflated ratio:** [A]+[?] = 27 / 57 = **47.4%**
**Status:** ABOVE THRESHOLD

---

## Summary table

| Ratio | Numerator | Denominator | Value | Pass / Fail |
|-------|-----------|-------------|-------|-------------|
| World-claims | 19 | 49 | 38.8% | FAIL (>30%) |
| Test-plan | 7 | 18 | 38.9% | FAIL (>30%) |
| Inflated | 27 | 57 | 47.4% | FAIL (>30%) |

**Fidelity tier:** 60
**Gate verdict:** Does not pass clean. Passes with named blockers.
**Blocker count:** 5 blocking open questions (Q-001 through Q-005), 2 HIGH dependencies (Q-004 feedback schema, Figma handoff).

---

## Grep targets (proctor verification)

The following strings appear verbatim in the brief and can be grepped to confirm:

- `38.8%` — world-claims ratio
- `38.9%` — test-plan ratio
- `47.4%` — inflated ratio
- `idea_score: 14`
- `gate: 60`
- `[R]: 18`
- `[D]: 12`
- `[A]: 11`
- `[?]: 8`
- `Total world-claims: 49`
- `[R]: 5 (test-plan)`
- `[D]: 6 (test-plan)`
- `[A]: 4 (test-plan)`
- `[?]: 3 (test-plan)`
- `Total test-plan claims: 18`
