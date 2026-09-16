---
title: Proven Node Patterns — the only runbook in this set built from a graph that actually ran
part_of: HARNESS Vertesia-Native Coworker Runbook Set — see 00-shared-substrate.md
status: live-fire verified 2026-09-16 — run 6aaa9ab7050a8b507a3043b2, status completed
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

**Two blockers are confirmed unchanged.** `[CS: VERIFIED — retested 2026-09-16]`

1. `POST /processes` and `PUT /processes` still 503 with `Failed to load process validation
   catalogs: Invalid JWT` under the project API key. **Processes are built in the Studio Code tab,
   by hand, under session auth.** There is no API path, and no endpoint in the published OpenAPI
   spec for *starting* a run either — runs start from the UI.
2. Answering a human task is session-auth-only. `POST /agents/{run_id}/answer-task` returns
   `401 Invalid or expired on_behalf_of token`. An API key cannot act on behalf of a user.

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

Still unproven, by node type: `foreach`, real `branch` (parallel split/join), `process`
(subprocess), and every external connector in every Part A table.

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

- `⟨VERIFY⟩` `foreach`, real `branch` (parallel split/join), and `process` (subprocess) node types
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
