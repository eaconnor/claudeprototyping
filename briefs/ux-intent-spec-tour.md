# The UX Intent Spec — a tour for someone who's never seen it

## What this is

Markdown files that live in the code repo, and a script that checks them. The files hold
what we know about the people we are building for — the problem, the evidence under it, the
direction, and the criteria the build will be held to. The script refuses to let a document
claim more than its evidence supports.

No new tool, no platform, nothing to log into. Files in a repo and a shell script.

## Where this comes from

As of September 2026 this is named practice. Microsoft and Thoughtworks call it spec-driven
development. Nielsen Norman Group calls it context architecture, and puts two files in the
repo — `ux.md` and `design.md`. AWS, Addy Osmani at Google, and the preprint literature
reach the same shape from different directions: once AI writes part of your product, the
documents feeding it stop being paperwork and become the instructions.

We are rowing that direction on purpose.

And the gap every one of them leaves: they describe what belongs in the files. **None says
how you stop a document claiming more than its evidence supports.** That is the only thing
this adds — and it is the failure that reaches customers.

> The common failure is not too little research. It is sound research that was never linked
> to the claim resting on it.

## What each function gets from it

| | today | with this |
|---|---|---|
| **Product** | the problem gets re-argued every sprint, from memory | the problem is written down once with its sources attached, and changing it is a visible edit |
| **Design** | criteria arrive late, or as a review comment after the build | the criteria you will be measured against exist before anything is generated, accessibility and design-system conformance included |
| **Engineering** | "is this requirement real or did someone guess?" is unanswerable | every requirement resolves to one canonical table, and the ones resting on a guess say so |
| **Research** | findings are sound, cited by nobody, and a re-grade changes nothing outside the research repo | findings become load-bearing on work research does not own — and lowering a confidence immediately makes every document resting on it fail |

Two things hold that together, and they are worth stating plainly because they are what makes
it safe to adopt:

**Nothing is copied.** A document points at a finding; the evidence stays where research
maintains it.

**The script computes the ceiling. Only the researcher of record sets the grade.** The
arithmetic comes from how the evidence was gathered — what people were seen doing can reach
HIGH, what they said about themselves caps lower, a stand-in population caps lower again.
Every `confidence:` field in `findings.yaml` is blank and marked `# ← yours`. Agents are
barred from filling one in by the project constitution, not by convention.

## The incident that made this necessary rather than nice

Seven AI agents were pointed at a spec folder and asked about the users. All seven derived
the personas from an enum in the code. Every answer was fluent and every answer was
invented. The summary above them then reported that the project had no user research.

Interviews, a survey and a living research page all existed. Nobody was careless. The
evidence was unreachable from the repo, and unreachable reads exactly like absent.

## What it does today, and what it doesn't

| does now | doesn't yet |
|---|---|
| Fails a build when a claim exceeds its evidence ceiling | Run your `validate_findings.py` — the two checks are separate and only mine is wired here |
| Reads your schema unchanged: `claim_type`, `population_fidelity`, `claim_scope`, per-instrument `n`, `review_by`, `fieldwork_date` | Implement G14–G18 |
| Stops a user need being silently dropped between problem, direction and build | Notify anyone — it prints to a terminal and returns exit code 1. Nothing is routed to a PR, a dashboard or chat |
| Lets unfinished work live in the repo, as long as it says it's unfinished | Handle `contradicts` or `superseded_by` — both are on your requested-changes list and two things here are blocked on them |
| Treats two sourced sources disagreeing as a legal state that caps claims rather than blocking work | Touch the real research repo. The 15 findings are mine, written in your schema as a conformance test of it |
| Refuses to accept a placeholder owner as a person | Have anyone's agreement. Every requirement row sits under a not-ratified banner |

---

## Why this exists

Products fail in three different ways, and each one is caught by a different person:

| the failure | who notices | who can't |
|---|---|---|
| We solved the wrong problem | research | engineering — the code was correct |
| Right problem, wrong thing | strategy / design | research — the evidence was fine |
| Right thing, built badly | design / eng | product — the plan was fine |

Nobody sees all three. The first two are the same act — reading the evidence and saying
what it means — so they share a file. The third is a different act, so it gets its own.

```
        ux.md                        design.md
right problem · right thing   →     right build
  the need, and the bet             the behaviour
```

