---
name: EBR Coworker
version: 1
powered_by: n-zo | claude-code        # the AI expert doing the reasoning
risk: high                            # ⟨VERIFY⟩ high vs medium — client-facing + liability claims
trigger: on-demand                    # deliberately NOT calendar-fired
sign_off_owner: ⟨VERIFY — David (technical) or Vanessa (account lead)? unresolved upstream⟩
deliverable: living risk register (risk-register.md, git-tracked)
confidence_regime: PROCEED-FLAGGED    # build; mark provisional; surface [CS:] tags; do not claim validation
proceed_because: the runbook's value as a testable artifact exceeds the cost of the ⟨VERIFY⟩ gaps, which are named not hidden
---

# EBR Coworker — executable runbook

This file **is** the coworker. Drop it (plus `risk-register.md`) into a repo, open Claude Code,
and say *"run the EBR coworker for <client>."* The whole ACP model — runbook + MCP tools +
human-approval gate — reduces to: this markdown + your `.mcp.json` connectors + you, in the loop.

**The register, not this file, is the product.** This file describes *how* to keep the register;
`risk-register.md` is the living artifact, and its **git history is the audit log, the version trail,
and the evidence chain** ("prove it to opposing counsel" — Lewis Pope, 2026-08-25).

Grounded in: acp-core 002 runbook fields · 004-ai-coworker-registry (draft→activate, immutable
versions) · technica-ebr-runbook-draft-2026-08-21 · Apex Sentient Design (primitives × surfaces,
confidence-and-switch) · stefanie-hammond 2026-07-30 · lewis-pope-ebr-details 2026-08-25.

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
| Identity & access | M365 + Enforcer | MCP: Microsoft official + Enforcer community (read-only). Customer hierarchy via N-query. | Measured |
| Patching & network | N-central via **N-query (GraphQL/MCP)** | patch compliance + network policy through the supergraph; N-central MCP also live (supports actions) | Measured |
| Devices & lifecycle | N-central / N-sight via **N-query** | device fleet health + inventory through the supergraph; Env Health coworker adds lifecycle rollup | Measured |
| Security posture / vulnerabilities | **N-query** + **Adlumin MCP** (planned) + Security Tabletop coworker | security posture via supergraph; Adlumin detections/alerts when live; TTX after-action (run ~1 mo before) | Benchmarked |
| Incidents & tickets | Halo + Incident Response Analyst coworker | MCP: Halo; IR coworker adds root cause; Adlumin investigation context (planned) | Benchmarked |
| Backup & recovery | Cove | Cove API (REST) — bridge; no vendor MCP yet | Measured |
| Billing / usage (optional) | **Billing MCP** (POC) | invoice totals, usage trends, charge explanations — POC, not live | Estimated |
| Awareness training | usecure | **no MCP, no confirmed API** — hand-supplied or client-interview | Estimated |
| Carry-forward | previous `risk-register.md` | read the last committed version | your judgment |
| Exec summary | you | not inferable from any source | your judgment |

> **Prefer N-query** for anything on the N-able GraphQL supergraph (device/patch/security/hierarchy) — one
> connector, not per-product silos. If a listed MCP server or N-query is not reachable in your `.mcp.json`,
> that area falls back to **by-hand / client-interview**, capped at **Estimated**. Planned/POC surfaces
> (Adlumin, Billing, N-sight Classic) are named as roadmap, not treated as live. Do not invent data to fill
> a gap (CLAUDE.md §4).

---

## The cycle — run these steps in order

1. **Ingest.** Read the operator's EBR file + pull each source above. Flag any stale/absent source as
   `Source-Unavailable` (that is itself a finding).
2. **Continuity / delta first.** Read the last committed `risk-register.md`. Which commitments were kept /
   slipped / rolled? What changed since? Open on the delta, not a blank re-check. ⟨VERIFY: does David open on the delta?⟩
3. **Judge each area** against the **NCSC 10 / Cyber Essentials** baseline. For each gap → consequence
   (business + liability) → priority. Grade **red / amber / green**. ⟨VERIFY: the exact areas + gap-logic are David's⟩
4. **Translate** technical → business, Stefanie's formula: *data → risk → what it means to you →
   consequences if unactioned.* Two registers of tone: CFO / owner. No graphs or percentages in the
   client-facing surface.
5. **Getting-business.** Surface cyber / upsell openings **from the gaps** (NCSC shortfall → cyber package),
   tagged as expansion — never invented for the pitch.
6. **Liability discipline.** Every risk the client declines is logged as a written, dated warning
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
- **`risk-register.md`** — the living register. Only chosen findings, at the tier you chose, in the
  client-facing section. Each finding: grade · area · owner · status · confidence · evidence trace ·
  first-seen date. Model it on the ACP primitives — each finding is an **Audit Log** entry (append-only,
  dated, linked to the customer); its evidence trace mirrors a **Value Ledger** entry
  (execution, source, baseline); the improvement-over-time view is the **Value Ledger rollup**.

Then: **`git add` + commit** with a message naming the cycle. The commit is the activation, the version,
and the evidence record. Do not commit until a named human has reviewed (invariant 1).

---

## Human gates (stop and ask)

- **Before first activation:** confirm the runbook matches how you actually run an EBR; confirm you understand
  it learned *structure*, not *judgment*; name the sign-off owner.
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
  read. Over cycles this file becomes "David's judgment, encoded" — the tacit knowledge made legible
  (CLAUDE.md §18: the person abducts, the artifact records; the model does not pretend to author it).
- **Honest limit:** the model's weights do not change. The *repo* is what compounds. If a session opens
  without this repo, none of the learning is present — the judgment lives in the files, not the model.
- **Per client:** one register + one learned-judgment stream per customer, so the coworker's read of
  Fenwick doesn't bleed into its read of another client (Apex primitive: everything hangs off Customer).

So "who the coworker is" = runbook (how it works) + `learned-judgment.md` (how *you* judge) + the register
history (what it found and what the client did about it). A dev stands up the connectors; the person grows
the judgment.

## Suggesting connectors (for the dev standing this up)

**This runbook is the connector manifest.** The Sources table above declares, per area, exactly which MCP
server / API to wire — that is the "suggest connectors" a dev needs: a checklist of what to stand up.

Claude Code also has a live registry (`search_mcp_registry` / `suggest_connectors`) that surfaces
directory-listed servers with one-click Connect. **Caveat, verified 2026-08-27:** N-able's own connectors
(N-query etc.) are **not in the public directory yet** — a registry search for n-able/RMM/Halo returns
nothing, consistent with QSR-4141 (OAuth WIP, directory submission pending). So today the dev wires N-query
and the product MCP servers via **custom `.mcp.json` config** (N-query's endpoint is reachable now), not
one-click. Once QSR-4141 lands, `suggest_connectors` would surface N-query directly.

## Open / ⟨VERIFY⟩ — do not silently resolve

- Sign-off owner: David or Vanessa? Unresolved upstream.
- Risk tier: high vs medium — no "medium" behaviour is specified yet.
- David's actual 8 areas, opening move, and gap-logic — encoded from the record; the tacit judgment is his.
- usecure: any public API at all? Unknown. Until resolved, that area is by-hand, capped at Estimated.
- Whether git history satisfies attestation-grade retention: [CS: UNKNOWN] — test, do not assume.
