---
name: EBR Coworker
client: Technica
version: 1
powered_by: n-zo | claude-code        # the AI expert doing the reasoning
risk: high                            # ⟨VERIFY⟩ high vs medium — client-facing + liability claims
trigger: on-demand                    # deliberately NOT calendar-fired
sign_off_owner: Vanessa (account lead) — per risk-register.md, recorded 2026-08-27. NOTE: learned-judgment.md in this same folder still lists this as unresolved (David vs Vanessa). Contradiction, not resolved here — confirm with Beth/David before treating Vanessa as final.
deliverable: living risk register (risk-register.md, git-tracked) — this folder's copy is titled "Risk Register — Technica"
confidence_regime: PROCEED-FLAGGED    # build; mark provisional; surface [CS:] tags; do not claim validation
proceed_because: the runbook's value as a testable artifact exceeds the cost of the ⟨VERIFY⟩ gaps, which are named not hidden
---

# EBR Coworker — executable runbook (Technica)

This file **is** the coworker, locked to **Technica**. Drop it (plus `risk-register.md`) into a repo,
open Claude Code, and say *"run the EBR coworker for Technica."* The whole ACP model — runbook + MCP
tools + human-approval gate — reduces to: this markdown + your `.mcp.json` connectors + you, in the loop.

**The register, not this file, is the product.** This file describes *how* to keep the register;
`risk-register.md` is the living artifact, and its **git history is the audit log, the version trail,
and the evidence chain** ("prove it to opposing counsel" — Lewis Pope, 2026-08-25).

Grounded in: acp-core 002 runbook fields · 004-ai-coworker-registry (draft→activate, immutable
versions) · `briefs/technica-ebr-runbook-draft-2026-08-21.md` · Apex Sentient Design (primitives ×
surfaces, confidence-and-switch) · stefanie-hammond 2026-07-30 · lewis-pope-ebr-details 2026-08-25.

**Before you run this against Technica for real, know the current state:** as of 2026-08-27, 0/7 sources
were reachable (`risk-register.md` cycle log). That second gap is now closed — **Technica's actual EBR
spreadsheet has been reproduced** at `technica-ebr-source/` in this folder (from
`Technica_Executive Business Review - Redacted.xlsx`, already redacted at source). Wire the connectors —
see `WIRING-RUNBOOK.technica.md` — or this cycle will still produce nothing but `Source-Unavailable` rows,
honestly, per invariant 4.

**Correction, 2026-09-04 — the real spreadsheet contradicts two load-bearing assumptions below, not just
leaves them unverified.** Full detail in `technica-ebr-source/README.md`; the short version:
- **No NCSC 10 / Cyber Essentials baseline exists in the real artifact.** Cyber Essentials appears once,
  as an accreditation upsell — not the grading rubric step 3 below describes.
- **Grading is Low/Medium/High/N/A, plain text — not red/amber/green.** Checked directly: no fill colour,
  no conditional formatting on the Risk Level column.
Every "NCSC 10" and "red/amber/green" reference below is the *previous* assumption, kept visible rather
than silently edited out, so the gap between what was assumed and what's real stays legible. Do not build
against those two claims as written.

---

## The invariants (do not relax these)

1. **It proposes, you decide.** Never activate, never send client-facing output without a named human sign-off.
2. **Two artifacts, never one with a redaction toggle.** `working-notes.md` (candid, internal) and the
   client-facing section of `risk-register.md` are separate files. A redaction switch is how candid notes
   reach a client's inbox.
3. **Unverified is hard-blocked** from the client-facing artifact regardless of sign-off. A human vouching
   for a finding *promotes* it to Estimated — it does not skip the rule.
4. **Absence of data is a finding**, never silently green. A stale/missing source → `Source-Unavailable`, logged.
5. **Every finding carries an evidence trace** — source, tool, pull time. No trace → it does not render as fact.

---

## Sources — which area, which tool (scouted + verified, not assumed)

**Architecture (verified):** N-able is MCP-first, GraphQL underneath. Most N-able platform data routes
through **N-query** — the Federated GraphQL API exposed via MCP (Apollo MCP Server over the GraphQL
supergraph): device fleet health, patch compliance, security posture, customer hierarchy, and more.
N-query's public endpoint is reachable today; **OAuth is WIP**, so it's usable via custom config but not
yet a one-click connector. [CS: VERIFIED — QSR-4141, 2026-08-27] See `scout_input/nable-mcp-data-surfaces-2026-08-27.md`.

