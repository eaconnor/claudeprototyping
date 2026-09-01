# Datadump ↔ Spec — check + update process

**Companion to:** `datadump-spec-model.md`, `datadump-spec-docset.md`
**Step 1 goal:** every spec *checks* the central datadump; a defined process *updates* it.
**Respects:** the `source_material:` block already in every Intent Spec — we extend it, not replace it.

---

## Part 1 · Make every spec check the datadump

### The hook already exists

Every Intent Spec frontmatter carries this today:

```yaml
source_material:
  - id: SRC-001
    type: "Product brief"
    title: "AI Coworker Description"
    link: "ACP_DataDump/AI-AI Coworker Description-040626-153628.pdf"   # phantom path
    owner: "Nicole Reineke"
    status: "Current"
```

The `link:` points at `ACP_DataDump/` — which was never committed. We make it resolve to
the library and carry a hash so "check" means something:

```yaml
source_material:
  - id: SRC-001
    library_ref: user/_raw/ai-coworker-description.pdf   # resolves in the library
    shelf: user | market
    hash: sha256:a3f8c2…        # the source's hash at last reconcile
    reconciled_at: 2026-07-14
    drift: FRESH                # FRESH | STALE | CONFLICT
```

### The spec-level badge (the null fields go live)

The `agent_context` block already has `summary_source_hash: null` — we light it up:

```yaml
agent_context:
  canonical_source: true
  summary_source_hash: sha256:…   # hash of all source_material hashes combined
  reconciled_at: 2026-07-14
  drift: FRESH
  stale_sources: []               # SRC ids whose hash moved
  maturity: Direction             # Concept | Direction | Spec-ready  (independent axis)
```

### "Check" = one operation

```
for each source_material entry:
    rehash library_ref  →  compare to stored hash
        same     → FRESH
        changed  → STALE          (source moved under the spec)
    scan new content vs the spec's claims
        contradicts a claim → CONFLICT   (needs council)
roll up → spec.agent_context.drift = worst(entry drifts)
```

Runs on demand, and as the weekly gate. `grep "drift: STALE"` across `Intent Specs/` +
`specs/*/` = the week's worklist. This is the Constitution Check (Principle VII) at
`/speckit-plan`: **CONFLICT blocks, STALE warns, FRESH passes.**

---

## Part 2 · The process for updating the datadump

New intel arrives — a Confluence page, a call transcript, a competitor move, a new interview.

```
1. INGEST     drop verbatim into library/_raw/  (immutable — new version = NEW file,
              never overwrite; the old hash must stay resolvable for old specs)
2. EXTRACT    to markdown on the right shelf:  library/user/…  or  library/market/…
              (grep-able, diff-able, 47%-rule-able)
3. REGISTER   add / update the entry in library/manifest.yml:
                 id · shelf · hash · feeds_specs[] · maturity · added_at
4. DIFF       compare new hash to the prior version:
                 unchanged           → nothing fires
                 changed + feeds_specs → mark those specs STALE
                 contradicts a claim   → mark CONFLICT
5. RECONCILE  (only if drift) council fires on the delta — tensions, not synthesis —
              aimed at the value props of the affected specs
6. SYNTHESIZE human writes the synthesis update  ([0% — Beth]); it becomes the new baseline
7. RE-HASH    affected specs' source_material updated to the new hash; drift → FRESH
```

**Cadence (split by shelf):**
- **Bibliography gather — weekly, cheap.** Steps 1–4. "What's new, what moved."
- **Council reconcile — on drift only.** Steps 5–6. Never on the calendar; only when the
  diff says a source that feeds a spec actually moved.
- **User shelf drifts slowly** (personas/jobs are durable); **market shelf drifts fast**
  (competitors/trends) — so most STALE/CONFLICT fires come off the market shelf.

**Manifest is the memory between runs** — the `feeds_specs[]` link is what lets a single
changed hash flag exactly the dependent specs, with no guessing.

---

## Part 3 · Scenario — the MCP epic spec

*The MCP spec doesn't exist yet; when it's written it's the Management-Plane / MCP-Gateway
epic. Its bet, drawn from the Management-Plane Intent Spec + Principle VI:*

> **Best assumed value prop `[A]`:** "MSPs and AI operators govern the *entire* control plane
> through MCP — one interface, every operation an agent-callable tool, humans approve via
> proposed changesets. They never open N-central / Cove / Adlumin directly."

### T0 · Spec is born → prime against the library

Gather pulls the MCP-relevant sources it declares:

| SRC | library_ref | shelf | what it supplies |
|---|---|---|---|
| Headless IT (Nicole PDF) | user/_raw/headless-it.pdf | user | the "one interface / headless" vision |
| Management-Plane AI Operator Model | user/_raw/mgmt-plane-operator.md | user | proposed-changeset governance model |
| Constitution Principle VI | (ref) | — | MCP-parity: every route auto-exposed as a tool |
| ScalePad MCP · Rewst MCP/N-central | market/competitors/*.md | market | industry MCP convergence — the bet isn't unique |
| Blind interviews (June 2026) | user/_raw/blind-interviews.md | user | **Vikram: enterprise won't adopt a *second* control plane** |
| MCP endpoint = full control-plane access until auth | market/threat-landscape/mcp-auth.md | market | Principle VI's own security caveat |

**Priming report holes (the deliverable):**
- `[A]` "MSPs want to operate *everything* through MCP" — no top task in the library ranks
  this. Not evidence-backed. → **riskiest assumption.**
- **CONFLICT:** the blind-interview finding (enterprise won't run a second control plane)
  directly contradicts the "only interface" bet for the enterprise persona. → council.
- `[A]` "headless — never open the underlying product" — the market shelf shows *everyone*
  is doing MCP; differentiation isn't the protocol. The bet may be right but not *distinct*.

The spec ships at **maturity: Concept**, drift FRESH, with the riskiest assumption named —
*not* smoothed over. Empty-honest.

### T1 · Datadump update fires

A new Confluence page lands: **"V1 Scope — in-app only, MCP management deferred"** (real —
the 9–10 Jul notification-service decisions). Update process runs:

```
INGEST → _raw/v1-scope-2026-07-10.md
REGISTER → manifest: feeds_specs includes MCP-epic
DIFF → the V1 scope narrows what MCP governs in v1 → MCP spec source CHANGED
     → MCP spec.agent_context.drift = STALE, stale_sources: [SRC-V1SCOPE]
```

The team `grep`s `drift: STALE` Monday morning → the MCP spec is on the list.

### T2 · Council on the delta

Council fires *only* on the MCP spec's value prop + variations, against both shelves:

- *User shelf:* does "govern everything through MCP" survive the enterprise finding?
- *Market shelf:* does it survive "everyone has an MCP server" + the auth security caveat?
- Verdict is **tensions, not a decision** — e.g. "the headless bet holds for SMB MSPs,
  breaks for enterprise; consider a *variation* scoped to SMB."

### T3 · Human synthesizes → new baseline

Beth (or the spec owner) writes the synthesis (`[0% — Beth]`): keeps the best-assumed prop,
promotes the **SMB-scoped variation** as a live alternative, records the enterprise CONFLICT
as an open risk. Affected sources re-hashed → drift FRESH. Maturity may climb Concept →
Direction as the enterprise `[A]` gets a real study behind it.

**Net:** the MCP spec never silently drifted. A market decision three teams away moved a
source; the manifest flagged the one spec that depended on it; council stress-tested the bet;
the human made the call. That loop is Step 1.

---

*Check is mechanical. Update is a process. The bet — and its synthesis — stays human.*
