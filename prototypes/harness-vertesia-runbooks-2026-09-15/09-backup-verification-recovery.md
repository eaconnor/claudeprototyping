---
title: Backup Verification & Recovery Readiness Coworker — the Vertesia-native version
part_of: HARNESS Vertesia-Native Coworker Runbook Set — see 00-shared-substrate.md
corrected: 2026-09-15 — skeleton unchanged (no branch/foreach mismatch found here); see VALIDATION-NOTES.md
---

# Backup Verification & Recovery Readiness Coworker — the Vertesia-native version

## Why this file exists, separately from the Harness concept

The prototype can describe Cove jobs and restore tests, but the supplied Technica source
explicitly says the Cove bridge does not exist. A real Vertesia runbook must therefore keep the
connector unbuilt, refuse to infer health from absence, reconcile protected assets to expected
coverage, distinguish job success from restore evidence, and require explicit authorization for
any drill or production recovery.

## What "more deterministic" means here, concretely

Coverage reconciliation, source-age checks, failed/missing/unmapped states, drill approval,
validation, and evidence writes become structural. Business criticality, recovery objectives, and
acceptance of residual risk remain decisions.

---

## Part 0 — read this before anything else

**The blocker carried over from the Technica session.** `[CS: VERIFIED — supplied Technica runbook]`
Process creation through a developer-role API key was blocked by the reported Invalid JWT catalog
error. Build/publish in Studio Code unless a fresh test proves the API path is fixed.

**The spike this runbook is built on — and the one it still needs.** The Data Store and human-task
substrate is supported by the supplied live-fire test. The external connectors and action tools are
not. Before trusting Part A, prove the narrowest source agent in a real published Process, return
real customer-scoped data into `process_state.context`, and verify its output artifact
independently. Any action-writing agent also needs a dry-run, approval, read-after-write, and
validation proof. `[CS: UNKNOWN]` All connector and write capabilities below are design proposals
until their specific spike passes.

---

## Part A — spec a collection of agents, not one process wired to everything

| Agent | Feeds | Vertesia shape | Blocker | Pass condition |
|---|---|---|---|---|
| `cove-backup-checker` | Jobs, policy, restore evidence | Agent against REST bridge | **Bridge does not exist — do not stand up until a real call passes** | — |
| `nquery-asset-puller` | Expected protected assets | N-query agent | Scope/auth | Asset population proof |
| `halo-ticket-puller`/writer | Existing failures and work | Halo agent/tool | Write proof | IDs/read-back |
| `recovery-expert` | Plan/drill proposal | Bounded agent | RTO/RPO source | Proposal cites policy |

**Not agents — governed context or human authority:**

| Source/decision | Status | Vertesia handling |
|---|---|---|
| Required coverage and RTO/RPO | Customer policy/human | Versioned source |
| Production restore approval | Authorized human | `human_task` |

**Part A exit criteria:** at least one real external-source spike has passed; every agent claimed
wired has a real Agent Run and independently inspected artifact proving the correct customer/tenant
scope; every action agent has an approved test and read-after-write/validation evidence. A Studio
Assistant chat or hand-entered sample does not count. **`cove-backup-checker` specifically stays
absent from this list until the REST bridge is built and independently proven — the same posture
the supplied Technica source already took toward Cove.**

---

## Part B — load operational state into the Data Store

| Table | Minimum fields |
|---|---|
| `backup_expectations` | customer_id, asset/service, required_policy, rto, rpo, source, approved_by |
| `backup_observations` | asset/service, job_id, status, completed_at, restore_test_at, artifact_ref |
| `backup_gaps` | expectation_id, gap_type, tier, owner, status |
| `recovery_drills` | id, scope, environment, approved_by, started_at, outcome, validation |
| `backup_actions` | gap_id, treatment, ticket/action_ref, before, after |

**Shared Data Store rules:** use append `import` for initial seed rows, never `mutate` as insert;
mutations retain versions and actor/time context; customer/tenant ID is mandatory on every
cross-run object; source time and artifact reference travel with every measured claim; Unverified
and suppressed records remain queryable internally — never deleted to make the client view clean.

