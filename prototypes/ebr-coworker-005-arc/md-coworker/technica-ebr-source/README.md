---
source: "Technica_Executive Business Review - Redacted.xlsx" (OneDrive: cruft/)
reproduced: 2026-09-04
status: full-fidelity CSV export of the actual client artifact — not a fixture, not invented
purpose: resolves the ⟨VERIFY⟩ gaps in ebr-coworker.runbook.technica.md and briefs/technica-ebr-runbook-draft-2026-08-21.md about "David's actual 8 areas, opening move, and gap-logic"
---

# Technica's real EBR spreadsheet — reproduced

Every prior runbook draft treated the 8-tab structure, the grading scale, and the baseline framework
as `⟨VERIFY⟩` — encoded from secondary sources, not the artifact itself. This folder is that artifact,
reproduced tab-for-tab as CSV so it's greppable and git-trackable instead of locked in a binary `.xlsx`.
**Already redacted at source** — real names are `CLIENT`, `USER1`…`USER94`, `Guest User 7`, etc. Nothing
further was stripped or altered in the reproduction; this is a faithful transcription.

The 8 tabs are real, literal sheet names in the workbook — that resolves the "at least four
non-equivalent 8s" problem named in `briefs/technica-ebr-runbook-draft-2026-08-21.md` §C3: **the 8 is
the tab count**, not 8 risk categories, not 8 connectors, not 8 sources.

## Tab-by-tab

| # | File | Tab name (literal) | Rows | What it actually is |
|---|---|---|--:|---|
| 1 | `1-agenda.csv` | 1. Agenda | 13 | Meeting metadata: client, contact, date, location, last EBR, frequency (**Quarterly**), Client Advocate, next 3 scheduled EBR dates |
| 2 | `2-current-climate.csv` | 2. Current Climate | 111 | Contract start/milestones · current contracts & licences (manual, "obtain from Accounts Dept") · open projects · open tickets · **Halo dashboard metrics** (tickets raised, hours worked, SLA%) · **RocketCyber alerts/compromises** · CSAT/survey scores · IT approvers list · "what's new" announcements · **Business Priorities & Goals** strategic questions |
| 3 | `3-risk-review.csv` | 3 Risk Review New | 79 | The risk register (see below) + a separate **"Live Meeting: Tickets to create"** action-item tracker (rows 60–79) |
| 4 | `4-employee-review.csv` | 4. Employee Review | 133 | One row per M365 identity: Name · Email · Licences · notes (~94 named users + ~9 guest users + blanks) |
| 5 | `5-hardware.csv` | 5. Hardware | 20 | Straight RMM device export, 17 columns, 17 devices, all `Laptop - Windows` in this cycle |
| 6 | `6-technical-roadmap.csv` | 6. Technical Roadmap | 39 | Security concerns, compliance gaps, business growth (12/24/36mo), hardware EOL, vendor contracts, software, planned hires — all `Gap/Concern → Recommendation → Priority → Timeline → Cost` |
| 7 | `7-referrals-testimonials.csv` | 7. Referrals & Testimonials | 23 | Referral requests table, next-meeting planning, Google review link tracking |
| 8 | `8-follow-up-summary.csv` | Follow Up Summary | 1 | Single free-text cell: paste the post-meeting client email here |

## Corrections this forces on the runbook — do not carry the old assumptions forward

