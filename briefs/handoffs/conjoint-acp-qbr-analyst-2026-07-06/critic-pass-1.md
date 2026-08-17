# Critic Pass 1 — ACP QBR Analyst (AI Coworker)
**Round:** Pre-build · Tier 1 Concept · feeding 44-voice council
**Reviewed against:** `briefs/acp-qbr-analyst.brief.md` + `briefs/acp-qbr-analyst-math-recount.md`
**Scout grounding:** [CS: UNKNOWN] Critic subagent could not open `scout_input/acp-qbr-analyst/` (Read-only sandbox path resolution). Scored the brief against its own cited sources as transcribed. Source-fidelity dimension is judged on internal consistency and named provenance, NOT verified against the raw scout artifacts. (Parent note: Bradley independently confirmed all 5 scout files exist on disk and the LEAD math holds.)

There is a brief. This is a real review, not opinion. What follows is the punch list.

---

## Score table (1–5)

| Dimension | Score | One-line |
|---|---|---|
| Coherence | 4 | Split-readiness framing is honest and internally consistent; the world/experience seam is named, not hidden. |
| Source-fidelity | 4 | Tags are disciplined and corrections are baked in; docked one because scout artifacts were not verifiable this pass. |
| Demo-ability | 2 | The counter-metric (traceable numbers) has no defined interaction — it is the thing to test and it is unspecified. |
| Differentiation | 3 | NormalizeCrossVendor is the moat AND the risk; the brief names it but under-scopes the one thing that separates this from a feature. |
| Risk | 3 | Failure modes are strong and specific; ScalePad contradiction handled honestly; but recruitment + feasibility risks sit unowned. |
| Scope discipline | 4 | "Step 2 draft-report landing is the primary test" is a tight, correct scoping call for Tier 1. |

**Aggregate read:** ready as a Tier 1 concept to hand to the council. NOT ready to build a screen. The two lowest scores (Demo-ability, Differentiation) are exactly the holes the council should be pointed at.

---

## Punch list

### 1. Split-readiness scoping (world 24% vs experience 93%)
**PASS:** Scoping the primary test as "Step 2 draft-report landing (the trust moment)" is coherent EVEN THOUGH the experience layer is 93% [A]. That is the point of a Tier 1 concept: you test the highest-risk hypothesis, and the highest-risk thing is exactly the unsourced trust moment. Building the well-sourced world layer first would validate nothing new.
**PASS:** The three-number honest math (24% lead / 93% experience / 41% inflated) refuses the single blended figure. This is the 47% rule applied correctly.
**RISK:** "Passes Tier 1" leans entirely on the world number. If the council or a later reader quotes 24% without the 93% beside it, the brief will read as more ready than it is. The lead number is defensible; the lead number ALONE is misleading. Keep both numbers welded together in every downstream artifact.

### 2. Counter-metric demo-ability (traceable numbers = 0 ungrounded)
**FAIL:** The counter-metric is the strongest part of the strategy and the weakest part of the plan. "Zero partners report they'd send a number they cannot trace" requires a working provenance drill-down, and the brief itself flags "Provenance theater" (failure mode 2) as the way this fails silently. There is no spec for what "trace" means as an interaction — hover? click-to-source? a freshness timestamp? Right now the counter-metric is measurable in principle and undemonstrable in practice.
**MISSING:** A definition of the minimum provenance interaction that would let a test partner actually attempt to trace a number. Without it, a build could ship decorative source labels and pass the KR while failing the counter-metric — and no one would catch it. This is a build-blocking gap.
**RISK:** SourceProvenance is tagged [D] on demand but [A] on shape. The shape is the counter-metric. An [A] shape carrying a zero-tolerance counter-metric is the single highest-leverage unknown in the brief.

