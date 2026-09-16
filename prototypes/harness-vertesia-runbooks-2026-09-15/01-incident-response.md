---
title: Incident Response Coworker — the Vertesia-native version
part_of: HARNESS Vertesia-Native Coworker Runbook Set — see 00-shared-substrate.md
corrected: 2026-09-15 — skeleton's branch/foreach nodes fixed to real Vertesia node shapes; see VALIDATION-NOTES.md
revised: 2026-09-16 — routing nodes retyped branch→condition; node syntax superseded by 10-proven-node-patterns.md
---

# Incident Response Coworker — the Vertesia-native version

## Why this file exists, separately from the Harness concept

The existing Harness material describes an incident sequence, but not a Vertesia implementation. A
runbook that says "invoke N-central," "ask the Vulnerability Expert," or "deploy a script" without
proving Vertesia tool execution, customer scoping, action approval, and validation would only
imitate the ACP story. This port turns the response lifecycle into Process nodes, human tasks,
separate evidence/state writes, and hard action gates while preserving the parts that remain expert
judgment.

## What "more deterministic" means here, concretely

Detection, source-failure handling, scope checks, action-risk routing, approval pauses, evidence
writes, and closure validation become structural. Root cause, severity, business impact, and the
appropriateness of a response remain proposals for a named incident lead.

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
| `adlumin-incident-puller` | Alerts, detections, investigation state | Agent/tool against customer Adlumin | Integration status and auth `⟨VERIFY⟩` | Artifact contains customer-scoped incident IDs |
| `nquery-endpoint-puller` | Asset, telemetry, posture, history | Agent against N-query | Bearer auth + exact URL `⟨VERIFY⟩` | Affected asset IDs and org scope cross-checked |
| `halo-ticket-puller` | Tickets, assets, SLA, notes | Agent against Halo | First external-call spike | Ticket and asset IDs cross-checked |
| `m365-identity-puller` | Identity context when relevant | Customer-tenant agent | Tenant-scoping trap | Response tenant ID matches known customer |
| `vulnerability-expert` | CVE/exploit/ransomware context | Bounded reasoning agent | Source feeds and citation shape `⟨VERIFY⟩` | Output includes evidence refs + confidence |
| `script-executor` | Approved remediation scripts/actions | Tool agent with risk policy | Write/action support `⟨VERIFY⟩` | Dry run + approved action + validation artifact |

**Not agents — governed context or human authority:**

| Source/decision | Status | Vertesia handling |
|---|---|---|
| Incident severity policy | Customer/operator configuration | `condition` rules; never inferred from prose alone |
| Customer notification/legal requirements | Human-supplied or approved policy source | `human_task`; no generic legal claim |
| Business recovery confirmation | Named person | Required closure task |

**Part A exit criteria:** at least one real external-source spike has passed; every agent claimed
wired has a real Agent Run and independently inspected artifact proving the correct customer/tenant
scope; every action agent has an approved test and read-after-write/validation evidence. A Studio
Assistant chat or hand-entered sample does not count.

---

## Part B — load operational state into the Data Store

Create separate tables for operational evidence, decisions, actions, and outputs rather than
storing the whole run as one opaque Agent artifact.

| Table | Minimum fields |
|---|---|
| `ir_incidents` | id, customer_id, state, severity_proposed, severity_final, opened_at, closed_at, incident_lead |
| `ir_evidence` | incident_id, source_agent, artifact_ref, asset_id, observed_at, confidence, preservation_status |
| `ir_actions` | incident_id, action_id, risk, target_scope, proposed_by, approved_by, state_before, state_after, validation |
| `ir_findings` | incident_id, finding, owner, status, tier, evidence_refs, first_seen |
| `ir_lessons` | incident_id, lesson, destination, accepted_by, status, runbook_change_ref |

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
| Detect/open | `tool` → create incident row | Incident clock and scope record always exist | Severity may be corrected by lead |
| Ingest/enrich | `foreach` source agents → `condition` per result | Failure/empty/wrong-tenant creates Source-Unavailable evidence | AI may summarize evidence |
| Diagnose | `agent` node after evidence merge | Diagnosis cannot run before inputs and learned rules | Root cause remains a proposal |
| Build response | `agent` selects canonical pattern + customer/asset context | Plan always names action, target, risk, evidence, rollback, validation | Lead modifies plan |
| Approve | `condition` risk → `human_task` | High/customer-impact actions cannot bypass pause | Authorized responder decides |
| Execute | `tool` node per approved action | Scope and approval ID required | Person may stop run |
| Validate/recover | re-query + `condition` on desired state | Failed validation cannot reach closed | Business owner confirms recovery |
| PIR/learn | write timeline, RCA, findings, lessons, proposed runbook update | All outputs remain versioned and linked | Named reviewer signs PIR |

