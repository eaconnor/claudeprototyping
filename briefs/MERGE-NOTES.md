# Merging the two halves — reconciliation notes

Beth Connor · 2026-09-22 · companion to `assets/merged-evidence-system.png`

Not a verdict on Beth Nam's change request. A read of the two systems as one system, what
composes cleanly, and what doesn't fit yet.

---

## The reframe: why UX spec-driven design needs three layers, not one

Spec-driven design for code works because **the spec is a contract and tests enforce it.**
The spec is assumed correct — correctness is someone else's problem, upstream.

The UX version can't make that assumption, because a UX spec is *a claim about humans*. It
can be internally consistent, fully traced, cleanly implemented, and wrong. So the UX
version needs two layers underneath the spec that code SDD doesn't have:

| layer | what it holds | code SDD equivalent |
|---|---|---|
| **L1 · Evidence** | what we actually found out | none — assumed |
| **L2 · Interpretation** | what we say it means | none — assumed |
| **L3 · Commitment** | what we promised to build | *this is where code SDD starts* |

And the three layers fail differently:

- **L1 fails** → we believe something false
- **L2 fails** → we believe something true, and act beyond it
- **L3 fails** → we knew the right thing and built something else

**Beth Nam's system is strongest at L1. Mine is strongest at L3. L2 is where both are
weakest, and it's where most damage actually happens** — a sound finding used past what it
licenses. That's the merge's whole value, and it's not what either half was built for.

---

## What composes cleanly, with no work

| hers | mine | how they compose |
|---|---|---|
| `findings.yaml` schema | `check-gates.sh` reads it | Already done. My check computes ceilings from *her* `claim_type` / `population_fidelity`. Her rule, my enforcement. |
| "Agents do not grade confidence" | 13 blank `confidence:` fields, `# ← yours` | Same position, independently reached. The script prints the computed cap and refuses to grade. |
| `validate_findings.py` — is the record honest | `check-gates.sh` — does anything claim past it | Two questions, one file, no overlap. Both needed: a valid findings file under an overclaiming problem statement still ships a lie. |
| "Do not resolve a contradiction silently" | `CONTESTED` | Same rule. Mine is the hand-rolled version of her requested `contradicts`. |
| "Do not turn counts into rates" | the 47% rule | Same rule, different origin story. |
| "A companion file an agent was never told to read does nothing" | the three legs — leg 3 is *something runs it unasked* | She named my leg 3 in her own words. This is the strongest sign the architecture is real rather than either of us imposing taste. |

**And one piece I have that her system has no equivalent for:** `owner:` / `research_check:`
as two separate required fields. L2 is the contested middle — research owns the evidence,
product owns the commitment, and *interpretation* belongs to neither cleanly. The two-name
rule is the mechanism for exactly that, and it's worth offering into the merge rather than
just defending.

---

## What doesn't fit yet — worst first

### Gap 1 · L2 is the seam, and neither half was built for it
**Architectural, not a defect.** Her rules govern *prose generated from* evidence. Mine
governs *structured dependencies between* documents. The damage happens between those two
descriptions. Everything below is a symptom of this.

### Gap 3 · Nothing checks prose, so GATE 16 is unenforced — **mine to build**
Her own admission: *"`validate_findings.py` checks the records. Nothing automatically checks
the prose generated from them."* And my check reads the `## Evidence` block, not the
sentences above it.

So the exact failure rule 16 exists to prevent — `[R:said]` restated as "users do" — passes
both validators today. **This is the highest-value thing left to build in the whole system**,
and it's cheap for the obvious cases: a bare `[R]` on a claim, `[FIT: weak]` with no reason
after the comma, a percentage next to a single-digit `n`, "users" with no number. Grep-level,
not NLP.

Recommendation: take GATE 16, and build the check in the same change. A gate rule with no
check is leg 1 without leg 2 — which is the thing we both already agree doesn't work.

### Gap 2 · Two grammars in one file — **hers to rule**
Her rule 1: *"emit one grammar, not two."* But `ux.md` would then carry both her inline tags
*and* my `## Evidence` block with `rests_on:` / `asserted_at:` / `stance:`.

My read: these are different **objects**, not competing grammars. A tag annotates a
*sentence*, for a human reader. An Evidence row registers a *dependency*, for a machine. Her
rule is about not double-tagging one claim, which this isn't.

But that reading is mine, and she owns the rule. Needs her ruling before either of us wires
anything, because if she says it *is* a second grammar, the Evidence block has to move out
of `ux.md` — probably into its own file — and that changes my check's file layout.

