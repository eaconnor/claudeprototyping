# Critique — post-build — Meeting Cost Calculator

| Dimension | Pre | Post | Delta | Note |
|---|---|---|---|---|
| Coherence | 4 | 4 | — | Every UI surface traces to the domain model: attendee/rate inputs → Meeting, running-cost readout → RunningCost, burn-rate readout → CostRate, start/stop → TickClock. No drift. |
| Source-fidelity | 1 | 1 | — | Still 100% `[A]`/`[?]`. Build doesn't (and shouldn't) manufacture evidence that doesn't exist — banner and rail both surface this instead of hiding it. |
| Demo-ability | 5 | 5 | — | Verified live in browser: start → cost climbs ($1.13 at 9s on 6 attendees / $75/hr, matches formula) → stop freezes it → reset zeros it. Council modal opens/closes clean. |
| Differentiation | 2 | 2 | — | Unchanged; not a build concern. |
| Risk | 3 | 3 | — | Counter-metric (shaming) still named in rail, still not designed against in the UI — vermillion-on-climb reads punitive as flagged pre-build. Left as an open Design punch item, not silently dropped. |
| Scope discipline | 5 | 5 | — | Single file, ~450 lines, no scope creep from the brief. |

**Drift check:** no UI surface exists without a domain-model noun/verb behind it. Labels match ubiquitous language exactly ("Running cost", "Burn rate").

**Furnishings check:**
- Fidelity banner: present, sticky, correct tier + 6-item check matrix.
- Readiness rail: present, distinct background/border, badge + blurb + nailed/hurt + 4 routed cards with ROI blocks + council entry point.
- Authorship attribution: present ("0% Beth Connor — AI-generated, not yet reviewed or edited"). Accurate — no human edit pass has happened yet.

**Verification note:** interaction was exercised directly in-browser (start/stop/reset, live tick, modal open/close/Escape/overlay-click) — not just read as code. Screenshot evidence: running cost showed $1.13 at 00:09 elapsed against $0.13/s burn rate (6 × $75 / 3600 = $0.125/s ≈ $0.13 rounded) — math checks.

**Outstanding punch items carried forward (not fixed at this tier, named honestly):**
- Counter-metric design mitigation (color/framing) — routed to Design card in the rail, not silently dropped.
- No research yet on the core Gate-1 claim — routed to Research card, flagged `[?]` throughout.
