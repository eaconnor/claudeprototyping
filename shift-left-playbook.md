# The Shift-Left Playbook

*How to do problem framing and user understanding in AI-first product work — without a design strategist in the room.*
*Beth Connor · v2 · 2026-08-25 (v1 2026-07-31) · companion story: [briefs/story-left-toolkit-draft-2026-07-31.md](briefs/story-left-toolkit-draft-2026-07-31.md) · living document — correct it when reality disagrees*

*v2 changes: the loop now has a **return path** (open questions route to a channel something reads —
see the new station and rule 11); the `ux.md` station is spelled out as a spec-driven-design
integration rather than named in passing (new section, **THE ux.md STATION**); two failure modes
added from August (a killed stat that came back; a count that was generated instead of computed).*

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
   │                                                                   │
   └── everything feeds back ──────────────────────────────────────────┘
   ↑
   └── OPEN QUESTIONS ──→ the channel ──→ next evidence sweep ──→ a human verdict
       (any station)      (Brain Dump)    (weekly refresh)        (Accept/Edit/Reject)
```

Not phases — files, all live at once. You re-enter anywhere. **The second loop is the one most
teams don't build**: a question raised at any station has to *leave the artifact* and land somewhere
a person will see it, or it becomes a `[?]` that ages quietly into a decision nobody made.

The stations:

| Station | What it is | The rule that makes it work |
|---|---|---|
| **Datadump** | The living evidence index (Confluence + local sources) | "If it's not linked, it's not a source." Weekly refresh; a human Accepts/Edits/Rejects every change. Nothing writes itself into truth. |
| **ux.md** | Problem framing as a repo file the build consumes — see **THE ux.md STATION** below | Three gates (problem framed? right thing? built right?) + a `confidence_regime` that tells the machine how to behave on thin evidence |
| **The channel** | One place open questions go — for us, a Teams channel the weekly sweep already reads | A question in a repo file is a question nobody is being asked. Pick a channel a *mechanism* reads, not just people; then a question posted is a question tracked. |
| **Abductive pass** | The human interpretive layer | You read the evidence and leap FIRST; the machine classifies second; divergence between your tags and its tags is a finding, not an error |
| **Idea Chess** | Adversarial stress-test of concepts | Every concept walks its required positions; name the stage it dies; probabilities are [A]-tagged guesses, useful as deltas not forecasts |
| **Council** | Five analytical traditions read the same brief | Testimony, never synthesis. Voices contradicting each other is the point — the contradiction is where the real decision lives |
| **Prototype pipeline** | Evidence → brief → critic → build → critic → handoff | Steps compress under pressure; they never drop |
| **The stories** | Human-register companions to the machine files | The story is the door; the file is the truth. If they disagree, the file wins |

## THE ux.md STATION — how framing plugs into spec-driven design

Spec-driven engineering (speckit, OpenSpec, whatever your flavour) starts at *"write the spec."*
That is one step too late. `ux.md` is the file that sits **upstream of `spec.md`** and supplies the
grounding the spec would otherwise invent.

```
[ evidence library ] → ux.md → prime → /speckit-specify → spec.md → plan.md → tasks.md
   (cross-spec)       (this)  (gather   (existing flow, unchanged)
                              + holes)
