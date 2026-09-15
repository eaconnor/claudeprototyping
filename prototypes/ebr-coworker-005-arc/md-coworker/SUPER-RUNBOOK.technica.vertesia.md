---
title: EBR Coworker — Technica, Vertesia-native deterministic runbook
audience: engineer standing this up as Vertesia Processes + Agents, not Claude Code + .mcp.json
supersedes-for-vertesia-hosting-only: SUPER-RUNBOOK.technica.md — that file stays canonical for a
  Claude-Code-native run (`.mcp.json`, `/mcp`, git commits as audit log). This file is the same
  cycle, re-cast onto Vertesia's own primitives: Data Store, Processes, Agents, Task Inbox.
status: 2026-09-09. Zero of this has been wired against Vertesia yet. One mechanism in it —
  human_task pause/resume — is [CS: VERIFIED] end to end (Biscuit Tin Check, 2026-09-08). Everything
  about connectors-as-Vertesia-tools is a design proposal pending its own first spike (Part 0).
---

# EBR Coworker — Technica: the Vertesia-native version

**Why this file exists, separately from the original:** the original `SUPER-RUNBOOK.technica.md` is
written entirely in Claude Code's terms — `.mcp.json`, `/mcp`, "tool count > 0," a git commit as the
audit log. None of those exist in Vertesia. Porting the *cycle* (ingest → grade → sign-off → write)
without porting the *substrate* would just produce a document that sounds like it applies and
doesn't. This file re-derives the same five invariants and eight steps on Vertesia's actual
building blocks — Data Store, Process nodes, Task Inbox — and is explicit everywhere the port is
still a guess.

**What "more deterministic" means here, concretely:** the original runbook has exactly one
enforcement mechanism — an engineer reading prose and remembering to follow it. "Never send without
sign-off" is a sentence, not a gate. In Vertesia, several of those sentences become structural: a
`human_task` node an engineer cannot route around, a `branch` guard that mechanically stops an
Unverified finding from ever reaching the client-facing write. **The grade itself is not made
deterministic — it still needs a person's judgment. What's newly deterministic is everything around
the judgment: when the flow pauses, when it blocks, when absence gets logged instead of skipped.**

---

## Part 0 — read this before anything else

### The blocker carried over from this session's own test

`POST /processes` 503s under a `developer`-role API key — `"Failed to load process validation
catalogs: Invalid JWT"` — confirmed universal, not payload-dependent. [CS: VERIFIED — 2026-09-08,
Biscuit Tin Check]. Processes have to be built and published through **Studio's own Code tab**
(session auth), not scripted. Anyone standing up the graph in Part C does it there, or files a
support ticket first.

### The spike this document is built on — and the one it still needs

**Verified, load-bearing:** Data Store `query` / `mutate` / `import` (mode: append, distinct from
`mutate`) / `tables` / `versions`, and `human_task` → Task Inbox → `answer-task` pause/resume,
end to end, against a real run. [CS: VERIFIED — 2026-09-08, full log in
[virtual-munching-rivest.md](/Users/bethconnor/.claude/plans/virtual-munching-rivest.md) and
[biscuit-tin-check-writeup-2026-09-08.md](../biscuit-tin-check-writeup-2026-09-08.md)]. Every
`human_task` gate this document proposes (Chooser, sign-off, hard-block) rests on that proof, not a
guess.

**Not verified, and this document's single biggest assumption:** whether a Vertesia `tool` node can
actually reach an external API the way an MCP server does in Claude Code. Nothing this session
touched a `tool` node's real HTTP call, an OAuth-provider-backed connector, or an Agent calling out
to N-query/Halo/Cove. Vertesia's OAuth subsystem (`/oauth-providers`, `/oauth-clients`,
`/oauth-grants`) is a 3-legged human-consent shape — a poor fit for a bearer-token service account
like N-query's, on the reasoning already surfaced this session but never re-verified for Vertesia
specifically. `[CS: UNKNOWN]`.

**Required first spike, same shape as Biscuit Tin Check, before trusting Part A:** pick the
single lowest-risk connector — Halo, since it's already a real MCP-shaped server, not a bridge that
needs building — and prove one `tool` (or `agent`) node in a real published Process can call it and
return real Technica-scoped data into `process_state.context`. Until that passes, treat every row in
Part A as a design proposal, not a wired fact.

---

## Part A — spec a collection of agents, not one process wired to four connectors

The original runbook already tests each connector independently (its own pass/fail block, A1–A4)
before Part C ever runs. That's the more faithful shape to port — **one small Agent per connector
domain**, each independently testable, called by the orchestrating Process (Part C) via `agent`
nodes rather than the Process reaching out to four raw APIs itself. If one integration is wrong,
you fix that one agent without touching the graph.