### Gap 4 · A requirement outlives the finding that justified it — **shared, and it's the loop's missing half**
`inherited_on:` vs `fieldwork_date` catches drift at L2. Nothing re-checks a §5 `UXI-##` row
after research re-grades the finding under it. So the id survives, the basis quietly doesn't.

This is the half of "it's a loop, not a snapshot" that isn't built. It's also the one case
where her `superseded_by` and my criteria-inheritance chain have to meet — a superseded
finding should make every `UXI-##` resting on it re-open, not just flag locally.

### Gap 5 · `evidence-rules` v0.2 is canonical and I have never seen it — **ask**
`research.md` defers to it for the ladder, the G14–G18 caps, status and coverage definitions,
counting, population matching, and the confidence caps — *"if the two ever disagree,
`evidence-rules` wins and this file is the bug."*

It wasn't in the zip. Everything I've implemented from her ceiling arithmetic is derived from
`research.md` and the taxonomy page, which are downstream of it. **If my mapping is wrong,
it's wrong in the same direction everywhere**, and this is the document that would tell us.
Highest-value thing to get hold of.

Same category: `validate_findings.py` doesn't run in our repo, and G14–G18 aren't implemented.

### Gap 6 · `CONTESTED` vs `contradicts` / `superseded_by` — **hers, schema**
Mine is a shim. Worth agreeing out loud that it *is* a shim and retires when the fields land,
rather than letting two parallel mechanisms harden.

### Gap 7 · Three different things are called "confidence" — **shared, cheap, and worth doing first**
- `[CS: VERIFIED/HIGH/MEDIUM/LOW]` — how well we have **the source** in hand
- `confidence: High/Medium/Low` — how much weight **a claim** can carry (her canonical taxonomy)
- `confidence_regime: PROCEED/FLAGGED/PARTIAL/BLOCKED` — how honest **a document** is about being unfinished

Her file already separates the first two and gives the worked example. Nothing anywhere
separates the third. Three axes sharing one word is how someone reads a green gate as "this
is validated." One legend block fixes it.

### Gap 8 · Different trigger points — **declare the order**
Her G14–G18 fire at `spec_ready: true`. Mine fire whenever `check-gates.sh` runs. Nothing
states the relationship. Do her gates run before Gate 1, or at Gate 3? Cheap to declare,
expensive to leave ambiguous.

### Gap 9 · Three copies of the packet, one canonical, unowned — **mine, and it blocks the edit**
`briefs/handoffs/design-eng-uxdocs-2026-08-28/` has the `templates/` + `docs/` layout her
change request names. `briefs/context/` is newer (1 Sep), flat, and `acp-ux.md` differs.
A third pair sits in Teams Chat Files. `TEMPLATE.ux.md` is identical across the two;
`acp-ux.md` is not.

Her closing line — *"nothing detects that drift automatically"* — applies to my packet at
least as much as to her pin. Her offered five-line CI grep should probably check the copies
too, not just `template_version`.

---

## What I'd say yes to now

**Take `[R:obs]` / `[R:said]` and `[FIT:]`.** They do work nothing else does, and the
justification is verified in my own artifact, not hypothetical: `SOURCES.md` files the
delivery-lead interview in *both* the "strongest — build on these" tier and the "directional
only — real but thin" tier. Both entries are correct. No tag says which one governs a given
sentence.

**Negotiate `[SCOPE:]`, don't refuse it.** `[FIT: none, no adoption evidence exists]` carries
the same information in her own worked example. Her counter — G18 needs a named axis to gate
on — is fair. Two tags is more likely to survive contact with the working group than three;
her call whether the gate needs the third.

**Tell her the retag cost is zero, not four.** All four bare `[R]` in `acp-ux.md` are the
legend row and two meta-notes *about* the tagging convention. No claim carries one.
`qbr-ebr.ux.md` has none of any form. The one cost her README flags as mine doesn't exist,
which makes rule 16 forward-binding only.

**Fix the pin.** Her change request says `research.md` v2.1 twice; the file is v2.2. In a
document whose mechanism is version pinning, that wants correcting before it's cited.

---

## Why this matters for product outcomes, in one paragraph

Every one of these gaps is a way for a true thing to become a false decision without anyone
lying. Research finds something real; someone restates it slightly stronger; that restatement
becomes a requirement; the requirement gets built. No step is dishonest and the outcome is
a product built on a claim nobody ever actually made. The merged system's whole job is to
make each of those steps visible at the moment it happens — which is why L2 matters more than
either of us built for, and why a gate rule without a check is worse than neither, because it
reads as covered.
