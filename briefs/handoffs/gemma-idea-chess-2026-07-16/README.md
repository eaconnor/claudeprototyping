# Gemma/Ollama Bundle — Continue the Game of Idea Chess

**Built:** 2026-07-16 · **For:** running this offline, outside Claude, with a local model (Ollama/Gemma) · **Owner:** Beth

## What this is

A self-contained handoff: the vision skill's own instructions, the anchor brief that led to it, and the full Idea Chess adversarial stress-test corpus for the ACP offerings. Everything a fresh model session needs to pick this work back up without Claude, Confluence, or the live repo.

## Read in this order

1. **`vision-skill.md`** — the actual skill instructions (method, discipline, gates). This is the rulebook: how to read research first-principles, reconcile qual vs. quant, tag claims `[CS:]`/`[A]`/`[?]`, and run the Idea Chess stress-test itself.
2. **`vision-brief-combined.md`** — the anchor. Part 1 is the north-star synthesis (the evidence base + candidate offerings A–E). Part 2 is the five-concept confirmation that came out of stress-testing those offerings. Read Part 1 before Part 2 — Part 2 assumes Part 1's findings.
3. **`idea-chess-fleet-synthesis.md`** — the connective document across all five offerings' stress-tests: what each one's odds of survival are and why.
4. **`idea-chess-offering-{a,b,c,d,e}.md`** + their `.assumptions.json` companions — the full per-offering adversarial stress-test ("Idea Chess": every required gate/assumption named, tagged `[A]`/`[?]`/`[CS:]`, probability-weighted). The JSON files are the machine-readable assumption models the `.md` prose narrates.
5. **`idea-chess-build.md`** + `.assumptions.json` — the same stress-test run against what's actually built (`acp-core-main-3`), not just the offering concept.
6. **`acp-word-sketches-tier0-2026-07-14.md`** — the original Tier 0 word-sketch pass across all offerings A–E, one day before the combined brief's Part 1.
7. **`acp-word-sketches-four-complete-2026-07-15.md`** — the deepest dive in this bundle. Splits offering A (QBR) into Branch A (cross-vendor) vs. Branch B (N-able-native), tests a "Defensibility Layer" concept standalone (closed — recategorized as a feature) and embedded (holds, as QBR's trust architecture), and carries offering 5 (vCISO/vCIO) through a billing-mechanism counter-move. Ends with its own Idea Chess survival table. **This was already shared with leadership on 2026-07-15** — treat it as the most current state of these two threads, not a draft.

## To continue the game

"Idea Chess" is the adversarial stress-test method itself, not a one-time output: name the required gates/assumptions an offering needs to survive, tag each one's confidence and probability, multiply out a survival estimate, and be honest about where the estimate is a structural point (a stack of unowned risks) rather than a precise number. `vision-skill.md` §"clash report" and the five offering files show the pattern in practice — same discipline applies to any new offering or any update to these five as gaps close.

**Naming note:** this method used to be called "murder board" internally — **retired**. Use "Idea Chess" only, in every new artifact. No martial/violent framing (no "kill," "battleship," "sink the ship").

**Discipline to carry forward, non-negotiable:**
- Every claim gets a confidence tag: `[CS: VERIFIED/HIGH/MEDIUM/LOW/FABRICATION RISK/UNKNOWN]`.
- Every assumption gets `[A]` (asserted, not evidenced) or `[?]` (open question) — never presented as a finding.
- Small-n qual is directional, never projectable. Always ask what quant backs a claim before treating it as settled.
- Bet sentences (`[0% — fill this in]`) stay human. Don't fill them in on Beth's behalf — surface the shape of the decision, not a decision.
- Grep-verify any stat before quoting it (the "47% rule" — a self-reported stat here was 47%, grep showed 80%; fluency doesn't know its own math).

## What's NOT in this bundle

- The live ACP build (`acp-core-main-3/`) — too large to bundle; re-clone if the local model needs to check something against actual code.
- Confluence pages (North Star, Context File) — live, online-only, not exported here.
- The `prototype` skill that the vision skill's back end calls for Tier 0 sketches — out of scope for this bundle; this is the research/stress-test side, not the build side.
