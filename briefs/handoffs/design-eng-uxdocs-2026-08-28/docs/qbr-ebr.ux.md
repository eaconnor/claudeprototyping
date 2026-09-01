---
artifact: ux.md
template_version: 1.0
kind: mini
work_type: new-product          # a mini that earned the full spine — carries offering-specific §2–4 rather than inheriting. kind (parent link) and work_type (depth) are orthogonal.
parent: briefs/context/acp-ux.md
project: QBR/EBR offering (Harness, formerly ACP)
owner: Beth Connor
research_posture: researcher-backed
canonical_spec: acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (QBR Advisor · specs/004-ai-coworker-registry)
stress_test_method: Idea Chess (run 2×) / Council (5-voice, 2026-07-30)
design_system: Apex
design_lint: static-tokens
skills:                          # inherits acp-ux.md registry (Band suite); offering-specific:
  gate3_build: bethproto         # prototypes/qbr-draft-flow/qbr-hifi.html + v2
status: DRAFT-updated            # SKELETON | DRAFT | LIVE
drift: FRESH                     # reconciled 2026-08-21 (refresh Step 6). Sources registered; §1/§4/§6 synthesis still Beth's.
open_conflicts:                  # registered 2026-08-21, NOT resolved — see the refresh changeset
  - C-11  # Vertesia partner-substrate. Beth 2026-08-21: treat as a given. C2 portability now the load-bearing question. Owner: Beth + Nicole + Meaghan.
  - C-12  # RESOLVED Beth 2026-08-21: Nov 2 replaces the Phase-4 monetization gate.
  - C-13  # "$300+/user/mo ScalePad" — killed 2026-07-28, circulating again in 62302388241. Needs removing/re-sourcing at source.
  - C-14  # runtime "004 = 0/40" verified against a STATIC snapshot; live repo has moved. Re-verify before any Phase-1 call.
