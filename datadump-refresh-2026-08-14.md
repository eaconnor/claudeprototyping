# Datadump Refresh — 2026-08-14

**Sweep window:** 2026-08-12 → 2026-08-14
**Run type:** Scheduled weekly (automated, Steps 1–4 only)
**Trigger:** `weekly-datadump-refresh` scheduled task
**Pipeline stops here.** Step 5 (Accept/Edit/Reject) is Beth's. Step 6 does not run without approval.
**This run is INCOMPLETE.** Step 4c (North Star Risk Register) could not be performed — Atlassian auth down. Per SKILL.md hard rule: "If a run skips 4c, it isn't a completed run." See Step 4c below.

---

## ⚠️ CONNECTIVITY STATUS — READ FIRST

| System | Status | Detail |
|---|---|---|
| M365 connector | **DARK (4th consecutive run)** | `get_me` returned connector-invalidated error. Teams Brain Dump, SharePoint, Outlook, Calendar all unavailable. |
| Atlassian connector | **DOWN** | Preflight hook confirmed HTTP/2 302 at session start. Steps 0 and 4c both blocked. Cannot read dismissed set or North Star Risk Register. Cannot post to Confluence. |
| Claude Code sessions | **PARTIAL** | `list_sessions` succeeded (20 sessions listed). `search_session_transcripts` returned no ACP/harness hits in the two highest-priority sessions. See Step 1b. |
| Local file sweep | **SUCCEEDED** | Primary gather for this run. 12+ new files in `briefs/` since Aug-12. See Step 1b. |

**Per HONESTY RULE:** This document records what was and was not reachable. Nothing has been fabricated to fill the auth gaps.

---

## ⚠️ INFRASTRUCTURE NOTE — PERSISTENT FROM AUG-12

`library/` directory does not exist. `manifest.yml` has nowhere to live. All STALE flags and source registrations in this document are asserted in the document rather than mechanically derivable. Persistent gap — unchanged since Aug-12 run.

---

## STEP 0 — LOAD DISMISSED SET

**BLOCKED.** Atlassian auth down. Cannot reach Confluence page 62175674556 (ACP Research Datadump, space AI). Dismissed set not loaded.

Consequence: This run proceeds without the dismissed set filter. Any new item flagged below could in principle overlap with a previously-dismissed source. Beth should run Step 0 in an authenticated session and compare against this changeset before accepting.

---

## STEP 1 — GATHER

### Teams Brain Dump

**DARK — 4th consecutive scheduled run.** Channel `19:OlTtVVyAz8wISWXG2Jfi-9xSIAqBe4k-No9OAmHb1bM1@thread.tacv2` unreachable. M365 connector connector-invalidated. Silence is not coverage.

**Running count:** Aug-10 DARK · Aug-12 DARK · Aug-14 DARK (three scheduled runs). At least one ad-hoc run also dark.

No new Brain Dump material this run.

---

### Step 1b — AI Workbench Sweep

#### Claude Code sessions

`list_sessions` returned 20 sessions total. New sessions since Aug-12 sweep window:

| Session ID | Title | Date | Search result |
|---|---|---|---|
| local_efe4b93e | Harness EBR hi-fi prototype v2 | 2026-08-14 (ACTIVE) | **Searched — no ACP/harness hits returned** |
| local_6f9ef3d3 | Friday chores bethproto | 2026-08-14 (ACTIVE) | Not searched (likely admin/chores) |
| local_3cc06ec7 | Game skill download for Alaina | 2026-08-13 | Not searched (game-sharing, out of scope) |
| local_c1c311f1 | Insights | 2026-08-13 | Not searched — output captured in INSIGHTS-ACTIONS.md (local file sweep) |
| local_bc53f0a6 | Service Blueprint for QBR/EBR flow | 2026-08-13 | **Searched — no ACP/harness hits returned** |
| local_89ee87e2 | Cumulative /prototype skill time | 2026-08-13 | Not searched (token tracking) |
| local_49352d0b 	| Prototyping simple demo | 2026-08-12 (post-refresh) | Not searched (meeting cost calculator context) |
| local_dd5c0299 | Token usage for prototype | 2026-08-12 (post-refresh) | Not searched (token tracking) |

