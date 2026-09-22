---
# ─────────────────────────────────────────────────────────────────────────────
# MERGED SCHEMA v1.1 — every field is annotated with the script that READS it,
# or with `documentary`. That annotation is the whole point of this version.
#
# A reader cannot otherwise tell an enforced field from decoration, and the
# difference matters enormously: an enforced field that is wrong fails a build,
# while a documentary field that is wrong just sits there reading like a fact.
# v1.0 of this schema had 22 fields and NOT ONE of them was read by any script
# (verified by grep, 2026-09-16) — a constitution nothing executed. If you add a
# field, you either write the script that reads it or you mark it documentary.
# There is no third option, because the third option is how false green happens.
# ─────────────────────────────────────────────────────────────────────────────
artifact: ux.md              # documentary
template_version: 1.1             # documentary
kind: main                        # main | mini                      · documentary
parent:                           # REQUIRED if kind: mini           · documentary
project: ‹project name›           # documentary — project.conf PROJECT_NAME is the executable one
owner: ‹person who owns THIS file›  # documentary — project.conf ACCOUNTABLE_OWNER is what check-tier.py reads
work_type: new-product            # new-product | new-feature | bug-fix | rebuild-section · documentary
research_posture: researcher-backed  # researcher-backed | self-serve · documentary
status: SKELETON                  # SKELETON | DRAFT | LIVE          · documentary

# ---- gate wiring ------------------------------------------------------------
gate: 1                             # READ BY: check-gates.sh, via GATE_1 in project.conf
                                  # Also answers Gate 2 since the 2026-09-22 merge; project.conf
                                  # points GATE_1 and GATE_2 at this file and the inheritance
                                  # check dedupes so it is not asked to inherit from itself.
canonical_for: "the research corpus, the problem, the cast, the concepts — Gates 1 and 2"  # documentary
                                  # documentary, but load-bearing for humans: the domain
                                  # this file is canonical for. Two files claiming the same
                                  # domain is a problem no script will catch for you.
eval_loop: "./check-gates.sh · ./check-trace.sh · ./check-blocked.sh · ./check-drift.sh · ./check-skills.sh"  # documentary
                                  # documentary INDEX of the scripts that check this file.
                                  # Keep it accurate by hand; it is the map, not the territory.

# ---- evidence regime --------------------------------------------------------
confidence_regime: BLOCKED        # READ BY: ./check-judgment.sh — PROCEED | PROCEED-FLAGGED | PROCEED-PARTIAL | BLOCKED
                                  # BLOCKED is the correct default for a skeleton: nothing
                                  # here is decided yet. Do not soften it to ship faster.
proceed_because:                  # READ BY: ./check-judgment.sh — one sentence; without it the default is BLOCKED (exit 24)
machine_behavior:                 # READ BY: ./check-judgment.sh — directives for the execute phase; must keep unfilled slots provisional
confidence_score: UNSCORED        # READ BY: scripts/ux-score.py — computed by grep, never asserted

# ---- source provenance (the part that is actually computed) -----------------
drift: FRESH                      # READ BY: ./check-drift.sh — RECOMPUTED, not trusted.
                                  # Typing FRESH here while the hashes disagree exits 22.
built_from:                       # READ BY: ./check-drift.sh — each path is hashed against MANIFEST.md
  - .specify/memory/constitution.md
reconciled_at: 2026-09-16         # documentary — the date a human last reconciled. `drift:` is
                                  # the computed field; this one is only a note about a person.

# ---- tooling ----------------------------------------------------------------
canonical_spec: spec.md           # READ BY: ./check-trace.sh, via INTENT_SPEC in project.conf
design_system: ‹your design system›  # documentary
design_lint: static-tokens        # READ BY: scripts/check-design.py — off | static-tokens | +components | live-figma
stress_test_method: none          # documentary — your concept-validation method, or "none"
skills:                           # READ BY: ./check-skills.sh — every name must resolve on disk.
                                  # SHIPS EMPTY ON PURPOSE. A borrowing team has none of one
                                  # project's tuned skills, and the coach falls back to its
                                  # built-in method guides. Empty passes; wrong exits 21.
mini_docs:                        # documentary — children, if kind: main
last_updated: 2026-09-16          # documentary
---

# ux.md — ‹project›

**One breath:** ‹what this file is, one sentence — a person or an agent should know what they are holding.›

Canonical for the research corpus, the problem, the cast, **and the concepts**. Holds
**Gate 1** (do we understand the problem) and **Gate 2** (are we making the right thing) —
both read by `./check-gates.sh`.