| Area | Source | How to pull | Confidence ceiling |
|---|---|---|---|
| Identity & access | M365 + Enforcer | MCP: Microsoft official + Enforcer community (read-only). **Must be scoped to Technica's own tenant** — the 2026-08-27 attempt failed because the only M365 server loaded was the operator's tenant, not Technica's (`working-notes.md`). Customer hierarchy via N-query. | Measured |
| Patching & network | N-central via **N-query (GraphQL/MCP)** | patch compliance + network policy through the supergraph; N-central MCP also live (supports actions) | Measured |
| Devices & lifecycle | N-central / N-sight via **N-query** | device fleet health + inventory through the supergraph; Env Health coworker adds lifecycle rollup | Measured |
| Security posture / vulnerabilities | **N-query** + **Adlumin MCP** (planned) + Security Tabletop coworker | security posture via supergraph; Adlumin detections/alerts when live; TTX after-action (run ~1 mo before) | Benchmarked |
| Incidents & tickets | Halo + Incident Response Analyst coworker | MCP: Halo (Technica's instance); IR coworker adds root cause; Adlumin investigation context (planned) | Benchmarked |
| Backup & recovery | Cove | Cove API (REST) — no vendor MCP yet, needs a dev-built bridge | Measured |
| Billing / usage (optional) | **Billing MCP** (POC) | invoice totals, usage trends, charge explanations — POC, not live | Estimated |
| Awareness training | usecure | **no MCP, no confirmed API** — hand-supplied or client-interview | Estimated |
| Technica EBR file | operator's 8-tab Excel | **reproduced** at `technica-ebr-source/` — 8 real tabs, structure confirmed; per-cycle content still needs a fresh export each quarter | your judgment |
| Carry-forward | Last Meeting Notes / Meeting Notes columns, per risk row (tab 3) | this **is** the real continuity mechanism — not a separate diff step against a prior register | Measured |
| RocketCyber alerts/compromises | tab 2 dashboard metrics | `[?]` — not in any Sources table before this reproduction; unresolved whether it's a live connector target, legacy tooling, or a gap. Do not fold into "Adlumin" without confirming. | Unverified |
| Exec summary | you | not inferable from any source | your judgment |

> **Prefer N-query** for anything on the N-able GraphQL supergraph (device/patch/security/hierarchy) — one
> connector, not per-product silos. If a listed MCP server or N-query is not reachable in your `.mcp.json`,
> that area falls back to **by-hand / client-interview**, capped at **Estimated**. Planned/POC surfaces
> (Adlumin, Billing, N-sight Classic) are named as roadmap, not treated as live. Do not invent data to fill
> a gap (CLAUDE.md §4).

---

## The cycle — run these steps in order

1. **Ingest.** Read Technica's EBR file + pull each source above. Flag any stale/absent source as
   `Source-Unavailable` (that is itself a finding).
2. **Continuity / delta first.** Confirmed 2026-09-04: in practice this is row-level, not a separate pass —
   each risk carries a "Last Meeting Notes" / "Meeting Notes" column pair in the register itself (tab 3).
   Read those before proposing anything new. Whether David *opens* the meeting on the delta (vs. covering
   it inline per-row) is still `⟨VERIFY⟩` — the mechanism is confirmed, the sequencing isn't.
3. **Judge each area.** `[Superseded 2026-09-04 — see the correction near the top of this file]` For each
   gap → consequence (business + liability) → priority. Grade **Low / Medium / High**, plain text —
   confirmed against the real risk register, not red/amber/green. **N/A-graded rows are suppressed from
   the client-facing surface**, per Technica's own rule (tab 3, row 9: "will be hidden from the report and
   reviewed again for changed next EBR") — distinct from `Source-Unavailable`, which is never hidden.
   The ~11 categories observed this cycle (Risk Management, Incident Management, Supply Chain Security,
   Engagement & Training, Asset Management, Data Security, User Management, Architecture & Configuration,
   Vulnerability Management, Identity & Access Management, Logging & Monitoring) are this cycle's evidence,
   not a confirmed fixed set — `⟨VERIFY with David: does this list grow?⟩`
4. **Translate** technical → business, Stefanie's formula: *data → risk → what it means to you →
   consequences if unactioned.* Two registers of tone: CFO / owner. No graphs or percentages in the
   client-facing surface.
5. **Getting-business.** Surface cyber / upsell openings **from the gaps** (NCSC shortfall → cyber package),
   tagged as expansion — never invented for the pitch.
6. **Liability discipline.** Every risk Technica declines is logged as a written, dated warning
   ("on them, not us"). Append-only — a `Declined` status in the register, never deleted.
7. **State-of-union.** The forward view: next 12 months, where you are → where you're going → what it costs.
8. **Chooser.** Propose findings ranked include/exclude, each with a confidence tier. **You pick.**
   Below-threshold → show the best guess **and expose a verify/switch affordance**. Unverified is hard-blocked
   from the client surface.

---

## Confidence tiers (words, never decimals)

- **Measured** — pulled straight from a connected source. Fact.
- **Benchmarked** — compared against a standard or last cycle. Solid, basis stated.
- **Estimated** — inferred, often because data came in by hand. Flagged, never hidden.
- **Unverified** — it will not guess. Held back from anything client-facing until a human vouches.

Tag every finding in `risk-register.md` with its tier and its evidence trace.

---

## Output contract

Write/update two files, then stop for review:

- **`working-notes.md`** — every finding, candid, internal. No sign-off gate.
- **`risk-register.md`** — the living register (Technica's). Only chosen findings, at the tier you chose,
  in the client-facing section. Each finding: grade · area · owner · status · confidence · evidence trace ·
  first-seen date. Model it on the ACP primitives — each finding is an **Audit Log** entry (append-only,
  dated, linked to the customer); its evidence trace mirrors a **Value Ledger** entry
  (execution, source, baseline); the improvement-over-time view is the **Value Ledger rollup**.

Then: **`git add` + commit** with a message naming the cycle. The commit is the activation, the version,
and the evidence record. Do not commit until a named human has reviewed (invariant 1).

---

## Human gates (stop and ask)

- **Before first activation:** confirm the runbook matches how Technica's EBR actually runs; confirm you
  understand it learned *structure*, not *judgment*; confirm the sign-off owner (see the frontmatter
  contradiction above — do not assume Vanessa without checking).
- **Before any client-facing output:** named sign-off. If a red finding is included, this is mandatory.
- **Teach-back:** when you correct a proposed grade, append the correction + your reasoning to
  `learned-judgment.md` and commit it. Next cycle, the coworker reads that file **first** and proposes
  *your* grade, not the default. (This is the only way it gets better at the thing that matters.)

---

## How the coworker persists and lives with the person

The coworker is not a bot running somewhere. **It is this repo.** It persists as files and "learns" by
accumulating the person's judgment as context it reads every cycle — not by retraining a model.

- **It exists** = the repo persists between sessions. Open Claude Code in it and the coworker is "there":
  Claude reads the runbook + the learned judgment + every prior register.
- **It remembers** = `git`. Every cycle is a commit. `git log` is its memory, its version trail, and the
  evidence chain.
- **It learns** = `learned-judgment.md`. Each teach-back correction (the person's grade + reasoning) is
  appended here and read **first** next cycle, so the default proposal drifts toward *this practitioner's*
  read. Over cycles this file becomes "David's/Vanessa's judgment, encoded" — the tacit knowledge made
  legible (CLAUDE.md §18: the person abducts, the artifact records; the model does not pretend to author it).
- **Honest limit:** the model's weights do not change. The *repo* is what compounds. If a session opens
  without this repo, none of the learning is present — the judgment lives in the files, not the model.
- **Per client:** one register + one learned-judgment stream per customer, so Technica's read doesn't
  bleed into another client's (Apex primitive: everything hangs off Customer). **Open seam in this folder:**
  `working-notes.md` flags that the original seed `risk-register.md` here was titled Fenwick Logistics
  before being overwritten to Technica — confirm with Beth this folder is Technica-only now, rather than
  assuming the seam is closed just because the current file reads "Technica."

So "who the coworker is" = runbook (how it works) + `learned-judgment.md` (how *you* judge) + the register
history (what it found and what Technica did about it). A dev stands up the connectors; the person grows
the judgment.

## Suggesting connectors (for the dev standing this up)

**This runbook is the connector manifest.** The Sources table above declares, per area, exactly which MCP
server / API to wire — see `WIRING-RUNBOOK.technica.md` in this folder for the per-connector test procedure.

Claude Code also has a live registry (`search_mcp_registry` / `suggest_connectors`) that surfaces
directory-listed servers with one-click Connect. **Caveat, verified 2026-08-27:** N-able's own connectors
(N-query etc.) are **not in the public directory yet** — a registry search for n-able/RMM/Halo returns
nothing, consistent with QSR-4141 (OAuth WIP, directory submission pending). So today the dev wires N-query
and the product MCP servers via **custom `.mcp.json` config** (N-query's endpoint is reachable now), not
one-click. Once QSR-4141 lands, `suggest_connectors` would surface N-query directly.

## Open / ⟨VERIFY⟩ — do not silently resolve

- **Sign-off owner — contradiction in this folder, not just unresolved:** `risk-register.md` records
  Vanessa (account lead) as sign-off, dated 2026-08-27. `learned-judgment.md`, same folder, still lists
  this as unresolved ("David or Vanessa?"). Someone needs to reconcile these before the next real cycle.
- Risk tier: high vs medium — no "medium" behaviour is specified yet.
- **Resolved 2026-09-04:** David's 8 areas = the 8 real tabs (confirmed, not encoded-from-record). His
  gap-logic per risk row is confirmed structurally (Category/Scenario/Date/Level/Treatment/carry-forward
  notes). Still open: whether the ~11 categories observed this cycle are the complete set, and whether he
  opens the meeting on the delta or covers it per-row.
- **New 2026-09-04:** RocketCyber — tracked by Technica every cycle, absent from every prior Sources table.
  Live connector, legacy tool being phased out, or genuine gap? Unknown — ask before assuming an answer.
- usecure: any public API at all? Unknown. Until resolved, that area is by-hand, capped at Estimated.
- Whether git history satisfies attestation-grade retention: [CS: UNKNOWN] — test, do not assume.
- The Fenwick/Technica seam in this folder's git history (see "How the coworker persists" above) — Beth's
  call, not resolved by this document.
