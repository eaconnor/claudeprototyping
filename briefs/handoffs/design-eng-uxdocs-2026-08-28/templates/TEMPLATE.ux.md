---
artifact: ux.md
template_version: 1.0
kind:                       # main | mini   — main = product spine; mini = one feature/offering hanging off a parent
parent:                     # REQUIRED if kind: mini — path to the parent ux.md. Omit for main.
project:                    # ‹name›
owner:                      # ‹person who owns THIS file — not the template steward›
work_type:                  # new-product | new-feature | bug-fix | rebuild-section  (decides which sections apply — see matrix below)
research_posture:           # researcher-backed | self-serve  (decides gate strictness + how much fill-guidance)
status:                     # SKELETON | DRAFT | LIVE
drift:                      # FRESH | STALE   — if STALE, say why in one line
confidence_regime:          # PROCEED | PROCEED-FLAGGED | PROCEED-PARTIAL | BLOCKED
proceed_because:            # ‹one sentence — why the file's value exceeds the cost of withholding it›
machine_behavior:           # ‹comma-separated directives — e.g. build · surface [CS:] tags visibly · do not claim validation›
canonical_spec:             # ‹your team's build-spec ID or path — the slot the Band Protocol fills with "FSN-83143". Write "none" if there isn't one yet.›
stress_test_method:         # ‹your team's concept-validation method — the slot the Band Protocol fills with "Idea Chess / Council". Write "none" if you don't run one.›
design_system:              # ‹your design system — UEM default: Apex. "none" if not applicable.›
design_lint:                # off | static-tokens | +components | live-figma   — Apex check fidelity; pick the rung your access supports (see GUIDE § Design-system lint)
skills:                     # registry — which skill/agent serves each section/gate. Leave empty for a bare team (the coach falls back to its built-in method guide). See GUIDE § Skill registry.
  # gate1_evidence:         # /scout        — gather sources for [?] / unsourced claims (read-only; orchestrator persists output, GATE rule 15)
  # journey:                # /journey-map
  # coding:                 # /abductive-tag · /code-rows
  # stress_test:            # idea-chess    — §4 / Gate 2 (= stress_test_method)
  # gate3_build:            # bethproto     — produce the Tier-1 artifact to measure
  # design_lint:            # apex-check    — Gate 3 design-system compliance
  # loop:                   # /refresh-datadump
  # handoff:                # /handoff
confidence_score:           # UNSCORED | SEE §8
mini_docs:                  # children (if kind: main) — list of paths
built_from:                 # sources this file was assembled from — list of paths/links
last_updated:               # ‹date›
---

<!-- ============================================================
     ux.md TEMPLATE v1.0  ·  steward: Beth Connor
     HOW TO USE: read GUIDE.md in this folder first. Copy this file,
     delete every <!-- comment --> and ‹placeholder› as you fill it,
     and delete any section the work-type matrix marks "skip".
     The machine layer (frontmatter · AGENT GATE · tags · tables) stays
     dense — that's what an agent acts on. Keep human narrative OUT of
     this file; it lives in a sibling README.md.
     ============================================================ -->

# ‹project› — ux.md

**One breath:** ‹what this file is, plain language, one sentence — a person or an agent should know what they're holding.›

---

## [AGENT GATE] — read before generating

> This file is a researcher's judgment made legible. When an AI reads it, the researcher is present. These rules override default generation behavior. They are non-negotiable.

