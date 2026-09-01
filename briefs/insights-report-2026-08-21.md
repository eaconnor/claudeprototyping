---
title: Insights Report — week of 2026-08-14 → 2026-08-21
type: insights-report
status: REPORT — no automation built; decisions named, not made
generated: 2026-08-21
generated_by: friday-chores-bethproto (headless run)
insights_skill: MANUAL FALLBACK — `/insights` is not in the session skill listing
predecessor: INSIGHTS-ACTIONS.md (2026-08-13)
---

# Insights Report — 2026-08-21

**Tier: FEAST** (agentic, multi-file survey). Second run of this pass; the 2026-08-13 predecessor
established the shape — report the pattern, name the decision, don't build the automation.

Method: git log + file mtimes since 2026-08-13, `CHORES.md`, `GAME-STATE.md`, `briefs/required-mods-log.md`,
the four new briefs, and a grep-verified count of the Council-44 corpus. Counts below are
script-verified, not recalled (47% rule).

---

## 1 · What's working

**Idea Chess produced real scoring, not narrated numbers.** Three passes landed this week — round 2
(five strategic shapes), round 3 (Narada/Narmada), plus survival testimony under
`prototypes/ebr-coworker-options/`. Round 3 reports bands (`[A] LOW / MED / HIGH`) rather than
invented survival percentages, and separates `[CS: UNKNOWN]` from `[A]` explicitly ("client-facing
cross-vendor UI-scraping ToS/GDPR — a `[?]` not an `[A]`"). That is the exact guardrail the Idea Chess re-run chore asks for, honoured without being re-stated at run time. [CS: VERIFIED — read both files]

**Banking beat synthesizing.** `briefs/mvp-thread-banked-2026-08-18.md` carries status
`BANKED — feeds row-6 MVP pass (not yet a brief)` and an `## OPEN — not connected yet` section in
Beth's own words. Two tensions (NONGOAL-002 vs. the deck's capstone thesis; data-moat vs. runbooks
vs. distribution) are parked as unresolved instead of collapsed into a fluent answer. This is
CLAUDE.md §4's "unknown is a terminal answer" working as an artifact convention rather than a
sentence in a config file. [CS: VERIFIED]

**Sequencing got a dated owner-call.** Beth's 2026-08-19 call — Idea Chess re-run happens *after*
MVP noodling — is recorded in the chore entry itself with the reason (don't re-score against a
moving target). The chore didn't get worked this week, and that was the correct outcome, not a
slip. [CS: VERIFIED — CHORES.md, Idea Chess re-run entry]

**Coded rows are load-bearing downstream.** 47 coded rows are cited by name in artifacts built
after them: rows 6/8/9/10/12/13/14 → MVP thread; rows 22/27 → the Idea Chess re-run chore; row 8 →
the data-trust tenet memory. The corpus is feeding work, not sitting as a finished deliverable.

**Divergence is being carried visibly, not resolved silently.** `qbr-prep-sim/v2` ships a UI chip
reading `product name "Harness" — Beth 2026-07-31 [D] · coworker: "QBR Advisor" (FSN…)`. The naming
tension is on the screen instead of buried.

---

## 2 · What's manual and shouldn't be

### 2a · Nothing has been committed since 2026-08-17 `[decision needed]`

40 dirty paths. Every substantive artifact from this week is uncommitted: 4 new briefs, 3 new
prototype directories (`ebr-big-map`, `ebr-coworker-options`, `nzo-billing-dashboard`), 19
`scout_input` files, and the `CLAUDE.md` / `GAME-STATE.md` / three-skill edits.
[CS: VERIFIED — `git status --porcelain | wc -l` = 40; last commit 9fa6a62, 2026-08-17]

The repo went under version control on 2026-08-17 for exactly this reason — five commits that day,
including "Open gitignore: add all non-sensitive content to version control." Four days later the
week's output is all untracked again. The infrastructure exists and isn't being reached for.

**Not automating this unattended.** A commit is a write to shared history and the placement is a
real call: end of `game-close`, a step in this Friday runner, or a Stop hook. Each has a different
failure mode (game-close won't fire if a session ends abruptly; the Friday runner commits a week of
mixed work as one blob; a hook commits noise).

### 2b · Hand-written counts drift from the files they describe `[automatable]`