Two files, three gates. `ux.md` answers Gate 1 (do we understand the problem) and Gate 2
(are we making the right thing), because both are interpretations of the same evidence by
the same author — the need and the bet belong next to each other. `design.md` answers
Gate 3, which is a genuinely different question: not *what should exist* but *is this one
built right*.

`ux.md` is mandatory. `design.md` is not, and a project can legitimately say "we have no
Gate 3 yet" — but it has to *say* it. Silence isn't allowed.

**The cost of merging, named up front:** a need and a bet in one file is exactly where a
business case in user-need clothing hides best. "Users need a unified dashboard" is a
solution wearing a need's grammar. The two gate rubrics stay separate sections for that
reason, and the tell is mechanical — a real need has a population, a falsifier, and
provenance pointing at a finding. A business case has none of those and cites the Intent
Spec's own §1 or §2 instead.

---

## How this relates to the Intent Spec

**It is not a second spec.** The Intent Spec stays the contract. The gate files hold the
reasoning that produced it.

| | holds | signed? |
|---|---|---|
| **Intent Spec** | the conclusion. What we are building, why the business wants it, what must be true to ship | **yes** — §17 |
| **`ux.md` / `design.md`** | how we got there. Do we understand the human problem · is this the right thing · is it built right | **no** — provisional on purpose |

### Why in the repo, and not Confluence

Four reasons, in order of how much they matter:

1. **The agent reads the repo.** It does not read Confluence. That is the entire seven-agent
   incident — the research existed and was unreachable from where the work was happening.
2. **A check can run on it.** You cannot fail a build on a wiki page. The exit code is the
   integration surface, and it is what lets this be enforced rather than encouraged.
3. **It versions with the code.** A change to what we believe about the user and the change
   to the code implementing it land in the same diff, reviewable together. In Confluence
   those two facts drift apart silently and nobody can date the divergence.
4. **It travels.** Hand the folder to someone else, or to a new session, and the context
   comes with it. A link doesn't survive a handoff; a file does.

Confluence is still the right home for the research itself — the datadump, the studies, the
synthesis. What goes in the repo is the *claim* and a pointer back. Nothing is copied.

### Why separate documents, and not §21 of the Intent Spec

This was the first thing tried, and it fails on signature state.

- **A contract asserts; reasoning hedges.** The Intent Spec is signed, which means its
  contents are claims someone stands behind. A provisional reading of thin evidence cannot
  live inside a signed document without either freezing something that should stay editable,
  or making the signature mean less than it says.
- **They change on different clocks, driven by different people.** The Intent Spec changes
  when the commitment changes. The evidence interpretation changes when the evidence changes
  — more often, and usually by someone else.
- **They fail differently, and merging hides the worse one.** A wrong conclusion in the
  Intent Spec is a bad contract: visible, arguable, fixable. A wrong *premise* invalidates
  everything derived from it and looks like nothing at all. Keeping the premise in its own
  document is what makes it inspectable.
- **A contract has no grammar for "this is our reading."** It can't. Asserting is its job.
  That sentence needs somewhere else to live.

**The rule: a gate file points at the Intent Spec, it never restates it.** Anything written
in both will drift, and the copy in the unsigned document wins by accident — because it is
the one being edited. So direction, non-goals, success metrics and the decision log stay in
the Intent Spec and the gate files link to them.

§5 Requirements is the single ID space. Every `UXI-##` criterion resolves to one row there,
so there is one canonical list rather than four documents each with their own.

**What the gate files add, that twenty sections of Intent Spec have no slot for.** This is
the honest test of whether they are redundant:

1. **Which claim rests on which finding.** §2 Source evidence is a source log — one row per
   document, same object as the datadump. §15 Evidence requirements is build verification —
   tests, screenshots, logs. Neither can express *this sentence rests on that finding, and
   therefore may not claim more than this.*
2. **More than one concept at a time.** §1 is a single outcome statement, contractual. Five
   candidate futures side by side have nowhere to live.
3. **A forwarding address for a dropped candidate.** §17 logs decisions taken, §12 logs
   questions open. Neither holds *this was a contender, and here is why it isn't.*