1. **There is no NCSC 10 / Cyber Essentials grading baseline in the real artifact.** Every runbook draft
   (`ebr-coworker.runbook.technica.md`, `briefs/technica-ebr-runbook-draft-2026-08-21.md`) states findings
   are graded "against the NCSC 10 / Cyber Essentials baseline." The actual Risk Register (tab 3) grades
   against **no named standard** — the questions (MFA, conditional access, DLP, encryption, backups) are
   Cyber-Essentials-*adjacent* in substance, but the sheet never cites the framework. Cyber Essentials
   appears exactly once, in tab 6, as an **accreditation upsell** ("Whilst CESP is in place, consider the
   accreditation"), not as the grading rubric. [CS: VERIFIED — direct read of the source file]
2. **There is no red/amber/green grading.** The Risk Level column (tab 3, col D) is plain text:
   **Low / Medium / High / N/A**, with a header note allowing for "VERY HIGH" that is never used in this
   cycle. No fill colour, no conditional formatting on that column (checked directly — `fgColor` is null
   on every cell). Every runbook draft's "grade red/amber/green" instruction does not match how Technica
   actually grades. [CS: VERIFIED]
3. **N/A rows are suppressed from the client-facing surface, on purpose** — tab 3, row 9: *"Will be hidden
   from the report and reviewed again for changed next EBR."* This is a real, David-authored rule, distinct
   from and compatible with invariant 4 (absence-is-a-finding) but not previously documented anywhere.
4. **Continuity/delta is row-level, not a separate step.** Every risk row carries two columns — **"Last
   Meeting Notes"** and **"Meeting Notes"** — so the carry-forward the runbook's step 2 describes as "read
   the last committed register" is, in the real practice, per-finding inline history inside the same table,
   not a distinct diff pass.
5. **A new source appears that no runbook draft names: RocketCyber.** Tab 2 tracks "Rocket Cyber Alerts"
   and "Rocket Cyber Compromises" as dashboard metrics reviewed every EBR. None of the Sources tables in
   `ebr-coworker.runbook.technica.md` or `.mcp.json.example` mention it. `[?]` — unresolved whether this is
   Technica-specific tooling, a predecessor to Adlumin, or a gap in every prior Sources table. Do not fold
   it into "Adlumin (planned)" without confirming — that would be inventing an equivalence.
6. **Halo already supplies dashboard-level metrics Technica tracks by hand:** tickets raised, hours worked,
   SLA%. If Halo's MCP server (already listed as real/live) can return these, that closes a manual step —
   but confirm the metric names match before assuming a 1:1 mapping.
7. **The risk register has ~11 distinct categories observed in this cycle** (Risk Management, Incident
   Management, Supply Chain Security, Engagement & Training, Asset Management, Data Security, User
   Management, Architecture & Configuration, Vulnerability Management, Identity & Access Management,
   Logging & Monitoring) — not a fixed named 8. Whether this list is exhaustive or grows per-cycle is
   `⟨VERIFY with David⟩` — this cycle's data is the only evidence available.
8. **Usecure data isn't pulled by a connector in current practice — it's manually transcribed into the risk
   register.** Tab 3, "Engagement & Training" rows quote usecure gap-analysis and phishing-simulation
   results as prose, entered by hand. This matches every prior runbook's "usecure: no connector, capped
   Estimated" conclusion — this is the first *direct* confirmation of it from the real artifact rather than
   an inference.

## What to do with this

- Treat these CSVs as the ingest fixture for a real Technica cycle — closer to production shape than the
  `sources/*.json` fixtures in `prototypes/ebr-coworker-004-assembly/`, which model a *generic* MSP, not
  Technica's actual template.
- Before wiring the connectors in `WIRING-RUNBOOK.technica.md`, map each CSV column to the MCP/API field
  it should eventually come from — some (tab 5 Hardware) already look like a literal N-central export;
  others (tab 2's RocketCyber metrics, tab 6's cost/timeline fields) may have no automatable source at all
  and should stay `your judgment` in the Sources table, not get assigned a connector that doesn't exist.
- Do not delete or "clean up" the `⟨VERIFY⟩` categories list above — categories may grow next cycle, and a
  hardcoded "8" or "11" would silently become wrong the moment David adds a row.

## Provenance

Source file: `OneDrive-N-able/cruft/Technica_Executive Business Review - Redacted.xlsx`, already redacted
by whoever supplied it. Reproduced via `openpyxl`, values only (no formulas, no formatting), dates
normalized to ISO. Nothing in these CSVs was invented, inferred, or filled in — blank cells in the source
are blank here too.
