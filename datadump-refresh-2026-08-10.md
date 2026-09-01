# Datadump Refresh — 2026-08-10

**Sweep window:** 2026-08-04 → 2026-08-10
**Run type:** Scheduled (automated, Steps 1–4 only)
**Last run:** 2026-08-03 (sweep through 2026-08-04)
**Pipeline stops here.** Step 5 (Accept/Edit/Reject) is Beth's. Step 6 does not run without approval.

---

## ⚠️ COVERAGE GAPS — READ FIRST

Silence does not read as coverage. The following sources were not accessible this run:

| Source | Method attempted | Result |
|--------|-----------------|--------|
| Teams Brain Dump channel (`19:OlTtVVyAz8wISWXG2Jfi-9xSIAqBe4k-No9OAmHb1bM1@thread.tacv2`) | `chat_message_search` (date-filter path) + Graph Search keyword path | Empty on both paths — rate limit / indexing issue; same failure mode as Aug-03 run |
| Outlook email | `outlook_email_search` "ResilienceAI harness ACP QBR offering pilot coworker" | No output returned |
| SharePoint | `sharepoint_search` "ResilienceAI harness QBR EBR ACP coworker offering pilot" | No output returned |
| Claude Code sessions | `search_session_transcripts` "ACP harness coworker QBR EBR vCISO offering pilot" | No matching sessions found |
| M365 Copilot chat history | Not reachable via MCP (expected per SKILL.md) | Not swept |

**Consequence:** Brain Dump channel is the primary weekly intake. A full gap means any posts between Aug 04–10 are not in this changeset. **Recommend:** Beth checks Brain Dump manually and promotes relevant posts before approving.

---

## DISMISSED SET (skipped, confirmed from living datadump)

3 sources skipped per Not-relevant status in Confluence 62175674556:
- ACP Partner Diligence Tracking
- ACP Internal Build Plan
- Partner Execution Plan

---

## STEP 1 — GATHER

### Confluence AI space sweep (window: Aug 04–10)

CQL query returned 4 pages modified since Aug 04. All 4 were last modified exactly Aug 04 (none after). Three were already cataloged in the Aug-03 run. One is new:

**NEW — not in any prior run:** Integrations Requirements List — Nicole Reineke — Confluence 62255169643 — Aug 04, 2026

### Re-hash of existing registered sources

| Source | Last modified | Status this run |
|--------|-------------|-----------------|
| North Star (62176526400) | Aug 04, 2026 | FRESH — no changes since Aug-04 sweep |
| Secondary Research QBR/EBR (62226858351) | Aug 04, 2026 | FRESH — Aug-04 addendum already captured in Aug-03 run |
| Living Datadump (62175674556) | Aug 04, 2026 | FRESH |
| Idea Chess B/C/D/E sub-pages | Jul 31, 2026 | FRESH — all last modified Jul 31, no changes in sweep window |
| Stefanie Hammond interview (SRC-U-007) | Jul 30, 2026 | FRESH |
| Survey End2End (62149787674) | Jul 07, 2026 | FRESH |

### Step 1b — AI Workbench sweep

| Channel | Result |
|---------|--------|
| Claude Code sessions | Searched — no matches |
| Teams (non-Brain-Dump channels) | Not swept (date-filter and keyword paths both empty for Brain Dump; separate channel sweep not attempted) |
| SharePoint | Empty — see coverage gap above |
| Outlook | Empty — see coverage gap above |
| M365 Copilot chat history | Not reachable via MCP (expected) |
| Condens | Not swept this run (78 artifacts in repository; not attempted due to sweep window focus) |

---

## STEP 2 — CATALOG

### New source registered this run

```
id:          SRC-M-003
title:       Integrations Requirements List
shelf:       spec (canonical definition — Nicole Reineke, product decision-owner)
contributor: Nicole Reineke
date:        2026-08-04
permalink:   https://n-able.atlassian.net/wiki/spaces/AI/pages/62255169643
hash:        content stable as of Aug 04, 2026
relevance:   Relevant
```

**Shelf classification note:** This is a product-authored requirements document, not user research or market evidence. It belongs on the **specs & canonical definitions** shelf per the datadump model. It contains important product-direction signal but does not constitute user or market evidence. [CS: VERIFIED — authored directly by Nicole Reineke as product decision-owner]

### _inbox status (unchanged)

No changes to _inbox items this run. Existing parked items carry forward:
- BD-002 (William Mincher): still parked
- Untitled doc (Taha Doueidar): still parked
- Beth Nam usability sessions P3-P6: hold (build not at testable state)
- Julian Taylor meeting recap Jul 27: still parked

---

## STEP 3 — RELATE

### SRC-M-003 touches (Integrations Requirements List)

