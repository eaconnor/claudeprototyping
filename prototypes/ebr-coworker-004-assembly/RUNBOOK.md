# EBR Coworker — engineering runbook

**Two jobs this document does:**

1. **Part A** — recreate the working prototype in this folder, or port it to a real stack.
2. **Part B** — bootstrap a *new* coworker from an operator's spreadsheet, from scratch.

Written for engineers who have not been in the design conversations. Everything factual carries a
confidence tag. Where something is unresolved, it says so rather than picking a plausible default.

Last updated 2026-08-25 · prototype at `role-play-simulator.html`, config/onboarding at `onboarding.html`.

---

## 0. What this thing is, in one paragraph

An MSP runs a quarterly business review for each client. Someone pulls data out of six vendor
consoles by hand, grades it against a security baseline, writes it up, decides what the client
sees, and files what the client declined. The coworker automates the assembly and the carry-forward.
**It does not automate the judgment** — it proposes, a human decides. That distinction is not a
nicety; it is the architecture, and several rules below exist only to enforce it.

### What is real vs. fabricated in the prototype

| Real | Fabricated |
|---|---|
| HTTP pulls against six fixture files with genuinely mismatched schemas | Every grade (red/amber/green) |
| Entity resolution across four different data grains | Every confidence tier assignment |
| Staleness detection from capture timestamps | All client-facing prose |
| The state machine, gates, role-based views | The "parse" of an uploaded spreadsheet in onboarding |
| Six-source join producing a 3-of-9 match rate | Any suggestion a model ran — **none does** |

There is **no LLM call anywhere in this prototype.** The interpretation layer is the actual product
and it is the one thing here that is hollow. Do not demo this as if inference is happening.

---

# PART A — Recreate the report

## A1. Architecture

No backend, no build step, no dependencies. One HTML file per surface, plain JS, fixtures served
over HTTP. That is deliberate: it means anyone can open it, and it means the pulls are *real* HTTP
with real latency and real parse failures rather than mocked promises.

```
prototypes/ebr-coworker-004-assembly/
├── index.html                 router — two surfaces + open questions
├── onboarding.html            first-run flow AND coworker configuration (one artifact, not two)
├── role-play-simulator.html   one full EBR cycle, nine steps, two roles
├── sources/                   six fixtures, deliberately mismatched
│   ├── n-central.json         RMM        · grain: device
│   ├── enforcer.json          M365 policy· grain: tenant
│   ├── cloud-capsule.json     M365 posture· grain: tenant  ← 40 days stale, on purpose
│   ├── roost.json             backup     · grain: protected-device
│   ├── halo.json              PSA        · grain: asset + ticket
│   └── usecure.json           training   · grain: user      ← no connector exists
└── RUNBOOK.md                 this file
```

Serve it. Do not open with `file://` — the fetches will fail CORS.

```bash
cd prototypes/ebr-coworker-004-assembly && python3 -m http.server 7824
```

## A2. The six sources and their real connector status

This is scouted, not assumed. Sources: `scout_input/15-21`. **Five of six already have a real MCP
server** — the common assumption that this is all greenfield is wrong.

| Source | Real MCP? | Path | Confidence |
|---|---|---|---|
| N-Central | **Yes — N-able ships its own**, GA | `api.n-able.com` MCP read-only | [CS: VERIFIED] |
| Microsoft 365 | **Yes — Microsoft official** | delegated permissions only; all scopes read-only | [CS: VERIFIED] |
| HaloPSA | **Yes — Halo's own endpoint**, plus 2 community families | pick carefully; families are not equivalent | [CS: VERIFIED] |
| Inforcer | Community, maintained, **read-only** | `wyre-technology/inforcer-mcp` | [CS: VERIFIED] |
| Cove | No vendor MCP; **has an OpenAPI spec** | bridge OpenAPI→MCP | [CS: HIGH] |
| usecure | **None. Registry returns count 0.** | — | [CS: VERIFIED] |

**Two constraints that will bite you:**

- **M365 is delegated-only.** Verbatim from the docs: *app-only workflows aren't supported*. There is
  no service-principal/daemon pattern. Multi-tenant unattended M365 pulls need Lokka or a custom
  Graph server. [CS: VERIFIED]
- **usecure is a genuine unknown, and the unknown is not the MCP layer.** Whether it has a public API
  at all is unresolved — one scout found no developer portal, a second independently found a beta
  GraphQL API with keys issued by request only. Resolve by asking the vendor. Do not infer from the
  marketing site. `[?]`, not `[A]`.

