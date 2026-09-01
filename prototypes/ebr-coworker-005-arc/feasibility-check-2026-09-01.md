---
title: Feasibility check — EBR Coworker survivor concepts vs. acp-core-main-3 + Vertesia
type: feasibility-check
generated: 2026-09-01
tests: VP-3 (Business Resilience) and VP-4 (Judgment, Made Visible) from idea-chess-concepts-2026-09-01.md
grounded_in: direct read of acp-core-main-3 (this session) + briefs/vertesia-brief-2026-08-21.md, briefs/ebr-coworker-phased-plan-2026-08-20.md §C-11, briefs/idea-chess-qbr-round3-2026-08-20.md, datadump-refresh-2026-08-21.md §C-11/C-14
---

# Feasibility check: does either surviving concept actually run on what exists?

Idea chess tested VP-3 and VP-4 as *positioning* — whether the market bet holds. This checks *substrate* —
whether the mechanism each concept needs is buildable on what's actually there. Two sources, checked
against each other because they may not agree: the repo I read directly this session, and the Vertesia
partner-substrate reality Beth already decided to treat as a given (`ebr-coworker-phased-plan-2026-08-20.md`
§C-11, 2026-08-21).

## The finding that changes the frame

**Beth already decided (2026-08-21) to treat Vertesia as the runtime, not acp-core-main-3's own
Coworker/Temporal engine.** Per the Nov 1 execution plan: *"Vertesia console, N-able-branded, 'Powered by
Vertesia' badge, 5 coworker runbooks, and 8 integrations built on top."* The allocation, stated plainly in
the phased plan:

| Layer | Whose | Status |
|---|---|---|
| Runbooks (the C2 moat) | **N-able's** | Beth named Runbook/UX lead. This is the 002 config store — what this session's grounding work is about. |
| Integrations/connectors | **N-able's** | Vertesia ships zero. |
| Console/surface | **Vertesia's** | N-able-branded skin, Vertesia-owned runtime. |
| Margin split, MSP-facing attribution | `[?]` | Unstated in the plan. |

This is **not evidence uncertainty — it's a live decision-uncertainty conflict, explicitly marked
`BLOCKED` per CLAUDE.md §9b** (`datadump-refresh-2026-08-21.md` §C-11: "Two live artifacts point opposite
directions and only Beth + Nicole can say which governs"). Nothing below tries to resolve it. It changes
which parts of this session's build rest on solid ground and which rest on an unconfirmed assumption.

## VP-3 · Business Resilience — mechanism feasibility

**Needs:** an append-only liability log (every risk surfaced-and-declined, dated, immutable) and an
upsell-tag filter sourced only from real gaps.

- **acp-core-main-3**: `runbook_audit_entries` is real, append-only, code-enforced (`app/runbooks/models.py`,
  no UPDATE/DELETE service methods, DB trigger denies it) [R — direct read]. The mechanism this VP needs
  exists today, on N-able's own side of the Vertesia line (runbooks stay N-able's regardless of who runs
  them).
- **Vertesia**: "Process engine — rules, validation, auditing. Audit is native" (`vertesia-brief-2026-08-21.md`).
  A second, independent confirmation the mechanism exists — on the runtime side this time. [CS: HIGH per
  vertesiahq.com, not independently verified against a spec].
- **Verdict: feasible under either substrate, and the substrate question doesn't matter much here** — an
  audit-log mechanism is close to a commodity capability both layers already claim. Lowest-risk part of
  either concept.

## VP-4 · Judgment, Made Visible — mechanism feasibility

**Needs:** a visible, steppable run trace (the 9-step cycle) a technician can expand to see what the
coworker actually did, plus a real approval gate at the Chooser step.

