# What ties to the Intent Spec, and what must not

Beth Connor · 2026-09-22 · corrects the section proposal from earlier today

## The division

| | holds | answers | signed? |
|---|---|---|---|
| **Intent Spec** | the **conclusion**, as a contract | what are we building, why does the business want it, what must be true to ship | yes — §17 |
| **`ux.md` / `vision.md` / `design.md`** | the **reasoning** that produced it | do we understand the human problem · is this the right thing · is it built right | no — they stay provisional on purpose |

**The rule that follows: a gate file points at the Intent Spec, it does not restate it.**
Anything stated in both drifts, and the copy in the unsigned document will win by accident
because it is the one being edited.

I checked all twenty sections. The Intent Spec already covers most of what I proposed
adding — which means the gate files were on their way to becoming a second spec with no
signatures on it.

---

## Where each gate file ties

### `ux.md` — the human problem

| gate file section | Intent Spec | relationship |
|---|---|---|
| 1. The problem, and for whom | **§3 Users and affected parties** · §2 Why this work exists | `ux.md` **authors** the cast; §3 **states** it. Upstream/downstream, not duplicate. §2 is the *business* rationale — its sibling, not its twin |
| 2. Top Tasks | **§3 Primary user journey** · §5 Requirements | feeds both |
| 3. Open items | **§12 Open questions** · `OPEN.md` | **three places is one too many.** `ux.md` holds them while being worked · `OPEN.md` is the register · §12 is what the contract acknowledges proceeding despite. Pointer at each stage, never a copy |
| UX Acceptance Criteria | **§5 Requirements (`UXI-##`)** | §5 is canonical. `ux.md` cites ids, never defines them |
| Acceptance Criteria — Gate 1 | — | the gate files' own rubric. No Intent Spec equivalent, correctly |

### `vision.md` — and this one shrinks a lot

| gate file section | Intent Spec | verdict |
|---|---|---|
| Direction | **§1 Desired outcome** | **point, don't restate.** §1 is singular and contractual |
| What this is not | **§4 Out of scope / non-goals** | **point.** Straight duplicate |
| The outcome variable | **§1 Success metrics** · §1 Anti-success signals | **point.** Straight duplicate |
| Decision Log | **§17 Decision log** | **point.** Straight duplicate |
| **The concepts** | **nothing** | **KEEP — the centerpiece.** §1 holds *one* outcome. There is nowhere in twenty sections for five futures side by side |
| **Evidence** | **nothing** | **KEEP.** See below |
| **What we ruled out, and why** | **nothing** | **KEEP.** §17 records decisions taken, not candidates dropped and why |

So `vision.md` stops being a mini-spec and becomes what it should be: **the concept
workshop.** Three content sections — concepts, evidence, rejected — plus inherited criteria
and its own gate rubric. Everything else is a link.

### `design.md`

| gate file section | Intent Spec | verdict |
|---|---|---|
| **FLOOR and FIT** | **§7 Invariants — split FLOOR/FIT** · §5 Accessibility requirements | **point, don't restate.** The Intent Spec already does this split, explicitly, in two places. `design.md` should carry the *reasoning* for the split and link the invariant ids |
| Rules pulled from the design system | **§5 Design references** · §7 Taste invariants | partial. Keep — `design.md`'s version is the *script-checkable subset*, which §5 is not |
| **Context of use** | **nothing** | **KEEP.** ISO 9241-11's users/tasks/environment has no home in twenty sections, and every usability measure is meaningless without it |
| Eval loops / instruments | **§14 Testing, evaluation, observability** | related, distinct. §14 is build tests and instrumentation. §14 has no slot for a usability instrument or a SUS threshold. Keep, and link |
| **Evidence** | **nothing** | **KEEP** |
| UX Acceptance Criteria | **§5** | inherited, plus the rows *added* at this stage (accessibility, APEX) |
| Acceptance Criteria — Gate 3 | — | own rubric |

---

## The four things the Intent Spec has no slot for

This is the honest answer to "what should tie, and what's actually new."

### 1. Per-claim evidence dependency — `## Evidence`

The Intent Spec has two evidence sections and **neither does this job**:

- **§2 Source evidence** — `SRC-001 | what it contributes | link | basis`. That's a **source
  log**: the same object as the datadump. One row per document.
- **§15 Evidence requirements** — test results, screenshots, logs, traces. That's **build
  verification**: what the implementation must produce. Nothing to do with research.

Neither carries `rests_on` against a finding, a rung, a population, or a ceiling. So there
is no way, anywhere in the Intent Spec, to ask *does this claim exceed its evidence.* That
is what `## Evidence` adds, and it's genuinely additive rather than a second copy.

### 2. Multiple concepts — `## The concepts`

§1 is *"Outcome statement"*, singular, contractual. Design putting five futures up at once
has nowhere to live. The Intent Spec is the right place for the one that won; it's the wrong
place for the four that didn't.

### 3. A forwarding address — `## What we ruled out, and why`

§17 logs decisions made. §12 logs questions open. Neither holds *a candidate that was
dropped, and why.* This is the gap that let Alert Flood Suppression rank #2 on the survey
and then disappear from every later document with no note saying whether the follow-up ran.
Converges with Beth Nam's requested `superseded_by`.

### 4. The marked leap — `confidence_regime` and the interpretive tag

The Intent Spec has `evidence_basis:` — a document-level self-assessment. It has no
`confidence_regime`, and nothing anywhere marks *"this sentence is our reading, not a
finding."* That distinction is the whole reason the gate files exist as separate documents
rather than as §21.

---

## What this means for the build

The section list gets **shorter**, not longer:

- `ux.md` — add `## Evidence` and `## UX Acceptance Criteria`. Convert `3. Open items` to a
  pointer at `OPEN.md` and §12.
- `vision.md` — add `## The concepts`, `## Evidence`, `## What we ruled out, and why`,
  `## UX Acceptance Criteria`. **Convert Direction, What this is not, The outcome variable
  and Decision Log to pointers** at §1, §4, §1 and §17.
- `design.md` — add `## Evidence`, `## UX Acceptance Criteria`, `## Eval loops`. **Convert
  FLOOR and FIT to a pointer** at §7, keeping the reasoning and the invariant ids.

Six of the fourteen sections I proposed this morning become links. That's the correction.

One consequence worth stating: **a pointer is only honest if the target exists.** Converting
`vision.md`'s Direction into "see §1" is worse than restating it if §1 is still
`‹placeholder›`. So the pointer conversions need `check-gates.sh` to verify the target section
is filled — otherwise we've replaced duplication with a dangling reference, which reads as
covered and isn't.
