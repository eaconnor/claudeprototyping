# Working notes — Technica EBR cycle · 2026-09-07 (test run)

> Candid, internal. Never merged into the client-facing register (invariant 2).
> **This is a plumbing test, not a client-facing cycle.** Per SUPER-RUNBOOK.technica.md Part C4: checking
> whether data flows end to end, not producing a Technica-reviewed register. Nothing here has been shown
> to David or Vanessa. Do not route this toward a client inbox.

## Run summary

Previous attempt (2026-08-27): **BLOCKED** — 0/7 sources reachable, no Technica input file existed.
This cycle: **Part B is now done** — Technica's real spreadsheet is in the repo
(`technica-ebr-source/*.csv`, reproduced 2026-09-04 from `Technica_Executive Business Review -
Redacted.xlsx`). **Part A (live MCP connectors) is still 0/4 wired** — no `.mcp.json` exists in this
folder, only `.mcp.json.example`. `[CS: VERIFIED — direct check, 2026-09-07]`

Result: the cycle **ran** — Ingest through Chooser — using the real CSV as the sole data source. Every
finding below is tiered **Estimated** (hand-recorded at a past EBR meeting, not pulled from a live
connected API this cycle) or **Source-Unavailable** (connector never wired) or **Unverified/`[?]`**
(genuinely unresolved, not guessed). **No finding is tiered Measured or Benchmarked** — that would
require a live connector, which does not exist yet.

## Correction carried from `technica-ebr-source/README.md` — apply everywhere below

The 2026-08-27 draft and every prior runbook version assumed an NCSC 10 / Cyber Essentials grading
baseline and red/amber/green output. **Both are wrong, confirmed against the real file:**
- No named baseline. Cyber Essentials appears once, in tab 6, as an accreditation **upsell**, not a rubric.
- Grading is **Low / Medium / High / N/A, plain text.** No fill colour, no conditional formatting.
`risk-register.md`'s old "Baseline: NCSC 10 / Cyber Essentials" line and its ⚪🔴🟠🟢 dot legend are
retired in this cycle's register for that reason — carrying them forward would misrepresent how Technica
actually grades.

## Step 1 — Ingest

### 1a. Live connector status (Part A) — unchanged from 2026-08-27, re-verified this session

| Area (connector) | Reachable? | Evidence |
|---|:--:|---|
| N-query (N-central/N-sight — patching, devices, security, hierarchy) | ❌ | no `.mcp.json` in this folder; declared only in `.mcp.json.example` — 2026-09-07 |
| Microsoft 365 (identity & access, Technica tenant) | ❌ | same — not configured |
| HaloPSA (incidents & tickets) | ❌ | same — not configured |
| Cove (backup & recovery) | ❌ | same — no dev bridge exists, per WIRING-RUNBOOK §1d |
| usecure (awareness training) | ❌ (by design — no MCP exists) | confirmed absent, not just unconfigured |
| RocketCyber | `[?]` | tab 2 shows hand-entered dashboard numbers (Alerts: 19, Compromises: 0); no connector target confirmed — do not fold into "Adlumin planned" |

**None of A1–A4 pass this cycle.** This is not a new finding — it's the same 0/4 as 2026-08-27, restated
because nobody has actually gone and wired a connector between then and now.

### 1b. Real-spreadsheet coverage (Part B) — new this cycle, grep-verified

Programmatic count against `technica-ebr-source/3-risk-review.csv` (not eyeballed — see the header's own
41-row summary, cross-checked): **High 17 · Medium 4 · Low 8 · N/A 12. Total 41 risk rows.**
`[CS: VERIFIED — python csv count, 2026-09-07, matches the sheet's own header tally exactly]`

Every one of the 7 areas that were `Source-Unavailable` on 2026-08-27 now has **some** point-in-time
coverage from the spreadsheet — but only a snapshot from one past meeting, not a live feed:

