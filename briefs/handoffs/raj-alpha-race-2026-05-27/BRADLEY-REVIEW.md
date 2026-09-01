# Bradley Review — Raj Alpha Race Handoff · 2026-05-27

**Reviewed:** 2026-05-28
**Session:** Post-handoff audit
**Status:** Handoff complete, pipeline stopped correctly at spec

---

## What was delivered

| Artifact | Status | Quality |
|----------|--------|---------|
| Brief (.brief.md) | ✓ Complete | Gate 1 sourced, Gates 2+3 thin |
| Phase 2 shell (HTML) | ✓ Complete | Structural fidelity correct |
| HANDOFF.md | ✓ Complete | Clear four-decision frame |
| NEXT-STEPS.md | ✓ Complete | Actionable, Beth/Raj-routable |
| CLAUDE.md | ✓ Complete | Orientation solid |
| README.md | ✓ Complete | Reading order clear |
| alpha-race-rail.md | ✓ Complete | Dashboard portable |
| scout/ | ✓ Present | Source refs included |

**All required handoff files present.** [CS: VERIFIED]

---

## Brief audit — 65% [A]/[?] claim

**Grep-verified:** ✓ PASS

```bash
grep -c "\[R\]" alpha-race-customer-prototype.brief.md  # 9
grep -c "\[D\]" alpha-race-customer-prototype.brief.md  # 0
grep -c "\[A\]" alpha-race-customer-prototype.brief.md  # 12
grep -c "\[?\]" alpha-race-customer-prototype.brief.md  # 5
# Total claims: 26
# [A]+[?]: 17 → 17/26 = 65.4%
```

The handoff claimed 65% [A]/[?]. Actual: 65.4%. **47% rule honored.** [CS: VERIFIED]

---

## Three-gate scorecard

| Gate | Strength | Evidence | Ready for build? |
|------|----------|----------|-----------------|
| **Gate 1 — Problem** | 60% [R], 40% [A]/[?] | ADL-1839 sourced; magnitude/frequency assumed | ⚠ Partial |
| **Gate 2 — Right thing** | 20% [R], 80% [A]/[?] | Positioning clear; audience undefined | ✗ No |
| **Gate 3 — Built right** | 10% [R], 90% [A]/[?] | Success criteria almost entirely [?] | ✗ No |

**Verdict:** Brief correctly stopped at spec. 65% [A]/[?] is above the 30% threshold. Gates 2 and 3 are not build-ready.

---

## Four-decision framework — quality check

The handoff routes four decisions to Beth + Raj. Are they the *right* four?

### Decision 1 — Which customer?

**Resolves:** Gate 2 audience · Gate 3 content realism · seed data context

**Is it the right question?** ✓ Yes. Without customer profile, prototype can't be tuned and Gate 2 stays [A].

**Can Beth/Raj answer it?** ✓ Yes. Beth talks to Sales; Raj confirms product readiness for that segment.

**Does the handoff explain what the prototype needs from this answer?** ✓ Yes. Industry, size, tooling, buying stage → informs fictional company proxy + incident context.

**Score:** Strong.

### Decision 2 — What does the demo need to trigger?

**Resolves:** All of Gate 3 success criteria (3 [?] claims)

**Is it the right question?** ✓ Yes. "Demo succeeds when ___" is the cleanest framing for Gate 3.

**Can Beth/Raj answer it?** ⚠ Partial. Beth can answer from Sales context. Raj may not have visibility into Sales goals.

**Does the handoff explain what the prototype needs from this answer?** ✓ Yes. Affects which screens are critical, how much interactivity, whether one incident or three.

**Score:** Strong, but may need Sales input (not just Beth/Raj).

### Decision 3 — Incident story source

**Resolves:** Gate 3 content source (real vs. synthetic) · Gate 1 credibility

**Is it the right question?** ✓ Yes. Real Alpha output vs. Beth-designed synthetic is a concrete fork.

**Can Beth/Raj answer it?** ✓ Yes. Raj knows Alpha product state; Beth knows demo requirements.