Substitutes if the vendor is negotiable: KnowBe4 has a connector in `Servosity/msp-skills`.

## A3. Intake is a spectrum, not a binary

The single most load-bearing design decision in here:

> **The connector is not the product. The interpretation is.**
> A report with a hole in it is not a report.

So sources arrive three ways — MCP-connected, hand-supplied, or absent — and **all three feed the same
interpretation layer**. Provenance modulates *confidence*, not whether a finding gets made. usecure
has no connector, so a human drops in an export each cycle, and the training finding still appears in
the report, tiered **Estimated** because of how it arrived rather than because the analysis is weak.

Implementation: `SOURCES[].intake = 'mcp' | 'manual'`. Manual sources skip the instance wizard and
get `supplyManual()`. Everything downstream is identical.

## A4. Entity resolution

Six sources, four grains, no shared key. Matching follows the cascade **Datto RMM publishes for
Autotask**, which is a real documented vendor cascade, not something invented here:

```
existing map → canonical ID → hostname+serial → oldest-wins → cross-org serial → create
```

**Serial is the bootstrap key, not a normalised hostname.**

The join is *supposed to mostly fail* — it matches 3 of 9. That is the honest outcome and it is the
point. Do not "fix" it:

- Two Halo assets carry the literal serial `"None"`. Serial matching is skipped for them — Halo ships
  an *Asset Matching Value Exclusions* list for exactly this. Without it, every asset with that
  placeholder collapses into one record.
- `FEN-NET-GW1` matches on a serial field containing a **MAC address** — documented behaviour for
  networking gear. It joins correctly here, but a MAC shared by a dock or KVM would merge distinct machines.
- One ticket has `asset_id: null` — it joins to nothing, so it grades against nothing.
- **Three workstations are in the RMM and absent from backup.** No source reports this. It exists only
  as the *difference between two sources* — absence is the finding, and absence is exactly what a
  single-vendor console structurally cannot show you.

That last one is the strongest argument for the whole product. Preserve it.

## A5. The nine steps

These are the operator's own steps, in their own words and order, lifted from the runbook's `intent`
section — **not** a generic pipeline. Renaming them breaks recognisability, which is a stated requirement.

| # | Step | What it does |
|---|---|---|
| 1 | **Connect & ingest** | Bind instances → pull → reconcile → **explore** |
| 2 | **Continuity / delta** | Compare to last EBR. **This opens the review** |
| 3 | **Analyse & compare** | Signals with multiple valid readings; human picks or writes their own |
| 4 | **Judge the 8 tabs** | Gap → consequence → priority, graded against NCSC 10 / Cyber Essentials |
| 5 | **Translate** | Technical → business, two registers (CFO / owner) |
| 6 | **Getting-business** | Expansion openings drawn *from the gaps*, never invented |
| 7 | **Chooser** | Ranked include/exclude, routes for a second pair of eyes |
| 8 | **Deliver** | Dashboard for the room, or their own workbook filled in |
| 9 | **Liability & state of the union** | Declined items logged append-only; forward view |

**Step 2 opening the review is not cosmetic.** An earlier version had continuity last, which
reproduced the blank-canvas re-check the tool exists to eliminate. If you reorder these, that is the
one to leave alone.

**Step 3 is the heart.** The coworker lays out two or three readings the data will support, says what
each would change, and **explicitly declines to pick**. Example, from the fixtures:

> *Cloud Capsule and Enforcer agree that privileged-role MFA is not enforced.*
> **(a)** Corroborated — two sources agree, strong finding.
> **(b)** Coincidence, not corroboration — one source is 40 days stale, so its agreement tells you
> nothing about today.

A single confident grade there would be the machine doing the one job it cannot do. Free-text always
wins over the option list; what the human writes is what carries forward.

## A6. Confidence tiers

**Named tiers, never decimals.** Nobody in this workflow says "0.72".

| Tier | Meaning |
|---|---|
| **Measured** | Read directly from a connected source this cycle |
| **Benchmarked** | Compared against NCSC 10 / Cyber Essentials baseline |
| **Estimated** | Inferred — hand-supplied, stale, or reasoned from absence |
| **Unverified** | Cannot stand behind it. **Hard-blocked from the client surface** |

The hard block is unconditional — routing does not override it. A human vouching for an Unverified
finding **promotes it to Estimated**; it satisfies the rule rather than skipping it. That promotion
path is what reconciles "block unverified data" with "the report must be whole."

## A7. Two output surfaces

