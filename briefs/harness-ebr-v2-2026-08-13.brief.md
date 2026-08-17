---
feature: "Harness EBR v2 — Hi-Fi Prototype Rebuild"
gate: 30
owner: "Beth"
problem_statement: "EBR #2 and #3 cost the same as EBR #1: no tool for cycle memory, data normalization is entirely manual, source reconciliation is manual, staleness is invisible, and standing acceptances have no tool. (SRC-U-009, Craig Fisher, Technica Solutions, 2026-08-07, 51m55s)"
okr_objective: "Reduce the practitioner time cost of a cycle 2+ EBR to materially less than cycle 1"
okr_key_result: "David's prep time for EBR #2 drops from 1.5–2h (self-reported, SRC-U-009) to under 45 minutes, validated in directional testing by Q4 2026"
counter_metric: "EBR output quality (client-facing content accuracy and completeness) must not decline; standing-acceptance integrity must not degrade"
idea_score: 13
evidence_sources:
  - "SRC-U-009 — Craig Fisher, Technica Solutions, EBR interview, 2026-08-07, 51m55s, n=1"
  - "KIT FigJam — 28-part picking list, section id 259:1670, datadump tool-results file"
  - "qbr-system-blueprint-2026-08-04.md §8, §14, §15"
  - "punch-list-hifi.md — PRIME resolved 2026-08-07, open items"
  - "datadump-refresh-2026-08-12.md — conflicts C-06 through C-10, SRC-U-009 full notes"
status: "draft"
confidence_regime: "PROCEED-FLAGGED"
proceed_because: "n=1 primary source is sufficient for directional prototype testing; the continuity problem is stated clearly enough to surface the hypothesis visibly in hi-fi without claiming validation"
machine_behavior: "build · surface [CS:] tags visibly · fidelity = Tier 1 Concept · do not claim validation · Stage 5 David persona frontstage required · NCSC 10 Steps + Cyber Essentials language throughout · no nistCode fields · no open-ticket counts · HaloPSA not ConnectWise · uSecure not KnowBe4 · all names in prototype fictional · per-part staleness indicators required · 'cannot tell' must be surfaceable in UI · design system = Apex 2.0 per prototypes/harness-ebr-v2/design.md, NOT Apex v1 (blue), NOT Itten — brand accent is purple #8500cc, confirmed by Beth 2026-08-13"
---

> **READINESS FLAG — [A]+[?] exceeds 30% threshold.**
> Estimated [A]+[?] ≈ 56% of tagged claims (53 of 94). Inflation comes from two sources: (1) nine KIT parts where PICKED FROM is a designed approach and no connector exists yet ([A]); (2) nine unknowns named explicitly in "What's Missing" ([?]). Gate 1 (the core problem) clears the threshold on its own — the EBR continuity finding is sourced from primary research. Beth has set `confidence_regime: PROCEED-FLAGGED` as explicit authorization to build on this evidence base without claiming validation. This flag is named, not resolved.

---

## Gate 1 — Problem: Real and sourced, or assumed?

The core finding is sourced from one primary interview. SRC-U-009 is Craig Fisher (owner/partner, Technica Solutions), interviewed 2026-08-07, 51m55s. n=1. One MSP. One partner. [R] for what he said. [?] for everything that depends on it generalizing beyond this firm.

### The continuity problem, in his words

