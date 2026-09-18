# Handoff — ux-spec-skeleton review, 2026-09-18

## Paste this to start a fresh session

```
Read /Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/HANDOFF-ux-spec-skeleton-review-2026-09-18.md
before doing anything else.

Beth is reviewing ux-spec-skeleton/ one file at a time in the Browser preview pane.
README.md and project.conf are already reviewed and settled. Open
ux-spec-skeleton/.claude/skills/ux-kickoff/SKILL.md in the Browser preview pane next
and say: "Here's the ux-kickoff skill — take a look, say next when ready for OPEN.md."
Do not re-show README.md or project.conf. Do not add anything to the review queue
without asking first.
```

---

## Where things stand right now

**Active protocol:** Beth reviews ux-spec-skeleton/ file-by-file in the Claude Code Browser preview pane. One file shown, wait for "next" before advancing. She corrects inline as she reads.

**Reviewed and settled:** `README.md`, `project.conf`

**Next in queue, in this exact order:**
1. `ux-spec-skeleton/.claude/skills/ux-kickoff/SKILL.md`
2. `ux-spec-skeleton/OPEN.md`

Do not extend this list without asking Beth first.

---

## What happened this session, in order

1. **check-condens.sh fixed** — content-hash comparison (`ux-spec-skeleton/scripts/figures.py`) replaces a date-only comparison, so a typo fix and a reversed finding in a Condens artifact are now distinguishable. Tested across 6 scenarios. Wired into `EXIT-CODES.md`, `README.md`, `.github/workflows/gates.yml` (exit 30 = unjudged FIGURES, fail; 31 = not observed, fail; 32 = prose-only, warn).

2. **Self-caught fabrication, retracted** — `check-condens.sh`'s header originally carried an invented motivating claim (a fake "evidence brief cites six artifacts" story). Caught and removed. Logged as `OPEN.md` row A-05.

3. **Real error, corrected by Beth** — the `nicole-acp-datadump` folder had been wrongly attributed to "Beth Nam." It's Beth Connor's own work. 5-demerit Miss logged in `GAME-STATE.md`. New memory file written and now loaded: `/Users/bethconnor/.claude/projects/-Users-bethconnor-Library-CloudStorage-OneDrive-N-able-Bethproto/memory/feedback_beth_nam_vs_beth_connor.md`. **Beth Nam and Beth Connor are different real people — never conflate.**

4. **UX-Intent-Spec template built** — `ux-spec-skeleton/templates/UX-INTENT-SPEC.template.md` (871 lines). A UX-integrated derivative of the org's real 20-section intent-spec template. Confirmed as the real standard by matching two independent production docs section-for-section (`acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md` and `test-repo-doodle-journal/Intent Specs/doodle-journal.md`). Adds RACI, `evidence_basis:`, a Change requests table, and scoped signatures as load-bearing sections — not an addendum. An earlier draft filed this as an 82-line "most teams skip this" addendum; Beth rejected that framing ("this feels like this is the meeting — not the vision.md etc structures") and it was rebuilt as load-bearing.

5. **Two-repo detour, consolidated** — a second, smaller skeleton (`ux-kickoff-skeleton/`) was briefly built per Beth's own choice in an AskUserQuestion. Beth then said the two repos were confusing ("I need you to consolidate all the nicest thinking we have"). Everything was folded into the single existing `ux-spec-skeleton/` repo, and `ux-kickoff-skeleton/` was deleted — confirmed gone as of this writing. What got folded in:
   - `check-roster.sh` (14th script) — checks ROSTER/RACI/owners/escalation aren't placeholders. Shares exit 3's meaning with `check-blocked.sh`; exit 33 is new.
   - `project.conf` gained: `ROSTER=(...)`, `ESCALATION_PATH`, `ESCALATION_PATH_TESTED`, `EVIDENCE_BASIS`, `PROCESS_TIER`.
   - `.claude/skills/ux-kickoff/SKILL.md` — facilitator skill (`/ux-kickoff`) that asks roster/RACI/owners/escalation/evidence-basis in that order, writes answers to both `project.conf` and the Intent Spec's own frontmatter. Never fills either itself; blocks on an unasked question, not on an answer it dislikes.
   - `OPEN.md` rows: A-06 (no intent-spec template existed — found, fixed), A-07 (record of the two-skeleton detour and consolidation), H-01 (widened to cover `ESCALATION_PATH`).

