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

## QBR Advisor v2 — real docs found, real rebuild, real new blocker (2026-09-16, later same day)

Found `docs.vertesiahq.com` has actual process-authoring reference pages (Node types, Agent nodes,
Tools Reference, Tutorial: Contract Review, The Process Model) — not just marketing copy. Direct
navigation works (`https://docs.vertesiahq.com/processes/node-types` etc.); the in-page search
widget is unreliable for scripted use (stale/concatenating input) but `cmd+k` search followed by
reading the result list works when the direct URL isn't known.

**What the docs corrected, all now applied and published as QBR Advisor version 2
(`6aaa70ef0393dc7ee47c28f4`):**
- `agent` nodes do **not** take an `agent: "<name>"` field — there is no agent registry. The real
  shape is `prompt` (inline, `{{var}}`-templated against context), optional `tools: [...]` (real
  builtin tool names), and `writes: [...]` (must be a subset of `context.schema.properties`, and the
  engine derives a strict `result_schema` from exactly those fields — `additionalProperties: false`).
  This retires the `grading-proposer` non-existent-agent concern from the previous entry: the field
  itself was wrong, not just the value.
- `type: "branch"` and `type: "condition"` are **both real but semantically different** — this
  session's earlier "branch fix" (VALIDATION-NOTES's fix #1, from the Copilot document) used the
  right `branches: [{to, when, default}]` *field shape* but the wrong *type name*. `condition` is
  pure if/else routing (exactly what `value_frame` needed). `branch` is BPMN-style structured
  parallel split/join — a fixed named set of child subprocesses launched together and joined,
  completely unrelated to conditional routing. Every `type:"branch"`-as-if-else node across all nine
  harness runbooks (not just QBR Advisor) has this same mislabel and needs the same `branch`→
  `condition` rename — **not yet done in the other 8 files**, flagged as a follow-up below.
- The original `type:"tool"` + `tool: data_query` placeholders (no query params at all) were the
  root cause of QBR Advisor v1's first failed run: `type:"tool"` nodes need a real `config` object
  (`config.context_update` for a literal write) — and, contrary to the docs' own canonical
  `auto_approve` example, **this deployment's validator
  rejects a `type:"tool"` node with no `tool` field at all**, even when only `config.context_update`
  is used (confirmed via a live 400: `"tool node \"publish\" is missing tool"`). Docs vs. this
  deployment disagree here; trust the deployment. Worked around by moving `publish` to `type:"agent"`
  instead of chasing the exact tool-node contract further.
- The Tools Reference page gave `data_query`'s real parameters (`store_id`, `sql`, `params`, `limit`)
  — confirmed `data_mutate_rows` (used in the first QBR Advisor build) **is not in this reference at
  all**, unlike `data_query`/`data_import`/`data_create_tables`/etc. Its earlier "confirmed real
  tool" status rests only on appearing in the `/tools` name list, not on any documented parameter
  schema — downgrade that specific tool's confidence; prefer `data_import`/`data_query` until
  `data_mutate_rows` is seen working.

**New platform bug found while re-testing the fix: editing a *published* process's Code tab silently
forks a new draft under a different process id, and the Save success toast does not say so.**
First re-save attempt (fixing `translate`/`recommend`/`value_frame`) returned "Process updated" and
looked identical to Biscuit Tin Check's proven Save flow — but `GET /processes/{original_id}`
afterward still showed the untouched original definition. The real edit had landed on a sibling
draft id (`6aaa70ef0393dc7ee47c28f4`), only surfaced when a second Save attempt on the *original* id
400'd with the actually-informative message: `"Process definition 6aaa63be...4fb is not the latest
draft. Update draft 6aaa70ef...28f4 instead."` Editing a process that's already published creates a
new draft revision rather than editing in place — the Code tab gives no visible signal of this. Fix
for future edits: after any Save on a published process, re-fetch by the id the error/response
implies, not the id in the URL bar, and treat a bare "Process updated" toast as unverified until
confirmed by `GET` on the right id. Published the correct draft (`6aaa70ef...28f4`) as version 2 —
confirmed via `GET` showing `agent`/`agent`/`human_task`/`agent`/`agent`/`condition`/`human_task`/
`agent`/`final` node types, matching the intended fix exactly.

