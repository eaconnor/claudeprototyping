# EXIT-CODES.md — the contract between these scripts and your CI

Every script here exits with a **distinct code per kind of problem**, never a bare
pass/fail. That is the whole design: a single pass/fail collapses "a box is unticked"
and "this build can hurt someone" into one number, and loses the only information
that tells you what to do next.

Your CI decides which codes fail the build. **The scripts do not decide that** — they
report what kind of problem it is and leave the policy to you. The recommended
policy is in the table's last column.

## The codes

| code | script | means | CI |
|---|---|---|---|
| `0` | all | pass | pass |
| `1` | `check-gates.sh` | a gate has unticked acceptance criteria | **warn** — red gates are the normal state of honest work |
| `2` | `check-blocked.sh` | a `HUMAN` row stands: a person owes a decision | **warn + name the owner** |
| `2` | `check-risk.py` | no destination argument was given | **fail the job config** — this is a caller error, not a finding |
| `3` | `check-blocked.sh` · `check-risk.py` | the register is missing or has no parsable rows | **fail** |
| `4` | `check-trace.sh` | a criterion's `traces_to:` points at nothing, or is orphaned | **fail** |
| `5` | `check-trace.sh` · `check-design.py` · `check-tier.py` · `ux-score.py` · `check-skills.sh` · `check-drift.sh` | **cannot evaluate** — a precondition is missing (no intent spec, no build, no gate file, nothing parsable) | **warn, never treat as pass** |
| `6` | `check-design.py` | the build violates the design system | **warn** (FIT) |
| `7` | `check-design.py` | only unresolved token pairs remain | **warn** |
| `9` | `check-risk.py` | a ship-blocking hazard at this destination | **fail** |
| `10` | `check-eng.sh` | **FLOOR** — the build can harm a user | **fail, hard** |
| `11` | `check-eng.sh` | something is off-roadmap | **warn** |
| `12` | `check-eng.sh` | a gate eng owns is **unevaluated** | **warn, never treat as pass** |
| `13` | `check-value.sh` | the value register is malformed, or records no costs | **fail** |
| `14` | `check-value.sh` | `VALUE.md` missing | **fail** |
| `15` | `check-waivers.sh` | a **never event** was waived — that is an incident, not a waiver | **fail, hard** |
| `16` | `check-waivers.sh` | the ledger is malformed, or a bypass has no predicted cost | **fail** |
| `17` | `check-tier.py` | too much routine work needs a senior signature — the tiering is wrong | **warn** |
| `18` | `check-drift.sh` | **STALE** — a registered source has moved | **warn** |
| `19` | `check-drift.sh` | **CONFLICT** — a source is missing or unregistered | **fail** |
| `20` | `check-never.sh` | a **never event** happened | **fail, hard — stop and investigate, do not score it** |
| `21` | `check-skills.sh` | a registered skill name does not exist on disk | **fail** |
| `22` | `check-drift.sh` | `drift:` claims a better state than the hashes show | **fail** |
| `23` | `check-judgment.sh` | unfilled judgment slots with no directive keeping them provisional | **fail** |
| `24` | `check-judgment.sh` | authorization incoherence — a permissive regime with no human sign-off, or a `BLOCKED` file authorizing work anyway | **fail** |
| `25` | `check-judgment.sh` | regime declared without the constraints that define it | **warn** |

`8` and `26`+ are unassigned. Take the next free number and add a row here in the
same commit — an undocumented exit code is a number somebody will guess the meaning of.

## Two things about this table that are easy to get wrong

**`5` is shared on purpose, and it is the most important code here.** Six scripts use it
for the same thing: *I could not evaluate this.* It is not a pass and not a failure — it
is the absence of a result. Treating it as a pass is the single most common way this
apparatus gets defeated, because "no violations found" and "no violations looked for"
print almost identically. Three of the first nine scripts written here shipped with that
bug and all three were real. Every script now fails rather than reporting zero findings
as clear.

**`2` is genuinely double-booked and has not been fixed.** In `check-blocked.sh` it
means a human owes an answer. In `check-risk.py` it means you forgot the destination
argument. Those are different classes of thing — one is a finding, one is a caller
error — and a CI job that treats exit 2 uniformly will get one of them wrong. Until it
is split, branch on the script, not on the code alone. *(Recorded here rather than
silently renumbered: renumbering would break any existing CI that already branches
on 2.)*

**Drift precedence is an incentive, not just an ordering.** `22` outranks `19` outranks
`18`. Declaring `drift: STALE` honestly when your sources are stale exits `18` and warns.
Declaring `drift: FRESH` in the same situation exits `22` and fails the build. Telling the
truth about your own staleness is mechanically cheaper than being optimistic about it —
the only place in this repo where a script shapes behaviour rather than just reporting on
it. Side effect: while files ship declaring `FRESH`, most real degradation surfaces as `22`
rather than `18`/`19`.

## The FLOOR / FIT split, which is what makes this usable by engineering

- **FLOOR** — accessibility, data integrity, lawfulness, security. **Never gated on
  problem validation.** You do not wait for a reaction test to label a form field.
  Codes `10`, `15`, `19`, `20`, `22`, `23`, `24` are FLOOR-class: fail hard.
- **FIT** — polish that only pays off if the concept survives. Codes `1`, `6`, `7`,
  `11`, `17`, `18`, `25` are FIT-class: visible warning, do not block.

"Don't build until Gate 1 passes" is correct for FIT and dangerously wrong for FLOOR.

## Gates block artifacts, not people

A pending signature never idles an engineer — they move to other work. What waits is the
specific risky action, or shipping it to a particular destination. If you find yourself
blocking a person, the tiering is wrong, and `check-tier.py` exit 17 exists to tell you so.
