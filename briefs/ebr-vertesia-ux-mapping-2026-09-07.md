---
title: EBR Coworker — screen-to-primitive map against Vertesia (standalone-UI track)
type: UX brief, three-gate
generated: 2026-09-07
scope: Track 1 only (standalone UI calling the Vertesia API directly, not the App/composite-shell route)
sources:
  - briefs/vertesia-api-capability-map-2026-09-07.md (this session — live OpenAPI spec, 267 endpoints)
  - prototypes/ebr-coworker-005-arc/feasibility-check-2026-09-01.md (screen breakdown, C-11 status)
  - prototypes/ebr-coworker-005-arc/harness-2026-09-04.html, ebr-app.html (existing mocked UI — 0 network calls, [CS: VERIFIED — grep])
  - prototypes/ebr-coworker-005-arc/md-coworker/ebr-coworker.runbook.technica.md + this session's test cycle output (working-notes.md, risk-register.md, 2026-09-07)
confidence_regime: PROCEED-FLAGGED
proceed_because: the mapping has real value for scoping the standalone build even though C-11 (which substrate ships) stays open — Beth's 2026-09-01 resolution already authorized building on borrowed patterns
machine_behavior: written spec only, no HTML this pass · surface every place Vertesia's schema doesn't have a field ACP needs · do not claim any of this is committed to Vertesia's roadmap
---

# Gate 1 — what problem this answers

Not "what should the EBR coworker's UI look like" (already designed, see `harness-2026-09-04.html`).
This answers: **for each screen already designed, what Vertesia object does it read/write, and where
does the design need something Vertesia's schema doesn't have.** [R] — direct read of the live spec.

# The five screens, mapped

Per the 2026-09-01 feasibility check's own split — reused here, not re-derived.

## 1. Runbooks admin (list / lock / clone / activate)

**Vertesia object: `Interaction`.** Versioned, forkable (`POST /interactions/{id}/fork`), publishable
(`POST /interactions/{id}/publish`), has `status`, `visibility`, `tags`. This is a close match — "lock"
maps to `publish` (an Interaction stops being editable once published, per the versioning model implied by
`GET /interactions/{id}/versions`); "clone" is literally `fork`. `[CS: VERIFIED — schema Interaction, spec]`

**Gap:** Interaction has no `runbook_id`-equivalent link to a specific client (Technica). That linkage —
"this Interaction version is what ran for this client on this date" — has to live in the **Agent Run**
that consumes it (`AgentRun.interactionRef` exists on the schema) or in your own Content Object. Vertesia
doesn't have a native "Runbook × Client" join object.

## 2. Setup wizard (connector wiring, client selection)

**No clean Vertesia object.** This screen is entirely N-able's own concern — which MCP servers are
declared for which client (`.mcp.json` in the current Claude-Code-native track) has no equivalent in
Vertesia's schema at all. If this screen survives into the standalone-UI track, it's writing to **your**
config store, not Vertesia's. The only Vertesia-side touchpoint is `Environment` (model/provider config,
not client/connector config) — don't conflate the two.

**This is the sharpest evidence for RA-023 (portability):** the setup wizard's actual state — which
connector is wired for which client — was never going to live in Vertesia regardless. It's already
N-able's, cleanly.

## 3. Run-cycle stepper (the 9-step visible judgment trail)

**Vertesia object: `AgentRun`.** This is the strongest match in the whole map. `status` and
`activity_state` give step-level progress; `GET /agents/{id}/stream` gives the live trace the stepper UI
needs to render in real time (this is a direct answer to the 2026-09-01 feasibility check's open question
— "no technical spec for Vertesia's run-trace mechanism" — there is one, and it's a closer fit than
`StepsRunWorkflow`/`run_audit` polling was). `tool_names` and `disabled_mcp_collections` on the object are
exactly the "what did the coworker actually use" disclosure the stepper's honesty framing wants.
`[CS: VERIFIED — schema AgentRun, endpoint list]`

**Gap:** AgentRun has no field for **confidence tier** (Measured/Benchmarked/Estimated/Unverified) or
**evidence trace** (source/tool/pull-time) — the two concepts this session's actual Technica test cycle
proved are load-bearing for every single finding. Vertesia's schema does carry generic extensible fields
(`properties`, `data`, `tags`, `categories`) that could hold this — but it means ACP's confidence/evidence
model is *data you put in a generic bucket*, not something Vertesia understands natively. If Vertesia ever
indexes/facets/searches on it, you'd be relying on your own convention over their generic field, not a
first-class capability. Worth knowing before designing a Chooser UI that assumes tier-filtering is cheap.

## 4. Dashboard (portfolio view across clients/runs)

**Vertesia object: `Data` (Data Store) + its `Dashboards` sub-resource**, or simpler: a `GET /agents` /
`GET /agents/search` list view with client tagging. The Data Store's own Dashboards feature (with
versioning, snapshots, rollback) is a real, more powerful option than building your own — but it's a
separate primitive from Agent Runs, meaning a portfolio dashboard would be querying two different Vertesia
subsystems (Data Store for structured metrics, Agent Runs for run status) and joining them yourself. Not a
blocker, just not a single query.

## 5. Chooser (the human approval gate)

**Vertesia object: `Tasks`.** `POST /tasks`, `answer-task`, `complete`, `cancel` — this is explicitly
human-in-the-loop, which is exactly what the Chooser step is. Alternative/complementary: `AgentRun`'s
`tool_approval_mode` field and `POST /agents/{id}/advance` (resume a paused run after a decision).
**Two candidate mechanisms, not confirmed which one Vertesia actually wires the two together with** — this
needs a real test against the live API, not just the schema, before the Chooser screen is built against
either. `[?]`

## 6. Client report (the rendered register/output)

**Vertesia object: `Content Object` + `Rendering`.** Objects support renditions (`GET
/objects/{id}/renditions/{format}`) and there's an async `Rendering` job resource — this looks built for
exactly "turn a structured finding-set into a branded PDF/report," including the custom-LaTeX-template
setting already visible in your live console's Settings → Project → Features ("Use custom branded PDF
template"). Real, working feature, not aspirational — you already have the toggle for it.

---

# Gate 2 — does this advance anything, or just describe

It scopes the standalone build without waiting on C-11. Every mapping above works whether N-able ends up
owning the console or not, because it's about what a *client calling the API directly* would talk to —
which is true in both futures.

# Gate 3 — what's untested

Everything. This is schema-reading, not a working call. The one thing worth testing before design goes
further: **#5, the Chooser mechanism** — Tasks vs. AgentRun.tool_approval_mode — because the run-cycle
stepper (the piece of the UI that matters most) can't be built past the approval step without knowing
which one actually gates a run.

# What this does NOT resolve

- C-11 (which console ships) — untouched, still Beth+Nicole's.
- RA-023 (portability) — sharpened, not closed. The setup wizard and the confidence/evidence-trace data are
  now visibly N-able's regardless of C-11's outcome; Runbooks-admin and the Chooser mechanism are the two
  genuinely open pieces.
- Whether one Vertesia Project = one MSP client, or one Project with internal multi-tenancy — not answered
  by this map; it's a scale/cost question against the Costs endpoints, not a UX one.
