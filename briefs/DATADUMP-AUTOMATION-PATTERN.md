# Autonomous Weekly Datadump & Chores Runner

**Status:** Implemented 2026-08-14.

**Decisions:**
- **Schedule:** Friday 9am — same slot as the chores runner, but as a separate task
- **Architecture:** Datadump is a standalone, shareable task (`weekly-datadump-refresh`). Not embedded in the Friday chores runner. Any team member can run it independently.
- **Mechanical items in scope:** `ACP → Harness rename` (only current qualifying item; re-scan CHORES.md each run for new `[mechanical]` tags — handled by the chores runner, not the datadump)
- **Confluence write strategy:** Conservative — 1 page at a time; bump to Balanced (3 pages) after two clean runs

---

## What it does

A headless Claude Code job runs every Friday morning (or on a schedule you set). It:

1. **Gathers** new research sources: Confluence datadump updates, new Jira tickets, new transcripts
2. **Reconciles** findings into your existing spec documents (ux.md, brief.md, acp-ux.md)
3. **Flags** North Star drift (did we lose alignment with the stated problem?)
4. **Works** mechanical chores from CHORES.md: renames, filing, terminology sweeps
5. **Diffs & PRs** all changes with a human-readable changelog

Returns: a PR ready for you to review & merge, no human supervision.

---

## Why this matters

Right now:

- Datadump refresh happens manually every 2–3 weeks, leaving research sources stale
- CHORES mechanical tasks pile up (renames, filing, cleanup) and never get done
- Context risk: long sessions = autocompact = lost documents in the compaction

With an autonomous runner:

- Friday 9am: all sources are fresh, all mechanical chores done, diffs are ready
- No live session friction: the runner is headless, you're not blocked mid-work
- Risk register reviewed automatically (flags if the runner found something unexpected)
- Same [CS:] tagging discipline enforced (you can reject a PR if the runner over-claims)

---

## Pattern: the three components

### 1. The Datadump Refresh Skill

```markdown
# /datadump-refresh — Autonomous weeky runner

Invoke once per week (Friday 9am via cron). Runs:

1. Enumerate all sources (Confluence AI space, Jira ACP board, local transcripts)
2. Fetch new pages/tickets/files since last run
3. Reconcile into ux.md, brief.md, acp-ux.md
4. Flag North Star drift (prompt: "Has our stated problem changed?")
5. Work mechanical CHORES items (anything tagged `[mechanical]` in CHORES.md)
6. Write CHANGELOG.md with [CS:] tags on every claim
7. Open a PR with the diff

Exit conditions:
- Atlassian auth failure: retry once, then write TRIAGE.md with what needs manual work
- Oversized payload (>100KB): chunk into multiple serial writes with re-verify after each
- Prompt hits max turns: write PAUSED.md with the stop point, open a PR with partial results

Always write changes serially, never in parallel.
Re-read the Confluence page after every write to confirm the write landed.
```

### 2. The Risk Register Review

Built into the CHANGELOG output:

```
Risk Register Sync (Automated)

Sources refreshed: Confluence (8 new pages), Jira (3 new tickets), transcripts (2 new)
Items reconciled: 14
North Star drift detected? NO ✅

Mechanical chores completed:
  [x] Rename "QBR Advisor" → "QBR/EBR Harness Coworker" across specs (found 27 instances)
  [x] Filed 5 new research transcripts into scout_input/
  [x] Terminology: "murder board" → "Idea Chess" (14 replacements)
  [x] Cleaned up 3 orphaned spec files (archive-candidate)

Open questions surfaced:
  ⚠ Jira FSN-83234 contradicts the stated problem scope (stored in FLAGGED_FSN.md)
  ? No explicit decision on Channel delivery mechanism (QBR system § 15)

Next human gate:
  Decision needed on: FLAGGED_FSN.md (1 item)
  Recommend: merge this PR as-is (no blockers)
```

---

## Friday chores to unblock this

- [ ] **Decide schedule** — Friday 9am? Monday 10am? Another day/time? (1 min decision)
  
- [ ] **Tag mechanical chores** — go through CHORES.md and add `[mechanical]` to any item that's:
  - A rename/find-and-replace (no judgment needed)
  - Filing/organization (known destination)
  - Terminology cleanup (list of terms + replacements is explicit)
  
  Examples:
  ```markdown
  - [ ] **ACP → Harness rename.** [mechanical]
  - [ ] **Terminology: "murder board" → "Idea Chess"** [mechanical]
  - [ ] File three orphaned transcripts into scout_input/ [mechanical]
  ```
  
  Do NOT tag: decisions, strategy questions, anything requiring your judgment.
  
- [ ] **Pick sources to monitor** — default is:
  - Confluence: `space/ai` (ACP datadump)
  - Jira: `project = ACP` (Harness)
  - Local: `transcripts/`, `scout_input/`, `briefs/*-research-*.md`
  
  Modify if you want other sources included.

- [ ] **Decide Confluence write strategy** — how many pages per batch before re-verifying?
  - Conservative: 1 page at a time (safe, slower)
  - Balanced: 3 pages per batch (the Insights report suggests this is where you've had failures)
  - Fast: 5 pages per batch (risky if connectivity is unstable)

---

## Implementation sketch (for reference, not for you to build)

Once you've decided the three Friday chores items above, here's what the skill does:

```bash
# Pseudo-code for /datadump-refresh

1. Get git commit hash of last run (stored in .datadump-refresh.last-run)
2. Confluence: fetch all pages modified since last commit
3. Jira: fetch all tickets modified since last commit
4. Local: find new files in transcripts/, scout_input/, briefs/*-research-*.md
5. For each new source:
   a. Extract claims / key findings
   b. Reconcile into ux.md (append to relevant section)
   c. Tag with [R]/[D]/[A]/[?]
   d. Add footnote with source URL/file path
6. Run North Star check: did the stated problem change? (prompt: "Review this section and flag if the core problem statement has changed")
7. Scan CHORES.md for [mechanical] items
8. For each [mechanical] item:
   a. Execute the operation (find-replace, file move, etc.)
   b. Run the verification (re-read the file, spot-check the results)
   c. Mark as done
9. Generate CHANGELOG.md with [CS:] tags
10. Open a PR: git branch, commit, push, gh pr create

On failure:
  - Atlassian 401 (auth drop): write TRIAGE.md, create PR with partial results
  - Oversized payload: chunk it, write+verify serially, continue
  - Max turns hit: write PAUSED.md, create PR with partial results, note the stop point for manual resume
```

---

## Once implemented: how to invoke

```bash
# Manual test run (dry-run, no PR)
claude --project ~/Desktop/Bethproto /datadump-refresh --dry-run

# Scheduled run (opens a PR, happens Friday 9am)
# Wired via /schedule or a cron in your .claude/launch.json
```

---

## Related

- `CHORES.md` — the source list (gets scanned for [mechanical] items)
- `.datadump-refresh.last-run` — internal marker for "what changed since last run?"
- `CHANGELOG.md` — generated output listing every reconciliation with [CS:] tags
- `/refresh-datadump` skill — existing manual version (this automates it)

---

## Why this matters for the Friday chores list

This pattern requires three *decisions* from you that can't be automated:

1. **When** — schedule choice
2. **What's mechanical** — tagging CHORES.md items that are safe to auto-work
3. **How safe** — write-batch strategy (1 page at a time vs. 3-5 per batch)

Once those three decisions land in Friday CHORES, the implementation is templated.

If you decide NOT to build this, that's fine — just close the chore with "deferred" and the pattern docs stay for future reference.
