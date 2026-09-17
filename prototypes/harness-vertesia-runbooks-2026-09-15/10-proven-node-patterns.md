---
title: Proven Node Patterns — the only runbook in this set built from a graph that actually ran
part_of: HARNESS Vertesia-Native Coworker Runbook Set — see 00-shared-substrate.md
status: live-fire verified — three graphs ported and run to completion (08 QBR Advisor 2026-09-16;
  05 Environment Health Monitor and 01 Incident Response 2026-09-17)
supersedes: the node-shape guesses in 00-shared-substrate.md and every Part C skeleton in 01–09
---

# Proven Node Patterns

## Why this file exists, separately from the other nine

Files 01–09 are design proposals. Their Part C skeletons each carry the same disclaimer — *"node
names, tool bindings, agent IDs, state paths and conditions above are placeholders… do not 'fix'
unknown Vertesia syntax by guessing."* That disclaimer was right. This file is what replaced the
guessing.

On 2026-09-16 the QBR Advisor graph from `08-qbr-advisor.md` was hand-built in Vertesia Studio and
run to completion with real data, a real human pause, real model-written narrative, and a real
write-back into a Data Store table. Everything below is copied from that working definition or from
an error it threw on the way. `[CS: VERIFIED — API-confirmed after the run, not read off a UI badge]`

**Read this before editing any Part C skeleton.** The other nine files now point here.

**The run, for the record:** process `6aaa9966050a8b507a3043b0` (v6 of root
`6aaa63be04c219d0fa59b4fb`), run `6aaa9ab7050a8b507a3043b2`, nine nodes,
`load_reviewed_state → continuity → chooser → translate → recommend → value_frame → sign_off →
publish → done`, `status: completed`. Resulting row in `qbr_artifacts`:

```
run_ref: fenwick-logistics-proof   customer_id: fenwick-logistics
decision: include                  signed_off_by: Elizabeth Connor
claim / recommendation: full narrative text, written by the model from the six real findings rows
```

That last line matters: the `publish` write-back is the exact thing the Biscuit Tin Check spike
explicitly **failed** to prove (its own finding was "row unchanged"). It is now proven.

---

## Part 0 — read this before anything else

**Five things to know before you build. The first three are blockers.** `[CS: VERIFIED — retested 2026-09-17]`

1. `POST /processes` and `PUT /processes` still 503 with `Failed to load process validation
   catalogs: Invalid JWT` under the project API key. **Processes are built in the Studio Code tab,
   by hand, under session auth.**
2. **Starting a run by API is a server defect, not a permission.** `POST /agents` *does* accept a
   process-run body — `process_id` is the discriminator (send `process` instead and it replies
   "Missing interaction", so the process branch exists) — but every shape returns a bare **500**.
   Retested 2026-09-17 with freshly minted `automation`- and `executor`-role keys: identical 500.
   So this is almost certainly the same catalog/JWT defect as (1), and no amount of permission fixes
   it. Runs start from the UI. `[CS: VERIFIED — three roles tested]`
