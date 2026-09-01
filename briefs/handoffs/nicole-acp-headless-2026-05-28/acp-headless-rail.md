# Bradley Rail — ACP Headless Agent Dashboard (Portable Markdown)

*This is the Bradley rail as readable markdown. Mirrors what ships embedded in `acp-headless.html` so the rail survives outside the prototype.*

---

## Readiness

- **Tier:** 1 · Concept
- **Critic Pass 2 score:** 22/30
- **Audit:** Rerun 2026-05-28 · math corrected (prior brief claimed 55% [A]+[?]; actual was 82%)

### Gates
- ✓ Ready as concept (Tier 1)
- ○ NOT yet ready for direction (Tier 2)
- ○ NOT ready to build (82% [A]+[?])
- ○ NOT ready to release

## Blurb — what this prototype is testing

Whether MSPs will adopt a headless model where the ACP is the only operational interface they touch. The prototype shows what a "single control surface" looks like across UEM, Cove, and Adlumin operations — Coworkers (Patch Deployment, Security Triage, Compliance), Value Ledger (hours saved, tasks executed, margin), customer tenant grid, and a trust ladder (L0–L4) per Coworker.

This is exploratory. The hypothesis is high-stakes; the evidence ratio is honest about that.

## Critic Scores · 22/30

| Dimension | Score | Note |
|---|---|---|
| Coherence | 4/5 | Solution traces to problem. −1: trust model may not map to MSP mental models. |
| Source-fidelity | 3/5 | Problem sourced [R]. −2: MSP pain points all [A]/[?]. 82% [A]+[?] — Tier 1 acceptable. |
| Demo-ability | 4/5 | Prototype-ready. −1: error / escalation / audit not designed. |
| Differentiation | 4/5 | Headless model distinct. Trust progression differentiated. −1: no competitive research. |
| Risk | 3/5 | Four failure modes named with mitigation. −2: resilience and override paths not designed. |
| Scope discipline | 4/5 | Scoped to concept validation. −1: MSP segment and AI Expert ship list still open. |

## Council Testimony · 5 voices

- **Jobs-to-Be-Done** — MSPs hiring for "reduce doing," not "replace seeing." Risk of over-fitting solution to assumed job.
- **Service Blueprint** — Backstage must become visible when trust breaks. Brief has no breakage protocol.
- **Self-Determination Theory** — Autonomy requires visible alternatives. Headless removes them. Trust ladders that only ratchet up erode agency.
- **Disruptive Innovation** — Textbook low-end disruption if it lands. Internal resistance from UEM/Cove/Adlumin teams predicted before external market reacts.
- **Value Chain** — Chokepoint is trust in the trust system. MSPs trust metrics they cannot independently verify. Regulators will not accept that in healthcare/finance.

### Contradictions · 3 (Nicole owns)

1. **Service Blueprint vs. SDT** — visibility on incident vs. visibility as default. Decision: when does the MSP see the backstage?
2. **JTBD vs. Disruptive Innovation** — sustaining sale to existing MSPs vs. new-market sale to segment without product-UI loyalty. Decision: which MSP segment is this for?
3. **Value Chain vs. SDT** — chokepoint control vs. user-owned trust signal. Decision: independently auditable trust ledger, or black-box?

## Dual Assessment

**Nailed:**
- Value Ledger is defensible (now annotated as seed data)
- Trust levels are concrete with track-record numbers
- Headless vision is coherent across UEM/Cove/Adlumin
- Math is honest this pass (82% verified, audit trail visible)

**Will Hurt:**
- No MSP interviews — the load-bearing [?]
- Override paths missing
- Audit trail format undefined
- Resilience model absent
- Trust progression mechanics not shown

## Routed Cards

### Product · 80% Nicole
- **Decide:** sustaining vs. disruptive positioning
- **Why now:** Council split on job definition (Tension 2 in HANDOFF.md)
- **Without it:** Prototype tests two strategies at once, validates neither
- **ROI:**
  - Business: Unknown — depends on MSP segment
  - User: Unknown — pain not validated

### Design · 70% Nicole
- **Design:** override pattern + audit trail format
- **Why now:** SDT predicts autonomy collapse without it [R]
- **Without it:** MSPs cannot say "no" to Coworker recommendations
- **ROI:**
  - Business: Unknown
  - User: Felt control = adoption

### Research · 65% Nicole
- **Interview:** 5 MSPs on tool-switching pain
- **Why now:** 82% [A]+[?] — problem not validated (corrected from 55% in prior run)
- **Without it:** Building solution to assumed problem
- **ROI:**
  - Business: No churn data
  - User: No baseline pain

### Engineering · 75% Nicole
- **Define:** resilience + fallback when ACP unavailable
- **Why now:** Single point of failure named [A]
- **Without it:** MSPs lose access when ACP is down
- **ROI:**
  - Business: Churn risk if outage
  - User: Trust requires reliability

---

## Ownership Attribution Summary

| Card | % Nicole | Reasoning |
|---|---|---|
| Product | 80% | Strategic positioning is Nicole's call; pipeline surfaces the choice |
| Design | 70% | Interaction design is Nicole + Design partner; pipeline names the gap |
| Research | 65% | Research plan is Nicole + Research partner; pipeline counted the [A]+[?] |
| Engineering | 75% | Resilience model is Nicole + Eng; pipeline named the failure mode |

Attribution is what Nicole brought, sharpened. The pipeline did not generate the strategy.

---

*The rail ships with the prototype. The prototype ships with the rail. They do not separate.*