**Search scope logged per SKILL.md requirement:** 2 of 8 new sessions searched via `search_session_transcripts` with ACP/harness vocabulary (`ACP harness coworker QBR EBR NCSC`). Both returned no matches. Material from those sessions appears to have been captured through file output (briefs/, INSIGHTS-ACTIONS.md, CONDUCT-LEDGER) — the primary source for this run's `derived` shelf. 6 remaining sessions not searched (estimated out of scope; not silently implied as covered).

**M365 Copilot history:** NOT reachable via MCP, by design. Outputs (docs, recaps, emails, Teams messages) also unreachable this run due to M365 auth failure. Log as gap.

#### Local file sweep (primary gather for this run)

`find briefs/ -newer datadump-refresh-2026-08-12.md` returned the following new files:

| File | Date | Type |
|---|---|---|
| `briefs/harness-ebr-v2-2026-08-13.brief.md` | 2026-08-13 | Major brief (259 lines) |
| `briefs/harness-ebr-v2-2026-08-13.math-recount.md` | 2026-08-13 | 47%-rule verification (147 lines) |
| `briefs/qbr-ebr-system-2026-08-12.ux.md` | 2026-08-12 | Working draft system doc (374 lines) |
| `briefs/DATADUMP-AUTOMATION-PATTERN.md` | 2026-08-13 | Pattern doc (automation decisions) |
| `briefs/PROTOTYPE-FLEET-PATTERN.md` | 2026-08-13 | Pattern doc (parallel build) |
| `briefs/proposed-skills/ebr-draft/SKILL.md` | 2026-08-13 | Draft skill spec |
| `briefs/meeting-cost-calculator.brief.md` | 2026-08-12 | Demo brief (standalone, no ACP relevance) |
| `briefs/meeting-cost-calculator-critic-pass-1.md` | 2026-08-12 | Critic output |
| `briefs/meeting-cost-calculator-critic-pass-2.md` | 2026-08-12 | Critic output |
| `briefs/meeting-cost-calculator.math-recount.md` | 2026-08-12 | Math verification |
| `briefs/handoffs/beth-meeting-cost-calculator-2026-08-12/` | 2026-08-12 | Handoff packet |

Modified root-level files (all post-Aug-12):
- `CONDUCT-LEDGER.md` — updated through 2026-08-14 (4 new entries)
- `GAME-STATE.md` — score reconciled 2026-08-14
- `INSIGHTS-ACTIONS.md` — 2026-08-13 session output
- `CHORES.md` — updated with new items and one decision (2026-08-14)

---

## STEP 2 — CATALOG

### No new user-shelf sources this run

Primary research channels (Teams Brain Dump, M365) dark. No new interviews, transcripts, or first-party user research material gathered this run.

**SRC-U-009 (Craig Fisher interview, 2026-08-07):** Still registered from Aug-12 run. Still pending Beth's formal Step 5 Accept. Carrying forward.

### New derived-shelf material (AI session output)

Derived shelf items are classified per SKILL.md: DECISIONS (what a human actually decided) / CLAIMS (asserted as fact, enter as `[?]`, must be re-verified) / CITED SOURCES (the real prize — follow the citation, register the primary source).

---

**DERIVED-001 — `briefs/harness-ebr-v2-2026-08-13.brief.md`**
```yaml
id: DERIVED-001
shelf: derived
library_ref: briefs/harness-ebr-v2-2026-08-13.brief.md
type: "Session output — full design brief"
title: "Harness EBR v2 Hi-Fi Prototype Rebuild Brief"
session_origin: likely local_efe4b93e (Harness EBR hi-fi prototype v2)
human_in_loop: Beth Connor
date: 2026-08-13
maturity: Direction
drift: FRESH
feeds_specs: [harness-ebr-v2 prototype, qbr-ebr-system, acp-core specs]
```

DECISIONS extracted:
- **Design system locked to Apex 2.0, brand accent purple #8500cc** — confirmed by Beth 2026-08-13. NOT Itten palette. NOT Apex v1 blue. [CS: VERIFIED — CONDUCT-LEDGER 2026-08-13]
- **PROCEED-FLAGGED confidence regime** — Beth's explicit authorization to build on imperfect evidence. [CS: VERIFIED — brief frontmatter]
- **Cycle Learning Mechanic defined:** Ask → Learn (confirm-gated fetch, not just recording) → Automate. Draft is a first-class status, separate from hidden flags. [CS: VERIFIED — brief §Cycle Learning Mechanic]
- **C-06 through C-10 incorporated into this brief** — NCSC 10 Steps + Cyber Essentials confirmed, HaloPSA confirmed, uSecure confirmed, open-ticket count removed, risk framework corrected. These corrections are embedded in the brief as design decisions. See Step 3 for drift status.
- **OKR:** David's EBR prep time #2 from 1.5–2h to under 45 minutes [CS: VERIFIED — brief §OKR]
- **28 KIT parts catalogued** — 4 SHORTs (Parts 8, 13, 14, 27: all blocked on shared notebook that does not exist) [CS: VERIFIED — math-recount.md, row-counted]
- **n=1 primary source** — SRC-U-009 (Craig Fisher). Brief names this limitation explicitly. [CS: VERIFIED]