3. **Answering a human task needs a principal with a task inbox.** `POST
   /agents/{run_id}/answer-task` returns `401 Invalid or expired on_behalf_of token` under the
   `developer` key. Under higher-role keys it returns `404 Task not found` — and those keys see
   *zero* pending tasks where the developer key sees several. **Tasks are scoped to a principal's
   inbox; an API key has none.** The endpoint needs the assignee or `task:manage`, and a
   developer-role key cannot mint such a key ("API keys cannot be assigned permissions the caller
   does not have"). Not proven impossible — **not yet obtained.** `[CS: MEDIUM]`
4. **`POST /agents` is broken outright for this key — not just its process branch.** Tested
   2026-09-17: the *bare documented* payload (`{interaction: "sys:generic_question", data:{...}}`,
   which is the shape the spec marks as the only required one) also returns a bare **500**, as does
   every variant with `config`, `interactive`, `tool_names`, or one of our own Interactions. So (2)
   is a symptom of a wholly non-functional endpoint. `[CS: VERIFIED]`

5. **The agent-tool workaround is a dead end, by elimination.** `GET /tools` lists
   **`start_process_run`** (`{process_id, process_definition, data, run_type}`) and
   **`answer_process_task`** (`{run_id, task_id, result}`) — exactly the two capabilities an API key
   lacks, and `answer_process_task`'s parameters are the payload the REST endpoint wanted. But
   Vertesia only executes tools server-side inside an **agent run**, and agent runs cannot be created
   (item 4). `POST /execute` accepts only `tool_definitions` — *client-side* tools, where the caller
   executes them and returns the result, which just routes back to the endpoints that already refuse.
   `[CS: VERIFIED — tested, not inferred]`

**Proof this is a specific defect and not an outage.** All five calls below, same key, same minute:

```
GET  /agents             200      POST /data/{store}/query   200
GET  /processes          200      POST /execute              200 → completed
POST /agents             500  ← the only failure
```

**Therefore, and this is the load-bearing conclusion for anything built on top of Vertesia:
its workflow engine can only be driven from a browser session. There is no API path to start a run
or answer a task.** Data and reasoning are fully available by API; orchestration is not. An external
UI must own its own workflow and use Vertesia for state and reasoning — which is exactly what the
HARNESS prototype already does, since its stepper, Chooser and sign-off are client-side state.

**What *did* become available under the API key:** creating Interactions and Prompts, creating Data
Store tables, `POST /execute`, and every `GET`. That asymmetry is what makes the pattern below work.

**The authoritative error surface is `/store/executions`** — the native Temporal per-activity
history. It shows the real thrown exception. The Observability tab is second-best (Run Hierarchy →
Tool Call detail). **The Process tab's own status badges and its "Open Tasks" counter are repeatedly
stale and have been wrong in both spikes** — never conclude anything from them.

---

## Part A — the three node types that carry real work

### `tool` — for anything deterministic. Arguments go in `input`.

This is the most important undocumented finding in the set. The docs only ever show a tool node with
`config.context_update`, which made `tool` look like a no-op marker. It isn't. **`input` carries the
tool's actual call parameters,** and `{{var}}` interpolation works inside it.

Reading:
```json
{ "type": "tool", "tool": "data_query",
  "input": { "store_id": "<storeId>", "sql": "SELECT * FROM findings" },
  "writes": ["source_results"],
  "transitions": [{ "to": "continuity" }] }
```

Writing:
```json
{ "type": "tool", "tool": "data_import",
  "input": { "store_id": "<storeId>", "mode": "append", "message": "QBR artifact",
    "tables": { "qbr_artifacts": { "source": "inline", "data": [
      { "run_ref": "{{customer_id}}-proof", "claim": "{{claim}}",
        "signed_off_by": "{{signed_off_by}}", "decision": "{{decision}}" } ] } } },
  "transitions": [{ "to": "done" }] }
```

Proven by `queryActivity completed` in the Temporal history, real rows arriving in
`process_state.context`, and the `qbr_artifacts` row above.

**Consequence for files 01–09: the deterministic half of every runbook in this set is buildable
today with no LLM in the loop at all.** Query, reconcile, count, compare to threshold, write
evidence — all `tool` nodes. That is most of what the "what's now deterministic" columns claim.

Two shape traps:
- `data_query` returns `{columns, rows}`, **not** a bare array. Every Part C skeleton in this set
  declares `"source_results": {"type": "array"}` — that is wrong and kills the run with
  `Process context failed schema validation: data/source_results must be array`. Declare it untyped:
  `"source_results": {}`.
- This deployment **requires a real registered `tool` name on every `type:"tool"` node**, even one
  that only sets `config.context_update`. A node with `config` and no `tool` is rejected 400
  (`tool node "publish" is missing tool`) — contradicting the docs' own `auto_approve` example. List
  what's actually available with `GET /tools`; do not assume a tool name from the docs (a
  `grading-proposer` referenced in docs does not exist here).

