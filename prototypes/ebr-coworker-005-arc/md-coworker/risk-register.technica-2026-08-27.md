# Risk Register — Technica

> **Living artifact**, client-facing. Maintained by the EBR Coworker. Candid notes live in `working-notes.md`.
> **Git history of this file is the audit log / version trail / evidence chain.**
>
> _This cycle produced **no findings of fact** — every declared source was unreachable (see
> `working-notes.md`). Per invariant 4, absence of data is itself a finding, logged below as
> `Source-Unavailable`. Nothing here is invented (CLAUDE.md §4)._

**Client:** Technica · **Cycle:** attempt 2026-08-27 · **Baseline:** NCSC 10 / Cyber Essentials
**Sign-off:** ⟨VERIFY — David or Vanessa? unresolved; required before any client send⟩

---

## Data availability — the honest state of this cycle

_Not client-ready. This register renders the pull state, not resilience findings, because no source
returned data. It becomes a real register the moment the connectors in `.mcp.json.example` initialize._

| Grade | Finding | Area | Status | Confidence | Evidence trace |
|:---:|---|---|---|---|---|
| ⚪ | Source-Unavailable — identity/access not pulled | Identity & access | Blocked | — | M365 wrong-tenant scope · 2026-08-27 |
| ⚪ | Source-Unavailable — patch/network not pulled | Patching & network | Blocked | — | N-query tools not initialized · 2026-08-27 |
| ⚪ | Source-Unavailable — device fleet not pulled | Devices & lifecycle | Blocked | — | N-query tools not initialized · 2026-08-27 |
| ⚪ | Source-Unavailable — security posture not pulled | Security & vulns | Blocked | — | N-query not initialized; Adlumin roadmap · 2026-08-27 |
| ⚪ | Source-Unavailable — tickets not pulled | Incidents & tickets | Blocked | — | no Halo server wired · 2026-08-27 |
| ⚪ | Source-Unavailable — restore tests not pulled | Backup & recovery | Blocked | — | no Cove bridge · 2026-08-27 |
| ⚪ | Source-Unavailable — awareness data not supplied | Awareness training | Blocked | — | usecure by-hand; nothing supplied · 2026-08-27 |

> ⚪ = Source-Unavailable (functional grade, per README's RAG-dot note — distinct from 🔴🟠🟢, which
> require measured input). No 🟢 is shown for any area: silent-green on missing data is exactly what
> invariant 4 forbids.

---

## Carry-forward

No committed **Technica** register exists to delta against (invariant / step 2). First real cycle will
open on a blank baseline, not a delta. (A `Fenwick Logistics` seed register exists in this folder — a
different client; not Technica's history.)

---

## Cycle log (git-style — the version trail)

```
2026-08-27  Technica cycle ATTEMPTED · 0 sources reachable · 7 areas Source-Unavailable · no findings proposed  (claude-code)
```
_This line is the honest first entry. It becomes a commit when a human reviews and `git commit`s
(invariant 1) — see the command in the session report._
