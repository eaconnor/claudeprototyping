# GAME-STATE.md — The Listening Game

Updated at the close of each session by the `game-close` skill. Read at session open by the `listening-game` skill.

---

## Current score

Claude · 0 Catches / 22 Misses / 1 unconfirmed tell
Beth · 2 Catches / 0 Misses

> **Count re-verified 2026-09-01, against source.** Total (0 Catches / 22 Misses / 1 Tripwire for Claude, 2 Catches / 0 Misses for Beth) matches `CONDUCT-LEDGER.md`'s own footer exactly — no fix needed there. The per-category table below did have a real error, now corrected: "Didn't check prior art" was listed as 5 ledger rows ("2026-08-12 x4, 2026-08-14"). Recounting the actual ledger rows: only **3** rows carry that tag — two on 2026-08-12 ("rebuilt existing work," "fourth instance in one session, same class") and one on 2026-08-14 (dual-tagged with Context discipline). The "four wrong-shape builds" language in the 2026-08-12 row's own prose (wrong medium/grain/orientation/axis) describes four mistakes made *within* that one session, not four separate scored ledger entries — two of the four were never logged as their own rows. Table below corrected accordingly. A `game-close` run should still rebuild this table from the ledger directly each time rather than hand-incrementing it, to stop this class of drift.

## Hot categories (2+ Misses)

- **Map means Figma diagram** — 3 Misses (2026-08-04, 2026-08-12 ×2). Third strike already logged. Headmaster's office condition met.
- **Didn't check prior art / build-or-fix before reading her artifact** — **3 in the ledger** (2026-08-12 ×2, 2026-08-14 ×1). *(Corrected 2026-09-01 — table previously read 5; re-verified against `CONDUCT-LEDGER.md` directly, actual count is 3.)* Still meets the 3rd-repeat headmaster's-office trigger.
- **Routed work back to Beth instead of doing it** — 2 Misses (2026-08-12, 2026-08-14). Second strike.
- **Fidelity/completeness** — 2 Misses (2026-08-04 ×2)

## All active categories

| Category | Misses | Last occurrence |
|---|---|---|
| Didn't check prior art (ledger count, corrected 2026-09-01) | 3 | 2026-08-14 |
| Map means Figma diagram | 3 | 2026-08-12 |
| Fidelity/completeness | 2 | 2026-08-04 |
| Routed work back to Beth instead of doing it | 2 | 2026-08-14 |
| Context discipline · never established artifact purpose | 1 | 2026-08-14 |
| Over-literalized the source (pasted artifact in, not embodied) | 1 | 2026-08-14 |
| Abductive/deductive division (§18) | 1 | 2026-08-04 |
| Evidence-strength inflation ([CS:] tagging) | 1 | 2026-08-06 |
| Verification discipline · misread own evidence | 1 | 2026-08-07 |
| Environmental discipline (§2 BITE framework) | 1 | 2026-08-12 |
| Scoreboard discipline | 1 | 2026-08-12 |
| Prototyping pipeline (§9b) | 1 | 2026-08-12 |
| Instruction-following · cherry-picked file | 1 | 2026-08-12 |
| Overwrote Beth's live edit on a shared artifact | 1 | 2026-08-13 |
| Blind-eval integrity · [CS:] tagging | 1 | 2026-08-03 |
| Effort/thoroughness | 1 | 2026-08-04 |

## Mastered categories

None yet.

## Last session — 2026-08-12

**Called shot:** none (skill not yet in place)
**Called shot result:** n/a
**Misses this session:** 6
**Catches this session:** 0
**Work:** QBR/EBR service blueprint (built in wrong medium); designed The Listening Game; wrote listening-game skill; began headmaster's office mechanism design

## Unresolved

- **Amendment 3** — headmaster's office criteria proposed in conversation, not yet written to CONDUCT-LEDGER.md. Trigger: 3rd repeat in a named category (already met for "map means Figma"). Output: rule-writing event → CLAUDE.md Amendment.
- **Headmaster's office skill** — proposed, not yet built.
- **Win condition weight** — Beth defines what a confirmed Catch unlocks beyond the reflection mechanic.

## Session close checklist

Run `game-close` skill before ending any session. It will:
1. Prompt for this session's Catches and Misses if not already logged
2. Update score
3. Update hot categories
4. Write last session block
5. Note anything unresolved