CLAIMS requiring re-verification before downstream use:
- Prep times (3h Craig / 1.5–2h David) — verify against SRC-U-009 source, not brief [CS: HIGH]
- [A]+[?] ratio: **60.0% grep-verified** (self-reported 56.4% — math-recount.md corrects this) [CS: VERIFIED — grep counts: R=39, D=3, A=36, ?=27, total=105]
- "Most clients sit at level 5" (Inforcer 1–9 scale) — verify against SRC-U-009 before quoting

CITED SOURCES (the primary material behind this brief):
- SRC-U-009 — Craig Fisher / Technica Solutions EBR interview 2026-08-07 (already on user shelf, pending formal Accept)
- FSN-82692 — FTUX flow spec (acp-core-main-3, referenced; not re-read this run)

---

**DERIVED-002 — `briefs/qbr-ebr-system-2026-08-12.ux.md`**
```yaml
id: DERIVED-002
shelf: derived
library_ref: briefs/qbr-ebr-system-2026-08-12.ux.md
type: "Session output — working system draft"
title: "QBR/EBR System UX Working Draft"
session_origin: likely local_bc53f0a6 (Service Blueprint for QBR/EBR flow)
human_in_loop: Beth Connor
date: 2026-08-12
maturity: Direction
drift: FRESH
feeds_specs: [qbr-ebr.ux.md canonical, acp-core-main-3 specs, GAP-001/GAP-002]
status: WORKING DRAFT — does NOT replace canonical acp-core-main-3/specs/_ux/qbr-ebr.ux.md
```

DECISIONS extracted:
- **GAP-001 confirmed:** No Coworker-to-Coworker orchestration — this is NONGOAL-002 per `004-ai-coworker-registry/spec.md:289-296`. [CS: VERIFIED — grep confirmed, doc states]
- **GAP-002 confirmed:** No end-client entity (`client_id`) anywhere in acp-core platform. Every row scoped by `account_id` only. [CS: VERIFIED — grep verified 2026-08-12]
- **WA-001 proposed:** Shared Observations Store (new `observation` table with `supersedes_observation_id` as cycle-memory spine)
- **WA-002 proposed:** Client as first-class entity under account
- **`defensibility` field proposed** with new 5th state `Source-Unavailable`
- **Five corrections proposed** (X-01 through X-05) to existing artifacts — UNAPPLIED to canonical spec. X-05 retracted (copy-paste is NOT the biggest cost — retracted in doc)
- **21 platform-level absences catalogued** (NOT-NAMED list)
- **9 proposed edits** to canonical `specs/_ux/qbr-ebr.ux.md` — UNAPPLIED

CLAIMS requiring re-verification:
- The 21 platform absences and 9 proposed edits are `derived` claims. They require Beth's review before touching any canonical spec.

---

**DERIVED-003 — `INSIGHTS-ACTIONS.md` (2026-08-13 session output)**
```yaml
id: DERIVED-003
shelf: derived
library_ref: INSIGHTS-ACTIONS.md
type: "Session output — action items from insights work"
session_origin: local_c1c311f1 (Insights)
human_in_loop: Beth Connor
date: 2026-08-13
```

DECISIONS extracted:
- **Preflight hook ACTIVE** in `.claude/settings.json` as SessionStart hook. [CS: VERIFIED — hook confirmed firing this session]
- **`validate_sources.py` built** — scans markdown for [R]/[D]/[A]/[?] tags and validates citations. Not yet integrated into CI or hook.
- **Pattern docs written:** `briefs/PROTOTYPE-FLEET-PATTERN.md`, `briefs/DATADUMP-AUTOMATION-PATTERN.md` — design documents for future decisions; not yet implemented.