> **Two gates, one file — merged 2026-09-22.** `vision.md` used to hold Gate 2. Both halves
> are the same person reading the same evidence and saying what it means: the need, then
> the bet. Split across two documents the second one mostly restated the Intent Spec —
> direction, non-goals, metrics, decision log — with no signature on the copy, and the copy
> wins because it is the one being edited. What was genuinely its own moved here: the
> concepts, the evidence under them, and the candidates that lost.
>
> **The risk of one file, so you can watch for it:** a need and a bet together is where a
> business case in user-need clothing hides best. "Users need a unified dashboard" is a
> solution wearing a need's grammar. The two gate checklists stay separate below for that
> reason. The tell is mechanical — a real need names a population, says what would prove it
> wrong, and points at a finding.

> **This file ships red.** Every criterion below is unticked because none of the work
> has been done. That is the correct state for a skeleton, and `./check-gates.sh`
> exits 1 to say so. Do not tick a box to make a script quiet — the script checks
> that a box is ticked, and only a person reading the evidence can check that the
> claim beside it is true.

## How to fill this out — delete this block once the file is written

**This file authors THE NEED:** *"given this evidence, here is the problem, and whose it
is."* That statement is not in the research and cannot be. Findings record what happened;
a need is a claim about what should be true for **this** product. You make it. It rests on
evidence and can never be graded above what it rests on.

Four moves. Each names **what it has to produce** — how you get there is yours.

1. **Look before you gather.** → a source log, every row linked.
   *From scratch:* desk research into a document, one link per row. If it isn't linked, it
   isn't a source.
2. **Interpret.** → your reading, recorded as yours, kept separate from the sources it came
   from.
   *From scratch:* a spreadsheet with your own column and your own colour coding. Then a
   second reader classifies independently and you **record where you disagree** — that
   disagreement is the best `invalidates_if` you will get, because it marks where tacit
   knowledge is carrying the most load.
3. **Map the people and the moments.** → the cast, with gaps named `[?]` rather than
   smoothed over.
   *From scratch:* Adaptive Path's service blueprinting method, or Whitney/IIT's Four
   Lenses context brief. Both published; neither needs a tool.
4. **Write the need.** → the need statement, in your words, tagged.
   No from-scratch route and no tool route. This is the authoring step and it is yours.

**Then four more, for the second half of this file — THE BET** (§4, Gate 2):
*"given this evidence, here is what would be valuable."*

5. **Read the whole pile.** Reconcile qualitative against quantitative. → candidate
   offerings.
   *From scratch:* affinity mapping or a synthesis workshop. Slow, works, needs a wall.
6. **Get more than one frame on it.** → contradictory readings, **left contradictory**.
   *From scratch:* convene people with genuinely different lenses and do not synthesise the
   output. The disagreement is the deliverable.
7. **Attack it.** → a ranked list of where this fails, and what would falsify it.
   *From scratch:* a premortem, a red-team review, or assumption mapping. One rule: the
   attacker must not be the person who wants the bet to be true.
8. **Write the bet.** → the concept, owned, with its falsifiers attached.
   No from-scratch route and no tool route. This is the authoring step and it is yours.

**Two rules specific to the bet.**

**`claim_scope` is `existence` or `pattern`, never `prevalence`.** Convergence across
independent sources tells you a thing exists and roughly how it behaves. It never tells you
how common it is. Volume widens scope, not confidence.

**The bet usually runs honestly at LOW, and that is correct.** A concept resting on
secondary research is not unevidenced — it is accurately graded. Concepts are adoption
claims ("will they want it, keep it, pay for it") and adoption evidence is the thing any
project has least of. The defect is never the LOW. The defect is LOW travelling downstream
unmarked.

**If you have no research yet, that is a legal state.** Write the problem as you understand
it, tag every claim `[A]`, leave `confidence_regime: BLOCKED` or declare `PROCEED-FLAGGED`
with a reason, and add an `## Evidence` section that says "no findings back this yet."
Then run `./check-gates.sh` — **the flags are your research plan.** You do not need research
to start this file. You need it to finish it.

**Promotion rule:** when a source is something this file actually leans on, it becomes a
`findings.yaml` row. If nothing cites it, it does not need one. That is what keeps the
findings layer small enough to maintain.

Longer version, with the toolkit routes: `AUTHORING.md`.

## 1. The problem, and for whom

**Problem statement** — ‹sourced, not invented. Quote the intent spec verbatim if one exists.› `[?]`

| Who | Role in this story | Evidence quality |
|---|---|---|
| ‹persona› | ‹what they do here› | `[?]` |

