# Authoring the three files

Beth Connor · 2026-09-22 · the missing half. Everything built so far *checks* these files.
Nothing said how to make one.

**The one thing to hold on to:** each file authors a claim that does not exist in the
evidence. Findings record what happened. A need, a concept, a behaviour — each is a new
statement about what should be true for one product, and somebody has to make it. That act
is the authoring step. It is not evidence, it rests on evidence, and it can never be graded
above what it rests on.

The methods below already exist and already do this. What's missing is that **their outputs
have nowhere to land** — so the evidence they pull in and the falsifiers they produce
evaporate when the session ends.

---

## `ux.md` — authors THE NEED

> "Given this evidence, here is the problem, and whose it is."

**Owner:** whoever is closest to the user. Often research, sometimes a designer or a PM.
A named person, with a separate `research_check:` even when that's the same person twice.

**How you make it**

| step | method | what it gives you |
|---|---|---|
| 1 | `scout` | the secondary dive. Sourced dossiers, `[CS:]`-tagged. **Write them to disk in the same turn** — a dossier left in the transcript dies with the context window. |
| 2 | `abductive-tag` | **this is the authoring step, already formalised.** You abduct first — your colour, your reading. Claude classifies deductively second. Never the reverse. |
| 3 | `journey-map` | the cast and the moments. Experience map for the outside view, service blueprint for the seams. |
| 4 | write the need | in your words, from your abductive pass. Every claim carries a tag. Most will be `[A]` on day one — that's the finding, not a failure. |

**What it emits into the evidence layer**

- Any scout dossier something will *lean on* gets promoted to a `findings.yaml` row.
  Demand-driven — if nothing cites it, it doesn't need a row.
- `abductive-tag`'s **divergence column** — where your read and Claude's differ — is the
  single best source of `invalidates_if`. That gap marks where the tacit knowledge is
  carrying the most load, which is exactly what's most worth testing.

**Done looks like:** a problem statement you'd defend out loud, a cast with the gaps named
as `[?]` rather than smoothed, and an `## Evidence` block — *even if it says "no findings
back this yet."* Absent can't be told from unchecked.

---

## `vision.md` — authors THE CONCEPTS

> "Given this evidence, here is what would be valuable."

**Owner:** strategy. Often the same person as `ux.md`; still written down.

**How you make it**

| step | method | what it gives you |
|---|---|---|
| 1 | `vision` skill | reads the whole pile, reconciles qual against quant, names the few **offerings** worth betting on. Ends in Tier 0 sketches. |
| 2 | `council` | five frameworks, parallel, **un-synthesised**. Voices contradict — that's the point, and it's where multi-concept comes from. |
| 3 | `idea-chess` | one adversarial voice, converging to a scored board position. Ranked holes, a survival read, and where it most likely dies. |
| 4 | write the bet | the `vision` skill already ships every offering with a `[0% Claude — fill this in]` slot. **That slot is the authoring step.** The tool clusters and tags; you write the bet. |

**What it emits into the evidence layer**

- **`idea-chess` output *is* `invalidates_if`.** Its ranked holes and its "where this dies"
  read are falsifiers, written adversarially, which is the hardest way and the right one.
  Its ground-truth check — explicitly *"against real evidence, not the artifact's own claims
  about itself"* — is an evidence-ceiling check done by hand.
- `council`'s contradictions, where two frameworks disagree on the same evidence, are
  `CONTESTED` candidates.
- Concepts rest mostly on **secondary** findings, and that is correct. A converged desk-research
  pattern is real evidence for *the shape of a space*.

**The rule that matters here:** `claim_scope` is `existence` or `pattern`, **never
`prevalence`**. Convergence across independent sources tells you a thing exists and roughly
how it behaves. It never tells you how common it is. Volume widens scope, not confidence.

**Done looks like:** offerings, not features. More than one future, legibly. Every bet
carrying what would falsify it. Honest at LOW — a vision built on secondary evidence isn't
unevidenced, it's correctly graded, and the defect is only ever LOW travelling downstream
unmarked.

---

## `design.md` — authors THE BEHAVIOUR

> "Given this evidence, here is how it must behave."

**Owner:** design.

**How you make it**

| step | method | what it gives you |
|---|---|---|
| 1 | `prototyping` | the evidence-first pipeline: research → brief → critique → build → critique → council → handoff. Ships the honesty apparatus, not just the screen. |
| 2 | `critic` | pre- and post-build scorecards, six dimensions, plus the delta. |
| 3 | `proctor` | process compliance. Did the pipeline do what it said it did. |
| 4 | write the criteria | UX acceptance criteria inherited from upstream, plus the FLOOR items — WCAG, APEX, data integrity. |

**What it emits into the evidence layer — and this is where the loop closes**

Testing a prototype produces **`observed_behavior` findings with `population_fidelity:
primary`** — the only combination that reaches a HIGH ceiling. So design work is not just a
consumer of evidence. **It is the main manufacturer of the strongest evidence in the system**,
and it's the step that pays back the bet `vision.md` made on secondary material.

`design.md` is also the one file with claims that legitimately rest on **standards rather than
findings** — WCAG and APEX conformance need no evidence row. They're the only unsourced claims
in the system that are fine.

**Done looks like:** every inherited `UXI-##` present and unticked-but-honest, FLOOR items
named even when not yet assessable (`[?]`, not "unmet"), and eval loops that say who tests
what.

---

## Where Beth Nam's system plugs in

Not as a checking loop bolted on afterwards. **Every method above already produces exactly
what her schema wants — the outputs just aren't written anywhere.** The integration is giving
each one an output slot.

| method | already produces | her slot |
|---|---|---|
| `scout` | sourced dossiers, `[CS:]`-tagged, secondary | candidate `findings.yaml` rows · `population_fidelity: none`/`proxy` · `source_links` |
| `abductive-tag` | the divergence between your read and Claude's | `invalidates_if` · and the `claim_type` distinction is what her `[R:obs]`/`[R:said]` split makes visible |
| `vision` skill | offerings with a `[0% Claude]` human slot | `status: hypothesis` · `origin: design` · G17 caps until research backs it |
| `idea-chess` | ranked holes · survival read · where it dies | `invalidates_if`, adversarially derived — **the best version of this field anyone will write** |
| `council` | parallel contradictory testimony | `CONTESTED` candidates · her requested `contradicts` |
| `prototyping` + `critic` | usability results from real sessions | `claim_type: observed_behavior` · `population_fidelity: primary` · `claim_scope: usability` |
| `refresh-datadump` | the corpus index, human-gated | stays exactly as it is — `findings.yaml` points *at* it, never duplicates it |

**So the promotion rule, in one line:** when a method returns something a document is going
to lean on, it becomes a `findings.yaml` row. Nothing else does.

That's what keeps the findings layer small — 13 rows against a corpus of dozens of sources —
and it's why this isn't a second encyclopedia to maintain.

---

## Two things that have to change for this to be true

1. **`rests_on:` takes one finding.** A need authored off a secondary dive rests on the
   convergence of several, sometimes on the tension between them. Parser change, mine.
2. **Nothing writes the promotion.** Today a scout dossier lands on disk and stops. The step
   from dossier to finding row is manual, undocumented, and therefore skipped — which is how
   `briefs/uxi-candidates-2026-09-21.md` ended up holding the whole converged secondary
   reading with no `findings.yaml` row behind any of it, and why `vision.md` has nothing to
   rest on.

Gap 2 is the one that actually bites. Everything upstream works; the evidence just never
gets filed.