DECISIONS STILL PENDING (as of 2026-08-13, deadline 2026-08-16):
1. Define Prototype Acceptance Rubric (30 min) → `briefs/prototype-acceptance-DRAFT.md`
2. Define Citation Contract (20 min) → `briefs/CITATION-CONTRACT.md`
3. Decide datadump automation scope — **RESOLVED 2026-08-14 in CHORES.md** (see below)

---

**DERIVED-004 — CHORES.md decision (2026-08-14)**
```yaml
id: DERIVED-004
shelf: derived
library_ref: CHORES.md (checked item, 2026-08-14)
type: "Decision record"
human_in_loop: Beth Connor
date: 2026-08-14
```

DECISION extracted:
- **Datadump automation scope confirmed:**
  1. Schedule: Friday 9am (same slot as chores runner)
  2. Mechanical items: ACP→Harness rename is the only qualifying open item
  3. Confluence write strategy: Conservative (1 page at a time); bump to Balanced after two clean runs

---

**Meeting Cost Calculator (2026-08-12 briefs cluster) — NOT catalogued on ACP shelves**
```
Status: Standalone demo concept. No ACP/Harness relevance. Tier 1 / PROCEED-FLAGGED / 100% [A]+[?].
Action: No datadump registration needed. Noted for completeness.
```

---

## STEP 3 — RELATE

### CONFLICT STATUS — Aug-12 CONFLICTs (C-06 through C-10)

All five CONFLICTs registered in Aug-12 refresh appear to be incorporated into `briefs/harness-ebr-v2-2026-08-13.brief.md` as design decisions. This means a session between Aug-12 and Aug-13 effectively resolved them in practice.

**Classification per SKILL.md derived-shelf rules:** A claim's appearance in a derived document is evidence that someone made a decision — it is NOT a formal Step 5 Accept. The five CONFLICTs carry forward as **LIKELY-RESOLVED** pending Beth's formal gate verdict on this changeset.

| # | Conflict | In Aug-12 brief (CONFLICT) | In harness-ebr-v2 (2026-08-13) | Drift |
|---|---|---|---|---|
| C-06 | Risk framework NIST CSF → NCSC 10 Steps | CONFLICT | NCSC 10 Steps + Cyber Essentials incorporated as product security standard | LIKELY-RESOLVED |
| C-07 | PSA ConnectWise → HaloPSA | CONFLICT | HaloPSA confirmed in tool stack | LIKELY-RESOLVED |
| C-08 | Awareness training KnowBe4 → uSecure | CONFLICT | uSecure confirmed in tool stack | LIKELY-RESOLVED |
| C-09 | Open-ticket count in EBR scope | CONFLICT | "Things that shouldn't be discussed in an EBR…individual tickets" — reflected in design decisions | LIKELY-RESOLVED |
| C-10 | RMM-longevity risk (N-central as durable source) | CONFLICT | Not explicitly resolved in brief; market-shelf risk flag still applicable | **STILL OPEN** |

**To formally close:** Beth's Step 5 Accept on items 2–5 from Aug-12 gate list (now confirmed as LIKELY-RESOLVED). C-10 needs its own resolution.

---

### NEW DRIFT from this run

| Artifact | Drift | Driver |
|---|---|---|
| `prototypes/qbr-draft-flow/qbr-hifi.html` | **CONFLICT → LIKELY-RESOLVED** | C-06 through C-09 incorporated in harness-ebr-v2 brief. Still needs formal Accept. |
| `acp-core-main-3/specs/_ux/qbr-ebr.ux.md` | **STALE** | 9 proposed edits in DERIVED-002 (qbr-ebr-system.ux.md) — unapplied; GAP-001/GAP-002 architectural findings |
| Any artifact assuming an end-client (`client_id`) entity | **STALE** | GAP-002: no `client_id` in platform, grep-verified |
| Any artifact assuming Coworker-to-Coworker orchestration | **STALE** | GAP-001: NONGOAL-002 confirmed in spec |
| `harness-ebr-v2` prototype deliverable | **FRESH** | Active work session, brief dated 2026-08-13 |
| `CHORES.md` datadump item | **FRESH → CLOSED** | Automation scope decided 2026-08-14 |

---

### GAME-STATE / CONDUCT-LEDGER — new entries (not spec drift, but process record)

