---
title: EBR Coworker — Technica end-to-end engineering test runbook
audience: engineer running the first real test cycle, start to finish
consolidates: WIRING-RUNBOOK.technica.md · ebr-coworker.runbook.technica.md · technica-ebr-source/README.md
status: as of 2026-08-27, 0/7 connectors reachable and no Technica source file was in the repo. Both gaps
  are addressed below — connectors still need wiring; the source file is now reproduced and in the repo.
---

# EBR Coworker — Technica: one runbook, wire → load → run → verify

This is the single path from "nothing is wired" to "a real Technica EBR cycle produced a register."
Three things had to exist before this test could run at all, and now do:

1. A connector manifest (`.mcp.json.example`) declaring what to wire.
2. Technica's actual EBR spreadsheet, reproduced at `technica-ebr-source/` (8 tabs, redacted at source).
3. The execution runbook (`ebr-coworker.runbook.technica.md`) that turns both into a register.

Follow this document top to bottom. Don't skip to "run the cycle" before Part A passes — a cycle run
against unwired connectors just reproduces the 2026-08-27 result (0/7 reachable, nothing but
`Source-Unavailable` rows), which is already proven and doesn't need re-proving.

---

## Part A — Wire the connectors

**Rule this whole part enforces:** declared in `.mcp.json` ≠ connected. Verify every entry with `/mcp`
before trusting a pull. [CS: VERIFIED — 2026-08-27, 0 servers returned tools in-session at that date]

### A0. Prereqs

1. This folder (`md-coworker/`) as a git repo, opened in Claude Code.
2. `.mcp.json.example` copied to `.mcp.json`, placeholders filled — secrets via env vars, never typed
   into the file literally (see A5).
3. `/mcp` available in your Claude Code session.

### A1. N-Central / N-sight — via N-query (GraphQL/MCP)

- **Feeds:** patching & network, devices & lifecycle, security posture, customer hierarchy.
- **Blocker:** OAuth is WIP (QSR-4141). Usable today only via custom config + bearer token, not one-click.
  Exact supergraph URL is `⟨VERIFY⟩` — the placeholder mirrors the repo-root `.mcp.json`; confirm with the
  Quasar team before trusting it. [CS: VERIFIED — QSR-4141, 2026-08-27]
- **Test:** set `NABLE_API_TOKEN` → `/mcp` shows `n-query` with tool count > 0 (0 tools = silent failure,
  not an error — don't mistake "no crash" for "connected") → pull device/patch data scoped to **Technica**,
  not the operator's own tenant.
- **Pass:** tool count > 0, pull returns Technica-scoped data with a timestamp.

### A2. Microsoft 365 — official Microsoft MCP

- **Feeds:** identity & access.
- **Blocker most likely to produce a false pass:** must be scoped to **Technica's** tenant. The 2026-08-27
  attempt failed exactly here — the only M365 server loaded was the operator's own tenant.
- **Test:** configure against Technica's client-tenant connection (delegated permissions only — no
  app-only/daemon pattern exists) → `/mcp` shows tools → pull identity data and **confirm the tenant ID in
  the response is Technica's**. That check is the whole test.
- **Pass:** tool count > 0 AND tenant ID confirmed as Technica's.

### A3. HaloPSA — real MCP server

- **Feeds:** incidents & tickets. Per `technica-ebr-source/README.md`, Technica *already* tracks Halo
  dashboard metrics by hand (tickets raised, hours worked, SLA%) in tab 2 — if Halo's MCP can return these,
  that's a manual step closed, not just a new connector. Confirm the metric names match before assuming
  a 1:1 mapping.
- **Test:** fill `HALO_INSTANCE_URL` + `HALO_API_TOKEN` for Technica's instance → `/mcp` shows tools → pull
  tickets/assets, confirm they belong to Technica's instance.
- **Pass:** tool count > 0, data scoped to Technica.

### A4. Cove — backup & recovery

- **Blocker is missing work, not config:** no vendor MCP exists. Cove is REST-only. `.mcp.json.example`'s
  `cove` entry points at a **dev bridge that does not exist yet**.