4. **The marked leap.** Nothing in §0–§20 distinguishes "this is a finding" from "this is
   our reading of a finding." That distinction is why these are separate documents and not
   a §21.

Everything else the gate files might have held is already in the Intent Spec, and belongs
there.

**And what neither was built for.** Spec Kit and the Intent Spec were written for code.
Code specs can assume the spec is correct and check the build against it. A claim about
people can't — so the question "do we actually know this about the user, and how well" has
no home in either, which is why it ends up in Confluence and Figma where nothing in the
repo can reach it. That is the gap being wired, and it is the whole idea.

---

## What each file is, and who fills it in

### `ux.md` — do we understand the problem, and is this the right thing?

**Who owns it:** whoever is closest to the user. Often research. Sometimes a designer,
sometimes a PM on a small team. The owner is a named person, not a function.

**The one invariant:** whoever owns it, there is *always* a separate research check.
`owner:` and `research_check:` are two different fields precisely so a team of one can't
quietly mark its own homework — it has to write down that it did.

**Humans get** two halves that used to be two files.

*The need* — a problem statement, the cast of people affected, an evidence log, and the
acceptance criteria. Product stops re-litigating the problem every sprint because it's
written down with sources attached.

*The bet* — direction, and the place where multiple concepts can coexist. Design can put
five futures side by side and everyone knows how to read them. Engineering gets concepts
early enough to spin up preliminary wireframes instead of waiting. Candidates that lost are
recorded here too, with the reason — otherwise a dropped idea just disappears and nobody
can tell whether it was rejected or forgotten.

**Bots get:** the instruction to read this *first*, before answering anything about users.
More on why that matters below.

**Why one file and not two:** both halves are the same author reading the same evidence and
saying what it means. Splitting them produced a second document that mostly restated the
Intent Spec — direction, non-goals, metrics, decision log, all duplicated with no signature
on the copy. What was genuinely its own survived the merge: the concepts, the evidence they
rest on, and the candidates that lost.

### `design.md` — are we making the thing right?

**Who owns it:** design.

**Humans get:** all the build-level criteria in one place — the UX acceptance criteria
inherited from upstream, plus accessibility, APEX conformance, the FLOOR items.

**Bots get:** the criteria they'll be checked against, before they generate anything.

---

## The tour — run it

```bash
cd ~/Library/CloudStorage/OneDrive-N-able/Bethproto/acp-core-testrepo && ./check-gates.sh
```

> **The terminal output below is transcribed verbatim from a run made before `vision.md`
> was folded into `ux.md`, so it still names three files.** It is left unedited rather than
> rewritten to match the new shape — inventing plausible output in a document about not
> overclaiming would be the wrong kind of irony. Re-run and re-paste once the fold lands.

### 1. The gate refuses to grade you on being unfinished

```
PASS — Gate 1 (right problem): ux.md (PROCEED-FLAGGED · 4 of 6 checked).
       2 criteria open and declared. Not a blocker: this document says
       it is provisional, so outputs it feeds must not be claimed as validated.
```

Two criteria are unticked and it still passes. **The gate asks "is this honest about not
being finished," not "is this finished."** Early work is allowed to live in the repo.
What's not allowed is pretending.

The inverse is also true:

```
BLOCKED — Gate 2 (right thing): vision.md declares confidence_regime: BLOCKED.
         This is the file doing its job, not failing it — it is naming a decision
         a human owes before anyone builds.
```

### 2. A user need can't be dropped without someone deciding to

```
criteria: vision.md carries all 9 UX criteria the chain requires.
criteria: design.md carries all 9 UX criteria the chain requires.
criteria: every UXI-## resolves to a row in ACP-HARNESS-INTENT-SPEC.md §5.
```

Criteria travel `ux.md → design.md`. Drop one and it fails, naming the id.
`design.md` may *add* — accessibility and APEX belong at the build stage — and additions
are owed by everything after them. Every id resolves to one canonical table in the Intent
Spec, so there's a single ID space rather than four.

### 3. No claim above what the evidence licenses

```
FAIL E-03 — asserts HIGH. partners-want-a-standalone-discoverable-surface is
     STATED_ATTITUDE / primary fidelity, which ceilings at MEDIUM.
     Repetition raises scope, not confidence — and someone
     downstream cannot see this gap from where they are standing.
```

This is the important one. Read on.

