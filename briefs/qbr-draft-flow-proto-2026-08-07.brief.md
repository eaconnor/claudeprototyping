---
title: "QBR Draft-to-Send Flow — Prototype Brief"
date: 2026-08-07
system_reference: "briefs/qbr-system-blueprint-2026-08-04.md — full system design; this brief scopes the prototype only"
confidence_regime: PROCEED-FLAGGED
proceed_because: "Gate UI mechanics are undesigned but problem, scope, and seed scenario are all well-evidenced; testing the translation + confirm flow before engineering is exactly what this prototype exists to do."
machine_behavior: "build · surface [CS:] tags visibly · fidelity = Tier 1 Concept · do not claim validation · Apex design system · Bradley rail required"
---

## Gate 1 — Customer problem

Real and sourced:

- David (Technica Solutions, UK, 250+ EBRs/year) spends 1.5–3 hrs per EBR manually pulling across 7 data sources: N-able Central, Inforcer, Roost, Usecure, Halo PSA, Cloud Capsule, 365 tenant checks `[R — craig-fisher-technica-ebr-transcript-2026-08-07]`
- The draft starts from nothing `[R — stefanie-hammond-ebr-followup-transcript-2026-07-30]`
- Cycle memory gap: what was promised last time, did it happen — named independently by five separate overlays, never solved `[R — qbr-system-blueprint §9]`
- Translation is the hard job: raw metric (Inforcer 6/9) needs to become "here's the risk → what it means to you → consequence if unactioned" `[R — Stefanie Hammond, verbatim 4-part formula, 07:30 interview]`
- Stefanie's consultative questions — what to ask the client about their own business — cannot be pulled from any system `[R — Stefanie Hammond, 48:52]`

**Gate 1: PASS**

---

## Gate 2 — Right thing to build?

- Draft-to-send flow is the deck's own stated prototype scope `[D — deck p11: "draft-to-send flow, mid-size customer, one gap = 3 devices missing backup"]`
- Package 3 (N-able native) leads Idea Chess at ~2.9% naive survival `[D — idea-chess-qbr-rerun-2026-08-04.md]`
- Prototype in Claude first for speed `[D — Beth's call, system blueprint §14]`
- Tests the translation layer + defensibility-tier gate UI before any engineering investment `[A — design hypothesis, not measured]`

**Gate 2: PASS**

---

## Gate 3 — Making it right?

- Seed data: fictional throughout per standing rule `[D — CLAUDE.md §9b]`
- Apex design system `[D — Beth's call]`
- Bradley rail required `[D — pipeline rule]`
- Test plan: `[?]` — not yet specified. Needs a named tester and a stated hypothesis to call it validated.

**Gate 3: CONDITIONAL PASS** — test plan `[?]` is the open item.

`[A]+[?]` ratio: ~12% — below 30% gate.

---

## Prototype scope

**Two stages, one screen.** Stage 3 (Draft Lands) + Stage 4 (Confirm & Personalize).

The Room (Stage 5) is out of scope — it hands off to the existing EBR/QBR map already built on the same FigJam board.

### Fictional seed data

| Field | Value |
|---|---|
| MSP | **Laissez Faire Fellows** — Denver, CO. 34-person MSP. Stack: N-central + Adlumin + Cove (native) + ConnectWise PSA (cross-vendor). Per `briefs/laissez-faire-fellows-persona-2026-08-04.md`. |
| Client | **Ridgemont Financial Services** — B-tier, financial services, Denver. GLBA applies. |
| Jordan Ellis | Technician. Builds the risk register, owns the Value Ledger, is the escalation destination when Priya disputes a finding. **David-analog** (per Craig interview 2026-08-07). |
| Priya Shah | Delivery lead. Runs B/C-tier EBRs. Drafts consultative questions for team agreement. **Vanessa-analog.** |
| Cycle memory | Last QBR: March 2026. Action: upgrade 3 servers to Cove Cloud+. Status: in progress (1 of 3 complete). |
| Gap | 3 devices not enrolled in backup (Cove shows 47/50). Defensibility tier: **Estimated** |
| Inforcer | 6/9 (up from 5/9 last cycle — positive movement) |
| The ask | Contract renewal Sept 2026. 2 new endpoints not yet enrolled. |

No real names, no real tenant data, publicity-test clean.

---

## Stage 3 — Draft Lands

The QBR Coworker pre-writes the draft. Priya opens it. The page already exists.

Content blocks in the draft:

