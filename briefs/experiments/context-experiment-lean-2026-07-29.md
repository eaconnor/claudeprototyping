---
artifact: context.md (lean variant — build-agent format)
experiment: context-format-science
hypothesis: lean checklist with explicit BLOCKED markers changes build agent behavior vs. narrative
comparison: briefs/context/qbr-ebr.context.md (Option A — narrative)
source_evidence: identical to Option A (same source docs, different format)
gate_ready: CONDITIONAL — Package 3 only; Package 5 blocked on Q1 legal
blocker_count: 9
last_updated: 2026-07-29
---

# QBR/EBR — Lean Context (Build-Agent Format)

## Reading this file

Items marked `[A]` are ASSUMPTIONS. Items marked `[?]` are UNKNOWNS.
`[BLOCKED]` = build agent MUST stop and flag for human confirmation before proceeding.
Items marked `[R]` or `[D]` are sourced — build can proceed on these.

The format experiment: in the narrative (Option A), `[PROPOSED, confirm]` tags are inline
speed bumps — a human sees them, an agent reads past them. Here, BLOCKED is a gate, not
a flag. The question: does the format change what the build agent produces?

---

## GATE 1 — Do we understand the problem?

### CONFIRMED — build proceeds on these

- QBRs/EBRs exist as a regular client-engagement practice at MSPs.
  `[R: Stefanie Hammond boot camp, Vanessa Chart, Confluence secondary research]`

- Prep takes 3–7h/quarter.
  `[D: Stefanie Hammond, n=1, vendor-relayed — directional only]`

- **4–5h/EBR — echo, not triangulation.**
  `[D: Vanessa Chart self-report, 20:23]` — DOWNGRADED (service blueprint Finding 2, 2026-07-29):
  Vanessa adopted this framework after Craig brought it home from Stefanie's training. Not two
  independent operators arriving at the same number. Treat as directional n=1.

- Primary operator is the non-technical delivery/account lead.
  `[R: Vanessa Chart, Head of Client Delivery, identity verified 2026-07-28]`

- 8 distinct data pulls required for prep (15-tab template: Risk · Compliance · Hardware/Software
  · Employee · Tech Roadmap · Tech Budget · Agenda · Kick-off · Priorities · Action Items ·
  Referrals · Testimonials · Post-meeting · Next-meeting · KPIs).
  `[R: Stefanie Hammond's own EBR template, primary source, verified]`

- Client-side role: finance director / exec, non-technical.
  `[R: Vanessa Chart, 10:16]`

- All operator evidence is n=1, vendor-selected reference customer.
  `[WOBBLY — not projectable to a broader operator population]`

### BLOCKED — resolve before build

- **Buyer persona (MSP owner/partner Craig):** Named in corpus, not independently verified.
  `[?]` → Owner: Beth
  BLOCKED: do not build buyer-facing surfaces until persona is verified.

- **Whether operator wants mechanism (AI drafts + human edits) vs. only destination (client-ready
  output):** Operator has never been directly studied on this question.
  `[?]` → Owner: Beth / operator research
  BLOCKED: informs the UX pattern for the entire prep experience.

- **WTP anchor:** "$300+/user" (Kenneth/Guidepoint) contradicts ScalePad competitive data
  ($250/mo entry tier, no flat per-user model found).
  `[?]` → Owner: Beth
  BLOCKED: do not quote either figure in a prototype or brief without resolving.

---

## GATE 2 — Are we making the right thing?

### CONFIRMED — build proceeds on these

- Package split exists: Native (N-able stack only) vs. Cross-Vendor is a confirmed architectural
  fork, not a scope question.
  `[R: Idea Chess pass 2026-07-20]`

- No direct competitor ships AI QBR with real PSA writeback.
  `[R: competitive scan 2026-07-28 — directional; market moves fast]`

- QBR Advisor coworker is already named in `specs/004-ai-coworker-registry` — 0 of 40 tasks done
  as of 2026-07-29.
  `[R: acp-core-main, specs/004-ai-coworker-registry/tasks.md]`

- Value Ledger + Runbook Engine are already built. The gap is subject matter (8 data pulls,
  judgment layer, dual-surface structure), not mechanism.
  `[R: acp-core-main, 2026-07-29]`

- The service blueprint (26 steps, 7 stages) is now the canonical backstage spec.
  `[R: briefs/ebr-service-blueprint-2026-07-29.md]`

### BLOCKED — resolve before build

