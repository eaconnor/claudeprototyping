---
name: vision
description: Review a whole body of research from first principles, reconcile qual against quant, and synthesize it into candidate PRODUCT OFFERINGS (not features) — then check the vision against what's actually been built and produce super-lo-fi vision sketches. Use when the user wants to "review all the research," "figure out what's actually happening," "synthesize this into offerings," assess a vision, or check vision-vs-build drift. The front end is a fresh research review; the back end uses the prototype skill for Tier 0 sketches. Err on the side of reading everything, including transcripts.
---

# The Vision Skill — research → offerings → build-check → sketches

**This is prototyping's older sibling.** Prototype takes ONE decided idea and makes it real. Vision comes earlier: it reads the whole pile, works out what's actually happening, and names the small number of product offerings worth betting on — *before* anyone decides what to prototype. It ends by pointing at the prototype skill, not by replacing it.

**Governing constraints (from CLAUDE.md — do not drop):**
- **Beth holds the clipboard.** The tool routes to human judgment; it does not decide the product.
- **Synthesis stays human.** Every synthesized offering ships with a `[0% Claude — fill this in]` slot. The tool clusters and tags; the human writes the bet.
- **[CS:] tags on every claim. 47% grep rule** — verify every stat before quoting.
- **Qual ≠ quant.** Small-n qual (n=8 interviews) is directional, NOT projectable. Never let a cumulative-points ranking read as a survey result. Always ask what quant triangulates a qual claim, and vice versa.
- **Err on the side of reading.** Read the transcripts. Read the whole file, not the summary. The synthesis is only as honest as the corpus it actually read.

## Model guidance — don't burn Opus on fan-out

This skill fans out heavily (Step 2 parallel readers, Step 6.5 Idea Chess adversarial passes). Fan-out work is mechanical-to-moderate judgment at high volume — the wrong place to spend Opus-tier tokens. Per CLAUDE.md §15/§16, the default model is Sonnet; escalate deliberately, don't inherit Opus by accident.

| Step | Task | Model | Why |
|---|---|---|---|
| 1 · Gather | Inventory, source-list building | Haiku | Boilerplate, lookups |
| 2 · Read fresh | Parallel reader agents (per-slice tagging, no synthesis) | **Sonnet — set explicitly** | High-volume, moderate judgment; five-plus parallel agents at Opus is the single biggest avoidable cost in this skill |
| 2.5 · Council asks human | The questions themselves | n/a (main thread) | Interaction, not compute |
| 3 · Assess qual×quant | Reconciliation table | Sonnet | Pattern-matching across sources |
| 4 · Synthesize offerings | Clustering evidence into offerings, naming the wicked problem/HMW/bet | **Opus-worthy — see escalation below** | This is the actual judgment call the skill exists to make |
| 5 · Run against build | Clash report vs. spec | Sonnet | Structured comparison |
| 6 · Sketch | Word sketches | Sonnet | Matches prototype skill's own spec/build default |
| 6.5 · Idea Chess — per-voice testimony | Each adversarial pass (the 6+ parallel ship stress-tests) | **Sonnet — set explicitly** | Same fan-out cost problem as Step 2; a dozen parallel Opus subagents running one stress-test each is expensive for what is templated adversarial reasoning |
| 6.5 · Idea Chess — cross-ship synthesis | "Why we lose," sensitivity ranking, "how to win" | **Opus-worthy** | Cross-cutting pattern-finding across all ships; the highest-judgment moment in the whole pipeline |
| 7 · Handoff/register | Registering sources, writing the changelog | Haiku/Sonnet | Mechanical |

**How to apply, concretely:**
- **When spawning subagents for Steps 2 and 6.5's per-voice passes, pass `model: "sonnet"` explicitly** in the `Agent`/`Workflow` call. Do not omit it and let them inherit the main session's model — if the main session is running Opus, an unset `model` field means every parallel reader/stress-test agent silently runs Opus too, and that's where credits actually go at this skill's scale.
- **For Step 4 (offering synthesis) and the Step 6.5 cross-ship synthesis**, these are exactly the "Brief-level decisions (what are we building?)" and cross-source judgment calls CLAUDE.md §16 already flags for escalation. If the main session is on Sonnet or Haiku when you reach these steps, stop and emit the existing Band Protocol signal:
  ```
  [OPUS SIGNAL] — synthesizing offerings / cross-ship Idea Chess pattern requires real judgment across many sources. Type /model opusplan before continuing.
  ```
  A skill cannot invoke `/model opusplan` itself — it's a session-level command only the human can type. The signal-and-stop is the mechanism; do not silently push through a judgment-heavy step on a lighter model just to avoid the interruption, and do not escalate reflexively either — most of this skill's steps are correctly Sonnet/Haiku, and running the *whole* pipeline on Opus by default is the failure mode this section exists to prevent.