6. **"Skinny" tier added** — for teams whose RACI/escalation/evidence-ownership is already settled elsewhere and don't want this repo's version of that loop, but still want the three mechanical gates checked. Built:
   - `PROCESS_TIER="full"|"skinny"` in `project.conf`
   - `ux-spec-skeleton/README-SKINNY.md` — names exactly what's kept (`check-gates.sh`, `check-trace.sh`, `check-drift.sh`, `check-eng.sh`, design/contrast/risk scripts) vs. what goes quiet (`check-roster.sh`, `check-blocked.sh`, `check-evidence.sh`, `check-condens.sh`, `check-judgment.sh`, `check-human.sh`, `check-never.sh`, `check-waivers.sh`, `check-value.sh`, `check-tier.py`, `/ux-kickoff`)
   - `check-roster.sh` made tier-aware — skinny mode returns exit 0 "not applicable" instead of BLOCKED
   - Step 0 added to `/ux-kickoff` asking full-vs-skinny before anything else
   - Registered as `OPEN.md` A-08, explicitly flagged as an untested judgment call about where the seam sits

7. **Full suite re-verified** — 20-script suite re-checked clean after every change (fresh-clone tests, exit-code audit). 33 exit codes emitted, all documented, zero collisions.

8. **Review pass began** — Beth started reviewing the consolidated repo file-by-file in the Browser pane. On `README.md`: cut an unregistered/uncheckable "12-agent study" claim from the opening — logged as `OPEN.md` H-04a, which is why H-04's remaining scope is now just `ROLES.md` + `VALUE.md`. On `project.conf`: asked for and got a "what is this file for / when do you edit it" preamble, then asked for that preamble to also explain its relationship to the UX-Intent-Spec work specifically — a "HOW THIS FILE RELATES TO THE UX-WIRED INTENT SPEC" section was added explaining `INTENT_SPEC` and the six mirrored fields.

---

## Standing rules that governed this session — carry forward

- **Never fabricate a motivating claim or citation.** Verify before asserting a count, a "X files reference Y," or a study result. This session caught itself doing this twice (the `check-condens.sh` header, and nearly again in a stub about `OPEN.md`/`RITUALS.md`). Grep or check before writing a claim like "X already says this."
- **Beth Nam ≠ Beth Connor.** Confirm `feedback_beth_nam_vs_beth_connor.md` memory is loaded.
- **When Beth flags a real defect** (stale count, wrong attribution, design flaw) — fix it AND log it in `OPEN.md`. This repo's ethos is "recorded, not smoothed over," not silently patched.
- **Two competing structures for the same thing is a smell.** Beth explicitly rejected `ux-spec-skeleton` and `ux-kickoff-skeleton` existing side by side. Default to one canonical home; a lighter-weight variant becomes a mode/flag within it (see `PROCESS_TIER`), not a second repo.
- **CLAUDE.md governs this whole workspace** — BITE-sized responses by default, `[CS:]` confidence tags on factual claims, "deliver exactly what was asked, don't add unrequested side-quests." The scout→spec→critic→build→critic→handoff pipeline is for prototype/build requests — not applicable to this toolkit-maintenance work.
- **The Listening Game is in effect** (`GAME-STATE.md`, via the `listening-game` skill at session start). Read `GAME-STATE.md` for current tally/hot categories before anything else in a fresh session.

---

## Key files

| File | What it is |
|---|---|
| `ux-spec-skeleton/README.md` | Entry point — reviewed, just trimmed (12-agent-study claim cut) |
| `ux-spec-skeleton/README-SKINNY.md` | New — the lighter PROCESS_TIER path |
| `ux-spec-skeleton/project.conf` | Reviewed — two preamble sections just added |
| `ux-spec-skeleton/OPEN.md` | Live register — rows A-05 through A-08, H-01, H-04/H-04a are all from this session |
| `ux-spec-skeleton/templates/UX-INTENT-SPEC.template.md` | UX-integrated intent spec, 871 lines |
| `ux-spec-skeleton/.claude/skills/ux-kickoff/SKILL.md` | Facilitator skill — next in review queue |
| `ux-spec-skeleton/check-roster.sh` | Newest script, tier-aware |
| `ux-spec-skeleton/scripts/figures.py` | Content-hash comparison logic behind `check-condens.sh` |
| `ux-spec-skeleton/EXIT-CODES.md` | Exit code registry (33 codes, documented) |
| `/Users/bethconnor/.claude/projects/.../memory/feedback_beth_nam_vs_beth_connor.md` | New memory — Beth Nam vs. Beth Connor distinction |

All paths verified against the filesystem at handoff time (2026-09-18): `ux-kickoff-skeleton/` confirmed deleted, `scripts/figures.py`, `check-roster.sh`, `templates/UX-INTENT-SPEC.template.md`, and `.github/workflows/gates.yml` all confirmed present.

---

## What's ambiguous or unresolved (name it, don't guess)

- `OPEN.md` A-08 (the skinny/full seam) is explicitly logged as an untested judgment call — no verdict yet on whether the boundary is drawn in the right place.
- `OPEN.md` H-04's remaining scope (`ROLES.md` + `VALUE.md`) has not been reviewed in this session's file-by-file pass — status unknown until Beth gets there.
- Whether Beth wants any files added to the review queue beyond `SKILL.md` → `OPEN.md` is unstated. Ask, don't assume.
