# Risk Register — Technica

> **Living artifact**, client-facing in shape only. Produced by the EBR Coworker
> (`ebr-coworker.runbook.technica.md`). Candid internal notes live separately in `working-notes.md`
> (invariant 2 — two artifacts, never a redaction toggle).
> **The git history of this file is the audit log, the version trail, and the evidence chain.**
>
> ## ⚠️ TEST CYCLE — NOT CLIENT-READY
> This cycle checks whether data flows end to end (Part C of `SUPER-RUNBOOK.technica.md`). **Technica has
> not reviewed any finding below.** No named human has signed off (invariant 1). Do not send, forward, or
> summarize this to Technica or to Technica's contact until that sign-off happens.

**Client:** Technica · **Cycle:** test 2026-09-07 · **Powered by:** N-zo
**Sign-off:** ⟨UNRESOLVED — David (technical) or Vanessa (account lead)?⟩ — `risk-register.md` previously
recorded Vanessa (2026-08-27); `learned-judgment.md` still lists this as an open contradiction. Not picked
here. Required before any real cycle's output leaves this repo.
**Grading scale:** Low / Medium / High / N/A, plain text — **not** red/amber/green. Corrected 2026-09-04
against the real source file; no named baseline (NCSC 10 / Cyber Essentials) exists in Technica's actual
document — Cyber Essentials appears once, as an accreditation upsell (see Expansion openings below).

---

## Data availability — the honest state of this cycle

_Two different things are true at once, and this cycle keeps them separate:_

1. **Live connectors: still 0/4 wired.** N-query, Microsoft 365 (Technica tenant), HaloPSA, Cove — none
   configured (`.mcp.json` doesn't exist, only `.mcp.json.example`). Unchanged since 2026-08-27.
2. **Technica's real EBR spreadsheet is now in the repo** and was read in full this cycle. Every finding
   below comes from that document, tier **Estimated** (hand-recorded at a past meeting, not a live pull) —
   never Measured, because no connector was live to measure anything.

| Area | Live connector | This cycle |
|---|:--:|---|
| Identity & access | ⚪ Source-Unavailable | Estimated findings below (Architecture & Configuration) |
| Patching & network | ⚪ Source-Unavailable | Estimated finding below (Asset Management — EOL hardware) |
| Devices & lifecycle | ⚪ Source-Unavailable | Estimated — 17 devices reviewed, all Win11, all <5yrs (no findings raised, logged in working-notes as suppressed N/A) |
| Security posture / vulns | ⚪ Source-Unavailable | Estimated finding below (Vulnerability Management); RocketCyber counts unresolved `[?]` |
| Incidents & tickets | ⚪ Source-Unavailable | Hand-recorded dashboard snapshot only (66 tickets, 42.83 hrs) — no risk finding raised this cycle |
| Backup & recovery | ⚪ Source-Unavailable | No finding raised — backups confirmed in place (suppressed N/A, logged in working-notes) |
| Awareness training | not applicable (no connector exists) | Estimated findings below (Engagement & Training) |

⚪ = Source-Unavailable. No 🟢/High-confidence claim is made for any live-feed area — silent-green on
missing data is exactly what invariant 4 forbids.

---

## Findings — this cycle (29 of 41 reviewed rows; 12 N/A rows suppressed per Technica's own rule, logged in `working-notes.md`)

_Confidence: **Estimated** for every row — hand-recorded at Technica's EBR meeting, January 2026 (exact
day is a placeholder in the source itself — "XXXth January 2026" — not redacted by us). Owner: **—** — no
owner field exists in the source; not assigned by guess._

