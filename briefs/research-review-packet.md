# For review — the UX gate layer, and what it does with your schema

Beth Connor · 2026-09-22 · **nothing here is agreed, and nothing has touched your repository**

One page. Everything below is checkable in about twenty minutes.

---

## What I am asking for

Not approval of the whole thing. Four specific answers, at the bottom. Everything else is
context for them.

## What was built, in one paragraph

Two markdown files in a code repo (`ux.md`, `design.md`) hold what a project claims about
its users. Each claim points at a row in `findings.yaml` with `rests_on:`. A shell script
recomputes the strongest claim that row can support and **fails the check if the document
asserts more than that**. Nothing is copied; the pointer is the whole mechanism.

Run it:

```bash
cd ux-spec-skeleton/examples/alert-digest && ../../check-gates.sh
```

```
FAIL E-02 — asserts HIGH. overnight-alerts-arrive-in-bulk is STATED_ATTITUDE / primary
     fidelity, which ceilings at MEDIUM.
```

## Your schema, unchanged — but only nine fields are actually read

Per your own rule that a field is either executed or marked documentary, here is the
audit. Grep-verified 2026-09-22, not recalled.

| field | status |
|---|---|
`claim_type` · `population_fidelity` | **read** — the two the ceiling is computed from
`confidence` | **read** — and compared against the computed ceiling
`review_by` · `fieldwork_date` | **read** — staleness and drift
`status` · `superseded_by` | **read** — a retired finding stops supporting claims
`confidence_set_by` | **read by the linter** (rule 6: a grade with nobody behind it)
`max_confidence` | **NOT read — and that is deliberate.** The ceiling is recomputed from the two fields above every run. Typing a ceiling in does not raise one. This field is documentary and should be labelled so
`claim_scope` | **NOT read. This is a real gap** — see question 2
`instruments[]` · `per_claim_n` · `single_source` · `provenance_status` · `invalidates_if` · `population_scope` | **not read.** Documentary. They do the work on a human reader, which I think is correct, but you should know nothing enforces them
`contradicts` · `validated_by` | **not read** — not implemented, on your requested list

## The ceiling, as implemented

`observed_behavior` → HIGH · `stated_attitude` / `inferred` → MEDIUM · `recommended` → LOW.
Then `population_fidelity` of `proxy` / `internal` / `none` caps everything at LOW. Lowest
governs.

**The grading pen does not move.** The script computes the maximum. It never sets, proposes
or fills a grade — all 15 `confidence:` fields in the test file are blank.

**"Agents must not grade a finding" is policy, and nothing enforces it.** This paragraph
claimed the repo's constitution barred it. It does not — the skeleton's constitution says
nothing about grading at all, which I found by grepping it while answering your review. What
is true and checkable: no script writes to `findings.yaml`, and `check-gates.sh` fails any
document claiming more than a row licenses. Nothing stops a direct edit. Enforcing it needs
CODEOWNERS or a CI diff check on that file, and neither exists yet.
A researcher may grade **below** the ceiling; judgment overrides arithmetic downward only.

## Two things I changed my mind about, because of your email

**A vision on secondary research is not unevidenced — it is accurately graded at LOW.** I
had it framed as a defect, which made your own secondary-dive method look like one. The
defect is never the LOW. It is LOW travelling downstream unmarked.

**Your `[SCOPE:]` tag is what makes that safe, and I had advised trading it away.** Wrong.
It is exactly the instrument for the case where convergent secondary sources support that
a thing *exists* without saying how common it is.

## Four questions

**1. `rests_on:` takes one finding. A need usually rests on several.**
The parser reads a single id (`check-gates.sh:330`). Do you want a list, and if so does the
ceiling become the *lowest* of the cited rows? I think yes — the weakest leg governs — but
that is a schema decision and it is yours.

**2. `claim_scope` is in the schema and nothing reads it.**
So nothing currently stops a claim scoped `prevalence` off convergent sources with no
sampling frame, which is the exact thing your no-confidence-by-volume rule exists to block.
Should the check refuse `prevalence` unless an instrument declares a sampling frame?

**3. Which copy of `evidence-rules` is canonical?**
I have been working from what I was given. You mentioned v0.2. I do not have it. Also: the
pin reads v2.1 in one place and v2.2 in another — I have not resolved which is right and
did not want to guess.

**4. The retag cost you estimated is zero, not four.**
All four bare `[R]` tags in `acp-ux.md` are the legend row (L85) and two meta-notes (L233,
L327). None is a claim. Confirm and we can drop it from the list.

## What is NOT true yet, so you are not reading this as further along than it is

- **Your `validate_findings.py` does not run here.** Two checks, two different questions —
  yours asks whether a finding is *labelled* honestly, mine whether anything upstream
  *claims* more than it licenses. Neither catches the other's failure.
- **The 15 findings in the test file are mine, not yours.** They were written in your schema
  as a test of whether it fits. Nothing has touched the real research repository.
- **`contradicts` and `superseded_by` handling is not implemented.** Two things here are
  blocked on them.
- **Nobody has agreed anything.** Every requirement row sits under a not-ratified banner.
- **Two of the 15 findings are about the research index itself** —
  `datadump-understates-its-own-user-shelf` and `counterevidence-exists-but-is-unindexed`,
  from a coverage audit I ran on 2026-09-22. They are written in your schema and authored by
  me. If you would rather findings about the corpus live somewhere other than `findings.yaml`,
  say so and I will move them.

## If you only read one file

`ux-spec-skeleton/examples/alert-digest/findings.yaml` — five fictional rows spread from LOW
to HIGH. The one to look at is `digests-get-ignored-after-a-week`: HIGH ceiling, observed
behaviour, and it argues against the project it belongs to. It stays in. A file holding only
supporting findings is a case being made, not an evidence log.