Map the **full** cast, not just the primary persona. Where a role almost certainly exists
but you have no evidence for it, write the row and tag it `[?]`. A missing row reads as
"nobody plays that part"; a `[?]` row reads as "we have not looked" — which is true.

## 2. Top Tasks

The few things users actually care about, not a feature list. Ranked by real voting or
data where you have it, tagged `[A]` where you do not.

1. ‹task› `[?]`

## 3. Open items

Every assumption, decision and unknown lives in `OPEN.md`, not here — one register, riskiest
first, each with an owner. This section is a pointer on purpose: two lists of open questions
means one of them is stale and no script can tell you which.

## 4. The concepts

<<GATE 2 STARTS HERE. Everything above answers "do we understand the problem"; everything
from here answers "are we making the right thing". An agent must not infer content for this
section — if it still holds these angle brackets, the bet has not been made.>>

*"Given this evidence, here is what would be valuable."* Offerings, not features. **More
than one**, legibly — design can put five futures side by side and everyone should know how
to read them. One concept in this section is not a shortlist, it is a decision that skipped
being one.

| # | The concept, in one line | What it bets on | What would falsify it |
|---|---|---|---|
| C-01 | ‹offering, stated as an outcome for a named person› | ‹the claim it rests on — cite a findings id› | ‹the observation that would kill it› |

**`invalidates_if` IS the research plan.** The last column is not a formality. Name what
would falsify a concept and you have written the brief for the study that settles it.

## 5. Rejected and superseded

<<An agent must not populate this from the concepts above. A row here records a human
decision that was actually taken.>>

The Intent Spec's decision log records decisions **taken**; its open-questions section
records questions **open**. Neither holds *a candidate that was dropped, and why* — so it
goes here, or it vanishes and nobody can later tell rejection from forgetting.

| # | Candidate | Dropped because | Who | Date | Revisit if |
|---|---|---|---|---|---|
| ‹C-0n› | ‹what it was› | ‹the reason, not "deprioritised"› | ‹person› | ‹date› | ‹what would put it back on the table› |

## Lives in the Intent Spec — pointers, not copies

These are links, not sections. **A pointer is only honest if the target is filled** — if the Intent Spec still has a placeholder where one of these should
be, that is the finding, not a formatting problem.

| what you want | where it actually lives |
|---|---|
| The direction, as one outcome statement | Intent Spec **§1 Desired outcome** |
| Non-goals / what this is not | Intent Spec **§4 Out of scope** |
| Success metrics and anti-success signals | Intent Spec **§1** |
| The decision log | Intent Spec **§17** |

Stating any of these here as well guarantees drift, and the copy in this unsigned document
will win by accident, because it is the one being edited.

## Evidence

<<An agent must not add rows here. Each row is an interpretation a human made in this file.
If this section is empty, say so in words — "no findings back this yet" is an honest state
and it passes. Silence cannot be told from unchecked.>>

Every claim this file makes about people, pointed at the `findings.yaml` row it rests on.
`./check-gates.sh` recomputes the ceiling from that row and fails anything asserting above
it. **Nothing is copied** — `rests_on:` is a pointer, and the evidence stays where research
maintains it.

- [ ] E-01 · ‹the interpretation, in your words›
  - rests_on: ‹finding id›
  - asserted_at: ‹HIGH | MEDIUM | LOW›
  - stance: ‹accepts | disputes›
  - handling: ‹required if stance is disputes — where the disagreement is being worked out›

## UX Acceptance Criteria

<<UNWRITTEN. This section is the origin of the criteria-inheritance chain and it ships
EMPTY on purpose — every row here is a project-specific requirement, and a generated one
would read exactly like a real one while committing you to nothing you chose.

WHAT GOES HERE: one row per `UXI-##` requirement in §5 of the document named by
`INTENT_SPEC` in `project.conf`. These are the UX requirements that must survive all the
way into the build. `check-gates.sh` reads the `UXI-##` ids out of this section and then
checks that **every one of them also appears in `design.md`** — a criterion that exists
here and is missing downstream is reported by id as a DROP. That is the only thing this
section is for: it is the list nothing is allowed to quietly lose.

WHY IT IS EMPTY AND NOT PRE-FILLED: the ids have to match your Intent Spec's §5 rows.
Invented ones resolve to nothing, and `check-trace.sh` would correctly report every one
as orphaned. Wire §5 first, then copy the ids here.