| Agent | Feeds | Vertesia shape | Blocker (unchanged from original) | Pass condition |
|---|---|---|---|---|
| `nquery-puller` | Patching & network, devices & lifecycle, security posture, customer hierarchy | Agent with a `tool` (or direct HTTP call) against N-query's GraphQL supergraph | OAuth WIP (QSR-4141); bearer-token auth only, not a Vertesia OAuth grant. Exact supergraph URL still `⟨VERIFY⟩`. | Agent run returns Technica-scoped rows in its output artifact, confirmed via `GET /agents/{id}/artifacts`, not just "the call didn't error" |
| `m365-identity-puller` | Identity & access | Agent scoped to **Technica's tenant**, not the operator's | Same tenant-scoping trap as the original's 2026-08-27 failure — must confirm the tenant ID in the response, not just that a response came back | Agent output includes Technica's tenant ID, matched against a known value |
| `halo-ticket-puller` | Incidents & tickets | Agent against Technica's Halo instance | None structural — real MCP server exists. **This is the recommended first spike target (Part 0).** | Agent output scoped to Technica's Halo instance, ticket/asset IDs cross-checked |
| `cove-backup-checker` | Backup & recovery | Agent against a REST bridge (does not exist yet) | No vendor MCP; the bridge is unbuilt work, not a config gap — unchanged from the original | Stays unbuilt until the bridge exists. Do not fake a tool count; do not build an Agent against nothing. |

**Not agents — by-hand context, ceiling fixed, never faked:**

| Source | Status | Vertesia handling |
|---|---|---|
| usecure | No MCP, no confirmed public API | Human-supplied field in the Process's start-run input, capped at `Estimated` by a deterministic branch — never routed through an agent that would silently imply a live pull |
| Adlumin | Planned (ADL-2031) | Same — named as roadmap in context, not modeled as a connector |
| Billing MCP | POC | Same |
| RocketCyber | Tracked by Technica every cycle, connector status still `[?]` | Same, until resolved — don't fold into Adlumin |

**Part A exit criteria:** the Part 0 spike has passed for at least one agent, and every agent in the
table above that's claimed "wired" has a real Agent Run in its history showing Technica-scoped
output — not a Studio Assistant chat, not a hand-typed example.

---

## Part B — load the real source into the Data Store, not a CSV read

Instead of an engineer reading `technica-ebr-source/*.csv` by eye each cycle, seed it once, then let
every cycle query it:

1. **`POST /data/{storeId}/tables`** — create `technica_findings` with columns matching the register:
   `id, category, finding, meaning, owner, status, grade, tier, evidence_source, evidence_tool,
   evidence_pulled_at, first_seen, last_meeting_notes`. This is the same real, tested payload shape
   as the Biscuit Tin Check's table create (`{tables:[...], message}`, uppercase column types).
2. **`POST /data/{storeId}/import`, `mode:"append"`** — load the 29 reviewed rows currently sitting
   in `risk-register.md`'s "Findings — this cycle" table as the seed. This is the real insert path,
   not `mutate` (mutate is UPDATE/DELETE-only per its own schema — confirmed this session).
3. **A second table, `technica_learned_judgment`** — one row per teach-back correction
   (`rule, correction, applies_to_area, corrected_by, corrected_at`), replacing `learned-judgment.md`.
   Every cycle's Process reads this via `query` at start — a queryable, versioned fact instead of a
   markdown file the next session might skim past. Seed it from the four real entries already in
   `learned-judgment.md` (phishing click-rate, patch compliance, the backup-restore demo entry
   flagged as non-real, and the open sign-off-owner question).

**Corrections carried forward unchanged — do not re-introduce these as columns or values:**
- No NCSC 10 / Cyber Essentials baseline column. Grading is `Low/Medium/High/N/A`, plain text.
- `N/A` rows get a `suppressed_client_facing: true` flag, distinct from `Source-Unavailable` — the
  Data Store equivalent of tab 3's own suppression rule, never a delete.
- Owner is genuinely blank (`—`) for all 29 seed rows — the source has no owner field. Don't invent one.

**Part B exit criteria:** `SELECT * FROM technica_findings` returns 29 rows matching the register;
`SELECT * FROM technica_learned_judgment` returns the seeded corrections; both confirmed by actually
running the query, not by trusting the import response.

---

## Part C — the cycle as a Process graph

This is where "more deterministic" actually happens. Below: the original's 5 invariants and 8 steps,
each mapped to a node type and marked with what's now structural vs what's still judgment.