| Area | Live connector | Spreadsheet coverage this cycle |
|---|---|---|
| Identity & access | still Source-Unavailable | tab 3 "Architecture & Configuration" — extensive: MFA bypass, conditional-access bypass, BYOD gaps (7 High findings) |
| Patching & network | still Source-Unavailable | tab 6 — EOL switch/WAP/SonicWall, High priority, quoted cost |
| Devices & lifecycle | still Source-Unavailable | tab 5 — 17 devices, all Windows 11, all reported <5yrs old (matches tab 3's Asset Management N/A rows) |
| Security posture / vulns | still Source-Unavailable | tab 3 "Vulnerability Management" (Defender for Business EDR, Low) + tab 2 RocketCyber counts (unresolved connector status) |
| Incidents & tickets | still Source-Unavailable | tab 2 Halo dashboard snapshot: 66 tickets raised, 42.83 hours worked, SLA% blank in source |
| Backup & recovery | still Source-Unavailable | tab 3 Data Security row: "Cove backups run 4 times a day, 7yr immutable retention" — N/A grade, hand-recorded |
| Awareness training | not applicable — no MCP exists | tab 3 "Engagement & Training" — usecure gap-analysis and phishing-sim results, hand-transcribed (confirms README point 8: this was never a connector, even in current practice) |

**Read this table carefully before treating any area as "done":** the right column is a photograph of one
past meeting. The left column not moving means the *next* EBR still starts from zero live data, same as
this one did.

### 1c. Data-quality gaps in the source itself (not introduced by this cycle)

- **No per-finding date.** The "Identification Date" column (tab 3, col C) is blank on every one of the 41
  rows. The only date anchor is the meeting itself.
- **The meeting date is itself incomplete in the source:** tab 1 records "**XXXth** January 2026" — the
  day is a literal placeholder in Technica's own document, not redacted by us. Evidence traces below cite
  "January 2026" and flag the day as unknown, rather than inventing one.
- **No "Owner" field exists in tab 3.** Every finding below carries owner `—`. Assigning "David" or
  "Technica" by default would be a guess CLAUDE.md §4 forbids.

## Steps 2–8

**Step 2 — Continuity/delta:** not applicable. Tab 1 confirms "Last EBR: None" — this is cycle 1 for
Technica, no prior register to diff against, no Last-Meeting-Notes content in tab 3 (columns present but
empty on every row this cycle). Confirmed structurally, not skipped.

**Step 3 — Judge:** grades taken directly from tab 3 col D, Low/Medium/High/N/A. Not re-graded, not
re-weighted — this cycle reproduces David's own assessment, it does not second-guess it. **12 N/A rows are
suppressed from the client-facing register per Technica's own documented rule** (tab 3 row 9). Full list of
suppressed rows below, so suppression is auditable, not silent.

**Step 4 — Translate:** deferred to `risk-register.md`'s per-row "what it means" — kept short, business
framing, no percentages, per the runbook's Stefanie formula.

**Step 5 — Getting-business:** three real, sourced expansion openings, all already present in Technica's
own document (tab 6) — not invented for this cycle:
1. EOL network hardware replacement (switch + WAPs + SonicWall services) — quoted costs in tab 6.
2. Cyber Essentials accreditation — named explicitly as an upsell in tab 6, distinct from the (nonexistent)
   grading baseline.
3. BYOD project for the users currently bypassing the compliant-device policy — 0.5–1 day quoted.

**Step 6 — Liability discipline:** nothing to log. This is a test cycle; Technica has not been shown any
finding, so nothing has been declined or accepted yet. An empty log here is correct, not a gap.

**Step 7 — State-of-union:** tab 6 already contains Technica's own 12/24/36-month growth-plan fields
(Office move, short-term; medium/long-term both marked N/A this cycle) — carried into the register instead
of left blank, since the source has it.

**Step 8 — Chooser:** all 29 non-N/A findings are proposed for the client-facing register at **Estimated**
confidence (see tier note above). None are held back as Unverified — each has a direct textual source in
tab 3, even without a live connector. The 12 N/A rows and the 6 still-dark connector areas are the honest
gaps; nothing here is dressed up as more measured than it is.

## Suppressed N/A rows (12) — logged here so suppression is auditable

| Category | Question | Note in source |
|---|---|---|
| Asset Management | Devices on Windows 10? | No — all devices on Windows 11 |
| Asset Management | Devices older than 5 years? | No — all under 5 years |
| Asset Management | Regular asset list shared with Technica? | Status OK, performed under CESP |
| Asset Management | Devices on unsupported OS? | All supported |
| Data Security | SharePoint sites set to public? | No — all managed by groups |
| Data Security | Third-party backups in place? | Yes — Cove, 4x/day, 7yr immutable |
| User Management | Old user accounts reviewed? | Yes — highlighted every EBR |
| User Management | Shared mailboxes reviewed for deletion? | Yes |
| User Management | Dormant accounts reviewed? | Yes |
| Architecture & Configuration | DMARC/DKIM/SPF gaps on domains? | No — all domains fine |
| Identity & Access Management | How is data access managed? | SharePoint groups, no public sites |
| Logging & Monitoring | How are logs monitored? | 365 logging + SOC, 24/7 cover under CESP |

## `learned-judgment.md` — not applied this cycle, flagging why

Every entry currently in that file is explicitly **fictional or demo**: the Fenwick client-handling notes
are marked "fictional seed," and the backup-restore correction is self-labeled "[DEMO — mechanism test,
NOT David's real judgment]." Nothing in there is Technica's actual teach-back yet, and two entries use
red/amber/green language that the 2026-09-04 correction shows doesn't match how Technica grades at all.
**No teach-back override was applied to any finding in this cycle.** The first time David or Vanessa
corrects a grade for real, that correction belongs in this file — not before.

## Open / unresolved — carried forward, not resolved by this cycle

- **Sign-off owner contradiction** (David vs Vanessa) — still unresolved. Not picked here.
- **RocketCyber** — still `[?]`. Numbers exist (19 alerts, 0 compromises) but no connector or ownership
  confirmed; not graded, not folded into any other area.
- **Fenwick/Technica seam** — the original seed `risk-register.md` in this folder predates Technica; not
  re-litigated this cycle, just re-flagged since this write overwrites that file's content.
- **Whether the ~11 observed categories are the complete set** — this cycle's data is still the only
  evidence; not resolved by seeing it twice.