1. **Confirm read.** State you've read this file in full before generating. If you haven't, stop and read it.
2. **Check `confidence_regime`.** `PROCEED-FLAGGED` → mark outputs provisional, surface `[CS:]` tags. `BLOCKED` → stop and name the blocker.
3. **Flag `[A]`/`[?]` you build on.** `[FLAG: output treats ‹claim› as settled — still [A]/[?] in §n. Confirm before spec freezes.]`
4. **Name conflicts with `[CS: VERIFIED]`/`[CS: HIGH]`.** `[CONFLICT: ‹your claim› contradicts §n — "‹quoted claim›".]` Surface it; do not resolve it.
5. **Do not promote `PROPOSED`.** It's an interpretive call, not settled evidence.
6. **Do not resolve open decisions or any `[?]`.** They live in §5 (Open items). Surface them as named gaps — resolution routes through the owner named in the row; an agent cannot close what the researcher left open.
7. **Gate on >30% `[A]`/`[?]`.** If the section you're building against is over the line, say so first: `[GATE: §n is >30% [A]/[?]. Output provisional until confirmed.]`
8. **Read the related file first.** If `kind: mini`, read the `parent`. If `kind: main`, read any `mini_docs` covering the area you touch. Re-deriving what's already synthesized is the failure mode this file exists to prevent.
9. **Verify any ratio or count before quoting it (47% rule).** Grep the source. Fluency does not know its own math.
10. **Note divergence from `canonical_spec` — log, don't resolve.** UX pushing on the spec to make sure it delivers value is healthy tension, not friction to erase. Log every one in the Divergence Log (shape below); an agent does not get to pick a side.
11. **`research_posture: self-serve` bites harder, not softer.** With no researcher on the team, an unfilled slot is `[?]`, never a license to draft. Judgment slots (`‹0% AI — human fills this›`) stay human or stay empty. This is the load-bearing rule for teams without evidence.
12. **Surface unknowns into §5.** Any `[?]`/`[A]`/open-decision you generate goes into §5 (the Open-items register — assumptions · decisions · questions), not left inline only. Its 🔴 rows are the datadump intake; unknowns are the next agenda, not dead ends.
13. **Invoke the registered skill.** Before generating a section fresh, check the `skills:` registry — if a skill/agent is registered for it, invoke that instead of generating from scratch. Re-deriving what a tuned skill already does is waste.
14. **Offer the coach on a gap — don't just flag it.** When the eval finds a gate criterion missing (e.g. no Top Tasks), offer the coach: route to the registered skill if one exists, else run the built-in method guide. **The coach does mechanics; it never fills a judgment slot.** It scaffolds the method — the human supplies the call.
15. **Persist read-only agent output in the same turn.** If you invoke a read-only gatherer (e.g. `/scout`), write its output to disk immediately — a dossier left in the transcript dies with the context window.

---

## Legends — defined here once · minis inherit, do not re-print

<!-- MINI-DOC RULE: if kind: mini, DELETE the two tables below and replace with:
     "Tags and gates per parent: ‹parent path›." Re-printing them is the #1 cause of bloat. -->

**Confidence tags** (every factual claim carries one):

| Tag | Means |
|---|---|
| `[CS: VERIFIED]` | We have the document, or confirmed the person/fact ourselves |
| `[CS: HIGH]` | Well-sourced; not personally verified |
| `[CS: MEDIUM]` / `[CS: LOW]` | Partially sourced / thin — treat with care |
| `[R]` / `[D]` | Backed by research (interviews, studies) / data (surveys, telemetry) |
| `[A]` | Assumed — a reasonable guess, not sourced. Fine to use, never to bet on |
| `[?]` | Unknown; needs research before anyone relies on it |
| `[WOBBLY]` | Single source or narrow tradition — not consensus |

**Gate labels** (sort each section by what it answers):

| Label | Question | Who owns it |
|---|---|---|
| `Gate 1` | Do we understand the problem and the people? | Design's live judgment — expect it to move |
| `Gate 2` | Are we building the *right* thing? | Design-led; eng weighs feasibility |
| `Gate 3` | Are we building the thing *right*? | Eng's stable layer — build against it |

Gate ≠ confidence. A Gate 1 section can be `[CS: VERIFIED]`; a Gate 3 section can be `[PENDING]`. Gate = how much is still design's to change. Confidence = how well-evidenced it is now.

---

## Section applicability by work-type