- **acp-core-main-3**: there is a real, specific mechanism for exactly this — `StepsRunWorkflow` (a DAG of
  Experts with `depends_on`/`on_failure`/`requires_approval`), progress exposed as rows appended to
  `run_audit`, polled via `GET /runs/{id}/audit?after=<seq>` (root `CLAUDE.md`, "Temporal execution
  model"). The Chooser step's "operator picks, confidence-gated" behavior maps directly onto
  `requires_approval` + the Temporal signal at `POST /runs/{id}/approval` — this isn't an analogy, it's
  the actual mechanism the run-trace UI was designed to represent. [R — direct read, this session]
- **The catch**: this mechanism lives on `agents/`'s Coworker + Temporal engine — the same layer whose
  Coworker Registry (spec 004) is **0/40 tasks**, flat/unversioned, no `runbook_id` field
  (`idea-chess-build.md`, cross-checked fresh against `agents/models.py` this session — the figure is
  current, not stale, per the same file's own `[?]` flag on whether "0/40" survives the live repo).
  **If Vertesia is the actual runtime for the EBR coworker specifically** (one of the "5 coworker
  runbooks" the Nov 1 plan names, and Beth is separately named QBR Use Case Runbook lead on that same
  plan — EBR and QBR overlap heavily in this corpus), **then `StepsRunWorkflow`/`run_audit` may not be
  the mechanism that actually executes it at all.** The feasibility evidence I found is real, but it may
  be evidence for a substrate this specific coworker doesn't run on.
- **Vertesia**: "Agentic orchestration — an operating layer for *durable, observable* agent execution (run
  agents, watch them, keep state)" (`vertesia-brief-2026-08-21.md`). This is directionally the same
  capability — Vertesia's own marketing language is arguably a *better* fit for "visible judgment trail"
  than acp-core-main-3's polling mechanism is. But there is no technical spec for it in this corpus — I
  cannot cite a Vertesia API, step-DAG model, or approval-gate mechanism the way I can for
  `StepsRunWorkflow`. `[?]`
- **Verdict: directionally feasible on both substrates, concretely verified on only one — and that one
  may not be the one that ships.** The 9-step stepper's *UI* is substrate-agnostic and safe to build
  either way. The specific backend citations in this session's brief (`app/runs/temporal/`, `run_audit`)
  should not be read as "this is how the real thing will work" — they're evidence the *pattern* is
  buildable somewhere, not evidence of which somewhere.

## Where this changes what's already built

Splitting the rebuild into its two halves, which are differently exposed:

- **Runbooks/admin screen (Will's Figma-matched: list, lock, clone, activate)** — **low exposure.** This is
  runbook *authoring/management*, which the Vertesia allocation keeps on N-able's side regardless of C-11's
  outcome ("the judgment layer stays on our side of the line"). Whatever renders the MSP-facing execution
  surface, N-able very plausibly still needs an internal tool shaped roughly like this to author and
  version runbook configs. This part of the build rests on solid ground.
- **Setup wizard / Run-cycle stepper / Dashboard / Chooser / Client report (the MSP-technician-facing
  execution experience)** — **higher exposure.** This is the surface C-11 says may belong to Vertesia, not
  to a bespoke N-able app. Everything built here — Apex Bridge tokens, `ebr-app.html`'s own nav/shell, the
  specific stepper UI — previews *an* experience that demonstrates the right *behavior* (visible judgment,
  honest gaps, dual-surface discipline), but should not be presented as a preview of *the actual shipping
  screen*, since which console renders it is an open, escalated, Beth+Nicole-owned question.

## What this does NOT change

- The backend-grounding facts already in the brief (9-field `RunbookVersion` schema, no persisted
  `Coworker.runbook_id`, no guardrail enforcement at the runbook-config layer) are unaffected — those are
  about the `runbooks` module specifically, which stays N-able's under every version of the Vertesia
  allocation. The Coworker↔Runbook honesty badge's underlying fact is still true; its scope should be
  understood as "acp-core-main-3's own native coworker layer," not a claim about Vertesia's (undocumented,
  to us) coworker-binding mechanism.
- Nothing here reopens C-11 for a decision — it's explicitly Beth + Nicole's, and it's already correctly
  marked `BLOCKED`, not something evidence closes.

## Resolution (Beth, 2026-09-01)

**"We can just build good UX — can solve the Vertesia problem next week. But can borrow patterns, etc.
Assume their capabilities as a product can be used by me, right now."** C-11 (which console) stays
deferred and unblocked-on — not resolved, explicitly postponed. For this build pass, Vertesia's
documented product capabilities (multi-model orchestration, durable/observable agent execution, native
audit/process engine, content/document intelligence) are treated as real, usable design patterns
regardless of which substrate ends up executing the EBR coworker — the same way `StepsRunWorkflow`/
`run_audit` was already usable as a pattern reference from the acp-core-main-3 side. Build proceeds on
that basis. The SOURCES.md flag recommended below still applies — building on borrowed patterns from two
undecided substrates is exactly the situation that note exists to name.

## What to carry into the brief/handoff

One addition, not a rebuild: a short note in `SOURCES.md` at handoff time, flagging that the MSP-facing
screens preview *behavior*, not a confirmed shipping surface, pending C-11. This is the same honesty
discipline already applied to the Coworker↔Runbook badge, extended to a second, larger gap this feasibility
check surfaced. Recommend against building anything new to "solve" C-11 in this pass — it isn't ready to be
solved, only named.
