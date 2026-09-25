---
title: Insights Report — week(s) of 2026-09-01 → 2026-09-25
type: insights-report
status: REPORT — one automation shipped live in-session with Beth today (PreToolUse hook), not built unattended by this pass
generated: 2026-09-25
generated_by: chores-insights skill, direct invocation (live session, not the scheduled Friday routine — see note below)
predecessor: briefs/insights-report-2026-09-01.md
---

# Insights Report — 2026-09-25

**Tier: FEAST** (agentic, multi-file survey). Fourth run of this pass. Survey window: 2026-09-01 →
2026-09-25 (24 days).

**Note on how this run happened:** a separate, automated, read-only Friday-chores routine ran
earlier today and reported the same period's decisions-needed list without writing this file
(explicitly scoped read-only). Beth then asked live, in this session, to "run /insights" — this is
that live run, with full write permission per the skill's normal contract.

Method: `git log`/`git status` since 2026-09-01, `CHORES.md`, `GAME-STATE.md`,
`CONDUCT-LEDGER.md`, file/commit counts grep-verified directly (47% rule) — not recalled from this
session's own earlier turns.

---

## 0 · What happened to the last report's 5 decisions

| # | Decision (2026-09-01) | Outcome |
|---|---|---|
| 1 | Re-open the git-commit-location decision? | **Resolved.** A `Stop` hook now runs `git add -A && git commit ... && git push origin main` every session end. [CS: VERIFIED — `git log --since=2026-09-01 --oneline \| wc -l` = 50+; `git status --porcelain` = 0 dirty paths, both checked today.] The 1,288-uncommitted-path risk named in the last report is gone. |
| 2 | Which ledger number is real — trip-count base or Miss-count base? | **Partially resolved today.** `CONDUCT-LEDGER.md`'s own table was grep-counted directly: 36 dated rows = 1 Catch / 32 Miss / 1 Tripwire (Claude), 2 Catch / 0 Miss (Beth). This **matches the file's own summary line for the first time** across three reconciliation attempts (08-25, 09-01, 09-25). `GAME-STATE.md`'s separate Ledger-score section had drifted to 2 Catches/30 Misses and was corrected to match. **Not resolved:** `GAME-STATE.md`'s Points-section arithmetic (whether headmaster trips stack additively on top of Catches−Misses) — left flagged on purpose; recomputing it is a policy call, not a grep fix, per the same discipline this skill applies to itself. |
| 3 | Does the Bob-lift's three take-forwards satisfy the Learnings-review chore? | **Still open.** `CHORES.md`'s Learnings-review entry (added 2026-08-27) remains unchecked. No new decision found this period. |
| 4 | Hand-carry the 2 PENDING required-mods now, or wait? | **Still open, unchanged.** Beth, 2026-08-21: "dunno." Untouched since — now over a month stale. |
| 5 | Fix `listening-game` non-invocation structurally, or accept it as recurring? | **Not fixed as originally scoped** — the `SessionStart` hook still only runs the Atlassian/GitHub/Figma preflight check; nothing invokes the game. [CS: VERIFIED — read `.claude/settings.json` directly today.] A **related but different** structural fix landed instead: the called-shot/self-report scoring mechanic this gap was part of got retired and replaced with four structural gates (Amendment 5) plus a real, tested `PreToolUse` hook for one hot category. See §1. |

1 of 5 cleanly resolved, 1 partially resolved with a real number attached, 1 addressed by a different mechanism than the one asked for, 2 unchanged.

---

## 1 · What's working

**The auto-commit hook is real and holding.** Confirmed today: dozens of `auto-commit: session
end` commits since 09-01, zero dirty paths. The scheduled Friday routines this repo runs now see a
working tree that's actually current, not three weeks stale. [CS: VERIFIED]

**`CONDUCT-LEDGER.md`'s self-reported count matches a direct grep for the first time.** 36 rows,
counted directly from the table, equal the file's own "Running score" line. Two prior reports
(08-25, 09-01) found this file disagreeing with itself or with `GAME-STATE.md`; today it doesn't,
on the Claude side. [CS: VERIFIED]

