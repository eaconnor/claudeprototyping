# Next Steps — ACP Headless Agent Dashboard (Rerun)

## Decisions only Nicole can make

These are not research gaps. These are calls. Pick a position on each before scoping Tier 2.

1. **MSP segment** for the 5-MSP walkthrough. (See HANDOFF tension 2.)
2. **Backstage visibility model:** incident-only, on-demand, or always-visible. (See HANDOFF tension 1.)
3. **Trust ledger verifiability:** independently auditable or black-box with risk acceptance. (See HANDOFF tension 3.)
4. **Scope of Tier 2:** which of the missing surfaces (error / override / audit / resilience) ships in the Direction prototype, and which slip to Tier 3.

## Tier 2 pipeline re-run plan

When Nicole returns the three decisions above, the Tier 2 (Direction) pipeline runs as follows. The skill file handles the choreography.

### Pre-pipeline (Nicole owns)

- Write a 1-paragraph segment definition (from decision 1)
- Write a 2-paragraph backstage visibility model (from decision 2)
- Write a 1-page trust verifiability architecture sketch (from decision 3)
- Decide Tier 2 scope (from decision 4) — pick 2 of 4 missing surfaces

### Scout (Tier 2)

- Re-pull source docs from Confluence space AI (Control Plane v2, Coworker v2 if updated)
- Pull MSP-side: any field notes, support tickets, or Linear cards mentioning tool-switching pain
- External: shallow competitive scan (ConnectWise/Kaseya/Datto headless or "command center" surfaces)

### Spec (Tier 2)

- Three-gate brief with **Tier 2 fidelity target: [A]+[?] < 50%**
- New claims from MSP interview data should land as [R] or [D], not [A]
- Tension resolutions (from decisions 1-3) become [D] (data-backed by Nicole's decision)

### Critic Pass 1 (Tier 2)

- Score on same 6 dimensions
- Target: 25/30+ for Direction
- If Source-fidelity still scores 2 or 3, the brief is not Tier 2 ready

### Build (Tier 2)

- Add the 2 chosen missing surfaces (from decision 4)
- Trust ledger UI must show progression mechanics (how L2 → L3 actually happens)
- Override interaction must be designed, not gestured at
- Maintain Apex Bridge delivery, fidelity banner, Bradley rail, ownership attribution

### Critic Pass 2 (Tier 2)

- Delta vs. Tier 1 final scores
- Bradley rail must show what improved vs. this rerun

### Council (Tier 2)

- Re-run all 5 voices against new brief
- Specifically check whether the three Tier 1 contradictions are now resolved or still live
- Add a 6th voice if any of the three tensions remains unresolved (suggest: Affordance Theory or Cognitive Load)

### Handoff (Tier 2)

- New packet: `briefs/handoffs/nicole-acp-headless-direction-[date]/`
- Reference back to this rerun packet so the audit trail is continuous

## MSP interview prep (parallel track)

This is the load-bearing [?]. Begin recruitment now even while Tier 2 decisions are open.

- Recruit 5 MSPs matching whatever segment Nicole picks
- Interview guide must test:
  - Current tool-switching pain (baseline pain measurement)
  - Willingness to operate without product-UI access (the core hypothesis)
  - Trust ladder legibility (do MSPs understand L0–L4 when shown?)
  - Override appetite (when do they want to say "no" to a Coworker?)
- Recommend: 60-minute moderated sessions, recorded with consent
- Output: pain-point dataset that can re-tag this brief's [A] claims as [R] or [D]

## Risk register

| Risk | Likelihood | Mitigation |
|---|---|---|
| Internal resistance from UEM/Cove/Adlumin product teams (Disruption testimony) | High | Surface this with Nicole's leadership before Tier 2 ships |
| MSPs reject headless model in walkthroughs | Medium | Acceptable — the walkthrough exists to test this. Negative result is a valid result. |
| Trust ledger black-box position fails compliance review | High | Run trust verifiability decision (call 3) past Compliance early |
| Tier 1 numbers ($18.2k margin, 127.4 hours saved) get quoted as real | Medium | Seed-data annotation now visible in prototype; reinforce verbally |

## Pipeline re-run command (when ready)

```
prototype: Tier 2 ACP Headless Direction prototype for Nicole. Use briefs/handoffs/nicole-acp-headless-2026-05-28/ as prior. Add [chosen surfaces]. Target [A]+[?] < 50%. Owner: Nicole Reineke.
```

---

**Lucy holds the clipboard.** Work for Nicole, not the vendor.