### `interaction` — for anything that genuinely needs a model

```json
{ "type": "interaction", "interaction": "Qbr_translate",
  "input": { "source_results": "{{source_results}}", "decision": "{{decision}}" },
  "writes": ["claim"],
  "transitions": [{ "to": "recommend" }] }
```

`interaction` points at a **registered, persisted** Interaction, which carries its own `environment`
and `model`. Creating one is three calls, not one — inline prompt objects are rejected with
`Cast to ObjectId failed`:

1. `POST /prompts` — `{name, role, content, content_type: "jst" | "handlebars" | "text"}`
2. `POST /interactions` — `{name, environment, model, result_schema, status}`
3. `PUT /interactions/{id}` — `{prompts: [{type: "template", template: "<promptObjectId>"}]}`

All three work under the API key. Test the Interaction standalone via `POST /execute` before wiring
it into a graph — that isolates prompt bugs from process bugs.

Prompt-authoring traps, both hit for real:
- Say **"Respond with ONLY a JSON object, no prose, no markdown fences."** Without it the model
  returns prose wrapped around fenced JSON and the run dies on
  `json_error: Unexpected non-whitespace character after JSON`.
- `{{source_results}}` renders nothing usable. Iterate: `{{#each source_results.rows}}`.

### `human_task` — the pause, and the only thing that resumes it

```json
{ "type": "human_task",
  "task": { "title": "Sign off before client write",
    "description": "Confirm you are the named approver before this is written to the client artifact.",
    "fields": [ { "name": "signed_off_by", "type": "string", "required": true, "label": "Signed off by" } ] },
  "writes": ["signed_off_by"],
  "transitions": [{ "to": "publish" }] }
```

Works exactly as both spikes hoped: the run parks, the task appears in the Task Inbox with its real
title/description/fields, the human's answer lands in `process_state.context` via `writes`, the run
resumes. `TaskField` types are plain `string | number | boolean | select | text` — no rich or
coloured content, so the Chooser's judgment has to survive as plain text.

---

## Part B — `type:"agent"` is dead on this deployment. Do not use it.

Every `agent` node fails in about one second, reproducibly, with `Child Workflow execution failed`.
The real error, from `/store/executions`:

```
Interaction Execution failed sys:ProcessAgentNode:
Bad Request: 400 - For in-code interactions, environment must be specified
```

Vertesia dispatches an agent node's inline prompt as an **ephemeral "in-code" interaction**, and this
deployment rejects those without an explicit environment. **Nothing in the process-definition schema
can supply one.** Confirmed against the live OpenAPI spec (`https://docs.vertesiahq.com/api-specs/vertesia`,
v1.4.0, no auth required, plain `curl`): there is no `environment` field anywhere in
`NodeDefinition`, `ProcessDefinitionBody`, or `ProcessRunConfig`.

Four schema-confirmed non-fixes, all tried, all zero effect:
`NodeDefinition.model` · `ProcessDefinitionBody.model` · `config: {environment, model}` on the run ·
a higher model tier.

**The substitution, applied to files 01–09:** every `type:"agent"` node becomes either a `tool` node
(if the work is deterministic — most of them are) or a registered `interaction` (if it genuinely
needs a model). There is no third option today.

---

## Part C — routing: `condition`, not `branch`

Both types are real and they are **not** interchangeable.

`condition` is pure if/else routing. It requires a default branch:
```json
{ "type": "condition",
  "branches": [
    { "to": "sign_off", "when": {"in": [{"var": "value.baseline_source"}, ["weak","negative","implausible"]]}, "label": "held internal" },
    { "to": "sign_off", "default": true } ] }
```

`branch` is BPMN-style structured parallel split/join — `branches: [{id, title, node: {...}}]` plus a
`join` — and has nothing to do with conditional routing.

