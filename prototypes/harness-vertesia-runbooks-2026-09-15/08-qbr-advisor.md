---
title: QBR Advisor / Business Review Narrative — the Vertesia-native version
part_of: HARNESS Vertesia-Native Coworker Runbook Set — see 00-shared-substrate.md
corrected: 2026-09-15 — skeleton's branch node fixed to real Vertesia node shape; see VALIDATION-NOTES.md
revised: 2026-09-16 — routing nodes retyped branch→condition; node syntax superseded by 10-proven-node-patterns.md
---

# QBR Advisor / Business Review Narrative — the Vertesia-native version

## Why this file exists, separately from the Harness concept

The QBR Advisor should consume a reviewed register and turn it into a business conversation, not
re-grade technical evidence or generate an untraceable presentation. The port therefore treats
selection, translation, value framing, named sign-off, and separate internal/client artifacts as
the controlled process.

## What "more deterministic" means here, concretely

Input version, eligibility, Unverified block, review status, value-source labels, sign-off, and
export writes become structural. Narrative emphasis, recommendation wording, and the account
lead's judgment remain human-owned.

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
| `risk-register-reader` | Reviewed findings/history/decisions | Data Store tool | Schema/version | Correct customer/version |
| `value-ledger-reader` | Per-run baseline/value | Data Store tool | `baseline_source` rules | Held values visible |
| `customer-context-reader` | Prior commitments/audience | Data Store or human input | Source proof | Current context |
| `report-writer` | Draft narrative/artifact | Bounded agent | Template/export support | Claim-to-finding map |

**Not agents — governed context or human authority:**

| Source/decision | Status | Vertesia handling |
|---|---|---|
| Chooser and emphasis | Account lead | `human_task` |
| Final recommendation and presenter voice | Named human | Sign-off |

**Part A exit criteria:** at least one real external-source spike has passed; every agent claimed
wired has a real Agent Run and independently inspected artifact proving the correct customer/tenant
scope; every action agent has an approved test and read-after-write/validation evidence. A Studio
Assistant chat or hand-entered sample does not count.

---

## Part B — load operational state into the Data Store

| Table | Minimum fields |
|---|---|
| `qbr_runs` | id, customer_id, register_version, audience, status |
| `qbr_selections` | run_id, finding_id, included, decision_by, reason |
| `qbr_claims` | run_id, claim, finding_refs, evidence_refs, confidence |
| `qbr_value` | run_id, entry_id, baseline_source, included, hold_reason |
| `qbr_artifacts` | run_id, kind, internal_ref, client_ref, approved_by, version |

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
| Load reviewed state | `query` exact register version | No floating "latest" after start | none |
| Continuity | Compare prior decisions/history | Status categories deterministic | Account lead interprets story |
| Chooser | `human_task` | Unverified/unreviewed blocked | Lead decides emphasis |
| Translate | `agent` | Claim requires finding/evidence refs | Human edits |
| Recommend | Agent proposal | One recommendation per source finding | Lead owns ask |
| Value frame | `condition` on `baseline_source`/`requires_review` | Weak/negative/implausible held from headline | Human validates |
| Sign off | `human_task` | Named approval before client write | Presenter |
| Publish | Separate internal/client writes | Immutable version refs | none after approval |

**Node syntax in the skeleton below is superseded by proven shapes** — see
`10-proven-node-patterns.md`, built from a graph that actually ran end to end on 2026-09-16.
In particular: `type:"agent"` fails on this deployment and must be replaced by a `tool` node
(arguments go in `input`) or a registered `interaction`; anything fed by `data_query` must be
declared untyped in the context schema, not `array`.

### Skeleton — illustrative, not a validated production graph

```json
{
  "format_version": 1,
  "process": "qbr_advisor",
  "initial": "load_reviewed_state",
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
    "load_reviewed_state": { "type": "tool", "human_description": "No floating latest after start",
      "transitions": [{ "to": "continuity" }] },
    "continuity": { "type": "tool", "human_description": "Status categories deterministic",
      "transitions": [{ "to": "chooser" }] },
    "chooser": { "type": "human_task", "human_description": "Unverified/unreviewed blocked",
      "transitions": [{ "to": "translate" }] },
    "translate": { "type": "agent", "human_description": "Claim requires finding/evidence refs",
      "transitions": [{ "to": "recommend" }] },
    "recommend": { "type": "agent", "human_description": "One recommendation per source finding",
      "transitions": [{ "to": "value_frame" }] },
    "value_frame": { "type": "condition", "human_description": "Weak/negative/implausible held from headline",
      "branches": [
        { "to": "sign_off", "when": {"in": [{"var": "value.baseline_source"}, ["weak", "negative", "implausible"]]}, "label": "held internal" },
        { "to": "sign_off", "default": true }
      ]},
    "sign_off": { "type": "human_task", "human_description": "Named approval before client write",
      "transitions": [{ "to": "publish" }] },
    "publish": { "type": "tool", "human_description": "Immutable version refs",
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
| Traceability | Every client claim maps to findings/evidence |
| Eligibility | No Unverified/unreviewed finding in client artifact |
| Value honesty | Included values show `baseline_source`; held values remain internal |
| Sign-off | Client artifact timestamp follows completed task |
| Continuity | Next run can query decisions and prior artifact version |

## Known opens — carried forward and newly introduced

- `⟨VERIFY⟩` Final template/export write-back
- `⟨VERIFY⟩` Presenter/sign-off owner
- `⟨VERIFY⟩` Value baseline policy
- `⟨VERIFY⟩` Whether QBR and EBR are one configurable coworker or siblings

## Sources

- Introduction_to_Harness: QBR Advisor as the wedge and cross-system read-only use case.
- Lewis/EBR discussions: translate evidence into business guidance while maintaining history and source reasoning.
- Supplied "EBR Coworker — Technica: the Vertesia-native version" for the shared Vertesia substrate, invariants, spike discipline, and evidence labels.
