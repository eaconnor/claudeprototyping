# OPEN.md — the register of everything unresolved

One index for every open question, riskiest assumption, and accepted risk. **If it is unresolved and it matters, it has a row here.** Read by `./check-blocked.sh`, which is why the table format is strict.

## The kinds — this is the load-bearing distinction

| kind | meaning | who unblocks it | machine behaviour |
|---|---|---|---|
| `HUMAN` | A **decision** only a person can make. No research resolves it. | named owner | **Stop and ask.** Do not infer, do not pick a sensible default, do not proceed "provisionally." |
| `RESEARCH` | **Evidence** is missing. The question has a findable answer nobody has found. | anyone who can do the work | Proceed flagged. May build, must not claim validation. |
| `ACCEPTED` | A known weakness being **deliberately carried**. | already decided | Proceed. Must stay visible; never silently dropped. |

An agent that hits a `HUMAN` row and guesses anyway has made the specific error this file exists to prevent.

**The `blocks` column means "cannot be settled until you decide" — NOT "is relevant to."** Conflating those produces false never events in `check-never.sh` NE-1, and a false never event is how the whole mechanism gets switched off.

## Open rows

| id | kind | question / assumption | owner | blocks | resolves_when |
|---|---|---|---|---|---|
| H-04 | HUMAN | The claims this repo rests on are not registered in `MANIFEST.md`, so no clone can check them and `check-drift.sh` cannot speak to them. Three specifically: the 12-agent / 6-trap-task result in `README.md`; "internal policy brief §8" behind the ownership split in `ROLES.md`; and `VALUE.md` V-04's pointer to "the sibling repo" with no path, commit or hash. The findings may well be sound — the point is that this repo cannot show it, while telling every adopter that an unregistered source cannot be shown to be current. | the author — only they can produce or point at the study artifacts | adopting this repo on the strength of its own evidence claims; any `[CS: VERIFIED]` tag on a claim about the method | either the artifacts are registered in `MANIFEST.md` with hashes, or the claims are permanently retagged as unregistered and the README stops leading with a number nobody can check |
| A-06 | ACCEPTED | No template existed for the canonical document the whole toolkit points at — `templates/` had `DATADUMP.template.md`, `spec-template.md`, `plan-template.md`, `tasks-template.md`, `constitution-template.md`, `checklist-template.md`, and nothing for the intent spec itself, despite `check-trace.sh` requiring one and failing exit 5 without it. Found in the doodle-journal cognitive walkthrough, 2026-09-18, while writing one from scratch — which duplicated a real, richer, already-production-tested format (`Intent_Spec_Example.md`, matching `acp-core-main-3` and `test-repo-doodle-journal` section-for-section) that existed the whole time, unlinked from this repo. | the author | a fresh project has no canonical document to author against, and a toolkit-specific duplicate almost shipped instead of pointing at the real one | `templates/INTENT-SPEC.template.md` redirects to two places: `Intent_Spec_Example.md` for the base 20-section shape, and the new `templates/UX-INTENT-SPEC.template.md` for a UX-led kickoff, where RACI, evidence status, change requests and scoped sign-off are load-bearing rather than an addendum — corrected 2026-09-18 after the addendum framing itself was named as burying the point. Still open whether `Intent_Spec_Example.md` should be copied into this repo rather than referenced across two directories one level apart in name only |
| A-07 | ACCEPTED | Two skeletons briefly existed side by side — this repo, and a separate `ux-kickoff-skeleton/` built 2026-09-18 with its own simplified copies of `ux.md`/`vision.md`/`design.md`, its own `check-roster.sh`, and its own `/ux-kickoff` skill. Beth: "I think everyone here is confused. I need you to consolidate all the nicest thinking we have." Consolidated same day: `check-roster.sh` and the `/ux-kickoff` skill folded in here (adapted — the skill no longer assumes a fixed `Intent Specs/<project>.md` path, it follows `INTENT_SPEC` in `project.conf` like `ux-onboard` follows `EVIDENCE.md`); `ux-kickoff-skeleton/` deleted rather than left to drift out of sync with the repo that actually gets used. | the author | maintaining two half-finished-looking repos when one already had thirteen tested scripts | already settled — one repo, fourteen scripts, this row is the record of why there were briefly two |
| A-05 | ACCEPTED | `check-condens.sh`'s header carried a fabricated motivating finding from 2026-09-17 to 2026-09-18 — "an evidence brief cites six published Condens artifacts, one updated fourteen days after the brief." No brief in the corpus cites any of the six; they came from the author's own API call. Retracted in place, with the real grounding named. Recorded rather than deleted because the script that shipped it also defines NE-3, "a claim contradicted by its own primary source is still cited as support" — the apparatus did not catch its own author, and the reason is that a script header is prose and nothing checks prose. | the author | nothing — the mechanism is unaffected | already settled: retraction is in the header and `check-never.sh` NE-3 remains the only check for this class, which is honest about its own limits |
| H-01 | HUMAN | `project.conf` ships with `ACCOUNTABLE_OWNER`, `RISK_FUNCTION` and (added 2026-09-18) `ESCALATION_PATH` as placeholders, plus an unfilled `ROSTER`. `scripts/check-tier.py` routes every T2 and T3 signature to the first two; `check-roster.sh` reads all four. Until real names are entered the signature ladder and the escalation path both point at nobody. Who are they on this project? | ‹you› | every T2/T3 waiver, check-tier.py's output being actionable, and check-roster.sh exiting 0 | All fields name a real person or a real named function, and ROSTER has at least one real row |
| H-02 | HUMAN | `INTENT_SPEC` is empty, so `check-trace.sh` exits 5 and no criterion can be validated against a canonical document. Author an intent spec, or accept that this project's gate criteria are unanchored? | ‹you› | check-trace.sh being able to run at all | An intent spec exists, or the decision is recorded here |
| H-03 | HUMAN | The 22 criteria shipped in the three gate files are the **generic house rubric**, not this project's. Gating on generalities passes without proving anything about your product. Which of them do you replace with project-specific criteria, and which are genuinely universal? | ‹you› | whether Gate 1–3 mean anything here | Each criterion is either rewritten for this project or consciously kept |
| A-01 | ACCEPTED | `BUILD` is empty, so `scripts/check-design.py` exits 5 and `check-eng.sh` EG-1 is **UNEVALUATED, not passing**. An unevaluated harm gate must never read as a clear one. | — | nothing; must stay visible | n/a — carried until a build exists |

## Counts

Computed, never asserted — run `./check-blocked.sh`.

## Resolved

Rows move here with a date and an outcome. Nothing is deleted; a register you can rewrite silently is not a record.

| id | kind | outcome | date |
|---|---|---|---|
| H-00 | HUMAN | Merged schema adopted: house field names, every field annotated with its reader script or `documentary`. | 2026-09-16 |
