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

## Studio Assistant, tried live — not a viable build path

Attempted 2026-09-15: asked Vertesia's own Studio Assistant (the in-console chat agent, session
auth, not the blocked API key) to create and publish the QBR Advisor process from
[08-qbr-advisor.md](08-qbr-advisor.md)'s skeleton. Required picking an Environment ("Google") and
Model ("Global claude-sonnet-4-6") before it would even start. Ran 6m42s showing only decorative
rotating status text ("Charting the course to answers...," "Baking fresh ideas...") with no visible
progress trace — no partial process, no error, nothing in Processes → Configuration the entire
time. Killed manually; confirmed nothing was created.

**Conclusion: hand-writing the JSON directly into Studio's Code tab (the method that actually built
and published Biscuit Tin Check in seconds once the syntax was right) is the proven path. The
Assistant is not, at least for this kind of request.** Next session: build QBR Advisor the same way
— paste/`setValue` the skeleton into the Code tab, Save, Publish, Run, verify via Task Inbox +
`GET /agents?run_id=...`, same discipline as the original spike.

## One naming decision made during the split, not in the source doc

The source document is HARNESS-wide (nine coworkers spanning every MSP function), not
Technica-specific — it does not belong inside `prototypes/ebr-coworker-005-arc/md-coworker/`, which
is scoped to one customer (Technica) per that folder's own README. Split into a new sibling folder,
`prototypes/harness-vertesia-runbooks-2026-09-15/`, instead.

## QBR Advisor — hand-built and run, 2026-09-16: pipeline proven, tool/agent bodies fail as warned

Per the prior session's plan ("Next session: build QBR Advisor the same way"), built
[08-qbr-advisor.md](08-qbr-advisor.md)'s skeleton directly in Studio's Code tab (session auth, not
API key — still blocked, confirmed again this session for both `POST` and `PUT /processes/{id}`,
both 503 "Invalid JWT" under the developer-role key). Process id `6aaa63be04c219d0fa59b4fb`,
published as version 1.

**New Code-tab editing bug found and worked around.** `window.monaco.editor.getModels()[0].setValue(...)`
sets the visible buffer but does not reliably flip the app's own dirty-state that the Save button's
click handler reads — Save either submitted the *previous* edit (one-edit lag) or silently no-opped
(confirmed via `GET /processes/{id}` showing `updated_at` unchanged). **Fix:** after `setValue()`,
click into the editor, press End, type a space, press Backspace (forces a real onChange), wait ~3s,
then click Save via a freshly re-found ref. Standard technique for any future process edit here.

**Real discovery: `tool`/`agent` node placeholders need more than a name string.**
- `type:"tool"` nodes need a *registered* tool name — confirmed via a live 400
  ("tool node references unknown tool") the first time a placeholder tool name was used. Fixed by
  binding to real builtin tools discovered via `GET /tools` (209 registered, no connector needed):
  `data_query` for the two read nodes, `data_mutate_rows` for the write node. This closes a real gap
  in every runbook in this set — Data Store reads/writes can bind to real tools today, not just
  "design proposals."
- **But a registered tool name alone is not enough to run.** Publishing succeeded and a real run
  started (`GET /agents` confirms a `qbr_advisor` run, `customer_id: "fenwick-logistics"` correctly
  captured in `process_state.context` — the Start dialog's input form worked exactly as designed).
  The run then failed at the very first node, `load_reviewed_state` (`tool: data_query`), with a
  generic `Activity task failed` error (confirmed via the Observability tab's Tool Call detail — the
  Process tab's own "running"/"error" status badges never updated after the failure and stayed stale
  through a manual Refresh; Observability was the only reliable place to see the real per-node
  outcome, a second UI-staleness bug on top of the earlier "Open Tasks counter reads 0" one).
  The node definition (checked via its own YAML tab) has no query/table/params field at all —
  `data_query` was called with nothing to query. **This confirms, empirically rather than by caveat,
  that a `tool` node needs real call parameters bound in the node body, and this session did not
  find where that field lives** (`/tools` lists tool names only, no per-tool input schema; no
  `/tools/{name}` or `/openapi.json` endpoint was reachable to check `NodeDefinition`'s param field
  name). Per this project's own rule, not fixed by guessing — carried forward as `⟨VERIFY⟩`.
- **`agent: "grading-proposer"` on the `translate`/`recommend` nodes is also unverified — and now
  confirmed almost certainly wrong.** `GET /interactions` on this project returns `[]` — no
  Interaction is registered under that name or any other. The run never reached these nodes (it
  failed earlier), so this hasn't thrown its own error yet, but there is currently nothing in this
  project for an `agent` field to resolve to. Same class of problem as the `tool` field's first
  failure, not yet hit.

**What this run genuinely proved, independent of the two failures above:**
1. Hand-editing the Code tab, Save, Publish is a real, repeatable path to a live process (second
   confirmation, after Biscuit Tin Check).
2. The Start dialog correctly reads `context.schema` and produces real input fields; the submitted
   value is correctly written into `process_state.context` before the first node runs.
3. The Observability tab (Run Hierarchy → tool call row) is the trustworthy place to see a real
   per-node failure and its raw error — more trustworthy than the Process tab's status badges, which
   went stale on this run the same way the Process detail page's "Open Tasks" counter did on Biscuit
   Tin Check. Use Observability first for any future run diagnosis.
4. The in-console "Explain" feature (AI-generated failure explanation) does not work in this project
   yet — it 400'd with `For in-code interactions, environment must be specified`, an unrelated config
   gap, not a lead worth chasing further today.

**Not yet re-attempted:** fixing `load_reviewed_state`/`continuity`/`publish` with real query
parameters, or replacing `grading-proposer` with a real Interaction, then re-running to reach
`chooser` and mirror Biscuit Tin Check's full pause/answer/resume/publish verification. Both fixes
need a real answer to "what does a `tool` node's call-parameter field look like" and "what registers
an `agent` name" — neither resolved this session. Worth a support question or a direct read of
Vertesia's process-node docs before the next attempt, rather than guessing the field name.
