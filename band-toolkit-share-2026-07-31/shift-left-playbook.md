# The Shift-Left Playbook

*How to do problem framing and user understanding in AI-first product work — without a design strategist in the room.*
*Beth Connor · v1 · 2026-07-31 · companion story: [briefs/story-left-toolkit-draft-2026-07-31.md](briefs/story-left-toolkit-draft-2026-07-31.md) · living document — correct it when reality disagrees*

---

## WHY THIS EXISTS (read this even if you skip everything else)

AI changed the failure mode. It used to be that building the wrong thing was *slow*, so you had time to notice. Now the machine generates plausible-looking product faster than anyone can check whether it's aimed at a real problem — and plausible-and-wrong is invisible from inside the artifact. Three receipts from our own July:

- A brand color shipped **wrong for months** because a confident-looking token block reads exactly like a verified one. Nobody could tell by looking.
- A "2.5× more profitable" stat everyone loved was a **misattribution** — it survived until someone traced it.
- Two sources "independently" agreeing on prep-hours turned out to be **one teacher and her student** — an echo wearing two hats.

Shifting left means the user understanding and the problem framing get done — and get *written down where the build can't ignore them* — before and while the machine builds. Not because process is virtuous, but because:

1. **Fluency doesn't know its own math.** Unverified claims compound at generation speed. The tags, gates, and grep-checks below are the only things standing between "sounds right" and "shipped."
2. **The expensive mistakes are framing mistakes.** Code is cheap now. Building the wrong thing beautifully is the new dominant failure. (Our QBR work flipped its core premise — *it's not about the data, it's about the meeting* — because the framing work ran before the build locked.)
3. **Evidence decays.** What was true in June is folklore by August unless something keeps it alive, dated, and linked.
4. **The judgment can't be outsourced — but everything around it can.** The machine assembles, traces, stress-tests, formats. A human decides what's real and what to bet on. This playbook is mostly about keeping those two jobs from blurring.

---

## THE LOOP (the whole method on one screen)

```
EVIDENCE ──→ FRAMING ──→ SPEC ──→ ADVERSARIAL ──→ BUILD ──→ CRITIQUE ─┐
   ↑        (yours)    (ux.md)   (idea chess/      (proto)   (critic)  │
   │                              council)                             │
   └────────────────────── everything feeds back ──────────────────────┘
```

Not phases — files, all live at once. You re-enter anywhere. The stations:

| Station | What it is | The rule that makes it work |
|---|---|---|
| **Datadump** | The living evidence index (Confluence + local sources) | "If it's not linked, it's not a source." Weekly refresh; a human Accepts/Edits/Rejects every change. Nothing writes itself into truth. |
| **ux.md** | Problem framing as a repo file the build consumes | Three gates (problem framed? right thing? built right?) + a `confidence_regime` that tells the machine how to behave on thin evidence |
| **Abductive pass** | The human interpretive layer | You read the evidence and leap FIRST; the machine classifies second; divergence between your tags and its tags is a finding, not an error |
| **Idea Chess** | Adversarial stress-test of concepts | Every concept walks its required positions; name the stage it dies; probabilities are [A]-tagged guesses, useful as deltas not forecasts |
| **Council** | Five analytical traditions read the same brief | Testimony, never synthesis. Voices contradicting each other is the point — the contradiction is where the real decision lives |
| **Prototype pipeline** | Evidence → brief → critic → build → critic → handoff | Steps compress under pressure; they never drop |
| **The stories** | Human-register companions to the machine files | The story is the door; the file is the truth. If they disagree, the file wins |

## THE EPISTEMICS (the load-bearing part — this is what you're actually adopting)