| Grade | Category | Finding | What it means | Owner | Status |
|:---:|---|---|---|:--:|---|
| Medium | Risk Management | No documented IT risk management plan/policy | No formal record of how IT risk is identified or handled | — | Open |
| Medium | Incident Management | No documented incident management plan | Response to an incident would be ad hoc, not rehearsed | — | Open |
| Medium | Supply Chain Security | No stated security requirements for suppliers/partners | A partner's weak security could become Technica's exposure | — | Open |
| High | Engagement & Training | 2 of 12 licensed users (USER1, USER2) haven't completed cyber-awareness gap analysis | Untrained users are the most common breach entry point | — | Open |
| High | Engagement & Training | 6 users at 0% training completion, 1 partial, 2 over 90% | Most of the user base has done no security-awareness training | — | Open |
| High | Engagement & Training | Phishing simulation run 2025-12-03 ("Prezzee Redeem" campaign) — result not stated in source | Cannot confirm whether the simulation caught anyone without the click-rate result | — | Open |
| High | Asset Management | EOL network hardware: Netgear GS752TP switch (EOL 2018), Xirrus WAPs | Aging network gear is the highest-priority hardware risk this cycle — see Expansion openings for quoted cost | — | Open |
| Low | Data Security | External sharing is allowed tenant-wide | Increases risk of company data leaving the tenant unreviewed | — | Open |
| Low | Data Security | 9 registered external guest users | Guest access should be periodically reviewed | — | Open |
| High | Data Security | OneDrive default sharing set to "Anyone" | Personal OneDrive data can be shared externally without restriction | — | Open |
| High | Data Security | SharePoint default sharing set to "Anyone" | Same exposure as above, at the SharePoint level | — | Open |
| High | Data Security | No Microsoft 365 retention policies in place | No enforced minimum retention on email/Teams data; one informal 6-year auto-delete policy exists — raises a data-retention-vs-risk question | — | Open |
| Low | Data Security | Secure-disposal process for old devices not yet documented | Process reportedly exists in practice; not written down for the next EBR | — | Open |
| Low | User Management | New-user onboarding process not yet documented for this register | Reportedly exists (Halo forms / IT Glue); not confirmed in writing this cycle | — | Open |
| Low | User Management | Leaver process not yet documented for this register | Same as above, for offboarding | — | Open |
| High | Architecture & Configuration | Intune Application Protection not enabled | Company data on personal iOS/Android devices isn't sandboxed from personal data | — | Open |
| High | Architecture & Configuration | "Block Legacy Authentication" conditional access policy is bypassed (USER6, and the office IP for all users) | Legacy auth bypass is a known account-takeover vector; USER6 specifically has no MFA on this path | — | Open |
| High | Architecture & Configuration | "Enforce MFA" conditional access policy is bypassed (USER6, office IP) | Same account exposed on the MFA-enforcement policy too | — | Open |
| High | Architecture & Configuration | "Require Compliant Device" policy bypassed for 5 identities (USER10, USER11, USER12, Group1, 2 guests) | Non-compliant/unmanaged devices can reach company data | — | Open |
| High | Architecture & Configuration | No geographic-location conditional access rule — all countries currently allowed | Tenant is reachable from anywhere; no geo-fencing in place | — | Open |
| High | Architecture & Configuration | No formal BYOD setup, despite users already bypassing the compliant-device policy | The BYOD need already exists in practice without a managed solution — see Expansion openings | — | Open |
| High | Architecture & Configuration | No DLP (data loss prevention) policies in place | Sensitive data isn't automatically monitored or blocked from inappropriate sharing | — | Open |
| High | Architecture & Configuration | Entra enterprise app registrations not on a regular review cadence | Unreviewed app registrations are a common lateral-access risk | — | Open |
| High | Architecture & Configuration | At least one device/user (DEVICE1 / USER1) without disk encryption | Unencrypted device is a data-loss risk if lost or stolen | — | Open |
| Low | Architecture & Configuration | 2 mailboxes over 90% capacity | Will hit a hard limit without an EOP2 licence or archiving | — | Open |
| Low | Architecture & Configuration | 1 licensed shared mailbox | Shared mailboxes shouldn't need a paid licence — a cost-recovery item, not a security risk | — | Open |
| High | Architecture & Configuration | 2 users without MFA (a service/scanner account, and USER7) | Any account without MFA is a high-priority exposure | — | Open |
| Medium | Architecture & Configuration | 10 dormant user accounts | Should be cleared periodically for housekeeping/GDPR | — | Open |
| Low | Vulnerability Management | Defender for Business EDR is the primary control; patch policy runs via Intune/N-Central | No gap raised — logged as the baseline control in place | — | Open |

---

## Open gaps — the sign-off list

_29 findings above are the candidates. None are chosen/excluded yet — that's the named human's call
(invariant 1), not this coworker's. This section stays empty until Technica sign-off happens._

---

## Improvement over time — the renewal story

No history yet. Tab 1 confirms **Last EBR: None** — this is genuinely cycle 1 for Technica. From the next
real cycle, `git log risk-register.md` becomes the trend source.

---

## Declined / accepted risks — append-only liability log

_(none — nothing has been shown to Technica yet; there is nothing to accept or decline)_

---

## Expansion openings — from the gaps, not invented

All three already appear in Technica's own technical roadmap (tab 6) — not generated for this register:

1. **EOL network hardware replacement** (switch, WAPs, SonicWall security services) — High priority.
   Quoted: site visit £150+vat (1st hr) / £110+vat (subsequent), SonicWall Advanced Protection Service
   Suite £1,173.60+vat. Switch/WAP cost TBD.
2. **Cyber Essentials accreditation** — Medium priority, named explicitly as an upsell (not the grading
   baseline). Quoted £600+vat/year.
3. **BYOD project** for the users/devices already bypassing the compliant-device policy — 0.5–1 day of
   project time, cost TBD.

---

## State of the union — next 12 months

_Pulled directly from Technica's own roadmap (tab 6), not drafted from scratch:_

- **Short-term (<12 months):** Office move — Low priority, targeted 2026-07-01, cost TBD. (Cross-reference:
  tab 2 notes a potential office move in June 2026 and a lease decision needed by end of February.)
- **Medium-term (12–24 months):** N/A — not yet defined in the source.
- **Long-term (24–36 months):** N/A — not yet defined in the source.
- No new hires planned this cycle (tab 6).

---

## Carry-forward

No committed **Technica** register exists to delta against — confirmed via tab 1 ("Last EBR: None"), not
assumed. This is cycle 1. From the next cycle, `git log risk-register.md` provides the prior version, and
tab 3's own "Last Meeting Notes" / "Meeting Notes" columns (empty this cycle) become the row-level
continuity mechanism per the runbook's step 2.

---

## Cycle log (git-style — the version trail)

```
2026-08-27  Technica cycle ATTEMPTED · 0/7 sources reachable · no Technica file present · 7 areas Source-Unavailable  (claude-code)
2026-09-07  Technica cycle TEST RUN · 0/4 live connectors wired (unchanged) · real EBR spreadsheet ingested ·
            41 rows reviewed, 29 findings proposed (Estimated), 12 N/A rows suppressed per Technica's rule ·
            NOT client-reviewed, NOT signed off, NOT committed as a real cycle  (claude-code)
```
_This becomes a real commit only once a named human (David or Vanessa — unresolved) reviews and signs off
per invariant 1. Until then this file reflects a test run, staged but not activated._