| Spec / artifact | Touch type | Reason |
|---|---|---|
| Offering A brief (QBR/EBR prep) | STALE | PSA is the primary data source for QBR prep — integration scope now formally defined by Nicole |
| Offering B brief (Control Plane) | STALE | Control plane integration scope (what is governed) now defined |
| Offering C brief (Live IR/RCA) | STALE | MDR/Security integration set named (Adlumin native + Huntress/SentinelOne/CrowdStrike/Sophos MDR) |
| Offering D brief (Ticket Triage) | STALE | PSA integration targets (ConnectWise, Autotask, HaloPSA) = ticket data source |
| Offering E brief (Cross-Tool Reconciliation) | STALE | This offering IS cross-tool; integration scope directly defines its V1 scope |
| North Star Q1 (data egress/DPA) | EXTENDS | Integration list sharpens the data-egress surface |
| North Star Data-clean-enough (P0) | EXTENDS | Integration list names specific data sources; PSA heterogeneity question is now sharper |
| North Star IR-RCA zero-holes (P1) | EXTENDS | MDR/Security stack now named; RCA data coverage varies by which MDR the MSP uses |
| North Star Live-diagnostics-WTP (P2) | EXTENDS | Integration list clarifies what "live diagnostics" would pull from |
| North Star ScalePad-displacement (Confirmed) | EXTENDS | ScalePad still in Nicole's integration scope Aug 04 — CONFLICT-05 remains open, no resolution |
| CONFLICT-05 (ScalePad discontinuing — from Aug-03 run) | NO CHANGE | Not resolved; ScalePad still listed but discontinuing rumor neither confirmed nor denied |

---

## STEP 4 — PROPOSED CHANGESET

### ⚠️ CONFLICTs — none new this run

No direct contradictions between SRC-M-003 and existing spec claims. One significant open question raised (see OQ-NEW-08 below) — a gap in the existing spec, not a contradiction.

---

### New findings to review

---