### 3. NormalizeCrossVendor (feasibility watch-item)
**PASS:** Correctly identified as the hardest service, the study's named risk, and the differentiator ("holy grail", Kenneth). Failure mode 3 ("Normalization is where it dies") names the trap: a demo that fakes clean cross-vendor data hides the only problem that determines buildability.
**FAIL:** Under-scoped for a service the brief itself calls decisive. It is one domain-model line and one failure mode. There is no statement of what the prototype will HONESTLY represent about normalization — will Step 2 show reconciled data as if solved, or will it visibly mark which numbers required cross-vendor reconciliation? A Tier 1 concept can defer feasibility, but it must declare the pretense it is making so the council can shoot at it.
**MISSING:** An explicit "normalization is faked in this concept — here is what that hides" line in the stimulus definition. The stimulus (ConnectWise + NinjaOne + SentinelOne + Cove) implies clean multi-vendor data; nothing says the concept is knowingly papering over the moat.
**RISK:** [CS: MEDIUM] The "[D-absence]" claim that no tool normalizes cross-stack is flagged [WOBBLY] correctly, but the differentiation of the WHOLE concept rests on that absence. If a competitor does this (or Ninja/N-central ships it as a feature — see the WTP tension), the concept's reason to exist evaporates. Council should stress-test the absence claim directly.

### 4. ScalePad displacement contradiction
**PASS:** Handled honestly and this is the best correction in the brief. Lifecycle Manager X (new, selling, Aug 2025) vs Lifecycle Insights (legacy, no announced EOL) is disentangled; the displacement-urgency framing is downgraded from [R] to [A]/[?] with "[contradiction named]" and routed to Beth to reconcile with Kenneth. This is exactly what "name it, don't smooth it" looks like.
**PASS:** Adjacent fabrication risks handled with the same discipline: ~30% AI efficiency = [?] FABRICATION RISK; $300/user and 15–20hr held as respondent-reported [?] with public counter-ranges named; exact 90→17.5min kept [D verify-in-browser], never promoted to [R].
**RISK:** The reconciliation is assigned to Beth but has no gate. If Kenneth's account cannot be reconciled, does the displacement framing get cut entirely? The brief lets an unresolved [A]/[?] ride into the council without a decision rule for what happens if it stays unresolved.

### 5. KR / counter-metric structure
**PASS:** KR and counter-metric are correctly separated — speed (send with <15 min) vs trust (trace every number) — and the counter-metric explicitly refuses to trade trust for speed. Failure mode 1 (gap-reads-as-bug) protects the trust variable at the exact moment being tested.
**RISK:** "70%+ of test partners" with no sample size or recruitment plan (both [?]) means the KR is currently unmeasurable. Fine for a no-build council round; a build-blocker after.

### 6. Stimulus design
**PASS:** Single deliberate gap (backup missing for 3 devices) is a clean, testable trust probe tied directly to failure mode 1.
**RISK:** The brief flags it itself: 150 endpoints / 4 vendors may not match the target-buyer profile (larger SMB). A too-small stimulus could make the whole trust test read as trivial to the exact partners it targets. [?] Resolve before build.

---

## Gaps to resolve before ANY build

1. **Define the provenance interaction.** What does "trace a number to its source" DO on screen? This is the counter-metric made physical. Build-blocking. (Punch item 2)
2. **Declare the normalization pretense.** State in the stimulus what the concept fakes about cross-vendor reconciliation and what that hides. Build-blocking for honesty. (Punch item 3)
3. **Decision rule for ScalePad.** If Kenneth's account can't be reconciled, does displacement urgency get cut? Set the gate before council, not after. (Punch item 4)
4. **Recruitment + sample size.** The KR ("70%+") is unmeasurable until this exists. Not needed for council; needed before test. (Punch item 5)
5. **Stimulus-size fit.** Confirm 150 endpoints / 4 vendors reads as representative to larger-SMB partners, or resize. (Punch item 6)
6. **Gap as first-class object vs inline note.** Failure mode 1 hinges on this representation choice; it is [?]. Council should be asked to predict which framing preserves trust. (Punch item 1/domain model)

---

## Honor check
- **Judgment held by Beth:** what to build, the Step-2 trust hypothesis, the stimulus and gap design, the ScalePad reconciliation call. This review names gaps in her plan; it does not decide them for her.
- **Mechanics assisted:** scoring, punch-list structure, ratio-consistency check against the math recount.
- **Not verified this pass:** scout artifacts were not readable by the critic subagent — source-fidelity is judged on internal consistency and named provenance only. (Parent + Bradley confirmed the files exist and math holds.)
- **No numbers invented.** The 24/93/41 figures are quoted from the math recount as-is; not recomputed here.
