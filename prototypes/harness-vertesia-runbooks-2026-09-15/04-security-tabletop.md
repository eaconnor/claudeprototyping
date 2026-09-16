---
title: Security Tabletop Coworker — the Vertesia-native version
part_of: HARNESS Vertesia-Native Coworker Runbook Set — see 00-shared-substrate.md
corrected: 2026-09-15 — skeleton's foreach node fixed to real Vertesia node shape; see VALIDATION-NOTES.md
revised: 2026-09-16 — routing nodes retyped branch→condition; node syntax superseded by 10-proven-node-patterns.md
---

# Security Tabletop Coworker — the Vertesia-native version

## Why this file exists, separately from the Harness concept

A useful tabletop must be adapted to the customer's real environment, business obligations, and
existing plan. Porting only "generate scenario" would miss the product value Lewis described:
evidence that plans were tested, observed gaps converted into durable findings, and after-action
outputs handed to the EBR/risk register.

## What "more deterministic" means here, concretely

Context collection, source-failure disclosure, required objective/scope fields, timed inject
sequencing, observation capture, finding creation, sign-off, and handoff become structural.
Scenario quality, participant decisions, and finding significance remain human judgment.

---

## Part 0 — read this before anything else

**The blocker carried over from the Technica session.** `[CS: VERIFIED — supplied Technica runbook]`
Process creation through a developer-role API key was blocked by the reported Invalid JWT catalog
error. Build/publish in Studio Code unless a fresh test proves the API path is fixed.

**The spike this runbook is built on — and the one it still needs.** The Data Store and human-task
substrate is supported by the supplied live-fire test. The external connectors and action tools are
not. Before trusting Part A, prove the narrowest source agent in a real published Process, return
real customer-scoped data into `process_state.context`, and verify its output artifact
independently. `[CS: UNKNOWN]` All connector and write capabilities below are design proposals
until their specific spike passes.

---

## Part A — spec a collection of agents, not one process wired to everything

| Agent | Feeds | Vertesia shape | Blocker | Pass condition |
|---|---|---|---|---|
| `environment-context-puller` | Assets, posture, topology | N-query agent | Scope proof | Current customer artifact |
| `identity-context-puller` | Identity controls | M365 agent | Tenant proof | Known tenant matches |
| `risk-register-reader` | Open/declined risks, prior exercises | Data Store tool | Schema/version | Correct customer/version |
| `scenario-builder` | Scenario + inject proposals | Bounded agent | Source grounding | Each inject cites context |
| `after-action-synthesizer` | Observations → proposed findings | Bounded agent | Evidence schema | Finding refs observations |

**Not agents — governed context or human authority:**

| Source/decision | Status | Vertesia handling |
|---|---|---|
| Business/regulatory context | Approved human input or governed source | Never inferred as legal obligation |
| Exercise facilitation and participant decisions | People | Task Inbox/capture UI |

**Part A exit criteria:** at least one real external-source spike has passed; every agent claimed
wired has a real Agent Run and independently inspected artifact proving the correct customer/tenant
scope; every action agent has an approved test and read-after-write/validation evidence. A Studio
Assistant chat or hand-entered sample does not count.

---

## Part B — load operational state into the Data Store

| Table | Minimum fields |
|---|---|
| `tabletop_exercises` | id, customer_id, objective, scope, facilitator, status, started_at, ended_at |
| `tabletop_injects` | exercise_id, order, inject, context_refs, presented_at |
| `tabletop_responses` | exercise_id, inject_id, response, responder, timestamp |
| `tabletop_observations` | exercise_id, observation, evidence_refs, proposed_finding |
| `tabletop_actions` | exercise_id, finding_id, owner, decision, due_state, retest_ref |

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
| Discover | `foreach` context agents | Gaps disclosed | Facilitator confirms relevance |
| Set objective | `human_task` | Cannot build without named objective/scope | Facilitator decides |
| Build scenario | `agent` | Injects require context refs | Facilitator edits |
| Approve exercise | `human_task` | Non-production/safety boundary recorded | Facilitator signs |
| Run injects | Ordered process/task loop | Sequence and timestamps retained | Participants respond |
| Assess | Agent proposals from recorded observations | No finding without observation refs | Facilitator validates |
| After-action | Write report + `human_task` | Approval before final artifact | Named reviewer |
| Handoff/retest | Write findings and proposed retest | Risk register update never silently skipped | Owner decides treatment |

**Node syntax in the skeleton below is superseded by proven shapes** — see
`10-proven-node-patterns.md`, built from a graph that actually ran end to end on 2026-09-16.
In particular: `type:"agent"` fails on this deployment and must be replaced by a `tool` node
(arguments go in `input`) or a registered `interaction`; anything fed by `data_query` must be
declared untyped in the context schema, not `array`.

### Skeleton — illustrative, not a validated production graph

```json
{
  "format_version": 1,
  "process": "security_tabletop",
  "initial": "discover",
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
    "discover": { "type": "foreach", "foreach": "context.context_agents", "as": "context_result",
      "human_description": "Gaps disclosed", "transitions": [{ "to": "set_objective" }] },
    "set_objective": { "type": "human_task", "human_description": "Cannot build without named objective/scope",
      "transitions": [{ "to": "build_scenario" }] },
    "build_scenario": { "type": "agent", "human_description": "Injects require context refs",
      "transitions": [{ "to": "approve_exercise" }] },
    "approve_exercise": { "type": "human_task", "human_description": "Non-production/safety boundary recorded",
      "transitions": [{ "to": "run_injects" }] },
    "run_injects": { "type": "tool", "human_description": "Sequence and timestamps retained",
      "transitions": [{ "to": "assess" }] },
    "assess": { "type": "agent", "human_description": "No finding without observation refs",
      "transitions": [{ "to": "after_action" }] },
    "after_action": { "type": "tool", "human_description": "Approval before final artifact",
      "transitions": [{ "to": "handoff_retest" }] },
    "handoff_retest": { "type": "tool", "human_description": "Risk register update never silently skipped",
      "transitions": [{ "to": "done" }] },
    "done": { "type": "final" }
  }
}
```

The node names, tool bindings, agent IDs, state paths, and `JsonLogicRule` conditions above are
placeholders. Preserve the sequence and guards; replace the syntax only with definitions proven in
Studio. Do not "fix" unknown Vertesia syntax by guessing — the `foreach` shape here is corrected
from the real OpenAPI schema, not a guess (see VALIDATION-NOTES.md); everything else still is.

---

## Part D — definition of done, in Vertesia terms

| Check | Pass condition |
|---|---|
| Specificity | Scenario cites current customer evidence or labels missing context |
| Execution | Inject and response timeline retained |
| Evidence | Approved after-action artifact exists |
| Handoff | Findings appear in customer risk register |
| Retest | Accepted remediation can be linked to a future exercise recommendation |

## Known opens — carried forward and newly introduced

- `⟨VERIFY⟩` Live facilitation UX in Vertesia
- `⟨VERIFY⟩` Authoritative compliance mapping
- `⟨VERIFY⟩` Scheduling/retest support
- `⟨VERIFY⟩` Whether iterative model variations are MVP

## Sources

- Lewis Pope: a tabletop is a drill that produces evidence of testing IR and business-continuity plans; outputs feed the living risk register.
- Introduction_to_Harness: Security Tabletop as a monetizable coworker with strong MSSP interest.
- Supplied "EBR Coworker — Technica: the Vertesia-native version" for the shared Vertesia substrate, invariants, spike discipline, and evidence labels.