**All fourteen routing nodes across files 01, 02, 03, 05, 06, 07 and 08 were `type:"branch"` where
they meant `type:"condition"`. Corrected 2026-09-16.** The `branches: [{to, when, default}]` *field
shape* from the earlier correction pass was right; the type *name* was wrong. `09` needed no change —
its approval step was already a direct `human_task`.

Still unproven, by node type: real `branch` (parallel split/join), `process` (subprocess), and every
external connector in every Part A table. (`foreach` **is** now proven — see Part H.)

---

## Part D — the traps that cost the most time

### `POST /tasks/{id}/complete` is a one-way door with a success response on it

**Never call it for a process task.** It returns 200 and marks the task completed — and does *not*
signal the workflow. The run stays parked forever, and the correct resume path then refuses with
`409 Conflict: Task is already completed`. This permanently stranded run
`6aaa999804c219d0fa59b508` at its `chooser` node. There is no recovery; start a new run.

The correct endpoint is `POST /agents/{run_id}/answer-task` with `{task_id, result}` — note `result`
is **required but absent from `AnswerProcessTaskPayload` in the published spec**. It then 401s under
an API key anyway (Part 0). So: **the Task Inbox UI is the only working way to answer a task.**

### Three ways a Task Inbox submit looks like it worked and didn't

1. **An unassigned task accepts a filled-in form and a Submit click with no error and no effect** —
   task stays `pending`, `result: null`. You must click **Take Task** first. Nothing on screen says so.
2. **The floating "Open Studio Assistant" button physically overlaps the Submit button** and eats the
   click; the Assistant panel opens instead of the form submitting. Workaround: click Submit
   programmatically, or scroll until Submit clears the floating button.
3. The node-details side panel intercepts clicks on the **Start/Run** button the same way. Close the
   panel, then re-find the button — a cached coordinate will not match the visual position.

**Therefore: never confirm a submit from the UI. Poll `GET /agents/{run_id}` for `current_node`.**

### Publishing forks the process to a new id, silently

Editing an already-published process creates a **new draft under a different id**. The toast says
"Process updated" and says nothing about the fork; `GET` on the id in your URL bar keeps returning
the old definition. The second save then fails with the truth:
`Process definition 6aaa63be… is not the latest draft. Update draft 6aaa70ef… instead.`

**After any save on a published process, re-list `GET /processes` to find the new head id. Never
trust the id in the URL bar.** (The QBR build burned through six revisions this way.)

### The Monaco Code tab needs coaxing to register a change

`window.monaco.editor.getModels()[0].setValue(json)` alone does not mark the editor dirty. Sequence
that works: `setValue` → click into the editor → `End` → type a space → `BackSpace` → wait ~3s →
click Save via a **freshly found** ref. Write flow-style JSON, not YAML — the editor's auto-indent
corrupts multi-line YAML.

After a save the editor re-renders the definition as YAML, so `JSON.parse(model.getValue())` fails
with `Unexpected token 'o'`. Don't parse-and-patch; `setValue` the whole definition fresh each time.

### `/agents?process=` and `?process_id=` filters are silently ignored

They return every run regardless. Filter client-side on each item's
`process_definition_snapshot.process`.

---

## Part E — the worked example, in full

The definition that ran. Model id and store id are this project's;
`Qbr_translate`/`Qbr_recommend` are the two registered Interactions from Part A.

