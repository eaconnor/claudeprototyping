---
feature: "ACP Vision Sketches — five evidence-led concept directions (value prop + key features)"
gate: 10
owner: "Beth"
problem_statement: "MSPs want AI coworkers that deliver client-facing value across their stack; ACP's concept shape at vision-stage is under-explored. Which coworker experiences to sketch is now decided by EVIDENCE — quant survey (n=119) + Guidepoint qual (n=8), not by generative guess. [CS: MIXED]"
okr_objective: "Sketch the five highest-rated coworker experiences so Beth can see value prop + key features side-by-side before committing build capital."
okr_key_result: "Five super-lo-fi concept directions, each with a value prop, 3-5 key features, and a named riskiest assumption, grounded in the two studies — by end of sketch phase."
counter_metric: "Evidence discipline must not slip: no direction may claim quant backing it doesn't have. Alert Flood + Env Health rose on QUANT but have THIN qual — their key features are more [A] than QBR/IR RCA/Triage, and the sketch must show that."
idea_score: 12
evidence_sources: ["End2End partner survey n=119 [D — quant, projectable-ish]", "Guidepoint interviews n=8 [R — qual, directional NOT projectable]", "nicole-actual-acp-vision.md [CS: VERIFIED]", "North Star 62176526400 [CS: MIXED]", "Context File + Use Cases (n=8 synthesis) [R directional]"]
status: "draft — awaiting Beth's confirmation of the five before build"
fidelity_tier: "Tier 0 — sketch (~10-30%). Words + boxes. Not working screens."

domain_model:
  note: "The ARTIFACT is a five-sketch set. Entities are the units of the deliverable."
  entities:
    - name: "Concept Direction"
      tag: "[D/R selected]"
      note: "One of five sketches. Each = value prop + key features + riskiest assumption. Selected by evidence, not guess."
    - name: "Coworker"
      tag: "[R directional + D quant]"
      note: "The eight tested agents; five selected. QBR, Alert Flood, IR RCA, Env Health, Ticket Triage."
    - name: "Evidence Signal"
      tag: "[D + R]"
      note: "Quant priority-rank (n=39), quant value-rating (1-5), qual cumulative (n=8), open-text enthusiasm. Four signals per coworker."
    - name: "Value Ledger"
      tag: "[A]"
      note: "Customer-facing proof artifact (NOT Trust Ledger). Cross-cuts several directions. Unvalidated with users."
    - name: "Autonomy Model"
      tag: "[R partial]"
      note: "Gated approval-gate. Confirmed universal (8/8 + 13/17). Three mental models still competing."
  value_objects:
    - name: "Value Prop"
      tag: "[R/A]"
      note: "One-line promise per direction. Grounded where qual exists; [A] where only quant."
    - name: "Key Feature"
      tag: "[R/A]"
      note: "3-5 per direction. Tagged individually."
    - name: "Riskiest Assumption"
      tag: "[A]"
      note: "The belief that, if wrong, kills the direction."
    - name: "Evidence Asymmetry"
      tag: "[D]"
      note: "QBR/IR RCA/Triage have rich qual; Alert Flood/Env Health have quant but thin qual. Named, not hidden."
  services:
    - name: "Rank-by-evidence"
      tag: "[D]"
      note: "Select five by quant + qual, not generative divergence."
    - name: "Ground"
      tag: "[R/A]"
      note: "Attach each feature to source OR tag [A]/[?]. No inflation."
    - name: "Name-the-tension"
      tag: "[A]"
      note: "Where quant and qual disagree, surface — don't resolve. Beth's call."
    - name: "Cut-to-five"
      tag: "[A]"
      note: "Beth confirms the five (or swaps Triage↔Tabletop). Her call."
  ubiquitous_language:
    - "Priority-rank — drag-rank average, lower = higher priority (quant, n=39) [D]"
    - "Value-rating — 1-5 desirability score (quant) [D]"
    - "Cumulative — mentions × intensity, qual (n=8), directional [R]"
    - "Evidence asymmetry — quant-high / qual-thin coworkers [D]"
    - "The runbook IS the IP [R]"
    - "Price the work, not the laptop [CS: VERIFIED]"
---

# ACP Vision Sketches — Five Evidence-Led Concept Directions

**Fidelity: Tier 0 (~10-30%). Words + boxes. Not working screens. Five directions, chosen by the data.**

