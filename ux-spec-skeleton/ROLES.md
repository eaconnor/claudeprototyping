# ROLES.md — who owns what

The scripts in this repo tell you *that* something is wrong. They cannot tell you whose
job it is to fix it. This file does.

## The structural claim this whole repo rests on

> Design is the only function with the user evidence required to detect hallucination in
> the strategy layer.

Other functions can speed up output. Design is the function that checks the output is
grounded. That is not an argument about craft or seniority — it is an argument about who
holds the evidence, and it is why the gates below sit where they do.

## Ownership

| | Gate 1 · understand the problem | Gate 2 · right thing | Gate 3 · thing right |
|---|---|---|---|
| **Design** | **Owns.** The problem statement and the evidence tagging. | Contributes | Contributes |
| **Research** | **Owns the data behind it** — interviews, surveys, analytics, synthesis | Contributes | Owns the instruments |
| **Product** | Contributes | **Owns.** The strategic frame and the OKRs. | Contributes |
| **Engineering** | Contributes feasibility | Weighs feasibility | **Owns.** Architecture, and the FLOOR. |

Design and research **jointly run the unverified-claim pass** — the sweep that flags
asserted-as-fact claims before anything is automated against them. Neither does it alone:
research knows what the evidence actually says, design knows what the artifact is about to
imply.

## What each role actually does here, day to day

**Design** — writes and maintains `ux.md`. Tags every claim. Keeps `OPEN.md`'s riskiest
rows at the top. Decides which of the generic gate criteria get replaced with criteria
about *this* product. Does not get to tick a Gate 3 box; that is eng's layer.

**Research** — owns `MANIFEST.md` and the `instruments/` folder. Designs the instrument
that closes a criterion, and declares its threshold and predicted outcome *before* data
exists. Runs the studies. Decides whether a source is `primary`, `market` or `derived` —
and that last one is load-bearing, see `MANIFEST.md`.

**Engineering** — owns `design.md`'s FLOOR criteria and the CI wiring. Gets a hard build
failure on anything that can harm a user, and a visible warning on everything else. Is
never blocked *as a person* — see `SIGNOFF.md`.

**Product** — owns `vision.md`'s direction and the Decision Log. Is the only role that can
resolve a `HUMAN` row about scope. Does not own Gate 1; a problem statement is not a
prioritisation call.

**Whoever is accountable** (`ACCOUNTABLE_OWNER` in `project.conf`) — signs T2 waivers,
where the consequence lands on a user. Must be a real named person. "The team" is not an
accountable owner, because a waiver signed by everyone is signed by nobody.

## The role this practice needs someone to hold

Closer to **head of design integrity** than head of design in the traditional sense. Owns
the practice across the organisation: the templates, the gates, the rubric. Trains product
and engineering to work inside it. Reports on spec quality — sourced-versus-asserted ratio,
detector pass rates — as a *leading* indicator of shipped quality, which is the only design
metric that leadership can act on before the fact.

Named here because the practice does not maintain itself. Every register in this repo
decays the moment nobody owns it, and a decayed register is worse than none: it still
reads authoritative.

## What is deliberately not in this table

**Approval authority.** It is not in this file because it is not by role — it is by
consequence. A junior engineer signs their own T0 work; a director does not get to sign a
T3 just by being a director. `scripts/check-tier.py` computes the tier and `SIGNOFF.md`
says what to do with it.

## The design-location connector — `design_ref:` / `design_tier:`

A new field pair, not yet in the merged schema — **Design owns declaring it, nobody hand-types
the tier.**

```
design_ref:   prototypes/<name>/<name>.html   # or a Figma branch URL, or `none`
design_tier:  [computed — grepped from design_ref's own fidelity banner]
```

**Why it isn't Figma-only.** The obvious precedent — `acp-core-main-3`'s `figma-design`
extension, which links a Figma branch after a spec is created — assumes design lives in
Figma. A lot of what this practice actually produces (the Tier 1/2/3 HTML prototypes the
`bethproto`/`prototyping` pipelines build) never touches Figma. `design_ref:` accepts either,
or `none` if nothing exists yet — never a forced Figma link where there isn't one.

**Why the tier is computed, not asserted.** Every prototype ships a *mandatory* fidelity
banner — "Tier 1 · Concept" etc., with a 3-pip indicator — enforced by both the `bethproto`
and `prototyping` skills ("Not optional. Not just in the rail."). That means the tier is
already stamped on disk, in the artifact, every time a prototype is built. `design_tier:`
reads it off the banner rather than asking a person to retype it into frontmatter — same
principle as `check-drift.sh`: compute from the artifact, don't let a hand-typed field go
stale next to it.

**Three axes, not one — do not conflate them:**

| axis | measures | lives in |
|---|---|---|
| `design_tier` (Tier 1/2/3) | how built-out the artifact is | the prototype's own banner |
| `design_lint:` rung | how rigorously checked against the design system | merged schema, `design_lint:` |
| brief fidelity % (30/60/90) | how evidence-backed the *spec* is | tied to `[A]`/`[?]` ratio |

A Tier 1 sketch can be `design_lint: static-tokens`-clean. A Tier 3 build can still rest on a
30%-fidelity brief. Design owns the first; the second is a script's job; the third is
Gate 1/2's evidence discipline, already covered above.

## Where this came from

The Gate 1/2/3 ownership split and the design-integrity role are compiled from an internal
policy brief, not invented here. `[CS: HIGH — internal policy brief §8]` The rest of the
table is the practical reading of that split against the scripts in this repo, and has not
been tested against a real multi-team project yet. `[A]` Treat it as a starting position
to argue with, not a settled org chart — and record the argument in `OPEN.md`.