- **Dashboard** — walks into the room. Story order: *Since we last met* → *The one thing, if you only
  do one* → *Also worth your attention* → *Holding steady* → *Everything we're asking of you* →
  *The year ahead*. **No graphs, no percentages** (Must 1) — hierarchy and measure carry the story.
- **Their own workbook, filled** — their tabs, their column order, their grading language. Currently a
  *preview of what would be written*, not a working export, because Excel write-back is the M365-write
  gap tracked as **RA-018**. Do not ship it as an export until that is closed.

Both render from the same findings. Register (CFO / owner) re-voices every line.

## A8. Rules that are load-bearing

Breaking any of these changes what the product *is*:

1. **Unverified never reaches a client.** No override.
2. **Two artifacts, never one with a redaction toggle.** Internal notes and client-facing are separate
   objects. A toggle is how candid notes reach a client inbox.
3. **Absence is a finding.** Sources that don't track something return `not-tracked` with a note that
   absence is not evidence — never a silent green.
4. **Stale is flagged, not graded as current.** Cloud Capsule is 40 days old and says so everywhere.
5. **Upsell comes from gaps only.** Never invented for the pitch. One opening in the fixtures is
   explicitly conditional on an Unverified finding and stays conditional.
6. **Declined risks are logged dated and append-only.** They open the next cycle's delta automatically.
7. **Seed data is fictional.** Real MSP/client/practitioner names live in source docs only.

---

# PART B — Bootstrap a new one from a spreadsheet

The premise: **don't ask an MSP to configure a coworker — ask for the report they already make.**
Implemented in `onboarding.html`. Maps to acp-core `004-ai-coworker-registry` **User Story 4**:
*an AI operator drafts a Coworker; a human activates it.*

## B1. What to extract from the workbook

| Extract | Use | Recoverable? |
|---|---|---|
| Tab names + order | Section structure, and the client-facing tab order | Yes, if tabs repeat between quarters |
| Grading column + its scale | Grade vocabulary — use **theirs**, not RAG-by-default | Usually |
| Carry-forward tab | Proves the report is a *series*. Drives step 2 | Often missing — the most valuable thing when present |
| Column headers per tab | Field mapping to source data | Yes |
| Rationale column | **Almost never exists.** Grades are recorded, reasons are not | No — this is the judgment gap |

**Quality varies enormously by input.** A structured workbook produces a good draft; a slide deck
with RAG-coloured slides and prose findings produces a guess; a Word doc with no repeating structure
produces almost nothing. The flow says so out loud rather than pretending. An MSP in the third
category needs a conversation, not an upload — encoding a guess as their runbook is worse than
admitting the parse failed.

## B2. Map sections → sources → connectors

For each section, resolve what feeds it and whether it can be connected. In the reference case,
**seven of nine sections connect, one is hand-supplied, two are judgment**:

```
Identity & access    → M365 + Inforcer      → MCP
Backup & recovery    → Cove                 → OpenAPI bridge
Patching             → N-Central            → MCP (N-able official)
Network              → N-Central            → MCP
Incidents & tickets  → Halo                 → MCP
Awareness training   → usecure              → MANUAL (no connector exists)
Carry-forward        → previous EBR         → your own artifact
Exec summary         → the practitioner     → not inferable from any source
```

The last two are the honest limit. Onboarding can determine *what* they report on. It cannot
determine *why they called something amber*.

## B3. Emit a draft coworker version

Target shape is real — these are actual tables in acp-core `004-ai-coworker-registry` (42/46 done),
with Pydantic models upstream (`GuardrailConfig`, `TriggerConfig` as a discriminated union):

```
coworker_families        the coworker
coworker_versions        immutable once activated
coworker_draft_locks     pessimistic edit lock — prevents concurrent-onboarding lost updates
coworker_audit_entries   append-only
```

Draft config to emit:

```yaml
name:            <from the workbook title block>
autonomy:        assisted          # drafts and waits. Promotable later; do not default higher
trigger:         on-demand | file-drop
                                   # deliberately NOT calendar-fired — carry-forward tabs show
                                   # reviews slipping past quarter end, and a calendar trigger
                                   # would make the tool lie about its own cadence
guardrails:      named sign-off before anything renders client-facing
                                   # risk tier UNCONFIRMED upstream — carry the flag, don't default it
confidence_floor: Unverified is hard-blocked; below-threshold exposes a verify affordance
mcp_requirements: 6 declared, 0 bound
                                   # the coworker declares what it NEEDS; the operator binds their
                                   # own credentialed instances. Nothing in the version holds a credential
primitives:      Customer · Device · Policy · Audit Log · EBR Review [A — scaffolded]
```

