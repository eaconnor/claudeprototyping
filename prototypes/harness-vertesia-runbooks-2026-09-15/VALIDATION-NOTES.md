---
title: Validation notes — HARNESS Vertesia-Native Coworker Runbook Set
source: Harness_Vertesia_Native_Runbook_Set.docx (Copilot, 15 September 2026), pulled from
  SharePoint and split into 10 files in this folder (00-shared-substrate + nine coworker runbooks)
checked_against: this session's live-fire test (Data Store + human_task/answer-task, 2026-09-08)
  and Vertesia's OpenAPI spec (267 endpoints, v1.4.0) read directly earlier this session
---

# What's solid, and what's not

**Read this before trusting the 9 runbook files' skeleton JSON as more than illustrative — the
docs themselves say "illustrative, not a validated production graph," and two of the gaps below
are exactly why that caveat matters, not boilerplate.**

## What Copilot got right — worth naming, not just the corrections

- **The Part 0 blocker and spike framing is accurate and consistent across all nine runbooks.**
  `POST /processes` 503ing under an API key, and the human_task/Data Store substrate being verified
  while every external connector is not, both match this session's actual Biscuit Tin Check result
  exactly — not a paraphrase that drifted, the real finding.
- **Every runbook correctly refuses to claim Vertesia scheduling, event triggers, or eventing
  support.** Alert Flood Suppressor and Environment Health Monitor both explicitly hold those open
  (`⟨VERIFY⟩`) rather than assuming a cron/webhook mechanism exists. That's the right posture —
  nothing this session touched scheduling either.
- **The Cove/backup runbook keeps the "no bridge exists" fact intact** rather than quietly assuming
  a connector into being. Matches the supplied Technica source exactly.
- **No runbook invents a customer-facing autonomy claim** — every action-writing agent is gated by
  a `human_task` before execution, consistently, across all nine. This is the one mechanism
  actually proven this session, and it's used correctly everywhere it appears.

## Two systemic gaps in the skeleton JSON — same root cause, both fixed in the split files

### 1. `branch`-type nodes use `transitions`, not `branches` — the wrong field for the job

Per the real `NodeDefinition` schema (read directly from Vertesia's OpenAPI spec earlier this
session): a node has **two separate fields** — `transitions` (generic, mostly one guarded hop) and
`branches` (`BranchDefinition{to, when: JsonLogicRule, default}` — the actual fan-out mechanism,
confirmed runtime-dynamic branching via JsonLogic). Every `"type":"branch"` node in all nine
skeletons uses `"transitions":[{"to": X}]` — a single unconditional hop, not a `branches` array with
`when` conditions. As drafted, a `branch` node does not actually branch; it's a `tool`-shaped node
wearing a `branch` label.

This isn't cosmetic. Every "what's now deterministic" claim in Part C's tables that names a branch
node — Source-Unavailable routing, tier assignment, the Unverified hard-block, risk-based approval
routing, novelty/rate checks — depends on `branches`+`JsonLogicRule` to actually be deterministic.
Without it, the determinism is asserted in the prose table but not demonstrated in the one place
that would prove it.

**Fixed in the split files:** every `branch`-typed node now carries an illustrative `branches` array
with a placeholder `when` clause, e.g.:
```json
"branches": [
  { "to": "log_source_unavailable", "when": {"==": [{"var": "result.status"}, "failed"]} },
  { "to": "continuity_read", "default": true }
]
```
The exact `var` paths and conditions are still placeholders — real work for whoever builds this in
Studio — but the *shape* is now the real mechanism, not a guess. This is a correction from a
verified schema fact, not "fixing unknown Vertesia syntax by guessing" (which the source doc
correctly warns against elsewhere).

### 2. `foreach` is described in prose but never actually used as a node type

Several Part C tables describe a step as "foreach source agents" (Incident Response's Ingest/enrich,
Alert Flood Suppressor's Ingest, Ticket RCA's Collect) — but every corresponding skeleton node is
typed `"agent"` or `"tool"`, never `"foreach"`. Per the real `NodeDefinition` schema, `foreach` is a
distinct node type with its own `foreach` (string) and `as` (string) fields for iterating a
collection. The skeletons never demonstrate this either, so a step described as "iterate over N
agents" is, as drafted, a single node — meaning it's unclear whether the graph actually calls each
connector agent separately or one node is meant to internally loop (unspecified either way).

**Fixed in the split files:** the specific "foreach X" steps now show an illustrative `foreach` node
ahead of the branch/agent step it feeds, using the real two-field shape (`foreach`, `as`) rather than
leaving the mismatch between prose and skeleton uncorrected.

### 3. Alert Flood Suppressor's own skeleton contradicted its own Part C table

Its Part C table states "Propose rule — `agent` → `human_task` — new rule cannot self-activate —
analyst approves." Its skeleton, as drafted, routed `propose_rule` straight to `report_learn` with
no `human_task` in between — the one node type the table itself said had to be there. Not a
syntax issue like #1/#2; a missing gate. **Fixed in
[07-alert-flood-suppressor.md](07-alert-flood-suppressor.md):** inserted an `approve_rule`
`human_task` node between `propose_rule` and `report_learn`, matching the table it was supposed to
implement.

## What's still exactly as uncertain as Copilot said — not softened, not hardened

- Whether a `tool`/`agent` node can reach Halo, N-query, M365, Cove, or Adlumin with the right auth
  and tenant scoping — `[CS: UNKNOWN]` in the source, still `[CS: UNKNOWN]` here. Nothing this
  session tested a real external tool call; only Data Store ops and `human_task` were fired for
  real. The recommended first spike (Halo, lowest risk) is unchanged and still not run.
- Every `⟨VERIFY⟩` in each runbook's "Known opens" section — none of these were resolvable from
  this session's evidence, so none were resolved. Carried forward as-is.
- The generic `context.schema` (customer_id/source_results/decisions/errors) stamped across all
  nine skeletons is exactly as thin as it looks — real work per runbook, not attempted here.

## One naming decision made during the split, not in the source doc

The source document is HARNESS-wide (nine coworkers spanning every MSP function), not
Technica-specific — it does not belong inside `prototypes/ebr-coworker-005-arc/md-coworker/`, which
is scoped to one customer (Technica) per that folder's own README. Split into a new sibling folder,
`prototypes/harness-vertesia-runbooks-2026-09-15/`, instead.
