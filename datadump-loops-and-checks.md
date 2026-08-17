# Datadump — the loops and checks (process)

**Companion to** `datadump-spec-model.md`. Records the recurring checks that keep the
system honest, and their cadences. Everything ladders to the **North Star** (ACP MVP / Vision).

## Four clocks — don't put them on one beat

| Loop | Question | Direction | Cadence |
|---|---|---|---|
| **Gather / catalog** | what's new? | evidence in | weekly (cheap) |
| **Drift** | did the ground move under a claim? | evidence → spec | weekly |
| **Enrichment** (SUGGEST) | new evidence for an open bet? | assumption → evidence | weekly / on drift |
| **Execution vs vision** (Gate 2) | are we building the right thing? | vision ↔ specs | on spec-change (per sprint) |
| **Vision re-synthesis** | roll the delta into a fresh alpha | everything → vision | **on accumulation, NOT calendar** |

- Evidence moves weekly → drift + enrichment run weekly.
- Specs move per sprint (PRs merge) → the execution check runs when a spec changes; hook it to the repo so it only re-reads what moved.
- **The vision re-synthesis is expensive and rare.** Re-synth thrashes the north star if run weekly — trigger it when enough assumptions flip or major evidence lands (e.g. the 12 remaining Guidepoint, Qualtrics). The weekly loops *accumulate the delta*; re-synth *rolls it into a new alpha*. The execution check measures **against** the vision; only re-synth rewrites it. Keep those separate.

## The execution-vs-vision check — four outputs

Context files = the rubric ("the right thing"). Specs (acp-core-main-3) = the thing under test.

1. **Coverage gaps** — vision value with no spec. (Also: *"not enough brief to execute"* — a vision section whose brief is still Concept-maturity, not Spec-ready. That's the work queue.)
2. **Orphan specs** — a spec that ladders to no vision element (plumbing or gold-plating — decide which).
3. **Clashes** — build contradicts vision, or specs contradict each other.
4. **Backed-into decisions** — the build silently answered an open `[?]`.

**Readiness map:** score every vision section on **brief-maturity (Concept→Spec-ready) × spec-coverage**. Spec-ready + spec = executing; Concept = brief it next; no spec = gap.

## Clash detection — three kinds

- **Vision ↔ spec** — a spec contradicts a tenet/value/assumption.
- **Spec ↔ spec** — two specs disagree (already surfaced several in the sweep: Value/Trust Ledger, onboarding sign-in, 20-vs-15-min).
- **Backed-into decision** — decision-by-implementation. An open question the code closed, or an option it foreclosed. **Weight by unwind cost** (data models, durable-execution semantics, tenant data are expensive to reverse — the constitution says so). The detector **surfaces + weights + routes** to the decision-owners (Beth/Meaghan/Nicole); it does NOT resolve.

Prior art: `ACP_Workshop_Summary_v2.docx` already does "clash detection against intent specs" by hand — the loop should absorb it, not duplicate it.

## Where findings land — two separate dashboards on the North Star

- **Vision Risk Register** (enrichment loop writes it) — what the bet rests on:
  🔴 Open · 🟡 Directional (small-n qual) · 🔵 Accepted — best current interpretation (human decision, owner+date, "revisit if contradicted") · 🟢 Confirmed (evidence).
- **Vision Clash Report** (execution check writes it) — where the build diverges from the vision:
  🔴 **CONFLICT** (vision↔spec or spec↔spec) · 🟣 **Decided-by-build — un-ratified** (backed-into decision awaiting ratify-or-reverse) · 🟡 **Open sequencing decision** (coverage gap). Each row routes to a decision-owner; the report surfaces + weights + routes, never resolves.

Keep them separate: assumptions (evidence-vs-bet) are a different animal from clashes (build-vs-vision).

## Standing disciplines (carried from the model)
- Suggest/gather is automatic; **synthesis + all verdicts are human.**
- Every claim traces to a linked source ("if it's not linked, it's not a source").
- Small-n qual is directional, not projectable; name method + n (e.g. N-Zo 90→17.5 = n=3 self-reported, discounted).
- The check measures against the vision; it never rewrites it.
