# Honest Math Recount — ACP Headless Brief

**Trigger:** Nicole flagged the 82% [A]+[?] ratio as wrong. She is right. Showing my work.

## What I previously counted

Grep returned 34 lines with [R]/[A]/[?]/[D] tags. I counted: 6 [R] + 12 [A] + 16 [?] + 0 [D] = 28 of 34 = 82%. That count treats every tagged line as equivalent.

## What the lines actually are

Reading the brief tag-by-tag, three categories emerge:

### Category 1 — World-claims (the brief making a factual claim about reality)

These count toward an evidence ratio because they assert something about MSPs, the market, or the product.

| Line | Tag | Claim |
|---|---|---|
| 35 | R | "MSPs spend enormous time on repeatable operational tasks" (sourced) |
| 37 | A | "MSPs lose productivity to tool-switching" (assumed pain) |
| 39 | ? | "MSPs trust product UIs more than agent interfaces" (untested) |
| 41 | ? | "Specific friction points where MSPs get stuck" (undocumented) |
| 43 | A | "MSPs will prefer headless operation" (hypothesis) |
| 55 | A | "Headless model proves more efficient than multi-tool" (unmeasured) |
| 60 | R | "AI Coworkers handle L1–L2 with graduated trust" (Control Plane doc) |
| 61 | R | "Value Ledger makes time saved visible" (Coworker doc) |
| 65 | ? | "MSPs feel safer with visual confirmation vs. agent audit" (unknown) |
| 67 | A | "ACP single point of failure resists adoption" (resilience assumed) |

**World-claim subtotal: 10 claims. 3 R · 3 A · 4 ?.** [A]+[?] = 7/10 = **70%.**

### Category 2 — Test-plan claims (assertions about the prototype's own test plan)

These describe what the brief proposes to do, not what the world is. Borderline countable.

| Line | Tag | Claim |
|---|---|---|
| 59 | ? | "MSPs complete common tasks without product UIs" (task list undefined) |
| 79 | A | "Tier 1 prototype shown to 5 MSPs" (recruitment plan TBD) |
| 80 | A | "Interview prompts test adoption willingness" (guide unwritten) |
| 81 | A | "Success = ≥4/5 average rating" (threshold arbitrary) |
| 85 | A | "Working HTML prototype with 2–3 tasks" (task selection open) |
| 86 | R | "Value Ledger visible per Coworker" (concept documented) |
| 87 | R | "Trust-level indicators L0–L4 shown" (model documented) |
| 88 | R | "Fidelity banner present" (protocol requirement) |

**Test-plan subtotal: 8 claims. 3 R · 4 A · 1 ?.** [A]+[?] = 5/8 = **63%.**

### Category 3 — Meta-TODOs (lists of what is missing from the brief itself)

These are not claims about reality. They are an inventory of gaps in the brief. They should not count toward an evidence ratio at all — counting them double-charges every gap as both a missing claim AND an assumed claim.

| Lines | Tag | What |
|---|---|---|
| 92–96 | ? × 5 | "Known gaps" — segment, AI Experts, override, error states, audit |
| 116–123 | ? × 8 | "What's Missing" — interview data, baseline TTV, segment, task scope, error/escalation, audit, resilience, competitive |
| 124–126 | A × 3 | "What's Missing" — interview guide, recruitment plan, success threshold |

**Meta-TODO subtotal: 16 entries.** These are duplicates of gaps already named in Gates 1–3.

If you include them, [A]+[?] inflates by 16 every time. That is what produced the 82%.

## Three defensible ratios

| Scope | Calc | [A]+[?] ratio |
|---|---|---|
| **World-claims only** | 7 of 10 | **70%** |
| **World + test-plan** | 12 of 18 | **67%** |
| **Everything including meta-TODOs** | 28 of 34 | **82%** (this is what I reported before) |

## Why the inflation matters

The 82% number reads alarming and triggers "this brief is unfit for build." But the brief is Tier 1 (Concept). The world-claim ratio of **70%** is high but appropriate for exploratory hypothesis-testing. The meta-TODOs are not the bug — they're the brief honestly enumerating what it does not have. Counting them as [A]+[?] punishes the brief for being transparent about its gaps.

## What the math should say

> **Evidence ratio (world-claims only):** 70% [A]+[?] — 7 of 10 claims about MSPs and the market are unverified. 3 are sourced to Control Plane / Coworker / Value Ledger docs.
>
> **Test-plan readiness:** 63% [A]+[?] — interview guide, recruitment plan, success threshold, task selection all open. These are not research gaps; they are scope decisions Nicole owns.
>
> **Known gaps:** 16 enumerated. These are accounted for, not hidden. They become Tier 2 spec inputs.

Three numbers, each named for what it actually measures. Not one inflated number that confuses gaps with claims.

## What the prior pass got wrong

The prior rerun report said "82% [A]+[?]" without splitting categories. That number is mathematically valid but rhetorically deceptive — it conflates a transparent gap inventory with an evidence deficit. Nicole caught it because she reads briefs for a living.

The correction: report all three numbers, lead with world-claims (70%), explain the split.
