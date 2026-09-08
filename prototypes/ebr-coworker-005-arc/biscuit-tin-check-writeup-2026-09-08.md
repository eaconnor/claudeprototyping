# The Biscuit Tin Check — what it is, how to run it, how it works

**Purpose:** proves the one mechanism every "Native" sign-off badge on the EBR harness mod
([harness-vertesia-mod-2026-09-07.html](harness-vertesia-mod-2026-09-07.html)) currently rests on —
Vertesia's `human_task` node pausing a Process run until a person answers it, then resuming.
Fictional, trivial, isolated from the real `findings` table on purpose — nothing here touches
register test data.

Two parts below: **(A)** a runbook for an engineer to reproduce and test it themselves, **(B)** a
plain-language walkthrough of what actually happens, mechanism by mechanism.

**Sources** — nothing here is guessed: live-tested against the real sandbox project this session
(2026-09-08) — full run log in
[virtual-munching-rivest.md](/Users/bethconnor/.claude/plans/virtual-munching-rivest.md) under
"RESULTS — Biscuit Tin Check" — cross-checked against Vertesia's OpenAPI spec (267 endpoints,
v1.4.0, [docs.vertesiahq.com](https://docs.vertesiahq.com/)) read directly, and verified a second
way (API query, not just UI screenshot) at every step marked `[CS: VERIFIED]`. Related reading:
[vertesia-wire-today-report-2026-09-08.md](vertesia-wire-today-report-2026-09-08.md) (team-facing
readiness chart this test feeds into) and
[track-b-full-concept-rail-2026-09-07.md](track-b-full-concept-rail-2026-09-07.md) (the Bradley
rail that first flagged this as the highest-risk untested assumption).

---

## Part A — Engineer test runbook

### Prerequisites

- Credentials: [.secrets/vertesia-credentials.json](.secrets/vertesia-credentials.json)
  (gitignored — shape only, see
  [.secrets/vertesia-credentials.json.example](.secrets/vertesia-credentials.json.example)) —
  `api_base`, `bearer_token`, `project_id`, `store_id`. This is a `developer`-role API key scoped
  to the **EBR Coworker Sandbox** project.
- Console access: [cloud.us1.vertesia.io](https://cloud.us1.vertesia.io) → **N-able** →
  **EBR Coworker Sandbox** project, same login. Direct link to this test's process:
  [cloud.us1.vertesia.io/store/processes?p=6a9eb20e6537c3c8b07bb3d3&a=667b104bcbcf13c7ecd694dc](https://cloud.us1.vertesia.io/store/processes?p=6a9eb20e6537c3c8b07bb3d3&a=667b104bcbcf13c7ecd694dc)
  — "Biscuit Tin Check," published v1. Task Inbox:
  [cloud.us1.vertesia.io/store/tasks?p=6a9eb20e6537c3c8b07bb3d3&a=667b104bcbcf13c7ecd694dc](https://cloud.us1.vertesia.io/store/tasks?p=6a9eb20e6537c3c8b07bb3d3&a=667b104bcbcf13c7ecd694dc).

### Known blocker — read this first

**`POST /processes` 503s under the API key.** Confirmed `[CS: VERIFIED]` this session:

```
503 Service Unavailable: Failed to load process validation catalogs: Invalid JWT
```

This is universal — even a one-node trivial process definition 503s identically — and it is
**isolated to that one endpoint**. `GET /processes`, `GET /tasks`, `POST /data/{storeId}/import`
all succeed on the same key in the same window. Session-authenticated Studio UI can create and
publish processes; the API key currently cannot. **File a Vertesia support ticket before assuming
any programmatic build can create processes on this key.** Step 3 below works around it by using
the Studio UI's own Code tab instead of the API.

### Step 1 — create the isolated table (API, works fine)

```bash
curl -X POST "$API_BASE/data/$STORE_ID/tables" \
  -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" \
  -d '{
    "tables": [{
      "name": "biscuit_check",
      "columns": [
        {"name": "id", "type": "STRING", "primary_key": true},
        {"name": "item", "type": "STRING"},
        {"name": "status", "type": "STRING"},
        {"name": "note", "type": "STRING"}
      ]
    }],
    "message": "Biscuit Tin Check test — create isolated test table"
  }'
```

Gotchas that will 400 if you skip them: the outer body must be `{tables:[...], message}`, not a
bare table object. `columns[].type` must be **uppercase** (`STRING`, not `string`) — the error
message names the valid enum if you get it wrong.

Expect `201` and the table echoed back with `row_count: 0`.

### Step 2 — seed one row via `import` (not `mutate`)

```bash
curl -X POST "$API_BASE/data/$STORE_ID/import" \
  -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" \
  -d '{
    "tables": {
      "biscuit_check": {
        "source": "inline",
        "data": [{"id": "b1", "item": "Digestives", "status": "pending", "note": "tin looked light on Tuesday"}]
      }
    },
    "mode": "append",
    "message": "Biscuit Tin Check test — seed one row"
  }'
```

`mutate` only accepts UPDATE/DELETE per its own schema — `import` with `mode:"append"` is the real
insert path. Expect `200`, `rows_imported: 1`, and a `version_id`.

### Step 3 — create + publish the Process (Studio UI, not API)

Since `POST /processes` 503s on the key, do this in the console:

1. `https://cloud.us1.vertesia.io` → **Processes** (the "preview" one, not "legacy") → **+ Create**
   → name it, e.g. "Biscuit Tin Check" → Create.
2. Open the **Code** tab. Replace the default draft with:

```json
{
  "format_version": 1,
  "process": "biscuit_tin_check",
  "description": "Biscuit Tin Check test runbook",
  "initial": "ask",
  "context": {
    "schema": {
      "type": "object",
      "properties": { "decision": { "type": "string" }, "note": { "type": "string" } },
      "additionalProperties": true
    },
    "initial": {}
  },
  "nodes": {
    "ask": {
      "type": "human_task",
      "title": "Restock the biscuits?",
      "task": {
        "title": "Restock the biscuits?",
        "description": "The tin looked light on Tuesday. Restock or skip this cycle?",
        "fields": [
          { "name": "decision", "type": "select", "required": true, "label": "Decision", "options": ["restock", "skip"] },
          { "name": "note", "type": "string", "required": false, "label": "Note" }
        ]
      },
      "writes": ["decision", "note"],
      "transitions": [{ "to": "done" }]
    },
    "done": { "type": "final", "title": "Done" }
  }
}
```

   **Editor gotcha:** the Studio Code editor auto-indents on newline and will corrupt multi-line
   YAML if you type it line-by-line (compounding indentation breaks the parser). Paste it, or type
   it as single-line flow-style JSON (shown above) — whitespace doesn't matter to JSON, so the
   auto-indent can't break it. If you get a stray trailing quote from the editor's auto-close-quote
   behavior, delete it manually before Save.

3. Click **Save**, then **Publish** → confirm "Publish as immutable version 1."

### Step 4 — start a run, leave inputs blank

Processes → Run → select **Biscuit Tin Check** → leave **Decision** and **Note** empty (that's the
point — it has to actually pause, not get pre-filled) → **Run**.

Confirm: `Status: running`, `Current Node: ask`.

**UI bug to know about, not worry about:** the Process run page's own "Open Tasks" counter reads
`0` and its "Tasks" sub-tab shows nothing, even while a real task is waiting. That counter is wrong.
The actual Task Inbox is correct — check there instead.

### Step 5 — answer it in the Task Inbox (not a scripted call)

Studio sidebar → **Task Inbox** → the task is sitting there, `pending`, title "Restock the
biscuits?", with the exact fields defined above (`Decision` dropdown, `Note` text). Click it →
pick a decision → optionally add a note → **Submit**.

We deliberately did **not** script this via `POST /agents/{runId}/answer-task` — the payload shape
for that call was never pinned down with confidence, and the console UI is the trustworthy path.
Confirming that scripted call is real work still worth doing, separately.

### Step 6 — verify for real (don't trust the UI's word for it)

```bash
# Did the run actually reach the final node?
curl "$API_BASE/agents?run_id=$RUN_ID" -H "Authorization: Bearer $TOKEN"
# -> process_state.current_node: "done", status: "completed"
# -> process_state.context: {"decision":"restock","note":"..."} — the human's answer, written
#    into the process's own context by the node's `writes` field.

# Did the task record itself carry the answer, independent of the run?
curl "$API_BASE/tasks?status=completed" -H "Authorization: Bearer $TOKEN"
# -> result: {"decision":"restock","note":"..."}, source: {type:"process", run_id, node:"ask"}

# Did the answer land in the biscuit_check TABLE row?
curl -X POST "$API_BASE/data/$STORE_ID/query" -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" -d '{"sql":"SELECT * FROM biscuit_check"}'
# -> status is still "pending". This is EXPECTED, not a bug — see note below.
```

**Important — don't be confused by this:** the row's `status` column will still say `pending`
after you complete the task. This 2-node process only writes the answer into the *process run's*
context, not into the *table*. To actually persist a decision into a Data Store row (which is what
a real EBR sign-off screen needs), you'd add a third node — a `tool` node calling `mutate` —
between `ask` and `done`, using `{{context.decision}}` in the SQL. **Not built or tested here.**
That's the next real spike, not this one.

### Pass/fail summary

| Check | Result |
|---|---|
| Table create + seed row (API) | ✅ `[CS: VERIFIED]` |
| Process create/publish via API key | ❌ blocked, 503 "Invalid JWT" — file a ticket |
| Process create/publish via Studio UI | ✅ `[CS: VERIFIED]` |
| Run pauses at `human_task` | ✅ `[CS: VERIFIED]` |
| Task appears correctly in Task Inbox | ✅ `[CS: VERIFIED]` (Process page's own counter is wrong — ignore it) |
| Answer via UI resumes the run to `final` | ✅ `[CS: VERIFIED]` |
| Answer written into run context (`writes`) | ✅ `[CS: VERIFIED]` |
| Answer written into the Data Store row | ❌ not attempted — needs a third `mutate` node |
| Scripted `answer-task` API call | ❌ not attempted — payload shape still unconfirmed |

---

## Part B — how it works, plainly

A Vertesia Process is a flowchart. Two boxes matter here:

- `human_task` — stops. Waits for a person to answer. No timeout, no error, just parked.
- `final` — done. Run's over.

Biscuit Tin Check: one box, one arrow, one exit. "Restock the biscuits?" → Done.

**Start it** → Vertesia spins up a live instance, walks it to box one, hits `human_task`, stops.
Sits in `running`, parked at `ask`, however long that takes.

**The question lands in the Task Inbox** — one shared queue, every paused task from every
process, regardless of which flowchart it came from. Title, description, whatever fields the
process asked for. Here: a decision dropdown, an optional note.

**Answer it** → two things at once: the task itself gets marked `completed` with a permanent
record of what you picked, and the run wakes up, takes the answer, walks the only arrow it has —
to Done. Run's finished.

**Why it matters:** the Chooser/sign-off step — Vanessa has to approve before Fenwick sees
anything — is the same shape. Stop, wait for a specific human, continue once they've decided.
Every "Native" sign-off badge on the harness mod is claiming this exact mechanism. Now it's
proven, not assumed.

**Two gaps, not swept under anything:**

1. The answer doesn't persist anywhere real yet. It lives in the run's memory and the task's own
   record — not in the findings table. A real sign-off needs "Vanessa approved this, on this date"
   sitting in the table, queryable. That's one more box in the flowchart (a `mutate` step), not
   built here.
2. Never tested answering by code. Did it by hand in the Task Inbox on purpose — nobody had
   confirmed the payload shape for a scripted answer, and guessing at it on the sign-off screen is
   the wrong place to find out you were wrong. Open question, not a solved one.

**The one real surprise:** the API key that did everything else couldn't create the Process
itself — that only worked through the actual website. Same-looking API calls, not the same door.