**FINDING-2026-08-10-01**
**Integration scope formally defined by Nicole Reineke**
Source: SRC-M-003 ([Integrations Requirements List](https://n-able.atlassian.net/wiki/spaces/AI/pages/62255169643), Aug 04, 2026)
Confidence: [CS: VERIFIED — authored by Nicole Reineke, product decision-owner]

Integration matrix for first 5 use cases:

| Category | N-able native | Third-party integration targets |
|---|---|---|
| PSA (tickets, SLAs) | Mspm (not promoting it) | ConnectWise, Autotask, HaloPSA, Kaseya BMS, ServiceNow, Salesforce |
| RMM (patch, device health) | N-central, N-sight | Kaseya VSA, NinjaOne, Atera, Datto RMM, ConnectWise Automate |
| MDR/Security | Adlumin | Huntress, SentinelOne, CrowdStrike, Sophos MDR |
| Backup/DR | Cove | Datto BCDR, Veeam, Acronis |
| Identity/MFA | (no N-able native) | Microsoft Entra ID, Duo, Okta |
| Documentation | Passportal | Hudu, IT Glue |
| Other | — | ScalePad |
| M365 | — | M365, Intune, Defender, Exchange, Teams (explicitly "not first") |
| Network | — | Meraki, Fortinet, SonicWall (?) |

**What this would change, and in which spec:**
- **Offering A**: Data sources for QBR prep now have a Nicole-authoritative list (PSA + RMM + MDR/Security). The integration list is the basis for the "data pull" design.
- **Offering B**: Control plane integration scope = everything in this table (minus "not first" items). Narrows the architecture question.
- **Offering C**: Gate C (Adlumin data access) — Adlumin confirmed as N-able native MDR integration. Direction confirmed; data-access permission remains open.
- **Offering D**: Ticket triage data source = PSA integration (ConnectWise, Autotask, HaloPSA as primary targets).
- **Offering E**: Cross-tool reconciliation scope = reconciling across PSA + RMM + MDR at minimum.

---

**FINDING-2026-08-10-02**
**N-able native PSA (Mspm) flagged "not promoting it"**
Source: SRC-M-003
Confidence: [CS: VERIFIED — Nicole's own framing]

Nicole's PSA row explicitly notes Mspm as N-able native but "not promoting it." First-time explicit signal that N-able's own PSA is in scope but deprioritized as the integration target.

**What this raises:**
- Most MSPs in the target market use third-party PSAs (ConnectWise is the dominant MSP PSA [CS: HIGH]). If Mspm isn't promoted, the QBR data prep relies on third-party connectors.
- New sub-assumption (currently unlabeled in Offering A): "the PSA integration delivers consistent-quality ticket/SLA data regardless of which PSA the MSP uses."
- See OQ-NEW-08 below.

---

**FINDING-2026-08-10-03**
**ScalePad still listed in Nicole's integration scope (Aug 04)**
Source: SRC-M-003
Confidence: [CS: VERIFIED]

ScalePad appears under "Other" in Nicole's Aug 04 integration list. Context: CONFLICT-05 from the Aug-03 run flagged "ScalePad discontinuing" as unverified. Nicole's inclusion suggests the displacement bet remains active and she is still treating ScalePad as in-scope as of Aug 04.

Does NOT resolve CONFLICT-05. Both can be true: Nicole lists ScalePad as a target, and the discontinuing rumor is unverified. North Star ScalePad displacement (Confirmed, High ~90%) unchanged.

---

### Open questions raised this run

**OQ-NEW-08 — PSA data quality across third-party connectors**
Source: FINDING-2026-08-10-02
Question: Given that N-able's own PSA (Mspm) is "not promoting it" and the integration targets are ConnectWise/Autotask/HaloPSA/etc. — does QBR prep data quality differ by PSA? Is there a connector standardization layer planned, or does the Harness handle PSA heterogeneity at the normalization layer?
Touches: North Star "Data clean enough" row (P0) · Offering A value prop
Owner: [A] — Beth / Nicole

**OQ-NEW-09 — Identity/MFA: no N-able native product**
Source: FINDING-2026-08-10-01
Question: Identity is entirely third-party-dependent (Entra ID, Duo, Okta). For use cases requiring identity context (IR RCA, governance), the system has no N-able-native identity anchor. Is there a design implication for Offering B (Control Plane) when identity is never native?
Touches: Offering B, Offering C
Owner: [A] — Beth / Nicole

**OQ-NEW-10 — Network integration uncertainty ("SonicWall?")**
Source: FINDING-2026-08-10-01
Question: The network row includes "SonicWall?" with a question mark — unresolved in Nicole's own list. Relevant for Offering C (IR/RCA often involves network forensics). Is network integration in or out of scope for V1?
Touches: Offering C
Owner: [A] — Nicole

### Prior open questions status

| OQ | Question | Status |
|----|---------|--------|
| OQ-NEW-01 | Who owns compliance / DPA? | Not resolved this run |
| OQ-NEW-03 | Partner selection gate — criteria? | Not resolved this run |
| OQ-NEW-07 | Naming divergence (ACP / QBR Advisor / Analyst / Harness / ResilienceAI) | Not resolved — Integrations Requirements List uses no product name |

---

## STEP 4b — SUGGEST (enrichment pass against riskiest assumptions)

| Assumption | Brief | New evidence | Classification | Proposed action |
|---|---|---|---|---|
| "Adlumin data access (Gate C) achievable" | Offering C | SRC-M-003: Adlumin listed as N-able native MDR — confirms integration intent | SUPPORTS (partial) — confirms direction, not access permission | Promote from "direction unclear" to "integration in Nicole's scope; data-access permission still open" |
| "PSA data available for QBR prep" | Offering A | SRC-M-003: PSA integration formally scoped (ConnectWise et al.) | SUPPORTS (partial) — PSA in scope confirmed; quality/standardization across connectors not resolved | Add OQ-NEW-08 to Offering A riskiest assumptions register |
| "Ticket data accessible for triage" | Offering D | SRC-M-003: PSA (ConnectWise, Autotask, HaloPSA) listed | SUPPORTS — ticket data = PSA data; PSA integration is Nicole-confirmed | Note: PSA integration confirmed by Nicole for Offering D ticket-access assumption |
| "Operator ~50% wants mechanism (Q2)" | North Star Q2 | Nothing in SRC-M-003 | NOT TOUCHED | Q2 remains open |
| "QBR prep time significant" | Offering A | Stefanie Hammond SRC-U-007 (prior run) — confirmed significant prep time | SUPPORTS (prior source, already in evidence base) | No action needed |

---

## STEP 4c — RISK REGISTER CHECK (North Star, Confluence 62176526400)

Evidence base this run: SRC-M-003 only. Teams/Outlook/SharePoint/Claude sessions not accessible.

| Row | Priority | Touch type | Evidence and impact |
|---|---|---|---|
| Q1: Data egress / DPA | P0★ | EXTENDS | Integration list sharpens egress surface: PSA + RMM + MDR + Backup/DR = 4 major data domains in V1 scope. "M365 not first" = deliberate sequencing to limit initial egress. Likelihood ~40% unchanged — DPA review still not run, no owner. |
| Q2: Operator wants mechanism | P0★ | NOT TOUCHED | Nothing in SRC-M-003 speaks to adoption readiness or operator-fit. Likelihood ~50% unchanged. |
| QBR edit fits ≤15 min | P0 | NOT TOUCHED | — |
| Data clean enough (75–80%) | P0 | EXTENDS | Integration list names specific data sources (PSA tickets/SLAs, RMM patch/device health). OQ-NEW-08 (PSA heterogeneity) is a new named sub-dimension of this row. Likelihood ~30% unchanged. |
| Data-trust | P1 | NOT TOUCHED | — |
| IR RCA zero holes (cross-stack) | P1 | EXTENDS | MDR/Security integration set now named (Adlumin native + Huntress / SentinelOne / CrowdStrike / Sophos MDR). RCA data coverage varies by which MDR tool the MSP uses — adds specificity to the "zero holes" challenge. |
| RCA during not after | P2 | NOT TOUCHED | — |
| Live-diagnostics WTP | P2 | EXTENDS | Integration list clarifies what "live diagnostics" would pull from (RMM device health, MDR security events). Sharpens what a WTP demo needs to demonstrate. |
| MSP needs to review/edit | Directional (~85%) | NOT TOUCHED | — |
| MSP can predict | Answered/Accepted | NOT TOUCHED | — |
| ScalePad displacement | Confirmed (~90%) | EXTENDS | ScalePad still listed in Nicole's integration scope Aug 04. CONFLICT-05 (discontinuing rumor) remains open. Confirmed status unchanged. |
| Graduated approval-gate | Confirmed (~90%) | NOT TOUCHED | — |

**Touch-log line for North Star page:**
`2026-08-10 — Scheduled refresh sweep (Aug 04–Aug 10). Evidence base: SRC-M-003 (Nicole Reineke, Integrations Requirements List, Confluence 62255169643, Aug 04). Teams/Outlook/SharePoint not accessible this run. Q1 EXTENDS (integration list sharpens egress surface — 4 data domains in V1 scope), Data-clean-enough EXTENDS (PSA heterogeneity OQ-NEW-08 added as named sub-question), IR-RCA-zero-holes EXTENDS (MDR stack now named; coverage varies by MSP's MDR tool), Live-diagnostics-WTP EXTENDS (data sources now concrete — RMM device health + MDR events), ScalePad-displacement EXTENDS (still in Nicole's Aug 04 integration scope; CONFLICT-05 unresolved). Q2, QBR-edit-15min, Data-trust, RCA-during-not-after, MSP-review/edit, MSP-can-predict, Graduated-approval-gate: not touched this round.`

---

## ⛔ STOP — HUMAN REVIEW GATE (Step 5)

This changeset is proposed, not applied. For each item:
- ✅ Accept
- ✏️ Edit
- ❌ Reject
- 🔵 Accept-as-interpretation (owner + date + "revisit if contradicted")

Step 6 (update spec docs, re-hash sources, clear STALE flags) does not run until Beth approves.

**Before approving — action required:**
- Check Teams Brain Dump channel manually for any posts Aug 04–10 not captured here

---

## COVERAGE SUMMARY

| Source | Status |
|--------|--------|
| Confluence AI space (new pages) | ✅ Full sweep — 1 new source found (SRC-M-003) |
| North Star risk register (all 12 rows) | ✅ Checked |
| Idea Chess B/C/D/E sub-pages | ✅ Checked — FRESH (last modified Jul 31) |
| Teams Brain Dump channel | ❌ Not accessible (both search paths empty) |
| Outlook email | ❌ No output returned |
| SharePoint | ❌ No output returned |
| Claude Code sessions | ✅ Searched — no matches |
| M365 Copilot chat history | ⚠️ Not reachable via MCP (expected) |
| Condens (78 artifacts) | ⚠️ Not swept this run |
| Dismissed sources (3) | ✅ Skipped |
| _inbox items | ✅ Checked — no promotions, no changes |

---

*Generated: refresh-datadump skill, 2026-08-10. Steps 1–4 only. Step 5 is yours.*

---

---

# SUPPLEMENTARY CATALOGUING RUN — Orphaned `scout_input/` Files

**Run type:** Automated (scheduled) — separate invocation, context resumed after compaction  
**Trigger:** Three files sitting in `scout_input/` from a prior session, not processed in the main Aug-10 sweep above  
**Files:** `MSP_QBR_EBR_Secondary_Research.docx` · `MSP_QBR_EBR_Abductive_Analysis.xlsx` · `RESEARCH_HANDOFF_FOR_UX_BRIEFS.md`  
**Status: AWAITING HUMAN REVIEW — Step 5 gate. Do not auto-approve. Do not perform Step 6.**

## Additional coverage gaps (this invocation only)

| Source | Result |
|---|---|
| Teams Brain Dump sweep | ⚠ FAILED — rate limit 429; 0 of 46 chats scanned. Gap noted. Does not block processing local files. |
| M365 Copilot chat history | Not reachable via MCP (expected) |
| Claude Code sessions | Searched (ACP, harness, QBR/EBR vocabulary) — no hits |

---

## STEP 2 — CATALOG (orphaned files)

### FILE 1: `scout_input/MSP_QBR_EBR_Secondary_Research.docx`

**Proposed shelf:** `market`  
**Reason:** Synthesized secondary research (paraphrased, not verbatim) drawn from named published sources about MSP QBR/EBR market practice. 20 sections. Matches the market shelf: world/context artifacts.  
**Status:** Content already accepted by Beth 2026-08-04 and documented in the canonical Confluence register (62226858351) — the addendum there lists all 12 source clusters. **Local file needs formal manifest registration only.** No new evidence to process.

**⚠ Filename mismatch — decision needed (Q-SUPP-001):**  
The canonical register references `scout_input/msp-qbr-ebr-secondary-research-round2-2026-08-04.md` as the committed working copy. The local file is `MSP_QBR_EBR_Secondary_Research.docx` — different name and format. Are these the same content, or different versions?  
**Who decides:** Beth. **Needed before** manifest entry is finalized.

Proposed manifest entry (draft — pending Q-SUPP-001):
```
id:               MARKET-QBR-SECONDARY-R2
shelf:            market
source_permalink: https://n-able.atlassian.net/wiki/spaces/AI/pages/62226858351
                  (canonical register addendum, 2026-08-04)
contributor:      Elizabeth Connor
date_accepted:    2026-08-04
date_catalogued:  2026-08-10
local_path:       scout_input/MSP_QBR_EBR_Secondary_Research.docx
registered_path:  scout_input/msp-qbr-ebr-secondary-research-round2-2026-08-04.md
                  (per canonical register — confirm match)
drift:            FRESH (content accepted; manifest entry pending)
```

---

### FILE 2: `scout_input/MSP_QBR_EBR_Abductive_Analysis.xlsx`

**⚠ CLASSIFICATION REQUIRES BETH'S DECISION — do not shelve automatically.**

**What this file is:** Beth's abductive interpretation layer on the secondary research. 70 rows, 18 theme blocks. Columns: Theme/Topic | ✅ Confirms | 🆕 New/Challenges | ❓ Gaps. Sheet: "Abductive Analysis." Not referenced anywhere in the canonical register.

**Why this is different from any existing shelf:**  
Per CLAUDE.md §18: "Beth abducts. Claude deduces. Neither pretends otherwise." This is Beth's tacit expertise made legible — not a primary source (`market`), and not AI-session output (`derived`). The `derived` shelf is defined in SKILL.md as AI-session output specifically. Shelving this there would conflate human abduction with AI confabulation risk. That's a category error.

**Three options for Beth (Q-SUPP-002):**

| Option | Description |
|---|---|
| **(a)** `derived` with sub-label "human-analytical" | Quick; `derived` becomes a two-subtype shelf. No taxonomy change needed if sub-label is visible. |
| **(b)** New sub-shelf (e.g., `interpretive`) | More accurate; requires amending the shelf model. Recommended if other human-analytical artifacts are expected. |
| **(c)** Private working document — not in the formal datadump | Beth's analytical notes are hers; the spec (qbr-ebr.ux.md) already carries her interpretations via `[A]` tags and `PROPOSED` sections. Register only the research gap finding (CHANGE-SUPP-004 below). |

**What this file contains worth preserving regardless of shelf decision:**

Row 13 is the most actionable: **"Client Perspective / Experience: THIS IS THE CORE GAP FOR THE EXPERIENCE MAP. We need primary research (interviews, surveys) with SMB clients who receive QBRs/EBRs from their MSPs."** Beth's explicit naming of the primary research gap. See CHANGE-SUPP-004 — this should be elevated regardless of the file's shelf classification.

**Not registered until Beth decides.** Options (a) or (b): register the file. Option (c): register only the Row 13 gap via CHANGE-SUPP-004.

---

### FILE 3: `RESEARCH_HANDOFF_FOR_UX_BRIEFS.md`

**⚠ SHELF CLASSIFICATION REQUIRES BETH'S DECISION (Q-SUPP-003)**  
Two candidates: `derived` (human synthesis layer) or `market` (processed synthesis artifact).

**What this file is:** Beth's synthesis/implications document for UX brief updates. 8 critical findings, 15-source table, 5 explicit research gaps. Written by Elizabeth Connor. Not referenced anywhere in the canonical register. Not a primary source — synthesizes the round-2 secondary research already registered.

**Content audit against `briefs/context/qbr-ebr.ux.md`:**

| Finding | Status in qbr-ebr.ux.md | Action |
|---|---|---|
| Automation boundary 80/20 ("design for human 20%") | Covered as job shop/production line (§6 Op. Principle 1) | FRESH |
| Dual-agenda asymmetry (MSP intent vs. client intent) | Implied; not explicitly structured as two-agenda frame | EXTENDS → CHANGE-SUPP-002 |
| Agenda asymmetry as structural pre-meeting problem | Not present | EXTENDS → absorbed into CHANGE-SUPP-002 |
| Client-side question set (5 categories) | Not in file in structured form | EXTENDS → CHANGE-SUPP-001 |
| QBR vs EBR distinction | Covered explicitly (§4, §1, glossary) | FRESH |
| vCIO tier differentiator | Covered (§1, §4) | FRESH |
| Post-QBR action item gap | Must 3 covers follow-up; Journeyz cited | FRESH |
| Relationship intelligence systemic risk ("final 20%") | Op. Principle 3 names translation layer; transfer risk not in §5 as riskiest assumption | EXTENDS → CHANGE-SUPP-003 |

Proposed manifest entry (draft — pending Q-SUPP-003):
```
id:             DERIVED-QBR-HANDOFF-2026-08
shelf:          [Beth's decision — derived or market]
source:         local file (synthesizes 62226858351 content)
contributor:    Elizabeth Connor
date:           2026-08-10 (catalogued)
local_path:     RESEARCH_HANDOFF_FOR_UX_BRIEFS.md
note:           Synthesizes round-2 secondary research accepted 2026-08-04.
                Not primary evidence. 8 UX-implications findings; 5 research gaps.
```

---

## STEP 3 — RELATE (orphaned files)

### `briefs/context/qbr-ebr.ux.md`
**Drift status:** STALE — the .xlsx and .md handoff are not in `built_from`; the .docx is covered via the canonical register already listed in `built_from`.  
**built_from update needed:** Add both new files once shelf decision is made. This is a Step 6 action.

### `briefs/acp-qbr-analyst.brief.md`
**EXTENDS.** The five-category client question set (CHANGE-SUPP-001) maps onto the QBR coworker's narration structure. See Step 4b.

### Integration targets (FINDING-2026-08-10-01 from the main run above)
**Cross-run note:** CHANGE-SUPP-001's client question categories (performance, issues, security, cost, roadmap) map cleanly onto SRC-M-003's data domains (PSA/RMM/MDR/Backup/Identity). The client question structure is not redundant with SRC-M-003 — it's the client-facing frame for what the integration data serves. No conflict; complementary framing.

### Confluence canonical register (62226858351)
The .xlsx and .md are not registered. Step 6 action — do not update until Beth approves.

---

## STEP 4 — PROPOSED CHANGESET (orphaned files)

### 🚩 CONFLICTS: None
No new evidence in these three files contradicts any existing spec claim. The secondary research has been registered; the abductive analysis and handoff are synthesis layers over already-accepted evidence.

---

**CHANGE-SUPP-001: Client-side question set → `briefs/context/qbr-ebr.ux.md` §1 or §3**

Source: `RESEARCH_HANDOFF_FOR_UX_BRIEFS.md` §4, synthesizing TechWyse (Aug 2024), Kelser Corporation (Feb 2025), Exigent Technologies (Aug 2024).

What to add: Structured "what clients actually want to know" frame — five categories from client-facing MSP content:
1. **Performance verification** — KPIs, SLAs, uptime, ticket ratios
2. **Issues and resolution** — what went wrong, what was done, what prevents recurrence
3. **Security and compliance** — protection status, new requirements
4. **Cost and value** — ROI, savings, upcoming costs
5. **Roadmap and forward planning** — what next, what the MSP is seeing

Plus a "sixth" implicit need: proactive advice the client didn't know to ask for — the advisory gap.

Confidence: `[CS: MEDIUM]` — client-facing content written *by MSPs* about clients, not direct client voice. Tag `[WOBBLY]` — the sourcing gap (§5 gap #1 in the handoff) remains open.  
Where: §1 (client exec row, currently `[A]` throughout) or §3 (Activities — client side).  
`[A]/[?]` impact: Does not close the client-voice gap. Extends the client exec entry with better-sourced structure.

**Beth verdict:** Accept / Edit / Reject / Accept-as-interpretation

---

**CHANGE-SUPP-002: Dual-agenda asymmetry → `briefs/context/qbr-ebr.ux.md` §1**

Source: `RESEARCH_HANDOFF_FOR_UX_BRIEFS.md` §2–3, synthesizing TechWyse, Kelser, Exigent.

What to add: Name explicitly that the same QBR meeting serves two structurally different agendas:
- **MSP's intent:** relationship-building, upsell, demonstrating value, retention
- **Client's intent:** accountability verification, checking the contract, getting answers to specific concerns

Current §1 frames the meeting from the MSP/operator side (Vanessa's view). Adding the client-agenda frame makes the "two-actor experience" visible in the problem statement. Agenda asymmetry (MSP drives the agenda; client is often a passive recipient) named as a structural condition.

Confidence: `[CS: MEDIUM]` — same caveat as CHANGE-SUPP-001.  
Where: §1, as a framing note after the cast table.

**Beth verdict:** Accept / Edit / Reject / Accept-as-interpretation

---

**CHANGE-SUPP-003: Relationship intelligence systemic risk → `briefs/context/qbr-ebr.ux.md` §5**

Source: `RESEARCH_HANDOFF_FOR_UX_BRIEFS.md` §8, synthesizing Adam Parsons LinkedIn (June 2025) and round-2 secondary research corpus.

What to add: Name "relationship intelligence" as a systemic risk and candidate riskiest assumption — what was promised, what the client cares about, sensitivities, current business context — currently lives in the account manager's head. Not structured, not transferable, lost when they leave.

Op. Principle 3 (§6) already names "the MSP holds the particular." This change adds the knowledge-transfer risk to §5 as a named 🔴 open assumption, making it a watch-list item rather than just a principle.

Confidence: `[CS: MEDIUM]` — synthesized from secondary sources; no primary MSP operator interview.  
Where: §5 riskiest assumptions table.

**Beth verdict:** Accept / Edit / Reject / Accept-as-interpretation

---

**CHANGE-SUPP-004: Client Perspective gap → `briefs/context/qbr-ebr.ux.md` §5 as riskiest assumption**

Source: `MSP_QBR_EBR_Abductive_Analysis.xlsx`, Row 13 (Beth's abductive analysis).

What to add: "No direct client voice — all client-perspective content is MSP-written about clients, not by clients." Currently implicit in §1 (the client exec entry carries `[A]` tags throughout) but not named as a top-level riskiest assumption. Beth's explicit naming in the abductive analysis ("THIS IS THE CORE GAP FOR THE EXPERIENCE MAP") warrants elevation.

Classification: `[CS: UNKNOWN — Beth's abductive analysis]`  
Proposed §5 entry text:
```
No direct client voice — all client-perspective content is MSP-written
about clients, not by clients. The full client-side experience map
cannot be closed without primary research (interviews or survey) with
SMB end-clients. Named by Beth as the core gap.
[CS: UNKNOWN — Beth's abductive analysis]  🔴 open | Research agenda
```

**Note:** This change should be accepted regardless of shelf decision for the .xlsx — it's Beth's explicit statement of a research priority, not dependent on how the file is classified.

**Beth verdict:** Accept / Edit / Reject / Accept-as-interpretation

---

## STEP 4b — SUGGEST — enrichment (orphaned files pass)

### `briefs/context/qbr-ebr.ux.md` riskiest assumptions watch-list

| Assumption | This run's evidence | Classification |
|---|---|---|
| Q1 (data egress, ~40%) | Nothing in these files touches data egress | NOT TOUCHED |
| Q2 (operator adoption, ~50%) | Relationship intelligence finding (HANDOFF §8): context is currently unstructured — prep overhead is higher than the 15-min estimate accounts for | EXTENDS `[CS: MEDIUM]` |
| Q3 (liability paradox) | Nothing touches legal/counsel territory | NOT TOUCHED |
| 15-min edit flow (~35%) | Relationship intelligence finding implies pre-QBR context-gathering is unstructured and un-timed — 15-min estimate may undercount this step | EXTENDS `[CS: LOW — inference from secondary synthesis]` |
| Client voice gap | Beth's .xlsx Row 13 explicitly names this as the core gap | CHANGE-SUPP-004 proposes elevating to §5 |
| Positioning: delivery lead vs. owner | Dual-agenda framing sharpens the fork (MSP=relationship / client=accountability) without resolving it | EXTENDS `[CS: MEDIUM]` |

**Rule:** None of these EXTENDS entries constitute a SUPPORTS. Synthesized secondary research extends a framing; it does not move an `[A]` to `[R]`. Per SKILL.md: "A claim that originated in a chat can never be promoted past `[A]` on chat evidence alone." Same principle applies here. Only a primary source moves `[A]` to `[R]`.

### `briefs/acp-qbr-analyst.brief.md`

The five-category client question set maps onto the QBR coworker's narration structure. If the department brief's QBR coworker is the "narration hub," the five client categories are the natural chapter structure for what it narrates.

**Suggestion:** Add the five-category frame to the domain model as the client-facing narrative chapter structure.  
Classification: EXTENDS `[CS: MEDIUM]` — same sourcing caveat (MSP-written about clients, not direct client voice). **Not a SUPPORTS for any existing `[A]` claim.**

### `briefs/acp-cp-qbr-native-2026-07-21.brief.md`

Relationship intelligence as a systemic risk (HANDOFF §8) opens a differentiation angle: N-able's native stack already holds PSA history, prior QBR runs, and incident records. If the native QBR can surface "relationship context from your own N-able data," that's a capability cross-vendor products can't offer as cleanly.

**Suggestion:** Add relationship intelligence retrieval (PSA + prior QBR outputs) as a candidate feature hypothesis for the native brief.  
Classification: EXTENDS `[A]` — design inference from the systemic-risk finding. Not validated by operator research. Q2 (does the operator want AI drafts?) still governs whether any of this gets used.

---

## STEP 4c — RISK REGISTER CHECK (supplementary run, North Star 62176526400)

**Run context:** Cataloguing run, not a new-research run. The three files synthesize material already accepted 2026-08-04. Net-new evidence this run: the .xlsx (Beth's abductive analysis of already-registered research) and the .md handoff (Beth's synthesis of already-registered research). Neither introduces primary sources the North Star hasn't seen. Teams sweep failed (0/46 chats scanned).

| Row | Touch type | Evidence and impact |
|---|---|---|
| P0★ Q1 (data egress, ~40%) | NOT TOUCHED | No data-egress or legal-authority content in the three files |
| P0★ Q2 (operator adoption, ~50%) | EXTENDS (weakly) | Relationship intelligence framing (HANDOFF §8) adds "knowledge-transfer risk when the account manager leaves" as an operator workflow gap. Synthesized from round-2 secondary research registered 2026-08-04. Does not move probability or resolve the row. Prior touch (2026-08-04) stands. `[CS: MEDIUM — secondary synthesis]` |
| P0 (15-min edit flow, ~35%) | EXTENDS (weakly) | Relationship intelligence finding implies pre-QBR context-gathering is currently unstructured and un-timed — the 15-min estimate may undercount this step. `[CS: LOW — inference from secondary synthesis]`. Does not move probability. |
| P0 (data clean 75–80%, ~30%) | NOT TOUCHED | — |
| P1 (data-trust handling) | NOT TOUCHED | — |
| P1 (IR RCA zero holes) | NOT TOUCHED | — |
| P2 (MSPs use RCA during incident) | NOT TOUCHED | — |
| P2 (live-diagnostics WTP, ~55%) | NOT TOUCHED | — |
| Directional (MSP reviews/edits before send, ~85%) | NOT TOUCHED | Note: dual-agenda framing from HANDOFF §2–3 adds texture on WHY MSPs review but does not change the directional finding's status. |
| Answered (MSP can predict client) | NOT TOUCHED | — |
| Answered (ScalePad displacement, ~90%) | NOT TOUCHED | — |
| Answered (graduated approval gate, ~90%) | NOT TOUCHED | — |

No CHALLENGES this run. No CONFLICTS. Two EXTENDS (Q2, 15-min P0). Neither moves probability.

**Touch-log line to append to North Star page (after Beth approves):**
```
2026-08-10 — Supplementary cataloguing run: three orphaned scout_input files
(MSP_QBR_EBR_Secondary_Research.docx, MSP_QBR_EBR_Abductive_Analysis.xlsx,
RESEARCH_HANDOFF_FOR_UX_BRIEFS.md). The .docx content was already registered
and logged 2026-08-04. The .xlsx and .md synthesize already-registered secondary
research — no primary sources are new this run. Teams sweep failed (429 rate
limit; 0/46 chats scanned — coverage gap).

Q2 EXTENDS (weakly): relationship intelligence framing adds "knowledge-transfer
risk" as an operator workflow sub-dimension — secondary synthesis, no probability
change. 15-min edit P0 EXTENDS (weakly): relationship context-gathering is
currently unstructured and un-timed — may undercount the 15-min estimate.
All other rows: NOT TOUCHED this run.
```

---

## ⛔ STOP — HUMAN REVIEW GATE (Step 5) — Supplementary run

This supplementary changeset is proposed, not applied. **Do not perform Step 6 without Beth's explicit approval.**

### Step 5 verdicts — 2026-08-12

| # | Decision | Verdict | Notes |
|---|---|---|---|
| Q-SUPP-001 | .docx vs round-2 .md — same content? | **RESOLVED** (research, not Beth verdict) | NOT the same. Round-2 .md is a filtered subset that explicitly references the .docx as its source. .docx = primary (20 sections full); .md = working copy (9/20 sections excluded as duplicates of Jul-28 register). Both → `market` shelf. |
| Q-SUPP-002 | Shelf for .xlsx (abductive analysis) | **ACCEPTED — derived/human-analytical** | Sub-label must be visible wherever the shelf is displayed. Distinguishes Beth's interpretive work from AI-session output. |
| Q-SUPP-003 | Shelf for .md handoff | **ACCEPTED — market** | Human synthesis of published secondary sources; not AI output; world/context artifact. |
| CHANGE-SUPP-001 | Client question set → qbr-ebr.ux.md | **PENDING BETH VERDICT** | — |
| CHANGE-SUPP-002 | Dual-agenda asymmetry → qbr-ebr.ux.md | **PENDING BETH VERDICT** | — |
| CHANGE-SUPP-003 | Relationship intelligence risk → qbr-ebr.ux.md §5 | **PENDING BETH VERDICT** | — |
| CHANGE-SUPP-004 | Client Perspective gap → qbr-ebr.ux.md §5 | **ACCEPTED** | Proposed §5 text approved. Row to add: "No direct client voice. All client-perspective content is MSP-written about clients, not by clients. The full experience map cannot be closed without primary research with SMB end-clients. [CS: UNKNOWN — Beth's abductive analysis] 🔴 open | Research agenda" |
| 4b enrichment | Five-category frame / relationship intelligence | **ACKNOWLEDGED** | No Step 6 action until CHANGE-SUPP-001 and Q2 resolve. |

### Step 6 actions (after approval only)

1. Register .xlsx and .md on chosen shelves in the manifest
2. Update `built_from` in `briefs/context/qbr-ebr.ux.md` to include the two new files
3. Apply approved CHANGE-SUPP-001 through CHANGE-SUPP-004 to `qbr-ebr.ux.md`
4. Apply approved enrichment suggestions to respective briefs
5. Update Confluence canonical register (62226858351) with .xlsx and .md registrations
6. Append the Step 4c touch-log entry to North Star page (62176526400)
7. Stamp `last_run: 2026-08-10`

### Coverage gap note for next run
Teams Brain Dump sweep failed (429 rate limit) in both the main Aug-10 run and this invocation. Messages since 2026-08-04 have NOT been processed. Next scheduled run: attempt Teams sweep first; if rate limit persists again, flag for manual check before proceeding.

---

*Supplementary cataloguing run — refresh-datadump skill. Run by Claude Sonnet 4.6. Session ID: ced40125-82d9-47e5-8bca-e17f33a4aa4d. No synthesis performed. No spec docs modified. Human approval required for Step 6.*
