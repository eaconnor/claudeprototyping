# Handoff — ACP Control Plane + QBR Native (July 2026 Rerun)

**Date:** 2026-07-21
**Owner:** Beth Connor
**Fidelity delivered:** Tier 1 · Concept

---

## Verified math (47% rule)

All ratios grep-verified before this packet shipped.

| Stat | Value | Source | Verification |
|------|-------|---------|-------------|
| [A]+[?] world-claims | 16/35 = **46%** | `math-recount.md` | grep bucket count |
| [R]+[D] sourced claims | 19/35 = **54%** | `math-recount.md` | grep bucket count |
| Critic Pass 1 total | **24/30** | `critic-pass-1.md` | dimension-by-dimension |
| Critic Pass 2 total | **24.5/30** | `critic-pass-2.md` | dimension-by-dimension |
| Delta from May 2026 [A]+[?] | 80% → 46% | V1 brief + math-recount | grep-verified both |
| Seed data (patch compliance) | 94% | prototype | labeled SEED |
| Seed data (incidents resolved) | 127 | prototype | labeled SEED |
| Seed data (backup success) | 99.1% | prototype | labeled SEED |
| Seed data (MTTR) | 2.3h | prototype | labeled SEED |

---

## Three calls

**Call 1 — QBR Native as proof surface is sound but untested.**
The demand signal is strong (#1 across three instruments). The architectural choice (N-able-native, not cross-vendor) is defensible. The specific job — does an operator value a QBR built entirely from N-able data — has never been independently asked. One operator session answers this. That session has not happened. The prototype can carry the AI Council walkthrough without it. It cannot carry a Tier 2 direction brief without it.

**Call 2 — The governance layer is the thesis, not the feature.**
The build makes this visible. "NOT A REPORT TOOL — THIS IS THE THESIS" on the governance section header is the single most important design decision in this prototype. If the AI Council leaves the session framing QBR Native as a report feature, the prototype failed regardless of score. The counter-signal test (does anyone say "this is just a reporting feature"?) is the most important thing to capture in the room.

**Call 3 — EU AI Act enforcement is 2026-08-02 and has no owner.**
This is 12 days from the session date. A governance-lens council member will ask about it in the first five minutes. The answer is "TBD" and that is on the prototype surface. Name an owner before the session or the gap will become the session.

---

## Named tensions (from Fast Mode council — 7)

| Tension | Stakes |
|---------|--------|
| T1: JTBD vs. Disruptive Innovation | Does QBR Native help MSPs do a current job better, or does it make a different class of evidence possible? The two frames produce different products. |
| T2: SDT vs. Scope Discipline | MSPs may need to feel competent and in control; the governance layer restricts autonomy. If the autonomy cost exceeds the evidence gain, adoption stalls. |
| T3: Value Chain vs. Market Scan | N-able-native scope is the buildable option, not the validated demand. Kenneth May said "cross-stack is the holy grail." Building the reachable thing ≠ building the wanted thing. |
| T4: Service Blueprint vs. Pricing Model | The service model (MSP reviews before delivery) is defined. The pricing model (per-tech-tool vs. practice-based) is not. A service without a pricing model is not a product. |
| T5: EU AI Act vs. Speed | 2026-08-02 enforcement. No compliance owner named. Moving fast on a governed AI product with no compliance owner is a specific legal risk, not a hypothetical one. |
| T6: Cross-Vendor Gap vs. #1 Demand Signal | QBR Cross-Vendor is the holy grail and architecturally blocked. QBR Native is available. The prototype bets that "reachable" is sufficient to prove the Control Plane thesis. |
| T7: Control Plane Thesis vs. Shawn Eftink's Veto | "Won't pay for governance alone" was the single prior dissenting data point. It is still real evidence. The prototype's counter-argument is: QBR Native makes governance visible through a customer-facing artifact, not a settings panel. Whether that resolves the veto is the session's job to find out. |

**Synthesis slot:** [0% Claude — fill this in after the session]

---

## What the prototype does not answer

- Whether the narrowed N-able-native QBR job is real (one operator session needed)
- Whether the MSP would pay for the Control Plane as a governance layer without QBR Native
- Gate C — Adlumin data access (technical + legal, unresolved)
- Legal/DPA read (not done)
- Pricing model (unmade)
- EU AI Act compliance owner (TBD, enforcement 2026-08-02)
- Trust model L0–L4 field-tested (not done)

---

*Handoff complete. 2026-07-21.*