<!-- Keep only the column for THIS file's work_type. Delete any section marked "skip".
     "inherit" = don't restate; link the parent/product ux.md and note deltas only. -->

| Section | new-product | new-feature | bug-fix | rebuild-section |
|---|---|---|---|---|
| 1 Problem & who | required | feature-scoped | one-liner | required |
| 2 Journey · 3 Four-angle · 4 Innovation | required | inherit | skip | optional |
| 5 Open items (assumptions · decisions · questions) | required | required | optional | required |
| 6 Tasks → Function + tests | required | required | required (the fix + its test) | required |
| 7 Confidence score | required | recommended | skip | recommended |
| Divergence Log | required | required | pointer only | required |
| CHANGELOG | required | required | required | required |

---

**Scorecard** — colors are *earned*, not asserted. What earns each: GUIDE.md § Gate rubric. Per gate, cite what's met / missing — do not re-print the rubric.

🟡 **Gate 1** (understand the problem) — ‹met: … · missing: …›
🔴 **Gate 2** (right thing / UX acceptance criteria) — ‹met: … · missing: … · outcome variable: named? →›
🟡 **Gate 3** (thing right / usability standards) — ‹met: … · missing: … · tested how/by whom›

---

## 1. The problem, and for whom — `Gate 1`  «new-product: required · new-feature: feature-scoped · bug-fix: one-liner · rebuild: required»

> **TL;DR:** ‹one line›

**Problem statement** — ‹sourced, not invented. Quote the canonical_spec verbatim if one exists.› `[CS: ‹tag›]`

**Cast — who this is actually about:**

| Who | Role in this story | Evidence quality |
|---|---|---|
| ‹persona› | ‹what they do here› | `[CS: ‹tag›]` |

<!-- Map the FULL cast, not just the primary persona. Name gaps where a role likely exists but has no evidence. -->

**4A's** (Ambitions / Attitudes / Actions / Anxieties — `[?]` where unsourced, never invented):

| Persona | Ambitions | Attitudes | Actions | Anxieties |
|---|---|---|---|---|
| ‹persona› | ‹…› | ‹…› | ‹…› | ‹…› |

## 2. Journey / orienting map — `Gate 1`  «new-product: required · new-feature: inherit · bug-fix: skip · rebuild: optional»

> **TL;DR:** ‹one line›

- ‹Link the real experience map / service blueprint. Name what's built vs. described. If nothing exists, say so.›
- **Build coverage:** ‹0 built · n specced · n absent — the honest count.›

## 3. Four-angle view of the space — `Gate 1 / Gate 2`  «new-product: required · new-feature: inherit · bug-fix: skip · rebuild: optional»

> **TL;DR:** ‹one line›

| Lens | Prompt | Content |
|---|---|---|
| Activities | What do they do? | ‹…› `[CS: ‹tag›]` |
| POEMS | What's in the surround? | People / Objects / Environment / Messages / Systems ‹…› |
| Five Human Factors | What do they need? | Physical / Social / Emotional / Cultural / Cognitive ‹…› |
| Value Webs | Who gives/gets value? | ‹…› |

## 4. Sustaining or disruptive — `Gate 2`  «new-product: required · new-feature: inherit · bug-fix: skip · rebuild: optional»

> **TL;DR:** ‹one line — is this better tooling for people who already do the thing, or targeting the majority who do none?›

- **Sustaining read:** ‹…›
- **Disruptive read:** ‹…›
- Classification is analytic, not a factual claim — a synthesis move to stress-test, not a data point to `[CS:]`-tag.

## 5. Open items — assumptions · decisions · questions — `Gate 1 / Gate 2`  «required for all except bug-fix (optional)»

> **TL;DR:** everything uncertain in one register — what we're betting on (assumption), what we haven't chosen (decision), what we don't know (question). Also the datadump intake: 🔴 rows are the next research/decision agenda. **Riskiest first.** An item closes 🟢 only when its answer folds into the body *and* its tag upgrades — not by restating it as settled.