| Original rule/step | Vertesia node | What's now deterministic | What still needs a person |
|---|---|---|---|
| Invariant 4 — absence is a finding | `branch` after each `agent` ingest call, `JsonLogicRule` on call success/empty | The branch is unavoidable — there is no path from "call failed" to "silently continue" | none — this was already a rule, now it's structural |
| Step 1 — ingest | `foreach` over the 4 agents → `branch` per result | Every connector's reachability is checked the same way, every cycle | none |
| Step 2 — continuity/delta | `tool`/`query` node reading `last_meeting_notes` per row | Reading history is now a guaranteed step, not something an engineer might skip | none |
| Step 3 — judge each area | `agent`/`interaction` node proposes a grade, reading `technica_learned_judgment` first | The *order* (learned judgment before default) is now enforced by graph position | the grade itself — still proposed by a model, still a person's call |
| Confidence tier | `branch` with a `JsonLogicRule` keyed on which agent (if any) produced the data | Tier assignment stops being "an engineer decides what to call it" — Measured only if a real agent call succeeded this cycle, Estimated only if by-hand, Unverified if neither | none — this is exactly the kind of rule that should never be discretionary |
| Invariant 3 — Unverified hard-blocked | `branch` before the client-facing write node, `{"==":[{"var":"tier"},"Unverified"]}` → route away | Structurally cannot reach the client-facing table if Unverified — not a reminder, a wall | none |
| Step 8 — Chooser | `human_task` per finding (or a batched task listing all findings above threshold) — **the exact mechanism proven in Biscuit Tin Check** | The pause is real and provable, not "hope the engineer waits for sign-off" | the include/exclude decision itself |
| Invariant 1 — propose, human decides | `human_task` before any write to the client-facing table | Cannot be automated past by construction | the decision |
| Invariant 2 — two artifacts, never a flag | Two separate `tool`/mutate nodes — `write_working_notes` (all findings) and `write_client_register` (chosen findings only, post hard-block) | Structurally two different write operations, not one node with a redact parameter — the architecture the original could only ask an engineer to respect by convention | none |
| Step 6 — liability discipline | `mutate` with `status:"Declined"`, append-only via Data Store `versions` | Every version is retained automatically — no separate "don't delete" discipline needed, it's how `mutate` works | none |
| git commit as audit log | Data Store `versions`, auto-created per `mutate` | Every write is already a version — arguably *more* deterministic than git, since a human can forget to commit but cannot skip a version | Vertesia's `versions` has no equivalent of "review the diff before committing" — that's why the `human_task` gate above has to come *before* the mutate node, not rely on reviewing after |

### Skeleton (illustrative, not the full production graph)

```json
{
  "format_version": 1,
  "process": "ebr_cycle_technica",
  "initial": "ingest",
  "context": {
    "schema": { "type": "object", "properties": {
      "findings": { "type": "array" },
      "tier_by_finding": { "type": "object" },
      "chooser_decisions": { "type": "object" }
    }},
    "initial": {}
  },
  "nodes": {
    "ingest":              { "type": "foreach", "foreach": "context.agents", "as": "agent_result",
                              "transitions": [{ "to": "check_reachable" }] },
    "check_reachable":     { "type": "branch",
                              "branches": [
                                { "to": "log_source_unavailable", "when": {"==": [{"var":"agent_result.status"}, "failed"]} },
                                { "to": "continuity_read", "default": true }
                              ]},
    "log_source_unavailable": { "type": "tool", "tool": "mutate_finding_source_unavailable",
                                 "transitions": [{ "to": "continuity_read" }] },
    "continuity_read":     { "type": "tool", "tool": "query_last_meeting_notes",
                              "transitions": [{ "to": "propose_grade" }] },
    "propose_grade":       { "type": "agent", "agent": "grading-proposer",
                              "human_description": "Reads learned_judgment first, then proposes Low/Medium/High per finding.",
                              "transitions": [{ "to": "assign_tier" }] },
    "assign_tier":         { "type": "branch",
                              "branches": [
                                { "to": "chooser", "when": {"==": [{"var":"finding.source"}, "agent"]}, "label": "Measured" },
                                { "to": "chooser", "when": {"==": [{"var":"finding.source"}, "hand"]}, "label": "Estimated" },
                                { "to": "chooser", "default": true, "label": "Unverified" }
                              ]},
    "chooser":             { "type": "human_task",
                              "task": { "title": "Chooser — include/exclude this cycle's findings",
                                         "fields": [{ "name": "decisions", "type": "text", "required": true }] },
                              "transitions": [{ "to": "hard_block_unverified" }] },
    "hard_block_unverified": { "type": "branch",
                                "branches": [
                                  { "to": "write_working_notes", "when": {"==": [{"var":"finding.tier"}, "Unverified"]} },
                                  { "to": "signoff", "default": true }
                                ]},
    "signoff":             { "type": "human_task",
                              "task": { "title": "Named sign-off before client-facing write",
                                         "fields": [{ "name": "signed_off_by", "type": "string", "required": true }] },
                              "transitions": [{ "to": "write_client_register" }] },
    "write_working_notes": { "type": "tool", "tool": "mutate_working_notes", "transitions": [{ "to": "done" }] },
    "write_client_register": { "type": "tool", "tool": "mutate_client_register", "transitions": [{ "to": "done" }] },
    "done":                { "type": "final" }
  }
}
```