```json
{
  "format_version": 1,
  "process": "qbr_advisor",
  "description": "Hybrid build: deterministic tool nodes for data, registered interactions for reasoning",
  "initial": "load_reviewed_state",
  "model": "locations/global/publishers/anthropic/models/claude-sonnet-4-6",
  "context": { "schema": { "type": "object", "properties": {
      "customer_id": { "type": "string" },
      "source_results": {},
      "continuity_rows": {},
      "decisions": { "type": "object" },
      "errors": { "type": "array" },
      "decision": { "type": "string" },
      "notes": { "type": "string" },
      "claim": { "type": "string" },
      "recommendation": { "type": "string" },
      "signed_off_by": { "type": "string" }
    }, "additionalProperties": true }, "initial": {} },
  "nodes": {
    "load_reviewed_state": { "type": "tool", "tool": "data_query",
      "input": { "store_id": "<storeId>", "sql": "SELECT * FROM findings" },
      "writes": ["source_results"], "transitions": [{ "to": "continuity" }] },
    "continuity": { "type": "tool", "tool": "data_query",
      "input": { "store_id": "<storeId>", "sql": "SELECT grade, count(*) AS n FROM findings GROUP BY grade" },
      "writes": ["continuity_rows"], "transitions": [{ "to": "chooser" }] },
    "chooser": { "type": "human_task",
      "task": { "title": "Chooser: which findings go in this QBR?",
        "description": "Select whether to include the loaded findings and say why. Unverified/unreviewed findings are blocked from the client artifact regardless of this choice.",
        "fields": [
          { "name": "decision", "type": "select", "required": true, "label": "Decision", "options": ["include", "exclude"] },
          { "name": "notes", "type": "string", "required": false, "label": "Notes" } ] },
      "writes": ["decision", "notes"], "transitions": [{ "to": "translate" }] },
    "translate": { "type": "interaction", "interaction": "Qbr_translate",
      "input": { "source_results": "{{source_results}}", "decision": "{{decision}}", "notes": "{{notes}}" },
      "writes": ["claim"], "transitions": [{ "to": "recommend" }] },
    "recommend": { "type": "interaction", "interaction": "Qbr_recommend",
      "input": { "claim": "{{claim}}" },
      "writes": ["recommendation"], "transitions": [{ "to": "value_frame" }] },
    "value_frame": { "type": "condition", "branches": [
        { "to": "sign_off", "when": {"in": [{"var": "value.baseline_source"}, ["weak","negative","implausible"]]}, "label": "held internal" },
        { "to": "sign_off", "default": true } ] },
    "sign_off": { "type": "human_task",
      "task": { "title": "Sign off before client write",
        "description": "Confirm you are the named approver for this QBR before it is written to the client-facing artifact.",
        "fields": [ { "name": "signed_off_by", "type": "string", "required": true, "label": "Signed off by" } ] },
      "writes": ["signed_off_by"], "transitions": [{ "to": "publish" }] },
    "publish": { "type": "tool", "tool": "data_import",
      "input": { "store_id": "<storeId>", "mode": "append", "message": "QBR Advisor proof run artifact",
        "tables": { "qbr_artifacts": { "source": "inline", "data": [
          { "run_ref": "{{customer_id}}-proof", "customer_id": "{{customer_id}}",
            "claim": "{{claim}}", "recommendation": "{{recommendation}}",
            "signed_off_by": "{{signed_off_by}}", "decision": "{{decision}}" } ] } } },
      "transitions": [{ "to": "done" }] },
    "done": { "type": "final", "title": "Done" }
  }
}
```

---

## Part F — definition of done for porting any of files 01–09

| Check | Pass condition |
|---|---|
| No `agent` nodes | Every one replaced by a `tool` node or a registered `interaction` |
| Routing | Every if/else node is `type:"condition"` with a `default: true` branch |
| Tool names real | Each `tool` value appears in `GET /tools`; arguments are in `input` |
| Context shapes | Anything fed by `data_query` is declared untyped (`{}`), not `array` |
| Interactions tested alone | Each passes `POST /execute` before being wired into the graph |
| Run verified by API | `GET /agents/{run_id}` shows `status: completed`, not a Process-tab badge |
| Write-back verified | The row is queried back out of the Data Store, not assumed from a node's success |

## Known opens — carried forward and newly introduced

- `⟨VERIFY⟩` real `branch` (parallel split/join) and `process` (subprocess) node types — `foreach` is proven, see Part H
- `⟨VERIFY⟩` the Source-Unavailable / empty-source path, written in 01 but never taken — see Part H
- `⟨VERIFY⟩` Whether a custom tool or MCP webhook can be registered as a `tool` node target —
  `/agent-runner/custom-tools` and `/agent-runner/mcp-tools` not yet read