**New run, same real blocker: every `agent`-type node fails immediately, every time.** Started two
fresh runs against version 2 (`6aaa718a...28f5`, then `6aaa72c1...b4fd`), both with
`customer_id: "fenwick-logistics"` correctly captured in context (Start dialog + context write still
proven solid). Both failed at `load_reviewed_state` — the very first node, now `type:"agent"` — in
~1 second, both times, with the same generic `{"error":"Child Workflow execution failed"}` at the
`sys:ProcessAgentNode` child-run layer (visible via Observability → Run Hierarchy, not the Process
tab's status badges, which again stayed stuck on stale "running"/"error" through a manual Refresh —
third occurrence of that exact UI bug this project). A same-input retry ruled out a transient
one-off. **Leading hypothesis, not fully confirmed:** this project's "in-code interactions" (ad-hoc,
dynamically-defined prompts — which is exactly what an `agent` node's inline `prompt` is, as opposed
to a pre-registered Studio Interaction) require an explicit environment/model that isn't resolved
from the project's own configured default. Support for this: the in-console "Explain" feature threw
the literal error `"For in-code interactions, environment must be specified"` earlier this session,
and Studio Assistant separately refused to start without an explicit Environment+Model pick — a
consistent pattern of ad-hoc LLM calls in this project needing an explicit environment where
pre-registered ones don't. Against this: the Agent nodes and Process Model doc pages describe no
`environment`/`model` field on an agent node at all, and this project does have one environment
("Google") configured with a default model — so per the documented contract this should just work.
**Not resolved — 1-second immediate failure is consistent with a fast validation-style rejection
rather than an actual failed LLM call, which supports the hypothesis, but nothing in the UI or API
surfaced the underlying string to confirm it.** `⟨VERIFY⟩` Worth a direct support question to
Vertesia: "does an `agent`-type process node need an explicit environment/model field, and if so
what's the JSON key?" — this is the one concrete blocking question standing between this rebuild and
a full `chooser`→`sign_off`→`done` run.

**Net position on "does the hand-build pipeline work":** yes, more thoroughly than before — Code tab
edit-and-publish (with the new "which id am I actually editing" caveat), Start dialog input capture,
and Observability-based failure diagnosis are all now proven across two different processes and two
different kinds of failure. What's still unproven is getting *any* `agent`-type node to actually
complete in this project — that's now the single named blocker, not a vague "tool bindings are
placeholders" caveat.

**Follow-up still open:** rename `type:"branch"`-as-if-else to `type:"condition"` across all nine
runbook files in this folder (currently only fixed in QBR Advisor's live Vertesia build, not in the
markdown files) — the `branches` field shape Copilot used was right, the type name was wrong, and
this affects every runbook that has a routing/gate step, not just QBR Advisor's `value_frame`.

## The "environment must be specified" blocker — root cause confirmed, no fix found in-schema (same day, continued)

Beth asked to actually find the root cause and retailor the JSON to name the environment/model
explicitly, rather than leave it as a hypothesis. Pulled the *real* OpenAPI spec this time — the
docs site has a working "Download OpenAPI Document" link (`https://docs.vertesiahq.com/api-specs/
vertesia`, 968KB, v1.4.0) that a plain `curl` can fetch — no auth needed, and it's the actual
schema, not the prose docs' paraphrase of it.

**`NodeDefinition` really does have a `model` field** (confirmed via the schema, not the prose):
`"model": { "type": "string", "description": "Model id override for this node. If unset, falls back
to the process run's `config.model`, then to the project's default." }`. `ProcessDefinitionBody` has
the same `model` field at the top level. **Set both** — process-level `model` and every agent node's
`model` — to this project's one real, enabled model id (`GET /environments` confirmed it:
`locations/global/publishers/anthropic/models/claude-sonnet-4-6`, environment id
`6a3563634e91fba9048a3065`, the same environment id Studio Assistant used successfully earlier this
session). Republished as version 3. **Reran — identical failure, identical error, down to the exact
same generic `Child Workflow execution failed` message.** `model` alone did not fix it.

**Found the actual raw error text, via a UI surface not touched before: Studio's own
`/store/executions` page** — the native Temporal workflow-execution list (`ExecuteProcessWorkflow` /
`ExecuteConversationWorkflow` rows, each with a real activity-level History tab). This is a more
authoritative source than the Process/Observability tabs used earlier — it shows the actual failed
Temporal *activity* (`startConversation`) and its real thrown error, not a wrapper's generic
re-throw. The real error, unchanged across every attempt:

```
Interaction Execution failed sys:ProcessAgentNode: Bad Request: 400 - For in-code interactions,
environment must be specified
Request: POST https://api.us1.vertesia.io/api/v1/execute => 400
```

This is the exact same string the in-console "Explain" feature threw earlier this session — now
confirmed to be the same underlying failure, not a coincidence of similar wording.

**Checked whether `environment` can be supplied anywhere in the documented schema — it cannot,
in four separate places checked directly against the real OpenAPI spec:**
1. `NodeDefinition` — only `model` (string) and `config` (free `additionalProperties:true` object).
   Tried routing environment through `config: {environment: "6a35...", model: "..."}` on every agent
   node, matching `InteractionExecutionConfiguration`'s real shape (`id, environment, model,
   do_validate, run_data, configMode, model_options, http_timeout` — confirmed via schema, this is
   the object the error's own "environment must be specified" check almost certainly validates).
   Republished as version 4, reran. **Identical error, near-identical activity timing (292ms vs
   336ms) — `config.environment` on the node is not being forwarded into the `/execute` call at
   all.** `NodeDefinition.config`'s free-form object is not a routing path to this check, at least
   not for `type:"agent"` nodes — its only confirmed real use remains the `type:"tool"` +
   `context_update` pattern from the docs' own `auto_approve` example.
2. `ProcessDefinitionBody` (top-level) — only `model`, no `environment`, `additionalProperties:
   false`.
3. `ProcessRunConfig` (the object under `config.model` that `NodeDefinition.model`'s own docstring
   points to as the run-level fallback) — only `model` and `user_message` and a workstream-monitor
   sub-object. `additionalProperties: false`. No `environment` field, confirmed by direct schema
   read, not inference.
4. `Interaction`/`InteractionCreatePayload` — these DO have `environment`, but that's the schema for
   a *persisted, registered* Interaction object (Studio's own "Calls"/Interactions resource, `GET
   /interactions` — confirmed earlier this session to return `[]`, nothing registered). The error
   text's own phrase — "for **in-code** interactions" — is very likely drawing exactly this
   distinction: `sys:ProcessAgentNode` dispatches the agent node's inline `prompt` as an ephemeral,
   not-persisted ("in-code") interaction built on the fly, which this deployment's `/execute`
   validation refuses unless an environment is attached to *that specific ephemeral call* — and
   nothing in `NodeDefinition`, `ProcessDefinitionBody`, or `ProcessRunConfig` is threaded into it.

**Conclusion: this is very likely a genuine platform gap, not an authoring mistake.** Every
documented and schema-confirmed lever for supplying a model/environment to a process node has now
been tried and had zero effect on this specific error. The fix, if one exists, is not discoverable
from the client side — either Vertesia's backend needs to resolve the project's environment default
for `sys:ProcessAgentNode` calls (a bug, since a default environment demonstrably exists and is used
successfully by Studio Assistant and dashboard-building tool calls elsewhere in this same project),
or there's an undocumented mechanism (a project-level setting, a feature flag) that isn't reachable
via the process-definition JSON or the OpenAPI schema as published. **Recommended next step: file
this exact reproduction with Vertesia support/engineering** — process id `6aaa75fa04c219d0fa59b500`
(version 4), run id `6aaa7637050a8b507a3043ab`, the exact error string above, and the four
schema-confirmed non-fixes tried — rather than continue guessing client-side. Everything else about
this build (Code-tab edit/publish, Start-dialog input capture, condition/tool/human_task nodes) is
proven solid; this one interaction-dispatch path is the sole remaining blocker on reaching `chooser`.

---

## QBR Advisor — full graph proven end to end, 2026-09-16 (run `6aaa9ab7050a8b507a3043b2`)

**This is the run the whole Vertesia-as-backend question rested on. It completed.** Nine nodes,
`load_reviewed_state → continuity → chooser → translate → recommend → value_frame → sign_off →
publish → done`, `status: completed`, and a real row landed in `qbr_artifacts` — the exact write-back
the Biscuit Tin Check explicitly *failed* to prove (see that section's own "row unchanged" finding).
`[CS: VERIFIED — API-confirmed after the run, not read off a UI badge]`

Verified by `POST /data/{store}/query`:

```
run_ref: fenwick-logistics-proof   customer_id: fenwick-logistics
decision: include                  signed_off_by: Elizabeth Connor
claim / recommendation: full LLM-written narrative text, derived from the six real findings rows
```

### The fix that unblocked it: stop using `type:"agent"`

`type:"agent"` is dead on this deployment (see the "environment must be specified" section above).
The route around it is **registered Interactions** — `type:"interaction"` + `interaction:"<Name>"`,
where the Interaction object carries its own `environment` and `model`. Those two fields are the
thing an agent node cannot supply. Created three (`Qbr_load_register`, `Qbr_translate`,
`Qbr_recommend`), used two in the live graph, both executed first try.

Creation chain is three calls, not one — inline prompt objects are rejected (`Cast to ObjectId
failed`):
1. `POST /prompts` — `{name, role, content, content_type: "jst"|"handlebars"|"text"}`
2. `POST /interactions` — `{name, environment, model, result_schema, status}`
3. `PUT /interactions/{id}` — `{prompts:[{type:"template", template:"<promptObjectId>"}]}`

All three work under the API key. **Process creation still 503s ("Invalid JWT") — that blocker is
unchanged.** So the shape that works today is: Interactions by API, Process by Studio Code tab.

### `tool` nodes take their call parameters in `input` — undocumented

The docs only ever show `config.context_update` on a tool node, which made `tool` look useless for
real work. It isn't. `input:{...}` carries the tool's actual arguments:

```json
{"type":"tool","tool":"data_query","input":{"store_id":"<id>","sql":"SELECT * FROM findings"},
 "writes":["source_results"]}
