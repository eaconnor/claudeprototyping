---
title: Environment Health Monitor — the Vertesia-native version
part_of: HARNESS Vertesia-Native Coworker Runbook Set — see 00-shared-substrate.md
corrected: 2026-09-15 — skeleton's branch nodes fixed to real Vertesia node shape; see VALIDATION-NOTES.md
---

# Environment Health Monitor — the Vertesia-native version

## Why this file exists, separately from the Harness concept

"Continuously sweep, auto-fix routine drift, open tickets for judgment" spans data collection,
dynamic targeting, policy, action risk, script execution, validation, scheduling, and
notifications. None should be hidden behind a single agent. This port separates those
responsibilities and does not claim continuous execution until Vertesia scheduling is proven.

## What "more deterministic" means here, concretely

Scope resolution, threshold comparisons, allowed-script lookup, risk routing, action approval,
read-after-write validation, and failure escalation become structural. Diagnosis and business
prioritization stay proposals.

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
| `nquery-health-puller` | Inventory, telemetry, patch, posture, hierarchy | N-query agent | Auth + scope | Scoped rows |
| `lifecycle-expert` | EOL/refresh interpretation | Bounded agent | Authoritative lifecycle source | Source-linked advice |
| `approved-script-reader` | Script metadata and risk | Data Store/tool | Catalog schema | Active approved version |
| `script-executor` | Runtime action | Tool agent | Execution capability | Action + validation artifact |
| `halo-ticket-writer` | Judgment work | Halo tool | Write support | Ticket read-back |

**Not agents — governed context or human authority:**

| Source/decision | Status | Vertesia handling |
|---|---|---|
| Targeting rules | Operator configuration | Organization/branch/tag/OS/device criteria |
| Automatic-fix policy | Admin decision | Risk table + acknowledgment |

**Part A exit criteria:** at least one real external-source spike has passed; every agent claimed
wired has a real Agent Run and independently inspected artifact proving the correct customer/tenant
scope; every action agent has an approved test and read-after-write/validation evidence. A Studio
Assistant chat or hand-entered sample does not count.

---

## Part B — load operational state into the Data Store

| Table | Minimum fields |
|---|---|
| `health_policies` | customer_id, metric, threshold, scope_rule, treatment, approved_script, risk |
| `health_observations` | run_id, asset_id, metric, value, source_time, policy_id |
| `health_findings` | asset_population, finding, tier, treatment, status |
| `health_actions` | finding_id, script_version, approval_id, before, after, validation |
| `health_scope_snapshots` | run_id, evaluated_rule, matched_asset_ids, evaluated_at |

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
| Resolve scope | `tool` evaluates rules | Population snapshot retained | Operator-authored rules |
| Collect | N-query agent | Failed/partial coverage visible | none |
| Compare | Deterministic policy checks | Same threshold every run | Human owns threshold |
| Diagnose | `agent` | Inputs/rationale required | Human reviews uncertainty |
| Plan | `branch` routine vs judgment | Only approved scripts eligible | Human approves policy/action |
| Act or ticket | `tool` or Halo write | Risk gate controls path | Approver for gated work |
| Validate | Re-query/`branch` | Failed validation cannot close | Human handles exceptions |
| Report | Write finding/value/EBR handoff | Trace retained | Human approves client claim |

### Skeleton — illustrative, not a validated production graph

```json
{
  "format_version": 1,
  "process": "environment_health",
  "initial": "resolve_scope",
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
    "resolve_scope": { "type": "tool", "human_description": "Population snapshot retained",
      "transitions": [{ "to": "collect" }] },
    "collect": { "type": "agent", "human_description": "Failed/partial coverage visible",
      "transitions": [{ "to": "compare" }] },
    "compare": { "type": "branch", "human_description": "Same threshold every run",
      "branches": [
        { "to": "diagnose", "when": {"<": [{"var": "observation.value"}, {"var": "policy.threshold"}]} },
        { "to": "diagnose", "default": true }
      ]},
    "diagnose": { "type": "agent", "human_description": "Inputs/rationale required",
      "transitions": [{ "to": "plan" }] },
    "plan": { "type": "branch", "human_description": "Only approved scripts eligible",
      "branches": [
        { "to": "act_or_ticket", "when": {"==": [{"var": "plan.treatment"}, "approved_script"]} },
        { "to": "act_or_ticket", "default": true }
      ]},
    "act_or_ticket": { "type": "tool", "human_description": "Risk gate controls path",
      "transitions": [{ "to": "validate" }] },
    "validate": { "type": "branch", "human_description": "Failed validation cannot close",
      "branches": [
        { "to": "act_or_ticket", "when": {"==": [{"var": "validation.result"}, "failed"]} },
        { "to": "report", "default": true }
      ]},
    "report": { "type": "tool", "human_description": "Trace retained",
      "transitions": [{ "to": "done" }] },
    "done": { "type": "final" }
  }
}
```

The node names, tool bindings, agent IDs, state paths, and `JsonLogicRule` conditions above are
placeholders. Preserve the sequence and guards; replace the syntax only with definitions proven in
Studio. Do not "fix" unknown Vertesia syntax by guessing — the `branches` shape here is corrected
from the real OpenAPI schema, not a guess (see VALIDATION-NOTES.md); everything else still is.

---

## Part D — definition of done, in Vertesia terms

| Check | Pass condition |
|---|---|
| Scope | Rule evaluation produces reproducible asset snapshot |
| Policy | Finding is reproducible from observation + threshold |
| Action | Approved script/version and actor are recorded |
| Validation | Before/after evidence proves result or opens follow-up |
| Scheduling | If claimed scheduled, real scheduled run history exists |

## Known opens — carried forward and newly introduced

- `⟨VERIFY⟩` Vertesia scheduling and notification support
- `⟨VERIFY⟩` Authoritative lifecycle source
- `⟨VERIFY⟩` Which fixes qualify as automatic
- `⟨VERIFY⟩` N-query and Halo write/tool support

## Sources

- Introduction_to_Harness: continuous environment sweeps, routine fixes, tickets for judgment.
- UEM Phase 02: endpoint health/lifecycle, scheduling, notifications.
- UEM sync: target by org/branch or dynamic device properties, not static lists.
- Supplied "EBR Coworker — Technica: the Vertesia-native version" for the shared Vertesia substrate, invariants, spike discipline, and evidence labels.
