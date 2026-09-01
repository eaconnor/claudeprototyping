# SOURCES — provenance for the context docs

Compiled from the footnotes in `docs/qbr-ebr.ux.md` and `docs/acp-ux.md`. Raw source files live in the **repo** (`scout_input/`, `briefs/`, `acp-core-main-3/`); this is the map to them. *(File paths below carry participant names — internal packet only; rename before any external share.)*

## ⭐ Start here — the 5 that carry the argument

1. **FSN-83143 — AI Coworkers in ACP** (`acp-core-main-3/Intent Specs/`) — the canonical build spec. Problem statement, the three primary journeys, REQ-001–024. `canonical_source: true` · `[CS: VERIFIED]`
2. **The delivery-lead interview** (`scout_input/stefanie-hammond-ebr-sources-2026-07-28.md`) — the richest operator account; the primary design target's 4A's. Identity verified · `[CS: VERIFIED]` but **n=1**.
3. **Stef H.'s 15-tab EBR template** (`Executive Business Review Template 1.xlsx`) — the *real* artifact spec §2 checks against, not a description of one. `[CS: VERIFIED — primary]`
4. **EBR service blueprint** (`briefs/ebr-service-blueprint-2026-07-29.md`) — 26 service moments; three load-bearing findings (dual-surface is structural · the "echo not triangulation" prep-time correction · the risk-register legal-shield downgrade).
5. **Vision synthesis + systems maps** (`briefs/vision-synthesis-2026-07-27.md`, `briefs/systems-maps-2026-07-27.md`) — the reconciled offerings, the Q1/Q2 gates, the five maps behind the Harness context doc.

## Read-for-the-question map

| Your question | Go to | In the doc |
|---|---|---|
| Who is this for? | the delivery-lead interview + the persona library (`scout_input/lewis-persona-library-cast-2026-07.md`) | qbr-ebr §1 |
| What's the artifact? | the 15-tab EBR template + the service blueprint | qbr-ebr §2 |
| What must be true (build against)? | Stef H. boot camp + service blueprint | qbr-ebr §6 Musts + tests |
| Is the market there? | competitive scan (`scout_input/qbr-competitor-products-2026-07-28.md`) | qbr-ebr Appendix A2 |
| Legal / liability? | `scout_input/qbr-adjacent-and-legal-2026-07-28.md` + the SME interview (`scout_input/joe-lewis-julian-interview-2026-07.md`) | qbr-ebr §6 Must 8 · §5 Q1/Q3 |
| Platform-wide picture? | vision synthesis + systems maps + `scout_input/01-control-plane.md` | acp-ux §1/§2/Appendix A |

## Trust ladder

- **Strongest — build on these** `[CS: VERIFIED]`: FSN-83143 (canonical) · the delivery-lead interview (identity confirmed) · the 15-tab template · the service-blueprint findings.
- **Directional only — real but thin** `[CS: HIGH/MEDIUM, n=1]`: all operator evidence (delivery lead / MSP owner) is n=1, from a vendor-selected reference customer. The competitive scan is a sweep, not exhaustive. Use to point, not to bet.
- **`[WOBBLY]` — single-source / narrow**: the persona library (`[CS: MEDIUM]` until its sourcing is confirmed) · the SaaS/CS sources registered 2026-08-20 (domain-collision with MSP QBR — carry the caveat) · the "curse of the expert" (a coach's third-party diagnosis, `[THIN]`, no operator says it first-person).
- **☠ Do NOT cite — traps someone almost quoted**:
  - **"$300+/user" WTP** — contradicted by ScalePad's actual per-client pricing. Resolve before quoting.
  - **"3 MSP lawsuits ← irregular meetings"** — the causal link didn't survive the case records; only two cases exist and neither turned on frequency (see Must 8).
  - **Defensibility tier "already implemented in code"** — a grep found only `baseline_source`; the tier is proposed grammar, not built.
  - **"10–12 participants (NN/g)"** — `[CS: FABRICATION RISK]`, not found in any NN/g publication.

## The rule

Every claim in the docs traces to a file above with a `[CS:]` tag. If a synthesis rests on one source, the doc says so. If it's not linked, it's not a source.