- **Sustaining vs. disruptive classification** for each package branch.
  `[?]` → Owner: Beth
  BLOCKED: changes what the product promises and to whom.

- **Q1 legal gate:** Can N-able pull non-N-able vendor data into client artifacts?
  `[?]` → Owner: legal / DPA review (days-long)
  BLOCKED on Package 5 (Cross-Vendor) entirely. Package 3 (Native) can proceed if this fails.

- **Positioning:** delivery lead as primary user vs. MSP owner as buyer.
  `[A]` → Owner: Beth
  BLOCKED: changes the onboarding surface and the value prop framing.

- **Dual-surface is structural — two real artifacts required.**
  `[R: service blueprint Finding 3, 2026-07-29]`
  NOT A BLOCKER ON BUILD — but governs the data model: two distinct artifact objects
  (working doc + client extract), no shared field except foreign key. A visibility toggle is
  a schema violation. This is non-configurable.

---

## GATE 3 — Are we making the thing right?

### NON-NEGOTIABLE — build must implement all of these

| Must | Rule | Machine-checkable? |
|---|---|---|
| 1 | Business-value framing only (no graphs/percentages to client) | Yes — grep output for "%", chart elements |
| 3 | Follow-up actions convert to PSA tickets | Yes — API: action item → PSA ticket within N days |
| 5 | Both core artifacts present (risk register + tech roadmap) | Yes — schema: both objects must exist |
| 6 | Two distinct artifact objects (working doc ≠ client extract) | Yes — schema: no shared field except FK |
| 8 | Risk Register legal-shield language absent from client-facing surface | Yes — pattern match on output |

**Must 8 — machine-specific expansion (2026-07-29):** A machine-assembled risk register that
surfaces every detected gap expands the documented record of what the MSP knew. Volume of
detection = volume of exposure. Auto-draft, human-clears is the only defensible pattern. The
confirm-gate is required, not optional.
`[CS: HIGH — derived from service blueprint Finding 1; not yet reviewed by counsel]`

### BLOCKED — acceptance criteria incomplete

- **Must 5 (both artifacts):** which compliance standard applies per client. `[?]`
  BLOCKED: cannot validate completeness without scope definition.

- **Confidence tier mapping** (Measured / Benchmarked / Estimated / Unverified) → Must 8
  confirm-gate: logic is specced, acceptance criteria not written.
  `[?]` → Owner: Beth + Eng
  BLOCKED: defines what "unverified" means in the risk register output.

---

## Open decisions — Beth only

These cannot be resolved by a build agent or by additional research without Beth's judgment.

1. Positioning fork: delivery lead (user) vs. MSP owner (buyer) — informs onboarding and value prop
2. MVP spine: Env Health assembly vs. severing service-desk dependency as first milestone
3. Confidence scope: differentiator (Measured/Benchmarked/Estimated/Unverified in UI) vs.
   enablement (internal only) vs. research-first (prove it matters before building the UX)
4. Q1 legal gate: must clear before Package 5 can proceed
5. WTP anchor: resolve ScalePad $250/mo vs. "$300+/user" contradiction before quoting either

---

## [A]+[?] ratio (47% rule — grep-verified before quoting)

| Gate | Total items | BLOCKED items | Ratio |
|---|---|---|---|
| Gate 1 | 8 | 3 | 37.5% |
| Gate 2 | 8 | 4 | 50% |
| Gate 3 | 7 | 2 | 28.6% |
| **Overall** | **23** | **9** | **39%** |

**Verdict:** > 30% threshold — **NOT READY for build on Package 5.**
**CONDITIONALLY READY for Package 3** if Q1 legal clears and Must 5 scope is defined.

The five non-negotiable Musts (§Gate 3) can proceed on Package 3 immediately — those are sourced
and the data model is clear.

---

## Format experiment note

The test: hand both Option A (narrative) and Option B (this file) to a build agent with the same
request ("build a prototype testing the QBR Advisor concept"). Observe:
- Does the build agent produce a dual-surface data model in Option B but not Option A?
- Does the build agent stop on legal-shield language in Option B but treat it as background in A?
- Does "BLOCKED: do not build buyer-facing surfaces" produce a different surface count than
  `[PROPOSED, confirm]` inline in running text?

Prediction: Option B produces fewer confirmation-asking failures (agents that build past a block)
and more schema-correct outputs (dual artifact objects, confirm-gate on Must 8). Option A produces
richer prose-level fidelity but more structural mistakes. The experiment is the evidence.
