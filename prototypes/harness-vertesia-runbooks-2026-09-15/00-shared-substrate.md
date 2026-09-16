---
title: HARNESS — Vertesia-Native Coworker Runbook Set — shared substrate
status: internal working draft, 15 September 2026. Split from one Copilot-authored document into
  this folder — see VALIDATION-NOTES.md for two corrections made to the skeleton JSON during the split.
read_first: every file in this folder (01–09) assumes you've read this one
revised: 2026-09-16 — added 10-proven-node-patterns.md (the only live-fire-verified file in the set);
  routing nodes retyped branch→condition throughout
---

# Read this first

This set deliberately mirrors the structure and epistemic discipline of ["EBR Coworker — Technica:
the Vertesia-native version"](../ebr-coworker-005-arc/md-coworker/SUPER-RUNBOOK.technica.vertesia.md).
It does not compress each coworker into a feature brief. Each runbook explains why a separate
Vertesia port is needed, what becomes structurally deterministic, what must be spiked first, which
small agents feed the process, how state should live in the Data Store, how the cycle maps to
Process nodes, what proves completion, and which questions remain open.

## Shared substrate facts

- `[CS: VERIFIED — supplied Technica runbook, 2026-09-08]` Data Store `query`, `mutate`, append
  `import`, `tables`, `versions`, and `human_task` → Task Inbox → `answer-task` pause/resume are
  confirmed against a real run.
- `[CS: VERIFIED — supplied Technica runbook, 2026-09-08]` `POST /processes` returns 503 "Failed to
  load process validation catalogs: Invalid JWT" under a developer-role API key. Studio Code/session
  auth is the known build path unless a fresh test proves the API path fixed.
- `[CS: UNKNOWN]` No evidence proves a Vertesia `tool` or `agent` can call Halo, N-query, M365, Cove,
  Adlumin, or an alert stream with the required auth and tenant scoping. Every connector claim in
  files 01–09 is a design proposal until this is spiked.

## Shared invariants (every runbook in this set inherits these — not restated as new)

1. Propose, human decides.
2. Two artifacts, never a redact flag.
3. Unverified is structurally hard-blocked from client-facing writes.
4. Absence is a finding, never a silent skip.
5. Every mutation has a version and actor trail; approval precedes mutation.
6. Narrow connector/domain agents are independently tested before the orchestrating Process relies
   on them.
7. Dynamic scope is evaluated per run from organization, branch, tag, OS, asset, or policy criteria
   rather than copied static lists.

## Shared first spike — required before any runbook in this set is "wired," not just designed

Before any runbook below is described as wired, publish one minimal Process in Studio that calls
the lowest-risk real external source, returns tenant/customer-scoped data into
`process_state.context`, and is independently confirmed through the Agent Run artifact. **Halo is
the nominated first candidate** — real MCP-shaped server, no bridge to build first (unlike Cove). A
successful HTTP status without validated customer scope is not a pass — the same bar the Biscuit Tin
Check held itself to.

## The nine runbooks in this set

1. [Incident Response Coworker](01-incident-response.md)
2. [Incident Response Analyst / Ticket RCA](02-ticket-rca.md)
3. [Ticket Triage & Dispatch Coworker](03-ticket-triage-dispatch.md)
4. [Security Tabletop Coworker](04-security-tabletop.md)
5. [Environment Health Monitor](05-environment-health-monitor.md)
6. [Vulnerability Assessment & Prioritization Coworker](06-vulnerability-assessment.md)
7. [Alert Flood Suppressor](07-alert-flood-suppressor.md)
8. [QBR Advisor / Business Review Narrative](08-qbr-advisor.md)
9. [Backup Verification & Recovery Readiness Coworker](09-backup-verification-recovery.md)

Each file below repeats Part 0 (the blocker + the spike) in full — this is deliberate, matching how
`ebr-coworker.runbook.technica.md` is self-contained so any one file can be dropped into a session
on its own. The shared facts above are the canonical version if any copy drifts.

## The tenth file — read it before editing any of the nine

10. [**Proven Node Patterns**](10-proven-node-patterns.md) — added 2026-09-16.

The nine runbooks above are design proposals, and each one's skeleton says so in its own disclaimer.
File 10 is the exception: it is built from the QBR Advisor graph hand-built in Studio and **run to
completion** on 2026-09-16 — real data in, a real human pause, real model-written narrative, and a
real row written back to a Data Store table (run `6aaa9ab7050a8b507a3043b2`, `status: completed`).
`[CS: VERIFIED — API-confirmed after the run]`

Three of its findings change how the nine above should be read:

- **`type:"agent"` does not work on this deployment.** It dispatches as an ephemeral "in-code"
  interaction and is rejected — `For in-code interactions, environment must be specified` — and
  nothing in the process-definition schema can supply an environment. Replace every agent node with
  a `tool` node or a registered `interaction`.
- **`tool` nodes take their arguments in `input`** (undocumented; the docs only show
  `config.context_update`). This means the deterministic half of every runbook here — query,
  reconcile, count, compare, write evidence — is buildable today with no model in the loop.
- **Answering a human task is session-auth-only.** `answer-task` 401s under an API key, and
  `POST /tasks/{id}/complete` returns 200 while silently failing to resume the run — it strands the
  process permanently. The Task Inbox UI is the only working path.

See [VALIDATION-NOTES.md](VALIDATION-NOTES.md) for the full chronological log — what was checked,
what was tried and failed, and the skeleton-JSON corrections applied throughout. Two corrections have
now landed across the set: routing nodes need `branches`+`JsonLogicRule` rather than `transitions`
**and must be `type:"condition"`, not `type:"branch"`** (both are real types; `branch` is BPMN
parallel split/join, retyped across all nine files 2026-09-16); and steps described as "foreach X"
need an actual `foreach` node, not just prose.