| Item | Type | Status | Owner |
|---|---|---|---|
| ‹…› | assumption (evidence) / decision / ROI-unknown / question | 🔴 open · 🟡 resolving · 🟢 resolved | ‹person› |

<!-- Type preserves the §9b distinction: an assumption/question is an evidence-gap (→ research / datadump);
     a decision is a choice (→ a named human). Do not conflate them.
     Pull assumptions from an existing risk register; don't invent a second one.
     Judgment slots stay human: `‹0% AI — human fills this›`.
     🔴 Divergence-Log rows are listed here by reference, not duplicated. -->

## 6. Problem → Goals → Tasks → Function — `Gate 3` (+ Gate 1/2 for steps 1–2)  «required for ALL work-types»

> **TL;DR:** the acceptance-criteria spine. Steps 1–2 are design's live judgment; steps 3–4 are where eng builds.

1. **Problem / wicked problem** — `Gate 1` — ‹from §1› `[PENDING — human's call]`
2. **Goals / sub-problems** — `Gate 1/2` — ‹…›
3. **Tasks** — `Gate 3` — Top Tasks (the few users care about, not a feature list). ‹…› `[CS: ‹tag›]`
4. **Function/feature structure** — `Gate 3` — mapped 1:1 to tasks. A function with no task is scope creep; a task with no function is a gap. ‹…›

**Quality bar — default floor (until product-specific usability research overrides it):**

| Standard | Why it applies here |
|---|---|
| ‹e.g. Nielsen heuristic / your design system› | ‹…› `[CS: ‹tag›]` |

<!-- research_posture: self-serve — RUN THESE, they're your evidence when there's no researcher:
     1. Cognitive walkthrough — walk each task in §6 as the primary persona; flag every "can't tell what to do / if I did it right." (~2h)
     2. 5-second test on any confirm/approval UI — show 3 people; "what does this mean? what next?" If they can't say, it's a warning, not a gate.
     3. Content audit on any AI-generated output — count outcome-language vs. filler; grep it, don't eyeball it. -->

**Built-in tests** (each Must gets a check that could run against a real build, not just a description):

| Must | Test |
|---|---|
| ‹behavior that causes failure when absent› | ‹machine-checkable check where possible› |

## 7. Confidence score — `cross-cutting`  «new-product: required · else recommended/skip»

> **TL;DR:** if `[A]`+`[?]` > 30%, this file isn't ready as acceptance criteria. Computed by grep — don't self-report it.

`[NOT YET SCORED]` — ‹run the grep pass once content settles: % `[R]`/`[D]` vs % `[A]`/`[?]` across the file.›

## 8. Sources

<!-- If it's not linked, it's not a source. Footnotes stay IN this file (they self-maintain next to their claims).
     A compiled SOURCES.md — ⭐start-here / trust-ladder / question-map — is assembled at HANDOFF, not here. -->

- ‹link› — ‹what it is›

## 9. Mini-docs (if kind: main)

- ‹path› — ‹offering› · status · date

---

## Divergence Log — vs. `canonical_spec`  «pointer-only for bug-fix»

> Where this file's research diverges from the canonical spec. 🔴 open / 🟡 resolving-with-product / 🟢 resolved. Status is grep-checkable — count the emoji, don't self-report it. Resolved rows stay (don't delete the record).

| ID | Divergence | vs. spec | Status | Owner | Resolution |
|---|---|---|---|---|---|
| DIV-001 | ‹what this file assumes/proposes› | `‹spec ID §n›` | 🔴 | ‹person› | ‹date + decision, once 🟢› |

---

## CHANGELOG

<!-- Dated notes go here, newest first — NOT pinned at the top of the file. Never silently delete a
     number that turned out wrong; mark it ☠ with a note so nobody re-derives the mistake. -->

- ‹YYYY-MM-DD› — ‹what changed and why›