- **`opusplan` itself is the right shape for this skill**: Opus plans (Steps 0, 4, the 6.5 synthesis), Sonnet executes (Steps 1, 2, 3, 5, 6, the 6.5 fan-out, 7). If the human is already in `opusplan` mode, the model-per-step table above still tells you when to spawn subagents with an explicit `model:` override vs. leaving them to inherit.

---

## Step 0 — Frame (ask, don't assume)

Two questions before reading:
1. **What's the corpus?** All ACP research? A subset? Confirm the boundary. Default: everything reachable — local files, Confluence (spaces AI, ProdUX, ADL, PUT), SharePoint, Jira.
2. **What build do we check against?** Name the artifact (e.g. `acp-core-main-3` — the latest downloaded spec/code). If none, skip Step 5.

Then state the plan and go. Do not over-question — this skill is for people who already said "review all of it."

## Step 1 — Gather (inventory the whole pile)

**Source scope (default):** read everything linked from the two index pages — the **Datadump** (AI space, 62175674556) and the **Synthesis-briefs shelf** (AI space, 62175248711). Those two pages are the source of truth for what counts as evidence. Read the sources they link (primary, quant, Condens, secondary). Do **NOT** wander into Jira tickets, PM build-timelines, or unlinked local drafts unless the human names them — the index pages already dispositioned those as "not relevant." If a source is not linked from one of the two pages, it is not a source.

Inventory before reading. List every source and where it lives. Name what you will NOT read and why (out of scope), so silence never reads as coverage.

- **Local:** `scout_input/`, `briefs/`, root docs (`*.md`, `*.pdf`, `*.docx`, `*.json`, `*.csv`), the build dir.
- **Confluence:** the datadump index, North Star, Context File, Use Cases, the survey pages.
- **SharePoint:** Guidepoint transcripts, Condens studies, survey exports, the Brain Dump.
- **Jira:** the FSN/ACP tickets the build traces to.

## Step 2 — Read fresh (parallel fan-out)

**Fan out reader agents over slices of the corpus.** Each reader:
- Reads its slice **fully** (err toward reading, not skimming). Transcripts get read, not summarized-from-summary.
- Returns **tagged findings, NOT synthesis**: bullet claims, each tagged `[QUANT n=X]` / `[QUAL n=X directional]` / `[CS: …]` / `[BUILT]` / `[SPECCED]` / `[ASSUMED]`.
- **Reads first-principles** — as if for the first time. Actively flags where a finding *contradicts the current synthesis*, where a conclusion is over-read, and what is surprising.
- Surfaces verbatim quotes where they carry signal (transcripts are for inspiration, not just counts).

Canonical slices: (a) the build/specs · (b) raw research inputs (scout, pain points, completed studies) · (c) already-made synthesis docs — *to challenge, not inherit* · (d) the authored vision + strategy · (e) transcripts + quant data (surveys, Pendo, findings JSON).

The orchestrator (main thread) pulls Confluence/SharePoint content that subagents can't reach and hands it in, or reads it directly.

## Step 2.5 — Council asks the human (interactive — do not skip)

**The council does not wait for the sketch. While the vision is still forming, it puts its hardest questions to the human — and blocks on the answers.** These are the forks the tool cannot resolve from evidence: which wicked problem to anchor, which superpower to bet on, which offering leads, where the vision and the build disagree. Ask them with the homework done — each option cites its evidence — so the human is *choosing*, not brainstorming. Use `AskUserQuestion`. Fold the answers into Steps 4–6 before finalizing anything.

This is the "council can ask me questions while vision is being created" contract: the human is in the loop *during* synthesis, not just at the end.

## Step 3 — Assess qual × quant (reconcile, don't average)

Build one cross-study table. For each candidate theme, put quant next to qual:
- Where do they **agree**? (highest-confidence bets)
- Where do they **diverge**? (the divergence IS a finding — e.g. quant-priority-high / qual-thin, or high-enthusiasm / low-rank). Name it; do not resolve by averaging.
- What is **projectable** (quant, adequate n) vs **directional** (small-n qual)?
- What has **no triangulation** at all? (a research gap, tagged `[?]`)

The 25% who see no value count. A read that only speaks to the enthusiasts overstates readiness.

## Step 4 — Synthesize product offerings (human owns the sentence)