```
```json
{"type":"tool","tool":"data_import","input":{"store_id":"<id>","mode":"append",
 "tables":{"qbr_artifacts":{"source":"inline","data":[{"run_ref":"{{customer_id}}-proof", "...":"..."}]}}}}
```

Proven by `queryActivity completed` in the Temporal history plus real rows in context, and by the
`qbr_artifacts` write above. **This matters more than the agent-node workaround** — it means the
deterministic half of every runbook in this set (query, reconcile, count, write evidence) is
buildable today with no LLM in the loop at all. `{{var}}` interpolation works inside `input`.

Two shape traps: `data_query` returns `{columns, rows}`, not a bare array — declare the context
property untyped (`"source_results": {}`) or the run dies on `must be array`. And in a prompt,
`{{source_results}}` renders nothing usable; iterate `{{#each source_results.rows}}`.

### Answering a human task: one endpoint completes the record without resuming the run

**Never call `POST /tasks/{id}/complete` for a process task.** It returns 200, marks the task
completed, and does *not* signal the workflow. The run stays parked forever, and the correct resume
path then refuses: `409 Conflict: Task is already completed`. This permanently stranded run
`6aaa999804c219d0fa59b508` at `chooser`. It is a one-way door with a success response on it.

The correct endpoint is `POST /agents/{run_id}/answer-task`, and it needs `{task_id, result}` —
`result` is required but **absent from `AnswerProcessTaskPayload` in the published spec**. It then
fails anyway under an API key: `401 Invalid or expired on_behalf_of token` (`sts.vertesia.io/token/issue
=> 401`). An API key cannot act on behalf of a user. **Answering tasks is a session-auth-only
operation — the Task Inbox UI is the only working path**, confirming the original Biscuit Tin Check
finding rather than overturning it.

### Task Inbox UI: two things that silently swallow a submit

1. **An unassigned task can be filled in and submitted with no error and no effect.** Task stays
   `pending`, `result: null`. You must click **Take Task** first. Nothing on screen says so.
2. **The floating "Open Studio Assistant" button overlaps the Submit button** and eats the click —
   the Assistant panel opens instead of the form submitting. This, not the assignment, was the
   actual cause of the first failed submit. Workaround: click Submit programmatically
   (`[...document.querySelectorAll('button')].find(b=>b.textContent.trim()==='Submit').click()`),
   or scroll so Submit clears the floating button.

Both failure modes look identical from the outside: form filled, button clicked, nothing happens.
Always verify by polling `GET /agents/{run_id}` for `current_node`, never by the UI's own state.

### What this changes for the nine runbooks

The Part C skeletons are buildable today, with one substitution: every `type:"agent"` node becomes
either a `tool` node (if the work is deterministic — most of them are) or a registered Interaction
(if it genuinely needs an LLM). Node types `tool`, `interaction`, `human_task`, `condition`, `final`
are all now live-fire proven in one graph. Still unproven: `foreach`, `branch` (real parallel
split/join), `process` (subprocess), and every external connector.
