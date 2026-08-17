---
feature: Meeting Cost Calculator
fidelity_tier: 1
tier_name: Concept
owner: Beth Connor
problem_statement: "People don't feel the cost of a meeting in real time, so meetings run long and invite-lists bloat without friction. [A]"
objective_key_result:
  objective: "Make meeting cost visible and visceral enough to change behavior (shorter meetings, smaller invite lists)."
  key_result: "Unknown: gap — no baseline data on meeting length or attendee count exists for this concept. [?]"
counter_metric: "Must not make people afraid to call necessary meetings, or turn cost-awareness into a shaming tool. [A]"
evidence_sources: "None. Built from common-knowledge assumption (meetings cost money, nobody sees the number) with zero primary research. [A]"
confidence_regime: PROCEED-FLAGGED
proceed_because: "This is an explicitly assumption-built demo concept (user chose 'something new, generic, no source material') — the value is a fast, working, honest-about-its-gaps prototype, not a validated feature. Withholding a 20-minute build to wait for research that was never in scope costs more than it saves."
machine_behavior: "build · surface [A]/[?] tags visibly on the brief and rail · fidelity = Tier 1 Concept · do not claim validation · readiness rail names 'no research' explicitly rather than implying data backs this"

domain_model:
  entities:
    - name: Meeting
      identity: "a single live session with a start time and a set of attendees"
      attributes: [attendee_count, avg_hourly_rate, start_time, elapsed_seconds]
      evidence: "[A] — structure assumed, not sourced from any meeting-cost tool's real data model"
  value_objects:
    - name: RunningCost
      describes: "attendee_count × avg_hourly_rate × (elapsed_seconds / 3600), recalculated per tick"
      evidence: "[A] — standard cost-of-labor formula, not validated against any org's actual comp data"
    - name: CostRate
      describes: "the $/second the meeting is currently burning, shown as a secondary readout"
      evidence: "[A]"
  services:
    - name: TickClock
      acts_on: [Meeting]
      trigger: "start button pressed; re-fires every second until stop"
      evidence: "[A] — no research on ideal tick interval; 1s chosen for visceral feedback, not tested"
  ubiquitous_language:
    - term: "Running cost"
      means: "the live total, in dollars, this meeting has cost so far"
    - term: "Burn rate"
      means: "the $/second this meeting is currently costing, shown as it climbs"
---

# Meeting Cost Calculator

## Gate 1 — Problem

Is it real? **Not sourced. [A]** No interview, ticket, or telemetry backs this — it's the common office-culture assumption that meetings feel free because nobody sees a number. Assumed, not researched. If this needs to be more than a demo, the first real step is 5–10 minutes of manager interviews on whether a visible cost number would actually change scheduling behavior, or just produce anxiety. `[?]`

## Gate 2 — Right thing

**Advances the mission?** For this run: the mission is "fast, honest, working demo," not a product bet — so "right thing" means it demos cleanly in under a minute and doesn't overclaim. `[A]`

**Measurable outcome that moves:** Unknown — no instrument exists to measure "did this change meeting behavior." `[?]`

**Counter-metric — must not get worse:** Meeting anxiety / avoidance of legitimately necessary meetings. Named, not measured. `[A]`

## Gate 3 — Built right

**Tested how, by whom?** Not tested with users — this is a Tier 1 concept sketch, built and critiqued by the tool's own pipeline (critique passes 1 and 2), not by a human test session. `[?]`

**What counts as done (for this run):** Single HTML page, live-ticking cost, fidelity banner, readiness rail, all three furnishings present, seed numbers fictional, honest about zero research backing.

## Evidence math (three-number honest)

1. **World-claims ratio** — of the claims above about the problem/user (Gate 1 problem statement, Gate 2 outcome, counter-metric): 4 of 4 are `[A]` or `[?]` → **100%**. Named plainly: this is a sourceless concept by design.
2. **Test-plan readiness** — 2 of 2 test-plan claims (Gate 3) are `[?]` → **100%**.
3. **Inflated (incl. meta-TODOs)** — same as above, no separate meta-gap inventory beyond what's already counted → **100%**.

Tier 1 tolerates 50–70% `[A]`+`[?]`. This brief runs at 100%, above even Tier 1 tolerance — named here rather than softened. The domain model itself (entities/services) is also `[A]`: assumed shape, not sourced from any real product's data model. This is fine for a fast demo and disqualifying for anything claiming to be a validated feature.
