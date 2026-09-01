# Bradley rail — qbr-prep-sim v2 (portable markdown)

Ported verbatim from `qbr-prep-sim-v2.html` (the `<aside class="rail">` block) on 2026-07-31. **Internal — never client-visible.**

**Readiness:** Tier 2 · Direction — readiness: see .bradley-ledger (scores go stale in copy)
*readiness score = [A] prototype device — not an evidenced metric. It lives on this rail only, as a pointer to the ledger; never baked into UI copy, never on client-facing content.*

---

## What this sim tests — premise v2

The QBR Advisor Coworker takes the technician's pull labor — in the n=1 evidence the Head of Technical Overview does all 8 pulls, pulled off paying service-desk work for the whole batch — and the operator keeps the Judge step, the one moment with no tool at all. A tool inserted into the technician slot; the evidenced division of labor preserved. That premise is still [A]: the operator study (Q2) has not run, and no source shows an operator wanting the mechanism rather than the destination. This is the Q2 mechanism hypothesis made concrete — an instrument for the study, *not* a finding, and not evidence of demand.

## What you nailed

- Dual-surface stays structural at hi-fi — Working Document and Report are two artifact objects on two views; no redaction toggle anywhere (the prior Tier-1 failed exactly here).
- Confirm-gate is still a hard block with attribution — and the report's held-item note is computed from gate state, never a static string.
- The batch run shows its own audit trail — approval gate, reauth, endpoint-down, all in run_audit grammar; the human signal is recorded, not assumed.
- Echo discipline holds under polish — the report carries zero time-saved framing; the one ratio (≈0.4×, SEED) is quarantined on the internal admin surface.
- V15 trends render at Estimated/Unverified always — web-gathered content never masquerades as platform telemetry.

## What will hurt you

- **Premise laundering, now with better production values.** Hi-fi is more persuasive than lo-fi; if this run view convinces, the operator-pulls-via-Coworker [A] gets read back as evidence. A simulation is not a study — and a beautiful one is a more dangerous non-study.
- **n=1, one transmission line.** All operator evidence is Vanessa ← Stefanie — an echo measured twice. Representativeness (Nicole's altitude check) not run.
- **The report's quality bar is one trainer's magic-wand list.** Stefanie's asks are [CS: VERIFIED] as her asks — not as market requirements. A Stefanie-worthy report proves fit to Stefanie.
- **Market unsettled.** No shipping MSP-specific AI QBR tool with PSA writeback found — and Zomentum built and killed this exact category in July 2024. Opportunity or failed category: this sim must not pretend to settle it.
- **Substrate gap.** Value Ledger QBR producer not wired — the ledger renders nothing for QBR; every pull here would need a connector registered from scratch; spec 004 is 0/40 built. The run view is choreography, not integration.

## Routed cards

### Product
- **Product does:** take the mechanism-vs-destination question to the Q2 operator study before spec 004 build sequencing locks; get DIV-001 (which branch DEC-006 assumed) answered by Nicole directly; decide whether the batch-run premise (v2: AI in the technician slot) is the version to field.
- **Why now:** DEC-006 ranks QBR Advisor #1 of 5 (priority 2.90) — but the score traces to a single 22-partner interview catalog [D] [WOBBLY], and the assumed branch is open [?].
- **If you ship without it:** v1 sequencing commits to buyer purchase-intent with zero operator evidence — you may build the right destination with an unwanted mechanism.
- **[ROI]**
  - Business: Unknown: gap — no demand evidence beyond buyer intent; no willingness-to-pay data
  - User: Unknown: gap — the operator has never been studied
  - Unknown: whether the operator wants the batch run at all — that is the Q2 question itself

### Design
- **Design does:** run the three ux.md §6 quality-bar tests against this v2 — cognitive walkthrough (~2h solo), 5-second confirm-gate test ×3, ≥60/40 content audit on the report prose — and add a fourth pass: does the report read as strategic advisor or book report to a non-designer? File results as [R] by 2026-08-14.
- **Why now:** the report is now the star artifact; if its so-what framing fails the content audit, the whole "insights not data" bet fails with it. Warning-fatigue on the gate is sourced [R].
- **If you ship without it:** the gate ships as decoration and the report ships as a prettier data dump — the exact thing Stefanie's magic-wand asks name as the failure.
- **[ROI]**
  - Business: counter-metric protection — zero internal content reachable from the report surface
  - User: the operator can trust what crosses the line of visibility without re-checking every row
  - Unknown: whether defensibility-tier grammar reads at a glance — untested; Apex Tenets & Traps not yet pulled [?]

### Research
- **Research does:** field the Q2 operator study using this sim as the instrument — mechanism vs. destination, now with the batch run as the concrete mechanism — and run Nicole's altitude check on whether Vanessa is representative.
- **Why now:** the entire operator evidence base is one transmitted process measured twice (Vanessa ← Stefanie) — an echo, not triangulation [R]. Hi-fi raised the artifact, not the evidence.
- **If you ship without it:** this prototype's persuasiveness becomes the evidence — premise laundering, the exact failure mode the brief flags {F2}.
- **[ROI]**
  - Business: Unknown: gap — cannot size the opportunity from n=1
  - User: Unknown: gap — observed pull order, judge workflow, and follow-up ticket ownership all unsourced [?]
  - Unknown: the mechanism question in its entirety; also real distribution of MSPs running structured QBRs (the "only 20%" figure is uncited vendor content)

### Eng
- **Eng does:** scope connector cost honestly — all 8 pulls plus the trends sweep need connectors registered from scratch; spec 004 is 0/40 built; no frontend and no auth exist in the repo [D]. Price the run_audit polling surface and the approval-gate signal path for the QBR runbook specifically.
- **Why now:** what IS built — Runbook Engine 49/49, Value Ledger 55/55 (QBR producer unwired, renders $0), full MCP connection lifecycle incl. get_field_template() [D] — is real, but the batch-run grammar is built for flat coworkers only; the QBR-specific runbook is not {G3-3}. The defensibility tier is NOT in code (grep 2026-07-31: zero hits; code has baseline_source only).
- **If you ship without it:** substrate claims inflate — "the run view works" gets read as "the run works," and the 9-connector cost surfaces mid-build instead of pre-commit.
- **[ROI]**
  - Business: avoids committing sequencing to unpriced connector work
  - User: Unknown: gap — no operator latency/effort data exists for any pull
  - Unknown: per-source connector effort for Halo PSA, M365, phish-sim; MCP Configs spec (soft-delete, tool governance) not in tree [?]

## Council cross-talk

Council pass 2026-07-31 complete — 9 tensions named by the 44-voice council, routed not resolved. Full testimony: council-testimony-qbr-prep-sim.md (this packet). Tensions with owners: HANDOFF.md §2.

---

**Attribution: 0% Beth — accepted verbatim from pipeline. (Adjust after review.)**
