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
| H-01 | HUMAN | `project.conf` ships with `ACCOUNTABLE_OWNER` and `RISK_FUNCTION` as placeholders. `scripts/check-tier.py` routes every T2 and T3 signature to them, so until they name real people the signature ladder points at nobody. Who are they on this project? | ‹you› | every T2/T3 waiver, and check-tier.py's output being actionable | Both keys name a real person or a real named function |
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