- `⟨VERIFY⟩` Every external connector in every Part A table — still zero proven
- `⟨VERIFY⟩` Whether the `POST /processes` Invalid JWT blocker is fixable with a different role key
- **Architectural, not a verify:** answering a task is session-auth-only, so a HARNESS-side UI
  cannot post a human approval on a user's behalf with an API key. That is the next wall for
  `harness-laura-salesdemo.html`'s Chooser and sign-off steps, not a bug to route around.

## Sources

- Live run `6aaa9ab7050a8b507a3043b2` on process `6aaa9966050a8b507a3043b0`, 2026-09-16 — every
  pattern above either came from this definition or from an error it raised.
- `VALIDATION-NOTES.md` — the full chronological findings log, including the four schema-confirmed
  non-fixes for the agent-node blocker and the stranded run `6aaa999804c219d0fa59b508`.
- Vertesia OpenAPI spec v1.4.0, `https://docs.vertesiahq.com/api-specs/vertesia` — `ProcessNodeType`,
  `NodeDefinition`, `ProcessDefinitionBody`, `ProcessRunConfig`, `AnswerProcessTaskPayload`.
- Biscuit Tin Check spike, 2026-09-08 — proved `human_task` pause/resume; explicitly did **not**
  prove the Data Store write-back that Part A now does.

---

## Part G — second runbook ported: Environment Health Monitor (05), 2026-09-17

**The pattern generalises.** `05-environment-health-monitor.md` was built as an 11-node graph and run
to completion twice, for two different fictional customers, taking a **different branch each time**.
`[CS: VERIFIED — API-confirmed, rows re-queried after each run]`

| Run | Customer | gate | Branch taken | Recorded approver | Treatment |
|---|---|---|---|---|---|
| `6aaba6d3117f2ab90d40386b` | `fenwick-logistics` | 1 high-risk breach | `approve_action` (human) | Elizabeth Connor | `ticket_only` |
| `6aaba93d4cd995e36bbd822c` | `marlow-freight` | 0 | `auto_act` (routine) | `platform_default` | `approved_script` |

Graph: `resolve_scope → collect → compare → risk_gate → diagnose → plan ⇄ {approve_action → act_human
| auto_act} → report → done`. Process `6aaba9064cd995e36bbd822b` (v4). Seed data is fictional
(Fenwick Logistics, Marlow Freight — both already fictional names in the harness).

Two things this buys that the QBR graph did not:

- **Real two-way `condition` routing is now proven.** QBR's `value_frame` had both branches pointing
  at the same node, so divergent routing was never actually exercised. Here the same published graph
  sent one customer to a human and the other straight through, on a deterministic SQL count.
- **The deterministic half is genuinely deterministic.** `compare` is a SQL `JOIN` with the threshold
  comparison in the `WHERE` clause — 4 breaches out of 6 observations, correctly excluding the two
  passing assets. No model involved in deciding what breached. Only `diagnose` (one registered
  Interaction) touches an LLM, and its prompt forbids re-deciding breaches or inventing assets.

### New mechanism findings

