# QBR/EBR Coded Research Spreadsheet — companion notes
**Date:** 2026-07-28 · **Task:** #2 in this session's task list ("Build coded research spreadsheet — abductive, draft-then-check") · **Output:** `briefs/qbr-ebr-coded-research-2026-07-28.xlsx`

---

## Scope note — read this first

This spreadsheet is scoped to the **QBR/EBR research corpus assembled in this session** — 17 raw
source files (briefs, `scout_input` dossiers, the manual-steps register, and the Idea Chess
board-baseline handoff). It is **not** a coded pass over the project's full corpus (87 briefs + 72
`scout_input` files).

**This narrowing was a deliberate choice by the orchestrating session, not an oversight.** Coding
the entire project corpus at this granularity would be a materially larger undertaking than the
QBR/EBR task actually in front of Beth this session. Scoping to the 17 files this session actually
read and synthesized keeps the coding pass honest — every row traces to a file verified this
session — rather than padding it with claims from adjacent, unrelated offerings (Ticket Triage
internals, IR/RCA build detail, governance-plane architecture) that weren't part of this session's
work.

---

## The coding scheme, and why

Per the task instructions, categories were **invented to fit what's actually in the corpus**, not
forced onto a pre-existing framework. Reading through all 17 sources before coding surfaced 16
recurring claim-types; those became the codebook (full descriptions in the workbook's **Codebook**
sheet):

`prep-time-cost` · `cadence` · `artifact-spec` · `operating-principle` · `persona-evidence` ·
`confidence-discomfort` · `followup-accountability` · `liability-legal` · `pricing-wtp` ·
`competitive-landscape` · `roi-business-value` · `sentiment-toward-qbr` · `category-framing` ·
`strategic-idea-chess` · `academic-theory` · `evidence-base-quality`

Two are worth flagging as **not** pre-existing frameworks bolted on afterward, but genuine emergent
categories: `evidence-base-quality` (the corpus's own, remarkably frequent self-correction —
killed stats, misattributions, bias flags, negative findings) turned out to be the **second-most
populous category** (36 rows) — this corpus spends nearly as much energy correcting itself as it
does reporting new findings, which is itself a finding worth Beth's attention. `strategic-idea-chess`
(37 rows, the most populous) reflects how much of the "QBR/EBR" corpus is actually Idea-Chess
survival-scoring and portfolio strategy rather than raw operator/market evidence — a ratio worth
knowing before treating this as a pure research corpus.

Each row got **one best-fit primary code**. Several claims plausibly touch two categories at once
(e.g., a WTP figure reported as an Idea-Chess survival input; a structural rule whose rationale is
legal risk) — that ambiguity is exactly what the reliability check below stress-tests, not a defect
in the scheme.

**Evidence-strength tags were carried forward from the source, not re-derived.** Where a source
used `[CS: HIGH]`, `[R]`, `[A]`, `[WOBBLY]`, `[?]`, `[CS: FABRICATION RISK]`, etc., that exact tag
(or combination) is what appears in the "Evidence Strength Tag" column. No claim in this sheet was
assigned a confidence level from scratch by this coding pass.

---

## Method: draft-then-check (single-coder self-consistency check)

Per Beth's stated approach:

1. **First pass:** every substantive claim, finding, or quote across the 17 sources was extracted
   into a row — **238 rows total**.
2. **Second pass:** a pseudo-random ~18% sample (43 of 238 rows, `random.seed(42)`) was re-coded a
   second time, working from the claim text alone — **the stored first-pass code was not consulted
   while re-deriving the second code.**
3. **Comparison:** the two codings were compared row-by-row on that sample.

**Result: 37 of 43 matched — 86.0% percent agreement.**

### What this number does and doesn't mean

- **It is NOT a blind double-code between two independent human-equivalent coders.** It is a single
  coder's (this session's) self-consistency check across two passes, separated only by not looking
  back at the first answer — not by a second independent perspective, a different rater's training,
  or time distance. Treat its evidentiary weight accordingly: it says the coding scheme is applied
  *consistently enough* by one coder on repeat exposure to be usable, not that an independent second
  coder would land in the same place.
