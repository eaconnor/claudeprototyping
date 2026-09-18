# Handoff — ux-spec-skeleton review, 2026-09-18

## Paste this to start a fresh session

```
Read /Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/HANDOFF-ux-spec-skeleton-review-2026-09-18.md
before doing anything else.

The file-by-file review is DONE — README.md, project.conf, SKILL.md, and OPEN.md are
all reviewed and settled. Do not re-show any of them or reopen that pass.

Beth's next phase is TESTING the toolkit, not more review. She has not yet said what
form that takes (running /ux-kickoff for real on a project, a fresh-clone dry run, both)
— ask, don't assume, before picking a test plan.

The Confluence /scout survey for /ux-kickoff use-case coverage was CALLED OFF mid-survey
("you are probably going too deep... just get started") — do not resume it or treat it
as still queued. Beth gave her own five-category taxonomy directly instead, and it's
already built into SKILL.md as Step 0b (see OPEN.md H-05b). That specific gap is closed.
```

---

## UPDATE — 2026-09-18, later same session

**"Wire ux.md to the main intent spec's UX section" — done.** Found while investigating:
none of the three gate files (`ux.md`/`vision.md`/`design.md`) carried a single
`traces_to:` field. `check-trace.sh`'s forward check would have reported every one of
them `BROKEN` the instant a real `INTENT_SPEC` was set — the whole mechanism had never
been exercised. Fixed all three:

- `ux.md`: G1-01→§1, G1-02/G1-03→§3, new **G1-07**→§5 (the direct "UX section" bridge —
  Gate 1 verifies UX intent is traceable to real research, not free-standing)
- `vision.md`: G2-01→§1, G2-03→§4
- `design.md`: G3-01/G3-02 (FLOOR accessibility)→§5 — the strongest natural §5 bridge

Ran `check-trace.sh` for real, for the first time, against a copy of
`templates/UX-INTENT-SPEC.template.md`. Forward pass resolved clean. Backward pass
correctly flagged the template's own illustrative `UXI-01`/`UXI-02` rows as orphaned —
section-level pointers (`§5`) satisfy the forward check but not the backward one; a real
project needs id-level `traces_to: UXI-##` once it has real rows. Documented in `ux.md`
itself so this isn't a surprise later.

Also surfaced (correctly) a stale STATUS fence in `ux.README.md` — adding G1-07 changed
ux.md's criteria count from 6 to 7, and the fence's cached "0 of 6" went stale. Fixed with
`./check-human.sh --write`. Not a regression; the check did its job.

Registered as `OPEN.md` **H-05a**. Full 14-script suite re-verified clean on a fresh copy
afterward.

**Then queued, not yet started:** `/scout` a Confluence survey of common project types
and how they map to UX involvement, to give `/ux-kickoff` real use-case coverage instead
of one generic walkthrough. Beth also wants the skill to eventually guide the UX/PM-as-UX
person through their own main task, not just the org-process kickoff — noted, not
designed yet; depends on what scout returns.

**Review queue is unchanged** — still `.claude/skills/ux-kickoff/SKILL.md` next, then
`OPEN.md`. The trace fix touched `ux.md`/`vision.md`/`design.md`, none of which were in
the review queue, so it doesn't reorder anything Beth was already reviewing.

---

## UPDATE — 2026-09-18, review closed, use-case gap fixed, ready for testing

**File-by-file review is complete.** `README.md`, `project.conf`, `SKILL.md`, `OPEN.md`
— all reviewed and settled. The Browser-pane, one-file-at-a-time protocol that governed
this session is done; don't resume it or add files to it without a new ask.