**Node syntax in the skeleton below is superseded by proven shapes** — see
`10-proven-node-patterns.md`, built from a graph that actually ran end to end on 2026-09-16.
In particular: `type:"agent"` fails on this deployment and must be replaced by a `tool` node
(arguments go in `input`) or a registered `interaction`; anything fed by `data_query` must be
declared untyped in the context schema, not `array`.

### Skeleton — illustrative, not a validated production graph

```json
{
  "format_version": 1,
  "process": "incident_response",
  "initial": "detect_open",
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
    "detect_open": { "type": "tool", "human_description": "Incident clock and scope record always exist",
      "transitions": [{ "to": "ingest_enrich" }] },
    "ingest_enrich": { "type": "foreach", "foreach": "context.source_agents", "as": "source_result",
      "human_description": "Call each connector agent independently",
      "transitions": [{ "to": "check_source_results" }] },
    "check_source_results": { "type": "condition",
      "human_description": "Failure/empty/wrong-tenant creates Source-Unavailable evidence",
      "branches": [
        { "to": "log_source_unavailable", "when": {"==": [{"var": "source_result.status"}, "failed"]} },
        { "to": "diagnose", "default": true }
      ]},
    "log_source_unavailable": { "type": "tool", "human_description": "Write Source-Unavailable evidence row",
      "transitions": [{ "to": "diagnose" }] },
    "diagnose": { "type": "agent", "human_description": "Diagnosis cannot run before inputs and learned rules",
      "transitions": [{ "to": "build_response" }] },
    "build_response": { "type": "agent", "human_description": "Plan always names action, target, risk, evidence, rollback, validation",
      "transitions": [{ "to": "risk_route" }] },
    "risk_route": { "type": "condition", "human_description": "High/customer-impact actions cannot bypass pause",
      "branches": [
        { "to": "approve", "when": {"==": [{"var": "plan.risk"}, "high"]} },
        { "to": "execute", "default": true }
      ]},
    "approve": { "type": "human_task", "human_description": "High/customer-impact actions cannot bypass pause",
      "transitions": [{ "to": "execute" }] },
    "execute": { "type": "tool", "human_description": "Scope and approval ID required",
      "transitions": [{ "to": "validate_recover" }] },
    "validate_recover": { "type": "condition", "human_description": "Failed validation cannot reach closed",
      "branches": [
        { "to": "execute", "when": {"==": [{"var": "validation.result"}, "failed"]} },
        { "to": "pir_learn", "default": true }
      ]},
    "pir_learn": { "type": "tool", "human_description": "All outputs remain versioned and linked",
      "transitions": [{ "to": "done" }] },
    "done": { "type": "final" }
  }
}
```

The node names, tool bindings, agent IDs, state paths, and `JsonLogicRule` conditions above are
placeholders. Preserve the sequence and guards; replace the syntax only with definitions proven in
Studio. Do not "fix" unknown Vertesia syntax by guessing — the `branches`/`foreach` shapes here are
corrected from the real OpenAPI schema, not a guess (see VALIDATION-NOTES.md); everything else
still is.

---

## Part D — definition of done, in Vertesia terms

| Check | Pass condition |
|---|---|
| External spike | One real external source enters `process_state.context` with customer scope proven |
| Action gate | High-risk test action cannot execute before completed `human_task` |
| Evidence | Every diagnosis/action claim has artifact refs |
| Validation | Closure timestamp occurs after technical validation and human recovery confirmation |
| Handoff | Risk finding and PIR are queryable; proposed runbook change is separate from active version |

## Known opens — carried forward and newly introduced

- `⟨VERIFY⟩` Exact incident state/severity model
- `⟨VERIFY⟩` Adlumin, Halo, N-query, M365 and script write/auth support
- `⟨VERIFY⟩` Who may approve each action class
- `⟨VERIFY⟩` Evidence preservation and retention rules
- `⟨VERIFY⟩` Whether cross-client correlation is prohibited absolutely or separately authorized

## Sources

- ACP LRP July 2026: alert → enrich → Vulnerability Expert → ticket → script + human approval → deployment → closure/summary.
- Lewis Pope sessions: discover → diagnose → build → review → test → maintain; incidents become durable findings; evidence and due care matter.
- Supplied "EBR Coworker — Technica: the Vertesia-native version" for the shared Vertesia substrate, invariants, spike discipline, and evidence labels.