## READINESS FLAG — READ FIRST

High [A]+[?] is expected at Tier 0 and is not a halt condition here — the job of a sketch set is to make the next research question answerable, not to be validated. **What this brief adds over a generative set: the five are chosen by evidence (n=119 quant + n=8 qual), and where the two studies disagree the disagreement is surfaced as a decision for Beth, not smoothed over.** The failure mode at this tier is not "too many assumptions" — it is claiming evidence a direction doesn't have. See the Evidence Asymmetry note.

---

## THE FIVE — and why these five [D + R]

Selected by convergence across four signals. Full table in Gate 1.

1. **QBR Analyst** — top on every signal (quant #1 priority 2.90, #2 value; qual #1, 31). Unambiguous.
2. **Alert Flood Suppression** — quant #2 priority (3.23), #3 value (3.26). Rose on quant; qual thin.
3. **Incident Response RCA** — quant #3 priority (4.00), qual #2 (26); the compliance driver.
4. **Continuous Env Health** — quant #1 value-rating (3.59, the single highest desirability score); #4 priority. Qual thin.
5. **Ticket Triage & Dispatch** — the wildcard: quant #6 priority BUT highest qual intensity (8.3) + the **most enthusiastic open-text** ("ticket intelligence resonates").

**Dropped:** Tabletop (#5 priority, middling everywhere), On/Offboarding (#7 priority, lowest value 2.94), MSP Benchmarking (bottom both).

### ⚠ The one judgment call — Ticket Triage vs. Security Tabletop

A strict quant priority-rank cut picks **Tabletop (#5, 4.95)** for the fifth slot, not **Ticket Triage (#6, 5.18)**. I put Ticket Triage in because every *intensity* signal points to it: highest qual mention-intensity (8.3), qual #3 overall, and the single most enthusiastic block of open-text in the n=119 survey. Tabletop is liked but flat — no signal spikes.

**This is a priority-rank-vs-enthusiasm fork, and it's your call.** Recommend Ticket Triage (enthusiasm + qual converge). Alternate: Tabletop, if the annual-compliance-cadence revenue story matters more than daily enthusiasm. Do NOT let me decide this silently. [A — Beth owns]

---

## Gate 1 — Is the problem real and sourced?

**The problem is real and now quant-backed at the concept level; the *feature* shape is still mostly qual/assumed.** [CS: MIXED]

**The evidence table (both studies):**

| Coworker | Quant priority (n=39) | Quant value (1-5) | Qual cumulative (n=8) | Open-text |
|---|---|---|---|---|
| QBR | #1 · 2.90 | #2 · 3.40 (n=45) | #1 · 31 | strategic |
| Alert Flood | #2 · 3.23 | #3 · 3.26 (n=42) | mid | — |
| IR RCA | #3 · 4.00 | #6 · 3.13 (n=38) | #2 · 26 | compliance |
| Env Health | #4 · 4.18 | **#1 · 3.59** (n=34) | thin | — |
| Tabletop | #5 · 4.95 | #4 · 3.26 (n=34) | #4 · 19 | — |
| Ticket Triage | #6 · 5.18 | #5 · 3.18 (n=33) | #3 · 25 (int. 8.3) | **most enthusiastic** |
| On/Offboarding | #7 · 5.67 | #8 · 2.94 (n=33) | #5 · 16 | — |
| MSP Benchmarking | #8 · 6.46 | #7 · 3.09 (n=33) | — | — |

Overall: **75% of partners (27/36) see value; ~25% are vocal skeptics** (data-sovereignty + non-determinism objections). Preferred access: included-in-package (13) > add-on (10). [D — n=119 survey]

**Cross-study reads worth holding:**
- QBR is real on both methods — the safest bet. [D + R]
- **Alert Flood is the quant surprise** — #2 priority, but the qual barely covered it. Real demand, thin story. [D strong / R thin]
- **Env Health has the highest raw desirability (3.59)** yet ranks mid on priority — partners *value* it but don't *prioritize* it. Classic "nice to have that everyone wants." [D]
- **Ticket Triage inverts** — low priority-rank, highest enthusiasm. Priority-rank may undercount daily-frequency pain. [D + R tension]
- Integration gaps (HaloPSA cited) and data-trust are cross-cutting blockers, not per-coworker. [D]

## Gate 2 — Are we making the right thing?

**Sketching the five top-rated experiences advances the MSP-OS mission by putting the highest-evidence bets in front of Beth side-by-side.** [CS: MIXED]

- Aligns with the vision: coworkers as delivery mechanism, output customer-facing, metered execution. [CS: VERIFIED]
- The vCISO/vCIO constraint from the earlier 20-set is **naturally satisfied** — all five are coworker-anchored, none leans on the vCISO/vCIO job-frame as its hook. [A — noted]
- Right-thing risk: **the evidence asymmetry.** If the sketches present Alert Flood / Env Health with the same confidence as QBR, we launder quant priority into feature certainty. The sketches must visibly carry lighter evidence tags on those two.

## Gate 3 — How would the chosen directions get tested?

Each direction inherits a study tied to its riskiest assumption:

- **QBR →** 15-minute-edit usability study (P0 dealbreaker, unowned, ~35%) + data-normalization audit (P0, ~30%). Retires two [?].
- **Alert Flood →** *qual catch-up* first — it rose on quant with almost no qual behind it. Interview to define what "suppression" means to MSPs before speccing. Retires the [D-strong/R-thin] gap.
- **IR RCA →** zero-holes architect review (threshold sourced, MSP-C). Read+write-with-approval already 8/8.
- **Env Health →** priority-vs-value probe — why do partners value it (3.59) but not prioritize it (#4)? Is it ambient-background or foreground? Retires the [A].
- **Ticket Triage →** safe-diagnostics-auto vs. sign-off line study; the wedge is live diagnostics, not classification.

**Done for the sketch phase:** Beth confirms the five (or swaps Triage↔Tabletop); each carries value prop + key features + riskiest assumption + a matched study.

---

## THE FIVE DIRECTIONS — value prop + key features

Every feature tagged. `[D]` quant · `[R]` qual · `[A]` assumed · `[?]` unknown.

### 1 · QBR Analyst — "walk in credible" [strongest evidence]
**Value prop:** The coworker drafts a customer-ready strategic review across your whole stack; you edit, own the voice, and walk into the meeting looking like the strategic partner — not the tool operator.
**Key features:**
- Cross-stack + normalized narrative — one story from PSA/RMM/MDR/Backup/Identity, no decoder ring `[R — "the holy grail," MSP-A]`
- Editable before send; the MSP's voice survives, white-labeled `[R — MSP-A/G]`
- Audience-adaptive: CFO ROI vs. owner strategy `[R — MSP-B]`
- Forward-looking: EOL, pipeline, upsell-as-advice `[R — MSP-E/B]`
- The draft-landing moment (Step 2) is where trust is won `[R]`
**Riskiest:** the edit fits ~15 min `[? P0, ~35%, unowned]` + data clean enough to normalize `[? P0, ~30%]`
**Evidence:** quant #1 priority + #2 value; qual #1. **The safe bet.** `[D + R]`

### 2 · Alert Flood Suppression — "stop the noise before the crisis" [quant surprise]
**Value prop:** The coworker absorbs alert noise across the stack and surfaces only what a human needs to see — so a real signal never drowns.
**Key features:**
- Cross-stack noise absorption; suppression ratio + false-positive rate visible `[A — mechanism assumed]`
- Escalates only what crosses a human-worth-it threshold `[A]`
- Feeds the Value Ledger ("noise ↓ 68%") `[A]`
- Ties to N-able SOC pattern data (auto-remediates 90%) `[R — proprietary advantage]`
**Riskiest:** we don't actually know what "suppression" means to MSPs — **this rose on quant (#2 priority) with almost no qual behind it.** `[D strong / R thin — qual catch-up needed]`
**Evidence:** quant #2 priority, #3 value; qual thin. **Real demand, thin story.** `[D]`

### 3 · Incident Response RCA — "the 2am chain of evidence" [compliance driver]
**Value prop:** When something gets through, the coworker builds the customer-ready root-cause report *as the incident happens* — defensible by morning, not next week.
**Key features:**
- Runs *during* the incident — "equivalent to helping resolve it" `[R — MSP-C]`
- Auto chain-of-evidence; zero holes ("architects can't poke holes") `[R — MSP-C]`
- Two outputs: customer summary + internal chain; compliance/insurance pull `[R — #1 on cyber-insurance policies]`
- Read + write-with-approval; rollback always available `[R — universal 8/8]`
- Closes with a hardening rec + updates the runbook `[R]`
**Riskiest:** zero-holes cross-stack correlation at scale `[? ~30%]` + do MSPs use it *during* not after `[? ~50%]`
**Evidence:** quant #3 priority; qual #2. **Strong both.** `[D + R]`

### 4 · Continuous Env Health — "know the kingdom is safe" [highest desirability]
**Value prop:** An always-on read of every environment, surfacing drift before it becomes a ticket — the ambient hum that makes invisible competence visible.
**Key features:**
- Continuous cross-environment health read `[D — highest value 3.59]`
- Surfaces on drift, not on schedule `[A — ambient vs. dashboard is untested]`
- Feeds QBR ("here's what stayed healthy this quarter") `[A]`
- First-party depth via Cove + Adlumin telemetry `[R — advantage]`
**Riskiest:** partners *value* it (3.59) but don't *prioritize* it (#4) — is it foreground product or background feature? `[A — priority-vs-value gap]`
**Evidence:** quant #1 value, #4 priority; qual thin. **Wanted, not prioritized.** `[D]`

### 5 · Ticket Triage & Dispatch — "context is already done" [most enthusiasm]
**Value prop:** The tech opens the ticket and the context, severity, and safe diagnostics are already run — the daily grind gets its time back, every ticket, every day.
**Key features:**
- Live diagnostics auto-run — the wedge, not classification (table stakes) `[R — the delta vs. Rost/Thread/PIA]`
- Severity + likely root cause on arrival `[R]`
- Safe-diagnostics-auto vs. human-sign-off line, explicit `[R — MSP-C separation of duties]`
- Daily frequency compounds; scales junior techs `[R]`
**Riskiest:** MSPs draw the safe-auto / sign-off line where we do `[A]` + sufficient delta vs. incumbents `[?]`
**Evidence:** quant #6 priority BUT highest qual intensity (8.3) + most enthusiastic open-text. **The intensity pick.** `[R + D open-text]`

---

## Cross-cutting (appears in the rail, not a sixth sketch)
- **Integration gaps are the #1 objection** (HaloPSA cited) — no coworker is useful without real PSA/RMM context. `[D]`
- **Data trust is a prerequisite** — ~25% object on data-sovereignty grounds; a data-handling story gates adoption. `[D]`
- **Value Ledger** proves all five to the client. Unvalidated with users. `[A]`

## Failure modes
1. **Evidence laundering.** Alert Flood / Env Health presented as confidently as QBR, converting quant priority into feature certainty. Guard: lighter tags visible on the sketch.
2. **Silent tension-resolution.** The Triage-vs-Tabletop call made by the band instead of Beth. Guard: flagged above, unresolved.
3. **Ignoring the skeptics.** 25% see no value; a demo that only speaks to the 75% overstates readiness. Guard: named in cross-cutting.
4. **n=8 qual over-read.** Cumulative points cited as if projectable. Guard: every qual number tagged directional.

## What's still unknown
- What "Alert Flood suppression" concretely means to MSPs (quant-high, qual-empty). `[?]`
- Whether Env Health is foreground or background. `[?]`
- Both QBR P0 dealbreakers (15-min edit; 75-80% normalization), unowned. `[?]`
- Value Ledger desirability to the MSP's *client*. `[?]`
- Qualtrics 500-target survey (Meaghan, status unknown) — could re-rank everything. `[?]`
- 12 of 20 Guidepoint interviews still pending. `[?]`

---

## HONOR CHECK
- **Judgment held by Beth:** the Triage-vs-Tabletop fifth-slot call; final confirmation of the five; whether to build before P0 studies run.
- **Mechanics assisted:** ranking by evidence, building the cross-study table, tagging, ratio math, matching studies to assumptions.
- **No invented evidence:** every [D] traces to the n=119 survey; every [R] to the n=8 qual synthesis; unsourced claims tagged [A]/[?]. No fabricated numbers.
- **Stats I produced:** 8 quant priority averages, 8 quant value scores + n's, 5 qual cumulative points, 75%/25% sentiment split, access-model counts (13/10/3/1). All from the survey page — proctor/Bradley to grep-verify against source before handoff.
- **Cannot verify without human review:** whether the Triage recommendation is the right strategic call; whether the evidence asymmetry is weighted correctly.