- **Test:** build the bridge (tracked separately, not this test) → fill `COVE_REST_BRIDGE_URL` +
  `COVE_API_TOKEN` → `/mcp` shows tools against the *hosted bridge* → pull a restore-test result for
  Technica's protected devices.
- **Until the bridge exists:** backup & recovery stays by-hand, capped Estimated. Don't fake a tool count.

### A5. Do NOT attempt to wire — confirmed absent, not just unconfigured

| Source | Status |
|---|---|
| usecure | No MCP, no confirmed public API. [CS: VERIFIED 2026-08-27]. By-hand only, capped Estimated. |
| Adlumin | Planned (ADL-2031), not live. |
| Billing MCP | POC, not live. |
| **RocketCyber** | Tracked by Technica every cycle (tab 2 — alerts/compromises) but absent from every Sources table until this reproduction. `[?]` — don't fold into Adlumin without confirming what it actually is. |

### A6. Credentials

`.secrets/` (gitignored) or env vars only. Never in the browser, a commit, or a chat window.
`.mcp.json` should reference `${VAR}` placeholders, not literal tokens — `git diff` it before committing.

### A exit criteria

Every connector in A1–A4 shows tool count > 0 in `/mcp` AND its smoke test returns Technica-scoped data.
A5 entries are exempt — they exit as "confirmed no connector," not as a wiring failure.

---

## Part B — Load the real Technica source

Technica's actual EBR spreadsheet is reproduced, tab-for-tab, at `technica-ebr-source/*.csv` (from
`Technica_Executive Business Review - Redacted.xlsx`, already redacted at source — `CLIENT`, `USER1`–`94`,
guest placeholders). This is not a fixture standing in for the real thing; it **is** the real thing, in a
greppable format. Full breakdown: `technica-ebr-source/README.md`.

**Before you trust anything the runbook says about "the 8 areas" or "the grading scale," read that
README's correction section.** Two things every earlier draft assumed turn out to be wrong, not just
unverified:

1. **No NCSC 10 / Cyber Essentials baseline exists in the real sheet.** Cyber Essentials appears once, as
   an accreditation upsell — not the grading rubric.
2. **Grading is Low/Medium/High/N/A, plain text — not red/amber/green.** Checked directly against the
   file: no fill colour, no conditional formatting on that column.

Also load-bearing for how you run Part C:

- **Continuity/delta is row-level**, not a separate step: each risk carries "Last Meeting Notes" /
  "Meeting Notes" columns in the register itself (tab 3).
- **N/A-graded rows are suppressed from the client-facing surface on purpose** (tab 3, row 9) — distinct
  from `Source-Unavailable`, which is never hidden.
- The ~11 categories observed this cycle (Risk Management, Incident Management, Supply Chain Security,
  Engagement & Training, Asset Management, Data Security, User Management, Architecture & Configuration,
  Vulnerability Management, Identity & Access Management, Logging & Monitoring) are this cycle's evidence,
  not a confirmed fixed set.

