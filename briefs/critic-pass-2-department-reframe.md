# Critic Pass 2 — ACP Coworker Department (department/hub reframe)
**Round:** Pre-build · post-reframe · feeding 44-voice council
**Brief reviewed:** `briefs/acp-qbr-analyst.brief.md` (rewritten, five-product / coworker-department reframe)
**Math reviewed:** `briefs/acp-qbr-analyst-math-recount.md` (post-reframe recount)
**Prior pass:** `handoffs/next-claude-acp-coworker-dept-2026-07-06/critic-pass-1.md` (single-QBR framing)
**Scout artifacts:** not directly verifiable this pass (Read-only sandbox); source-fidelity scored on internal consistency and named provenance. [CS: UNKNOWN] — same constraint as prior pass.
**Review date:** 2026-07-06

There is a brief. This is a real review. What follows is the punch list.

---

## Score table (1–5)

| Dimension | Pass 1 | Pass 2 | Delta | One-line |
|---|---|---|---|---|
| Coherence | 4 | 4 | → | Department reframe is internally consistent; the business-led / security-led fork is named; the quiet lean toward business-led spine is not. |
| Source-fidelity | 4 | 4 | → | Tags are disciplined; composition [A]s are enumerated and costed in the math; #35 (security-center-of-gravity) does work it isn't strong enough to do. |
| Demo-ability | 2 | 2 | → | New KR clause ("at least one partner names a specific decision from cross-coworker signal aggregation") is unmeasurable with the proposed stimulus as described; the provenance-interaction gap from Pass 1 remains unresolved. |
| Differentiation | 3 | 3 | → | Normalization-as-moat is stronger in context (round-2 baked in); normalization-pretense declaration still missing from the stimulus; the beachhead question (FM8) is named but not given enough council surface. |
| Risk | 3 | 4 | ↑ | Seven failure modes instead of four; FM7 (Adlumin org-boundary) and FM8 (hub under-reaches without security band) are genuinely new and specific; ScalePad discipline carried forward. |
| Scope discipline | 4 | 2 | ↓ | Pass 1 tested one screen (Step 2 trust moment); the rewrite implies signal→narration surfaces, a department operating surface, five coworkers, and a vCISO bundle — without explicitly auditing whether any of that is in scope for a Tier 1 concept. The department reframe smuggles surface area. |

**Aggregate read:** The reframe is epistemically honest (math corrected, composition tagged, fork named). It is NOT scope-disciplined: the rewrite widens the implied test surface from one trust moment to a multi-coworker architecture without a clear scoping call. Ready for council as a hypothesis stress-test. NOT ready to build a screen. The council needs to be pointed at scope before it gets pointed at architecture.

---

## Punch list

### 1. The quiet lean on the central fork
**FAIL:** The brief names the business-led vs security-led fork as a genuine decision ("This is a decision for Beth/Meaghan/Nicole"). But the document is not structured neutrally. The business-led spine (QBR hub drives the frame) is built out across Gate 2, the domain model, the signal→narration architecture, and the ScalePad analogy. The vCISO-bundle thesis gets one sub-section tagged "[A] — strategic, needs council challenge." The evidence each side has is not laid out in parallel. A council reading this brief will spend 80% of its intellectual budget on the business-led architecture and 20% on the security-led alternative — not because the evidence demands it, but because of where the document puts its pages.
**MISSING:** A parallel evidence block: what the security-led spine (vCISO bundle as anchor, QBR as narration) has going for it from the actual data (4-of-5 security-flavored coworkers, Adlumin as native source, Cynomi tripling), presented at the same structural level as the business-led argument.

### 2. Claim #35 — security-center-of-gravity does structural work it cannot support
**FAIL:** The brief tags #35 ("Demand's center of gravity is security operations") as [D]/[A] → counted [A] (interpretation). Correct tag. But in Gate 2, this interpretation is doing load-bearing work: it is the premise that grounds the vCISO-bundle thesis, which grounds the central fork, which is the thing the council is asked to adjudicate. A claim tagged [A] (interpretation of ranked data) is carrying an entire strategic alternative without that load being named. The math-recount is transparent about the epistemic cost of the four composition claims; the brief's prose body is not. The security-center-of-gravity read is an interpretation of a small-n ranking, not a finding. Presenting it as the basis for a commercial strategy alternative without flagging that derivation chain is a source-fidelity problem.
**MISSING:** A sentence in Gate 2 that names the derivation: "The vCISO-bundle thesis rests on this interpretation of n=8 ranking data. It has no independent sourcing. The council should treat the thesis and the interpretation as the same [A]."

