---
title: Technica EBR Runbook — working draft
type: runbook draft (002 config + output contract)
status: DRAFT — intent encodes documented practice (SRC-U-009); David/Beth verify it's David's actual judgment (§18)
generated: 2026-08-21
grounded_in: SRC-U-009 (Craig/Technica) · coded corpus (Stefanie framework) · apex-sentient-design-deck-ref · ebr-coworker-phased-plan
---

# Technica EBR Runbook — working draft

**How to read this:** the formal 002 runbook config is **nine** fields — family-level `name` and `description`, plus per-version `intent`, `risk`, `script_refs`, `ai_reasoning_boundaries`, `escalation_rules`, `handoff_logic`, and `executor_type` (`change_summary` is a tenth, optional, version-metadata field) — verified directly against `acp-core-main-3/apps/backend/app/runbooks/schemas.py:63-75` and `data-model.md` §2. *(Correction, 2026-09-01: an earlier version of this doc said "five fields"; that undercounted the actual schema.)* The `intent` is the substance — David's judgment as operational steps. The **output contract** below is the coworker's designed experience (round-trip), which the coworker config carries alongside the runbook. Verify-with-David slots are marked `⟨VERIFY⟩` — I encoded documented practice; the tacit judgment is his to confirm or correct.

## Formal runbook (002 fields)

- **name:** EBR Advisor — Executive Business Review
- **description:** Turns an MSP's EBR file + stack data into a resilience-framed, decision-ready review, in a surface the operator chooses. Augments the operator's own artifact; does not replace it.
- **risk:** **high** ⟨VERIFY⟩ — client-facing + carries liability claims → the chooser gate's explicit-sign-off UX (Step 8 below) is a *design* response to that risk, not a *platform-enforced* guardrail. **Correction, 2026-09-01:** the runbook config layer stores `risk` (low/medium/high) but has no guardrail/sign-off enforcement wired to it — that behavior belongs to the not-yet-built trust/autonomy promotion system, explicitly out of scope in the 002 spec (NONGOAL-005). Do not represent risk-level enforcement as something the platform already does. Beth: confirm high vs. medium.
- **script_refs:** none (v1).

## intent (the judgment — operational steps)

1. **Ingest** the operator's EBR file (Technica: the 8-tab Excel) + the stack sources (trial: manual paste of N-Central, Enforcer, Usecure, Halo, Roost, Cloud Capsule). Flag any source that's stale/absent (defensibility tier: Source-Unavailable).
2. **Continuity / delta first** — compare to the last EBR: which commitments were kept / slipped / rolled; what changed in the environment since. This opens the review (kills the blank-canvas re-check, rows 190/191). ⟨VERIFY: does David open on the delta?⟩
3. **Judge each of the 8 tabs** ⟨VERIFY: the exact 8 and the logic⟩: identify gaps vs the **NCSC 10 / Cyber Essentials** baseline; for each gap → **consequence** (business + liability) → **priority**. Grade **red / amber / green**.
4. **Translate** technical → business, Stefanie's formula: *data → risk → what it means to you → consequences if unactioned.* Two registers: CFO tone / owner tone. No graphs/percentages in the client-facing surface (Must 1).
5. **Getting-business** — surface cyber / SOC / upsell openings *from the gaps* (NCSC/Cyber Essentials shortfall → cyber package), tagged as expansion, not invented for the pitch (the £300k-rebuild pattern, row 278).
6. **Liability discipline** — every risk surfaced and client-declined is logged as a written, dated warning ("on them, not us," row 280). Append-only.
7. **State-of-union framing** — the forward view: next 12 months, where you are → where you're going → what it costs (row 281).
8. **Chooser** — propose findings ranked include/exclude, each with a confidence tier (Measured / Benchmarked / Estimated / Unverified). Operator picks. Confidence below threshold → render best guess **and expose an affordance to switch/verify** (Sentient Design intent-signal rule; Unverified is hard-blocked from the client surface).

## Output contract (round-trip — the coworker's experience)

- **In:** the operator's own file (their form).
- **Enriched by:** the intent above.
- **Out — operator's choice of surface** (Apex Sentient Design: same primitives, different surface by intent):
  - **Dashboard / review surface** for the room — straightforward (Apex/Vertesia render).
  - **Their own form, filled** — write back into their Excel/format. ⚠️ M365-write gap (RA-018) — heavier; flag as phase-dependent.
- **Dual-surface, structural** (Must 6): internal working notes (candid, all findings) vs. client-facing (chooser-selected). Two artifacts, never a redaction toggle.
- **Primitives:** Customer / Device / Policy / Audit Log ⟨+ an EBR-review primitive — to define⟩. **Surfaces:** dashboard, table, card, their-Excel.

## Coworker wrapper (for the handoff thread, not the runbook itself)
Guardrails: high → explicit sign-off. Trigger: file-drop / on-demand. Autonomy: Assisted (trial). Model: Vertesia. Data-in: manual paste (trial) → 8 connectors (later).

**Correction, 2026-09-01:** none of this wrapper (Guardrails/Trigger/Autonomy fields) exists on the real `Coworker` ORM model (`acp-core-main-3/apps/backend/app/agents/models.py:24-57` — it has `display_name`, `system_prompt`, `model_id`, `mcp_instance_ids`, `skill_ids`, `output_schema`, `steps`; no `runbook_id`, no guardrail/trigger/autonomy fields). More load-bearing: **there is no persisted link from a Coworker to a Runbook at all.** Coworker↔runbook assignment (`app/runbooks/ports.py:52-84`) is an in-memory stub (`InMemoryCoworkerAssignment`) used only to power the deprecation-impact warning — it is not a real relationship a coworker resolves at runtime. "EBR Coworker runs the EBR Advisor runbook" is target-state design intent, not current backend behavior. Any prototype built from this brief must represent that gap honestly (a visible "not yet wired" state), not imply the integration exists today.

## Open / verify
- ⟨VERIFY⟩ slots above — David's actual 8 tabs, opening move, and gap-logic. I encoded the record; he owns the judgment (§18).
- Risk level (high vs medium). Beth.
- The EBR-review primitive definition + how it maps to Vertesia. Handoff thread.
- Portability of this runbook off Vertesia — the Defend crux. Beth + Nicole.
- **New, 2026-09-01:** when/whether Coworker↔Runbook assignment becomes a real persisted relationship — currently an in-memory stub (`app/runbooks/ports.py`). Not this brief's call; flagging so the rebuilt prototype doesn't get built as if it's already solved.

**Correction, 2026-09-04:** the "8 tabs, opening move, gap-logic" ⟨VERIFY⟩ above is now resolved against
the real artifact — Technica's actual EBR spreadsheet (`prototypes/ebr-coworker-005-arc/md-coworker/technica-ebr-source/`,
reproduced tab-for-tab from `Technica_Executive Business Review - Redacted.xlsx`). Two corrections this
draft got wrong, not just unverified: **(1)** there is no NCSC 10 / Cyber Essentials grading baseline in
the real sheet — Cyber Essentials appears once, as an accreditation upsell, not the rubric this document's
step 3 claims. **(2)** grading is plain text **Low/Medium/High/N/A**, not red/amber/green — no fill colour,
no conditional formatting on that column, checked directly. See that folder's `README.md` for the full
list of corrections (including a previously-unnamed source, RocketCyber, tracked in tab 2) before building
against this brief's step 3 or step 8 as written.