**`condition` branches must not carry `label`.** A `label` key fails validation on save with a long
`oneOf` error (`BranchDefinition: must NOT have additional properties: label`). Only `to`, `when`,
`default`. (QBR v6 has `label` on its branches and saved — so either the validator tightened, or the
earlier save slipped through. Don't rely on it.)

**JsonLogic can index into a query result.** `{"var": "gate.rows.0.n"}` resolves correctly against a
`data_query` result written to context — dotted array indexing works. That makes "count something in
SQL, then branch on the number" a viable and fully deterministic gate pattern, which is what most of
the nine runbooks' guard steps actually need.

**`{{var}}` in a tool node's `input` is strict, and that is a trap for branching graphs.** A template
referencing a context field nothing has written yet is a hard, non-retryable failure:
`Process input template references missing context field "decision"`. It does **not** render empty.
So if one branch writes a field and the other doesn't, every downstream node that references it dies
on the second path. Good behaviour — it fails loudly rather than writing a blank into a client
artifact — but it means **every branch must produce the same context shape.**

**`config.context_update` works, and is gated by `writes`.** It is the fix for the above: a tool node
can set context fields directly, and it coexists with `input` on the same node. But it must declare
them, or you get `Process node attempted to write context without declared writes`. Working shape:

```json
{ "type": "tool", "tool": "data_import",
  "input": { "...": "..." },
  "config": { "context_update": { "decision": "approved_script", "approved_by": "platform_default" } },
  "writes": ["decision", "approved_by"] }
```

### Three Data Store findings that matter more than the graph

**`primary_key` is silently discarded on table creation.** The create payload was accepted with
`primary_key: ["action_id"]`; reading the table back shows `primary_key: null`, and the table object
carries only `name`, `column_count`, `row_count`, `tags`. **There is no primary-key enforcement.**
Same class of bug as Vertesia's dashboard tool silently dropping a `background` key — the API accepts
a field it does not honour. `[CS: VERIFIED — read back after creation]`

**`import` with `mode:"append"` is therefore not idempotent.** `health_actions` ended with **three
identical rows** for `marlow-freight-eh-a1`. Nothing rejected the duplicates.

**A failed run leaves its earlier writes behind.** Those three rows came from two *failed* runs plus
one successful one — both failures happened *after* `auto_act` had already written. There is no
transaction around a process run. **Any runbook that writes to a register needs its own idempotency
key and a re-run policy**; retrying a failed run silently double-counts. For a risk register this is
the single most consequential finding in this file.

### And one mistake worth keeping in the record

My first version of `compare` and `risk_gate` had **no customer filter** — `WHERE` clauses on the
threshold only. With one customer's data in the table it returned exactly the right answer and looked
correct. The moment a second customer existed, `risk_gate` counted Fenwick's high-risk breach while
running for Marlow and would have sent a routine job to a human approver citing another client's
asset. Every runbook in this set already states the rule ("customer/tenant ID is mandatory on every
cross-run object") and I still wrote it wrong, because **a single-tenant fixture cannot detect a
scoping bug.** Seed two customers before trusting any cross-run query.

### Operational note

`POST /data/{store}/tables` **exceeds its own response timeout but still completes** — the request
read-timed-out at 90s while all four tables were created within ~10 seconds. Poll `GET
/data/{store}/tables` to confirm; do not retry the create, or you will race it.

---

## Part H — third runbook ported: Incident Response (01), and `foreach` proven, 2026-09-17

**`foreach` works.** This was the highest-value unproven node type in the set — `01`, `02` and `07`
all need fan-out — and it behaves correctly. Run `6aabab0a3c7e2b90fee0ca52` on process
`6aabaada117f2ab90d403876` (v2), `status: completed`.
`[CS: VERIFIED — per-item results read out of run context, row written back and re-queried]`

Graph: `load_sources → fan_out (foreach) → signal_gate_node → coverage_check → diagnose →
approve_response → record → done`, with a `no_signal` default branch.

Fan-out over three fictional sources produced three children, each querying only its own source:

```
src-edr  status=fulfilled  rows=2
src-net  status=fulfilled  rows=1
src-uem  status=fulfilled  rows=1
```

The diagnosis then read all three and — unprompted by any rule beyond "say which signals are probably
unrelated" — correctly separated the story from the noise: a credential attack that succeeded at
06:52Z followed by a 2.1GB outbound transfer at 07:05Z (`confidence: high`), while explicitly setting
aside the low-severity missed patch window at 02:00Z as predating the attack and likely unrelated.
A named human then approved `contain_now`, and the incident row carries cause, confidence, the
recommended action and the approver.

### The real `foreach` contract

```json
{ "type": "foreach",
  "foreach": "sources.rows",
  "as": "src",
  "item_id": "{{src.source_id}}",
  "max_concurrency": 3,
  "failure_policy": "collect_errors",
  "node": { "type": "tool", "tool": "data_query",
    "input": { "store_id": "<storeId>",
      "sql": "SELECT ... WHERE customer_id='{{customer_id}}' AND source_id='{{src.source_id}}'" } },
  "collect": { "into": "per_source", "mode": "array",
    "include": ["status","index","item_id","output","error","child_run_id"] },
  "writes": ["per_source"],
  "transitions": [{ "to": "signal_gate_node" }] }
```

Details that are not guessable and cost a failed run each:

- **`collect.into` requires a matching `writes`.** Without it: `Process node attempted to write
  context without declared writes`. This completes a rule that now holds everywhere — **anything
  that lands a value in context must be declared in `writes`:** an `interaction` result, a tool's
  `config.context_update`, and a `foreach`'s `collect.into`. Three different mechanisms, one rule.
- **Collected item `status` is `fulfilled`**, not `ok` or `completed`. Branch on the right string.
- **The child node's template scope sees both the loop variable and the outer context** —
  `{{src.source_id}}` and `{{customer_id}}` resolve in the same SQL string. That is what makes
  per-item, customer-scoped queries possible in one node.
- **A prompt can consume the collected array directly** with nested iteration:
  `{{#each per_source}}` … `{{#each output.rows}}`. The grouping by source survives into the prompt,
  which is why the diagnosis could reason per-source rather than over one flat list.
- `failure_policy` is `fail_fast` | `collect_errors`; `collect.mode` is only ever `"array"`;
  `ParallelCollectField` also offers `item`, `branch_id`, `branch_title`, `context_update`,
  `child_workflow_id`, `child_workflow_run_id`.
- **`GET /agents/{run_id}/children` returned 0** despite three fan-out children having run. The
  per-item results are in `collect.into`, not on that endpoint — don't use it to verify fan-out.

### What this port does NOT prove

The `no_signal` branch of `coverage_check` was never taken — signals existed, so the gate was
non-zero every time. **The "Source-Unavailable is itself a finding" behaviour that `01`, `02` and `09`
all lean on is written but untested.** It would need a customer with sources and no signals, or a
deliberately broken source. Naming it rather than letting the completed run imply it.

Also still untested across the whole set: real `branch` (parallel split/join), `process`
(subprocess), and every external connector.

---

## Part I — where the three ports leave the nine runbooks

| Mechanism | Status | Proven by |
|---|---|---|
| `tool` + `input` (query and write) | **Proven** | 08, 05, 01 |
| `interaction` (registered, for reasoning) | **Proven** | 08, 05, 01 |
| `human_task` pause / answer / resume | **Proven** | Biscuit Tin, 08, 05, 01 |
| `condition` — two-way divergent routing | **Proven** | 05 (one customer to a human, one straight through) |
| `condition` — JsonLogic over a query result | **Proven** | 05, 01 (`{"var":"gate.rows.0.n"}`) |
| `foreach` fan-out + collect | **Proven** | 01 (3 children, per-item results) |
| `config.context_update` on a tool node | **Proven** | 05 |
| `final` | **Proven** | all three |
| `type:"agent"` | **Dead on this deployment** | see Part B |
| Source-Unavailable / empty-source handling | **Written, untested** | — |
| `branch` (parallel), `process` (subprocess) | **Untested** | — |
| Every external connector (N-central, Halo, Cove, Adlumin) | **Zero proven** | — |

**The honest read: the mechanism risk is now retired, and the connector risk is entirely intact.**
Nothing stops the remaining six runbooks from being built the way `05` and `01` were — but every one
of them is waiting on a real external source, not on Vertesia. Building more graphs against fictional
Data Store rows would add confidence in nothing.