**A genuinely external enforcement mechanism now exists for one hot category.** `.claude/settings.json`
carries a new `PreToolUse` hook (matcher `Write|Edit`) that checks file content for diagram/map
language ("service blueprint," "journey map," "swimlane") on `.md`/`.html` writes and surfaces a
permission `ask` citing `feedback_map_means_figma_diagram.md` and the ledger's 3 recorded repeats
of this exact category (2026-08-04, 2026-08-12 ×2). This is the first hot category on this ledger
to get a check that runs independent of Claude's own self-report — tested by piping synthetic
trigger/non-trigger payloads against the literal stored command (not just a hand-typed draft) under
both `sh` and `bash`, and validated with `jq -e` against the schema. [CS: VERIFIED — pipe-tests run
and shown in this session's own transcript.] **Caveat, not yet resolved:** a live test of the actual
trigger case in this session did not visibly interrupt the write — most likely because `ask`
resolves silently in this remote/Auto-Mode session rather than producing the interactive
stop-and-confirm it should in a normal terminal session. Unconfirmed whether it blocks for real;
named to Beth as needing a live check, not claimed as working end-to-end.

**The called-shot mechanic was retired, not patched again.** It had gone 0-for-2 at predicting the
actual failure and 2-for-2 at suppressing whatever category it named (2026-09-22, 2026-09-23) —
naming one category to watch let the other three through, every time. Rather than writing a
sixth variant of the same self-report mechanic, this session replaced it with four structural
gates (deference, verification, context-read, scope) mapped to the ledger's actual hot categories,
documented in `CLAUDE.md` §14a and `CONDUCT-LEDGER.md` Amendment 5.

---

## 2 · What's manual and shouldn't be

### 2a · Commit messages carry zero signal `[process gap]`

Every single commit since 2026-09-01 is the literal string `auto-commit: session end
<timestamp>`. [CS: VERIFIED — `git log --since=2026-09-01 --oneline | grep -v auto-commit` returns
nothing.] The auto-commit hook fixed the "is anything committed" problem from the last two reports
but introduced a new one: `git log` has no descriptive content at all, so anyone (including this
skill, next time) auditing "what changed and why" has to diff file-by-file instead of reading
commit messages. Not urgent, but it's the direct cost of the fix that closed §0 item 1.

### 2b · GAME-STATE.md's Points arithmetic is still self-disagreeing `[decision needed, carried from 08-25]`

Named unreconciled 2026-08-25, still unreconciled 2026-09-01, still unreconciled today. Amendment 5
(this session) deliberately did not touch it — recomputing a trip-count-based total is a policy
question (does each headmaster trip subtract an additional point on top of the Catches−Misses
formula, or is it already embedded in the Miss count?), not something a grep settles. Three
reports running on the same open arithmetic question.

### 2c · Learnings-review chore, still unchecked `[decision needed, carried from 09-01]`

Added 2026-08-27, asks whether the Bob-lift's three take-forwards count as "a named mechanic + where
it's wired" or as the "reflection" the chore explicitly said not to accept. Genuinely closer to
answered now than it was on 09-01 — the four-gate redesign IS a named mechanic with a wiring
location — but nobody has written that down as closing the chore. One-line fix, not done this pass
per the hard rule against silently resolving a Beth-decision item.

### 2d · Hand-carry the 2 PENDING mods `[decision needed, carried from 08-21]`

Unchanged. "Dunno" stands. Now 35 days stale.

### 2e · `listening-game` non-invocation, third report naming the same gap `[process gap, repeat]`

`SessionStart` still doesn't invoke it. The redesign this session solved an adjacent problem
(self-report unreliability generally) but not this specific one (the ritual not firing at session
open at all). Two different gaps, still both open.

### 2f · The 2026-09-23 CHORES entry is partially superseded, not closed `[decision needed]`

The four candidate fixes (a)-(d) for scoring "well-formed deference" named in `CHORES.md`'s
2026-09-23 entry were effectively acted on today, in spirit — the four-gate redesign is closer to
option (c) (a pre-first-tool-call gate) generalized across all four hot forces, not just scope. The
entry itself is still open and unedited. Worth a line closing or re-scoping it, not a silent edit.

---

## 3 · Not a gap — worth naming

**This report's own survey was possible without working around dirty state, for the first time in
four reports.** The 08-21 and 09-01 reports each had to caveat their git-log findings against an
increasingly stale working tree. This one didn't need to.

**Two independent test methods agreed on the same PreToolUse hook** — a synthetic pipe-test against
the literal stored command, and a real `Write` tool call — landing on the same honest, partial
conclusion (script correct, live block unconfirmed) rather than one contradicting the other
without explanation.

---

## 4 · Decisions only Beth can make

| # | Decision | Why it's blocking | Cheapest resolution |
|---|---|---|---|
| 1 | Recompute `GAME-STATE.md`'s Points-section total, or keep it flagged indefinitely? | Unreconciled since 08-25, three reports running | Decide whether headmaster trips stack additively on the Catches−Misses formula, then compute once |
| 2 | Does the Bob-lift satisfy the Learnings-review chore? | Chore unchecked a month; arguably answered by today's redesign but not written down as such | One line in `CHORES.md` |
| 3 | Hand-carry the 2 PENDING mods now, or keep waiting? | Unchanged since 08-21 | Beth's call, unchanged |
| 4 | Wire `listening-game` into the `SessionStart` hook for real, or accept the gap as recurring? | 3rd report naming the identical gap | One line added to the existing `SessionStart` hook command |
| 5 | Build the same `PreToolUse`-hook pattern for the other hot categories (routed-work-back, verification discipline), now that a template exists and is tested? | Only one of four+ hot categories has a real external check | Name the next category, or say "watch this week's one hook first" |

---

## 5 · Deliberately not built

Per the standing rule: this pass didn't build anything unattended. The one piece of automation that
landed this period — the `PreToolUse` hook — was built live, with Beth, in-session today, tested
and shown to her directly, not shipped quietly inside this report. Everything in §4 is a named
decision, not a build task.
