# A3 — Auto-execute AI trust

**Assumption:** Technicians will accept AI Coworkers that "execute, super automated" against their endpoints without it reading as deskilling / a job threat.

**Scope note:** Task did not call for external web research on this assumption (not listed among the A1/A2 competitive-research items). What follows is the deck/council/critic material only — no independent web search performed for A3 specifically.

## What's in the deck/council/critic already
- Mackie's own margin note names the risk directly: "Leapfrog then with AI coworkers – but messaging is important here so as not to make technician fear for their job." [CS: VERIFIED — deck line 59]
- Deck headline framing: "AI co-worker powered. Super automated" (Section 01 margin note, line 23) and Phase 1 "why-win" cites "AI Coworkers from launch" (line 27) — execution framing, not propose-and-confirm framing, in the confident body text.
- Council Self-Determination Theory lens rates this **Bad** (the lowest verdict of any lens in the pass): "The differentiator is 'AI does more, automatically' aimed at a low-capability user whose job security the deck already worries about. That is the highest-risk SDT configuration: maximal automation aimed at the user most likely to read it as a competence/autonomy threat." [CS: VERIFIED — council lines 58, 60-61]
- Council names the target persona as structurally vulnerable to this exact framing: "generalist, limited specialists, limited platform-eng capacity" (Section 01 ICP definition). [CS: HIGH — council line 54, citing deck]
- Council Service Blueprint lens: no designed error-recovery/rollback path exists for when "the AI Coworker gets it wrong" — for a low-skill IT team, this is the highest-cost failure mode and it's currently unaddressed. [CS: MEDIUM — council lines 37, 39]
- Critic P1 #5: "For the low-capability generalist persona the deck targets, 'auto-execute' vs 'propose-and-confirm' is the differentiation, not a UX detail. The deck says both." [CS: HIGH — critic-pass-1.md line 80]
- Cross-voice disagreement flagged explicitly for the room: "SDT reads 'super automated execution' as autonomy-eroding... the deck sells the same phrase as the winning differentiator. The single word 'execution' vs. 'propose-and-confirm' is the whole strategy from SDT's chair." [CS: VERIFIED — council line 148]

## Read
- **Resolves:** Unresolved in the source material — this is flagged by the deck's own author, scored worst-of-all-lenses by council, and named a P1 blocker by critic, but no decision is made in the artifact. It reads as internally contradictory (headline: execution; margin note: fear-of-job-loss) rather than tested against any user evidence.
- **Riskiness:** High but structurally different from A1/A2 — this is a **design-decidable** crux, not an evidence-gap. The deck doesn't need more market research to resolve it; it needs a decision (propose-and-confirm vs. auto-execute) and then user testing of that decision. If wrong, council's read is daily-use churn from the exact persona targeted, not a discovery failure.
- **Test cost:** Low and fast relative to A1/A2 — a prototype-level test of propose-vs-execute framing with the named generalist IT Pro persona could be run cheaply (usability/concept test, not a market study) before Phase 1 ships. The absence of an error-recovery/rollback design is a build-scope item, not a research item, and belongs on the Phase 1 critical path per council's Service Blueprint lens.