1. **Cycle memory strip** — "March 2026 action: Cove Cloud+ upgrade. Status: 1/3 complete." `[R — cycle memory gap, five-overlay convergence]`
2. **Risk findings** — each finding formatted per Stefanie's 4-part formula: data → risk → meaning → consequence `[R — Stefanie Hammond verbatim]`. NIST CSF 2.0 category label on each finding (configurable per MSP — Laissez Faire Fellows uses NIST; UK MSPs may prefer NCSC 10 Steps or Cyber Essentials) `[D — Beth's call 2026-08-07]`
3. **Gap flag** — "3 devices not enrolled in backup · Estimated · Please confirm before room" `[D — deck p11 scenario]`
4. **Industry briefing** — FS sector context, written Head Nerd register (confident, approachable, not FUD) `[A — tone unverified; content is [?] for now]`
5. **The ask block** — risk + renewal/upsell in same breath, not separate sections `[D — Beth's Stage 3 call, §14]`
6. **Rehearse toggle** — "Prepare for the room" — expands to: crib sheet / AI-plays-client roleplay / both / peer review `[D — Beth's call §14: "make an option for all of these"]`

Tier badges on each finding (per §5 defensibility tiers):
- `Measured` — first-party N-able telemetry, independently verifiable
- `Benchmarked` — compared against base-wide data
- `Estimated` — tool infers but cannot verify; human must confirm
- `Unverified` — present but not trusted; flag before room

---

## Stage 4 — Confirm & Personalize

"Like me doing a sharpie deck." Fast, confident, low ceremony. `[R — Beth's own analogy, §14]`

**Two actors. Different jobs.** Jordan (technician) owns the data side. Priya (delivery lead) owns the narrative side. `[D — Beth's call 2026-08-07; Jordan = David-analog per Craig interview]`

Three jobs (Beth's Stage 4 call, §14):

1. **Pull the information** — already done. Jordan built the register. Shown to Priya as read-only evidence cards. Not editable here.
2. **Interpret it** — Priya's edits. Each finding: Accept / Edit / Dispute. Estimated findings prompt: "Do you know whether this gap is intentional?" If Priya disputes a finding → escalates to Jordan. `[D — Beth's call 2026-08-07]`
3. **Ask what the tool could not know** — Priya drafts the consultative-question checklist (Stefanie's questions for the room). Jordan and team agree on which discussions are valuable before the draft locks. `[D — Beth's call 2026-08-07; gate mechanism is the prototype's main test]`

**Value Ledger** — Jordan's tool. Logs what was edited and why. UI deferred to prototype review ("maybe logs — I have to see it"). `[D — Beth's call 2026-08-07]`

**Batching** — one at a time for v1. `[D — Beth's call 2026-08-07]`

The backup gap flow in Confirm:
- Priya sees the 3-device flag at Estimated
- Prompt: "Are these intentionally excluded, or is this a missed enrollment?"
- Option A: "Known — remediation in progress (add to follow-up ticket)" → tier upgrades to Measured
- Option B: "Unknown — needs client input" → stays Estimated, flagged for the room; if Priya disputes the classification → goes to Jordan

After Stage 4: draft status flips to **Ready for room**. The Room (Stage 5) begins.

---

## Decisions resolved 2026-08-07

| Question | Decision |
|---|---|
| Storyboard ordering | A/B scenario is primary demo. D-tier sachet is secondary — show as a demo possibility, not in main flow. |
| Escalation target | Disputes go to Jordan (technician, David-analog). |
| Value Ledger | Jordan owns it. UI deferred — needs to be seen to be decided. |
| Who asks consultative questions | Priya drafts. Jordan + team agree on which discussions are valuable. |
| Batching | One at a time, v1. |
| RiskScore taxonomy | NIST CSF 2.0 default. Configurable per MSP (NCSC 10 Steps, Cyber Essentials, etc. for UK MSPs). |

## Remaining open items — engineering, not prototype blockers

| Item | Owner |
|---|---|
| SMS schema gap (`notification_recipients` needs SMS type) | Eng — Stage 2, not in scope here |
| System security posture | Out of prototype scope |
| Value Ledger UI | Defer to prototype review — Jordan's tool, needs to be seen |

---

## Bradley rail

**Readiness: Tier 1 · Concept**

**What this prototype is testing:** does the translation layer + confirm gate read as a real human judgment moment, or as another approval checkbox? That's the one thing that matters here.

**What you nailed:** scope is tight and sourced from the deck's own stated prototype. Cycle memory and the 4-part translation come from primary research — the scenario is real enough to test. Beth's "sharpie deck" register is the right tone target for Stage 4.

**What will hurt you:** Stage 4's consultative-question gate is the whole thesis ("ownership, not rubber-stamp") and the mechanism is undesigned. If the UI reads as a form to fill out, the finding will be "it feels like extra work" regardless of whether the concept is sound. The gate needs to feel like a natural pause, not a checkpoint.

---

### Routing cards

**Product** `[A — ROI unknown]`
- Does: confirm whether countersign (Stage 6, §14) should be tested in v1 or gated on legal counsel (Q3)
- Why now: it's out of this prototype's scope, but the answer changes Stage 6 design before build freezes
- If you ship without it: Stage 6 closes the loop without the "acknowledged" signal — the feature works but the defensibility thesis weakens
- ROI Business: Unknown — gap. ROI User: Unknown — gap.

**Design**
- Does: decide the interaction pattern for Stage 4's consultative-question checklist — sidebar, step-through, overlay, or inline prompt
- Why now: the "sharpie deck" analogy implies fast + low-ceremony; the prototype should reflect that intent, not default to a form `[R — Beth's analogy §14]`
- If you ship without it: the gate reads as an approval form, not a judgment moment — the primary risk named in "what will hurt you" above
- ROI Business: Unknown — gap. ROI User: reduces rubber-stamping risk; actual load reduction unmeasured.

**Research**
- Does: test the confirm gate with one real delivery lead (Stefanie or David) before the interaction pattern commits
- Why now: the gate's entire value is "ownership feels real" — that's a perception test, not a desk judgment `[A — hypothesis; needs lived experience to falsify]`
- If you ship without it: you'll find out in the room whether the gate worked, which is too late
- ROI Business: Unknown — gap. ROI User: Unknown — gap.

**Eng**
- Does: note that `notification_recipients` needs an SMS type before Stage 2 (Nudge) ships for C/D tier — confirmed direction, zero existing schema (`data-model.md:129-132`)
- Why now: not a prototype blocker, but it's the only Stage 2 mechanism that doesn't exist in the current schema
- If you ship without it: C/D tier gets email nudge only, not the sachet channel that was confirmed as the direction
- ROI Business: C/D tier revenue base currently unserviced (~$992K/yr on Laissez Faire Fellows comparable) `[A — fictional persona illustration]`. ROI User: Unknown — gap.