confidence_score: SEE §7
built_from:
  - briefs/qbr-ebr-experience-map-2026-07-28.md
  - briefs/ebr-process-map-2026-07-28.md   # council corrections are edits within this file, not a separate doc
  - scout_input/stefanie-hammond-ebr-sources-2026-07-28.md
  - scout_input/qbr-independent-sources-2026-07-28.md
  - scout_input/qbr-competitor-products-2026-07-28.md
  - scout_input/qbr-operator-voices-2026-07-28.md
  - scout_input/qbr-adjacent-and-legal-2026-07-28.md
  - scout_input/SECONDARY-SOURCES-REGISTER-qbr-ebr-2026-07-28.md
  - datadump-manual-human-steps.md
  - briefs/concept-sketches-qbr-2026-07-20.md
  - briefs/idea-chess-fleet-synthesis-2026-07-14.md
  - briefs/acp-word-sketches-four-complete-2026-07-15.md
  - "Executive Business Review Template 1.xlsx" (Stef H.'s own template, supplied by Beth)
  - briefs/acp-offerings-2026-07-14.md
  - scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md
  - Confluence "ACP Secondary Research — MSP QBR/EBR Practice" (AI space, 62226858351)
  - briefs/ebr-service-blueprint-2026-07-29.md
  - scout_input/stefanie-hammond-ebr-followup-transcript-2026-07-30.md   # DIRECT interview — first non-vendor-relayed Stef H. evidence
  - briefs/datadump-axial-coding-2026-07-31.md + .csv                    # whole-datadump axial pass, 141 coded rows
  - briefs/idea-chess-qbr-rerun-2026-07-31.md                            # board re-played vs July evidence, 6 concepts
  - briefs/concept-sketches-qbr-round2-2026-07-31.md                     # 3 new one-pagers + V1-V4/R1-R9 research agenda
  - briefs/story-qbr-chapter-draft-2026-07-31.md                         # human/story layer (Chapter 2) — the door; this file is the truth
  # --- registered 2026-08-21, datadump refresh Step 6 (Beth: bulk-accept) ---
  # All four below are [DOMAIN: SaaS/CS, NOT MSP] — carry the acronym-collision caveat (rows 266/267)
  - scout_input/reddit-cs-stopped-qbrs-renewals-up-2026-08-20.md         # SRC-M-004 · QBR/EBR split from a 4th independent voice; renewal ≠ QBR quality
  - scout_input/perspective-ai-qbr-software-2026-comparison-2026-08-20.md # SRC-M-005 · "telemetry has no reason"; new entrants Perspective AI/Matik/Topo.io
  - scout_input/alex-raymond-qbr-as-test-2026-08-20.md                   # SRC-M-006 · QBR-as-commitment-test lens. 95% GRR/120% NRR = [CS: LOW], do not quote
  - scout_input/mural-qbr-guide-sales-managers-2026-08-20.md             # SRC-M-007 · co-creation over one-way. [CS: LOW], adds no new evidence
  - scout_input/14-qbr-replacement-ritual-scan.md                        # SRC-M-012 · no stabilized replacement ritual exists; negative finding, [WOBBLY] whole thread
  - scout_input/01-gradient-msp.md                                      # SRC-M-008 · CORRECTION: "normalization" = billing reconciliation only
  - scout_input/02-liongard.md                                          # SRC-M-009 · CORRECTION: Liongard ACQUIRED DarkLight; repositioned to ASM
  - scout_input/03-vciotoolbox.md                                       # SRC-M-010 · TAP partner, N-central only
  - scout_input/04-cloudradial.md                                       # SRC-M-011 · negative finding: N-able-side partnership unevidenced
  - Confluence "Harness — Vertesia to Market: Nov 1 Execution Plan" (AI space, 62302388241)  # the Nov 2 commitment + 5 use cases + R-02 zero-PSA-connectors
last_updated: 2026-08-21 (refresh Step 6: SRC-M-004…012 registered · Vertesia execution plan registered · see §Divergence Log for C-11/C-12/C-13)
reconciled_at: 2026-08-21
confidence_regime: PROCEED-FLAGGED
proceed_because: artifact value to team exceeds cost of withholding during research gap — n=1-2 operator evidence is thin but the service blueprint and context are more useful now than after a full study
machine_behavior: build · surface [CS:] tags visibly · fidelity = Tier 1 Concept · do not claim validation · Package 3 proceeds; Package 5 gates on Q1 legal
---

# QBR/EBR — ux.md (mini)

**What this file is, in one breath:** everything we know about building an AI helper for the quarterly business review meeting that MSPs (the IT companies who are our customers) run with *their* customers — who said it, how much we trust it, what's still unknown, and what's already been decided. It's written to be read by both people and AI tools. **Every unusual term is defined in the [Glossary](#glossary--every-term-in-this-file-defined) at the bottom.** If a claim has a bracket tag after it, the tag tells you how much to trust it — the tags are defined in the parent [acp-ux.md](acp-ux.md).

**Scorecard** (per Constitution Principle VII, `acp-core-main-3`) — a three-question health check: do we understand the problem? are we building the right thing? are we building it right?

🟢 **Gate 1** (problem framed) — cast enriched with 4A's (the delivery lead, the MSP owner, Stef H.); named sources throughout. **07-31: Stef H. upgraded from vendor-relayed to direct interview; the MSP owner corroborated.**
🟢 **Gate 2** (right thing) — Idea Chess re-run 2026-07-31 against July evidence (6 concepts; Package 3 leads ~2.9%, up ~3.2×) + 5-voice Council (07-30). 2 council divergences tracked — informational, not blocking. **Q3 (liability paradox) now named as a third portfolio gate: it sits under 4 of 6 concepts.**
🟡 **Gate 3** (built right) — `confidence_regime: PROCEED-FLAGGED`, n=1–2 operator evidence. Divergence Log: 2 open (🔴) + 1 resolving (🟡) + 1 resolved (🟢) — DIV-004 closed 2026-08-27 (ISO 9241-11 framing, Beth + Nicole). Q2 (operator study) narrowed by the direct interview, not closed. **Usability standard adopted: ISO 9241-11 (effectiveness / efficiency / satisfaction + context of use) — see `_ux-template/GUIDE.md` § Gate rubric.**

Child of [acp-ux.md](acp-ux.md).

*(The 2026-07-31 session delta — Stef H.'s direct interview, the Idea Chess re-run, Q3 named, the translation-layer principle, the encryption assumption — is recorded in the CHANGELOG at the bottom. Its content lives in the body: §1 / §5 / §6.)*

**Where this research comes from:** Most of it traces to one source — Stef H.'s EBR training content, and the delivery lead, an MSP delivery lead who went through Stef H.'s program. We searched for independent corroboration and folded in what we found. Where the evidence is still one voice, the doc says so.

> **Reading guide, role guides (designer / engineer), and "if Beth's not around"** now live in [`qbr-ebr.README.md`](qbr-ebr.README.md). Marketing, Head Nerds, and other insight folk: see [`CONTRIBUTE.md`](CONTRIBUTE.md) — how to add what you're seeing without touching this file.

**Tags and gates: inherited from parent [acp-ux.md](acp-ux.md)** — not re-printed here. One addition this file uses: `[THIN]` (an honest claim we want true but can't yet support — now also in the parent legend). `PROPOSED` in a heading = an interpretive call needing human eyes even where the quote is solid. *(The old bracket-word section labels — `[WORLD_MODEL]` etc. — were removed 2026-08-28; every section now carries only its plain Gate tag.)*

---

## 1. The problem, and for whom — `Gate 1`

> **TL;DR:** MSPs spend 3–7h per quarter hand-assembling client-facing reviews. The people who do it well are scarce. All the evidence for this comes from one company.

MSPs are expected to run regular business-value conversations with clients — quarterly or semi-annual reviews that prove strategic value and justify the relationship. Prep costs **3–7h/quarter** `[CS: HIGH]`[^1], **~4–5h per session** `[CS: LOW — see note]`[^2] of senior delivery-lead time, assembled by hand each time.

> **On that prep-time figure:** Stef H. (EBR trainer) and the delivery lead (one of her clients) both report 3–5h of prep work. That looks like two independent sources agreeing — but it isn't. the delivery lead adopted the whole EBR framework *from* Stef H.'s training. They're measuring the same transmitted process, not two operators who arrived at the same number independently. Treat as one directional data point. `[CS: LOW — echo, not triangulation]`[^2b]

---

**The characters — who this is actually about:**

| Who | Role in this story | Evidence quality |
|---|---|---|
| **the delivery lead** — Head of Client Delivery, a UK MSP (UK) | The primary person we designed *for*. Non-technical delivery lead — marketing/languages background, deliberately not an engineer. She runs the EBRs from start to finish. | `[CS: VERIFIED]`[^3] — identity confirmed, in-depth interview |
| **the MSP owner** — the delivery lead's business partner / MSP owner | Bought into Stef H.'s EBR framework and brought it back to the company. The *buyer* of the process, not the daily user of it. Maps to USER-001 / the parent acp-ux.md alpha persona. | Not verified — composite from corpus `[?]` |
| **Stef H.** — N-able Head Nerd (~20 years at N-able, ~16 in account management, Head Nerd ~4 years) | Author/trainer of the EBR framework itself — the source the delivery lead's whole practice was transmitted from. Not an MSP operator; an N-able enablement role. Named throughout the footnotes but not previously seated in this cast table. | `[CS: VERIFIED]`[^24] — identity and role confirmed |
| **The client exec** — finance director or business owner across the table | "Isn't really interested in the back end." Appears in the delivery lead's account only — no client was ever interviewed directly. | `[A]`[^4] — single-operator description of a third party |
**Who else probably pulls these reports** (from the 26-role persona library in [`lewis-persona-library-cast-2026-07.md`](../../scout_input/lewis-persona-library-cast-2026-07.md) — DIV-002's "map the full cast," first pass; all `[CS: MEDIUM]` unless noted):

- **`am`** (account manager / vCIO) — "leads the QBR aligning spend to business goals": the clearest match for the vCIO/TAM gap, from the account side rather than the delivery-lead side.
- **`sdm`** (service delivery manager) — owns the service-desk capacity the risk review is built from; feels an EBR cadence that overloads it (Must 7).
- **`owner`** (small-MSP owner-operator) — the category the MSP owner instantiates: "the buyer, escalation point, salesperson, and often still a technician."
- **`intaud`/`extaud`** (auditor-GRC) — ties to Must 8 and the compliance themes in the SME interview; human counterpart to FSN-83143 USER-005.
- **`vciso`** (fractional CISO) — plausible co-author of the risk-register narrative for security-mature clients. `[?]` hypothesis only.

**Adjacent named sources** (not cast members): Joe L. and Lewis P. ([SME interview](../../scout_input/joe-lewis-julian-interview-2026-07.md)) — their discussion of insurance-documentation-as-claim-prerequisite and MSP liability informs Must 8's "no overclaiming."

**Bias flag:** all operator evidence (the delivery lead / the MSP owner) is n=1, from a vendor-selected reference customer — directional only `[WOBBLY]`[^5]. The persona-library additions are a different kind of evidence — a well-constructed library, `[CS: MEDIUM]` until its sourcing is confirmed.

**4A's treatment — Ambitions / Attitudes / Actions / Anxieties** (basic pass, 2026-07-30; `[?]` where unsourced rather than invented):

| Persona | Ambitions | Attitudes | Actions | Anxieties |
|---|---|---|---|---|
| **the delivery lead** | Run EBRs confidently, solo, and turn them into pipeline — her first EBR produced a referral and a new client `[CS: HIGH — n=1]`[^12]. | Deliberately non-technical; prefers business-value framing over technical metrics/graphs `[CS: HIGH]`[^9]. Believes in asking for referrals without hesitation `[CS: HIGH]`[^35]. | Builds the risk review from service-desk capacity, schedules into the PSA queue, converts action items to tickets, keeps internal notes separate from the client-facing document `[CS: HIGH]`[^7][^32]. | `[THIN]` — the "needs confidence to run the room solo" read comes from a hired coach's third-party diagnosis (Raybould, "curse of the expert"), not the delivery lead's own first-person admission. No source has her naming what she personally worries about going wrong in an EBR. |

*(4A's for the MSP owner and Stef H. omitted — the owner's is largely unsourced `[?]`; Stef H. is a source/trainer, not a design target. The delivery lead is who we design for.)*

## 1a. Problem framing — the friction, the design question, why this solution — `Gate 1/2`

> **TL;DR:** Two candidate branches (N-able-native vs. cross-vendor). The differentiation claim in the positioning copy is also an architectural fork in the data model.

Three fields anchor the offering's identity: what problem-pressure exists (the friction), what question guides the design, and why this solution over alternatives. Carried verbatim from the 2026-07-20 Idea Chess pass — they were already written. (Underlying frameworks, if you want them: Jon Kolko on wicked problem framing; Geoffrey Moore's positioning template. You don't need to know either to read this section.)

**Package 3 — Client-Facing Proof, N-able Native:**
- **The friction:** MSPs on consolidated N-able stacks are trying to get quarterly proof of
  protection in front of clients, but the cross-N-able product integration (N-central + Cove +
  Adlumin have different data models) is unscoped, and demand for the N-able-*native* job was
  never independently measured — the research asked about cross-vendor.[^63]
- **The design question:** How might we deliver a client-ready QBR for consolidated N-able-stack MSPs in
  one engineering cycle — no normalization acquisition — as the foundation for eventually
  expanding to cross-vendor scope?[^63]
- **Why this solution:** For N-able-stack MSPs who want to stop assembling QBRs by hand,
  Client-Facing Proof (Native) produces a client-ready, defensibility-tagged quarterly review from
  first-party telemetry in under 20 minutes. Unlike the cross-vendor branch, it needs no
  normalization and carries a legally cleaner data position — but is limited to clients on an
  N-able stack.[^63]
- **N-able superpower:** First-party Adlumin + Cove + UEM telemetry — here the telemetry *is* the
  product, not a prerequisite to it. "Measured" is defensible on day one with no external data
  dependency. Real but narrow.[^63]
- **The bet:** `[0% Claude — fill this in]`

**Package 5 — Client-Facing Proof, Cross-Vendor:**
- **The friction:** MSPs are trying to prove strategic value every quarter, but the evidence is
  scattered across vendor tools that don't speak to each other — and the most defensible
  cross-vendor comparison is legally unavailable through competitors' data policies.[^64]
- **The design question:** How might we let an MSP walk in and prove, in numbers the client trusts, that
  the invisible work kept them safe across their *whole* stack — without spending a day
  hand-building it, and without needing data we have no right to?[^64]
- **Why this solution:** For security-focused MSPs assembling quarterly reviews by hand,
  Client-Facing Proof (Cross-Vendor) generates a client-ready, evidence-tagged narrative across
  the full vendor stack in under 20 minutes. Unlike manual assembly or single-vendor dashboards, it
  delivers cross-vendor normalized evidence with built-in defensibility tiering.[^64]
- **N-able superpower:** First-party full-stack telemetry (Adlumin + Cove + UEM) is the only
  normalized source N-able controls — "Measured" is defensible from day one for N-able-native
  clients *without* any acquisition. The acquisition/partnership extends that moat across
  competitors' data. The superpower is the telemetry stack, not the AI on top.[^64]
- **The bet:** `[0% Claude — fill this in]`

**Why this matters for design/eng specifically:** the "Unlike..." clause in each Value prop is the
differentiation claim eng's data model has to actually support (first-party-only vs. normalized
cross-vendor) — it's not just positioning copy, it's an architectural fork between the two
packages. Neither **bet** line is filled — that's Beth's, not this file's.

## 2. Journey / orienting map — `Gate 1`

> **TL;DR:** The full EBR spans 26 service moments across 7 stages. Almost none are built yet: 0 built, 1 specced, 17 absent. The primary source is Stef H.'s actual 15-tab EBR template — a real artifact, not a description of one.

- Frontstage: [qbr-ebr-experience-map-2026-07-28.md](../qbr-ebr-experience-map-2026-07-28.md) —
  six-phase, two-actor-lane experience map (client exec / MSP operator).
- Backstage: [ebr-process-map-2026-07-28.md](../ebr-process-map-2026-07-28.md) — corrected per
  council pass 2026-07-28 (false-independence claims fixed, liability section downgraded to `[?]`).
- **Reconciled 2026-07-29** against canonical service-blueprint terminology (Customer Actions /
  Line of Interaction / Frontstage-Backstage Staff Actions / Line of Visibility / Support
  Processes, per "A Guide to Service Blueprinting," Flowers/Miller) — see
  [`ebr-service-blueprint-2026-07-29.md`](../ebr-service-blueprint-2026-07-29.md). 26 service moments across 7 stages (Entice ·
  Enter · Schedule · Prep-Assemble × 8 data pulls · Prep-Judge · Live Meeting × 12 moments ·
  Follow-up · Extend). Build coverage check: **0 built, 1 specced, 8 adjacent, 17 absent**.
- **The actual artifact spec, in hand as of 2026-07-28:** Stef H.'s own EBR template
  (`Executive Business Review Template 1.xlsx`, supplied by Beth — closes the B1 gap flagged since
  the first sweep). 15 tabs: Agenda · Meeting Kick Off · Current Climate · Risk & Security Review
  (with a structured risk register: Threat/Risk, ID Date, Risk Level, Existing Controls, Treatment
  Plan, Progress Status, Residual Risk, Risk Owner) · Compliancy Review · Business Priorities &
  Goals Review · Hardware & Software Asset Review · Employee Review · Technology Roadmap ·
  Technology Budget · Additional Items · Referrals & Testimonials · Post-Meeting Action Items
  (explicit instruction: "turn every action item into a ticket") · Next Meeting Planning · KPIs
  (Territory Retention %, # Referrals, # Testimonials, # New Sales Opps, EBRs Delivered vs.
  Planned/Quarter, Average NPS). `[CS: VERIFIED — primary source, not a secondhand description]`.
  This is the real spec §6's Tasks should be checked against, not just the delivery lead/Stef H.'s spoken
  account — see §6's Operating Principles for how its 15 tabs sort by job-shop vs. brains-work.

## 3. Four-angle view — see Appendix A

The full POEMS / Five Human Factors / Value Webs synthesis is in **Appendix A** (frameworks). Build-relevant conclusions already live where they're used: **risk review is the heaviest EBR section**, and **business-value framing runs throughout** (§6 Musts 1 & 5).

## 4. Sustaining / disruptive & market — see Appendix A

Full sustaining-vs-disruptive analysis, competitive scan, and Idea Chess branch scoring are in **Appendix A**. Build-relevant residue lives in the spine: the **two branches** (Package 3 N-able-native / Package 5 cross-vendor) are in §1a; the **build substrate** (Runbook Engine + Value Ledger, renders $0) is in §6; the **gates Q1/Q2/Q3** are in §5.

## 5. Open items — assumptions · decisions · questions — `Gate 1 / Gate 2`

> **TL;DR:** everything uncertain in one register — assumptions (what we're betting on), decisions (what we haven't chosen), questions (what we don't know). Two gates — **Q1** (legal, cross-vendor data) and **Q2** (operator study) — gate almost everything downstream. **Riskiest first.** Also the datadump intake: 🔴 rows feed `/refresh-datadump` and receive field insight via [`CONTRIBUTE.md`](CONTRIBUTE.md). Closes 🟢 only when the answer folds into the body *and* the tag upgrades. Carried from Part C of the manual-steps register[^21] + §4 / §1a.

| Item | Type | Status | Owner |
|---|---|---|---|
| **Q1 — legal to pull non-N-able vendor data** into a client-facing artifact? Gates Package 5 entirely (§4). A legal/DPA read, not a build. | assumption (evidence) → legal | 🔴 | Beth |
| **Q2 — does the *operator* want AI drafts**, or just the finished report? Never directly studied — all demand signal is buyer intent (§4). | assumption (evidence) → operator study | 🔴 | Beth |
| **Q3 — liability paradox as a portfolio gate** (sits under 4 of 6 concepts). Does an AI-drafted-but-declined row, held in the internal surface, constitute notice? One shared counsel review beats four separate stalls. | decision → counsel | 🔴 | a product call → counsel |
| **Positioning fork** — delivery lead (user) vs owner (buyer)? The relationship-trust-vs-impact-trust distinction (§4) is the clearest lens found; doesn't resolve it. | decision | 🔴 | Beth |
| **MVP spine** — Env Health assembly vs. severing the service-desk dependency. | decision | 🔴 | Beth |
| **Confidence scope** — differentiator vs. enablement problem vs. research-first. | decision | 🔴 | Beth |
| **Goal unit unnamed** — more EBRs delivered, or more projects closed? Unfalsifiable until asked. | decision | 🔴 | Beth |
| **Sustaining vs. disruptive** (§4). | decision | 🔴 | Beth |
| **Ledger billing-dependency conflict** — vision wants the Value Ledger to "justify the platform fee"; the Intent Spec's NONGOAL bars any billing dependency; resolved in-code as read-only consumer, but that's a decision, not a settled fact.[^55] | decision → product | 🔴 | Beth |
| **Compliance ownership unassigned** — the ledger schema is only accidentally EU-AI-Act-shaped; not compliant until a named owner verifies.[^56] | decision (ownership) | 🔴 | `<TBD>` |
| **"Encryption resolves the data-legality concerns"** — engineering assertion; category error (a security control for a rights/knowledge question). Does not retire Q1 or Q3. | assumption (evidence) → counsel | 🔴 | eng → counsel |
| **15-minute operator edit-and-send flow** actually fits in 15 minutes. [P≈0.35][^54] | assumption (evidence) | 🔴 | — |
| **Data clean enough to normalize** across sources at 75–80%. [P≈0.30][^54] | assumption (evidence) | 🔴 | — |
| **Buy-vs-build** — mid-size MSPs buy, small self-build, large already have something; segment-dependent, unresolved.[^54] | assumption (evidence) | 🔴 | — |
| **WTP anchor contradicts itself** — Kenneth's "$300+/user" (Guidepoint)[^57] vs. ScalePad's actual per-client pricing, entry $250/mo.[^58]. **Do not quote "$300+/user" without resolving.** ☠ | assumption (evidence) | 🔴 | — |
| **The two `[0% Claude — fill this in]` bet lines** (§1a Package 3 / Package 5). | decision (judgment · human-only) | 🔴 | Beth |
| Alpha persona = mature operator (dedicated delivery lead, EOS, PSA queue). | assumption | 🟢 confirmed 2026-07-28 | Beth |

Type preserves the §9b split — assumption/question = evidence-gap (→ research); decision = a human's call. **🔴 Divergence rows (DIV-001, DIV-002) are open items too — they live in §5a and list here by reference, not duplicated.**

## 5a. Divergence Log — vs. FSN-83143 (canonical) — `[SPEC DIVERGENCE]`

> **TL;DR:** Four places this file's research diverges from or isn't addressed by the canonical
> Intent Spec. Logged per acp-ux.md AGENT GATE rule 10. 🔴 = genuinely open, routes through
> Beth → Meaghan → Nicole. 🟡 = known and in motion, not a standoff. Status is grep-checkable —
> don't self-report it, count the emoji.

| ID | Divergence | vs. spec | Status | Owner | Resolution |
|---|---|---|---|---|---|
| DIV-001 | This file treats Package 3 (N-able Native) vs. Package 5 (Cross-Vendor) as a live, ungated fork | FSN-83143 DEC-006 already ships one Coworker, "QBR Advisor" (priority 2.90), without specifying which branch | 🔴 open | Beth → Nicole | Which branch did DEC-006 assume — or is that itself still open? Needs Nicole directly. |
| DIV-002 | Primary persona (the delivery lead — non-technical delivery lead who runs the EBR) doesn't map to either FSN-83143 §3 actor; she's the person doing the job the Coworker's output serves, a role the actor model has no slot for. the MSP owner (owner/buyer) does map to USER-001, per the 2026-07-30 alpha-persona lock. Per acp-ux.md rule 10, a sub-spec carrying its own persona is fine — the gap is that the *full cast* isn't mapped yet | FSN-83143 §3: USER-001 (Admin, configures/creates), USER-002 (Technician, runs/approves) — neither fits the delivery lead | 🔴 open | Beth | Map full cast (the delivery lead, the MSP owner, client exec, + check USER-005 Audit/Compliance overlap with the client exec's own compliance reviewer) against FSN-83143's table in one place. Revisit as §1's cast list fills in. |
| DIV-003 | QBR Value Ledger producer isn't wired yet — renders $0 (§4, §6) | FSN-83143 INV-PROD-005: every completed run must write a Value Ledger entry — "a run that produces no value entry is a system error" | 🟡 resolving-with-Product | Beth (tracking) | Build-sequencing item, expected to close before QBR Advisor ships — producer wiring gates activation. Not a standoff, just needs to land before ship. |
| DIV-004 | Must 1 bans time-saved/percentage/graph framing inside the QBR's own client-facing content — a value-prop-shaping finding, not just a risk flag | FSN-83143 §5 sets "time saved / reduced headcount" as the Coworker-wide UX north star, visible on every Coworker card | 🟢 resolved | Beth + Nicole | **2026-08-27, Beth + Nicole:** resolved via ISO 9241-11 framing — no contradiction. Time-saved is an *efficiency* measure kept operator-side (admin / Coworker-card surface); the client-facing QBR is graded on *effectiveness + satisfaction*. Different ISO measures in different contexts of use. The *why* now attached: client-facing effectiveness/satisfaction serve the MSP's **business growth** (referrals / new projects / retention — §6 Goal 3). The Coworker-card time-saved pattern does **not** propagate into client-facing output. |

## 6. Problem → Goals → Tasks → Function — `Gate 3` (+ Gate 1/2 for steps 1–2)

> **TL;DR:** 8 Musts defined (behaviors that cause failure when absent). 3/8 auto-classifiable as "procedure work" (automatable). 5/8 require human judgment. Only 2 of 8 are testable at current prototype fidelity.

**Problem — `Gate 1`:** link to §1.

**Goals — `Gate 1/2` — `PROPOSED, confirm`:**
1. Cut prep time without losing the business-value framing that makes EBRs land.
2. Let a non-technical delivery lead run the room solo, without a technician present.
3. Turn the EBR into a repeatable pipeline motion (referrals/projects), not just a checkpoint.

**Tasks — `Gate 3` — Top Tasks candidates, `PROPOSED, confirm`:**
1. Build/update the risk register.
2. Build/update the tech roadmap.
3. Schedule the EBR into a prep queue.
4. Draft business-language talking points (explicitly not graphs/percentages).
5. Log post-meeting action items as PSA tickets.
6. Update the pipeline/scorecard (opportunities raised / opportunities closed).

**Musts — the build must satisfy every one — `Gate 3`:** behaviors the corpus ties to failure when absent. Each carries a built-in test that runs against a real or AI-assisted EBR.

| # | Must | Fails when absent | Built-in test |
|---|---|---|---|
| 1 | Business-value framing, not technical/graphs/% [^26] | operators fall back to technical framing [^27] | content ratio: business-outcome vs. technical sentences (grep, don't self-report) |
| 2 | Real prep, not last-minute [^28] | stale/templated review | artifact-freshness: register/roadmap updated in a pre-meeting window |
| 3 | Follow-up — action items → tickets, relationship pushed [^29] | left to lapse = ineffective | ticket-conversion within N days (machine-checkable via PSA API) |
| 4 | Cadence tuned to the client, not fixed-quarterly [^30] | over- or under-serving | time-since-last-EBR vs. that client's set cadence *(the old "3 lawsuits" justification didn't hold — see Must 8)* |
| 5 | Both core artifacts — risk register + tech roadmap [^31] | incomplete review | presence check: both on file |
| 6 | **Dual-surface — two real artifacts, never a hide/show toggle** [^32] | one doc + a toggle → an accidental un-toggle is a client-visible incident (the Tier-1 proto made exactly this mistake) | structural: internal draft contains content absent from the client export |
| 7 | Sustainable backstage load [^33] | overloading the shared technical role is a named failure point | capacity: EBR load/week vs. the corpus ceiling |
| 8 | **No overclaiming legal/liability protection** [^34] | no case law or underwriter supports documentation-as-shield; a machine that surfaces *every* gap expands the record of what the MSP "knew" — so **auto-draft, human-clears** is the only defensible pattern `[CS: HIGH — not yet counsel-reviewed]` | language check: flag/fail any legal-protection claim in client-facing content |

*Shoulds* (valuable, but the corpus shows real variation): ask for referrals [^35] · **cadence tuned per client** — the one Should with real triangulation, three independent consultancies [^36][^39][^40][^41] · high-touch/in-person where feasible [^37] · log to a pipeline/scorecard [^38].

**Operating principles — the build must follow these — `Gate 3`:** rules for *how* it's built, not just what it contains.

**1. Job shop vs. production line — classify every template task, don't guess.** Proceduralize procedure work; protect senior judgment (Maister's leverage-ratio principle[^53]). Against the 15-tab template (§2):

| Template section | Classification | Why |
|---|---|---|
| Agenda, Current Climate, Hardware/Software Asset Review, Employee Review (data pull), Post-Meeting Action Items, Next Meeting Planning, KPIs | **Production line** — automatable | Directly pullable from PSA/RMM, or (Post-Meeting Action Items) already an explicit instruction to mechanize: "turn every action item into a ticket." **The clearest automation candidate in the whole template.** |
| Risk & Security Review, Compliancy Review, Technology Roadmap | **Hybrid** | Register entries and gap-detection are pullable/draftable; the narrative synthesis ("any concerns," overall risk rating, priority/timeline calls) is judgment |
| Business Priorities & Goals Review, Referrals & Testimonials, Technology Budget | **Brains work — protect this** | A live conversation about the client's specific business; the template itself has no fields here that aren't a live question |

**The point:** automating the production-line rows buys back the delivery lead's time for the brains-work rows — the mechanism behind Goals 1 & 2. **Automating a row does not relax the Musts** — an auto-drafted register still passes Must 1 and Must 8 before it reaches the client.

**2. The human acts in the client's best interest — reuse the existing mechanism.** The Defensibility tier (Measured / Benchmarked / Estimated / Unverified) sits over the Value Ledger's existing `baseline_source` field.[^59] *(Correction 2026-07-31: the tier is proposed grammar, not built — a grep of `acp-core-main-3` finds only `baseline_source`, not the tier vocabulary. `[CS: VERIFIED — grep]`)* Two reusable rules for Must 8: **headline off Measured only** (never blend the AI's self-reported minutes into a client-facing number), and **hard-gate the Unverified tier, not a passive warning** (warning-fatigue research: a no-action warning reads as permission). The same gate applies to N-able's own commercial interest — an upsell a draft surfaces is flagged as commercial, not laundered as neutral risk analysis.

**3. The translation layer — we hold the general, the MSP holds the particular.** N-able's side is what's true *across* clients: telemetry in the consequence grammar (data → risk → meaning → consequence-if-ignored), industry trends, and base-wide comparison — expertise no single MSP can self-build. The MSP's side is the particular: this client, this room. So the draft is **chooser-shaped, not prose-shaped** — ranked include/exclude register rows (choosing what to raise is a Must 8 liability judgment), two-register talking points (CFO/ROI vs owner/strategy), five trends to pick three from, commercial recs flagged and never default-accepted. Corollary — the liability architecture, not just trust design: **what the system sees ≠ what the MSP documents.** The tools see everything; the new legal object is only the client-adjacent record, and nothing enters it without a human electing it. `[CS: HIGH — derived; the drafted-but-declined notice question is Q3's, for counsel]`

**Function/feature structure — `Gate 3`:** not fully `[PENDING]` — real substrate exists. Per the
2026-07-20 Idea Chess pass: the Runbook Engine (49/49 built) and a Value Ledger producer (55/55
built — corrected 2026-07-31 from "52/52" by grep-count of `specs/003-value-ledger/tasks.md`;
currently renders $0) already exist; a QBR runbook is wiring onto existing plumbing, not a
build from zero. What's actually pending: the QBR-specific runbook spec, the producer wiring, and
resolving Q1/Q2 (§4) before locking scope.

**Quality bar + self-serve usability methods — `Gate 3`:** per parent [acp-ux.md](acp-ux.md) §6 — Nielsen floor · ISO 9241-11 · accessibility · Apex `design_lint` · SUS ship-gate · trust-in-AI-output eval · and the cognitive-walkthrough / 5-second-test / content-audit methods for teams without a researcher. **QBR-specific:** run Must 1's content-audit on a sample draft (business-outcome vs. technical-metric sentences; <60/40 business = the prompt isn't working). At Tier 1 Concept, all three self-serve methods run against a static prototype before any production code.

## 7. Confidence score

`[PENDING computation — see parent §7 method]`. After the full-datadump pass (2026-07-28): several
items moved from `[A]`/n=1 to independently-corroborated `[CS: MEDIUM/HIGH]` (cadence, UK cultural
register, the risk-register's centrality via HaloPSA). One item moved the other way — Must 4's
cadence justification was resting on an unverified causal claim (lawsuits ← irregular meetings)
that didn't survive the legal scout and had to be corrected. Net read: still **fine as evidence of
what's happening, thinner than it looked on what to build** — the competitive scan (§4) is the
newest and most load-bearing gap: no shipping direct competitor with real PSA writeback exists,
which cuts both ways (opportunity, or a category that failed once already at Zomentum). Don't
quote a percentage here without grepping it first — 47% rule.

**Service blueprint pass (2026-07-29):** Three items changed confidence this pass.
- `[CS: HIGH — n=1]` on 4–5h/EBR **downgraded** to `[CS: LOW — echo]` — the corroboration is
  a transmission echo, not independent validation (Finding 2).
- Must 6 dual-surface: was `[CS: HIGH]`; now `[CS: VERIFIED — structural]` — service blueprint
  confirms two real artifacts exist and must be preserved, not inferred from the narrative.
- Risk Register legal shield: moved from `[?]` → explicitly `[CS: HIGH — unvalidated, must not
  reach client-facing surface before counsel]` (Finding 1).

Build coverage from service blueprint (26 service moments): **0 built · 1 specced · 8 adjacent ·
17 absent**. The one specced item is QBR Advisor in `specs/004-ai-coworker-registry` — 0 of 40
tasks done as of 2026-07-29. The gap is subject matter (the 8 data pulls, the judgment layer, the
dual-surface artifact structure), not mechanism — Value Ledger + Runbook Engine are already built.

## 8. Sources

- [`qbr-ebr-experience-map-2026-07-28.md`](../qbr-ebr-experience-map-2026-07-28.md)
- [`ebr-process-map-2026-07-28.md`](../ebr-process-map-2026-07-28.md) (council corrections are edits within this file, not a separate doc)
- [`stefanie-hammond-ebr-sources-2026-07-28.md`](../../scout_input/stefanie-hammond-ebr-sources-2026-07-28.md)
- [`qbr-independent-sources-2026-07-28.md`](../../scout_input/qbr-independent-sources-2026-07-28.md) — benchmark/industry data, KAM academic
  literature, Maister
- [`qbr-competitor-products-2026-07-28.md`](../../scout_input/qbr-competitor-products-2026-07-28.md) — the competitive scan (§3, §4)
- [`qbr-operator-voices-2026-07-28.md`](../../scout_input/qbr-operator-voices-2026-07-28.md) — unfiltered operator sentiment (§4), UK texture
  (§3)
- [`qbr-adjacent-and-legal-2026-07-28.md`](../../scout_input/qbr-adjacent-and-legal-2026-07-28.md) — the legal/insurance investigation (Must 8)
- [`SECONDARY-SOURCES-REGISTER-qbr-ebr-2026-07-28.md`](../../scout_input/SECONDARY-SOURCES-REGISTER-qbr-ebr-2026-07-28.md)
- [`datadump-manual-human-steps.md`](../../datadump-manual-human-steps.md)
- [`concept-sketches-qbr-2026-07-20.md`](../concept-sketches-qbr-2026-07-20.md) — the Idea Chess pass on this offering (§4, §6)
- [`idea-chess-fleet-synthesis-2026-07-14.md`](../idea-chess-fleet-synthesis-2026-07-14.md) — death patterns, survival methodology
- [`acp-word-sketches-four-complete-2026-07-15.md`](../acp-word-sketches-four-complete-2026-07-15.md) — Defensibility Layer, Branch A/B split
- `Executive Business Review Template 1.xlsx` — Stef H.'s own template (§2, §6 Operating
  Principles)
- [`acp-offerings-2026-07-14.md`](../acp-offerings-2026-07-14.md) — the original vision doc for this offering (Offering A);
  quantified riskiest assumptions, WTP anchors, TAM, the two routed human-call items (§5)
- [`vcio-vciso-industry-practice.md`](../../scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md) — category framing, QBR-as-core-
  vCIO-deliverable (§4)
- Confluence: [ACP Secondary Research — MSP QBR/EBR Practice](https://n-able.atlassian.net/wiki/spaces/AI/pages/62226858351)
- Confluence (this file, registered): [ux.md — ACP synthesis spine (2026-07-28)](https://n-able.atlassian.net/wiki/spaces/AI/pages/62227775577) — Synthesis-briefs shelf
- [`ebr-service-blueprint-2026-07-29.md`](../ebr-service-blueprint-2026-07-29.md) — 26-step service blueprint, Flowers/Miller
  canon, three critical findings (legal shield, echo problem, dual-surface structural)

## 9. Mini-docs

This file has no children. Parent: [acp-ux.md](acp-ux.md).

---

## Appendix A — Framework analysis

> **Moved here 2026-08-28.** Frameworks are valuable, but appendix material — this is *how* the build conclusions were reached, not the build spec itself. It overlaps the source briefs/scout corpus (the raw evidence is there); kept here so the synthesis isn't lost. The build-relevant conclusions already live in §1 / §5 / §6.

### A1 · Four-angle view (POEMS · Five Human Factors · Value Webs) — `PROPOSED, confirm`

We looked at the QBR/EBR space from four angles: what people *do* (Activities), what's in the environment (POEMS — People, Objects, Environment, Messages, Systems/Services), what people *need* (Five Human Factors), and who gets value from whom (Value Webs). Framework credit: Whitney Quesenbery's Four Lenses. Each row `PROPOSED` means the mapping is an interpretive call, not a direct quote.

| Lens | Content | Tag |
|---|---|---|
| **Activities — client side** | Review risk register + tech roadmap; decide referrals/projects; update leadership on IT posture | `[CS: MEDIUM]`[^6] |
| **Activities — MSP side** | Build risk review from service-desk capacity; schedule into PSA prep queue; convert action items to PSA tickets; update EOS scorecard | `[CS: HIGH]`[^7] |
| **POEMS — People** | Delivery lead, technician (backstage), client exec, MSP owner | `[CS: HIGH]` |
| **POEMS — Objects** | Risk register, tech roadmap, PSA ticket queue, EOS scorecard | `[CS: HIGH]` |
| **POEMS — Environment** | In-person, 3h+ meetings observed; one ran through lunch | `[CS: HIGH — n=1]`[^8] |
| **POEMS — Message** | Business-value framing — explicitly *not* graphs/pie-charts/percentages | `[CS: HIGH]`[^9] |
| **POEMS — Systems/Services** | PSA (Halo); roadmap tooling `[CS: MEDIUM]`[^10]; Copilot used once for transcription `[CS: HIGH — n=1]`[^11]. Wider market: HaloPSA's own agenda gives risk review the single longest block[^49]; competitors ship QBR-adjacent reporting but **only vCIOToolbox does PSA ticket writeback** — everyone else stops at report generation[^50]. |
| **Five Human Factors — Physical** | In-person, multi-hour | `[CS: HIGH — n=1]`[^8] |
| **Five Human Factors — Social** | Relationship/trust-building; first EBR produced a referral | `[CS: HIGH — n=1]`[^12] |
| **Five Human Factors — Emotional** | Client arrives "guarded" if MSP's gone quiet; documented-warning-then-incident removes blame/emotion | `[CS: HIGH — n=1 each]`[^13] |
| **Five Human Factors — Cultural** | "A conversation with a side serving of structure" — informal register preferred. **Corroborated:** a UK operator-coach names British reserve — "very un-British to blow your own trumpet." Both primary sources are UK; nothing comparable from any US source. `[CS: HIGH]`[^14] [^51] |
| **Five Human Factors — Cognitive** | Non-technical lead needs confidence to run the room solo; client "not interested in the back end" `[CS: HIGH]`[^15]. A coach names "the curse of the expert" `[THIN]`[^52] — but no operator admits this in the first person. Antecedent: Maister's leverage-ratio theory (brains work vs. procedure work) `[CS: MEDIUM — secondary]`[^53]. |
| **Value Webs — client gets** | Business-relevant risk visibility, roadmap alignment, a forum to raise needs | `[A]`[^16] |
| **Value Webs — MSP gets** | Referrals, new projects | `[CS: HIGH — n=1]`[^17] |
| **Value Webs — exchange** | MSP invests 3–7h prep for pipeline + relationship equity | `[CS: MEDIUM]`[^18] |
| **Value Webs — N-able gives** | EBR framework + templates, boot camp training, Head Nerd enablement | `[CS: MEDIUM]`[^22] |
| **Value Webs — N-able gets** | Partner attach/loyalty, product upsell surfaced via EBR recs, reduced churn | `[A]`[^23] |
| **Value Webs — Head Nerds give / get** | Framework design + boot camp delivery + case-study elevation `[CS: MEDIUM]`[^24] / proof points, success stories, community standing `[A]`[^25] |

**Not carried into Value Webs:** the "documented risk-acceptance shields the MSP" claim. Council downgraded this to `[?]`[^19] — stays out of any value statement until counsel resolves it.

### A2 · Sustaining / disruptive & market — `PROPOSED`

Whether this is a *better tool for MSPs who already run EBRs* or a *way to reach the majority who run none* is still open `[?]` — and it changes what you build. What the research actually settled, in plain terms:

- **No one ships this yet.** No generally-available, MSP-specific AI QBR tool does real PSA ticket writeback; the closest (vCIOToolbox) has AI on roadmap only, and one vendor (Zomentum) built and then *killed* the exact feature in 2024.[^42][^43][^44] Cuts both ways — an open lane, or a category that already failed once.
- **Some MSPs run zero QBRs and thrive** — a $4.5M, 1,000+-client shop did.[^45] So "everyone needs a QBR" isn't a safe premise.
- **The distinction worth carrying into positioning (§5):** *relationship trust* (what most QBRs build) vs. *impact trust* (what clients actually need to see).[^48]
- **Two branches** — Package 3 (N-able-only; near-term lead) and Package 5 (cross-vendor; the prize, gated on the Q1 legal read). Both run on existing substrate (Runbook Engine + Value Ledger, §6). Gates → §5.

*(The mechanics — Idea Chess survival scores, the 5-voice council divergences, sentiment counts, and the category-frame taxonomy — live in the source briefs: [`concept-sketches-qbr-2026-07-20.md`](../concept-sketches-qbr-2026-07-20.md) and [`qbr-ebr-council-testimony-2026-07-30.md`](../qbr-ebr-council-testimony-2026-07-30.md). Not repeated here.)*

---

## CHANGELOG

*(Newest first. Never silently delete a wrong number — mark it ☠ with a note.)*

- **2026-08-28** — Trimmed to the build doc: §3 (four-angle) + §4 (sustaining/disruptive & market) demoted to **Appendix A**, and the disruptive section de-jargoned (Idea Chess math / council divergences / sentiment counts pushed to the source briefs). Thin 4A's rows (MSP owner, Stef H.) cut. Participants anonymized (delivery lead / MSP owner / Stef H. / Joe L. / Lewis P.); team + Julian out of the cast; Will→design. Read-path is now §1 → §2 → §5 → §6.
- **2026-08-28** — Merged §5 (Riskiest assumptions) + §7 (Open decisions) + the loop into one **§5 Open items** register with a Type column (assumption / decision / question) preserving the §9b split; added explicit Q1/Q2 rows and the §1a bet lines that had only lived in the loop. Renumbered §8→§7, §9→§8, §10→§9. Divergence Log (§5a) stays standalone; its 🔴 rows list into §5 by reference. No findings changed — structure only.
- **2026-08-27** — Refactored onto ux.md template v1.0: template frontmatter (registry, `design_lint`, `work_type`); tags/gates now inherit from parent instead of re-printing; human narrative → [`qbr-ebr.README.md`](qbr-ebr.README.md); contributor front door → [`CONTRIBUTE.md`](CONTRIBUTE.md); added this CHANGELOG and the loop section. Footnotes and glossary kept in place (provenance / plain-language reference). DIV-004 closed (ISO 9241-11 framing). No findings changed — packaging only.
- **2026-08-21** — refresh Step 6: SRC-M-004…012 registered; Vertesia execution plan (Confluence 62302388241) registered; C-11/C-12/C-13 logged (see `open_conflicts` frontmatter). drift → FRESH.
- **2026-07-31** — session delta (was pinned at top): Stef H. direct interview (07-30, 57m) — confidence-transfer named a candidate primary job, three-coworker family proposed, manual-first pedagogy, MRR×risk cadence. Idea Chess re-run — Package 3 (native) leads ~2.9%, Package 5 fell to ~0.36% (N-able becomes holder of competitors' risk data). Q3 (liability paradox) named as a third portfolio gate. Translation-layer principle added (§6 Operating Principle 3). "Encryption resolves data-legality" logged as a category-error assumption (§5). Axial coding sheet + CSV, concept round 2, Chapter 2 story draft filed.
- **2026-07-29** — service blueprint pass: 4–5h/EBR downgraded `[CS: HIGH]`→`[CS: LOW — echo]`; Must 6 dual-surface upgraded to `[CS: VERIFIED — structural]`; risk-register legal shield moved `[?]`→`[CS: HIGH — unvalidated, must not reach client]`. Build coverage: 0 built · 1 specced · 8 adjacent · 17 absent.

---

## Glossary — every term in this file, defined

**The world:**
**MSP** — managed service provider; the IT company that runs technology for small/mid businesses. Our customer. · **Client / SME** — the MSP's customer (a dental practice, a law firm). · **QBR / EBR** — quarterly/executive business review; the recurring meeting where the MSP proves its value to the client's leadership. Stef H. teaches "EBR" (not tied to a calendar quarter); the industry mostly says "QBR." Same meeting. · **PSA** — professional services automation; the MSP's ticketing/billing system (e.g. HaloPSA). · **RMM** — remote monitoring & management; the tool that watches client devices (N-central is ours). · **MDR** — managed detection & response; security monitoring (Adlumin is ours). · **Cove** — our backup product. · **N-sight** — our other RMM. · **vCIO / vCISO** — "virtual" chief information (security) officer; the advisory service MSPs sell upmarket; the QBR is its core recurring deliverable. · **Risk register** — the structured table of a client's known risks; the heart of the EBR; the client signs it each meeting. · **Tech roadmap / budget** — the client's planned technology work and its cost; the register's two companion documents. · **EOS** — a small-business operating framework (weekly scorecards); how the delivery lead's company runs itself.

**The people:**
**Stef H.** — N-able "Head Nerd" (partner-education expert); author of the EBR training this research started from; directly interviewed 07-30. · **the delivery lead** — delivery lead at an MSP that runs Stef H.'s method; our richest operator account. · **the MSP owner** — the delivery lead's business partner; the *buyer* of the practice, not its daily runner. · **Head Nerd** — N-able's partner-education role. · **Alpha persona / USER-001** — the primary user the build spec targets: the MSP owner-operator who is also still a technician. · **The operator** — whoever actually runs the EBR (the delivery lead's seat). Note: the spec currently has no slot for this person — that's divergence DIV-002.

**The research apparatus:**
**Datadump** — the living index of every research source; on Confluence; rule: *if it's not linked, it's not a source*. · **scout file** — a raw source saved into `scout_input/` with provenance. · **ux.md** — this kind of file: the machine-and-human-readable research spine for one offering. · **Idea Chess** — adversarial concept testing: walk a concept through the stages where it could die; name the first death; "naive survival" multiplies stage probabilities (all guesses, tagged `[A]`) — useful for *comparing* concepts, useless as forecasts. · **Council** — five analytical frameworks read the same brief and give testimony *without* agreeing; contradictions are kept, not resolved. · **4A's** — a persona summary: Ambitions, Attitudes, Actions, Anxieties. · **POEMS / Five Human Factors / Value Webs** — observation checklists (what's in the environment / what people need / who gets value from whom). · **Echo (not triangulation)** — two sources agreeing because one taught the other; counts once. · **47% rule** — check every statistic against its source before quoting; named for the day the self-report said 47% and the count said 80%. · **Confidence regime** (in the file header) — instructions to AI tools for how boldly to act on this file: `PROCEED-FLAGGED` = build, show doubt visibly, claim no validation. · **The bet / `[0% Claude — fill this in]`** — judgment slots reserved for a human; never AI-filled. · **Frankenprototype** — a deliberately ugly first working version, built with fictional data, used to ask questions. · **Tier 1 Concept** — lowest prototype fidelity: for reactions, not validation.

**The bets and gates:**
**Package 3** — build the QBR helper for MSPs using N-able's own products only (no permission problems; current board leader). · **Package 5** — the cross-vendor version (pulls competitors' data; legally gated). · **Q1** — may we legally pull other vendors' data into a client-facing document? · **Q2** — does the *operator* actually want AI drafting (vs. just the finished report)? Never directly studied. · **Q3** — the liability paradox: an AI-drafted risk register expands the record of what the MSP "knew" — the most-requested feature and the biggest legal risk are the same feature; one counsel session gates four of six concepts. · **DIV log** — where this file openly disagrees with the official build spec (FSN-83143); each entry routed to a decision-maker. · **DEC-006** — the build-spec decision that ships a "QBR Advisor"; hasn't picked Package 3 vs 5. · **Musts / Shoulds** — behaviors whose absence causes failure / behaviors that help but vary. · **Job shop vs production line** — our sorting rule: which meeting-prep work is repetitive (automate it) vs. judgment-and-relationship work (support it, never template it). Our fusion of an operations idea with Maister's professional-services theory — cited secondhand; verify before leaning on it (V1). · **Dual-surface** — the internal candid notes and the client-facing document are two separate artifacts, never one document with a hide/show switch. · **Defensibility tiers** — every machine-made claim is labeled Measured / Benchmarked / Estimated / Unverified; only Measured gets headlined; Unverified is hard-blocked from clients. · **Chooser-shaped** — the draft arrives as ranked options the operator picks from (include/exclude rows, pick-3 trends, two tones), because the choosing is where their judgment and liability live. · **Drag-rank** — survey method: rank by dragging; "tops drag-rank" = most-wanted. · **WTP / TAM** — willingness to pay / total addressable market. · **DPA / ToS** — data processing agreement / terms of service; the contracts Q1 turns on.

---

### Footnotes

[^1]: Stef H., N-able Head Nerd boot camp, 0:38:51. Vendor-relayed.
[^2]: the delivery lead, operator self-report, 20:23. n=1.
[^2b]: Service blueprint Finding 2 (2026-07-29): the delivery lead adopted this framework after the MSP owner
  brought it home from Stef H.'s training. Both the delivery lead's and Stef H.'s figures measure the
  same transmitted process, not independently arrived-at estimates. Echo, not triangulation.
[^3]: the delivery lead, Head of Client Delivery, a UK MSP. Identity verified 2026-07-28 —
  see [`stefanie-hammond-ebr-sources-2026-07-28.md`](../../scout_input/stefanie-hammond-ebr-sources-2026-07-28.md).
[^4]: the delivery lead, 10:16.
[^5]: Per the source doc's own flag: n=1, vendor-selected reference-customer content — see
  [`stefanie-hammond-ebr-sources-2026-07-28.md`](../../scout_input/stefanie-hammond-ebr-sources-2026-07-28.md).
[^6]: Synthesized from the delivery lead's account — not a direct quote.
[^7]: Risk review built from service-desk capacity, the delivery lead 25:25; scheduled into Halo PSA
  queue, 26:36; action items converted to PSA tickets, Stef H. 1:26:02; EOS scorecard,
  the delivery lead 15:29.
[^8]: Stef H.'s UK-partner anecdote (boot camp), n=1: 3-hour EBR that ran through lunch.
[^9]: Stef H. boot camp, 0:36:36.
[^10]: ScalePad / Lifecycle Insights named by Stef H. as existing roadmap toolkits — not
  independently confirmed as in-use by a UK MSP specifically.
[^11]: the delivery lead, 27:15 — Microsoft Copilot used once for transcription/summary, one trial.
[^12]: the delivery lead, 13:28 — first EBR she ran produced a referral and a new client.
[^13]: "John," super-elite partner FL, Stef H. boot camp 0:28:05–0:32:36 — documented
  warning removed blame after an incident. n=1 each anecdote.
[^14]: Stef H. boot camp, 1:32:22 — attributed to "John."
[^15]: the delivery lead, 09:56 and 10:16.
[^16]: Inferred from the corpus as a whole — not a direct claim by any single source.
[^17]: Stef H. boot camp, 0:39:52–0:44:06 — UK partner anecdote, £70,000 project closed
  off the back of one EBR. n=1.
[^18]: Synthesized — prep-time cost weighed against pipeline/relationship-equity value; not a
  stated exchange in any source.
[^19]: Council pass, 2026-07-28 (edits within [`ebr-process-map-2026-07-28.md`](../ebr-process-map-2026-07-28.md)) — no case law, no
  carrier practice found; see [`qbr-adjacent-and-legal-2026-07-28.md`](../../scout_input/qbr-adjacent-and-legal-2026-07-28.md).
[^20]: Andy Cormier, named operator — $4.5M MSP running zero QBRs. Single named counter-example,
  not a market statistic.
[^21]: [`datadump-manual-human-steps.md`](../../datadump-manual-human-steps.md), Part C, 2026-07-28.
[^22]: Inferred from N-able's enablement role (boot camp, handouts) — not a stated value-web claim
  by any source.
[^23]: The "John" anecdote (Cove migration closed after a documented risk-register warning,
  Stef H. boot camp 0:28:05–0:32:36) is the one concrete instance of vendor-product
  attach via the EBR motion in the corpus. Broader partner-attach/loyalty/churn framing is
  inferred, not stated.
[^24]: Stef H., N-able Head Nerd (sales/marketing), ~20 years at N-able, ~16 in account
  management, Head Nerd ~4 years — role and delivery per
  [`stefanie-hammond-ebr-sources-2026-07-28.md`](../../scout_input/stefanie-hammond-ebr-sources-2026-07-28.md).
[^25]: Inferred — the boot camp and partner interview function as enablement content built from
  partner case studies; not a stated motivation by Stef H. herself.
[^26]: Stef H. boot camp, 0:36:36. Same source as POEMS — Message, footnote 9.
[^27]: Stef H. boot camp, 0:34:29 — confidence-lacking MSPs "fall back on what they are
  comfortable with… technology and products and usage stats," making the EBR "tactical… rather
  than strategy and business focused."
[^28]: the delivery lead, 19:08 — "You can't go to these meetings and prepare 20 minutes before you
  walk in."
[^29]: the delivery lead, 14:14 — "if you don't push and continue them and follow up, they won't be
  that effective." Ticket conversion per Stef H. boot camp, 1:26:02 (footnote 7).
[^30]: Stef H. boot camp, 1:00:44 — three named MSP lawsuits; the MSPs "were not having
  regular meetings with their clients."
[^31]: Stef H. boot camp, 1:15:34 — "having your risk register, having your tech
  roadmap, have at least these two pieces."
[^32]: the delivery lead, 29:38 — clients "don't get access to the whole EBR document… there's some
  internal notes on there that I need to keep."
[^33]: the delivery lead, 25:25–26:29 — the head of technical overview builds the risk review from
  service-desk capacity; "having four EBRs a week was actually not sustainable."
[^34]: Council pass, 2026-07-28 — same finding as footnote 19 (no case law, no carrier practice
  found).
[^35]: the delivery lead, 13:28 — "you don't be afraid to ask."
[^36]: the delivery lead, 23:22 — one client moved from 6-monthly to quarterly after seeing value;
  another moved from 6-weekly to quarterly to protect resource; some refuse EBRs entirely.
[^37]: Stef H. boot camp, 0:39:52–0:44:06 — UK partner anecdote, £70,000 project closed.
  n=1, same as footnote 17.
[^38]: the delivery lead, 15:29 / 15:45 — EOS weekly L10 meeting and scorecard; EBRs "instrumental
  in… putting the stats into the scorecard."
[^39]: Start Grow Manage (Jeff Loehr & Joe Rojas, independent consultancy, sells coaching not a
  QBR tool): "Sometimes it's every six months. Sometimes it's weekly. Sometimes it's monthly" —
  cadence set by client need, not calendar. [`qbr-independent-sources-2026-07-28.md`](../../scout_input/qbr-independent-sources-2026-07-28.md).
[^40]: Call To Action LLC (Dori Spade): tiered cadence — quarterly for large/complex, biannual for
  smaller, annual for stable long-term clients.
[^41]: Paul Green, MSP Marketing Edge podcast ep. 82 (UK), with guest Ernest Murray — recommends
  twice-yearly/annual, explicitly not quarterly; "overkill" for typical smaller clients.
[^42]: [`qbr-competitor-products-2026-07-28.md`](../../scout_input/qbr-competitor-products-2026-07-28.md) — full market sweep, no generally
  available MSP-specific AI QBR generator with real PSA writeback found; noted as possibly a
  search blind spot, not a certainty.
[^43]: vCIOToolbox — 2-way ticket/opportunity sync to Autotask (the only real PSA writeback found
  in the sweep); AI features stated in future tense ("AI to suggest review topics...") and not
  shipping; pricing page returns 403, opaque.
[^44]: Zomentum's own release notes, 1 July 2024: "Sunset Assessments and QBRs: We have
  discontinued the Assessments and QBRs feature," stated reason "focus on enhancing other core
  functionalities." Marketing site still advertises the discontinued feature.
[^45]: Andy Cormier, "How Do MSPs Prove Their Worth? It Ain't QBRs," Syncro blog, 11 Oct 2022 —
  "I never ran a single customer through a QBR—ever. Twelve employees, $4.5 million in annual
  revenue, over a thousand clients." Now Syncro's MSP Channel Chief (as of Nov 2024); operator
  history predates the role and is independently corroborated (authored *So You Want To Be An
  MSP*).
[^46]: TruMethods blog — "only 20% of MSPs have a structured QBR process." No survey name, no n,
  no year cited; TruMethods sells the myITprocess QBR tool.
[^47]: [`qbr-operator-voices-2026-07-28.md`](../../scout_input/qbr-operator-voices-2026-07-28.md) — balance counted across 9 substantive
  independent/peer-group sources.
[^48]: Luis Giraldo, Chief Evangelist, ScalePad, via MSP Growth Hacks, 2 Oct 2025 — "MSPs have
  been taught to become trusted advisors, but that usually builds relationship trust, not impact
  trust." Flagged in source as vendor-evangelist, not operator voice.
[^49]: HaloPSA's published Strategic Business Review agenda: Check-in (5min) · Action Items (5) ·
  Project Status (5) · Client Updates (15) · **Review of Exposure and Risk (45)** · Issues List
  (30) · Wrap-up (5). HaloPSA does not claim native QBR automation — explicitly recommends a
  third-party tool (lifecycleinsights.io) instead.
[^50]: [`qbr-competitor-products-2026-07-28.md`](../../scout_input/qbr-competitor-products-2026-07-28.md) — full product-by-product breakdown:
  ScalePad/Cognition360, myITprocess, Datto Strategy Overview, CloudRadial, BrightGauge/
  ConnectWise, MSPbots. None confirmed to write actions back into a PSA as tickets except
  vCIOToolbox's roadmap (unshipped) claim.
[^51]: Richard Tubb, former UK MSP owner, now industry coach — "very un-British to 'blow your own
  trumpet.'" Tubblog has since closed; background independently verified.
[^52]: Dr Simon Raybould, presentations coach, TubbTalk #68 (29 Mar 2020, UK) — MSPs "suffer from
  the curse of the expert"; decision-maker audiences "don't care what's in it, only how it
  works." A hired coach's diagnosis of the industry, not a first-person operator admission.
[^53]: Maister, *Managing the Professional Service Firm* (Free Press, 1993), via secondary
  summaries — not the primary text, verify before quoting as load-bearing. "Brains" work requires
  high senior involvement; "procedure" work permits junior leverage. Separately: "people do not
  join professional firms for jobs, but for careers" — a staff-development ceiling distinct from
  the client-facing confidence ceiling.
[^54]: [`acp-offerings-2026-07-14.md`](../acp-offerings-2026-07-14.md) — Offering A (Client-Facing Proof / QBR + Value
  Ledger), riskiest assumptions, read directly 2026-07-28 (previously only cited secondhand via
  the Idea Chess pass).
[^55]: [`acp-offerings-2026-07-14.md`](../acp-offerings-2026-07-14.md), "Two things that need a human call," item 1.
[^56]: [`acp-offerings-2026-07-14.md`](../acp-offerings-2026-07-14.md), "Two things that need a human call," item 2. EU AI
  Act enforceable 2026-08-02.
[^57]: Kenneth, via Guidepoint, cited in [`acp-offerings-2026-07-14.md`](../acp-offerings-2026-07-14.md) — "$300 per user…
  per MSP user," calls it "nuts." `[CS: MEDIUM — single-source]` in the original document.
[^58]: [`qbr-competitor-products-2026-07-28.md`](../../scout_input/qbr-competitor-products-2026-07-28.md) — ScalePad Lifecycle Manager (Pro)
  entry tier $250/mo per-client (blocks of 5); highest verified tier Cognition360 $449/mo (25 PSA
  users). No flat per-user pricing found on any fetched ScalePad page.
[^59]: [`acp-offerings-2026-07-14.md`](../acp-offerings-2026-07-14.md), "Value Ledger — dig findings" — defensibility tier
  over the existing `baseline_source` field. **The original "confirmed against `acp-core-main-3`"
  claim was wrong**: grep 2026-07-31 finds no tier vocabulary anywhere in that repo; only
  `baseline_source` exists in code. Corrected during the qbr-prep-sim pipeline.
[^60]: [`vcio-vciso-industry-practice.md`](../../scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md), §1, §3.
[^61]: Same source, §6 — frame test result: "lifecycle management" reads as ScalePad-specific,
  not the dominant industry-wide frame.
[^62]: HaloPSA agenda finding: footnote 49. Survey finding: [`acp-offerings-2026-07-14.md`](../acp-offerings-2026-07-14.md),
  Offering A, "Partner / partner-type" — HaloPSA named specifically in the n=119 survey as
  must-integrate.
[^63]: [`concept-sketches-qbr-2026-07-20.md`](../concept-sketches-qbr-2026-07-20.md), Package 3 — Client-Facing Proof, N-able Native
  (Branch B), fields 2–4 and 9. Idea Chess pass, ~0.9% naive survival.
[^64]: [`concept-sketches-qbr-2026-07-20.md`](../concept-sketches-qbr-2026-07-20.md), Package 5 — Client-Facing Proof, Cross-Vendor
  (Branch A), fields 2–4 and 9. Idea Chess pass, ~0.43–0.64% naive survival.
