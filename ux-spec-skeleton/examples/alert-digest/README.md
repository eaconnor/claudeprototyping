# EXAMPLE — the overnight alert digest

**Fictional.** A small managed-service firm's technicians arrive each morning to a
batch of alerts raised overnight, most needing no action. Someone proposes a daily
digest. Every participant, company, number and quote in this folder is invented.

**Authored, not transcribed.** Nobody ran this project. It was written to show what a
filled-in set of these files looks like, because the toolkit otherwise ships with all
its examples empty. Contrast [`../../EXAMPLE-TURNIPS.md`](../../EXAMPLE-TURNIPS.md),
which *is* a record of a kickoff that actually happened — its value is the three
toolkit bugs that run exposed, and it deliberately leaves the spec body as
placeholders. This example fills the opposite half.

## Why this domain

Close enough to real work to be argued with, far enough to be safe. No internal
material, no real partner, no real customer. If the domain gets in the way, the
mechanics are identical for anything else.

## What to look at, in order

**1. [`findings.yaml`](findings.yaml) — five rows, worst evidence to best.**

This is the only filled findings file in the toolkit, and it is the thing to read if
you read nothing else. The five rows are spread deliberately across the range:

| row | strongest claim allowed | why |
|---|---|---|
| a supplier's 40% figure | **LOW** | someone advising, no population at all |
| "technicians want one dashboard" | **LOW** | conference intercepts, self-selecting, no roles captured |
| "overnight alerts arrive in bulk" | **MEDIUM** | nine people describing their own morning — solid, and still capped |
| "triage order is recency, not risk" | **HIGH** | watched four people do it on their own live queues |
| "digests get ignored after a week" | **HIGH** | six weeks of mail logs — **and it argues against the project** |

Three things worth stopping on:

- **The dashboard row is the dangerous one, and it looks like the safest.** It is a
  solution wearing the grammar of a need. The tells are mechanical: no population it
  is true *of*, nothing that would prove it wrong, and the thing asked for is a screen
  rather than an outcome.
- **Nine consistent interviews still cap at MEDIUM.** More of the same kind of
  evidence widens who a claim applies to. It does not make anyone more certain.
- **The strongest row points the wrong way.** It stays in. A file holding only
  supporting findings is not an evidence log, it is a case being made.

**2. [`ux.md`](ux.md) — and run it.** This folder is a complete miniature project with
its own `project.conf`, so the checks run against it without touching the skeleton at
the repo root:

```bash
cd examples/alert-digest && ../../check-gates.sh
```

`E-02` in `ux.md` asserts HIGH on a row that caps at MEDIUM. It is left in on purpose.
The run exits **1** and prints:

```
FAIL E-02 — asserts HIGH. overnight-alerts-arrive-in-bulk is STATED_ATTITUDE / primary fidelity, which ceilings
     at MEDIUM. Repetition raises scope, not confidence — and someone
     downstream cannot see this gap from where they are standing.
```

**If that run comes back clean, the install is broken.** A green run proves nothing;
this is the test.

Worth noticing in the same output:

- **Gate 1 PASSes with 0 of 5 criteria ticked** — because the file declares
  `PROCEED-FLAGGED`. Unticked boxes are not a blocker. What blocks is a claim above
  its evidence, an undeclared regime, or a dispute with nowhere to go.
- **Every finding flags as ungraded**, and the check carries on against the computed
  ceiling. It will not invent a grade.
- **E-04 and E-05 dispute their own rows and pass**, because each carries a
  `handling:` pointer. Disagreement is legal; unhandled disagreement is not.
- **Empty `GATE_2`/`GATE_3` and an empty `INTENT_SPEC` flag but don't block** — a
  pre-spec phase with no Gate 2 yet is a real state, as long as it is declared rather
  than silent.

Then run the other check:

```bash
../../check-claims.sh
```

It exits **0** — and that is the point. The linter checks the *form* of a claim: does
a cited finding exist, does a hedge carry its reason, is a rate quoted off a
single-digit sample. The overclaim in E-02 is well-formed. **Two checks, two
questions**: one asks whether a claim is written honestly, the other whether it claims
more than its evidence licenses. Neither catches the other's failure.

**3. Then read the ceiling rule.** How strong a claim you may make is set by how the
evidence was gathered, not by how sure anyone feels:

| what the evidence actually is | strongest claim allowed |
|---|---|
| we watched people do it | HIGH |
| people told us what they do, or think | MEDIUM |
| someone worked it out from other evidence | MEDIUM |
| someone recommended it | LOW |

Then one override: **if the people studied were not the actual users** — a screened
panel, internal staff, nobody — everything caps at LOW regardless. Lowest cap wins.

## What this example does not do

- **No grades are set.** Every `confidence:` field is blank with
  `confidence_set_by:` beside it. The script computes the *maximum*; a named
  researcher sets the actual grade inside it and may set it lower. The script will
  never fill one in. "Agents must not either" is policy, not something any script here
  enforces — see START-HERE.md.
- **The `source_links` are dead on purpose** — `example.invalid` and fictional paths.
  Real ones would make invented evidence look real.
- **It carries no Intent Spec.** The Intent Spec is a separate, already-established
  document, and this layer bolts onto it rather than replacing it. See the root
  README for what is wired and what is not.