- [R] Transport mechanism: "Pipes it in, copy paste to wherever it's coming from" (SRC-U-009, 38:01). The entire data-normalization step for one EBR cycle is manual: exporting million-column spreadsheets, deleting unwanted columns, pasting into a working template.
- [R] "EBR #2 and EBR #3… You get varied benefit from doing the initial work once… We're working off multiple spreadsheets" (SRC-U-009, 46:59–47:54). Cycle 2 costs the same as cycle 1 because there is no tool for cycle memory.
- [R] Craig estimates 3h total prep for one EBR cycle (SRC-U-009). Verify exact figure against source before quoting in any downstream artifact.
- [R] David (the technical practitioner) estimates 1.5–2h for his portion of that prep (SRC-U-009). Verify exact figure against source before quoting.
- [A] The gap between owner-estimate (3h total) and practitioner-estimate (1.5–2h) IS the finding. Do not average. The gap reveals either scope disagreement, task blindness, or both. Beth's framing — sourced from her direction, not from the interview.
- [R] Standing acceptances — David's judgment about which Inforcer deviations to accept, and why, and with what expiry — live nowhere durable (SRC-U-009).
- [R] "We're not utilising AI to say, have we done what we said we were going to do?" (SRC-U-009). Cycle memory as an explicit unmet need, stated by the owner.
- [R] David (technical practitioner) sits in 100% of EBRs and is both the prep practitioner and a frontstage participant in the client meeting (SRC-U-009).
- [R] Business case stated by Craig: David's time on EBRs reduced from approximately 80% to a target of 50% (SRC-U-009). Verify exact figures against source.
- [R] "If a client has a cyber attack, it has to be on them, not on us" (SRC-U-009, 15:20). Liability-shield framing. Internal understanding only. Must not appear in customer-facing prototype language.

### Tool stack confirmed in SRC-U-009

- [R] N-central — device management, OS inventory, asset data
- [R] Inforcer — golden tenant scoring, 1–9 scale; most clients sit at 5; ideal client is 5; alerts in real time
- [R] uSecure — security awareness training, phishing simulation. Not KnowBe4. (Conflict C-07 resolved.)
- [R] HaloPSA — PSA/ticketing/agreements. Not ConnectWise. (Conflict C-06 resolved.)
- [R] Cloud Capsule — MFA and identity; read alongside Inforcer for per-user status
- [R] M365/Intune — manual; Inforcer cannot see DLP, retention policies, or conditional access
- [R] Rewst — [CS: MEDIUM — mentioned in interview context; sourcing thin]

### Risk framework confirmed in SRC-U-009

- [R] NCSC 10 Steps to Cyber Security is the governing framework. "We just go through the 10 steps of the NCSC… We try to align clients to Cyber Essentials… this is the government guideline." Every risk finding in the prototype uses NCSC language. (Conflicts C-06 through C-10 resolved.)
- [R] Cyber Essentials is the target certification path for clients.
- No NIST CSF. No nistCode fields anywhere in the prototype.

### What n=1 does and does not tell us