This is a sketch to show node-type mapping, not a validated definition — the `tool` names
(`mutate_finding_source_unavailable`, `query_last_meeting_notes`, etc.) are placeholders for
whatever the Part 0 spike proves actually works, and the `foreach`/`branch` combination hasn't been
fired against a real run the way the `human_task` nodes have.

---

## Part D — definition of done, in Vertesia terms

| Check | Pass condition |
|---|---|
| Part 0 spike | At least one `tool`/`agent` node has returned real external data into `process_state.context`, confirmed via `GET /agents/{id}/artifacts` |
| Connectors (Part A) | Each wired agent shows a real Agent Run with Technica-scoped output — not a chat transcript |
| Source data (Part B) | `SELECT * FROM technica_findings` returns all 29 seed rows; `technica_learned_judgment` returns the seeded corrections |
| Cycle run (Part C) | The published Process reaches `done`; `GET /agents?run_id=...` shows `process_state.context` with tier-assigned findings |
| Grading | Findings show Low/Medium/High, not red/amber/green; `suppressed_client_facing` rows are flagged, not deleted |
| Absence handling | Any agent that failed this cycle produced a `Source-Unavailable` row via the branch, not a silent skip |
| Hard block | No row with `tier:"Unverified"` exists in `technica_client_register` — confirmed by querying that table directly, not by trusting the graph didn't route there |
| Two artifacts | `technica_working_notes` and `technica_client_register` are separate tables with different row counts this cycle — if they're identical, something didn't hard-block |
| Sign-off | The `signoff` `human_task` shows a `completed` result with a named `signed_off_by` before `write_client_register` ever ran — checked via `GET /tasks?status=completed`, in `Timeline` order against `write_client_register`'s own version timestamp |

---

## Known opens — carried forward, plus new ones this translation surfaces

Carried forward unresolved from the original, not re-litigated here:
- Sign-off owner contradiction — David vs Vanessa.
- RocketCyber connector status — `[?]`.
- Fenwick/Technica seam in this folder's history.
- Risk tier (high vs medium) behaviour — unspecified.
- Whether the ~11 categories are exhaustive or grow per quarter.

**New, introduced by porting to Vertesia:**
- Whether a `tool` node can reach N-query/Halo/Cove's real auth patterns at all — gated on the Part 0
  spike, currently `[CS: UNKNOWN]`.
- Whether Vertesia's OAuth subsystem is usable for any of these connectors, or whether every one of
  them ends up as a bearer-token `tool` call outside that subsystem entirely — unresolved, matters
  for who manages token rotation.
- Whether `versions`' auto-create-on-mutate is an acceptable audit-log substitute for git, given it
  has no pre-commit review step — this document routes around that by putting `human_task` gates
  *before* the mutate nodes, but that's a design choice, not something Vertesia enforces on its own.
- Process creation is blocked via API key (Part 0) — whoever builds this graph needs Studio UI
  access, or a resolved support ticket, before Part C can be published at all.
- Whether `foreach` over agents and `branch` on `JsonLogicRule` behave as documented under a real
  run — neither was touched this session; only `human_task`/`answer-task` and the Data Store ops
  were.

---

## Sources

- [SUPER-RUNBOOK.technica.md](SUPER-RUNBOOK.technica.md) — the Claude-Code-native original this file re-derives
- [WIRING-RUNBOOK.technica.md](WIRING-RUNBOOK.technica.md), [ebr-coworker.runbook.technica.md](ebr-coworker.runbook.technica.md) — full detail behind Part A/C above
- [technica-ebr-source/README.md](technica-ebr-source/README.md), [risk-register.md](risk-register.md), [learned-judgment.md](learned-judgment.md) — the real source data and corrections this file's Part B seeds from
- [biscuit-tin-check-writeup-2026-09-08.md](../biscuit-tin-check-writeup-2026-09-08.md) — the live-fire test everything `[CS: VERIFIED]` above rests on
- [virtual-munching-rivest.md](/Users/bethconnor/.claude/plans/virtual-munching-rivest.md) — full run log, including the `POST /processes` blocker (Part 0)
- [vertesia-wire-today-report-2026-09-08.md](../vertesia-wire-today-report-2026-09-08.md) — the broader Vertesia readiness picture this connector work sits inside
