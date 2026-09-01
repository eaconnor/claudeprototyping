# Claude Handoff — Continue the Game of Idea Chess

**Built:** 2026-07-16 · **For:** a fresh Claude Code thread picking this up · **Owner:** Beth

## ⚠️ ECO MODE — read this first

Beth is low on tokens/credits right now. Default to **BITE tier** (1–2 sentences) unless she explicitly asks for more (per the project's Band Protocol `CLAUDE.md` bite framework, if this thread has that file — if not, the rule still applies: shortest answer that serves the task). Concretely:
- **Don't re-run the pipeline on this material.** Scout → spec → build → critic already happened; this bundle is the *output*, not a starting point to redo. Answer from these files directly.
- **Don't spawn subagents/Task tools for simple lookups.** Read the relevant file yourself; these are all small enough to load directly.
- **Don't re-derive or re-verify stats that are already grep-verified and tagged.** Trust the `[CS:]` tags in these documents; only re-check something if Beth is about to act on a specific number and asks you to.
- **One clarifying question beats three speculative paragraphs.** If scope is ambiguous, ask, don't generate options.

## What this is

The vision skill's own instructions, the anchor synthesis brief, and the full Idea Chess adversarial stress-test corpus for the ACP offerings — everything needed to pick this work back up in a new thread without re-reading the whole project history.

## Read in this order

1. **`vision-skill.md`** — the skill instructions (method, discipline, gates). The rulebook: read research first-principles, reconcile qual vs. quant, tag claims `[CS:]`/`[A]`/`[?]`, run the Idea Chess stress-test.
2. **`vision-brief-combined.md`** — the anchor. Part 1 is the north-star synthesis (evidence base + candidate offerings A–E). Part 2 is the five-concept confirmation from stress-testing those offerings. Read Part 1 before Part 2.
3. **`idea-chess-fleet-synthesis.md`** — the connective document across all five offerings' stress-tests: survival odds and why.
4. **`idea-chess-offering-{a,b,c,d,e}.md`** + their `.assumptions.json` companions — the full per-offering adversarial stress-test, probability-weighted. JSON = machine-readable model; `.md` = the prose narrating it.
5. **`idea-chess-build.md`** + `.assumptions.json` — the same stress-test run against what's actually built (`acp-core-main-3`), not just the concept.
6. **`acp-word-sketches-tier0-2026-07-14.md`** — the original Tier 0 word-sketch pass across offerings A–E, one day before the combined brief.
7. **`acp-word-sketches-four-complete-2026-07-15.md`** — the deepest dive here. Splits offering A (QBR) into Branch A (cross-vendor) vs. Branch B (N-able-native), tests a "Defensibility Layer" concept standalone (closed — recategorized as a feature) and embedded (holds, as QBR's trust architecture), carries offering 5 (vCISO/vCIO) through a billing-mechanism counter-move. **Already shared with leadership 2026-07-15** — current state, not a draft.

## To continue the game

"Idea Chess" is the adversarial stress-test method itself, not a one-time output: name the required gates/assumptions an offering needs to survive, tag each one's confidence and probability, multiply out a survival estimate, and be honest about where the estimate is a structural point (a stack of unowned risks) rather than a precise number. Same discipline applies to any new offering or update to these five as gaps close.

**Naming note:** this method used to be called "murder board" internally — **retired**. Use "Idea Chess" only. No martial/violent framing (no "kill," "battleship," "sink the ship").

**Discipline to carry forward, non-negotiable:**
- Every claim gets a confidence tag: `[CS: VERIFIED/HIGH/MEDIUM/LOW/FABRICATION RISK/UNKNOWN]`.
- Every assumption gets `[A]` (asserted, not evidenced) or `[?]` (open question) — never presented as a finding.
- Small-n qual is directional, never projectable. Ask what quant backs a claim before treating it as settled.
- Bet sentences (`[0% — fill this in]`) stay human. Don't fill them in for Beth — surface the shape of the decision, not a decision.
- Grep-verify any stat before quoting it (the "47% rule" — a self-reported stat here was 47%, grep showed 80%; fluency doesn't know its own math).

## What's NOT in this bundle

- The live ACP build (`acp-core-main-3/`) — too large to bundle; re-clone if something needs checking against actual code.
- Confluence pages (North Star, Context File) — live, online-only, not exported here.
- The `prototype` skill the vision skill's back end calls for Tier 0 sketches — out of scope; this is the research/stress-test side, not the build side.
