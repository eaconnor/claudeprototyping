# Session Handoff — QBR Draft-to-Send Prototype
**Date:** 2026-08-07  
**Handed off by:** Previous Claude session (context too long)  
**For:** New Claude session — pick up at critic pre-build, then build

---

## What you're building

**Stage 3 (Draft Lands) + Stage 4 (Confirm & Personalize)** of the N-able QBR Coworker system — one working HTML screen, Apex design system, Bradley rail included.

Scope is the deck's stated prototype: "draft-to-send flow, mid-size customer, one gap = 3 devices missing backup."

---

## Pipeline step you're at

The brief is written and decisions are locked. You are here:

```
1. scout      ✓ (done in prior sessions)
2. spec       ✓ brief written: briefs/qbr-draft-flow-proto-2026-08-07.brief.md
3. critic     ← YOU ARE HERE (pre-build scorecard first)
4. build      ← then this
5. critic     (post-build re-score)
6. handoff    (packet)
```

**Do not skip the pre-build critic.** Run it, get the punch list, then build.

---

## Key files

| File | What it is |
|---|---|
| `briefs/qbr-draft-flow-proto-2026-08-07.brief.md` | **The brief.** Read this first. Everything you need. |
| `briefs/laissez-faire-fellows-persona-2026-08-04.md` | Fictional MSP persona — the seed data for the prototype |
| `prototypes/qbr-triage-apex.html` | Existing prototype in Apex design system — crib from this for tokens, components, layout patterns |
| `briefs/qbr-system-blueprint-2026-08-04.md` | Full system blueprint if you need deeper context on Stage 3/4 |

---

## Decisions already made — do not re-litigate

1. **MSP:** Laissez Faire Fellows (Denver, CO). Not Clearpath IT, not any other name.
2. **Fictional client:** Ridgemont Financial Services — B-tier, GLBA applies.
3. **Two actors in Stage 4:** Jordan Ellis (technician, data/escalation/Value Ledger) + Priya Shah (delivery lead, confirm/personalize/consultative questions). These are the David-analog and Vanessa-analog from today's Craig interview.
4. **Storyboard:** A/B scenario is the primary demo. D-tier sachet = secondary demo possibility only.
5. **Escalation:** Priya disputes a finding → goes to Jordan.
6. **Value Ledger:** Jordan's tool. UI deferred — stub it, don't design it fully. "Maybe logs — I have to see it."
7. **Consultative questions:** Priya drafts them. Jordan + team agree on which are valuable.
8. **Batching:** One at a time, v1.
9. **RiskScore/framework:** NIST CSF 2.0 default. Configurable per MSP (NCSC 10 Steps, Cyber Essentials for UK MSPs).
10. **Prototype first in Claude:** Beth's explicit call. Not Figma, not Jira ticket yet.

---

## Design system — Apex (N-able product, not Band/Itten)

This is an N-able product prototype. Use Apex tokens, not the Band Protocol palette.

```css
--br-color-brand-primary: #0066cc
--br-color-brand-accent: #6d28d9
/* surface tokens: #f4f6fb / #ffffff */
/* topbar: #0a1730 */
/* Bradley rail: #f0eafa / rail-border: #a78bfa */
/* rounded corners: 4px / 6px / 10px */
/* fonts: Inter (UI) + JetBrains Mono (code/data) */
```

Crib `prototypes/qbr-triage-apex.html` for live examples of all of the above.

---

## Bradley rail (required — ships with every prototype)

- Readiness badge: **Tier 1 · Concept**
- What it's testing: does the translation layer + confirm gate read as a real human judgment moment, or as another approval checkbox?
- What you nailed / What will hurt you (per the brief)
- Four routing cards: Product · Design · Research · Eng (content already written in the brief — copy it)

---

## Non-negotiables

- All seed data fictional. Publicity test applies. No real tenant names, no real pricing, no real client lists.
- Apex design system only — not Band Protocol palette.
- Bradley rail required.
- [CS:] tags on any factual claims in the rail.
- `confidence_regime: PROCEED-FLAGGED` — outputs are provisional, do not claim validation.

---

## Out of scope for this build

- Stage 5 (The Room) — hands off to existing EBR map
- SMS schema fix — Eng concern, not prototype scope  
- Value Ledger full UI — stub/placeholder only
- System security posture

---

## How to start

1. Read `briefs/qbr-draft-flow-proto-2026-08-07.brief.md` fully
2. Spawn the `critic` agent for a pre-build scorecard against the brief
3. Get the punch list, then spawn `build`
