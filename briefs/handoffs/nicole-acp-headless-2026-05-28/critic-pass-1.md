# Critic Pass 1 — ACP Headless Agent Dashboard (Rerun 2026-05-28)

**Scope:** Score existing `prototypes/acp-headless/index.html` against corrected brief `briefs/acp-headless.brief.md`.
**Prior critic embedded in build:** 22/30 — re-scoring fresh.
**Fidelity declared:** Tier 1 · Concept.

---

## Score Table — 6 Dimensions (1-5)

| Dimension | Score | Reasoning |
|---|---|---|
| **Coherence** | 4 | Headless thesis traces cleanly from problem (tool fragmentation) → solution (single ACP surface) → measure (5 MSP walkthroughs). −1: trust ladder (L0–L4) introduced as solution element but not yet mapped to MSP mental models. |
| **Source-fidelity** | 2 | **Downgraded from prior 3.** Brief now grep-verified at 82% [A]+[?], not the previously claimed 55%. Tier 1 accepts high ratio, but the source-fidelity *of the brief itself* was overstated by 27 points. The [R] anchors (Control Plane, Coworker, Value Ledger docs) exist and are sourced — but the MSP-side pain claims are entirely [A]/[?]. |
| **Demo-ability** | 4 | Prototype renders. Apex Bridge overlay pattern works. Value Hero, Coworker grid, customer list, Bradley rail all readable in one screen. −1: no interactive states for error/escalation/audit; static demo only. |
| **Differentiation** | 4 | Headless-first framing distinct from competitors who layer agents on top of existing product UIs. Trust ladder concrete (L0–L4 with track-record numbers). −1: no competitive scan; [?] whether ConnectWise/Kaseya/Datto have shipped anything similar. |
| **Risk** | 3 | Brief names 4 failure modes with mitigation language. −2: resilience model (what if ACP is down?), override path (MSP says "no" to Coworker), and audit trail (how MSP reviews what Coworker did) are all named but not designed. Concept-tier acceptable but Direction-tier would fail. |
| **Scope discipline** | 4 | Scoped to 2–3 representative tasks for walkthrough. Recommendation section closes the brief with concrete constraints. −1: MSP segment (SMB vs. enterprise) and AI Expert ship list still open — these will gate Tier 2. |

**Total: 21/30** (prior embedded score was 22/30; one-point drop on Source-fidelity reflects corrected math.)

---

## Punch List

### PASS
- ✅ Three-gate brief structure intact
- ✅ [R]/[A]/[?] tagging applied consistently
- ✅ Fictional seed data (Summit IT Partners, Riverside Tech, etc.) — Pete Hegseth test passes
- ✅ Bradley rail present with readiness, critic scores, council voices, dual assessment, routed cards
- ✅ Ownership attribution shown on routed cards (80% / 70% / 65% / 75% Nicole)
- ✅ Fidelity banner shown ("Tier 1 · Concept")
- ✅ Apex Bridge delivery pattern (overlay on N-central mock)
- ✅ ROI fields use "Unknown" honestly where data is gap, not fabricated

### FAIL
- ❌ **Embedded critic rail still shows "55% [A]+[?]"** in two places (`gate-fail` line and Source-fidelity detail). Must update to "82%" to match corrected brief.
- ❌ **Readiness score "73%"** is uncited — no derivation shown. Tier 1 prototypes should either show math or remove the number.

### MISSING
- ⚠ No error-state screen (what does the dashboard look like when a Coworker fails?)
- ⚠ No escalation/override interaction (where does MSP push back on a Coworker recommendation?)
- ⚠ No audit trail surface (how does MSP see what Coworker did and why?)
- ⚠ No "ACP unavailable" state (resilience question raised in failure modes, not addressed)
- ⚠ Counter-metric (time-to-value baseline) still TBD — flag for research team

### RISK
- 🔥 **Value Ledger metric "$18.2k Est. Margin"** is fictional but reads as authoritative. At Tier 1 this is fine, but Nicole should know reviewers may quote it back as a real number. Recommend annotating "seed data — fictional" inline.
- 🔥 **"127.4 hours saved this month"** has no methodology shown. If this number is used to sell internally, it needs a footnote on derivation method ([A] right now).
- 🔥 **Trust ladder visible (L2 / L3 badges) but progression logic not shown.** How does a Coworker move from L2 to L3? Without the answer, the trust model reads as decorative.

---

## Rebuild Recommendation

**Minimal rebuild warranted.** Three changes:

1. Update embedded `[A]+[?]` ratio from 55% → 82% in the Bradley rail (Source-fidelity detail + Gate fail line).
2. Annotate Value Hero numbers as "seed data" inline so they don't get quoted as real.
3. Add a small "rerun audit" note in the rail header indicating this is the corrected version.

**Larger gaps (error states, escalation, audit trail, resilience)** are out of scope for a math-correction rerun. They belong to a Tier 2 (Direction) follow-up. Naming them here as Next Steps.

---

## Delta vs. Prior Embedded Critic (22/30)

| Dimension | Prior | This Pass | Δ |
|---|---|---|---|
| Coherence | 4 | 4 | 0 |
| Source-fidelity | 3 | 2 | **−1** |
| Demo-ability | 4 | 4 | 0 |
| Differentiation | 4 | 4 | 0 |
| Risk | 3 | 3 | 0 |
| Scope discipline | 4 | 4 | 0 |
| **Total** | **22/30** | **21/30** | **−1** |

The one-point drop is honest accounting — the brief's self-reported math was wrong. Fixing the report doesn't fix the brief, but it makes the brief auditable.
