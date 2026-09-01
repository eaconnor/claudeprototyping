# Runbooks & Headless Agent — findings correlated to the datadump

**Source:** "Runbooks and Headless Agent" call · 2026-07-24 · 1h26m · [transcript](runbooks-transcript-2026-07-24.md)
**Voices:** Joe Ferla · Lewis Pope · Stefanie Hammond · Nicole Reineke · Christopher Dunlop · Beth Connor
**Also drew on:** Copilot summary of the call (Beth-supplied) + local datadump.
**Purpose:** correlate, not overbake. Where does this land against what we already have.

**Classification (read first):** This is **internal expert testimony, n=3** (N-able Head Nerds + product). It is **market/domain-shelf** material and **value-prop framing** — directional. It is **not** user-shelf evidence and **not** projectable. Do not promote any `[A]` to `[R]` on the strength of this call alone; expert opinion triangulates a bet, it doesn't confirm a user need. [CS: HIGH]

---

## The sharpest thing in the room (name it first)

**Lewis Pope, unprompted, contradicts the moat thesis.** [CS: VERIFIED — 00:58:37, 01:00:50]

> "The data is the moat… every other major competitor has the same advantage… it would be trivial for them to do the same thing. The data moat is short-lived. You have to go a step further — it becomes part of a workflow… a curated, carefully orchestrated journey."

- **What we have:** the North Star / control-plane framing leans on *data access via the control plane* as the differentiator. [our datadump: North Star + `project_acp_datadump`]
- **Relation: CHALLENGES.** Not "data doesn't matter" — "data is necessary, not sufficient, and not durable." The defensible layer he names is **workflow · orchestration · coaching · encoded expertise** — the journey, not the artifact.
- **Correlates with** Idea Chess **Q1** (data-egress wall) but from the opposite side: Q1 asks *can we get the data legally*; Lewis asks *and what if getting it isn't enough*. Both point at the same conclusion — the bet can't rest on data access.
- **Not a spec edit yet.** This is a `CHALLENGES` against the North Star moat assumption. If you want it formalized as drift, that's a `refresh-datadump` run (human gate). Flagging, not writing. [CS: HIGH]

---

## Correlation table

