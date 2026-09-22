# Authoring the three files

Beth Connor · 2026-09-22 · the missing half. Everything built so far *checks* these files.
Nothing said how to make one.

**The one thing to hold on to:** each file authors a claim that does not exist in the
evidence. Findings record what happened. A need, a concept, a behaviour — each is a new
statement about what should be true for one product, and somebody has to make it. That act
is the authoring step. It is not evidence, it rests on evidence, and it can never be graded
above what it rests on.

## The system requires the OUTPUT, not the TOOL

Every step below names **the move** and **what it has to produce.** How you get there is
yours. Each one lists a from-scratch route that needs nothing but a document and a meeting,
plus the Band Protocol skill that does it if that toolkit has been loaned to the project.

**This matters more than it looks.** A process that only works with one person's private
toolkit isn't a process, it's a dependency on that person. The checks read files. They have
no opinion about how the file got written, and they must not acquire one.

> **On loaning the skills.** `scout`, `abductive-tag`, `journey-map`, `vision`, `idea-chess`,
> `prototyping`, `council` are Band Protocol — mine, not the process's. Two options, and it's
> a decision not a default: **bundle** them into the packet (Zero Vector says the curriculum
> is open, so this is consistent), or **cite the method** and let people bring their own. The
> `prototyping` skill already shows the pattern — it has a public edition with no proprietary
> agents or brands, and a companion toolkit repo. That's the shape a loaned skill takes.

---

## `ux.md` — authors THE NEED

> "Given this evidence, here is the problem, and whose it is."

**Owner:** whoever is closest to the user. Often research, sometimes a designer or a PM.
A named person, with a separate `research_check:` even when that's the same person twice.

| the move | what it must produce | from scratch | with the toolkit |
|---|---|---|---|
| **Secondary dive.** Look before you gather. | A written source log — every source linked, or it isn't a source | Desk research into a doc with a link per row. Your datadump's own rule is the whole method: *"if it's not linked, it's not a source."* | `scout` — and write its output to disk in the same turn, or it dies with the context window |
| **The interpretive pass.** Your reading of what the sources mean. | Your interpretation, recorded as yours — separate from the sources it came from | A spreadsheet: source rows, your own column, your own colour coding. Then a second reader classifies independently and you record where you disagree. | `abductive-tag` — the same thing with the order enforced: you abduct first, the machine classifies second, never reversed |
| **Map the people and the moments.** | The cast, with the gaps named rather than smoothed | Adaptive Path's service blueprinting method, or Whitney/IIT's Four Lenses context brief — both published, neither needs a tool | `journey-map` (which cites exactly those two) |
| **Write the need.** | The need statement, in your words, tagged | You. There is no from-scratch alternative and no tool route — this is the authoring step. | — |

**What it emits into the evidence layer**

- Any source something will *lean on* gets promoted to a `findings.yaml` row. Demand-driven —
  if nothing cites it, it doesn't need a row.
- **Where your interpretation and a second reader's diverge is the best source of
  `invalidates_if` you will ever get.** That gap marks where tacit knowledge is carrying the
  most load, which is exactly what's most worth testing.

**Done looks like:** a problem statement you'd defend out loud, a cast with gaps as `[?]`
rather than smoothed, and an `## Evidence` block — *even if it says "no findings back this
yet."* Absent can't be told from unchecked.

---

## `vision.md` — authors THE CONCEPTS

> "Given this evidence, here is what would be valuable."

**Owner:** strategy. Often the same person as `ux.md`; still written down.

| the move | what it must produce | from scratch | with the toolkit |
|---|---|---|---|
| **Read the whole pile.** Reconcile qual against quant. | Candidate **offerings**, not features | Affinity mapping / a synthesis workshop. Slow, works, needs a wall. | `vision` skill |
| **Get more than one frame on it.** | Contradictory readings, left contradictory | Convene people with genuinely different lenses and *do not synthesise the output*. Disagreement is the deliverable. | `council` — five frameworks, parallel, un-synthesised |
| **Attack it.** | A ranked list of where this fails, and what would falsify it | A premortem, a red-team review, or assumption mapping. Rule: the attacker must not be the person who wants the bet to be true. | `idea-chess` — one adversarial voice converging to a scored position |
| **Write the bet.** | The concept, owned, with its falsifiers attached | You. The `vision` skill ships every offering with a `[0% Claude — fill this in]` slot precisely because this part can't be delegated. | — |