Four new CONDUCT-LEDGER entries since Aug-12:
- 2026-08-13 (Claude Miss): Overwrote Beth's live FigJam edit at node 259:1670 [CS: VERIFIED — LEDGER]
- 2026-08-13 (Beth Catch): Approved design.md without reading it before greenlighting Session B build [CS: VERIFIED — LEDGER]
- 2026-08-14 (Claude Miss): Context discipline — critiqued wrong artifact without establishing what it was for (5th instance, prior-art class) [CS: VERIFIED — LEDGER]
- 2026-08-14 (Claude Miss): Routed work back to Beth instead of doing it under a stated deadline (repeat, same category as 2026-08-12) [CS: VERIFIED — LEDGER]

Reconciled score (GAME-STATE.md, CONDUCT-LEDGER primary): Claude 0 Catches / 22 Misses. Two categories at Headmaster's Office threshold (3+ strikes): "Didn't check prior art" (5 in ledger) and "Map means Figma diagram" (3). Amendment 3 still unresolved — criteria proposed in conversation, not yet written to CONDUCT-LEDGER.md.

---

## STEP 4 — PROPOSED CHANGESET

### ⛔ CONFLICTS still requiring Beth's formal gate verdict

**From Aug-12 — LIKELY-RESOLVED, pending formal Accept:**

