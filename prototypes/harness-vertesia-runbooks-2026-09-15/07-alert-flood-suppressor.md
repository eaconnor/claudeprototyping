---
title: Alert Flood Suppressor — the Vertesia-native version
part_of: HARNESS Vertesia-Native Coworker Runbook Set — see 00-shared-substrate.md
corrected: 2026-09-15 — skeleton's branch nodes fixed to real Vertesia node shape; see VALIDATION-NOTES.md
revised: 2026-09-16 — routing nodes retyped branch→condition; node syntax superseded by 10-proven-node-patterns.md
---

# Alert Flood Suppressor — the Vertesia-native version

## Why this file exists, separately from the Harness concept

Alert suppression is dangerous if represented as an agent that simply decides what is noise. The
Vertesia port needs a versioned rule library, deterministic application of approved rules, novelty
bias toward surfacing, approval for new rules, expiry/review, and a watcher for abnormal
suppression behaviour. Current planning also says event-driven Alert Suppression is deferred, so
this remains a design until the trigger substrate exists.

## What "more deterministic" means here, concretely

Approved-rule matching, scope, expiry, suppression accounting, novelty fallback, and rate-limit
pause become structural. Correlation, likely shared cause, and proposed new rules remain
analyst-reviewed AI outputs.

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
| `alert-source-puller` | Raw alerts | Source agent/stream | Event/batch support | Complete batch/stream checkpoint |
| `nquery-context-puller` | Asset/topology context | N-query agent | Scope proof | Mapped assets |
| `adlumin-context-puller` | Detections/investigations | Adlumin agent | Connector proof | Customer IDs |
| `correlation-expert` | Clusters/shared-cause proposal | Bounded agent | Schema/confidence | Evidence-linked cluster |

**Not agents — governed context or human authority:**

| Source/decision | Status | Vertesia handling |
|---|---|---|
| Suppression rules | Human-approved configuration | Versioned Data Store rows |
| New rule approval | NOC/SOC analyst | `human_task` |

**Part A exit criteria:** at least one real external-source spike has passed; every agent claimed
wired has a real Agent Run and independently inspected artifact proving the correct customer/tenant
scope; every action agent has an approved test and read-after-write/validation evidence. A Studio
Assistant chat or hand-entered sample does not count.

---

## Part B — load operational state into the Data Store

| Table | Minimum fields |
|---|---|
| `suppression_rules` | id, customer_id, match, scope, action, created_by, approved_by, active_from, expires_at, version |
| `alert_events` | source_id, customer_id, asset_id, observed_at, normalized_fields |
| `alert_dispositions` | alert_id, rule_id, cluster_id, action, reason, decided_at |
| `suppression_metrics` | run_id, evaluated, suppressed, grouped, surfaced, anomalies |
| `rule_proposals` | evidence_refs, proposed_match, blast_radius, expiry, status |

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
| Ingest | Batch/event source | Checkpoint and customer scope fixed | none |
| Normalize | Transform | Required fields enforced | none |
| Known-rule check | Deterministic `condition` | Only active in-scope rules apply | Human-authored rules |
| Correlate | `agent` | Clusters retain members/evidence | Analyst reviews uncertain |
| Novelty/rate check | `condition` vs baseline | Unknown defaults to surface; anomaly pauses | Human investigates |
| Disposition | `tool`/`condition` | Every suppression has rule/version | none for existing rule |
| Propose rule | `agent` → `human_task` | New rule cannot self-activate | Analyst approves |
| Report/learn | Write metrics/exceptions | Retention and audit fixed | Human reviews performance |

**Node syntax in the skeleton below is superseded by proven shapes** — see
`10-proven-node-patterns.md`, built from a graph that actually ran end to end on 2026-09-16.
In particular: `type:"agent"` fails on this deployment and must be replaced by a `tool` node
(arguments go in `input`) or a registered `interaction`; anything fed by `data_query` must be
declared untyped in the context schema, not `array`.

### Skeleton — illustrative, not a validated production graph

```json
{
  "format_version": 1,
  "process": "alert_suppression",
  "initial": "ingest",
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
    "ingest": { "type": "tool", "human_description": "Checkpoint and customer scope fixed",
      "transitions": [{ "to": "normalize" }] },
    "normalize": { "type": "tool", "human_description": "Required fields enforced",
      "transitions": [{ "to": "known_rule_check" }] },
    "known_rule_check": { "type": "condition", "human_description": "Only active in-scope rules apply",
      "branches": [
        { "to": "disposition", "when": {"==": [{"var": "alert.matched_rule"}, true]} },
        { "to": "correlate", "default": true }
      ]},
    "correlate": { "type": "agent", "human_description": "Clusters retain members/evidence",
      "transitions": [{ "to": "novelty_rate_check" }] },
    "novelty_rate_check": { "type": "condition", "human_description": "Unknown defaults to surface; anomaly pauses",
      "branches": [
        { "to": "propose_rule", "when": {">": [{"var": "run.suppression_rate"}, {"var": "policy.max_rate"}]} },
        { "to": "disposition", "default": true }
      ]},
    "disposition": { "type": "condition", "human_description": "Every suppression has rule/version",
      "branches": [
        { "to": "report_learn", "when": {"==": [{"var": "alert.disposition"}, "suppressed"]} },
        { "to": "report_learn", "default": true }
      ]},
    "propose_rule": { "type": "agent", "human_description": "New rule cannot self-activate",
      "transitions": [{ "to": "approve_rule" }] },
    "approve_rule": { "type": "human_task", "human_description": "Analyst approves new rule before activation",
      "transitions": [{ "to": "report_learn" }] },
    "report_learn": { "type": "tool", "human_description": "Retention and audit fixed",
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
| Trigger | Real batch/event checkpoint enters run |
| Explainability | Every suppressed alert names rule/version |
| Novelty | Unmatched alerts remain visible |
| Guardrail | Abnormal rate automatically pauses/holds |
| Governance | New rule requires approval and expiry |

## Known opens — carried forward and newly introduced

- `⟨VERIFY⟩` Event-stream support
- `⟨VERIFY⟩` Safe initial rules and baselines
- `⟨VERIFY⟩` Retention of suppressed alerts
- `⟨VERIFY⟩` Adlumin/alert-source integrations

## Sources

- Harness prototype Alert Flood Suppressor concept and abnormal-rate control-plane example.
- UEM Phase 03 explicitly defers Alert Suppression to v2/event-driven backlog.
- Supplied "EBR Coworker — Technica: the Vertesia-native version" for the shared Vertesia substrate, invariants, spike discipline, and evidence labels.