1. **Tag every factual claim.** `[CS: VERIFIED / HIGH / MEDIUM / LOW / FABRICATION RISK / UNKNOWN]` on statements; `[R]` researched / `[D]` data / `[A]` assumed / `[?]` unknown on spec claims. If >30% of a brief is [A]+[?], the brief isn't ready — say so, don't ship it quietly.
2. **The 47% rule.** Any ratio, count, or stat gets grep-verified against its source before you quote it. (Named for the day a spec self-reported 47% and the grep said 80%.)
3. **The echo check.** Two sources agreeing means nothing until you check whether one learned it from the other. Transmission is not triangulation.
4. **Kill stats visibly.** A dead number gets a ☠ and a dated note where it used to live — not silent deletion. Future readers need to see the corpse or they'll re-derive the mistake.
5. **Divergences are findings.** When two instruments disagree (survey says X, interviews say Y), name it and hold both. Never average.
6. **The bet lines stay human.** Every synthesis file has `[0% Claude — fill this in]` slots. The machine may not fill them — ever. If nobody fills them, the work stalls *safely* instead of inventing a strategy.
7. **The confidence regime.** Every brief on imperfect evidence says so in frontmatter: `PROCEED / PROCEED-FLAGGED / PROCEED-PARTIAL / BLOCKED`, plus *why* and *how the machine should behave*. Decision uncertainty (what should we build?) → BLOCKED. Evidence uncertainty (is the research thin?) → PROCEED-FLAGGED. Different things. Don't conflate.
8. **Seed data is fictional. Always.** If you wouldn't want it public, it doesn't go in a prototype.
9. **Write it to disk the same turn you learn it.** Insight that lives only in a chat transcript dies with the window. (We lost twenty research dossiers to this once. Once.)

## WHAT ONLY YOU CAN DO (when there's no design strategist around)

The machine is deductive — it pattern-matches from its corpus. It cannot make the interpretive leap from lived expertise, and when it *looks* like it's doing that, it's retrieving the statistically central answer, which is exactly the answer that didn't need a researcher. So these stay human, whoever the human is:

- **The abductive read.** Sit with the evidence excerpts *before* reading the machine's categories. Write your read down. Then compare. Where you and the machine disagree, dig — that's either your tacit knowledge working or a consensus you're departing from, and you should know which.
- **Relevance calls.** The datadump's Relevant/Review/Not-relevant column is the only thing keeping the corpus from growing without bound. Only a human prunes.
- **The bets.** Which problem is real. Which concept to back. What the goal unit is. These route to a person, in writing, by name internally — generalized to "a product call / a team call" in anything shared.
- **The room.** Interviews, counsel sessions, the meeting where the prototype gets challenged. The kit preps the asker; it never replaces the asking.

## HOW TO START (a designer, PM, or engineer, day one)

1. Pick the problem you're already assigned. Don't invent a pilot.
2. Make a `ux.md` for it — copy the shape from `briefs/context/qbr-ebr.ux.md` (gates, tags, confidence regime, sources, open decisions). Fill in only what you actually know. Let it be mostly [?] — a spec that knows what it doesn't know is *working*.
3. Start the evidence index: every source linked, dated, tagged. Rule 1 applies from the first entry.
4. Before anything gets built, run one adversarial pass — even solo: walk the concept through the stages where it could die, and write down the stage where it dies first. Then one council pass: pick three analytical lenses and write each lens's honest testimony. No synthesis.
5. Build the ugly thing early — a frankenprototype with a fictional customer. Most open questions are answered better by putting a thing in front of a person than by another research cycle. Let the ugly do the asking.
6. When you learn something that changes the file, change the file *and date the change*. The file is the truth; keep it truthful.

## FAILURE MODES WE'VE ALREADY HIT (so you don't have to)

- **Recency anchoring** — the freshest interview gravity-wells the whole synthesis, and the older evidence becomes a cameo in its own story. Counter: weight by evidence quality, not arrival time.
- **Synthesis creeping into coding** — the machine asked to categorize starts editorializing. Counter: rows first (one unit of evidence, one categorization), essays never; the human reads rows.
- **Confidence rising while evidence doesn't** — the most confidently repeated claim in our corpus was the least legally tested. Certainty and evidence moving in opposite directions is a warning light, not a comfort.
- **The wrong discipline answering the question** — "we can encrypt it, don't worry" offered as an answer to a legal-rights question. Counter: name the category of the question before accepting the category of the answer.
- **Unwritten returns** — research that stayed in a chat and evaporated. Rule 9. It's rule 9 for a reason.

---

*The tools are old — structured methods, framework thinking, evidence discipline; design has claimed to be a science since Doblin and Owen. What's new is that the systematization finally has a runtime, and that the cost of skipping it is now measured in beautifully-built wrong things. Fork this. Correct it. The left is open.*
