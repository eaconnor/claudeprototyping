# Critique — pre-build — Meeting Cost Calculator

| Dimension | Score /5 | Note |
|---|---|---|
| Coherence | 4 | Solution (live cost readout) traces directly to the stated problem (cost is invisible). Simple mechanism, no scope creep. |
| Source-fidelity | 1 | 100% `[A]`/`[?]` — no research at all, by explicit design. Named honestly in the brief, not hidden. |
| Demo-ability | 5 | Single interaction (start/stop a timer), visible change every second. Demos in under a minute. |
| Differentiation | 2 | Meeting-cost calculators exist as a genre; this doesn't claim to be novel — it's a vehicle for a fast, honest pipeline run, not a market bet. |
| Risk | 3 | Counter-metric (anxiety/avoidance) is named but not designed against — no UI mitigation built in yet. Flagged as punch item below. |
| Scope discipline | 5 | One page, one interaction, no feature sprawl. |

## Punch list

- **PASS** — Domain model (Meeting, RunningCost, CostRate, TickClock) is minimal and every UI surface traces to it.
- **PASS** — Confidence regime (PROCEED-FLAGGED) matches the actual evidence state; `proceed_because` is a real reason, not filler.
- **RISK** — Counter-metric (shaming/anxiety) has no design response. For a Tier 1 demo this is acceptable if the rail names it as unresolved rather than pretending it's handled.
- **MISSING** — No input for attendee count / rate before starting — decide at build time whether to hardcode a fictional default (fastest) or expose two inputs (still fast, slightly more real). Recommend: expose both, defaulted, editable — costs nothing in build time and makes the "your numbers, not ours" point.
- **FAIL** — none.
