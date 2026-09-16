---
title: Incident Response Analyst / Ticket RCA — the Vertesia-native version
part_of: HARNESS Vertesia-Native Coworker Runbook Set — see 00-shared-substrate.md
corrected: 2026-09-15 — skeleton's branch/foreach nodes fixed to real Vertesia node shapes; see VALIDATION-NOTES.md
revised: 2026-09-16 — routing nodes retyped branch→condition; node syntax superseded by 10-proven-node-patterns.md
---

# Incident Response Analyst / Ticket RCA — the Vertesia-native version

## Why this file exists, separately from the Harness concept

The prototype's Ticket RCA runbook is four lines long. In Vertesia, "cluster by root cause" cannot
be a magical middle step. The port must prove Halo and endpoint evidence ingestion, separate
correlation from causation, retain alternative hypotheses, pause before client-facing publication,
and hand results to Incident Response and the living risk register.

## What "more deterministic" means here, concretely

Ticket normalization, asset mapping checks, timeline ordering, minimum-evidence checks, confidence
tiers, and publication gates become structural. Causal interpretation remains analyst judgment.

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
| `halo-ticket-puller` | Tickets, notes, categories, SLA, assets | Halo agent | External-call proof | Scoped IDs match Halo |
| `nquery-event-puller` | Device events/config history | N-query agent | Auth + asset mapping | Event asset IDs reconcile |
| `adlumin-incident-puller` | Related detections | Adlumin agent | Connector `⟨VERIFY⟩` | Linked investigation IDs |
| `rca-proposer` | Clusters, hypotheses, evidence map | Bounded agent | Prompt/schema validation | No claim without evidence refs |

**Not agents — governed context or human authority:**

| Source/decision | Status | Vertesia handling |
|---|---|---|
| Cluster acceptance | Service analyst | `human_task` |
| Client-facing RCA wording | Named reviewer | `human_task` before client write |

**Part A exit criteria:** at least one real external-source spike has passed; every agent claimed
wired has a real Agent Run and independently inspected artifact proving the correct customer/tenant
scope; every action agent has an approved test and read-after-write/validation evidence. A Studio
Assistant chat or hand-entered sample does not count.

---

## Part B — load operational state into the Data Store

| Table | Minimum fields |
|---|---|
| `rca_cases` | case_id, customer_id, seed_ticket_ids, status, analyst, opened_at |
| `rca_evidence` | case_id, source, artifact_ref, timestamp, asset_id, ticket_id |
| `rca_hypotheses` | case_id, hypothesis, evidence_for, evidence_against, confidence, disposition |
| `rca_outputs` | case_id, internal_note, client_note, approved_by, version |

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
| Collect | `foreach` source agents | Source failures logged | Analyst defines seed scope |
| Normalize | `tool`/transform | IDs and timestamps standardized | none |
| Map assets | `condition` on reconciliation | Unmapped records become gaps | Analyst may repair mapping |
| Cluster | `agent` proposal | Minimum similarity fields required | Analyst accepts/splits |
| Correlate timeline | Deterministic sort + `agent` explanation | Temporal order preserved | Causation remains judgment |
| Draft hypotheses | `agent` | For/against evidence required | Analyst disposes |
| Approve RCA | `human_task` | Client write cannot bypass | Named reviewer |
| Handoff | Separate internal/client writes + finding | Artifact paths fixed | Human chooses downstream actions |

**Node syntax in the skeleton below is superseded by proven shapes** — see
`10-proven-node-patterns.md`, built from a graph that actually ran end to end on 2026-09-16.
In particular: `type:"agent"` fails on this deployment and must be replaced by a `tool` node
(arguments go in `input`) or a registered `interaction`; anything fed by `data_query` must be
declared untyped in the context schema, not `array`.

### Skeleton — illustrative, not a validated production graph

```json
{
  "format_version": 1,
  "process": "ticket_rca",
  "initial": "collect",
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
    "collect": { "type": "foreach", "foreach": "context.source_agents", "as": "source_result",
      "human_description": "Source failures logged", "transitions": [{ "to": "normalize" }] },
    "normalize": { "type": "tool", "human_description": "IDs and timestamps standardized",
      "transitions": [{ "to": "map_assets" }] },
    "map_assets": { "type": "condition", "human_description": "Unmapped records become gaps",
      "branches": [
        { "to": "cluster", "when": {"==": [{"var": "asset_mapping.unresolved"}, false]} },
        { "to": "cluster", "default": true }
      ]},
    "cluster": { "type": "agent", "human_description": "Minimum similarity fields required",
      "transitions": [{ "to": "correlate_timeline" }] },
    "correlate_timeline": { "type": "agent", "human_description": "Temporal order preserved",
      "transitions": [{ "to": "draft_hypotheses" }] },
    "draft_hypotheses": { "type": "agent", "human_description": "For/against evidence required",
      "transitions": [{ "to": "approve_rca" }] },
    "approve_rca": { "type": "human_task", "human_description": "Client write cannot bypass",
      "transitions": [{ "to": "handoff" }] },
    "handoff": { "type": "tool", "human_description": "Artifact paths fixed",
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
| Source proof | Halo result and any claimed device source are scoped and cross-checked |
| Traceability | Each RCA claim links to source records |
| Uncertainty | Alternatives and evidence-against are retained |
| Sign-off | Client RCA version occurs after completed task |
| Handoff | Systemic finding can be consumed by IR, Triage, and EBR |

## Known opens — carried forward and newly introduced

- `⟨VERIFY⟩` Automatic cluster threshold
- `⟨VERIFY⟩` Halo note/write operations
- `⟨VERIFY⟩` Root-cause link representation in Halo
- `⟨VERIFY⟩` Whether Adlumin is required or optional

## Sources

- Harness prototype Ticket RCA definition and sample findings.
- UEM Phase 02 context-aware troubleshooting/RCA scope.
- Supplied "EBR Coworker — Technica: the Vertesia-native version" for the shared Vertesia substrate, invariants, spike discipline, and evidence labels.
