---
title: Studio Assistant prompts — build the EBR flow in Internal Training
project: Internal Training · 6aaa756400f24673335bf7b8 · namespace n-able-training
account: N-able · 667b104bcbcf13c7ecd694dc
written: 2026-09-17
source_of_truth: "EBR Coworker — Technica end-to-end engineering test runbook" (supplied 2026-09-17),
  which supersedes 08-qbr-advisor.md wherever the two disagree. Node syntax comes from
  10-proven-node-patterns.md.
why: The Studio Assistant runs under a session, so unlike our project API key it can create databases,
  create and publish processes, start runs, and answer human tasks. Everything below is constrained by
  what three live-fire ports established the hard way — paste it rather than letting it guess.
---

# How to use this

Open the Studio Assistant in the **Internal Training** project and paste one stage at a time. Wait for
each to finish and check what it actually built before moving on — one giant ask produces a
plausible-looking graph that fails on first run.

**After each stage, verify the thing it claims it did.** Vertesia's own surfaces have been wrong in
every spike so far: the Process tab's status badges and its "Open Tasks" counter both lie, and a write
node has reported success while the table stayed empty.

## Two things this build deliberately does not do

**It is not Technica.** The supplied runbook describes a real client cycle against a real (redacted)
spreadsheet. This build uses **fictional customers only** — per the prototyping rules, no real client
name, person or tenant goes into a prototype. Substitute two invented companies.

**It has no connectors.** As of 2026-08-27 the Technica test found 0 of 7 connectors reachable. Nothing
has changed that, and Vertesia cannot fix it — no connector to N-central, N-query, M365, Halo, Cove,
usecure, Adlumin or RocketCyber exists anywhere we can reach. So the Ingest step reads a **seeded table
standing in for the CSV tabs**, and the graph must be able to represent `Source-Unavailable` as a real
state rather than pretending everything resolved. That is faithful to invariant 4, not a shortcut.

## The five invariants the graph has to physically enforce

Carried from the runbook's C0. These are not preferences — if the built graph can violate one, it is
wrong:

1. **It proposes, a person decides.** No client-facing write without a named human sign-off.
2. **Two artifacts, never one with a redaction toggle.** Candid working notes and the client-facing
   register are separate writes to separate tables.
3. **Unverified is hard-blocked** from the client-facing artifact *regardless of sign-off*. A signature
   cannot override it.
4. **Absence of data is a finding.** An unreachable or stale source becomes `Source-Unavailable`,
   logged, never silently graded well.
5. **Every finding carries an evidence trace** — source, tool, pull time.

And one rule that is easy to get backwards: **`N/A`-graded rows are suppressed from the client-facing
surface on purpose. `Source-Unavailable` is never suppressed.** Two different behaviours that both look
like "hidden".

---

## Stage 1 — the data

