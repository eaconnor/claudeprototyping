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

## Where this came from

The Gate 1/2/3 ownership split and the design-integrity role are compiled from an internal
policy brief, not invented here. `[CS: HIGH — internal policy brief §8]` The rest of the
table is the practical reading of that split against the scripts in this repo, and has not
been tested against a real multi-team project yet. `[A]` Treat it as a starting position
to argue with, not a settled org chart — and record the argument in `OPEN.md`.