- [?] Whether the continuity cost pattern (cycle 2 = cycle 1) holds across other MSPs is unknown.
- [?] Whether David's 1.5–2h practitioner estimate is representative of effort elsewhere is unknown.
- [?] Whether the 8-tab EBR template structure (sourced from Technica Solutions' actual xlsx) is sector-standard or firm-specific.

---

## Gate 2 — Right thing: Does this advance the mission?

**Outcome that moves:** [R] Practitioner prep time for a cycle 2+ EBR. David's self-reported time is the only current baseline.

**Mission fit:** [A] Harness is positioned as a kitting tool for EBR production (Goldhar/Meadows job-shop framing — kitting items before a job begins rather than hunting during it). A cycle-memory feature directly advances the kitting mission by making prior-cycle data a retrievable input rather than a manual reconstruction task.

**Business case:**
- [R] David's time on EBRs: ~80% today; target ~50% (SRC-U-009). Verify exact figures before quoting downstream.
- [?] The financial value of that time reduction for Technica Solutions is not calculated.
- [?] Generalization to other MSPs is not validated.

### Ten Types gap pass (blueprint §15, Beth's analysis — all [A])

- [A] **Process:** Strong. Cycle memory is a process innovation — it changes how prep works, not only what gets produced.
- [A] **Service:** Strong. If the room can focus on judgment rather than data reconciliation, the client experience of the EBR changes.
- [A] **Product Performance:** Strong. Per-part staleness indicators address a real data quality failure — parts with different shelf lives should not share one "as of" date.
- [D] **Product System:** Real but generic. The gateway is already generic in the acp-core repo code (code-verified per blueprint §15). Not a differentiator at this layer.
- [?] **Channel:** Genuinely undecided. No frontend infrastructure identified in the repo. The surface for the prototype is unresolved at infrastructure level.
- [A] **Customer Engagement:** Currently only option 2 (templated-with-variables). Options 3 (client-facing risk register) and 4 (scored/gamified) are undesigned white space. Not in v2 scope — not retired.
- [?] **Structure:** Nobody named as accountable for this capability in any reviewed source document.

---

## Gate 3 — Built right: Tested how? By whom? What counts as done?

**Confidence regime: PROCEED-FLAGGED.**
n=1 primary source. Build surfaces the continuity hypothesis visibly enough for directional testing. Outputs are provisional. Do not claim validation.

**Design system: Apex (N-able product design system). Not Band Protocol/Itten palette.**

**Prototype seed data rule:** All names, companies, and client data in the prototype must be fictional. No real MSP names. No real personal data from SRC-U-009. No real end-client names. Source-specific data stays in source docs, never in seed data. Research participant pseudonyms (David, Craig) must be replaced with invented names in any prototype screen.

### What the prototype must demonstrate

1. [D] **Stage 0 — FTUX:** FSN-82692 specifies a real 20-minute onboarding flow. Drop the deck; Harness maps it to the 8-tab structure; demonstrates value before asking for integrations. This stage is NOT undesigned — it is spec'd. Build must implement it.
2. [A] **Stage 1 — Always Current:** Portfolio preview of every client in the register: tier rollups, flagged-risk count. The first computation from onboarding becomes the portfolio assessment. Currently disconnected in v1 — onboarding shows raw pulls for one client, Always Current shows static seed data, nothing shows the computation becoming the portfolio.
3. [A] **Stage 2 — Nudge:** A/B clients get a meeting invitation. C/D clients get text/Slack or a recurring report. Cadence = config + interrupt, not a fixed schedule. (Beth's decision, blueprint §14.)
4. [A] **Stage 3 — Draft Lands (PICKING sequence):** Five sub-steps, all by one person, in order. A part is not usable until it passes through all five. (See PICKING sequence section below.)
5. [A] **Stage 4 — Confirm & Personalize (inversion):** The system asks the human what it cannot know. Three jobs: check computeds, fill gaps, confirm or override. Stage 4 inverts — the machine interrogates the human, not the reverse. Beth's framing: "like me doing a sharpie deck" (blueprint §14).
6. [R] **Stage 5 — The Room — Brains Only:** The practitioner (David in SRC-U-009) is frontstage AND backstage. He sits in 100% of EBRs. The old prototype treats him as prep-only. Stage 5 must show David's fictional stand-in as a named room participant.
7. [A] **Stage 6 — Close & Compound:** Filed deck. Signature is configurable by risk/compliance profile, not universal. (Beth's decision, blueprint §14.)

### Required UI behaviors

- [A] "Cannot tell" is a valid answer and must be surfaceable in the UI — not hidden, not defaulted to zero, not collapsed into a status pill.
- [A] Per-part staleness indicators: each part carries its own GOOD FOR window. Never show one shared "as of" date across parts with different shelf lives.
- [A] Cycle memory diff: what was committed last cycle, what closed, what is still open. The diff requires the shared notebook. Parts 8, 13, 14, 27 are SHORTs — the prototype must make the notebook's non-existence visible, not depict it as ready.

### Cycle Learning Mechanic — Ask → Learn (confirm-gated) → Automate, plus Draft

**Resolves critic-pass-1.md's flagged gap:** "make the notebook's non-existence visible" was named three times in this brief with no concrete UI pattern. This section specifies the actual mechanic, decided directly with Beth 2026-08-13, then checked against `acp-core-main-3/` and revised where it conflicted with existing platform governance.

The four SHORTs (Parts 8, 13, 14, 27) are not permanent dead ends. Each one moves through a ladder:

1. **Automate** — a connector exists; the system pulls the answer with no human involved.
2. **Kit** — no dedicated connector exists, but the answer can be assembled from data the system already has (e.g., composing the Technical Roadmap from the gap list, Part 21).
3. **Ask** — neither of the above; the system surfaces the part's existing JUDGMENT ATTACHED question directly to the practitioner (David), in place of a dead grayed-out card. Example: Part 27 asks "is this commitment completed, still open, partly done, or superseded by something that happened since?"
4. **Learn (recorder, confirm-gated fetch)** — Learn is a recorder, not a rule-inference engine: a simple, legible, append-only entry, the same shape as this project's own CLAUDE.md or GAME-STATE.md — not a deterministic-promotion backend. When David's answer names a source ("check the sales call logs"), that note is written down instantly, no gate needed — it's just a log entry. **Once a human confirms it, the system goes and fetches from that named source automatically on future cycles** — Beth, 2026-08-13: "it goes to fetch it," not merely resurfacing the note as a reminder. The confirm step gates the fetch behavior, not the recording. [R] `acp-core-main-3` establishes this confirm-before-behavior-change requirement as a governing platform principle, not a stylistic choice: Coworker autonomy promotion (Manual→Assisted→Autonomous) is spec'd as admin-initiated with system recommendation, explicitly *not* automatic — "automatic promotion would undermine MSP confidence" (`Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md`, DEC-005/TRADE-004; also `Intent Specs/ACP-Management-Plane-AI-Operator-Model.md`: "Only a human can activate it or change a policy that governs autonomous behavior"). Nothing fetches on its own until confirmed. [A] The fetch mechanism plausibly rides on the existing generic MCP Gateway (5 auth types, OAuth discovery, envelope-encrypted credentials — already in `apps/backend/app/mcp/gateway/`) rather than being invented from scratch — but wiring an actual new named source (e.g., Gong/Chorus/HubSpot, already a minor open item in `punch-list-hifi.md`) is real integration work beyond this prototype's Tier 1 Concept scope. The prototype demonstrates the concept (a confirmed note becomes an active fetch attempt) without claiming a working Gong/Chorus connector exists.
5. **Draft** — when there's no time to stop and answer an Ask prompt, the system produces a best-effort guess (e.g., carry forward last cycle's value) and marks it as a distinct, first-class status — never blended into a "confirmed"/"reconciled" label — queued for human confirmation later. [A]

**Draft must not repeat an existing anti-pattern found in the codebase.** `apps/backend/app/value_ledger/models.py` has a `requires_review: bool` flag set by the reconciliation backfill job, but the same row's `outcome_status` is still written as `'completed'` and `baseline_source` as `'reconciled'` while `requires_review=true` (`value_ledger/temporal/reconciliation_activity.py:32-34, 65-67, 81`). That is the exact failure this brief warns against — a provisional answer silently wearing a confirmed-looking label. Draft in this prototype must be its own visible status value, not a hidden flag riding underneath "Reconciled."

**Prior validating research, not yet incorporated into Gate 1:** `acp-core-main-3/specs/_ux/qbr-ebr.ux.md:480` states as an Operating Principle for this exact EBR surface — "auto-draft, human-clears is the only defensible pattern." This predates this session's design work and independently supports the Draft rung. This file should be read in full before Session B; it may bear on the evidence ratio (it isn't SRC-U-009, so it's a second source, but its own provenance — real research vs. designed assumption — hasn't been checked yet). `[?]`

**Where Draft resolves:** Stage 4 (Confirm & Personalize) is the existing home for this — it's already specified as "the system asks the human what it cannot know." Draft-marked items queue there rather than interrupting Stage 3's PICKING sequence.

**Open question, sharpened — genuinely new modeling, not just new UI copy:** does a confirmed rule apply only to the client it was learned on, or does the system propose extending it to similar clients ("is Pemberton like Smith and Gregson, too?") with a human confirming scope? `acp-core-main-3` has **no** cohort/peer-group tenant concept anywhere in its data model — only a binary global-platform-account vs. per-account-tenant split (`identity.py`; `mcp/models.py`'s `MCPServer` vs. `MCPInstance`). Building real "is this client like these others" scoping is new backend modeling, not a naming exercise on top of something that already exists. For a Tier 1 Concept prototype, this can be represented in the UI as a proposed comparison without a real cohort engine behind it — but the handoff packet must say so plainly, not imply the backend already supports it. `[?]` Still unresolved: what signal (if any) the system uses to propose candidates worth asking about — same industry tag, same Inforcer tier, or no proposal at all, with David volunteering comparisons unprompted.

**UI implication for Session B:** the four SHORT parts should render as an active question state (not a locked/grayed dead card) with the JUDGMENT ATTACHED text as the literal prompt copy, and a visible mechanism for David's answer to be captured as a named source pending confirmation — not auto-applied, not just free text. The "notebook" is not a hidden backend concept in this prototype; the Ask state IS the visible entry point into it, and the confirm step is a visible, separate action, not implied by the answer alone.

### What counts as done

- [?] Testing plan: not defined.
- [?] Success criteria: not specified beyond directional.
- [?] Test participants (MSP practitioner + owner): not identified.
- [?] Validation session: not scheduled.

Gate 3 gaps are named, not resolved. PROCEED-FLAGGED authorizes building; it does not resolve these.

---

## THE KIT — All 28 parts

**Source:** KIT FigJam, section id 259:1670, "THE KIT — picking list for one client's EBR"

**Sourcing note from KIT file:** "GOOD FOR and NOISE RULE are mostly red on purpose: those columns were largely authored, not sourced." All GOOD FOR entries in this table are therefore **[A]** — authored estimates, not research findings. The GOOD FOR column header carries a standing [A] for the full table.

**SHORTs** (parts that cannot be assembled from available tooling today): Parts **8, 13, 14, 27**.

| # | Part name | PICKED FROM | GOOD FOR [A] | STATE | JUDGMENT ATTACHED |
|---|-----------|-------------|--------------|-------|-------------------|
| **TAB 2: CURRENT CLIMATE — David's** | | | | | |
| 1 | Device count | [R] N-central | Hours | Reconciled | None needed once re-derived |
| 2 | Licensed user count | [R] Entra active users, intersected with assigned licences | Days | Reconciled | None — but offboarding hygiene caveat |
| 3 | What's deployed, per tool, and how far | [R] Each vendor's own coverage endpoint | Days | Reconciled | None |
| 4 | Contract lines — item, cadence, quantity | [R] HaloPSA agreements | Months | Reconciled | MSP: is this agreement record actually current? |
| 5 | Licences and renewal dates | [R] M365 subscribed SKUs | Months | Reconciled | MSP: which renewal are we talking about? |
| **TAB 3: RISK REVIEW — David's, and the one that matters** | | | | | |
| 6 | This client's target level, and where they actually are | [R] Inforcer golden tenant, scored 1 to 9 | Minutes (Inforcer alerts in real time) | Reconciled | MSP set the target. Most clients sit at 5; ideal client is 5. |
| 7 | The deviation list, minus the ones already accepted | [R] Inforcer, then subtract David's standing acceptances | Minutes | Cleared for accepted ones; Raw for rest | This is where nearly all of David's judgment lives. Each acceptance records who, when, why — and whether the reason had an expiry. |
| **8 [SHORT]** | Temporary exclusions nobody put back | [A] Entra conditional access — enumerate policies AND their exclusion lists, then diff against last cycle | Days | **Short until the notebook exists** | David: was this exclusion meant to be permanent? |
| 9 | Data loss prevention, retention, conditional access — present AND working | [R] The 365 tenant directly. Inforcer can't see these. | Days | Raw | David only on exceptions. |
| 10 | MFA coverage | [R] Entra — enumerate users, enumerate each one's registered methods, compute it yourself | Days | Reconciled | None on the number. David on what to do about the exceptions. |
| 11 | Who hasn't finished training, who clicked a phishing test, who gave up credentials | [R] uSecure, per user per course | Weeks (campaign-scoped) | Reconciled | None on the numbers. Craig on tone — he treats this as a selling moment, not a shaming one. |
| 12 | Devices below the current minimum OS | [R] N-central per-device OS version | Days | Reconciled | Craig sets the minimum. |
| **13 [SHORT]** | End-of-support firmware, network kit, unmanaged offices | [A] N-central scan, plus manufacturer end-of-support dates | Scan: Days. Support dates: **Short** | **Short** | David, and it's a phone call not a query: is that appliance actually still in the path? |
| **14 [SHORT]** | Anything that went wrong this quarter, and why | [?] Nothing today. Would be Incident Response Analyst writing into the notebook. | **Short** | **Short** | David. |
| **TAB 4: EMPLOYEE REVIEW — David** | | | | | |
| 15 | Name and email roster | [R] HaloPSA — client contacts list, not individual tickets | One billing cycle | Not built. Needs a PSA connector. | Is this person still in role? Is their licence type correct? |
| 16 | MFA status per person | [R] Cloud Capsule and Inforcer — read both, always | Weekly | Not built. Needs Cloud Capsule and Inforcer connectors. | Is this a deliberate exclusion — service account, shared mailbox — or an active gap? |
| 17 | Training completion and phishing test results | [R] uSecure — completion report and phishing credential-give tracking | Monthly | Not built. Needs a uSecure connector. | Is this a known non-completer by agreed policy, or an active gap? |
| **TAB 5: HARDWARE — David** | | | | | |
| 18 | Device list — name, class, OS version, last seen | [R] N-central — reconcile all three reports: analytics report, new asset report, and old device list | Hours | Not built. Needs an N-central connector and reconciliation logic. | Is that missing device decommissioned, loaned out, or is the agent broken on a live machine? |
| 19 | Warranty status and manufacturer end-of-support date per device | [?] No tool in the stack provides this. | Months to years | No source today. Requires manual lookup or client input. | Is this device in daily use, stored as a backup, or effectively dead while still powered on? |
| **TAB 6: TECHNICAL ROADMAP — David** | | | | | |
| 20 | Gap list from current state to the client target Inforcer level (1–9) | [A] Inforcer deviation alerts plus M365 tenant for what Inforcer cannot see — DLP, retention policies, conditional access — plus NCSC mapping logic | Weekly | Not built. Needs Inforcer and M365 connectors, and the NCSC mapping logic. | Is this gap accepted, on an agreed roadmap, or unknown to the client? |
| 21 | Roadmap recommendations — gap, action, priority, timeline, contract or quote | [A] Composed from the gap list | Quarterly | Can be drafted from the gap list. A senior technician must clear it. | What is the priority order, and what is the reasoning the client will actually accept? |
| **FORWARD INTELLIGENCE — Vanessa's** | | | | | |
| 22 | What this business is trying to achieve this quarter — growth target, new service line, compliance push, hiring plan, expansion | [A] Client website, LinkedIn company page and recent leadership posts, LinkedIn Sales Navigator if premium seat, and what Vanessa carried forward from last time | Quarterly | No tool provides this. Requires pre-call desk research and Vanessa's relationship knowledge. This is her hour, not David's. | Which of the gaps or services on David's side maps to where this client is actually going? |
| 23 | Competitive and sector signals — what will this type of business face in the next 12 months | [A] Outside knowledge — sector signals, Craig and David's read across their client base, Inforcer aggregate view of what is shifting across tenants, industry publications | Annually | Never built. Requires domain expertise and inter-person alignment before the EBR. | Which signals apply to this specific client, and which are sector-wide noise? |
| 24 | Staff changes since the last EBR — new hires not yet in the system, leavers still active | [A] The client — no tool knows this. Ask. Then check M365 for accounts active over 90 days with no recent login. | As of the EBR | Half-built. The M365 stale-account check works once an M365 connector exists. The client-told piece requires the meeting. | Is this new hire a deliberate billing delay or an oversight? Is this leaver gone or on leave? |
| **TAB 1: AGENDA — Vanessa's** | | | | | |
| 25 | Meeting logistics — client name, primary contact, date and location, last EBR date, cadence, client advocate | [R] HaloPSA client contacts for the primary contact | Until it changes | Works once a PSA connector exists. No connector today. The advocate field requires Vanessa in every case. | Is the primary contact still the decision-maker? |
| **TAB 7: REFERRALS AND TESTIMONIALS — Vanessa's** | | | | | |
| 26 | Testimonial request and referral ask — timing, framing, and target | [A] Vanessa's relationship read. No tool provides this. The temperature of the room is her read, not a CSAT score. | Every EBR — but not always appropriate | Never built. Requires human judgment and relationship knowledge in the moment. | Is this the right moment? What did the client just respond positively to? |
| **TAB 8: CLOSE AND COMPOUND — David drafts, the room confirms** | | | | | |
| **27 [SHORT]** | Open commitments from last cycle — what did we say we would do, and did we? | [?] Last cycle's EBR — the commitments tab — checked against current tool readings | Per cycle | **Not built. The shared notebook for persistent judgments does not exist yet. Without it there is no diff and no commitment closure.** | Is this commitment completed, still open, partly done, or superseded by something that happened since? |
| 28 | New commitments to draft from this cycle's roadmap | [A] Composed from the Technical Roadmap tab, confirmed live in the room | Per cycle | Can be drafted from the roadmap. The room confirms. | What is the owner and the deadline? Both must come from the meeting. |

**SHORTs — parts that cannot be assembled from available tooling today:**
- **Part 8:** Temporary exclusions nobody put back. The shared notebook that would hold the diff against last cycle does not exist.
- **Part 13:** End-of-support dates for firmware and network kit. N-central scans are available; manufacturer end-of-support dates are not in any connected tool. Manual lookup or phone call to David required.
- **Part 14:** Anything that went wrong this quarter, and why. No source exists today. Requires an Incident Response Analyst writing into the notebook — which also does not exist.
- **Part 27:** Open commitments from last cycle. No shared notebook. No diff. No commitment closure mechanism. This is the cycle-memory gap stated explicitly by Craig in SRC-U-009.

---

## 7-Stage Axis

**Source:** qbr-system-blueprint-2026-08-04.md §8 and §14.

**Gap noted:** The Big Map JSON (Stage 3–5 interaction map) was not found at the expected path in the tool-results directory. The stage structure below is sourced from blueprint text only. The spatial and interaction design of the PICKING flow is not verified from a separate artifact.

| Stage | Name | What happens |
|-------|------|-------------|
| 0 | Onboard & Customize | [D] FSN-82692 specifies a real 20-minute flow: MSP uploads existing EBR deck; Harness maps it to the 8-tab structure; demonstrates value before asking for integrations. Not undesigned. |
| 1 | Always Current | [A] Portfolio preview of every client in the register — tier rollups, flagged-risk count. First computation from Stage 0 onboarding becomes the portfolio assessment. Currently disconnected in v1. |
| 2 | Nudge | [A] A/B clients: meeting invitation. C/D clients: text/Slack or recurring report. Cadence = config + interrupt, not fixed schedule. (Beth's decision, §14.) |
| 3 | Draft Lands | [A] PICKING sequence (5 sub-steps, one person, in order — see below). |
| 4 | Confirm & Personalize | [A] System interrogates the human. Three jobs: check computeds, fill gaps, confirm or override. Stage 4 inverts — the machine asks what it cannot know. |
| 5 | The Room — Brains Only | [R] David (practitioner) is frontstage AND backstage. Named room participant. Old prototype treated him as prep-only. This must change. |
| 6 | Close & Compound | [A] Filed deck. Signature configurable by risk/compliance profile — not universal. (Beth's decision, §14.) |

### Stage 3 — PICKING sequence

All five sub-steps done by one person, in order. A part is not usable until it passes through all five.

1. **PULL** — retrieve raw data from each part's source
2. **RECONCILE** — normalize across sources (currently manual: "pipes it in, copy paste to wherever it's coming from")
3. **CLEAR** — remove accepted deviations, known exclusions, already-resolved items
4. **SHORT-LIST** — identify which parts are ready vs. still SHORT
5. **ASSEMBLE** — compose the draft from cleared, reconciled parts

The PICKING sequence is currently a solo task. This is the stage the v2 prototype must make visible as structured work, not invisible as background prep.

---

## Failure Modes

**1. Prototype depicts cycle memory that does not exist in tooling.**
The four SHORTs (Parts 8, 13, 14, 27) all depend on a shared notebook with no current implementation. If the prototype shows a commitment diff, a standing-acceptance log, or an incident log without making their non-existence visible to test participants, it is depicting a capability that does not exist. The UI must distinguish "this is ready" from "this requires the notebook, which does not yet exist." This is not a fidelity issue — it is an honesty issue.

**2. Per-part staleness signals mislead if shelf lives are wrong.**
The GOOD FOR column is authored [A], not sourced from connector documentation. If the prototype shows per-part staleness indicators with specific windows (Minutes / Hours / Days / Weeks / Months / Annually) and those windows are incorrect for a given connector's actual refresh rate, the staleness signal is wrong in production. This risk is baked into the PROCEED-FLAGGED regime but must be named for the test facilitator.

**3. n=1 source anchors the prototype to one MSP's workflow.**
If Technica Solutions' 8-tab structure, tool stack (Inforcer, uSecure, HaloPSA, N-central, Cloud Capsule), and judgment patterns are specific to their firm, the prototype will not generalize. It may test the right hypothesis (cycle memory) with the wrong implementation shape (their exact tabs and tool sourcing). This cannot be resolved before building — it is named.

---

## What's Missing

- [?] **Big Map JSON** — the Stage 3–5 interaction map does not exist at the expected path. The spatial/interaction design of the PICKING flow has no verified artifact. Blueprint text is the only source.
- [?] **Second interview** — n=1 is a single-participant limit. A second MSP practitioner is needed to triangulate whether the continuity problem is pattern or firm-specific.
- [?] **Testing plan** — who, when, with how many MSP practitioners, what tasks, what success metrics. Not defined.
- [?] **Financial value of time reduction** — no model exists for converting David's prep hours into business cost.
- [?] **Channel infrastructure** — no frontend identified in the repo. The prototype surface is unresolved at infrastructure level. (Beth's §14 decision: surface-agnostic; prototype in Claude first.)
- [?] **Customer Engagement options 3 and 4** — client-facing risk register and scored/gamified variants are undesigned white space. Not in v2 scope; not retired.
- [?] **Structure owner** — nobody named as accountable for the Harness EBR capability in any reviewed source.
- [?] **Runbooks and AI Experts** — specs 002 and 003 from acp-core represent real, spec'd functionality not yet represented in any prototype iteration. Named in punch-list as a future rail; not in v2 scope.
- [?] **Liability-shield tone model** — Craig's "if a client has a cyber attack, it has to be on them, not on us" (15:20) is a brand-positioning signal. Whether this framing affects Stage 4 or Stage 5 UI copy is not resolved.
