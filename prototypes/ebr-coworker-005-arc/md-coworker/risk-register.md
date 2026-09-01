# Risk Register — Technica

> **Living artifact**, client-facing. Produced and maintained by the EBR Coworker
> (`ebr-coworker.runbook.md`). Candid internal notes live separately in `working-notes.md`
> (invariant 2 — two artifacts, never a redaction toggle).
> **The git history of this file is the audit log, the version trail, and the evidence chain.**
>
> _This cycle produced **no findings of fact** — every declared source was unreachable in this
> session (see `working-notes.md`). Per invariant 4, absence of data is itself a finding, logged
> below as `Source-Unavailable`. Nothing here is invented (CLAUDE.md §4). The section skeleton is
> retained as the template each real cycle fills._

**Client:** Technica · **Cycle:** attempt 2026-08-27 · **Powered by:** N-zo
**Sign-off:** Vanessa (account lead) — recorded 2026-08-27. Required before any client send (invariant 1).
**Baseline:** NCSC 10 / Cyber Essentials

---

## Data availability — the honest state of this cycle

_Not client-ready. This register renders the **pull state**, not resilience findings, because no source
returned data. It becomes a real register the moment the connectors in `.mcp.json.example` initialize
with working credentials and a Technica input file is supplied._

| Grade | Finding | Area | Owner | Status | Confidence | Evidence trace |
|:---:|---|---|---|---|---|---|
| ⚪ | Source-Unavailable — identity/access not pulled | Identity & access | — | Blocked | — | M365 wrong-tenant scope · 2026-08-27 |
| ⚪ | Source-Unavailable — patch/network not pulled | Patching & network | — | Blocked | — | N-query 0 tools initialized · 2026-08-27 |
| ⚪ | Source-Unavailable — device fleet not pulled | Devices & lifecycle | — | Blocked | — | N-query 0 tools initialized · 2026-08-27 |
| ⚪ | Source-Unavailable — security posture not pulled | Security & vulns | — | Blocked | — | N-query not initialized; Adlumin roadmap · 2026-08-27 |
| ⚪ | Source-Unavailable — tickets not pulled | Incidents & tickets | — | Blocked | — | no Halo server reachable · 2026-08-27 |
| ⚪ | Source-Unavailable — restore tests not pulled | Backup & recovery | — | Blocked | — | no Cove bridge stood up · 2026-08-27 |
| ⚪ | Source-Unavailable — awareness data not supplied | Awareness training | — | Blocked | — | usecure by-hand; nothing supplied · 2026-08-27 |

> ⚪ = Source-Unavailable (functional grade, per README's RAG-dot note — distinct from 🔴🟠🟢, which
> require measured input). **No 🟢 is shown for any area:** silent-green on missing data is exactly what
> invariant 4 forbids.

---

## Open gaps — the sign-off list

_The risks the client has not yet funded. Populated once sources return measured data. Empty this cycle
because no source was reachable — not because Technica has no gaps._

_(none proposed — no measured input; a grade with no data would be Unverified, hard-blocked by invariant 3)_

---

## Improvement over time — the renewal story

_Same findings shown as trend (Value Ledger rollup, per-account, per-period). Populated from the first
committed Technica cycle forward. No history yet — this is cycle 1._

| Finding | Q3 2026 | Direction |
|---|:--:|---|
| _pending first measured pull_ | — | — |

---

## Declined / accepted risks — append-only liability log

_Written, dated record of what the client chose. Never edited, never deleted ("on them, not us")._

_(none yet — no findings to accept or decline this cycle)_

---

## Expansion openings — from the gaps, not invented

_Surfaced from NCSC/Cyber Essentials shortfalls once gaps are measured. Never invented for the pitch._

_(none yet — no measured gaps this cycle)_

---

## State of the union — next 12 months

Where you are → where you're going → what it costs. _(Drafted by the coworker; this section is Vanessa's
to own and correct — it is not inferable from any source.)_

_(pending — requires a completed cycle)_

---

## Carry-forward

No committed **Technica** register exists to delta against (step 2). This is cycle 1 — it opens on a
blank baseline, not a delta. From next cycle, `git log risk-register.md` provides the prior version.

---

## Cycle log (git-style — the version trail)

```
2026-08-27  Technica cycle ATTEMPTED · 0 sources reachable · 7 areas Source-Unavailable · no findings proposed  (claude-code)
```
_This line becomes a commit when Vanessa reviews and `git commit`s (invariant 1) — see the session
report for the staged command. `git log risk-register.md` is the attestation trail._