**B exit criteria:** you can point to which `technica-ebr-source/*.csv` feeds which row of the eventual
`risk-register.md`, and you know which fields in that CSV have no automatable source (tab 6's cost/timeline
fields, tab 2's RocketCyber metrics) and should stay `your judgment` rather than get assigned a fake
connector.

---

## Part C — Run the cycle

This is `ebr-coworker.runbook.technica.md`, summarized for the test; **that file is still the source of
truth** — read it in full before a real client-facing run, especially the invariants below, which do not
relax for a test.

### C0. The invariants (do not relax these, including for a test run)

1. **It proposes, you decide.** No client-facing output without a named human sign-off.
2. **Two artifacts, never one with a redaction toggle.** `working-notes.md` (candid) and `risk-register.md`
   (client-facing) are separate files.
3. **Unverified is hard-blocked** from the client-facing artifact regardless of sign-off.
4. **Absence of data is a finding.** A stale/missing source → `Source-Unavailable`, logged, never silently
   green.
5. **Every finding carries an evidence trace** — source, tool, pull time.

### C1. The cycle steps

1. **Ingest** — read `technica-ebr-source/*.csv` + pull each wired source from Part A. Flag anything
   unreachable as `Source-Unavailable`.
2. **Continuity/delta** — read the "Last Meeting Notes"/"Meeting Notes" columns per risk row (tab 3). This
   cycle is cycle 1 for the *repo*, but the spreadsheet itself already carries prior-meeting history — use
   it rather than treating this as a blank slate.
3. **Judge each area** — grade **Low/Medium/High**, plain text (not red/amber/green — see Part B).
   Suppress `N/A` from the client-facing surface per Technica's own rule; that's not the same as
   `Source-Unavailable`, which stays visible.
4. **Translate** technical → business (data → risk → what it means → consequences if unactioned). CFO /
   owner registers. No graphs or percentages client-facing.
5. **Getting-business** — expansion openings from the gaps only, never invented for the pitch.
6. **Liability discipline** — every declined risk logged, dated, append-only.
7. **State-of-union** — next 12 months: where you are → going → cost.
8. **Chooser** — rank findings include/exclude with a confidence tier. Below-threshold shows the best guess
   plus a verify/switch affordance. Unverified is still hard-blocked from the client surface.

### C2. Confidence tiers

**Measured** (pulled from a connected source) · **Benchmarked** (vs. a standard or last cycle) ·
**Estimated** (inferred / hand-supplied) · **Unverified** (won't guess — hard-blocked client-side).

### C3. Output contract

Write, then stop for review — do not auto-commit:

- `working-notes.md` — every finding, candid, internal.
- `risk-register.md` — chosen findings only, at the chosen tier, with grade · area · owner · status ·
  confidence · evidence trace · first-seen date.

Then `git add` + commit, naming the cycle. The commit is the activation and the evidence record — **do
not commit until a named human has reviewed** (invariant 1).

### C4. Human gates for this test

- Before running: confirm you understand this test is checking *plumbing* (does data flow end to end),
  not producing a client-ready register — Technica has not actually reviewed this cycle's proposed grades.
- Before treating any output as more than a test artifact: named sign-off, per invariant 1. A test run's
  `risk-register.md` should not go anywhere near a client inbox.

---

## Part D — Definition of done for this test

| Check | Pass condition |
|---|---|
| Connectors (Part A) | A1–A4 each show tool count > 0 in `/mcp` and return Technica-scoped data |
| Source data (Part B) | Each `technica-ebr-source/*.csv` row you expect to see is traceable into `working-notes.md` |
| Cycle run (Part C) | `working-notes.md` and `risk-register.md` are written; no invariant was relaxed |
| Grading | Findings show **Low/Medium/High** — not red/amber/green — and `N/A` rows are suppressed client-side, not deleted |
| Absence handling | Any area still unreachable after Part A shows `Source-Unavailable`, not a silent skip |
| Evidence trace | Every row in `risk-register.md` cites source + tool + pull time |
| Sign-off | Test output is explicitly marked as a test, not routed toward a client, until a named human reviews (invariant 1) |

If a check fails, the relevant Part above says what to fix — don't patch the output file directly; fix the
input (a connector, a CSV mapping, a rule) and re-run.

---

## Known opens — carried forward, not resolved by this document

- **Sign-off owner contradiction:** `risk-register.md` records Vanessa (account lead); `learned-judgment.md`
  still lists this as unresolved (David vs Vanessa). Reconcile before any real cycle.
- **RocketCyber** (A5) — unresolved connector status.
- **Fenwick/Technica seam** — `working-notes.md` flags that the seed `risk-register.md` in this folder was
  originally titled Fenwick Logistics before being overwritten to Technica. Confirm the folder is
  Technica-only now; not assumed closed just because the current file reads "Technica."
- **Risk tier (high vs medium)** on the coworker itself — no "medium" behaviour is specified yet.
- Whether the ~11 risk categories observed this cycle are exhaustive, or grow per quarter — `⟨VERIFY with
  David⟩`.

---

## Sources

- `WIRING-RUNBOOK.technica.md` — Part A in full, including the exact `.mcp.json.example` entries
- `ebr-coworker.runbook.technica.md` — Part C in full, including the 2026-09-04 corrections
- `technica-ebr-source/README.md` — Part B in full, including every correction the real spreadsheet forced
- `technica-ebr-source/*.csv` — the reproduced artifact itself
- `risk-register.md`, `working-notes.md`, `learned-judgment.md` — this folder's live state as of 2026-08-27