### 3. The new KR clause is not demonstrable with the described stimulus
**FAIL:** The key result now requires "at least one partner names a specific decision the QBR surfaced that they would not have had without cross-coworker signal aggregation." This is a meaningful signal if it fires. But the stimulus as described provides ONE simulated coworker signal (e.g., Alert Flood Suppression resolved 47 alerts → appears as a QBR section claim). A test partner shown one signal in a concept demo cannot meaningfully distinguish "this decision came from cross-coworker aggregation" from "this decision came from this alert count." To name a decision as emerging from aggregation, they would need to see at least two distinct coworker signals composing into a single QBR claim. The KR clause implies a more complex stimulus than the stimulus section describes.
**MISSING:** Either (a) a multi-signal stimulus spec (two or more coworker signals composing into one QBR section claim), or (b) a note that this KR clause is aspirational for v1 concept and will require a more mature stimulus to test.
**RISK:** [CS: MEDIUM — inferred from the stimulus description] As written, the KR clause could be "met" by a test partner who says they liked the demo. That is not the same as the KR clause firing. The success condition needs a sharper behavioral definition: the partner must be able to name both the coworker source and the decision it surfaced, unprompted.

### 4. Provenance-interaction definition — still build-blocking, now architecturally expanded but no more testable
**FAIL (carried from Pass 1, unresolved):** The prior critic flagged "define the provenance interaction — what does 'trace a number to its source' DO on screen?" as build-blocking. The rewrite introduces two provenance layers (SourceProvenance + SignalProvenance — which coworker a section came from) and correctly tags them as [A] design constructs. But neither layer has an interaction spec. The counter-metric still requires a partner to "explain the provenance of every number AND every coworker finding." That counter-metric is measurable in principle and undemonstrable in practice — unchanged from Pass 1. The rewrite made the architecture more precise while leaving the interaction gap exactly where it was.
**MISSING:** A minimum interaction definition: what physical/visual action does the test partner take to trace a number to its source AND trace a QBR section to its originating coworker? This is the counter-metric made physical. Without it, the prototype can ship decorative labels and the counter-metric cannot distinguish pass from fail.

### 5. Normalization-pretense declaration — still absent
**FAIL (carried from Pass 1, unresolved):** Pass 1 called for an explicit "normalization is faked in this concept — here is what that hides" line in the stimulus definition. The rewrite does not include this. The stimulus still specifies a 4-vendor stack (ConnectWise + NinjaOne + SentinelOne + Cove) without stating whether the prototype shows clean cross-vendor data as if solved, or marks which numbers required reconciliation. Failure mode 3 is carried ("normalization is where it dies") but the stimulus does not declare what pretense it is making. Council cannot shoot at a pretense that is not named.
**MISSING:** One line in the stimulus definition: "This concept presents cross-vendor data as [clean/reconciled/marked]. The prototype knowingly fakes [X]. This hides [the exact problem that determines buildability]."

### 6. Scope discipline — the department reframe smuggles surface area
**FAIL:** Pass 1 scoped the primary test as "Step 2 draft-report landing (the trust moment)" — one screen. The rewrite names Step 2 as the primary test, then adds: signal→narration handoff surfaces (how does Alert Flood Suppression resolved-47-alerts appear in the QBR?), department operating surface (is there a shared review surface?), five coworkers with defined signal formats, SignalProvenance as a reviewable UI object, and DriveDecision mechanic (priced opportunity slate). None of these are scoped in or out for the Tier 1 concept. They exist as domain-model claims. A builder opening this brief has no clear signal about what the Step 2 landing surface is testing vs what the new department surfaces would test vs what is deferred.
**MISSING:** A Tier 1 scope declaration: what surfaces are IN scope for the first prototype, what surfaces are explicitly deferred (and to what tier), and what the department reframe adds to the Step 2 trust test specifically (not in general).
**RISK:** [CS: MEDIUM] A 44-voice council running against this brief without a scope declaration will generate contradictory build priorities. Some voices will optimize for the department architecture; others will optimize for the trust moment. The synthesis will be harder to action without knowing what this tier is actually testing.

### 7. Failure mode 8 (QBR-as-hub under-reaches) vs the beachhead question — undersurfaced for council
**FAIL:** FM8 is correctly identified: "if only the QBR coworker ships at v1, it has no coworker signals to compose — it's just a single-coworker QBR generator." The brief resolves this with "can consume signals from N-able's existing tools (N-central / Adlumin) directly, bypassing the need for the other coworkers to exist first." But this resolution is presented as an option, not a decision. The "What's missing" section names it as the beachhead question [?]. The brief gives the council enough to notice the problem; it does not give the council enough to adjudicate it. The sequencing options (full department simultaneous / QBR + N-central signals / QBR standalone) are not laid out with their tradeoffs, dependencies, or the evidence each option rests on.
**MISSING:** A beachhead sequencing table: three paths (build full department first / QBR pulls from existing tools / QBR standalone), with what each path requires, what it tests, and what it cannot test. Without this, council testimony on sequencing will be scattered and non-comparable.