> Work only in this project. **All data must be fictional** — invented company names, invented people,
> invented asset IDs. Never a real customer, tenant or person.
>
> Create a database called `ebr_register`, and in it these four tables:
>
> **`risk_rows`** — the register source, standing in for the client's own spreadsheet tabs:
> `id`, `customer_id`, `category`, `risk`, `grade`, `tier`, `owner`, `status`,
> `last_meeting_notes`, `meeting_notes`, `evidence_source`, `evidence_tool`, `evidence_pulled_at`,
> `first_seen` — all STRING.
>
> **`working_notes`** — the candid internal artifact:
> `run_ref`, `customer_id`, `finding_id`, `candid_note`, `grade`, `tier`, `included`, `reason` — all STRING.
>
> **`risk_register`** — the client-facing artifact:
> `run_ref`, `customer_id`, `finding_id`, `category`, `risk`, `grade`, `tier`, `owner`, `status`,
> `evidence_source`, `evidence_tool`, `evidence_pulled_at`, `first_seen`, `claim`, `signed_off_by`,
> `signed_at` — all STRING.
>
> **`liability_log`** — append-only record of declined risks:
> `entry_id`, `customer_id`, `finding_id`, `declined_by`, `declined_at`, `reason` — all STRING.
>
> Two platform facts that will each cost you a failed attempt:
> - Column types must come from: STRING, INTEGER, BIGINT, FLOAT, DOUBLE, DECIMAL, BOOLEAN, DATE,
>   TIMESTAMP, JSON. **`NUMBER` is rejected.**
> - Do not set a primary key. This platform **accepts a `primary_key` field and silently discards it**,
>   so there is no key enforcement and `append` imports are not idempotent. Design around it.
>
> Now seed `risk_rows` with about twelve fictional rows across **two different fictional customers** —
> two, because a single-customer fixture cannot detect a scoping bug, and this graph will have several
> cross-row queries.
>
> Use these exact value sets, which come from the real client artifact and are **not** the ones you
> might assume:
>
> - **`grade` is plain text `Low` | `Medium` | `High` | `N/A`.** It is *not* red/amber/green and not a
>   colour or a number. Include at least one `N/A` row — it exists to be suppressed later.
> - **`tier` is `Measured` | `Benchmarked` | `Estimated` | `Unverified` | `Source-Unavailable`.**
>   `Measured` = pulled from a connected source. `Benchmarked` = compared to a standard or last cycle.
>   `Estimated` = inferred or hand-supplied. `Unverified` = we will not guess. `Source-Unavailable` =
>   the source could not be reached, which is itself a finding.
>   Include **at least one `Unverified`** and **at least one `Source-Unavailable`** row. Both exist to
>   test that they are handled differently from each other and from `N/A`.
> - **`category`** — draw from: Risk Management, Incident Management, Supply Chain Security,
>   Engagement & Training, Asset Management, Data Security, User Management, Architecture &
>   Configuration, Vulnerability Management, Identity & Access Management, Logging & Monitoring.
>   Treat this as one cycle's observed set, **not a fixed taxonomy**.
> - **Do not invent a framework baseline column.** There is no NCSC 10 Steps or Cyber Essentials rubric
>   behind these grades. If you feel the urge to add a `baseline` field citing a standard, don't.
> - `last_meeting_notes` and `meeting_notes` carry prior-cycle history **per row** — continuity is
>   row-level, not a separate table or step. Fill them on most rows so continuity has something to read.
> - `evidence_source`, `evidence_tool`, `evidence_pulled_at` must be populated on every row that isn't
>   `Source-Unavailable`. Every finding carries its trace.
>
> When you're done, query the table back and show me the actual rows, plus a count by `grade` and by
> `tier` so I can see the spread.

---

## Stage 2 — the reasoning steps

> Create **registered** Interactions in this project. Register them properly — do **not** put an inline
> prompt in a process node. `type:"agent"` process nodes fail on this deployment: they dispatch as
> "in-code" interactions and are rejected for having no environment, and nothing in the process schema
> can supply one. This is not a style preference, it is a hard blocker.
>
> Four Interactions, each narrow:
>
> **`Ebr_translate`** — technical finding → business meaning. Input: `source_results` (a query result),
> `audience` (`cfo` or `owner`). Must follow the runbook's chain: *data → risk → what it means →
> consequences if unactioned*. Two registers: a CFO one and an owner one.
> **No graphs, no percentages, no jargon** in anything client-facing.
> Result schema: `{"claim": string, "consequence": string}`.
>
> **`Ebr_getting_business`** — expansion openings, drawn **only from the gaps actually present in the
> findings**. It may not invent an opening to make a pitch, and it must say so when the gaps don't
> support one. Input: `source_results`. Result: `{"openings": string, "basis": string}`.
>
> **`Ebr_state_of_union`** — the next 12 months: where you are → where you're going → what it costs.
> Cost and timeline have **no automatable source**, so it must present them as the account lead's
> judgment to fill, not as figures it knows. Input: `source_results`. Result:
> `{"where_you_are": string, "where_going": string, "cost_basis": string}`.
>
> **`Ebr_continuity`** — reads the `last_meeting_notes` / `meeting_notes` columns and says what changed
> since last cycle per row, and what didn't move. Input: `source_results`. Result:
> `{"changed": string, "unmoved": string}`.
>
> Rules every one of these prompts must follow:
> - Iterate rows explicitly with `{{#each source_results.rows}}`. A bare `{{source_results}}` renders
>   nothing usable.
> - **Never invent** a finding, number, asset, person, date or category not present in the input.
> - **Never re-grade.** The grade and tier are already decided by a person or a source; the model
>   explains them, it does not revise them.
> - State uncertainty plainly where the data doesn't support a firm claim.
> - Say nothing confident about a `Source-Unavailable` row except that the source could not be reached.
> - End with: **"Respond with ONLY a JSON object, no prose, no markdown fences."** Without this the
>   model wraps prose around fenced JSON and the run dies on a parse error.
>
> Then **test each one standalone** and show me the real output before we wire anything. Testing them
> alone separates prompt bugs from process bugs, which otherwise look identical.