**What it emits into the evidence layer**

- **The adversarial pass output *is* `invalidates_if`.** Ranked holes and "where this dies"
  are falsifiers written by someone trying to break it — the hardest way and the right one.
- Where two frames disagree on the same evidence, that's a `CONTESTED` candidate.
- Concepts rest mostly on **secondary** findings, and that is correct. A converged
  desk-research pattern is real evidence for *the shape of a space*.

**The rule that matters here:** `claim_scope` is `existence` or `pattern`, **never
`prevalence`**. Convergence across independent sources tells you a thing exists and roughly
how it behaves. It never tells you how common it is. Volume widens scope, not confidence.

**Done looks like:** offerings, not features. More than one future, legibly. Every bet
carrying what would falsify it. Honest at LOW — a vision built on secondary evidence isn't
unevidenced, it's correctly graded, and the only defect is LOW travelling downstream unmarked.

---

## `design.md` — authors THE BEHAVIOUR

> "Given this evidence, here is how it must behave."

**Owner:** design.

| the move | what it must produce | from scratch | with the toolkit |
|---|---|---|---|
| **Make the thing, evidence first.** | A prototype **plus** the honesty apparatus around it | Any prototyping process, as long as the brief is claim-tagged before the build starts and the fidelity tier is stated on the artifact | `prototyping` (a public edition already exists) |
| **Critique it against the brief, twice.** | A pre-build and post-build score, with the delta | A written rubric and a reviewer who didn't build it. Six dimensions is a reasonable number; the count matters less than the reviewer not being the author. | `critic` |
| **Check the process ran.** | Did the steps happen, or get claimed | Ask someone to verify the artifacts exist. Unglamorous and it catches real things. | `proctor` |
| **Write the criteria.** | Inherited `UXI-##` rows, plus the FLOOR items | You. | — |

**What it emits into the evidence layer — and this is where the loop closes**

Testing a prototype produces **`observed_behavior` findings at `population_fidelity:
primary`** — the only combination reaching a HIGH ceiling. So design work is not just a
consumer of evidence. **It is the main manufacturer of the strongest evidence in the system**,
and the step that pays back the bet `vision.md` made on secondary material.

`design.md` is also the one file with claims that legitimately rest on **standards rather than
findings** — WCAG and APEX conformance need no evidence row. The only unsourced claims in the
system that are fine.

**Done looks like:** every inherited `UXI-##` present and unticked-but-honest, FLOOR items
named even when not yet assessable (`[?]`, not "unmet"), and eval loops naming who tests what.

---

## Where Beth Nam's system plugs in

Not as a checking loop bolted on afterwards. **Each move above already produces something her
schema has a slot for — the outputs just have nowhere to land.** The integration is giving
each one an output slot, and it's tool-independent:

| the move | what comes out | her slot |
|---|---|---|
| secondary dive | sourced, tagged, not-your-users material | candidate rows · `population_fidelity: none`/`proxy` · `source_links` |
| interpretive pass | your reading, and where a second reader differs | `claim_type: inferred` · `invalidates_if` from the divergence |
| read the pile | offerings with a human-only slot | `status: hypothesis` · `origin: design` · G17 caps until research backs it |
| attack it | ranked holes, survival read | `invalidates_if` — **the best version of that field anyone will write** |
| more than one frame | contradictory readings | `CONTESTED` · her requested `contradicts` |
| prototype + test | real session results | `observed_behavior` · `primary` · `claim_scope: usability` |
| corpus upkeep | the index, human-gated | stays as it is — findings point *at* it, never duplicate it |

**The promotion rule, in one line:** when a move returns something a document is going to
lean on, it becomes a `findings.yaml` row. Nothing else does.

That's what keeps the findings layer small — 13 rows against a corpus of dozens of sources —
and why this isn't a second encyclopedia to maintain.

---

## Two things that have to change for this to be true

1. **`rests_on:` takes one finding.** A need authored off a secondary dive rests on the
   convergence of several, sometimes on the tension between them. Parser change, mine.
2. **Nothing writes the promotion.** A dossier lands on disk and stops. The step from source
   to finding row is manual, undocumented, and therefore skipped — which is how
   `briefs/uxi-candidates-2026-09-21.md` ended up holding the whole converged secondary
   reading with no `findings.yaml` row behind any of it, and why `vision.md` has nothing to
   rest on.

Gap 2 is the one that bites. Every move works; the evidence just never gets filed.
