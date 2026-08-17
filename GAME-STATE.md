# GAME-STATE.md — The Listening Game

Updated at the close of each session by the `game-close` skill. Read at session open by the `listening-game` skill.

---

## Current score

Claude · 0 Catches / 22 Misses / 1 unconfirmed tell
Beth · 2 Catches / 0 Misses

> **Count reconciled 2026-08-14.** This file read 14 Misses while CONDUCT-LEDGER.md read 19 — a standing discrepancy noted but never resolved. The ledger is the primary record, so the ledger's count wins: 19 at session open, +2 this session = **21**. The per-category table below still under-counts relative to the ledger (the 2026-08-12 session logged four Misses in the "didn't check prior art" class that this table recorded as one). Flagged, not silently smoothed — a `game-close` run should rebuild this table from the ledger rather than incrementing it.

## Hot categories (2+ Misses)

- **Map means Figma diagram** — 3 Misses (2026-08-04, 2026-08-12 ×2). Third strike already logged. Headmaster's office condition met.
- **Didn't check prior art / build-or-fix before reading her artifact** — 2+ Misses in this table, **5 in the ledger** (2026-08-12 ×4, 2026-08-14). Headmaster's office condition met on the ledger count. This is now the largest category in the game.
- **Routed work back to Beth instead of doing it** — 2 Misses (2026-08-12, 2026-08-14). Second strike.
- **Fidelity/completeness** — 2 Misses (2026-08-04 ×2)

## All active categories

| Category | Misses | Last occurrence |
|---|---|---|
| Didn't check prior art (ledger count; 5 incl. 2026-08-12 ×4) | 5 | 2026-08-14 |
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
