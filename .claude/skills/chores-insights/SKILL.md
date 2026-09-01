---
name: chores-insights
description: Weekly process/insights report for this project — reviews recent activity, CHORES.md, and GAME-STATE.md, then reports what's working, what's manual and shouldn't be, and what decisions Beth needs to make before anything gets automated. Not the same tool as the built-in Claude Code `/insights` command (that's general usage analytics across all sessions; this is scoped to this repo's chores/process). Invoke when Beth types `/chores-insights`, or when the Friday chores task's insights step runs.
---

# chores-insights — weekly process report

**Tier: FEAST** (agentic, multi-file survey). State this at the top of the output per CLAUDE.md §2.

Do not confuse this with the built-in `/insights` command — that one reports on Beth's Claude Code
usage across all projects and sessions. This one reports on what happened *in this repo* since the
last run: chores, the game, and process patterns worth automating.

---

## What this skill does

1. **Survey the period.** Since the last insights report (check `briefs/` for the most recent
   `insights-report-*.md` to find the date to survey from):
   - `git log` and file mtimes for what changed
   - `CHORES.md` — open items, what got closed, what's stuck
   - `GAME-STATE.md` + `CONDUCT-LEDGER.md` — Misses, Catches, headmaster's office trips, hot categories
   - Recent `briefs/` for session patterns worth flagging (repeated manual steps, recurring gaps)

2. **Verify every number before it ships.** The 47% rule applies here specifically — this skill
   exists because a hand-typed count ("352 remaining rows") drifted from the real one (402/47/355)
   with nothing to notice. Grep-verify counts, don't recall them.

3. **Sort findings into three buckets**, same shape as `briefs/insights-report-2026-08-21.md`:
   - **What's working** — real patterns worth naming, not just "things went fine"
   - **What's manual and shouldn't be** — recurring friction, drift, or process gaps, each tagged
     `[decision needed]`, `[automatable]`, `[process gap]`, or `[done this run]` if it got fixed
     unattended (e.g. a `[mechanical]`-tagged CHORES.md item)
   - **Decisions only Beth can make** — a table: decision · why it's blocking · cheapest resolution

4. **Write the report** to `briefs/insights-report-[YYYY-MM-DD].md` with YAML frontmatter matching
   the 2026-08-21 file's shape (`title`, `type: insights-report`, `status`, `generated`,
   `generated_by`, `predecessor`).

5. **If the pass surfaces new Friday-decision items**, append them to `CHORES.md` under a new
   dated `### From Insights Report (YYYY-MM-DD) — Process Decisions` heading — same pattern as the
   2026-08-13 and 2026-08-21 sections. Cross-reference the report file; don't duplicate the prose.

6. **Report which items from the last insights pass got resolved** since then (check them off or
   note their status) — this skill should notice its own prior recommendations landing, not just
   generate new ones.

---

## Hard rules

- **Report, don't implement.** Never build automation unattended in this pass, even when the fix
  looks obvious and small. Name it as a decision item instead — same discipline as the 2026-08-13
  and 2026-08-21 passes. The one exception: fixing something explicitly tagged `[mechanical]` in
  `CHORES.md` already, which is pre-authorized.
- **No invented grounding (CLAUDE.md §4).** Every claim needs a real source — a file, a git log
  line, a grep result. If something can't be verified, say so as `[CS: UNKNOWN]` rather than
  guessing at what probably happened.
- **Don't silently correct a prior report.** If this pass finds that an earlier insights report
  overclaimed or was wrong (like the 2026-08-21 "/insights doesn't exist" mistake), say so plainly
  and fix the downstream artifact (CHORES.md, memory) — don't just quietly write it correctly this
  time and let the old wrong claim stand elsewhere.
- Default to BITE for the surrounding conversation; the report itself can be a FEAST.