```

**Two files, on purpose:**

| | `ux.md` | `spec.md` |
|---|---|---|
| Answers | *Is the problem real? Is this the right thing?* | *What exactly are we building?* |
| Owns | Evidence, personas, tasks, open decisions, divergences | Requirements, plan, tasks |
| Changes when | New evidence lands, or a human makes a call | Scope changes |
| Who resolves an open item | A named human, routed | The spec author |
| Prevents | A confident spec built on a fabricated user need | Ambiguous implementation |

*The library is where hallucination is caught; the spec is where it hides.*

**The shape of the file.** Frontmatter the machine reads (`confidence_regime`, `built_from`,
`open_conflicts`, `parent`/`mini_docs`), then an **agent gate** — a numbered list of
non-negotiable rules an AI must follow before generating against the file — then ten sections:
problem & cast · journey · four-angle view · innovation classification · riskiest assumptions ·
**divergence log** · problem→goals→tasks→function · open decisions · confidence score · sources.
Copy the shape; fill in only what you actually know. **A spec that knows what it doesn't know is
working.**

**Six rules that make the integration real rather than aspirational:**

1. **A mini-doc is a required read before the spec generator runs**, not optional background. Its
   Gate 3 content gets cited *into* the spec's acceptance criteria. An AI re-deriving acceptance
   criteria from scratch when a verified file exists re-introduces errors that were already caught.
2. **Gate 1/2 content is advisory to the machine; Gate 3 content is binding.** An agent may read the
   framing, may flag a conflict with it, may not resolve an open decision or promote a `PROPOSED`
   tag on its own.
3. **Divergence from the canonical spec is logged, not smoothed.** Design pushing on the spec to
   make sure it delivers enough value is a permanent healthy tension, not friction to eliminate. The
   divergence log is that tension made trackable — one table, statuses as emoji so they're
   grep-checkable. **No agent picks a side.**
4. **The confidence regime governs machine behaviour.** `PROCEED` / `PROCEED-FLAGGED` /
   `PROCEED-PARTIAL` / `BLOCKED`, plus *why* (the human's explicit authorization) and *how the
   machine should behave*. Decision uncertainty → `BLOCKED`. Evidence uncertainty →
   `PROCEED-FLAGGED`. Different things.
5. **The confidence score is computed, not asserted.** Grep the tags; if `[A]`+`[?]` is over 30%,
   say so in the file rather than handing it to engineering as acceptance criteria. **Run the count
   before you write the sentence.**
6. **Open questions route out of the file** to the channel. See rule 11 below.

**Two named gaps in our own version, so you don't inherit them silently:** the shared library
directory doesn't exist yet (source registrations are *asserted in refresh documents*, not derived
from a manifest), and the **resolved-divergence → real-spec-text graduation path is unbuilt** — we
have paste-ready rule text sitting idle because nobody has defined how a settled divergence becomes
a line in the constitution. Each new one raises the cost of that gap.

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
10. **Visibility isn't evaluation.** A mechanism that surfaces a finding faster than a human would have is not the same as a mechanism that catches something evaluation wouldn't already catch. Don't credit a routing/surfacing improvement as a quality improvement — that needs an actual graduation path from "surfaced" to "fixed," and if that path doesn't exist yet, say so instead of implying the visibility alone moved a number.
11. **Open questions route to a channel, not to a file.** Every `[?]`, every open divergence, every unowned assumption gets posted where the people who could answer it will see it — for us, the Teams channel the weekly evidence sweep already reads, so a question posted is automatically catalogued, related to the briefs it touches, and put in front of a decision-maker with its evidence attached. **The format matters:** one question per post, in plain language (no framework names), with where it came from, who could answer it (a name — or "don't know who owns this," which is itself the finding), and what it blocks. **A machine never closes one.** The `[?]` flips only when there's a dated human verdict to cite, and the answer comes *back* into the file with its date and owner. Rule 9 says write it to disk the same turn you learn it; **this is rule 9 for the things you *don't* know.**

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
4. Before anything gets built, run one adversarial pass — even solo: this is Idea Chess (`briefs/idea-chess-fleet-synthesis-2026-07-14.md`) — required positions, `[A]` probabilities, naive survival as their product, write down the stage where it dies first. Then one council pass: pick three (or five) analytical lenses and write each lens's honest testimony, each with a Verdict [this lens only] and a strongest objection. No synthesis. Where Idea Chess's dies-first gate and council's crux agree, trust it — two structurally different methods landing on the same weak point is stronger evidence than either alone. Where they disagree, or either method had nowhere to ask a question that turned out to matter (a cannibalization risk, a market-segment fork, whatever it was) — that's not a finding about the idea, that's a bug in the criteria. Patch the method file, date the change, same as the ux.md rule below.
5. Build the ugly thing early — a frankenprototype with a fictional customer. Most open questions are answered better by putting a thing in front of a person than by another research cycle. Let the ugly do the asking.
6. When you learn something that changes the file, change the file *and date the change*. The file is the truth; keep it truthful.

## FAILURE MODES WE'VE ALREADY HIT (so you don't have to)

- **Recency anchoring** — the freshest interview gravity-wells the whole synthesis, and the older evidence becomes a cameo in its own story. Counter: weight by evidence quality, not arrival time.
- **Synthesis creeping into coding** — the machine asked to categorize starts editorializing. Counter: rows first (one unit of evidence, one categorization), essays never; the human reads rows.
- **Confidence rising while evidence doesn't** — the most confidently repeated claim in our corpus was the least legally tested. Certainty and evidence moving in opposite directions is a warning light, not a comfort.
- **The wrong discipline answering the question** — "we can encrypt it, don't worry" offered as an answer to a legal-rights question. Counter: name the category of the question before accepting the category of the answer.
- **Unwritten returns** — research that stayed in a chat and evaporated. Rule 9. It's rule 9 for a reason.
- **Anonymizing the label isn't anonymizing the evidence** — stripped company names from 30 pitch-deck summaries for a blind-eval test; verbatim quotes, specific dollar figures, and prose that states the outcome outright ("2022 shutdown," "fell well short of projections") let 21 of 30 be identified anyway, ending included. Counter: redact the fingerprint (the quote, the number), not just the label — and strip outcome-tense from the text entirely, not just the name from the header.
- **Self-report is the weakest check on the exact failure it's meant to catch** — asked to flag its own boundary-breaking the instant it noticed, the boundary broke before any flag did. Counter: burden of proof inverts for this category (a disputed call defaults to counting against the actor), and the actual check runs independently, not on the actor's own word. See `CONDUCT-LEDGER.md`.
- **A correction that doesn't propagate isn't a correction** — a pricing stat we checked and killed in July reappeared three weeks later in the demand justification of a dated, resourced, revenue-committed plan. Nobody re-introduced it dishonestly; the correction simply never travelled from the research register to the planning surface. **The propagation gap is the finding, not the number.** Counter: kill stats *where people will next look for them*, not only where you found them — and route corrections through the same channel as questions (rule 11), so something reads them.
- **A generated number wearing a computed number's clothes** — a confidence score was written into a file as *"counted by grep"* without the grep being run. It read as 31%; the actual count was 39% — a different verdict. The failure isn't carelessness: **a number that looks like a result is produced by the same generator as the prose around it, and there is no internal signal separating "I counted this" from "I emitted a plausible count."** Counter: an intent-level rule ("remember to check") can't catch this. **Only order-of-operations can — run the count before the section exists to retro-fit.** This is the 47% rule pointed at output rather than input, and it is the harder half.
- **A spine document can go unsynced from where it's needed** — `acp-ux.md` (the portfolio-wide tracker) existed, dated, real content, since 2026-07-30; only its child (`qbr-ebr.ux.md`) made it into a repo-integration test. The parent sat unnoticed until asked directly "what else keeps track of the big game." Counter: when moving a mini-doc anywhere, check its frontmatter `parent`/`mini_docs` links and carry the whole family, not just the piece already in hand.

---

*The tools are old — structured methods, framework thinking, evidence discipline; design has claimed to be a science since Doblin and Owen. What's new is that the systematization finally has a runtime, and that the cost of skipping it is now measured in beautifully-built wrong things. Fork this. Correct it. The left is open.*