UNTIL YOU FILL THIS IN: `check-gates.sh` prints a `note criteria:` line saying the
drop-detector did not run. That note is the honest state, not an error — but it also
means nothing is protecting your UX requirements from being dropped between `ux.md` and
`design.md`. This is the single highest-value section to fill in this file.

FORMAT — one row each, ids from your own §5:

- [ ] ‹UXI-NN› — ‹the requirement, in one line› · traces_to: §5 · verified_by: ‹who or what confirms it, named›

GOOD LOOKS LIKE: "UXI-04 — a technician can complete triage without leaving the keyboard
· traces_to: §5 · verified_by: scripts/check-a11y.py keyboard-path assertion". Not
"UXI-04 — the UI is accessible".>>

- [ ] G1-01 — Problem statement is sourced to a named artefact (spec, ticket, transcript, study), not assumed · traces_to: §1 · verified_by: a human reads the cited source and confirms it says this
- [ ] G1-02 — Primary persona(s) named and evidence-tagged, not invented · traces_to: §3 · verified_by: a human confirms each persona traces to real contact with a real person
- [ ] G1-03 — Full cast mapped; every role-gap named as a `[?]` row rather than omitted · traces_to: §3 · verified_by: a human reads the cast table against the journey
- [ ] G1-04 — Riskiest assumptions surfaced in OPEN.md, each with a named owner · verified_by: ./check-blocked.sh (exit 2 if a HUMAN row stands)
- [ ] G1-05 — `[A]`+`[?]` share of tagged claims is computed and, if over 30%, flagged rather than buried · verified_by: python3 scripts/ux-score.py — computed by grep, never asserted
- [ ] G1-06 — Every source this file was built from is registered in MANIFEST.md and hashes clean · verified_by: ./check-drift.sh (exit 22 if `drift:` misdeclares)
- [ ] G1-07 — Every `UXI-##` requirement in the intent spec's §5 (UX intent) traces back to a named problem, persona or task above — a UX intent nobody can point research at is asserted, not grounded · traces_to: §5 · verified_by: ./check-trace.sh's backward pass (exit 4 if a UXI-## is orphaned), plus a human confirming the grounding named is real, not merely present

**Why this file was wired to the intent spec on 2026-09-18, and not before:** none of the
three gate files carried a single `traces_to:` field until today — `check-trace.sh` would
have reported every one of them `BROKEN` the moment a real `INTENT_SPEC` was set, and
nothing had ever exercised that path. G1-07 is the direct answer to "wire ux.md to the
main intent spec's UX section" — Gate 1 doesn't assert UX intent, it verifies that
whatever UX intent exists in §5 is traceable to real research here, not free-standing.

**First real run of this mechanism, same day, caught something real.** Pointing G1-07 at
the section level (`§5`) rather than a specific `UXI-##` makes the forward check pass but
leaves `check-trace.sh`'s BACKWARD pass correctly reporting every `UXI-##` in a filled
intent spec as an orphan — nothing points at the specific id, only at the section it lives
in. On the template's own illustrative `UXI-01`/`UXI-02` rows that's expected. **On a real
filled project it is not** — once your intent spec has real `UXI-##` rows, add a criterion
here (or point G1-07 itself) at those specific ids, or the backward check will keep
reporting orphans, correctly, every time.

## Acceptance Criteria — Gate 2: Are we making the right thing?

Kept as its own checklist rather than merged into Gate 1 above. Same file, different
question — and the separation is what stops a business case passing as a user need.

- [ ] G2-01 — More than one concept is written down, or the single concept says explicitly that alternatives were considered and names them · traces_to: §4 · verified_by: a human counts the rows in §4
- [ ] G2-02 — Every concept decomposes a problem stated in §1, and the decomposition is design's named judgment rather than a restatement · traces_to: §1 · verified_by: a human traces each concept back to a problem above it
- [ ] G2-03 — Every concept names what would falsify it · traces_to: §4 · verified_by: a human checks the last column is filled and is an observation, not a risk
- [ ] G2-04 — Each concept cites the evidence it rests on by findings id, and asserts nothing above that finding's ceiling · verified_by: ./check-gates.sh
- [ ] G2-05 — No concept is phrased as a screen, a feature or a technology · verified_by: a human reads §4 and rejects any row naming a UI element instead of an outcome
- [ ] G2-06 — Candidates that were dropped are in §5 with a reason and a person · traces_to: §5 · verified_by: a human confirms §5 is not empty where §4 shows evidence of having narrowed
- [ ] G2-07 — Divergences from the Intent Spec's §1 outcome are logged in §17 there, not resolved unilaterally here · verified_by: ./check-trace.sh

## Mini docs

(none yet — this is the spine)