**The Confluence-survey plan was called off, not completed.** A `/scout` on common
project types vs. UX involvement was started against real Confluence data (found two
genuine, unrelated tiering systems in ProdUX — a research-method Tier 1/2/3, and a
separate initiative-level UX-involvement Tier A/B/C) — then Beth stopped it mid-survey:
*"you are probably going too deep... just get started."* Rather than resume the survey,
she supplied her own five-category taxonomy directly (§18: Beth abducts, Claude deduces
— her domain call was faster and more grounded than continuing to mine Confluence for
it). That taxonomy is now **Step 0b** in `SKILL.md`: *"I don't know if this needs UX" /
"updating an existing flow — minor" / "something's majorly wrong with existing UX" /
"building a new feature" / "building a new product"* — each with a one-line note on what
it shifts in Steps 1-4 (none of the five skips a step). Logged as `OPEN.md` **H-05b**.
The Confluence findings themselves were not thrown away — noted below in case a later
session wants them — but they are not wired into anything and no further survey is queued.

**Next requested: testing.** Beth said "time to update /handoff to get to testing this."
No test plan has been specified yet — what "testing" means (a live `/ux-kickoff` run on
a real or fictional project, a fresh-clone script sweep, both) is the first thing to ask,
not assume.

---

## Where things stand right now

**File-by-file review: closed.** `README.md`, `project.conf`, `SKILL.md`, `OPEN.md` — all
reviewed and settled. The Browser-pane one-at-a-time protocol is done.

**Current phase: testing the toolkit.** Not yet scoped — ask Beth what "test this" means
before picking an approach.

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
| `ux-spec-skeleton/.claude/skills/ux-kickoff/SKILL.md` | Facilitator skill — reviewed, settled; now has Step 0b (project-type branching) |
| `ux-spec-skeleton/check-roster.sh` | Newest script, tier-aware |
| `ux-spec-skeleton/scripts/figures.py` | Content-hash comparison logic behind `check-condens.sh` |
| `ux-spec-skeleton/EXIT-CODES.md` | Exit code registry (33 codes, documented) |
| `/Users/bethconnor/.claude/projects/.../memory/feedback_beth_nam_vs_beth_connor.md` | New memory — Beth Nam vs. Beth Connor distinction |

All paths verified against the filesystem at handoff time (2026-09-18): `ux-kickoff-skeleton/` confirmed deleted, `scripts/figures.py`, `check-roster.sh`, `templates/UX-INTENT-SPEC.template.md`, and `.github/workflows/gates.yml` all confirmed present.

---

## What's ambiguous or unresolved (name it, don't guess)

- **What "testing" means is completely unscoped** — Beth's own words were "time to update /handoff to get to testing this." No method, no scope, no success criteria stated. Ask before choosing one.
- `OPEN.md` A-08 (the skinny/full seam) is explicitly logged as an untested judgment call — no verdict yet on whether the boundary is drawn in the right place.
- `OPEN.md` H-04's remaining scope (`ROLES.md` + `VALUE.md`) was never reached in the file-by-file pass — status unknown, not reviewed.
- `OPEN.md` H-05b's five categories are Beth's own on-the-spot taxonomy, not derived from anything external — treat as settled unless she revises it herself; don't "improve" it with the shelved Confluence material below.

## Confluence material found, not used (available if a later session wants it)

Two real, independent tiering systems exist in the ProdUX Confluence space — surfaced
while the survey was still running, before Beth called it off. Neither is wired into
`ux-spec-skeleton` and neither should be, unless Beth asks:

- **Research Tiering Decision Tree** (Tier 1 Self-Serve / Tier 2 Coached / Tier 3
  Researcher-Led) — a PM-or-designer-vs-UXR-involvement ladder by stakes and session
  count. Authored by Beth Nam. Page id `62082580750`, plus `62082351514` (Tier 2 process)
  and `62081630643` (Tier 1 templates).
- **Initiative/Epic UX Tiering system** (Tier A / B / C) — a separate, initiative-level
  UX-involvement ladder by value/ambiguity/impact/disruption/JTBD, run through the
  triad/quadrad. Page ids `59637268523` (criteria) and `61028007944` (operationalization).