- **No formal Cohen's kappa was computed**, per the task's own instruction that a simple
  percent-agreement number was sufficient unless a formal kappa was wanted. Percent agreement
  doesn't correct for chance agreement the way kappa does — with 16 categories, chance agreement
  would be low, so 86% is a meaningfully-above-chance number, but it is a looser statistic than
  kappa and should be read as directional, not precise.
- **The 6 disagreements cluster at genuine scheme boundaries, not random noise:**
  - `evidence-base-quality` vs. `strategic-idea-chess` (a negative finding — e.g., "the number that
    decides sustaining-vs-disruptive doesn't exist in the record" — that's simultaneously a gap in
    the evidence base *and* an input to a strategic bet)
  - `operating-principle` vs. `liability-legal` (a structural rule — "compliance evidence shouldn't
    appear in the QBR itself" — whose *content* is a process rule but whose *rationale* is legal risk)
  - `pricing-wtp` vs. `strategic-idea-chess` (a WTP figure reported specifically as an Idea-Chess
    survival-modeling input, not as raw market pricing)
  - `competitive-landscape` vs. `cadence` (an adoption-rate stat that's simultaneously about market
    practice and about scheduling frequency)
  - `operating-principle` vs. `artifact-spec` (a claim about what a living document *is for*, which
    sits between "what's in the document" and "how the practice should be organized")

  This is useful information in itself: it tells Beth *where* the codebook's boundaries are soft,
  which is exactly where a second, genuinely independent coder (or Beth's own read) is most likely
  to diverge from this pass.

Full row-by-row detail — including which specific rows disagreed and what each pass called them —
is in the **Reliability Check** sheet of the workbook.

---

## Totals

- **238 rows** coded across **17 source files**, all read in full this session.
- **43 rows** (18.1%) re-coded for the reliability check.
- **86.0% percent agreement** on that sample.

---

## Named gaps — per the "no silent caps" rule

1. **`briefs/ebr-process-map-council-2026-07-28.md` does not exist on disk.** It is cited
   repeatedly — by the experience map, the process map, and the manual-steps register — as the
   council pass that downgraded the Map 5 liability finding to `[?]`. A file search of the whole
   repo (`find . -iname "*ebr-process-map-council*"` and broader `*council*` searches) turned up
   no file at that path or any plausible variant. This is a **named gap, not a silent omission**:
   the downgrade itself is corroborated independently by `scout_input/qbr-adjacent-and-legal-2026-07-28.md`
   (Part C), so the finding survives, but the specific council-pass artifact that the other files
   point to could not be read or coded. Flag this to Beth — either the file was never written, was
   written under a different name/path, or exists only in Confluence and was never saved locally.
2. **`briefs/context/qbr-ebr.context.md` was read in full but deliberately excluded from
   row-generation.** Per the task instructions, it was read last, after all 17 raw sources, so this
   coding pass would work from the raw material fresh rather than anchored to that document's own
   synthesis choices. Its claims are themselves derived from the 17 files coded here — coding it as
   an 18th source would double-count the same evidence under a second label. It remains valuable as
   a cross-check: nothing in this coding pass should contradict it without a reason.
3. **No source in this set was skipped, truncated, or partially read.** All 17 files listed in the
   task were read in full. Where a source *itself* names an internal gap (e.g., "Craig is not
   verified," "no third 2025 lawsuit was found," "the two N-able handouts are not web-reachable"),
   that gap is coded as its own row under `evidence-base-quality`, `persona-evidence`, or
   `artifact-spec` — it is preserved as a finding, not silently dropped.

---

## What this is not

Per the task's own instruction: this is a **coding/cataloging pass, not a synthesis**. No product
recommendation, no conclusion about what to build, and no resolution of any open decision (e.g.,
positioning, MVP spine, confidence scope) appears anywhere in the workbook. The point is a large
sheet of tagged, sourced claims Beth can apply her own meaning-layer to — not a finished analysis.
