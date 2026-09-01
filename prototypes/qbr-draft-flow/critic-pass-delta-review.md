# Critic Pass — cycle-2 delta review + v2 coworker-stuck rebase

**Artifact:** `qbr-hifi.html` · **Reviewed against:** the 8 build goals in the 2026-08-17 handoff (treated as the brief).
**Scope:** the new cycle-2 delta-review mode, the rebased coworker-stuck layer, the cycle toggle, `deltaLane()`, `renderDeltaQueue()`, updated Bradley rail. v1 not re-litigated except where it collides with a new goal.
*(Distinct from the Aug-7 `critic-pass-2.md`, which covered the original hi-fi build.)*

## Scorecard — 6 dimensions
1. **Fidelity-to-brief — PARTIAL.** 6/8 land (reach framing, warranty solved-pull, vendor vocab, one-queue, standing decisions, honesty). Two diverge: lever 2 ("tier the review") not in the delta queue; goal 7 ("Cycle 1 == v1") violated because the rebased coworker layer renders inside Cycle 1.
2. **Honesty / [CS] discipline — PASS (nits).** Every quantitative claim tagged. Persistence dependency named twice + routed to Eng. Nits: delta lanes carry no inline tag; rail "reuses the tier vocabulary" mildly overclaims.
3. **Reach-thesis clarity — PASS-FLAGGED.** Headline number is the judgment-call count (process metric), not a time figure — correct. But `dq-reach` prose leads with "45 min" before the reach point.
4. **Reuse-not-fork — PARTIAL.** Structurally a mode not a screen. Undercut by: Cycle 1 carrying the v2 layer; judgment deltas routing to findings with stale numbers; queue reuses the register but not the tier vocabulary.
5. **Expert-leverage legibility — PASS.** All four auto-cleared Expert attributions map to real seeded Experts (Patch Management `hw-a3`; Incident Triage `rk-a1`; Ticket Response + Incident Triage + Log Analysis `rk-a2`). One risk: "Baseline Expert" named in Risk tab + onboarding is NOT a seeded Expert.
6. **Seed-data safety — PASS.** Fictional, tagged, `.example` domains. Issues are internal coherence, not privacy.

## Punch list (prioritized)
- **#1 HIGH — Judgment deltas contradict the findings they open into.** `hw-j1` "3 on Win10" → `f9` still "2"; `em-j1` "+1 named user" → `f12` still "2 accounts"; `rk-j1` "48/50" → `f2` still "47/50". Reviewer clicks a delta and lands on a finding that disagrees with it, same cycle. **[FIXED — delta banner in `renderCanvas` frames the finding as last cycle's baseline + names the change.]**
- **#2 HIGH — Cycle 1 no longer "exactly v1."** Coworker-stuck layer renders in Cycle 1; Draft Review defaults to Cycle 2. **[DECISION — intended: the v2 coworker layer was in-scope to rebase, and default-to-Cycle-2 showcases the new mode. Flagged to Beth, not silently "fixed."]**
- **#3 MED — Lever 2 "tier the review" absent from the queue.** No Measured/Benchmarked/Estimated/Unverified badge on any delta. **[FIXED — tier badges added to queue + lanes, inheriting the linked finding's tier.]**
- **#4 MED — "Baseline Expert" reads as fabricated.** Inherited v1 content (Risk tab + onboarding step 5), tagged `[A]`, cited to specs/003. Out of the "don't re-litigate v1" fence. **[NOTED — transcript reframes this: baseline = MSP-defined golden client + a standards skill, not an auto Expert. Reframe in the FTUX pass.]**
- **#5 MED — Last-cycle label inconsistent (Q1 vs Q2).** `DR_LAST_CYCLE='Q1 2026'` vs v1 `EBR_HISTORY.lastCycle='Q2 2026'`; Agenda says 12 March 2026 (= Q1). **[FIXED — EBR_HISTORY set to Q1; flagged to Beth as a v1 correction to revert if intended.]**
- **#6 LOW — Delta lanes look clickable, aren't.** **[FIXED — judgment lane rows now wired to `deltaGoto`.]**
- **#7 LOW — Reach prose leads with a time claim.** **[FIXED — reordered to lead with reach/more-clients.]**
- **#8 LOW — Design drift (mostly inherited).** cw-wall ad-hoc hex; no 3-way mode toggle / pref persistence; rail border not 4px spec. **[NOTED — inherited; not this build's regression.]**
- **#9 LOW — `drCycle` not reset in `initDraftReview`.** **[FIXED.]**

## The single thing that will hurt this in front of Beth
Punch #1 — the delta→finding number seam. Fixed via the change banner so the finding reads as *last cycle's baseline under re-review*, not a contradiction.