Cluster the reconciled findings into a **small number of candidate PRODUCT OFFERINGS** — not features, not screens. An offering is a thing an MSP could buy and a thing the org could sell. Each carries:

```
OFFERING: [name]
  Wicked problem: [the thing the INDUSTRY hasn't solved — required. If there's no wicked/unsolved problem, it's not an offering, it's a feature. Cite who says it's unsolved.]
  How Might We (Jon Kolko format): [one HMW — human-centered, embraces the tension, optimistic, specific-but-not-narrow. Draft it; the human edits.]
  Value prop: [one line — who it's for, what job, what changes]
  The bet: [0% Claude — fill this in]   ← human writes this
  Evidence: [quant signal] · [qual signal] · strength = strong / mixed / thin

  WHY IT MAKES MONEY (cite every claim):
    Market / WTP: [demand evidence, named WTP, displacement window — cited, tagged [CS:]]
    Precedent: [comparable pricing model that already works in market — n8n / Shopify / Zendesk / Salesforce / etc.]
  WHY IT'S GOOD FOR N-ABLE:
    Superpower leveraged: [which n-able secret superpower this offering is built on — cite the evidence for the superpower]
    Strategic fit: [why n-able specifically wins here — or "[?] can't check: strategy doc is a placeholder"]
  SHIPPING-SPEED METRIC: [how we know n-able can ship this fast — a real metric (Apex adoption, spec-driven pipeline, builder time) or "[?] not instrumented"]
  UNIQUE / NEEDED IN MARKET: [what we'd do that nobody else does — cite the gap]
  PARTNER / PARTNER-TYPE: [who extends or distributes this — PSA vendor, cyber-insurer, marketplace Expert vendor, etc.]

  Riskiest assumption: [the belief that, if wrong, kills it]
  Bundles: [which coworkers / mechanics compose it]
  Business model: [how it's priced — or "Unknown: gap"]
```

Offerings may bundle several coworkers, or split one coworker across two offerings. The clustering is where the intellectual work is — do not just re-list the coworkers. Name the evidence asymmetry on any offering that leans on quant-priority with thin qual (or vice versa).

**Every offering must clear the wicked-problem bar.** Prototypes exist to attack a problem the industry hasn't solved. If the best you can say is "faster / nicer," that's a feature — bundle it into an offering that has a real wicked problem, or cut it. The business case is not optional decoration: an offering with no cited money story and no named superpower is a research question, not an offering.

## Step 5 — Run against the build (vision ↔ spec clash)

Read the build's Intent Specs + specs + constitution. Produce a **clash report** (the North Star's Vision Clash Report format):

| Finding | Kind | Where | Status | Owner call |

Kinds: **Vision↔spec conflict** (vision leads with X, build ships Y) · **Backed-into decision** (build picked one of N researched options without ratification) · **Coverage gap** (offering has no spec) · **Naming drift** (spec term ≠ vision term). Route each to a decision-owner. Do not resolve — surface.

## Step 6 — Sketch (word sketches; hand fidelity up to the prototype skill)

Produce **lots of Tier 0 word sketches** — text, fast, many. A word sketch is a card, not a screen. HTML/boxes are optional; the words are the point. Sketches carry evidence tags visibly so quant-priority is never laundered into feature certainty. Hand off to the prototype skill only when a sketch graduates to a visual.

**Canonical word-sketch anatomy (locked):**
1. **Problem statement** — and name the *wicked bit*: what has the **industry** not solved? Every sketch needs one; if the best you have is "faster/nicer," it's a feature, not a sketch.
2. **Tension** (Jon Kolko) — *"[Users] are trying to X, but Y is getting in the way."* + evidence or an assumption-trace to test.
3. **How Might We** (Kolko).
4. **Value prop** (Geoffrey Moore) — *"For [target customer] who [need], [product] is a [category] that [key benefit]. Unlike [alternative], we [differentiation]."* The "unlike" carries unique-in-market.
5. **TAM — only when it makes sense.** Include it where there's a real market to size (offering-level). Skip it for mechanism / feature / governance / pricing sketches — reference the parent offering's TAM, or leave it out. **Never invent a TAM to fill the field.** An unsized white space is `[?]`, not a fabricated number.
6. **Necessary functionality** — the 3–5 things it must do (the MVP spine).
7. **Evidence + [CS:] tags** — what backs it, tagged; strength = strong / mixed / thin. **Non-negotiable** — a sketch with no evidence is an assertion, not a bet.
8. **Riskiest assumption / refuting evidence** — the one belief that, if wrong, ends it. This is what makes it a bet.
9. **N-able superpower it rides** — the unfair advantage (SOC data, first-party telemetry, DSE, Apex speed). The "why us."
10. **The bet** — `[0% Claude — fill this in]`. The synthesis sentence stays human.