---

## Stage 3 — the process

> Create and publish a process called `ebr_advisor`, using the database and Interactions above.
>
> The flow follows the runbook's own cycle order:
>
> | Node | Type | Purpose |
> |---|---|---|
> | `ingest` | `tool` `data_query` | all `risk_rows` for `{{customer_id}}` → writes `source_results` |
> | `coverage` | `tool` `data_query` | count rows where `tier='Source-Unavailable'` for this customer → writes `coverage` |
> | `continuity` | `interaction` `Ebr_continuity` | row-level delta from the meeting-notes columns → writes `changed`, `unmoved` |
> | `eligibility` | `tool` `data_query` | count rows where `tier='Unverified'` for this customer → writes `eligibility` |
> | `judge` | `tool` `data_query` | counts grouped by `grade` for this customer → writes `grade_counts` |
> | `translate` | `interaction` `Ebr_translate` | → writes `claim`, `consequence` |
> | `getting_business` | `interaction` `Ebr_getting_business` | → writes `openings`, `basis` |
> | `state_of_union` | `interaction` `Ebr_state_of_union` | → writes `where_you_are`, `where_going`, `cost_basis` |
> | `write_working_notes` | `tool` `data_import` | append **every** finding, candid, to `working_notes` |
> | `chooser` | `human_task` | include/exclude per finding + reason. Fields: `decision` (select include/exclude, required), `included_ids` (string), `declined_ids` (string), `reason` (string), `audience` (select cfo/owner, required) |
> | `liability` | `tool` `data_import` | append every declined finding to `liability_log` with who and when |
> | `unverified_gate` | `condition` | if `eligibility.rows.0.n` > 0 → `hold_review`, else default → `sign_off` |
> | `hold_review` | `human_task` | An Unverified finding exists. A person must confirm it is excluded from the client artifact. Field `hold_ack` (string, required). → `sign_off` |
> | `sign_off` | `human_task` | Named approver. Field `signed_off_by` (string, required) |
> | `publish_register` | `tool` `data_import` | append to `risk_register` — **eligible rows only** |
> | `done` | `final` | |
>
> ### The invariants, as graph structure
>
> - `write_working_notes` happens **before** `chooser` and includes everything. The candid artifact is
>   not filtered by the client decision.
> - `publish_register` is a **separate write to a separate table**. There is no single artifact with a
>   redaction flag.
> - `publish_register` must exclude any row whose `tier` is `Unverified`, and any row whose `grade` is
>   `N/A`. Do this in the **SQL that selects the rows**, not in a prompt and not in the UI — a rule a
>   model or a screen enforces is not enforced. `Unverified` is blocked because we won't stand behind
>   it; `N/A` is suppressed because the client's own convention is to omit it.
> - **`Source-Unavailable` rows are NOT excluded.** They appear in the client register saying the source
>   could not be reached. Absence of data is a finding, and hiding it is the failure mode this whole
>   rule exists to prevent.
> - Every row written to `risk_register` carries `evidence_source`, `evidence_tool`,
>   `evidence_pulled_at` and `first_seen`, plus `signed_off_by` and `signed_at`.
>
> ### Platform rules — each one of these has already caused a failed run
>
> 1. A `tool` node's arguments go in **`input`**, not `config`. The docs only ever show
>    `config.context_update`, which is misleading. `input` holds the real parameters, e.g.
>    `{"store_id": "...", "sql": "..."}`, and `{{var}}` interpolation works inside it.
> 2. Every `type:"tool"` node needs a **real registered tool name** (`data_query`, `data_import`). A
>    tool node with no `tool` field is rejected even if it only sets context.
> 3. **Anything that lands a value in context must be named in `writes`** — an interaction's result, a
>    tool's `config.context_update`, a `foreach`'s `collect.into`. Omit it and the run dies with
>    "Process node attempted to write context without declared writes".
> 4. Use **`type:"condition"`** for if/else, never `type:"branch"` (`branch` is BPMN parallel
>    split/join — a different feature). A condition's `branches` entries may contain **only** `to`,
>    `when` and `default`; a `label` key fails validation. Exactly one branch must be `"default": true`.
> 5. Anything fed by `data_query` must be declared **untyped** in the context schema —
>    `"source_results": {}`, not `{"type": "array"}`. The tool returns `{columns, rows}` and declaring
>    it an array kills the run on schema validation.
> 6. **`{{var}}` in a tool `input` is strict** — referencing a context field nothing has written is a
>    hard, non-retryable failure, not an empty string. So **every branch must leave context in the same
>    shape.** `hold_review` writes `hold_ack`; the default path skips it, so if anything downstream
>    references `hold_ack` you must set it on the other path too via `config.context_update` plus a
>    matching `writes`.
> 7. **Scope every query by `customer_id`** — including the counts and gates, not just the obvious
>    selects. An unscoped count silently includes the other customer's rows and looks perfectly correct
>    until a second customer exists. This is the single easiest way to ship a wrong client artifact.
>
> Publish it, start a programmatic run for one of the two fictional customers, answer `chooser`, answer
> `sign_off` (and `hold_review` if it routes there), and let it reach `done`.
>
> Then **query both `working_notes` and `risk_register` back out and show me the rows.** Don't tell me
> it worked because a node reported success — show me the rows. On this platform a write node has
> reported success while the table stayed empty, and an endpoint has returned HTTP 200 while doing
> nothing at all.

