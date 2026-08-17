# Handoff — ACP QBR/EBR, Tier 1 Concept Prototype

**To:** Beth Connor (pipeline test run — no external recipient yet)
**From:** Band Protocol `/prototype` pipeline
**Date:** 2026-07-28
**Status:** Concept (Tier 1)

## What this is

A working, single-screen concept prototype testing one hybrid section of Stefanie Hammond's real
15-tab EBR template (Risk & Security Review) plus the confirm-gate mechanism that already exists
in code over the Value Ledger's Defensibility tier. Grounded in Candidate 2 (tactical QBR-only) of
the three ACP problem-statement altitudes — that altitude choice is explicitly not resolved here.
This packet exists to test whether the full `/prototype` pipeline (spec → verify → critic → build
→ verify → critic → council → verify → handoff) runs end to end and catches its own errors along
the way. It did — twice.

**Not a delivery to Will or eng yet.** No recipient beyond this test run has been named. Read
`briefs/context/qbr-ebr.context.md` first if you're picking this up cold — that's the standing
spec; this folder is one disposable test of it.

## What's verified

- **World-claims ratio: 43% [A]/[?]** — over the 30% Tier-1 threshold, named not buried. This is
  the number to quote.
- Test-plan-readiness: 25% (2 of 8 Musts have a Built-in Test runnable at this fidelity tier).
- Inflated number, do not quote: ~63% (double-counts riskiest-assumption rows already tallied
  elsewhere — shown to demonstrate why the 47% rule exists, not as a live figure).
- Fidelity level: 30% (Tier 1 · Concept) — schematic, high [A]/[?] expected and disclosed.
- Critic scores, pre → post build: Coherence 4→5, Source-fidelity 2→3, Demo-ability 4→4 (capped by
  a raw-`alert()` seam, since fixed), Differentiation 3→3 (unchanged — a scope property, not a
  build one), Risk 4→4, Scope discipline 4→5.
- Council (Fast Mode, 7 tensions) flagged one build defect neither critic pass caught: the risk
  register's Risk Level and Confidence columns duplicate the same tier value for 3 of 4 rows — a
  real redundancy, fixed nowhere yet, left as a named finding below.

**This math was wrong twice before it was right, and both times a verification step — not a human
proofreading it — is what caught it:**
1. Original spec pass reported 56% (world-claims); Bradley's independent re-derivation caught a
   Gate 2 miscount and corrected it to 43%.
2. The correction fixed the world-claims and Gate 2 figures but missed propagating into the
   "inflated, do-not-quote" number, which still read the old, uncorrected 69% in the brief; the
   pipeline's required proctor-handoff gate caught the mismatch against the already-correct
   math-recount.md and index.html, and it was fixed to ~63%.

Read that as the pipeline working, not as the pipeline being sloppy — every number quoted in this
packet has now been checked by at least two independent passes, not one self-report.

## Tensions named (from council-pipeline-fast.md — not resolved here)

1. **The rail headlines 43%; the brief's own Gate 2 (67%) is worse and isn't shown on screen.** A
   viewer who only sees the rail reads more rigor than a viewer who reads the brief. Route: whoever
   decides what stat a stakeholder-facing rail is allowed to lead with.
2. **The confirm-gate is a hard Must-level UI mechanism sitting on top of an unranked strategic
   question** — which ACP altitude, whether this feature shape survives its own named
   commoditization risk. Two readings, unresolved: this is either premature (a hard gate on an
   unsettled call) or correct sequencing (a Tier-1 concept exists precisely to give the org
   something concrete to react to before the altitude locks).
3. **No line in the screen's value story speaks to the economic buyer** (the unverified "Craig"
   persona) — every ROI line is framed operator- or organization-side. Route: Product/Design, when
   deciding whether the positioning-fork decision (delivery-lead vs. owner) changes this screen's
   copy.
4. **"Math self-corrected" is listed under "what you nailed," but the corrected number (43%) is
   still 13 points over the 30% threshold that same rail names as the standard.** Catching an error
   is not the same claim as the evidence now being sufficient — worth not conflating the two when
   this is shown to anyone.

## Three calls

1. **Which ACP altitude does this offering build toward — Candidate 1, 2, or 3?** Owned by Beth,
   Meaghan, Nicole. This brief assumed Candidate 2 as a scoping choice, not a resolution; nothing
   downstream should treat that as decided.
2. **Has the operator (not the buyer) ever been asked whether they want the AI-drafts/human-edits
   mechanism, or just the finished output?** (Q2, named in the context.md as the single biggest
   gap.) This prototype's core interaction is untested against that preference. Owned by Research —
   no study exists yet.
3. **Fix or accept the duplicate Risk Level / Confidence columns** council found in the built
   table. Cheap to fix, currently unfixed — a decision to leave it as a Tier-1 concept-stage rough
   edge is fine, but it should be a decision, not an oversight now that it's named.

## Artifacts (in place, not duplicated into a separate packet)

- `briefs/context/qbr-ebr.context.md` — the standing spec this test run scoped down from
- `briefs/qbr-ebr-prototype.brief.md` + `briefs/qbr-ebr-prototype.math-recount.md` — Step 2
- `prototypes/acp-qbr-ebr/critic-pass-1.md` — Step 3 (pre-build)
- `prototypes/acp-qbr-ebr/index.html` — Step 4 (build)
- `prototypes/acp-qbr-ebr/critic-pass-2.md` — Step 5 (post-build, delta table)
- `prototypes/acp-qbr-ebr/council-pipeline-fast.md` — Step 6 (Fast Mode, 7 tensions)
- `prototypes/acp-qbr-ebr/.bradley-ledger.md` — full verification trail, every step, every catch

**The 47% rule:** every ratio, count, or stat in this handoff has been grep-verified — by Bradley,
then re-verified by proctor — before shipping. Fluency does not know its own math. This packet is
the proof that check works, including on itself.