---

## Where research sits — the part that matters to research

**Research owns the evidence, and nothing here can overwrite it.**

`findings.yaml` is Beth Nam's schema, unchanged. Every finding carries `claim_type`,
`population_fidelity`, `claim_scope`, `n` per instrument, `fieldwork_date`, `review_by`.

The script reads those fields and **computes a ceiling** — `observed_behavior` can reach
HIGH, `stated_attitude` and `inferred` cap at MEDIUM, `recommended` at LOW; proxy, internal
or no population caps everything at LOW; the lowest governs.

Then it checks every interpretation made upstream against that ceiling. E-03 above asserts
HIGH on a `stated_attitude / primary` finding. The ceiling is MEDIUM. It fails.

**The line, stated plainly:**

> The script computes the ceiling. Only the researcher of record sets the grade.

All 15 `confidence:` fields in `findings.yaml` are blank, each marked `# ← yours`. The
script flags them as ungraded and carries on — it will never fill one in. Agents are
forbidden from writing, grading, or overriding a finding, and that's written into the
project constitution, not just a convention.

**What research gets out of this that it doesn't have today:**

- Findings become load-bearing. A claim that exceeds them fails a build, not a review
  comment three weeks later.
- Research's *interpretation* propagates. Criteria derived from findings travel forward
  into what engineering builds, and can't be silently dropped.
- Disagreement is a legal state. When two sourced studies conflict, that's `CONTESTED` —
  it doesn't block work, it caps what work may claim, and it requires a pointer to where
  it's being handled. Not a resolution. A pointer.
- The loop is the point, not the snapshot. Findings get re-graded and interpretations get
  updated, and the check compares the date an interpretation was inherited against the
  fieldwork date so drift is visible instead of silent.

---

## How this wires to the research repo

```
        RESEARCH SIDE                      PRODUCT SIDE
   (research owns, research grades)   (product/design own, cite only)

   Datadump · Condens · Confluence
              │  deep dives, raw material
              ▼
        findings.yaml  ◄─────── validate_findings.py
   claim_type · population_fidelity        (is this finding
   claim_scope · n · review_by              labelled honestly?)
              │
              │  rests_on:  ← a pointer. Nothing is copied.
              ▼
                  ux.md ──────────► design.md
                     │                  │
                     └──────────────────┘
                             │
                   UXI-## ids resolve to
                   Intent Spec §5 (canonical)
                             │
                             ▼
                      check-gates.sh
              (does anything claim more than
               these findings license?)
```

**Two checks, two different questions, one file.** Hers asks whether a finding is labelled
honestly. Mine asks whether anything upstream claims more than the findings license.
Neither works alone — a perfectly valid findings file with an overclaiming problem
statement still ships a lie.

**Nothing is copied across.** `rests_on:` is a pointer. The evidence stays in research's
repo, where research maintains it, and re-grading a finding changes what every document
resting on it is allowed to say.

---

## What makes it actually run, rather than being a nice document

Three legs. A rule with only two of them is a suggestion.

1. **A file that must exist** — `ux.md`, unconditional.
2. **A check that fails** — `check-gates.sh`.
3. **Something that runs the check unasked** — `.specify/extensions.yml` hooks for Spec Kit
   paths; `CLAUDE.md` for plain sessions; Principle VII in the constitution, which is read
   by 10 different entry points.

Leg 3 is the one everyone forgets, and it's why "the evidence is in the repo" isn't enough
on its own.

---

## Where does a block actually go?

**Today, honestly: standard output and an exit code.** Nothing is notified. That's the
weakest part of this and it's worth saying first, because a check nobody runs is a
suggestion with extra steps.

The exit code is the integration surface — anything that reads an exit code can gate on
this, which is most things. So the question isn't *can* we route it, it's *where should
each kind of thing go.*

**The principle worth arguing for: a block goes where the person who can clear it already
is standing.** Not wherever we can technically reach them.

| what happened | where it should go | why |
|---|---|---|
| A claim exceeds its evidence | **PR check**, annotated on the diff | The person who wrote the overclaim is already there, in the moment they can fix it. This is the natural home and it's the one to build first. |
| A decision has no owner | **Dashboard row**, plus a named person | Nobody is "already there" — that's the whole problem. This is the only case that genuinely needs a nudge out to a human. |
| A finding was re-graded or retired | **Chat** | This is the one true *event*. Research lowering a grade changes what every document resting on it may claim, and the people affected have no way to know. |
| Two sources now contradict | **Chat**, once, with the pointer to where it's handled | `CONTESTED` doesn't block. It needs a human conversation, so it should land where conversations happen. |

