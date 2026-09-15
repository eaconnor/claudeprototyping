---
title: Ticket Triage & Dispatch Coworker — the Vertesia-native version
part_of: HARNESS Vertesia-Native Coworker Runbook Set — see 00-shared-substrate.md
corrected: 2026-09-15 — skeleton's branch nodes fixed to real Vertesia node shape; see VALIDATION-NOTES.md
---

# Ticket Triage & Dispatch Coworker — the Vertesia-native version

## Why this file exists, separately from the Harness concept

The marketplace card says classify, check SLA, route, and flag anomalies. In Vertesia, this must
not become an agent that edits tickets whenever it feels confident. The port needs an explicit
event or batch trigger, authoritative taxonomy and SLA inputs, deterministic confidence/risk
routing, a held queue, write validation, and learned corrections.

## What "more deterministic" means here, concretely

SLA arithmetic, taxonomy validity, customer-boundary checks, confidence thresholds, queue lookup,
and held routing become rules. Category and urgency are model proposals unless source policy makes
them deterministic.

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
| `halo-ticket-puller` | New ticket + context | Halo agent | Event/batch and auth `⟨VERIFY⟩` | Ticket scope proven |
| `service-desk-classifier` | Category, urgency, anomaly proposal | Bounded agent | Taxonomy source | Schema-valid proposal |
| `rca-pattern-checker` | Related cluster/incident signal | RCA agent | Handoff contract | Cluster ref returned |
| `halo-ticket-writer` | Queue/category/note update | Tool agent | Write proof | Read-after-write matches approved change |

**Not agents — governed context or human authority:**

| Source/decision | Status | Vertesia handling |
|---|---|---|
| Queue map and SLA policy | Operator configuration | Data Store policy tables |
| Low-confidence correction | Queue lead | `human_task` |

**Part A exit criteria:** at least one real external-source spike has passed; every agent claimed
wired has a real Agent Run and independently inspected artifact proving the correct customer/tenant
scope; every action agent has an approved test and read-after-write/validation evidence. A Studio
Assistant chat or hand-entered sample does not count.

---

## Part B — load operational state into the Data Store

| Table | Minimum fields |
|---|---|
| `triage_taxonomy` | customer_id, category, queue_id, valid_from, approved_by |
| `triage_runs` | ticket_id, customer_id, proposed_category, urgency, confidence, reasons, outcome |
| `triage_held` | ticket_id, reason, requested_from, status |
| `triage_corrections` | pattern, old_route, corrected_route, corrected_by, corrected_at |

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
| Trigger/read | Event or batch → Halo agent | Ticket/customer fixed | none |
| Validate policy | `query` taxonomy/SLA | No policy means hold | Human owns policy |
| Classify | Agent proposal | Schema and allowed values enforced | Queue lead may correct |
| SLA check | `tool`/`branch` | Source fields drive arithmetic | none |
| Pattern check | Agent handoff | Incident candidate separated from routine route | Analyst confirms if held |
| Route decision | `branch` by confidence/risk | Ambiguous/high-impact goes `human_task` | Queue lead |
| Write | Halo `tool` | Approval + exact before/after required | none |
| Validate/learn | Read-after-write + correction append | Failed write cannot look complete | Human correction becomes input later |

### Skeleton — illustrative, not a validated production graph

```json
{
  "format_version": 1,
  "process": "ticket_triage",
  "initial": "trigger_read",
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
    "trigger_read": { "type": "agent", "human_description": "Ticket/customer fixed",
      "transitions": [{ "to": "validate_policy" }] },
    "validate_policy": { "type": "tool", "human_description": "No policy means hold",
      "transitions": [{ "to": "classify" }] },
    "classify": { "type": "agent", "human_description": "Schema and allowed values enforced",
      "transitions": [{ "to": "sla_check" }] },
    "sla_check": { "type": "branch", "human_description": "Source fields drive arithmetic",
      "branches": [
        { "to": "pattern_check", "when": {"<": [{"var": "sla.remaining_minutes"}, {"var": "sla.threshold_minutes"}]} },
        { "to": "pattern_check", "default": true }
      ]},
    "pattern_check": { "type": "agent", "human_description": "Incident candidate separated from routine route",
      "transitions": [{ "to": "route_decision" }] },
    "route_decision": { "type": "branch", "human_description": "Ambiguous/high-impact goes human_task",
      "branches": [
        { "to": "held_for_review", "when": {"<": [{"var": "classify.confidence"}, 0.8]} },
        { "to": "write", "default": true }
      ]},
    "held_for_review": { "type": "human_task", "human_description": "Queue lead corrects low-confidence proposal",
      "transitions": [{ "to": "write" }] },
    "write": { "type": "tool", "human_description": "Approval + exact before/after required",
      "transitions": [{ "to": "validate_learn" }] },
    "validate_learn": { "type": "tool", "human_description": "Failed write cannot look complete",
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
| Trigger | Real ticket enters a published run |
| Held path | Missing policy or low confidence produces visible task |
| Write | Approved route is read back from Halo |
| Boundary | No cross-customer queue/write is possible |
| Learning | Correction is versioned and read before future classification |

## Known opens — carried forward and newly introduced

- `⟨VERIFY⟩` Event-driven Vertesia trigger support
- `⟨VERIFY⟩` Approved category taxonomy and queue map
- `⟨VERIFY⟩` Confidence/risk thresholds
- `⟨VERIFY⟩` Halo write API/tool support

## Sources

- Harness prototype Ticket Triage card/runbook.
- UEM planning defers event-driven Ticket Resolution to v2; do not imply live eventing.
- Supplied "EBR Coworker — Technica: the Vertesia-native version" for the shared Vertesia substrate, invariants, spike discipline, and evidence labels.