### 8. The buyer-vs-user gap — improved but still unowned
**PASS:** The gap is named in Gate 1, in "What's missing," and in the HANDOFF. The discipline is correct: Nicole studied buyers/economic-decision-makers; the daily user (vCIO/analyst) is unstudied. [?]
**RISK:** The new KR clause ("at least one partner names a specific decision from cross-coworker signal aggregation") is a buyer-side success signal. But the experience surfaces being designed (signal→narration handoff, SignalProvenance as a reviewable UI object, department operating surface) are user-side surfaces. The brief is testing buyer willingness to send a QBR while designing for a user who was never studied. This is a structural tension, not just a gap — and it is not named as such anywhere in the brief.

### 9. Adlumin org-boundary — named but not scoped for council
**PASS:** FM7 is specific and honest: Adlumin org-boundary implications are unknown [?]; the question of whether Adlumin is available as a coworker signal source or runs as a separate product lane is explicitly unresolved.
**RISK:** [CS: UNKNOWN — org structure not verifiable this pass] If the vCISO-bundle thesis makes Adlumin the backbone of the security band, and if Adlumin runs in a separate product lane, the security-led spine collapses as a strategic option before the council can evaluate it. The council should be told whether this constraint is knowable before or during this cycle, or whether it is a dependency that must be resolved before a build decision can be made. Currently it sits as a [?] with no resolution path.

### 10. What Pass 1 flagged that the rewrite failed to carry or resolve
**ScalePad displacement decision rule — still unowned.** Pass 1 called for a decision rule: "if Kenneth's account can't be reconciled, does displacement urgency get cut?" The rewrite correctly holds the displacement framing at [A]/[?] and names the contradiction (LM X is ScalePad's new sell, not a sunset). But there is still no decision rule for what happens if the reconciliation never happens. The [A]/[?] is stable but gated on a Beth action with no mechanism.

**Recruitment + sample size — still [?], still unowned.** The KR ("70%+ of test partners") has no sample size. Fine for a council round; the rewrite does not add anything here. Noted as carried, not escalated.

**Stimulus-size fit — still [?], still unowned.** 150 endpoints / 4 vendors may not represent the larger-SMB target buyer. Carried from Pass 1; no new information.

---

## Resolved since Pass 1 (credit where due)

**PASS:** Math corrected and transparent. The spec originally reported 11/38 = 29%; Bradley grep-recount corrected to hard 10/38 = 26% / conservative 12/38 = 32%. The math-recount document names the correction explicitly ("Fluency does not know its own math") and carries the honest figure that crosses the 30% gate. The brief proceeds to council with the gate crossing named, not smoothed. This is the 47% rule applied correctly under pressure.

**PASS:** Do-not-cite list expanded and carried forward. All six traps from the HANDOFF are present in the brief's "Round-2 do-not-cite list." The brief does not promote any of them to fact. The Cynomi vCISO-tripling figure is cited [CS: MEDIUM, WOBBLY — vendor-sponsored] — correct discipline.

**PASS:** Round-2 competitive intelligence folded in correctly. ScalePad's operating-system reframe, deck-gen commoditization, normalization as the defensible race, plug-in as a real GTM path, and Gradient as the moat-acquisition candidate are all present, tagged, and routed to the right decision-owners.

**PASS:** Failure modes 5–8 are genuinely new and specific, not carried filler. FM5 (hub narrates coworker mistakes to client) and FM8 (hub under-reaches without security band) are structural risks of the department architecture that the prior brief could not have named.

**PASS:** The "department" term and "narration hub" term are explicitly tagged [A] in the ubiquitous language section, with the note that no vendor or interviewee used them. The architecture is presented as hypothesis, not established design.

---

## Priority order for council prep

1. **Scope declaration** — what is Tier 1 testing (one surface or five)? Council cannot prioritize without this.
2. **Fork parallelism** — give the security-led spine equal structural space before council convenes, or weight the testimony cleanup after.
3. **New KR stimulus spec** — one signal is not enough to test cross-coworker aggregation; fix the stimulus or flag the KR clause as untestable this round.
4. **Normalization-pretense declaration** — one sentence; builds integrity and sharpens council fire at the right target.
5. **Provenance interaction minimum** — one sentence on what "trace" does physically; without it the counter-metric cannot be scored.
6. **Beachhead sequencing table** — three paths, their requirements, their tradeoffs; council testimony on FM8 will be scattered without it.
7. **Adlumin constraint resolution path** — is this knowable before council synthesis? If not, name it as a pre-build gate.

---

## Honor check
- **Judgment held by Beth:** the department composition thesis, the spine fork, the stimulus design, the ScalePad reconciliation call, the scope declaration. This review names gaps in those calls; it does not make them.
- **Mechanics assisted:** scoring, punch-list structure, delta table, priority ordering.
- **Not verified this pass:** scout artifacts were not readable by the critic subagent — source-fidelity is judged on internal consistency and named provenance only. Math figures (26%/32%/95%/53%/61%) quoted from the math-recount document, not recomputed.
- **No numbers invented.** All figures from the brief or math-recount, quoted with their source.
- [CS:] tags applied inline where factual claims about code or document behavior are made.