---

## What to check yourself, after

Six checks, in the order they're most likely to fail:

1. **The Unverified row is absent from `risk_register`** and present in `working_notes`. This is the
   whole eligibility rule. If a signature let it through, the graph is wrong.
2. **The `N/A` row is absent from `risk_register`** and present in `working_notes` — suppressed, not
   deleted.
3. **The `Source-Unavailable` row IS present in `risk_register`**, saying the source couldn't be
   reached. If it's missing, the graph is hiding absence, which is the exact failure mode invariant 4
   exists to prevent.
4. **Every `risk_register` row carries source, tool and pull time.**
5. **Grades read `Low`/`Medium`/`High`** — if anything says red/amber/green, the Assistant substituted
   its own assumption for the client's actual scale.
6. **The run reached `done`** — read that from the run's own record, not a badge on the Process page.

Then run it for the **second** fictional customer. If that run's counts or gates reflect the first
customer's rows, a query is unscoped — and that bug is invisible with one customer in the table.

## If it fails

The authoritative error surface is **Executions** (`/store/executions`) — the per-activity Temporal
history, which shows the real thrown exception. The Observability tab is second best. The Process tab's
badges are not trustworthy. Ask the Assistant to read the execution history rather than guess at a fix.

## What this build does and doesn't prove

It proves the *cycle* is expressible as a governed graph: the two artifacts stay separate, the
eligibility block is enforced in SQL rather than in a prompt, absence stays visible, and no
client-facing write happens without a named approver.

It proves nothing about connectors — all seven remain unreachable, so `Measured` here means "measured
in a fixture". And per the runbook's own C4: **this is a plumbing test.** No output of it should go
anywhere near a client, and the grades in it were reviewed by nobody.
