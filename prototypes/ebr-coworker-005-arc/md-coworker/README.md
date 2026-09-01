# EBR Coworker — the markdown-driven version

Proof that the whole EBR-coworker experience can run off a `.md` file in Claude Code — no bespoke
platform required. The "coworker" reduces to **runbook + MCP tools + a human in the loop**, which is
exactly what Claude Code already is.

## Files

- **`ebr-coworker.runbook.md`** — the coworker. Instructions Claude Code follows: sources, the 8-step
  cycle, confidence tiers, invariants, human gates, output contract.
- **`risk-register.md`** — the deliverable it produces and maintains. The living artifact. Its **git
  history is the audit log / version trail / evidence chain.**
- (`working-notes.md`) — created at run time: candid internal findings, separate file, never merged
  into the client-facing register.

## How to run it

1. Put these files in a git repo and open it in Claude Code.
2. Configure `.mcp.json` with the connectors you have (N-central, M365, Halo are real MCP servers today).
3. Say: **"run the EBR coworker for Fenwick Logistics."**
4. Claude reads the runbook, pulls from the MCP servers it can reach, drafts findings into
   `risk-register.md` with confidence tiers, and **stops for your review** (invariant 1).
5. You correct grades (teach-back), approve, and `git commit`. The commit *is* the activation and the
   evidence record.

## What's real today vs. what's a gap

**Real now** [CS: VERIFIED / HIGH]
- **N-query** — N-able's Federated GraphQL API exposed via MCP — is the core layer: device fleet, patch
  compliance, security posture, customer hierarchy through one connector. Endpoint reachable today; OAuth
  WIP (custom config works, one-click directory listing pending). [CS: VERIFIED — QSR-4141, 2026-08-27]
- N-central + N-sight MCP (live, support actions), M365 (official), Halo also have real MCP servers.
  Adlumin MCP + Billing MCP are planned/POC — named as roadmap, not treated as live.
- Claude Code natively reads `.md` runbooks, calls MCP tools, writes files, keeps a human in the loop.
- Git history genuinely gives you an append-only, dated, versioned evidence trail — the thing
  idea-chess flagged as the missing moat (BET9), solved by the medium.

**Gaps / honest unknowns**
- usecure has no MCP and no confirmed API — that area stays by-hand, capped at Estimated. [CS: VERIFIED]
- Confidence *self-scoring* is still the actual product and still hard — a `.md` doesn't make the model
  better at knowing what it doesn't know. [CS: MEDIUM]
- Multi-user, RBAC, scheduling, credentialed instances, truly immutable versions = platform features
  git only *approximates*. Fine solo; not ACP. [CS: HIGH]
- Whether git history satisfies attestation-grade retention for an insurer/auditor: [CS: UNKNOWN] —
  test it, don't assume it.

## A note on the RAG dots

The 🔴🟠🟢 in `risk-register.md` are **functional grade encoding**, not decorative emoji — markdown has no
other clean way to render red/amber/green, and Stefanie's explicit ask was "colours, simplicity, or give
me a grade." Distinct from the cutesy-UI-emoji issue in the HTML prototype (which was removed).

## Grounding

acp-core 002 (runbook fields) + 004 (draft→activate, immutable versions) · value_ledger models
(evidence trace, rollup) · Apex Sentient Design (primitives × surfaces, confidence-and-switch) ·
technica-ebr-runbook-draft-2026-08-21 · stefanie-hammond 2026-07-30 · lewis-pope-ebr-details 2026-08-25.
