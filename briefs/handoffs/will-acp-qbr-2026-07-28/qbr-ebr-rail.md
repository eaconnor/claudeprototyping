# Bradley rail — QBR/EBR (portable markdown)

**Readiness badge: Tier 2 · Direction.** Not Concept — there's a real evidence base, a locked
acceptance-criteria table, and an actual artifact template in hand. Not Spec-ready — three human
calls and two gating research questions (Q1, Q2) are still open, and no prototype has been built.

**What this is testing, plainly:** whether enough is understood about *why* MSPs struggle with
QBRs/EBRs, *what* a good one requires, and *where the real moat is* — to design and spec against,
before anyone spends build time.

---

## What you nailed

- **A real artifact spec, not a guess.** Stefanie Hammond's actual EBR template (15 tabs) is in
  hand — this closes a gap that was open since the first research sweep.
- **The acceptance-criteria layer is unusually concrete for this stage.** 8 musts, each with a
  paired built-in test — several are already machine-checkable (ticket-conversion, artifact-
  freshness, content-ratio).
- **Real build substrate already exists.** The Runbook Engine and a Value Ledger producer are
  built in `acp-core-main-3` — this is wiring, not a build from zero.
- **The defensibility mechanism (Measured/Benchmarked/Estimated/Unverified, hard-gated on
  Unverified) is already implemented in code**, not a design aspiration — reuse it, don't
  reinvent it.
- **Corrections were caught, not missed.** The lawsuit-count error, the ScalePad pricing mismatch,
  and a fabricated competitor score in the board's own adversarial pass were all found and fixed
  in the record, not papered over.

## What will hurt you

- **The operator has never been studied.** Every demand signal is buyer purchase-intent. Designing
  the actual interaction without Q2 (an operator ethnography/prototype session) risks building for
  the wrong user's mental model.
- **Q1 (data-egress legality) is unresolved and gates the entire cross-vendor branch.** Don't let
  design work silently assume cross-vendor scope is legally available — it might not be.
- **The WTP anchor is internally contradicted** ("$300+/user" vs. the real, fetched ScalePad
  pricing). Any pricing-sensitive design decision made on the old number needs re-checking.
  a category that's already failed once at a real competitor (Zomentum, killed its QBR feature
  2024) — worth understanding why before repeating the shape.
- **Three of the biggest strategic decisions (positioning, MVP spine, which ACP altitude) are
  still open** — a design that quietly picks one without saying so will look like a decision that
  was never actually made.

---

## Routed cards

### Product
- **Does:** name which of the three ACP problem-statement altitudes (see HANDOFF.md) this design
  work is actually building toward, and confirm the positioning fork (delivery-lead vs. owner).
- **Why now:** design and pricing decisions downstream depend on this; sourced —
  `briefs/acp-problem-statement-2026-07-28.md`.
- **If you ship without it:** design proceeds on an assumed altitude/persona that may not match
  what leadership actually commits to — expensive rework, not a design failure.
- **[ROI]** Business: avoids building the wrong-scale thing twice. User: n/a — this is an internal
  alignment cost, not a user-facing one. Unknown: which altitude leadership will actually pick.

### Design (Will)
- **Does:** design the operator-facing review/confirm flow for the Unverified-tier hard gate
  (§6, Operating Principle 2) — this is the single most load-bearing UI moment in the whole
  offering, since it's the mechanism that keeps a drafted claim from reaching a client unchecked.
- **Why now:** the mechanism is decided and in code; the UI for it is not designed yet.
- **If you ship without it:** warning-fatigue research says a passive warning reads as
  permission — an undesigned gate is worse than no gate, because it looks like safety without
  providing it.
- **[ROI]** Business: this is the client-trust and liability-exposure control point — getting it
  wrong has real downside. User: an operator who can actually trust the gate works faster with
  more confidence, not less. Unknown: whether operators will actually engage with a confirm step
  or click through it — untested.

### Research
- **Does:** run Q2 — an operator ethnography or prototype session with an actual delivery
  lead, not another buyer-side interview.
- **Why now:** it's named as the single biggest gap between what exists and what's needed to
  design the real interaction — cited three separate times in the corpus (the original vision
  doc, the Idea Chess pass, and this handoff).
- **If you ship without it:** the design risks matching the buyer's stated wish (a report) rather
  than the operator's actual need (a defensible conversation) — see the relationship-trust vs.
  impact-trust distinction already found.
- **[ROI]** Business: derisks the build before eng commits real time. User: directly serves the
  actual daily user, not a proxy for them. Unknown: cost/timeline for the study itself — not
  scoped yet.

### Eng
- **Does:** scope the QBR runbook wiring onto the existing Runbook Engine + Value Ledger producer,
  and resolve Q1 (data-egress legality) before any cross-vendor normalization work starts.
- **Why now:** the substrate exists; the runbook itself has no spec yet — this is the fastest
  path to the top-ranked-demand offering, not new plumbing.
- **If you ship without it:** building cross-vendor normalization before Q1 resolves risks
  building something that's legally unshippable, not just technically hard.
- **[ROI]** Business: this is the #1-demand offering across all three research instruments —
  real revenue upside once scoped. User: less prep time, sooner. Unknown: actual eng-hours
  estimate — no baseline exists yet for the QBR-specific wiring work.