1. **C-06 (NCSC):** Accept harness-ebr-v2 brief's incorporation of NCSC 10 Steps + Cyber Essentials as the product security standard for UK MSP context? Accept closes C-06; Reject reopens it.
2. **C-07 (HaloPSA):** Accept HaloPSA in place of ConnectWise in seed data and stack references?
3. **C-08 (uSecure):** Accept uSecure in place of KnowBe4?
4. **C-09 (ticket count):** Accept removal of open-ticket count from Current Climate / EBR scope?
5. **C-10 (RMM longevity):** Still open. Log RMM-longevity as a market-shelf risk against RMM-anchored offerings? [CS: MEDIUM — owner's opinion, not verified market data]

---

### NEW ITEMS — this run

**Item A — Register Apex 2.0 design system decision**
- **What:** Brand accent purple #8500cc is the confirmed design system token for all harness prototypes going forward. Replaces Itten palette and Apex v1 blue assumptions.
- **Source:** DERIVED-001 (harness-ebr-v2 brief) + CONDUCT-LEDGER 2026-08-13 entry
- **Action:** Accept → register as project-level design decision. Affects every prototype going forward.
- **Drift impact:** Any prototype still using Itten `--vermillion`/`--ultramarine` as primary brand: STALE for new Harness work (prototype design system, not Band Protocol meta-design).

**Item B — Register Cycle Learning Mechanic (Ask→Learn→Automate+Draft)**
- **What:** New interaction pattern defined in harness-ebr-v2 brief. Draft is a first-class status, not a hidden flag. Confirm-gated fetch distinguishes Learn from mere recording.
- **Source:** DERIVED-001 (harness-ebr-v2 brief §Cycle Learning Mechanic)
- **Anti-pattern:** `value_ledger/temporal/reconciliation_activity.py:32-34` writes `outcome_status='completed'` while `requires_review=True` — Draft must NOT repeat this pattern (named in brief)
- **Action:** Accept → this becomes a design constraint for all Harness EBR v2 build work.

**Item C — Register GAP-001 and GAP-002 as architectural notes**
- **What:** No Coworker-to-Coworker orchestration (NONGOAL-002); no end-client entity in data model (grep-verified). These are structural facts about acp-core, not design decisions to make.
- **Source:** DERIVED-002 (qbr-ebr-system.ux.md), grep-verified against acp-core-main-3
- **Action:** Accept → note these in any brief or context.md that might assume either capability. Do NOT attempt to resolve them — they are architectural decisions upstream of this project.

**Item D — Register WA-001 and WA-002 as proposed workarounds**
- **What:** WA-001 (Shared Observations Store) and WA-002 (Client as first-class entity) are proposed design workarounds for GAP-001/GAP-002 in the qbr-ebr working draft.
- **Source:** DERIVED-002
- **[A] tag:** These are `derived` shelf proposals, not validated design decisions. Beth's judgment required before they touch any spec.
- **Action:** Accept-as-interpretation (Beth's call) or park in `_inbox` until further research.

**Item E — Register datadump automation scope decisions**
- **What:** Schedule = Friday 9am; ACP→Harness rename is the only qualifying mechanical item; Confluence write = Conservative (1 page at a time, bump to Balanced after two clean runs).
- **Source:** DERIVED-004 (CHORES.md checked item, 2026-08-14)
- **Action:** Accept → update `refresh-datadump` skill and `weekly-datadump-refresh` scheduled task configuration.

**Item F — Register 9 proposed edits to `specs/_ux/qbr-ebr.ux.md` (carry for review)**
- **What:** DERIVED-002 proposes 9 edits to the canonical UX spec. Unapplied.
- **Source:** DERIVED-002 §Proposed Edits
- **[DERIVED shelf warning]:** These are session-generated proposals. They require Beth's review before any canonical spec is touched. Do NOT apply automatically.
- **Action:** Beth reads DERIVED-002 §Proposed Edits section and Accepts/Edits/Rejects each.

**Item G — SRC-U-009 formal registration (carry from Aug-12)**
- **What:** Craig Fisher (Technica Solutions) EBR interview, 2026-08-07. Registered in Aug-12 refresh, awaiting formal Accept.
- **Action:** Accept → register on user shelf.

**Item H — Add `scout_input/` and `briefs/` to Step 1b sweep (carry from Aug-12)**
- **What:** These local paths are currently invisible to the weekly pipeline. Two consecutive runs now demonstrate the value: the harness-ebr-v2 brief and the qbr-ebr-system doc were only found via local file sweep, not via any indexed source.
- **Action:** Accept → update `refresh-datadump` SKILL.md Step 1b to include local glob.

---

### OPEN QUESTIONS raised by this run

- **Citation contract and prototype acceptance rubric** — still pending, deadline CHORES.md says 2026-08-16. Two of three Friday decisions from Insights report remain unmade.
- **`validate_sources.py`** — built but not integrated. Where does it gate? CI? Pre-commit hook? Stand-alone?
- **Math-recount stat verification** — three load-bearing stats (3h/1.5–2h prep time, 80%→50% David time) listed in math-recount.md as requiring grep-verification against SRC-U-009 source before any downstream artifact quotes them. This run did not perform that grep (SRC-U-009 transcript not re-read). Flag before Harness EBR v2 prototype ships.
- **KIT SHORTs resolution path** — 4 parts (8, 13, 14, 27) blocked on a shared notebook that does not exist. What mechanism resolves these for EBR #2/#3 continuity? This is the product requirement Craig named ("working off multiple spreadsheets").
- **Cohort/peer-group scoping** — acp-core has no cohort/peer-group tenant concept anywhere (harness-ebr-v2 brief raises this). Beth's call.
- **qbr-ebr-system working draft vs. canonical spec** — DERIVED-002 explicitly says it does not replace `specs/_ux/qbr-ebr.ux.md`. Someone needs to decide which proposed edits (if any) graduate to the canonical spec, and through what mechanism.
- **C-10 RMM-longevity** — no resolution from this run. Still needs a market-shelf entry or explicit rejection.
- **B7 identity match (Craig/Vanessa)** — still Beth's call from Aug-12.
- **Ten Types of Innovation gaps** — Channel, Customer Engagement, Network, Structure — all need Beth's judgment call before design against them (CHORES.md, open).
- **Amendment 3 (Headmaster's Office)** — criteria proposed in conversation, not yet written to CONDUCT-LEDGER.md. Two categories already at threshold: "Didn't check prior art" and "Map means Figma diagram."
- **`library/` directory** — still does not exist. Manifest.yml still has nowhere to live. This is now the third consecutive run flagging this gap.

---

## STEP 4c — RISK REGISTER CHECK

**BLOCKED. THIS RUN IS INCOMPLETE.**

Confluence page 62176526400 (North Star Vision Risk Register) unreachable — Atlassian connector HTTP 302 at session start.

Per SKILL.md hard rule (emphasis mine): *"The North Star risk register gets checked every run, full stop. 'Nothing in this round touched the portfolio-level bets' is an acceptable outcome; not checking is not. **If a run skips 4c, it isn't a completed run.**"*

New material this run (harness-ebr-v2 brief, GAP-001/GAP-002 findings) very likely touches North Star rows — particularly the assumptions around EBR continuity (Craig's "not getting economies of scale" finding) and the platform architecture assumptions. These should be checked before any spec changes land.

**Required action:** Beth runs this step in an authenticated session. All Step 5 gate items below are valid and ready for review regardless; but this run cannot be formally closed until 4c is logged to the North Star page.

---

## GATE — Step 5 is Beth's

**Accept · Edit · Reject**, per item. Carry-forward from Aug-12 first; new items from this run below.

### Carry-forward from Aug-12 (still open)

1. ✅/✏️/❌ **Register SRC-U-009 on the user shelf** (Craig Fisher interview, 2026-08-07)
2. ✅/✏️/❌ **C-06 — NCSC 10 Steps + Cyber Essentials** — incorporated in harness-ebr-v2; formal Accept closes it
3. ✅/✏️/❌ **C-07 / C-08 — HaloPSA, uSecure** — incorporated in brief; formal Accept closes them
4. ✅/✏️/❌ **C-09 — remove open-ticket count from Current Climate**
5. ✅/✏️/❌ **C-10 — log RMM-longevity as market-shelf risk**
6. ✅/✏️/❌ **Reframe Offering A around continuity (EBR #2/#3)** rather than first-draft generation
7. ✅/✏️/❌ **Close B7** — Craig/Vanessa identity match
8. ✅/✏️/❌ **Add `scout_input/` + `briefs/` to Step 1b sweep** (structural fix, 3rd flag)

### New from this run

9. ✅/✏️/❌ **Item A — Apex 2.0, purple #8500cc** as confirmed design system for Harness prototypes
10. ✅/✏️/❌ **Item B — Cycle Learning Mechanic** (Ask→Learn→Automate+Draft) as design constraint
11. ✅/✏️/❌ **Item C — GAP-001/GAP-002** as architectural notes against any brief assuming either capability
12. ✅/✏️/❌ **Item D — WA-001/WA-002** as proposed workarounds (Accept-as-interpretation or park)
13. ✅/✏️/❌ **Item E — Datadump automation scope** — Schedule Friday 9am, ACP→Harness rename only mechanical item, Conservative Confluence writes
14. ✅/✏️/❌ **Item F — 9 proposed edits to `specs/_ux/qbr-ebr.ux.md`** — Accept/Edit/Reject each in DERIVED-002
15. ✅/✏️/❌ **Item H — Add local file glob** to refresh sweep scope (3rd request, now proven necessary)

### Blocked — requires authenticated session

16. ⛔ **Step 4c — North Star Risk Register** — cannot close this run without it. Run in authenticated session.
17. ⛔ **Post this changeset to Confluence** (ProdUX space, "Datadump Refresh — 2026-08-14") — Atlassian auth down.

---

## STEP 6 — SYNTHESIS

[0% — Beth]

---

## SCOPE & ETHICS NOTE

Participant data used per consented research purpose only (§10b · IRB standard).

**SRC-U-009 names:** Craig Fisher (owner/partner, Technica Solutions) and David (technical role) are retained in this refresh document because the existing datadump convention retains them (consistent with datadump-refresh-2026-08-12.md and datadump-manual-human-steps.md). Named end-clients discussed in the call remain excluded from this changeset and every downstream artifact. Per data minimisation: transcript stays in `scout_input/` as source of record; extraction is purpose-limited.

**Anonymisation standing rule (2026-07-31):** All real data from N-able MCP pulls, Jira/Confluence, and transcripts is anonymised before entering any artifact. M365 connector being dark means no live N-able data touched this run.

**GDPR / Purpose limitation:** All `derived` shelf items above are registered for ACP/Harness research purposes only. No repurposing across projects without Beth's explicit decision.

---

## RUN METADATA

| Field | Value |
|---|---|
| Run completed | 2026-08-14 |
| Steps completed | 1 (partial), 1b (partial), 2, 3, 4, 4b |
| Steps blocked | 0 (dismissed set), 4c (North Star), Confluence post |
| Teams Brain Dump | DARK — 4th consecutive |
| Atlassian | DOWN (HTTP 302) |
| M365 connector | DARK (connector invalidated) |
| New user-shelf sources | 0 |
| New derived-shelf items | 4 (DERIVED-001 through DERIVED-004) |
| CONFLICTs new this run | 0 |
| CONFLICTs likely-resolved (pending formal Accept) | 4 (C-06, C-07, C-08, C-09) |
| CONFLICTs still open | 1 (C-10) |
| Carry-forward gate items | 8 (from Aug-12) |
| New gate items | 7 (Items A–H, excl. G which is carry-forward) |
| Run complete? | **NO — Step 4c blocked** |