**Does the handoff explain what the prototype needs from this answer?** ✓ Yes. Option A (real) vs. Option B (synthetic) is clear, with what Raj/Beth must provide for each.

**Score:** Strong.

### Decision 4 — Has "what/why/next" been tested?

**Resolves:** 7 of the 12 [A] claims that trace to narrative format assumption

**Is it the right question?** ⚠ Yes and no. The question surfaces the assumption, but the answer is binary (yes/no + who/how). If the answer is "no," the brief stays [A] with a note and the prototype ships anyway. This decision doesn't *unlock* the build — it strengthens the brief if evidence exists.

**Can Beth/Raj answer it?** ✓ Yes. Raj's memory or a quick check with Julian.

**Does the handoff explain what the prototype needs from this answer?** ✓ Yes. If tested: [A] → [R], brief strengthens. If not: named risk, not a blocker.

**Score:** Moderate. It's a good question, but unlike Decisions 1-3, this one doesn't change the build path — it changes the confidence level.

---

## Decision sequencing — does order matter?

The handoff lists four decisions in parallel. Are they actually independent?

| Decision | Depends on |
|----------|-----------|
| 1 · Which customer? | — (independent) |
| 2 · What triggers success? | → Informed by Decision 1 (customer context) |
| 3 · Incident story source | → Informed by Decision 1 (customer industry) |
| 4 · Has narrative been tested? | — (independent, but doesn't gate build) |

**Sequencing issue:** Decisions 2 and 3 are *informed by* Decision 1. The handoff presents them as parallel, but they're actually chained.

**Recommendation:** Update NEXT-STEPS.md to name the dependency:
```
Decision 1 must be answered first.
Decisions 2 and 3 are informed by Decision 1 (but not blocked by it).
Decision 4 is parallel to all three.
```

---

## Phase 2 shell — structural quality

**Tier 2 fidelity banner:** ✓ Present, orange stripe, correct tier declaration

**Phase lineage strip:** ✓ Present, shows Phase 1 (done) → Phase 2 (active) → Phase 3 (planned) with Jira refs

**PM Action Dashboard:** ✓ Present, four cards adapted for customer demo context (not analyst tool)

**Review Mode:** ⚠ Referenced in HANDOFF.md, but grep the shell:

```bash
grep -i "review.*mode" alpha-race-phase2-shell.html
# No toggle button found in the shell HTML
```

**Issue:** The handoff describes Review Mode (toggle → hotspots appear → SVG leader lines to cards) as a Phase 2 feature. The shell HTML does not implement it. Either:
- The shell is incomplete, or
- The handoff over-promised what the shell delivers

**Recommendation:** Clarify whether Review Mode ships in the shell or is described as a future feature for Phase 3.

---

## Handoff packet completeness

Required files per Band Protocol Step 7:

| File | Required? | Present? |
|------|-----------|----------|
| CLAUDE.md | ✓ | ✓ |
| README.md | ✓ | ✓ |
| HANDOFF.md | ✓ | ✓ |
| NEXT-STEPS.md | ✓ | ✓ |
| [project]-rail.md | ✓ | ✓ (alpha-race-rail.md) |
| [project].brief.md | ✓ | ✓ |
| [project].html | ✓ | ✓ (shell, not full prototype) |
| critic-pass-1.md | — | ✗ (pipeline stopped before critic) |
| critic-pass-2.md | — | ✗ (pipeline stopped before build) |
| council-testimony.md | — | ✗ (pipeline stopped before council) |
| scout/ | ✓ | ✓ |

**Verdict:** Packet is complete *for a stopped pipeline at spec*. Critic and council did not run because the brief is not build-ready. This is correct behavior.

---

## Proctor-level checks (spot audit)

### Check 1 — YAML frontmatter complete?

```yaml
feature: "Alpha RACE Customer Prototype — Multi-Event Correlation Dashboard"
gate: 30
owner: "Beth"
problem_statement: "MDR analysts and customers receive individual detections in isolation, even when they're part of the same incident [R: ADL-1839]"
okr_objective: "Demonstrate Alpha's value proposition: analysts investigate incidents, not alerts"
okr_key_result: "[?] Customer signs/expands after prototype demo"
counter_metric: "[?] Cognitive load during demo / prototype comprehension time"
idea_score: null
evidence_sources: ["ADL-1839", "Beth handoff"]
status: "draft"
```

✓ PASS — all required fields present

⚠ WARN — `okr_key_result` and `counter_metric` are tagged [?]. This is honest (unknowns named), but means OKR is incomplete.

### Check 2 — [A]+[?] ratio stated in brief?

Search brief for ratio declaration:

```
**Evidence quality: 60% [R], 40% [A] or [?]**  (line 33)
**This brief is not ready for build.** 65% of claims are assumed or unknown. (line 154)
```

✓ PASS — ratio declared in two places (Gate 1 and Evidence Summary)

### Check 3 — Three-number math present?

Search for world-claims vs. test-plan vs. inflated breakdown:

```
# Not found in brief
```

✗ FAIL — The skill's three-number math discipline (world-claims · test-plan readiness · inflated-with-TODOs) is not present. The brief reports one aggregated [A]+[?] ratio (65%). This violates the "47% rule" expansion that landed 2026-05-28.

**Issue:** The Raj session ran 2026-05-27, *before* the three-number math discipline was added to the skill. The handoff is not at fault — the skill evolved after the session.

**Recommendation:** If the brief re-runs, apply the three-number discipline. Save a `math-recount.md` showing the work.

### Check 4 — Fidelity tier matches spec?

Brief frontmatter: `gate: 30` (Tier 1 · Concept, 30% fidelity)

Shell HTML line 6: `<title>Alpha (RACE) · Phase 2 · Customer Demo Shell · DRAFT</title>`

Shell fidelity banner (line 76-80): Tier 2 orange stripe

**Mismatch:** Brief says Tier 1 (gate: 30). Shell declares Tier 2.

**Is this a problem?** ⚠ Depends. The handoff says "Phase 2 is Tier 2 (structural fidelity)." The brief's `gate: 30` may be outdated, or the shell may have jumped a tier.

**Recommendation:** Align brief and shell. If Phase 2 is Tier 2, update brief frontmatter to `gate: 60`. If Phase 2 is still Tier 1 concept, downgrade shell fidelity banner to Tier 1.

### Check 5 — Seed data appears fictional?

Shell HTML search for company names:

```bash
grep -i "acme\|customer.*name\|company.*name" alpha-race-phase2-shell.html | head -5
# [DRAFT: customer name]  (line 487)
# Placeholder confirmed
```

✓ PASS — seed data is placeholder, awaiting Decision 1 (customer profile). No real company names leaked.

---

## What the handoff does well

1. **Stopped the pipeline at the right place.** 65% [A]/[?] is above threshold. Gates 2+3 are thin. The pipeline correctly did not build.

2. **Four-decision frame is actionable.** Each decision has a clear owner (Beth + Raj), a clear "what you need to decide," and a clear impact on the prototype.

3. **47% rule honored.** The 65% [A]/[?] claim was grep-verified before shipping. No fluent math invented.

4. **Handoff packet is navigable.** CLAUDE.md orients a cold reader. README.md gives reading order. NEXT-STEPS.md routes the work. Files are named consistently.

5. **Phase 2 shell upgrades the structure cleanly.** Tier 2 banner, lineage strip, PM Action Dashboard are all present and correct (except Review Mode — see below).

---

## What needs attention

### Issue 1 — Review Mode not implemented in shell

**Where it's described:** HANDOFF.md lines 39-42, CLAUDE.md (implicit in PM Action Dashboard description)

**What's missing:** Toggle button, hotspot circles, SVG leader-line layer, click/hover interactions

**Impact:** If Raj or Beth opens the shell expecting Review Mode and it's not there, the handoff over-promised.

**Options:**
- A. Shell is incomplete → Review Mode should be added before the four decisions are answered
- B. Review Mode is a Phase 3 feature → HANDOFF.md should clarify "described for future implementation"
- C. Review Mode was in Alaina's anatomy but deprioritized → HANDOFF.md should remove the description

**Recommendation:** Clarify intent. If Review Mode ships in Phase 2, the shell needs the toggle + hotspot + leader-line layer. If it's future, update HANDOFF.md to say "Phase 3 planned feature."

### Issue 2 — Decision sequencing not explicit

**Where:** NEXT-STEPS.md presents four decisions as parallel

**Reality:** Decision 1 (customer) informs Decisions 2 (success trigger) and 3 (incident story)

**Impact:** If Raj answers Decision 3 before Decision 1, he may provide an incident story that doesn't map to the chosen customer's industry.

**Recommendation:** Update NEXT-STEPS.md:
```markdown
### Decision order

Answer **Decision 1 first** (customer profile). Decisions 2 and 3 are informed by that answer (but not blocked — you can answer them in parallel once Decision 1 is locked).

Decision 4 (tested?) is independent and doesn't gate the build — it strengthens the brief if evidence exists.
```

### Issue 3 — Tier mismatch (brief vs. shell)

**Brief frontmatter:** `gate: 30` (Tier 1)

**Shell fidelity banner:** Tier 2 orange stripe

**Impact:** Confusion about what fidelity level Phase 2 represents.

**Recommendation:** Pick one. If Phase 2 is Tier 2 (structural fidelity), update brief to `gate: 60`. If it's still Tier 1 (concept with structural additions), downgrade shell banner to Tier 1 red stripe.

### Issue 4 — Three-number math not present

**Where:** Brief Evidence Summary (line 147) reports aggregated [A]+[?] = 65%

**Skill standard (2026-05-28):** Three numbers (world-claims · test-plan readiness · inflated-with-TODOs)

**Impact:** The aggregated 65% mixes world-claims about customers with test-plan [?] about the prototype's own readiness. This is the "47% rule" failure the skill now guards against.

**Why it happened:** Raj session ran 2026-05-27, before the three-number discipline landed in the skill (2026-05-28).

**Recommendation:** When the brief re-runs, apply three-number math. Save `math-recount.md`.

---

## Next action — what should happen now?

The handoff correctly routes four decisions to Beth + Raj. Those decisions must be made before the pipeline can resume. But two handoff-level issues should be resolved *before* Beth/Raj spend time answering:

### Before Beth/Raj answer the four decisions:

1. **Clarify Review Mode status** (Issue 1). If it ships in Phase 2, add it to the shell. If it's future, update HANDOFF.md.

2. **Align tier declaration** (Issue 3). Brief says Tier 1, shell says Tier 2. Pick one and update the other.

3. **Update NEXT-STEPS.md with decision sequencing** (Issue 2). Decision 1 must be answered first.

### After those three fixes:

4. **Beth + Raj answer the four decisions** (or three — Decision 4 is optional for build).

5. **Spec re-runs** with answers baked in → [A]+[?] drops from 65% → ~15–20%

6. **Critic pass 1** → pre-build scorecard

7. **Build** → full Phase 2 HTML with locked content

8. **Critic pass 2** → post-build re-score

9. **Council** (if tier warrants it — Tier 1 abbreviated, Tier 2 full)

10. **Handoff packet refreshes**

---

## Bradley's read

**The handoff is solid.** The pipeline stopped correctly. The four-decision frame is actionable. The 47% rule was honored. The brief is honest about its gaps.

**Three issues need attention before Beth/Raj answer:**
1. Review Mode — clarify if it ships now or later
2. Tier mismatch — align brief and shell
3. Decision sequencing — Decision 1 must come first

**One process issue for next time:**
- The three-number math discipline (world-claims vs. test-plan vs. inflated) should apply when the brief re-runs. This wasn't the Raj session's fault — the skill evolved after the session ran.

---

**Verdict:** ✓ PASS with three named issues to resolve before resuming pipeline.

**Cost:** This review took one SNACK (grep audits + structural checks + issue identification).

**Lucy holds the clipboard.** Fix the three issues. Then route the four decisions to Beth + Raj.