**Email: no.** Blocks are *state*, not events. Email turns state into a stream you learn to
ignore, and this only works if the signal stays trusted.

**Dashboard: yes, but for the aggregate, not the block.** "Which projects have unowned
decisions, and which findings are past `review_by`" is a real dashboard question. A single
block on a single PR is not — by the time you've opened a dashboard to see it, the PR
check would have told you already.

**Chat: yes, but only for the loop.** This is the bit that took me a while to see. The
blocks want to be in the PR. But the *re-grade* — research learning something new and
lowering a confidence — is the whole point of treating this as a loop rather than a
snapshot, and it's the one thing where the affected people are somewhere else entirely and
will never find out. If we build one notification, it's that one, and it belongs to
research.

**None of this is built.** Exit code 1 is real and works; every row in the table above is a
proposal. Worth knowing which one research wants first, because it changes what gets built
next.

### Options, cheapest first — you don't need CI to start

Not every team has a pipeline, a dashboard, or anyone to build a webhook. The routing
should be tiered so a team of two isn't blocked on infrastructure.

| tier | how the check runs | where the block lands | what it costs |
|---|---|---|---|
| **T0 — skinny** | someone runs `./check-gates.sh` by hand | their terminal | nothing. Works today. |
| **T1 — local** | git pre-commit hook | their terminal, before the commit lands | one file, no infrastructure, no permissions |
| **T2 — PR** | CI job on pull request | annotated on the diff | needs a pipeline; this is the one to build first if there is one |
| **T3 — routed** | CI, plus a webhook on re-grades | chat for re-grades, dashboard for the aggregate | needs someone to own the integration |

**T0 is a legitimate answer, not a failure.** The whole point of the skinny version is that
a team with a settled process shouldn't have to adopt tooling to get value. But T0 has an
obvious hole: **the check only fires when a human remembers to run it.**

So at T0 and T1, the wiring genuinely ends at a person. That has to be *recorded* rather
than assumed — which is what the kickoff now asks about (below).

### Where the wiring ends and a human carries it

Every tier has at least one of these. They are not gaps in the design; they are the points
where the design hands off, and the failure mode is that nobody wrote down who catches it.

| the handoff | who has to carry it | what happens if nobody does |
|---|---|---|
| Running the check at all (T0/T1) | a named person on the team | the check silently never runs and everyone assumes it's on |
| Setting a `confidence:` grade | the researcher of record — the script will never do it | findings stay ungraded; every claim resting on them is flagged forever and the flags stop being read |
| Clearing a `CONTESTED` row | whoever owns the conversation it points at | the dispute caps claims indefinitely and nobody notices it's still capping them |
| Declaring `evidence_basis:` | the document's author, by name | §5 has no stated basis and a reader has nothing to calibrate against |
| Naming an owner for an unowned decision | whoever runs the kickoff | the row sits — this is the one that rode five documents for thirteen days |
| Acting on a re-grade | research, telling the affected teams | interpretations quietly drift from the evidence they claim to rest on |

**The kickoff skill now asks, per handoff, who carries it and where the loop-back goes** —
including on the skinny path, which previously stopped before asking anything.

## Honest status

**Real and running:** the two gate files, regime-aware gating, criteria inheritance,
§5 resolution, the evidence-ceiling check, `CONTESTED`, `owner`/`research_check` split,
Principle VII, a 15-finding `findings.yaml` in her schema.

**Proposed, not built:** `[!]` (data exists and is the problem) versus `[?]` (no data);
auto-generating `CONTESTED` rows from inline handling pointers.

**Not wired:** `validate_findings.py` doesn't run in this repo. G14–G18 aren't implemented.
The 15 findings are mine, written in her schema as a conformance test of it — nothing has
touched the real research repo.

**Nobody has agreed any of this.** Every `UXI-##` row in §5 sits under a not-ratified
banner. The requirements are drafted from the abductive analysis as candidates.

---
