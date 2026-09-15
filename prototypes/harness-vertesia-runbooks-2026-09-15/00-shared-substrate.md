---
title: HARNESS — Vertesia-Native Coworker Runbook Set — shared substrate
status: internal working draft, 15 September 2026. Split from one Copilot-authored document into
  this folder — see VALIDATION-NOTES.md for two corrections made to the skeleton JSON during the split.
read_first: every file in this folder (01–09) assumes you've read this one
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

See [VALIDATION-NOTES.md](VALIDATION-NOTES.md) for what was checked against this session's actual
verified evidence, and the two skeleton-JSON corrections applied throughout (branch nodes need
`branches`+`JsonLogicRule`, not `transitions`; steps described as "foreach X" need an actual
`foreach` node, not just prose).
