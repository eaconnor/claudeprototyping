# Critic Pass 1 — ACP Market Analysis Handoff Package

**Reviewer:** Critic (Band Protocol)
**Date:** 2026-06-05
**Package:** `/briefs/handoffs/acp-market-analysis-2026-06-05/`
**Mode:** Pre-build scorecard. Names problems. Does not fix.

---

## Scorecard

| Dimension | Score | Note |
|-----------|-------|------|
| Three-gate clarity | 3/5 | Gate 1 strong, Gate 2 partial (mission/OKR never named), Gate 3 missing — no test protocol, no success metric, no "who tests this" |
| Sourcing & confidence | 3/5 | Tags applied widely but inconsistently calibrated; several [CS: VERIFIED] claims trace to vendor blogs or single-source secondary, not primary |
| Tension naming | 4/5 | Real contradictions surfaced (augment vs. replace, audit vs. teach, sustaining vs. disruptive) and not smoothed — best dimension of the package |
| Unknown honesty | 4/5 | Gaps consistently named as research briefs rather than fabricated |
| Actionability | 2/5 | Extended report ends mid-sentence in Wardley section; design team cannot act on incomplete deliverable |
| 2026 currency | 3/5 | 2026 sources cited but core fatigue/false-positive stats are 2024–2025; not labeled by year in body copy |
| **Total** | **19/30** | Strong analysis, broken delivery. Do not ship without finishing the extended report and reconciling tag inflation. |

---

## Top 5 Issues (Blockers)

### 1. The $33,600/month math is WRONG (47% RULE VIOLATION)

Formula stated: `$32/hr × 46% false positives × 960 alerts/day × 12 min saved`
- 960 × 0.46 = 441.6 false positives/day
- 441.6 × 12 min = 5,299 min/day = 88.3 hours/day
- 88.3 × $32 = $2,826/day
- × 30 = **~$84,800/month** (not $33,600)

This is the HEADLINE ROI claim of the package. Stakeholders will grep it. It does not reconcile with the formula as written. Either the formula needs corrected assumptions (working days only? single tech bottleneck?) or the number is wrong.

### 2. Wardley framework body is missing
`council-report-extended.md` has the Wardley header and intro, then nothing. No evolution stages, no strategic plays, no testimony. Cross-9-framework synthesis promised in README is also absent. **Package claims 9 frameworks; delivers 8.5.**

### 3. Three different CS tags on the same $33,600 figure
- CS-TAGS.md tags it [CS: HIGH]
- Council report tags it [CS: MEDIUM — extrapolated]
- Problems-ranked.md presents it without a tag
Same number, three different confidence levels across three files.

### 4. [CS: VERIFIED] applied to vendor marketing
- Cat-MIP launch → sourced to Businesswire press release
- 11M+ endpoints → sourced to Omdia coverage of N-able's own event
- Heimdal 2025 fatigue stats (75%, 100%, 89%) → vendor survey marketing
- Verified should mean primary sources. These are secondary/promotional.

### 5. Handoff packet structure non-compliance
Per CLAUDE.md §9b, every handoff ships: `HANDOFF.md`, `NEXT-STEPS.md`, `[project]-rail.md`, `[project].brief.md`, `[project].html`, `critic-pass-1.md`, `critic-pass-2.md`, `scout/`. This package has none of those (until now critic-pass-1 exists). **This is research output dressed as a handoff packet.**

---

## Other Punch List Items

**HIGH:**
- Gate 3 (Built right) fully absent — no success metric, no test protocol, no "tested by whom"
- Gate 2 (Right thing) lacks N-able mission/OKR anchor
- Gate 1 drift — original ACP brief not in the package (analysis floats free of source)
- $115.8M ARR projection stacks 4 uncertain inputs (count, adoption %, base price, savings share) producing unverifiable revenue claim
- Heimdal report cited as "2025" but Robert Half URL contains "2024-11-13" — forward-dating pattern

**MEDIUM:**
- Broken relative paths in council-report.md (`/.claude/agents/council.md`) won't resolve outside repo
- README routes recipient to artifacts that may not exist (framework templates)
- No Bradley rail anywhere — readiness, nailed/hurt, routed cards all informal
- Ethnography file opens with "Now let me compile this into field notes…" — mid-conversation artifact, not clean deliverable
- Ethnography flagged [THIN DOMAIN] (limited practitioner voice) but README oversells as "what practitioners are actually doing"
- CS-TAGS.md says model knowledge cutoff is April 2024 (incorrect for this model)
- Cross-framework "convergence" partially manufactured — same scout claim counted as agreement across multiple frameworks

**LOW:**
- "Grep-verifiable" trust signal with no grep paths/commands given
- "Trust the process" closing line in README — sycophancy-adjacent

---

## What Passes

- **Tension naming** (4/5) is the strongest dimension. Augment-vs-replace, learning-tool-vs-black-box, sustaining-vs-disruptive — all named, none smoothed.
- **Unknown honesty** (4/5) — gaps consistently named as research briefs.
- **2026 anchor sources** present (CSA Agentic Control Plane, Microsoft Agent 365, Cat-MIP launch).
- **Microsoft Agent 365 as category disruptor** named as the real threat, not buried.
- **CS-TAGS.md itself** is one of the strongest documents in the package — it's the *application* of the tags that's inconsistent.

---

## RISK — What Will Break Under Realistic Use

- **Design team member greps "$33,600"** → formula doesn't yield the number → headline claim collapses in front of stakeholders. Chicago Principle / 47% rule failure.
- **Nicole opens extended report** → hits blank Wardley section → first impression is incomplete work under deadline pressure.
- **Recipient quotes Heimdal [CS: VERIFIED] stats** in customer-facing pitch → represents vendor marketing as primary research → compliance risk if challenged.
- **Pricing recommendation** depends on PSA write-back tracking (HaloPSA/Autotask only) — analysis itself flags PSA integration is partial. Self-undermining.

---

**Headline: 19/30. Strong analysis, broken delivery. Do not ship as-is.**

The work product behind this is good (real tension naming, real research depth, honest gap-naming). The packaging is broken in ways that will hurt Beth's credibility if shipped:
1. Math doesn't compute (headline number)
2. Wardley framework body is missing (header without content)
3. Tag inflation (vendor blogs labeled VERIFIED)
4. Three different confidence tags on the same number

**Fix list (not part of critic — for next step):**
1. Recompute $33,600 with stated assumptions OR rewrite formula to match number
2. Finish Wardley framework + write 9-framework synthesis
3. Reconcile CS tags for $33,600 across all three files
4. Downgrade [CS: VERIFIED] tags on vendor-sourced claims to [CS: HIGH] or [CS: MEDIUM]
5. Add Bradley rail to README
6. Pull ethnography opening line + flatten nested FILE blocks into clean structure