**Part B exit criteria:** every table can be queried directly; fixture rows reconcile to the source
artifact; customer scoping is visible in each row; a version is created by a test mutation; any
learned correction or policy is read at the start of the next run rather than left in prose.

---

## Part C — the cycle as a Process graph

| Original rule/step | Vertesia node | What is now deterministic | What still needs a person |
|---|---|---|---|
| Resolve expectations | `query` policy + scope | Required denominator fixed | Human owns policy |
| Pull evidence | Cove agent | No bridge means Source-Unavailable | none |
| Reconcile | Deterministic matching | Missing/unmapped visible | Human repairs mapping |
| Assess | Rules + `agent` explanation | Job success ≠ restore proof | Human validates criticality |
| Plan | Agent proposal | Names environment, rollback, validation | Human edits |
| Approve drill/action | `branch` → `human_task` | Production-impact path cannot bypass | Authorized approver |
| Execute/validate | `tool` + re-query | Failed test cannot reach success | Business owner confirms usability |
| Handoff | Finding, ticket, evidence write | History retained | Human signs external claim |

### Skeleton — illustrative, not a validated production graph

```json
{
  "format_version": 1,
  "process": "backup_verification",
  "initial": "resolve_expectations",
  "context": {
    "schema": { "type": "object", "properties": {
      "customer_id": { "type": "string" },
      "source_results": { "type": "array" },
      "decisions": { "type": "object" },
      "errors": { "type": "array" }
    }},
    "initial": {}
  },
  "nodes": {
    "resolve_expectations": { "type": "tool", "human_description": "Required denominator fixed",
      "transitions": [{ "to": "pull_evidence" }] },
    "pull_evidence": { "type": "agent", "human_description": "No bridge means Source-Unavailable",
      "transitions": [{ "to": "reconcile" }] },
    "reconcile": { "type": "tool", "human_description": "Missing/unmapped visible",
      "transitions": [{ "to": "assess" }] },
    "assess": { "type": "agent", "human_description": "Job success != restore proof",
      "transitions": [{ "to": "plan" }] },
    "plan": { "type": "agent", "human_description": "Names environment, rollback, validation",
      "transitions": [{ "to": "approve_drill_action" }] },
    "approve_drill_action": { "type": "human_task", "human_description": "Production-impact path cannot bypass",
      "transitions": [{ "to": "execute_validate" }] },
    "execute_validate": { "type": "tool", "human_description": "Failed test cannot reach success",
      "transitions": [{ "to": "handoff" }] },
    "handoff": { "type": "tool", "human_description": "History retained",
      "transitions": [{ "to": "done" }] },
    "done": { "type": "final" }
  }
}
```

The node names, tool bindings, agent IDs, state paths, and `JsonLogicRule` conditions above are
placeholders. Preserve the sequence and guards; replace the syntax only with definitions proven in
Studio. Do not "fix" unknown Vertesia syntax by guessing. **This is the one skeleton in the set
that did not need a `branches`/`foreach` correction** — its `approve_drill_action` step is already
correctly a direct `human_task`, not a `branch`-typed node standing in for one — see
VALIDATION-NOTES.md.

---

## Part D — definition of done, in Vertesia terms

| Check | Pass condition |
|---|---|
| Connector honesty | No agent exists until Cove bridge proves real data |
| Coverage | Expected vs. observed population is queryable |
| Restore evidence | Health claim includes current dated restore evidence |
| Drill | Approval, timeline, outcome, and validation are retained |
| Handoff | Gaps reach risk register and work system |

## Known opens — carried forward and newly introduced

- `⟨VERIFY⟩` Cove bridge/API/auth
- `⟨VERIFY⟩` Authoritative RTO/RPO source
- `⟨VERIFY⟩` Safe test environment
- `⟨VERIFY⟩` Scope of DR orchestration

## Sources

- Supplied Technica EBR port: Cove bridge unbuilt, never fake tool count.
- Harness prototype Backup & Recovery Review concept.
- Supplied "EBR Coworker — Technica: the Vertesia-native version" for the shared Vertesia substrate, invariants, spike discipline, and evidence labels.