**Bet layer (optional — pull in only when a sketch earns a real business case):** business model + WTP (TAM is the *size*; the model is the *mechanism* — different things), partner type, shipping-speed metric, success metric + counter-metric.

Fields 1–4, 7–10 apply to *any* sketch (offering, feature, mechanism, pricing model). Moore-value-prop + TAM are cleanest at the offering level; adapt for mechanism/pricing sketches rather than forcing them.

## Step 6.5 — Idea Chess (stress-test the sketches — before market, not in it)

**Idea Chess is the only name — use it consistently, in every artifact.** No martial/violent framing (retired: "murder board," "kill criterion," "battleship day," "sink the ship"). The vocabulary is chess and games: positions, moves, openings, checkmate, win-rate.

Once sketches exist, try to **challenge** them. The synthesist's move: don't defend the idea, find where the position weakens. This is a gamified stress test — every analytical tradition makes a move against the idea; a required assumption failing is **checkmate**; the Monte Carlo is playing the game out 10,000 times; the survival % is the idea's win-rate against the board. Far cheaper here than in the market. An idea that holds *with its refuting moves named* is worth ten that were never played.

Four composable mechanics — run the relevant ones per sketch:

1. **Council as the opposing side.** Run the 44-voice council (or the most relevant cluster) in *adversarial* mode: every voice states its **refuting evidence** — what would prove the idea wrong — and tries to make that case, not affirm. Adversarial-verify each surviving claim: spawn N skeptics prompted to refute; majority-refute means the position doesn't hold. Contradictions are findings, not noise.

2. **Monte Carlo (how often the position holds, and what breaks it most).** Every sketch is a chain of assumptions, each carrying a likelihood (pull from the Vision Risk Register — the numbers already exist). Model survival as a function of those assumptions, sample across N runs, read two outputs: **P(survives)** and the **sensitivity ranking** — which single assumption fails in the most losing runs. *That ranking is the research priority: test the assumption that breaks the most scenarios first.* Naive floor = multiply the independent required probabilities; the real sim adds partial-survival states and correlations. Report the survival % **with** the independence caveat — a false-precision number is its own hole.

3. **Oregon Trail (where on the path it falls).** Sequence the obstacles in the order they hit on the way to market — build → launch → adopt → defend (competitor ships · P0 study fails · buyer won't pay · Microsoft bundles · moat doesn't hold). Traverse; mark the stage the wagon falls. Same probabilities as the Monte Carlo, but *sequenced*, so you see the failure point, not just the odds.

4. **Tree-test (does the buyer's path reach "yes").** Borrow IA tree-testing: give the buyer a task ("would you buy this / build it yourself / switch to it?") and walk the decision tree of objections. A dead-end in the path is a design hole.

**Output per sketch:** a survival % (caveated), the stage it falls, and a **sensitivity-ranked list that *is* the test plan.** Feed it into Step 7 as `[?]` studies with owners. Idea Chess turns a pile of assumptions into a prioritized experiment queue — which is the whole point of doing it before market.

## Step 7 — Handoff (and register what you found)

Ship a Claude-droppable packet + update the North Star page: the reconciled qual×quant table, the offerings (with the human's bet filled or slot-open), the clash report, and the named research gaps as `[?]` studies with owners. 47% grep-verify every stat first.

**Register new material back to the index — do not let it die in a local brief:**
- **New research SOURCES** discovered during the run (e.g. TAM/market data, a new study, a competitor doc) → add to the **ACP Research Datadump** (AI space, 62175674556), under Research / secondary, each as a **live link with provenance + [CS:] tag**. Rule: *if it's not linked, it's not a source.* An unlinked local draft goes under "coverage gaps," not counted as a source, until it's uploaded and citable.
- **New SYNTHESIS artifacts** produced by the run (offerings doc, reconciliation, this synthesis) → add to the **ACP Synthesis-briefs shelf** (AI space, 62175248711), each carrying its *"built from these sources →"* block of live links. Synthesis goes STALE when a cited source moves — the `refresh-datadump` ritual watches it.

A vision run that finds new evidence but leaves it only on the local disk has failed its last step. The corpus is the product too.

---

## What this skill refuses to do
- Average qual and quant into one number.
- Fill the synthesis sentence for the human.
- Present a small-n qual ranking as a survey result.
- Report coverage it didn't actually read — silence about a source is a gap, stated.

*Vision names the bet. Prototype builds it. The human owns both. Values over rules, always.*