**The EBR Review primitive is scaffolded, not confirmed.** It is modelled as a specialised Audit Log
entry (append-only, dated, linked to Customer) plus a rollup over Device/Policy gaps — not a fifth
exotic object. If it lands structurally different, every surface built against it needs rework rather
than relabeling. Confirm before building on it.

## B4. A human activates. Always.

Never auto-activate. The activation gate requires three explicit acknowledgements, and the middle one
is the honest one:

1. The draft config matches how we actually run an EBR.
2. **It learned our structure, not our judgment** — proposed grades are starting points I'll be correcting.
3. I know who signs off before anything reaches a client, and it is a named person.

The third is the weakest link: **nobody upstream has decided whether the sign-off owner is the
technical practitioner or the account lead.** The screen asks you to name someone; the product does
not yet enforce who. Named gap, not a solved one.

---

# PART C — Going real

## C1. First real source

`scripts/halo-connect.py` is the bridge from fixtures to live data. HaloPSA is the best first target:
self-service 30-day trial, sandbox included, and per-tenant API docs at `<instance>/api/swagger` —
the first authoritative Halo source available, since the public docs are JS-rendered and unscrapable.

```bash
python3 scripts/halo-connect.py probe    # auth, then report what the tenant ACTUALLY exposes
python3 scripts/halo-connect.py pull     # overwrite sources/halo.json with live data
```

`probe` reports real collection keys and field names rather than assuming them — that output is the
check against `scout_input/02-halopsa-ticket-asset-schema.md`, which was built from third-party
wrappers rather than vendor docs. The auth flow in that script is `[CS: MEDIUM]`, unverified against
a live tenant. **Run `probe` before trusting `pull`.**

Credentials go in `.secrets/halo-credentials.json` (gitignored) or env vars. Never in the browser,
never in a commit, never pasted into a chat window.

## C2. Architecture when it stops being fixtures

The browser cannot call vendor APIs directly — CORS, and a bearer token in client-side JS is a
credential handed to a web page. Keep the shape the prototype already has:

```
[vendor APIs] → MCP instances (server-side, credentialed) → normalise → join → interpret → surfaces
```

The prototype's client only ever reads local JSON. That stays true in production; only the thing
*writing* those documents changes.

## C3. Known gaps, in the order they will hurt

1. **usecure** — does a public API exist? One vendor email settles it. Blocks one section.
2. **RA-018 M365-write** — blocks the workbook write-back surface. Phase-dependent.
3. **The "8" is unreconciled** — at least four non-equivalent 8s live in the corpus (8 tabs, 8
   connectors, 8 sources, 8 integrations). These artifacts say "8 tabs" throughout and may be counting
   the wrong thing. Cheapest to untangle before connector work starts.
4. **Risk tier unconfirmed** — high vs medium. "Don't silently resolve this" is currently
   unenforceable because no medium behaviour has been specified to resolve *to*.
5. **The practitioner's real tabs, opening move, and gap-logic** are `⟨VERIFY⟩` in the source runbook
   and encoded in these artifacts as though settled. Gate 3 cites them `[D]`; Gate 1 tags the same
   fact `[?]`. That inconsistency is unresolved.

## C4. What has never been tested

No user research has been run on any of this. Zero people have used these surfaces. Every friction
claim in the design notes — connector setup being the bottleneck, the allowlist being cognitively
expensive, the fifteen-screen cost — is inferred from building it, not observed. Treat as `[A]`.

---

## Sources

- `briefs/technica-ebr-runbook-draft-2026-08-21.md` — the operator's steps, the output contract, the `⟨VERIFY⟩` slots
- `scout_input/15-21` — MCP registry state, per-vendor connector status, confirmed gaps, bridge fallbacks
- `scout_input/02-halopsa-ticket-asset-schema.md` — Halo schema, third-party-wrapper-derived, needs live verification
- acp-core @ `2b76d55` — `004-ai-coworker-registry` (42/46), `004-mcp-configs` (43/43)
- FigJam `74ru22mcRfrJKFoyvsnNh0` — N-able-perspective service blueprint
- `critic-pass-1.md` / `critic-pass-2.md` — the EBR-review primitive gap, the risk-tier default

**Seed data throughout is fictional.** Bracken IT Group, Fenwick Logistics, Marcus and Priya are
stand-ins. Real MSP, client, and practitioner names appear only in the source documents above.
