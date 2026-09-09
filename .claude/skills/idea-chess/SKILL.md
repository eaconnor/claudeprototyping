---
name: idea-chess
description: Run an adversarial, single-voice "board position" pass against ONE specific artifact — a build, a prototype, or a strategy deck — to find where its implicit bets fail in market. Produces a scored, falsifiable position: a ground-truth check against real evidence (not the artifact's own claims about itself), a ten-tradition adversarial council pass, a ranked list of holes, a grep-verified Monte Carlo survival read with a sensitivity ranking, and an Oregon-Trail narrative of where it most likely dies. Use whenever Beth says "run idea chess," "idea chess on X," "do a round of idea chess," "stress-test this build/prototype/strategy," or asks whether something is "sound," "would survive," or "where does this die." Distinct from the /council skill: council returns un-synthesized parallel testimony from multiple voices; idea-chess is ONE continuous adversarial voice that converges to a single scored board position. If a council pass already exists for the same artifact, read and cite it as input material — do not duplicate it as parallel testimony.
---

# Idea Chess — one adversarial voice, one scored board position

**What this is not:** a fan-out of independent voices (that's `/council`). Idea Chess is a single adversarial reader building one continuous case against one artifact, the way a chess analyst annotates a losing position — move by move, converging to a verdict. If a `/council` pass already exists for this artifact, read it as raw testimony to draw on; don't re-run it as a parallel step.

**Stance:** adversarial throughout. The job is to find where the artifact's implicit bets fall in market — not to defend it, not to hedge toward "it depends." Name the real strength too (a board with no genuine strength named is just cynicism, and precedent runs always found at least one real one), but the center of gravity is attack.

**Precedent — these ARE the spec, not inspiration.** Three prior runs set the shape this skill reproduces. Read at least one in full before your first run, and cite these paths in your own output so structure doesn't drift over time:
- `briefs/idea-chess-build.md` — a codebase (ACP), ground truth = shipped code vs. spec
- `briefs/idea-chess-ebr-coworker-005-2026-08-27.md` — a prototype, ground truth = what's real in the HTML vs. what's decorative
- `prototypes/ecoverse/idea-chess-ecoverse-2026-09-09.md` — a strategy deck, ground truth = what's live in Jira/market vs. what the deck assumes about itself

---

## Before you start: pick the ground-truth source for THIS artifact type

Every prior run found the artifact was unreliable about its own current state — the deck didn't know the product had shipped, the prototype's polish implied more substance than existed, the spec's own task list was the only honest witness. **Section 0 exists specifically to correct for this.** Never build the board on the artifact's self-description alone. Go find the primary evidence:

| Artifact type | Ground truth lives in | What `[BUILT]` means here |
|---|---|---|
| A codebase / spec | `tasks.md` checklists, actual code, grep for the feature | Real code exists and is tested, not "the spec says so" |
| A prototype / HTML | The actual rendered logic vs. the visual chrome | The mechanism is real (a model scores something), not just a UI that implies one |
| A strategy / GTM deck | Jira, Confluence, SharePoint, live product/market signal | The thing described is shipped and in market, not "the deck calls it Phase 1" |

If you don't have tool access to check ground truth (no repo, no Jira, no web), say so plainly in Section 0 rather than trusting the artifact's self-report — an unverifiable ground-truth section is still worth stating as `[?]`, not silently skipped.

---

## The board — six required sections, in this order

### Header
State: **Target** (the exact artifact/path), **Stance** (adversarial, not to defend it), **Tagging legend** (`[BUILT]` / `[SPECCED]` / `[A]` assumed-unsourced / `[?]` unknown-named-gap — redefine what `[BUILT]` means for this artifact type per the table above), **Date**, **Owner**, **Grounded in** (every source file/system actually read).

### Section 0 — Ground truth
A table: layer/claim → verified state → evidence (a file path, a ticket ID, a grep result — not a vibe). End with **one bolded sentence** naming the single most important fact that reframes everything below it. This sentence is the thesis of the whole board; every precedent run led with one and it did real work (e.g. "the build has fully shipped the substrate and written zero lines of what the market was told it'd get first").

### Section 1 — Ten-tradition adversarial council pass
Run these ten lenses, in this order, every time (they're a reusable panel, not artifact-specific — precedent runs used the same ten across a codebase, a prototype, and a strategy deck):

1. **Jobs-to-Be-Done** — is the artifact solving the job the buyer actually hires for?
2. **Disruptive Innovation (Christensen)** — is this a sustaining move dressed as disruption, or entering a segment someone already owns cheaper?
3. **Service Blueprint** — does every front-stage promise have a real back-stage actor?
4. **Self-Determination Theory** — does the trust/autonomy model help or frustrate the operator it claims to serve?
5. **Value Chain (Porter)** — is value captured at the link you actually invested in, or deferred to one you didn't?
6. **Wardley Mapping** — positioned at the right evolutionary stage, or optimizing something invisible to the buyer while ceding the category story?
7. **Real Options / Lean** — was the validation budget spent on the least-uncertain thing (buying certainty where it was already cheap)?
8. **Security / Threat-model or GRC** — where does a governance promise have a gap an attacker, auditor, or bad AI action drives through?
9. **Migration-cost / Architecture debt** — does the interim shape force a painful rebuild once real usage references it?
10. **Ecosystem / Two-sided platform** — does the platform/story depend on a side (partners, coworkers, a family of features) that's currently empty?

For each lens, write: **its losing condition** (one line — what would have to be true for this lens to win), then **its single sharpest shot** at killing or pressuring one specific named bet, cited to real evidence — a ticket ID, a spec section, a transcript quote, a deck line, a grep result. Not every lens lands a kill; some only pressure. That's fine and matches precedent (not every tradition killed a bet in any prior run) — a lens that can't find real purchase should say so honestly rather than manufacture a weak attack.

**Play both sides, or this isn't chess — it's a one-way ratchet.** A real game has attack and defense, and a position can improve as well as worsen. After the attack on each required bet, before you write down `p(true)` in Section 4, go find the single strongest good-faith counter-move available in the real evidence — not an invented comfort, an actual fact already in the corpus that argues the other way (a related feature that already shipped and works, a stated principle even if not yet operationalized, a financial precedent elsewhere in the same company, a self-correction the artifact already made). State the defense, then say plainly whether it raises `p(true)`, holds it steady, or fails to move it — and why. If you skip this step, every pass will mechanically produce a smaller, scarier number than the last one, no matter what the evidence actually says, because attack-only analysis can only ever find more things to worry about. That pattern is a tell that the method broke, not that the artifact is getting worse.

### Section 2 — Holes ("what we haven't thought about")
A ranked-by-damage list of gaps the council pass didn't fully cover. Each gets a confidence tag (`[A]`/`[?]`/`[D]` directional) and names which bet(s) it compounds. These aren't new lenses — they're loose ends the ten-tradition pass surfaced but didn't fully resolve.

### Section 4 — Monte Carlo read
*(Numbered 4 by convention, following precedent — Section 3 doesn't exist in any prior run; don't invent one to fill the gap.)*

1. **Enumerate every bet as a table**: bet · state tag · `p(true)` · required (yes/no) · one-line why. Split into three groups:
   - **Required bets** — market-survival gates; feed into the product below.
   - **Non-required bets** — framing or asset bets, real but not fatal if wrong; discuss, exclude from the product.
   - **Named holes** — not clean binaries; discuss on their own terms.
2. **`p(true)` is a calibrated judgment call you state with one line of reasoning — never a formula output and never invented to look precise.** If you can't defend the number in one sentence, the number is wrong.
3. **Compute naive survival** = product of `p(true)` over required bets only. **This number must be verified with actual code** (`python3 -c "import math; print(math.prod([...]))"` or equivalent) before it appears in prose — this repo's 47% rule (CLAUDE.md §9b: never quote an unverified stat) applies here without exception. Show the verification command and its output.
4. **State plainly this is a floor-of-alarm, not a forecast** — the bets are correlated, not independent, so the true joint odds are higher than the naive product. Name which specific bets fail *together* through one shared root cause (precedent: fixing one root cause often lifts two or three bets at once).
5. **The actionable output is the sensitivity ranking, not the percentage.** Rank required bets by (damage if wrong × cheapness to test or fix) and say which to tackle first. A low percentage that isn't followed by "test this one first, it's cheap and it's the pivot" hasn't done its job.

### Section 5 — Oregon Trail
Pick **four sequential phases that fit this specific artifact** — do not force one fixed set. Precedent used `build → launch → adopt → defend` for a codebase and `align → differentiate → scale → defend` for a strategy deck already partly shipped; a prototype might warrant different names again. Narrate, phase by phase, where and how the thing most likely dies — cite the bets/holes from above at each phase. End with **one bolded sentence** naming the single most likely death point across the whole trail.

### Closing — bet table + verdict
A companion table (id, bet, state tag, p, required?, one-line losing condition) covering every bet named above, for reference. Then one italicized closing line in the voice of the board, stating its overall position in 2–3 sentences: **name the real strength and the fatal-if-true weakness, genuinely, not hedged.** "Values over rules" is this repo's closing convention (CLAUDE.md §10) — keep it if it fits the artifact; don't force the exact phrase if the board is for a context outside the Band Protocol.

---

## Rules that hold regardless of artifact type

- **Ground truth before analysis.** If you skip Section 0 and go straight to the council pass, you're grading the artifact against itself — precedent shows that's exactly how a strategy deck ends up debating a launch decision for a product that already shipped.
- **Ten lenses, always the same ten, in the same order.** They're a reusable panel precisely because they're not re-derived per artifact — that consistency is what makes boards comparable across runs.
- **Never invent a `p(true)` to look rigorous.** State the one-line reasoning; if there isn't one, the bet needs more evidence before it belongs in the table, not a number.
- **Grep/code-verify the Monte Carlo product before it's quoted anywhere** — in the board itself, in a summary, in a Slack message. An unverified stat in an idea-chess board is the exact failure this repo's 47% rule exists to catch.
- **This is a main-thread, single-voice pass**, not something to fan out across subagents — the adversarial voice needs continuity across all ten lenses to land a coherent verdict rather than ten disconnected complaints. Use `/council` first (separately) if you want independent, un-synthesized multi-voice testimony as raw material to draw on.
- **Name a real strength.** Every precedent board found one and it made the verdict more credible, not less adversarial — a board that's only attack reads as unconsidered, not sharp.

## Where the finished board goes

Follow this repo's existing pattern: strategy/prototype boards go in `prototypes/[project]/idea-chess-[project]-[date].md`; boards run mid-pipeline (e.g. as part of `vision`'s Step 6.5 stress-test) stay wherever that skill's Step 6.5 output already lands. Cross-reference the board from any handoff packet's `SOURCES.md` per §9b if it fed a decision.

## Relationship to the `vision` skill

`vision`'s Step 6.5 ("Idea Chess — stress-test the sketches") describes the Monte Carlo / Oregon Trail mechanics informally, at higher fan-out (parallel per-voice agents across many sketches at once, because vision is stress-testing several candidate offerings in one pass). **This skill is the canonical definition of the Idea Chess method.** When running `vision` Step 6.5, follow this skill's section structure for each sketch's board rather than reinventing the shape — the fan-out/model-tiering guidance in `vision` (Sonnet for per-voice passes, Opus for cross-ship synthesis) still applies on top of this skill's structure.