| New from this call | What we already hold | Relation | Note |
|---|---|---|---|
| **The journey is the product, not the runbook** — Discover→Diagnose→Build→Review→Test→Maintain; control plane owns the *lifecycle*, not the *document* (Pope, Ferla) | Product-runbook = Gate-3 artifact in the triad; "control plane governs runbooks" framing | **EXTENDS + gently CHALLENGES** | If any spec is framed as "generate a runbook," this reframes it as lifecycle ownership. Correlates with Pope's prior "business operating system" line already in the Copilot summary. |
| **Generic runbook has limited value; arrange by asset; high-value assets get dedicated runbooks** (pharmacy cabinet, Delta's airplane, printers) — Pope | Runbooks must be **vendor-agnostic** [A] (Barber, Mincher, brain-dump triage 07-14) | **EXTENDS** | Adds a second build axis on top of agnosticism: *canonical pattern → client context → asset context → generated runbook.* The philosophical/golden runbook is only the seed. |
| **"What good looks like" / golden schema / build-to-a-schema** — Pope, repeatedly | `datadump-spec-model` §5: "success looks like" = TPI, an attribute of each top task; two-axis badge; golden template | **SUPPORTS (strongly)** | Direct hit on your own model. Agent outputs should never be free-form: Schema→Validate→Score→Gap→Revise before leaving the control plane. Stefanie's EBR Excel template is a literal schema target. |
| **Domain sub-agents + orchestrator** — "Stefanie-agent," "Lewis-agent"; orchestrator hands off to schema-builders + reasoning agents (Pope) | Band Protocol's own persona/council architecture; council returns tensions not synthesis | **SUPPORTS / mirrors** | Encoded operating principles, not model training. Maps cleanly to Security / Risk / EBR / Compliance / DR domain agents under an orchestrator. |
| **Runbooks are business workflows, not IT** — "you're an MSP, not an MITSP… business consultancy hat" (Pope) | User-shelf candidate spine: coworker bands = **Ops / Security-vCISO / Business** (`datadump-spec-model` §1b, residual [0%—Beth]) | **SUPPORTS** | Testimony backs the *Business* band as real, not decorative. Business continuity, regulatory reporting, EBRs, risk registers = in scope. |
| **Operator ≠ buyer; "some poor soul who shouldn't have the responsibility" picks the template** (Pope) | Idea Chess **Q2**: "operator never studied — ~93% assumed," named as the portfolio-level risk | **EXTENDS (confirms the gap)** | A specific texture on *who the operator is*. Still not a study — this is expert opinion about the operator, it does not close Q2. |
| **75% rule — "skeleton and guts, not musculature and skin"; MSP finishes the last 25%** (Ferla) | Build-as-you-go / "artifact is never empty and never done" (`datadump-spec-model` §6); Tier-1 Concept start | **SUPPORTS** | The value-delivery mechanism, in a partner's own words. "Never start from blank" = your build-as-you-go, restated. Ferla ties it to **2–3× → 5–10× MSP valuation** with a full runbook set [CS: MEDIUM — self-reported Head-Nerd valuation figures, 2024-era, not methodology-verified]. |
| **QBR → EBR reframe** — not about the report; forward-looking strategy; reports are audit/insurance *evidence*, not proof-of-value (Hammond, Pope) | "QBR automation" = **top-of-list** runbook ask in prior research | **REFINES / CORRECTS** | See below — this is the single most actionable correction in the call. |
| **Risk register as the recurring spine of the EBR; shadow-AI as the entry conversation** (Hammond) | North Star **Vision risk register** (structure); shadow-AI detection in Adlumin/N-central (Ferla) | **SUPPORTS + new synthesis** | Copilot's "risk as universal organizing principle" is plausible and worth holding as a hypothesis `[A]` — risk register shows up across security, ops-maturity, sales pipeline, AI-readiness. Don't over-elevate to "the primary object is Risk not Runbook" yet; that's a framing bet, not a finding. |
| **Tabletop exercise = recurring revenue + adversarial pen-test agents** (Pope) | — (not previously in datadump) | **NEW signal** | Offering-adjacent. Flip the same agents into adversarial mode to find gaps → produces the compliance evidence. "Business pen test, not IT pen test." Park on market shelf. |
| **Liability transfer is the MSP's core business; autonomy levels 1→N technician** (Ferla, Dunlop) | Permissions model unresolved [?] (Scally BD-001); autonomy-level note (Connor, triage) | **EXTENDS** | Mature MSPs *are* liability-acceptance businesses; they want transfer of liability to the vendor. Autonomy/permission granularity is the same open question, now with a *why*. |

---

## The QBR/EBR correction (worth its own beat)

Prior research had **"QBR automation" as the top runbook ask.** This call explains it and reframes it: [CS: HIGH — Hammond is N-able's EBR SME, direct testimony]

- MSPs ask for it **from a technical standpoint** ("techies run by techies, selling to non-technical buyers"). Hammond: they want to know *how to deliver one*, so they ask for a runbook.
- A good EBR is **executive-to-executive, forward-looking strategy** — goals, blockers, where the business is going — **not** a backward-looking backup/patch report.
- The reports MSPs scream for are **proof-of-value** ("don't forget to cut the check"). The reports that actually matter are **evidence for auditors / cyber-insurance underwriters** (Pope) and **pipeline generators** (Hammond).
- **Design implication:** don't automate "hello business, look at all the work I did." Build the thing that **surfaces gaps / risks / deficiencies / opportunities** from the telemetry (Adlumin, N-central, N-sight) and helps translate *data → story → pipeline.* Hammond's Excel template is the schema; she's sending it plus webinar links.

This is a `REFINES` on the existing top-task ranking, not a `CONFLICT` — the ask is real, the *shape* of the ask was misread as "generate a report."

---

## Golden starter set — answers an open research question

Copilot asked "minimum set of golden runbooks." The room voted: [CS: HIGH — direct, but expert opinion not user-ranked]

1. **Incident response involving a third party** (FBI/law enforcement) — isolate device, keep powered, don't talk to it; "insulate without offering legal advice" (Ferla). Low MSP awareness = the skill gap.
2. **Disaster recovery — how to *run* and *test* a playbook, realistic RTOs** (Ferla — "48h RTO when you have a standby image in Cove is absurd").
3. **EBR** (Hammond — template exists, becomes a schema).
4. **Tabletop exercise** (Pope — high-fidelity to environment, doubles as compliance evidence + adversarial gap-finder).

Pope's taxonomy caveat: **runbooks ≠ incident-response plans ≠ policies/guidelines** — different operational levels. And **ransomware is always the entry point** ("I need a ransomware playbook" is the question people ask before they know the real question). [CS: VERIFIED — transcript]

---

## Open questions this call raises

1. **Does the moat assumption survive?** Lewis's "data moat is short-lived" is the strongest challenge to the current framing. Route: Beth / Meaghan / Nicole. Formalize via `refresh-datadump` if you want it as drift.
2. **Is ACP a runbook generator or an MSP business-operating-system?** The room drifted hard toward the latter. This is the Copilot "biggest conceptual shift." It's a **framing bet [0%—Beth]**, not a finding — name it, don't let the tool decide it.
3. **Asset-layer architecture:** the canonical→client→asset→runbook chain is a build constraint not yet in any spec. Route: Eng + Beth.
4. **Operator study (Q2) still open** — this call adds texture, not closure. A study is still the answer.
5. **Tabletop-as-service** — new enough that it has no home on any shelf. Park it or spike it?

---

## What I did NOT do

- No spec edits, no drift flags written, no index changes. This is a correlation, per your ask.
- No promotion of any assumption to `[R]` — expert testimony doesn't clear the user shelf.
- If you want this turned into a formal changeset (drift flags on North Star moat assumption, EBR top-task refinement, new market-shelf entries), say **"run refresh-datadump on this"** and it goes through the human gate.