CHORES.md prose (the team-sport chore) says "the 352 remaining rows." Script count: **402 total, 47 coded, 355 uncoded.**
[CS: VERIFIED — parsed the table, counted non-`—` values in Beth's Interpretation column]

A 3-row drift is harmless in itself. The pattern isn't: this is the 47%-rule failure mode in
miniature — a number typed into prose, then diverging from its source with no mechanism to notice.
`/code-rows` already touches both files on every run and is the natural place to write the live
count back.

### 2c · The ACP→Harness rename was 14 days of debt over 7 string replacements `[done this run]`

Grep-verified scope: **5 files, 7 occurrences** of live product-facing ACP copy. Everything else
that matched was spec citation (`built in ACP [D] {G3-6}`), frozen handoff archive
(`prototypes/acp-*`, `briefs/handoffs/`), or meta-documentation (critic passes, council testimony,
Idea Chess assumption sheets). `prototypes/qbr-triage-apex.html` — named in the chore entry as a
likely offender — had **zero** hits. The entry's guess ("probably more across the prototype corpus")
was pessimistic in one direction and the newest prototypes (`harness-ebr-v2`, `ebr-big-map`) were
already clean.

The cost was never the edit. It was that nobody knew the edit was small. A terminology chore sat
open for two weeks because its own scope estimate was a guess.

**Candidate, needs Beth's call:** move the terminology check into the post-build critic pass — the
critic already reads the whole file — instead of accruing it as a standing chore. Renames caught at
build time cost one line; renames caught two weeks later cost a scope investigation.

### 2d · `game-close` didn't run on 2026-08-20 `[process gap]`

`GAME-STATE.md` still reads `current_day: 2026-08-20 / day_status: open` with one demerit issued and
the day unresolved. [CS: VERIFIED] The Points history table has an entry for 2026-08-20 (MISS,
headmaster trip 2/5) but the Today block was never closed, and "Last session" still says 2026-08-17.
The file is now internally inconsistent about which day it is describing.

### 2e · Two scoring bases still coexist `[decision needed — flagged 3 days, unresolved]`

`GAME-STATE.md` names this itself: the points rule (Catches − uncaught Misses, set 2026-08-18) and
the day-close mechanic (POINT DAY / DEMERIT DAY / headmaster's office) are unreconciled, with an
explicit instruction not to merge them silently. Correctly parked — but it is now blocking:
`game-close` cannot compute a clean day while two bases apply, which is a plausible contributor
to 2d.

### 2f · `/insights` is still not a skill `[decision needed]`

There is no `insights` skill in `.claude/skills/` or `~/.claude/skills/`, and none in this session's
skill listing. [CS: VERIFIED — listed both directories] The scheduled task asks for it, falls back
by design, and asks that the distinction be reported — reported here.

Stronger finding than the fallback itself: **2026-08-14 was also a Friday and produced no insights
report.** There is no `briefs/insights-report-2026-08-14.md`; the only predecessor is
`INSIGHTS-ACTIONS.md` (2026-08-13, written in-session, not by the runner). Chore items *were* closed
on 2026-08-14, so the chore sweep ran — the insights part didn't produce an artifact. This is the
first insights report the Friday runner has actually written. The fallback path works; it just
hadn't been exercised.

### 2g · `required-mods-log.md` is accruing the debt an open chore already describes

MOD-001 and MOD-002 are both `PENDING` — landed in `CLAUDE.md`, not propagated to
`acp-core-main-3/specs/_ux/acp-ux.md` or the speckit constitution. The mechanism for that
propagation is precisely the open chore "Design the resolved-divergence → real-spec-text graduation path", parked 2026-08-03 pending Beth's thought. Both mods have paste-ready text sitting
ready. The log is working as designed — it's the graduation path that's absent, and each new mod
raises the cost of that gap.

---

## 3 · Not a gap — worth naming

**The `[mechanical]` tag earned its keep.** One tag, one unattended run, chore closed with verified
scope. Worth applying to more chores where the judgment is in the *boundary* rather than the edit —
the rename's hard part was deciding what not to touch, and the chore entry's rules (a)/(b)/(c) made
that decidable without Beth in the room.

**Hot category held this run.** "Routed work back to Beth" is 4 Misses and 2 of 5 expulsion trips —
the worst category. This run did the rename rather than reporting that a rename was available.

---

## 4 · Decisions only Beth can make

| # | Decision | Why it's blocking | Cheapest resolution |
|---|---|---|---|
| 1 | Where does the git commit live? | A week of work is uncommitted; the repo was versioned specifically to stop this | Pick one of: `game-close` step / Friday-runner step / Stop hook |
| 2 | Reconcile the two Listening Game scoring bases | `game-close` can't close a day cleanly; 2026-08-20 is stuck open | Declare day-close the daily *record* only, or fold it into points |
| 3 | Build `/insights` or drop it from the Friday task | Fallback works but the shape isn't reusable mid-week | Either is fine; the ambiguity is the cost |
| 4 | Terminology check → critic pass, or stays a chore? | Determines whether the next rename is 1 line or a 2-week scope hunt | One line in `critic.md`'s checklist |
| 5 | Do PENDING mods hand-carry now, or wait on the graduation path? | Two mods ready with paste-ready text; mechanism parked since 2026-08-03 | Hand-carry these two, keep the chore for the mechanism |

Items 1–4 are process calls. Item 5 touches spec text and is Beth+Nicole's, per the existing chore.

---

## 5 · Deliberately not built

Per the 2026-08-13 discipline: this pass built no automation. The count-writeback (2b) and the
critic-pass terminology check (2c) are both small enough to implement in one edit each, and both are
waiting on a named decision rather than on effort. `/insights` (2f) is not self-authorizing either —
building the skill that writes this report is a change to how the Friday task runs.
