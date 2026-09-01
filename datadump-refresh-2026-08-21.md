# Datadump Refresh — 2026-08-21

**Sweep window:** 2026-08-14 → 2026-08-21 · **Brain Dump backfill window:** 2026-08-04 → 2026-08-21
**Run type:** Scheduled weekly (`weekly-datadump-refresh`), automated Steps 0–4c
**Pipeline stops here.** Step 5 (Accept / Edit / Reject / Accept-as-interpretation) is Beth's. Step 6 does not run without approval.

**Tier: FEAST** (agentic, multi-source survey + two Confluence writes).

---

## ✅ CONNECTIVITY — FIRST FULL-CONNECTIVITY RUN IN FIVE

| System | Status | Detail |
|---|---|---|
| Atlassian / Confluence | **LIVE** | Preflight hook reported HTTP/2 302, but the MCP server authenticated fine. Steps 0 and 4c both ran. |
| M365 / Teams | **LIVE** | `get_me` succeeded. **First live Brain Dump read since 2026-08-04** — four consecutive dark runs (Aug 10, 12, 14, + one ad-hoc) now backfilled. |
| Graph rate limit | **PARTIAL** | First four `chat_message_search` calls returned HTTP 429 (0–7 of 48 chats scanned). Recovered on retry without date filters. Coverage caveat logged in Step 1. |
| SharePoint / OneDrive | **LIVE** | 3 hits in window, no net-new evidence. |
| Outlook | **LIVE** | Zero hits for ACP/Harness vocabulary in window. |
| Claude Code sessions | **LIVE** | 30 sessions listed, 14 in window, 4 vocabulary queries run. |
| M365 Copilot chat history | **UNREACHABLE BY DESIGN** | Not exposed via MCP. Outputs (docs/recaps/emails/Teams) were swept. Logged as a standing gap — not coverage. |
| Live `acp-core` / `acp-module` repos | **NOT REACHED** | GitHub preflight blank; no MCP path attempted. See C-14 — this matters this run. |

**Per the honesty rule:** nothing below is fabricated to fill a gap. Where a claim is unverified it is tagged `[?]`.

---

## ⚠️ INFRASTRUCTURE NOTE — PERSISTENT SINCE AUG-12

`library/` does not exist; `manifest.yml` has nowhere to live. All source registrations and drift flags below are **asserted in this document**, not mechanically derived from a manifest. Third consecutive run flagging this.

---

# 🔴 CONFLICTS — READ THESE FIRST

Four new. Three escalate (per the escalation rule: a CONFLICT, or a STALE source feeding an active/in-build spec).

## C-11 · The company has committed to the one option Idea Chess rejected outright — ESCALATE

**Source:** [Harness — Vertesia to Market: Nov 1 Execution Plan](https://n-able.atlassian.net/wiki/spaces/AI/pages/62302388241) — Confluence 62302388241, space AI, Nicole Reineke, last modified 2026-08-19. Beth is `@`-mentioned as owner/lead on three lines. `[CS: VERIFIED — primary, read this run]`

The plan's shape, verbatim: *"Vertesia console, N-able-branded, with a 'Powered by Vertesia' badge, 5 coworker runbooks, and 8 integrations built on top."*

`briefs/idea-chess-qbr-round3-2026-08-20.md` (generated 2026-08-20 — **one day after** this page was last modified) scored the structurally identical option and did not defer it:

> **N3 · NARMADA PARTNER/SUBSTRATE — falls at ADOPT (catastrophic 2nd fall at Defend).** … *"Fails Defend hardest: N-able as data feed + Narmada as surface = margin + C2 relationship accrue to Narmada; N-able becomes commodity pipe, cedes DEC-006 for a partner that doesn't solve the customer."*
> Company verdict: *"NARMADA — compete-only + free design reference; do NOT partner as substrate."* … *"N3 — rejected, not deferred: cedes moat + margin."*

**The honest limits of this conflict — both directions:**
- **Vertesia ≠ Narmada.** Round 3 scored Narmada specifically (single-source N-central, no judgment layer). Vertesia is a different vendor with a different capability profile. The *entity* verdict does not transfer.
- **The structural verdict does transfer, and it is the load-bearing half.** "Partner supplies the surface, N-able supplies the data and the runbooks" is the exact architecture N3 fell on — margin and the C2 relationship accruing to the partner. Bet A's whole moat argument (Round 2: *"stake the moat on C2 … NOT on data freshness"*) assumes N-able owns the surface where that judgment accumulates.
- Round 3 also scored **N4 · NARMADA COMPETE/BORROW** as a legitimate *phase-2* survivor. If Vertesia is read as the surface N-able borrows-then-owns rather than cedes, the conflict softens. **That reading is a decision, not a finding.**

**This is a decision-uncertainty CONFLICT, not an evidence gap.** Per CLAUDE.md §9b that makes it `BLOCKED`, not `PROCEED-FLAGGED`. Two live artifacts point opposite directions and only Beth + Nicole can say which governs.

**Routes to:** Beth + Nicole (+ Meaghan per `project_acp_decision_owners`).

---

## C-12 · The Nov 2 paid-SKU commitment lands before the phased plan's monetization gate — ESCALATE

**Sources:** Vertesia plan (above) vs. `briefs/ebr-coworker-phased-plan-2026-08-20.md`.

The Vertesia commitment, verbatim: *"3 MSPs running Harness daily, with a launch of a real paid SKU, by **Mon 2 Nov 2026**"* — with a four-criterion bar: **Paid** (order against a live BizApps SKU, invoice generated, ×3), **Running** (≥1 coworker on a schedule against production tenants), **MSP-run** (MSP's own technicians approve; audit-log actor ≠ N-able), **Reference-able** (named, quotable, signed reference agreement).

The phased plan puts monetization at **Phase 4**, explicitly gated:

> **Phase 4 — MONETIZE (prove Viability).** *"Pricing test with trial users who now depend on it… This is Beth's 'proof it's worth monetizing' gate, made literal."*
> And P1–P3 each carry a proof-gate; P2 states **"No monetization yet."**

At the plan's own stated cadence (*"a step-up in a month per phase"*), 2 Nov 2026 falls around Phase 2–3. **The commitment date arrives one to two gates early.** The phased plan's win-definition — *"a longer build is earned by proof it's worth monetizing"* — and a fixed dated SKU launch are not compatible as written.

Compounding: the plan's **hard dependency `[?]`** is the coworker runtime (see C-14), and its Phase-3 legal gate (Q1) is the same unowned study that has sat open since July.

**Not necessarily fatal.** The Vertesia route may be precisely the mechanism that buys Phase 4 early — three paying design partners *is* a willingness-to-pay test. But the phased plan does not say that, and nobody has reconciled them.

**Routes to:** Beth + Nicole + Meaghan. **Cheapest resolution:** one line in the phased plan naming whether Nov 2 replaces the P4 gate or runs beside it.

---

## C-13 · A stat this corpus killed is circulating again in a live planning document — ESCALATE

The Vertesia plan's demand column for use case #1 (QBR / Business Report) reads: *"One interviewee already paying **$300+/user/mo to ScalePad**."*

The datadump index page records this as **already corrected**, in the 2026-07-28 QBR/EBR Practice register:

> *"Three corpus corrections: … **'ScalePad $300+/user' doesn't match any published pricing**; 'ScalePad discontinuing' not found."*

`[CS: VERIFIED]` — both strings read from primary sources this run (index page 62175674556; execution plan 62302388241).

**Why this is the most quietly important item in the changeset.** This is the 47%-rule failure mode with a live consequence: a figure the corpus checked and rejected is now sitting in the demand justification for the anchor use case of a dated, resourced, revenue-committed plan. Nobody re-introduced it dishonestly — the correction simply never propagated from the research register to the planning surface. That propagation gap is the finding, not the number.

**Two separable things, do not merge them:**
- **The stat** — killed 2026-07-28, should not be quoted. Needs removing or re-sourcing.
- **The North Star row "ScalePad displacement window is live"** (Confirmed, High ~90%, sourced to Guidepoint MSP-A) — *not* dependent on the pricing figure. That row stands. See Step 4c row 11.

**Routes to:** Beth (owns the register) → Nicole (owns the page).

---

## C-14 · The runtime "0/40" figure is verified against a static snapshot the live repo has moved past

`briefs/ebr-coworker-phased-plan-2026-08-20.md` and `idea-chess-qbr-round3-2026-08-20.md` both rest on: *"runtime (004) = 0/40"* — the phased plan calls it the **hard dependency `[?]`** determining whether Phase 1 is a live coworker or a prototype.

**Grep-verified this run (47% rule):** `acp-core-main-3/specs/004-ai-coworker-registry/tasks.md` → **40 unchecked, 0 checked.** The number is accurate. `[CS: VERIFIED]`

**But `acp-core-main-3/` is a static download, not a live clone** — its git history is Bethproto's, not the repo's. And there is now direct evidence the live repo has moved:

| Evidence | Source | Date |
|---|---|---|
| *"How to win the week: **Completed EBR Co-worker on Dev environment**"* | Christopher Dunlop, Teams standup channel | 2026-08-17 |
| `ACP-8: Initial Infrastructure` — PR `acp-core#26` peer review | Sidhant Hanwate, ACP dev channel | 2026-08-20 |
| `ACP-43 / ACP-44: Execution Monitoring` — PRs `acp-core#36`, `acp-module#31` | Chris Barber; David Woakes *"OK approved"* | 2026-08-18 → 20 |
| `ACP-48: Create/Convert File Tool` — PR `acp-core#39` | Sidhant Hanwate | 2026-08-20 → 21 |
| Test files named in review: `test_deck_composer.py`, `test_pdf_composer.py` | Jude Scally, ACP dev channel | 2026-08-18 |

**So:** "0/40" is a true statement about a stale copy. Whether the live runtime is still 0/40 is `[?]` — and it is the single number the month-one Phase 1 decision turns on.

**Two sub-findings worth separating:**
- **The refresh has been re-hashing a frozen snapshot.** Every drift flag this pipeline has raised against `acp-core-main-3` inherits this. Structural, not one-off.
- **`test_deck_composer.py` / `test_pdf_composer.py` exist in the live build.** Deck/PDF composition is being built. `mvp-thread-banked` row 14 says explicitly: *"Do NOT race deck-gen"* — because *"'deck in seconds' makes the corpus's top failure mode (show output, skip translation) easier to commit."* Engineering may be building the thing the research says not to lead with. `[?]` — filenames are not scope; verify before treating as a finding.

**Cheapest resolution:** one look at live `nable-fusion/acp-core` + `acp-module` before the Phase-1 call. **Routes to:** Beth → Dunlop/Jude.

### Carry-forward
- **C-10 — RMM-longevity as market-shelf risk** — still open, unaccepted since Aug-12.
- **C-06 / C-07 / C-08 / C-09** — likely-resolved, still awaiting formal Accept from the Aug-14 changeset.

---

# STEP 0 — DISMISSED SET

Loaded from [ACP Research Datadump (living)](https://n-able.atlassian.net/wiki/spaces/AI/pages/62175674556) (62175674556, last modified 2026-08-04).

**3 Not-relevant sources skipped:**
1. ACP Partner Diligence Tracking (62013669455) — *modified 2026-08-12, in window, skipped per Relevance. Content not cataloged.*
2. ACP Internal Build Plan (GPM 62091723297)
3. ACP Partner Execution Plan (GPM 62091788505)

**Step-0 exception invoked once.** The Vertesia execution plan (62302388241) is PM-timeline-shaped — the same genre as all three dismissed pages. It is **not** in the dismissed set (new page, space AI, Nicole-authored, Beth named as deliverable owner), and it produces content that **CONFLICTS with two active briefs**. Surfaced per the rule rather than filtered by genre resemblance. If Beth's read is that this page belongs in the dismissed set, C-11/C-12/C-13 still need answering first — the conflicts don't go away with the source.

---

# STEP 1 — GATHER

## Brain Dump (Teams) — live, backfilled

Channel `19:OlTtVVyAz8wISWXG2Jfi-9xSIAqBe4k-No9OAmHb1bM1@thread.tacv2`. Last successful sweep was **2026-08-04**; Aug 10 / 12 / 14 all ran dark. This run covers **2026-08-04 → 2026-08-21**.

| ID | Item | Date | Contributor | Shelf | Status |
|---|---|---|---|---|---|
| BD-003 | *"Their EBR template (anonymized, so we can use/see it freely.)"* | 2026-08-07 | Beth Connor | user | **Already registered** under SRC-U-009 (ad-hoc promotion 2026-08-07). Not new. |
| BD-004 | *"EBR/QBR — The First Ugly UX/Service Design Concept"* + experience-map FigJam | 2026-08-10 | Beth Connor | derived | Beth posting her own work. Already in corpus as the experience map. Not new evidence. |
| BD-005 | **["The Frictions That Make AI Forecasting Hard"](https://www.mixtureofexperts.co/p/the-frictions-that-make-ai-forecasting)** — Mixture of Experts, Annelies Gamble, 2026-08-11 | 2026-08-12 | Beth Connor (+ `@William Mincher`) | **market — NEW** | Register. See below. |
| BD-006 | **"Inforcer and Microsoft?"** thread | 2026-08-19 → 20 | Beth Connor + Christopher Dunlop | **market — NEW** | Register. Load-bearing on Q1. See below. |

### BD-005 — the forecasting-frictions article `[CS: HIGH — primary, full text read]`

Beth's framing, verbatim: *"Adding here because we probably need to think about things like this for QBR/EBR when we are trying to help people plan for the future."* Mincher's noted favourite point: *"Having data doesn't mean we can always act upon it."*

Central claim: forecasting fails when *"people assume having access to information is the same as having the ability to act on it."* The radiology case — Hinton's 2016 "stop training radiologists," against Mayo Clinic radiology headcount reportedly **+55% since 2016** — because image interpretation was one task inside a job that also carries clinical context, communication, and accountability. Closing line: *"Bottlenecks become more important when everything else gets automated."*

**Why it earns a shelf rather than a bookmark.** This is an outside-domain articulation of a finding this corpus reached independently and repeatedly:
- `mvp-thread-banked` row 14 — the job-shop/production-line split: deck-gen automates the production-line half; *"the value rows — Business Priorities, Tech Budget, Referrals — are brains-work/job-shop."*
- The VP council's **reason-blind** test — telemetry gives the signal, not the reason.
- The Reddit thread's `luodaint`: *"The churned customers aren't telling you anything during a QBR. They told you six weeks ago through a support ticket wrongly marked resolved."*

Same structure four times from four directions: **automating the data step does not move the bottleneck, because the bottleneck is judgment.** That is Bet A's C2 thesis stated as a general law. `[WOBBLY]` — Substack commentary, single author, no MSP content. It is *corroborating framing*, not MSP evidence, and must not be cited as the latter.

### BD-006 — Inforcer / Microsoft `[CS: VERIFIED — primary, both messages read]`

Beth, 2026-08-19: *"#IntuneForMSPs | inforcer and Microsoft Partnership — Hmm. Does Inforcer's partnership with Microsoft help us in any way? Hmm."*
Dunlop, 2026-08-20: **"Interesting, doubt it unless this somehow makes them release MCP access to Inforcer."**

**This is the sharpest thing in the run on Q1 and the Narada question**, from the person managing the build:
- `idea-chess-qbr-round3` scored **N1 · NARADA LEAPFROG** (UI-agents scraping competitors' tools) as *"falls at ADOPT… UI-scraping competitors' tools (Enforcer/Usecure/Roost) into a client-facing artifact = the same Q1 cross-vendor data-rights kill."* Dunlop names the alternative that would retire the risk instead of relocating it: **a sanctioned MCP endpoint on the third-party tool.** That reframes the Phase-3 data-acquisition fork from *scrape vs. build connectors* to *scrape vs. build connectors vs. wait for vendor MCP*.
- Connects to `scout_input/11-intune-vs-rmm-market-dynamics.md`, `12-causal-link-check-nabl-drop-vs-intune.md`, `13-nable-tap-partnership-landscape.md`.
- **Spelling divergence to resolve, not smooth over:** the round-3 brief writes **"Enforcer"**; Teams and the vendor write **"Inforcer"**. Almost certainly the same company. Flagged rather than silently corrected — Beth's call. `[?]`

**Rate-limit caveat, stated plainly:** the four date-filtered searches were throttled to 0–7 of 48 chats before recovery. The successful undated searches are relevance-ranked, not exhaustive. **Brain Dump coverage for this window is good but not provably complete.** Silence is not coverage.

---

# STEP 1b — AI WORKBENCH SWEEP

## Scope, logged explicitly

**Searched:** `list_sessions` (30 returned, 14 in window) + `search_session_transcripts` × 4 queries — `EBR`, `Value Ledger`, `NONGOAL`, `vCISO`. Teams beyond Brain Dump (2 channels + meeting chats + notes). SharePoint (`EBR`, in window). Outlook (`EBR QBR coworker Harness`, in window). Local file glob across `briefs/`, `scout_input/`, `prototypes/`, repo root.

**Not reached:** M365 Copilot chat history (no MCP path — standing gap, by design). Live `acp-core`/`acp-module` repos. 4 date-filtered Teams searches lost to HTTP 429.

**Everything below is `derived`** — reasoning about the evidence, not evidence. Per the skill: a `derived` item **cannot satisfy the Step-4b SUPPORTS test**, and a claim originating in a session **cannot be promoted past `[A]`** on session evidence alone.

## Sessions in window

| Session | Title | Date | Harvest |
|---|---|---|---|
| `local_aecf9540` | MVP brief structure and open threads | 2026-08-21 | **DERIVED-005.** Row 47 capstone-vs-NONGOAL-002 restated as still-open in Beth's own words. Named build facts: `INV-PROD-005` requires every run to write a Value Ledger entry, *"but it renders $0 · no `client_id` entity · no auth yet."* Use-case scoring table incl. *"Security … vCISO tripled YoY `[WOBBLY]`."* |
| `local_58240885` | Abductive coding | 2026-08-20 | **DERIVED-006.** *"Your key agent is the thing v1 said it wouldn't build"* (row 47, NONGOAL-002). TAM bands: max-TAM ≈ **$250M–$4.3B+/yr**, *"both bands dominated by two `[CS: UNKNOWN]`"* — self-flagged, do not quote as sizing. |
| `local_166bf191` | Code rows | 2026-08-20 | **DERIVED-007.** *"EU AI Act enforceable 2026-08-02 `[CS: HIGH]`; Value Ledger schema only 'accidentally AI-Act-shaped'; compliance owner across ACP is `<TBD>`."* An unowned compliance surface on a live enforcement date. |
| `local_910596e8` | Code row | 2026-08-19 | **DERIVED-008.** A real strategic fork in Beth's coding: **BUSINESS-led** (QBR hub drives the frame; ops + security feed it) vs. **SECURITY-led** (vCISO bundle is the commercial anchor; QBR narrates the security story). Bears directly on VP-3 · Business Resilience. |
| `local_72dfc6ce` | Detailed technical process map | 2026-08-18 | 26-step service blueprint confirmed as the most granular process map in corpus. Not new. |
| `local_eba82f0a` | Game theory / partial knowledge | 2026-08-17 | Origin of MOD-002 (unknown-is-terminal) landing in CLAUDE.md §4 rather than a context.md. **DECISION, already propagated.** |
| `local_8f4351a3` · `local_efe4b93e` | Delta-review EBR · Harness EBR hi-fi v2 | 2026-08-17 | Prototype builds; outputs captured as files (below). |
| `local_37354a83` | Lynn's billing n-zo prototype | 2026-08-20 | **OUT OF PURPOSE** — see `_inbox`. |
| `local_74291f60` · `local_6f9ef3d3` | Friday chores | 2026-08-20/21 | Runner sessions; output = `briefs/insights-report-2026-08-21.md`. |
| `local_166bf191`, `local_836d3b03`, `local_3cc06ec7` | Code rows / demerits / game share | various | Game + admin. Out of scope, not silently implied as covered. |

**Dedup-by-claim applied.** `NONGOAL-002 vs. the capstone thesis` recurs across `local_aecf9540`, `local_6f9ef3d3`, `local_58240885`, `local_eba82f0a` and `local_394f4d93`. That is **one claim with low independence**, not five corroborating sources — model output is correlated by construction. Registered once, as DERIVED-005.

## Local file sweep — 44 new files

`find briefs scout_input prototypes . -newer datadump-refresh-2026-08-14.md` → 44 files. The primary yield this run.

### 🔴 The four sources that flagged *themselves* for this register

Each carries an explicit `## Flagged for datadump register` block naming this refresh. **All four are `market` shelf, all four are `[DOMAIN: SaaS/CS, NOT MSP]`** — the acronym-collision caveat (corpus rows 266/267) applies to every one.

| ID | Source | Date | Confidence |
|---|---|---|---|
| **SRC-M-004** | [Reddit r/CustomerSuccess — *"Stopped running QBRs and our renewals went up"*](https://www.reddit.com/r/CustomerSuccess/comments/1ta189g/stopped_running_qbrs_and_our_renewals_went_up/) | 2026-08-20 | `[CS: LOW as fact — self-reported, no A/B, n=1 company]` · `[CS: HIGH as sentiment across ~40 comments]` |
| **SRC-M-005** | [Perspective AI — *"QBR Software 2026: 8 Platforms Compared"*](https://getperspective.ai/blog/qbr-software-2026-8-platforms-compared-and-the-input-theyre-missing) | 2026-08-20 | `[CS: LOW]` on the comparison (vendor ranks itself #1); `[CS: MEDIUM]` on the gap thesis |
| **SRC-M-006** | [Alex Raymond — *"QBR as a TEST"*](https://www.linkedin.com/posts/afraymond_a-qbr-can-be-a-lot-of-things-a-check-the-box-activity-7472630318265454592-LYgv/) | 2026-08-20 | `[CS: MEDIUM]` on the reframe; **`[CS: LOW]` on 95% GRR / 120% NRR — do not quote** |
| **SRC-M-007** | [Mural — *"QBR Guide for Sales Managers"*](https://www.mural.co/blog/qbr-guide-for-sales-managers) | 2026-08-20 | `[CS: LOW]` — generic content marketing |

**SRC-M-004 is the most consequential new source in the run, and it cuts both ways.** Its own dossier says so:

> **Warning:** *"strongest evidence yet for the Gate 1 crux — clients don't value the QBR-as-status-ritual; renewal ≠ QBR quality. If we build a 'better QBR deck,' we're building better theater everyone's abandoning."*
> **Validation:** *"the thread independently describes the RIGHT product as signal-consolidation + continuity/delta ('what changed in 30 days') + customer-DRIVEN cadence"* — `bobiq_ai`'s *"living per-account record: JTBD + commitments + last-changed, append every call"* is **the C2 runbook, verbatim.**
> **The split that saves the bet:** OP — *"**QBR = 'here's what we did last quarter' (mostly no value). EBR = 'here's where we're going together' (real value). The thing we got wrong was using the QBR slot to do EBR work.**"*

That QBR/EBR split is now independently stated by a fourth voice, after Vanessa, Stefanie Hammond (rows 28/154) and Craig (row 281). It lands on the side N-able's vocabulary already moved to. **Vendor-plant comments flagged in the dossier** (`bobiq_ai`, `LatterAd2130`/Email Meter, Stealth Agents) — read as sentiment, never as evidence.

**SRC-M-005's grounding flag is the honest half and must survive to Beth:** the missing input Perspective names (capture the client's own account of value pre-meeting) is **simultaneously prior art** (a funded vendor ships it) **and off-trajectory for N-able** (needs a client-facing conversational channel; closest corpus hit is the unbuilt SMS gap, row 222). *"This is exactly the invention-risk to own as new, not smuggle in as grounded."*

### New market-shelf sources — competitor & buying-committee clusters

| ID | Source | Shelf | Note |
|---|---|---|---|
| **SRC-M-008** | `scout_input/01-gradient-msp.md` | market | **Correction to a brief's framing:** "cross-vendor normalization" is documented only as *billing/service-usage reconciliation*, not general data-model normalization. Funding sources disagree ~20% ($8.26M vs $10.2M) — *"do not treat $8M as settled."* Cove integration `[CS: VERIFIED]` live. |
| **SRC-M-009** | `scout_input/02-liongard.md` | market | **Direction reversed:** *"Liongard **acquired** DarkLight, not the other way around"* `[CS: VERIFIED]` — the brief had it backwards. And Liongard has **repositioned from IT-documentation/normalization to Attack Surface Management** (June 2025) — *"a meaningful drift from what the brief seems to assume the company still is."* |
| **SRC-M-010** | `scout_input/03-vciotoolbox.md` | market | Cleanest of the four. TAP partner named in N-able's own Dec 2024 press release. Integrates **N-central only**, asset data for warranty/refresh. Funding `[CS: UNKNOWN]` — *"not found ≠ no funding."* |
| **SRC-M-011** | `scout_input/04-cloudradial.md` | market | **Negative finding:** CloudRadial markets at N-able's base, but N-able's TAP page and CloudRadial's own integrations directory both omit the other. *"Public evidence for a real, N-able-side-acknowledged partnership is thin."* |
| **SRC-M-012** | `scout_input/14-qbr-replacement-ritual-scan.md` | market | See below — the most methodologically valuable of the set. |
| **SRC-M-013** | Buying-committee cluster: `05-kaseya-2026`, `06-comptia`, `07-msp-vendor-buying-committee`, `08-b2b-buyer-role`, `09-gap-summary` | market | See below. |
| **SRC-M-014** | `10-nabl-stock-drop-q2-2026`, `11-intune-vs-rmm`, `12-causal-link-check`, `13-nable-tap-partnership-landscape` | market | N-able market context; `13` is the build-vs-buy input for normalization. Ties to BD-006. |
| **SRC-M-015** | [ACP & AI Coworker Vendor Research — Summer Internship Handoff](https://n-able.atlassian.net/wiki/spaces/FSN/pages/62272799086) (62272799086, space FSN, 2026-08-13) | market | **NEW, not yet ingested.** Vendor/competitive analysis + MCP pricing landscape + partner diligence. Directly adjacent to SRC-M-008…011. **Registered on title/summary only — content not read this run.** `[?]` — flagged as the highest-value unread source in the register. |

**SRC-M-012 — the finding is the absence.** *"There is abundant 'QBRs are broken/dying' commentary but very little that names a stabilized, adopted replacement ritual."* Concretely: Amazon-style narrative-memo format applied to **external, client-facing** reviews → *"**No source found.** Flag this as a real negative finding, not a search gap."* And the two vendor bets are structurally incompatible — Cast.app kills the meeting ("AIBR", one vendor's coinage, no second-source usage); Scopable keeps the meeting and kills the prep. The scan's own read: *"If Beth is designing the always-on QBR replacement, she may be **naming a category that does not yet have settled form** rather than adopting an existing one. That itself is a finding."* `[WOBBLY]` applies to the whole thread — every source is a vendor or vendor-adjacent blog; **no analyst firm, trade press, or academic source** was found.

**SRC-M-013 — a kill-criterion assumption is unsupported on both sides.** Beth pushed back on an internal brief's assumption that the technical user and the economic buyer are usually different people. The scout's verdict:

> *"**No source — vendor-sponsored, trade-press, or independent — asks the specific question.**"* … *"the internal brief's kill-criterion assumption ('these are usually different people') is stated with more confidence than any available data supports. The counter-claim Beth is making … is **also** not supported by hard data. Neither side of this argument currently has a number. The honest move is to name the assumption as untested on both sides, not to resolve it with a fabricated stat in either direction."*

Supporting structure, not proof: Kaseya 2026 (`n=1,061`, fielded Nov 2025) gives **31% of MSPs ≤10 employees** `[CS: VERIFIED, p.32 Fig.25]` and a **43% executive / 57% "technician"** respondent split `[CS: VERIFIED, p.33 Fig.27]` — but the dossier flags Kaseya's own taxonomy as self-undermining: *"'Technicians' bundles IT managers, project managers, sysadmins **and marketing/sales**… Kaseya's own instrument cannot distinguish 'the person who racks a switch' from 'the person who owns a P&L.'"* And the 43/57 split is a **respondent demographic, not purchasing authority** — `[CS: LOW if used as a buying-decision proxy]`. This is a model exemplar of MOD-002 working: the answer is "unknown," delivered as terminal.

### Derived-shelf items — new briefs & testimony

| ID | File | Note |
|---|---|---|
| **DERIVED-009** | `briefs/idea-chess-qbr-round2-2026-08-20.md` | Five strategic shapes. **A survives** (med-high, conditional on C2); B deferred-survivor; C/D fall at Build; **E falls at Genesis** (NONGOAL-002). Four contradictions routed, not resolved. Synthesis `[0% Claude]`. |
| **DERIVED-010** | `briefs/idea-chess-qbr-round3-2026-08-20.md` | Narada/Narmada. **Ship N2** month-one. N3 rejected → **C-11**. Reports `[A]` bands, not invented percentages; separates `[CS: UNKNOWN]` from `[A]` explicitly. |
| **DERIVED-011** | `briefs/ebr-coworker-phased-plan-2026-08-20.md` | Five proof-gated phases + four design tenets from evidence → **C-12**. |
| **DERIVED-012** | `briefs/mvp-thread-banked-2026-08-18.md` | Status `BANKED`. Carries an `## OPEN — not connected yet` section in Beth's own words (rows 47, 50). |
| **DERIVED-013** | `prototypes/ebr-coworker-options/vp-council-testimony.md` + `idea-chess-survival-testimony.md` | Two independent passes on five value props. **Both land on VP-3 · Business Resilience as headline.** Both name VP-2 as do-not-make; they **diverge on why** (council: worst; survival read: *"right for the LABEL, wrong for the CAPABILITY"* — relabel, don't discard). Divergence preserved. |
| **DERIVED-014** | `briefs/insights-report-2026-08-21.md` | Friday-runner report. Grep-verified counts. Five named decisions for Beth. |
| **DERIVED-015** | `briefs/required-mods-log.md` | MOD-001, MOD-002 — both `PENDING`, landed in CLAUDE.md, **not propagated** to `specs/_ux/acp-ux.md` or the speckit constitution. Paste-ready text sitting idle. |
| **DERIVED-016** | `prototypes/qbr-draft-flow/critic-pass-delta-review.md` | 6-dimension scorecard, 9-item punch list. Punch #2 explicitly *"flagged to Beth, not silently 'fixed'"*. |
| **DERIVED-017** | `prototypes/ebr-big-map/…2026-08-18.html` + FigJam board (posted to Teams 2026-08-18) | Current-state vs. Harness map. |

**Cross-check against DERIVED-014, honestly:** the insights report's count of **402 total / 47 coded / 355 uncoded** is grep-verified in that document; I did **not** independently re-verify it this run. Its finding that CHORES.md prose says "352 remaining" against a script count of 355 is exactly the C-13 failure mode in miniature — *"a number typed into prose, then diverging from its source with no mechanism to notice."*

## Teams beyond Brain Dump

- **Dev channel (`19:ec0f9301…`)** — sustained PR review traffic 08-18 → 08-21: ACP-8, ACP-43, ACP-44, ACP-48 across `acp-core` and `acp-module`. See **C-14**. One process note worth surfacing: Jude Scally, 2026-08-19 — *"most of the components in PR4 are missing tests, think we maybe need to update the constitution as this seems to be getting missed every time annoyingly."* A named, repeated constitution gap on the eng side. `[CS: VERIFIED — primary]`
- **Standup channel (`19:521f85c9…`)** — Dunlop's *"Completed EBR Co-worker on Dev environment"* (2026-08-17). Root-message fetch failed (Graph rejects reply-route reads); registered from the search summary, **`[?]` pending verification.**
- **Beth's notes chat** — `viktor.com/research/a-harness-for-agi` (2026-08-20, via TLDR). Name collision with the product only; no ACP content. → `_inbox`.

## SharePoint / Outlook

3 SharePoint hits, **no net-new evidence**: `Craig Fisher chat…EBRs (1).docx` (re-shared 2026-08-18 — SRC-U-009, already registered, not a new source), `pemberton-cycle-3-ebr.csv` (fictional prototype seed data — Pemberton/Priya Nandagopal), `design.md` (Apex 2.0, already registered as Aug-14 Item A). Outlook: zero hits.

---

# STEP 2 — CATALOG

| Shelf | Count | Items |
|---|---|---|
| **user** | **0** | **Zero new user-shelf sources this run. Named, not hidden.** |
| **market** | 12 | SRC-M-004 … SRC-M-015, BD-005, BD-006 |
| **derived** | 13 | DERIVED-005 … DERIVED-017 |
| **_inbox** | 3 | below |

**Zero new user evidence is the run's most important structural fact.** Every strategic artifact produced this week — two Idea Chess rounds, a five-phase business plan, two value-prop councils — was built on the **same n=1 Technica interview (SRC-U-009, 2026-08-07)** plus market and derived material. Both Idea Chess rounds say so themselves: *"Gate-1 desirability floor (client voice absent, ~2-month report drop-off) sits under all five equally."* The corpus's own row 335: *"no client voice exists anywhere in the corpus."* SRC-M-004…007 are all SaaS-CS domain. **The evidence base did not widen this week; the bet built on it did.**

## `_inbox` — parked, human decides

- **INBOX-001 — Dunlop, *"Completed EBR Co-worker on Dev environment"*** (2026-08-17). A CLAIM, enters `[?]`. Contradicts nothing directly but bears on C-14's load-bearing number. Resolves by: one look at the Dev environment or the live repo.
- **INBOX-002 — NZO billing cluster** — `prototypes/nzo-billing-dashboard/DESIGN.md`, `scout_input/nzo-billing/01–04`, session `local_37354a83` ("Lynn's billing n-zo prototype", 2026-08-20). **Deliberately not cataloged onto an ACP shelf.** Per GDPR purpose limitation (§10b): this is N-Zo billing UX, a different product surface. *"A finding gathered for one brief cannot be silently repurposed in another."* Parked so it is recorded as seen, not absorbed.
- **INBOX-003 — `viktor.com/research/a-harness-for-agi`** — name collision only. Park or drop.

---

# STEP 3 — RELATE / DRIFT

| Spec / context file | Drift | Why |
|---|---|---|
| `briefs/context/qbr-ebr.ux.md` | **STALE** | `built_from` list is unchanged (`last_updated: 2026-07-31`), but **6 new market sources bear on §1/§4/§6** — SRC-M-004…007 (four self-flagged for this register), SRC-M-012, SRC-M-005's new competitive entrants (Perspective AI, Matik, Topo.io). None folded in. |
| `briefs/context/acp-ux.md` | **STALE** | `last_updated: 2026-07-30`, `drift: FRESH` — now three weeks and two Idea Chess rounds behind. Gate 2 still 🔴 at the ACP level. Its own `built_from` cites the datadump index page, which moved. |
| `briefs/context/DESIGN.md` | FRESH | Apex 2.0 provenance; nothing new touches it. |
| `acp-core-main-3/**` (all four specs) | **STALE — structurally** | **Static download, not a live clone.** See C-14. Every drift flag this pipeline has raised against it inherits this. |
| `briefs/ebr-coworker-phased-plan-2026-08-20.md` | **CONFLICT** | C-12 (Nov 2 date), C-14 (runtime figure). |
| `briefs/idea-chess-qbr-round3-2026-08-20.md` | **CONFLICT** | C-11 (N3 verdict vs. committed plan). |
| North Star (62176526400) | **CONFLICT-candidate** | C-13 (ScalePad stat); row-10 challenge — Step 4c. |
| Datadump index (62175674556) | **STALE** | *"Swept: 2026-08-04."* Three dark runs, now backfilled; 12 new market sources unlisted. |

## Open-interpretation items in STALE context files — separate from the drift

Per the skill: *drift means a source moved; a `PROPOSED`/`[A]`/`[?]` tag means this was always waiting on Beth's interpretation, source moved or not.* Do not conflate.

- `qbr-ebr.ux.md` — `confidence_regime: PROCEED-FLAGGED`, `machine_behavior: … do not claim validation · Package 3 proceeds; **Package 5 gates on Q1 legal**`. Q1 is still open and unowned. The gate is holding as written.
- `acp-ux.md` — `confidence_score: UNSCORED` (§8 never computed); Gate 2 🔴; *"Chris Dunlop's architecture map not found."*
- `DESIGN.md` — *"name the v1/2.0 divergence, do not silently resolve it"*; dark-mode and status-colour values unverified.

---

# STEP 4 — QUESTIONS

## Open questions this run raises

1. **Does Vertesia change the bet, or deliver it?** (C-11) Bet A's moat is C2 accumulating in a surface N-able owns. Whose surface accumulates it under a Vertesia console?
2. **Does Nov 2 replace the Phase-4 monetization gate, or run beside it?** (C-12)
3. **Is the live runtime still 0/40?** (C-14) The month-one live-coworker-vs-prototype call turns on this one number.
4. **Who owns EU AI Act compliance for ACP?** (DERIVED-007) Enforceable since 2026-08-02; owner `<TBD>`.
5. **Is engineering building deck-gen?** (C-14) `test_deck_composer.py`, `test_pdf_composer.py` exist against row 14's explicit *"do NOT race deck-gen."* `[?]`
6. **Enforcer or Inforcer?** (BD-006) Same company, two spellings across brief and Teams.
7. **BUSINESS-led or SECURITY-led?** (DERIVED-008) Beth's own unresolved fork; bears on the VP-3 headline both councils converged on.
8. **Is SRC-M-015 (internship vendor research) worth a read before the next build-vs-buy call?** It covers exactly the ground Beth just scouted by hand.

---

# STEP 4b — SUGGEST (enrichment, grouped by brief)

**Discipline note:** no `derived` item is used to satisfy a SUPPORTS test — an AI session cannot resolve a real-world assumption.

## `briefs/ebr-coworker-phased-plan-2026-08-20.md`

| Assumption / `[?]` | Classification | Evidence |
|---|---|---|
| Tenet 1 — *"Customer-driven / signal-fired, NOT calendar-fired"* | **SUPPORTS** → propose `[A]`→`[R directional]` | SRC-M-004: renewal ≠ QBR quality; *"we rebuilt CS around 'what fires when a signal appears'"*. **Caveat that must ship with the promotion: `[DOMAIN: SaaS/CS, NOT MSP]`, n=1 company, self-reported, no A/B.** This is a promotion to *directional*, not to proof. |
| Tenet 2 — *"It's an EBR, NOT a QBR"* | **SUPPORTS** | SRC-M-004's QBR/EBR split — a fourth independent voice after Vanessa, Stefanie, Craig. `slayai`: *"for large enterprise in a highly technical industry (cyber) you can't remove these."* Technica is that case. |
| Tenet 3 — *"the product is signal-consolidation + continuity + judgment, NOT the deck"* | **SUPPORTS** + ⚠️ | SRC-M-004's `bobiq_ai` describes the C2 runbook verbatim. **But C-14: `test_deck_composer.py` suggests the build may be going the other way.** |
| Tenet 4 — *"Two-way / co-created"* | **EXTENDS** | SRC-M-007 (Mural) — weak, vendor with a whiteboard to sell. *"Directionally reinforces; adds no new evidence."* |
| P1 success metric — customer-driven engagement | **EXTENDS** | SRC-M-004's `LatterAd2130`: *"watch who's gone quiet"* (flagged vendor plant — sentiment only). SRC-M-006's commitment-test lens. |
| P4 `[?]` pricing / WTP | **CHALLENGES** | **C-12.** Nov 2 commits a paid SKU ×3 before the P4 gate. |
| P3 `[?]` legal Q1 | **EXTENDS** | BD-006 names a third path (vendor MCP). Vertesia R-02: *"zero PSA connectors — every PSA integration is an N-able build."* |
| Hard dependency `[?]` runtime | **CHALLENGES** | **C-14.** |

## `briefs/idea-chess-qbr-round2/round3`

| Item | Classification | Evidence |
|---|---|---|
| Contradiction 4 — *"Desirability floor under all five equally"* (Crux, Gate 1) | **EXTENDS — sharply** | SRC-M-004 is the strongest evidence yet that the floor is real; SRC-M-005 and SRC-M-006 name the same hole from two more angles. **Still zero client voice** — all three are SaaS-CS, and two are vendors selling the fix. The hole got better-described, not smaller. |
| Contradiction 1 — *"Row 8 vs. C2… A survives Defend ONLY if C2 outlives the decaying data moat"* (Crux, Gate 3) | **EXTENDS** | BD-005's *"bottlenecks become more important when everything else gets automated"* is the general form of the C2 argument. `[WOBBLY]`, out-of-domain — framing, not evidence. |
| N3 verdict — *"do NOT partner as substrate"* | **CHALLENGES** | **C-11.** |
| N1 Narada — Q1 legal kill | **EXTENDS** | BD-006 (Dunlop, vendor MCP as the alternative). |
| Normalization build-vs-buy (row 11/17) | **EXTENDS — and weakens the buy side** | SRC-M-008: Gradient is billing reconciliation, not general normalization. SRC-M-009: Liongard has repositioned to ASM. SRC-M-011: CloudRadial's N-able partnership is unevidenced. *"None of the four verified candidates closes the gap outright."* SRC-M-015 unread. |

## `prototypes/ebr-coworker-options/` (VP-3 headline)

| Item | Classification | Evidence |
|---|---|---|
| VP-3 anchor — *"~£300k rebuilt through EBRs"*, `[CS: MEDIUM, n=1, vendor-selected]` | **NOT TOUCHED** | Nothing this run widens n=1. This is the Phase-1/2 job the testimony already names. |
| VP-2 *"never get surprised"* — reason-blind fatality | **SUPPORTS the do-not-make** | SRC-M-004's `luodaint`: *"The churned customers aren't telling you anything during a QBR. They told you six weeks ago through a support ticket wrongly marked resolved."* The council's own reasoning, from an independent voice. |
| VP-1 *"grow the account"* — needs client voice/co-creation | **EXTENDS** | SRC-M-005: telemetry contains no reason. SRC-M-006: attendance/engagement as commitment signal. Both are lenses on the hole, not fills. |
| VP-4 straddles the killed time-saved frame | **NOT TOUCHED** | Positioning decision, unchanged. |
| Headline choice VP-3 vs. BUSINESS-led/SECURITY-led fork | **EXTENDS** | DERIVED-008 — `derived`, so it cannot promote anything; it names that the fork is unresolved beneath a headline both councils converged on. |

## `briefs/mvp-thread-banked-2026-08-18.md`

| Item | Classification | Evidence |
|---|---|---|
| Row 50 — *"is it the data moat or the runbooks, and how are they dependent?"* | **EXTENDS** | BD-005 (bottleneck-is-judgment) leans toward runbooks; SRC-M-008/009 weaken the buy-parity route for the data leg. **Does not resolve** — three candidate assets (data, runbooks, distribution) still unadjudicated. Beth's row 50 stands open. |
| Row 47 — capstone thesis vs. NONGOAL-002 | **EXTENDS** | Vertesia plan ships **5 coworker runbooks** in one SKU — which sharpens rather than settles the orchestration-vs-governance question. DERIVED-005/006 restate it as open in Beth's own words. |
| Data-trust/normalize agent as MVP spine | **EXTENDS** | North Star P1 *"Data-trust handling builds trust"* is still `Open · no concept`. DERIVED-007: Value Ledger schema only *"accidentally AI-Act-shaped"*, compliance owner `<TBD>`. |

---

# STEP 4c — NORTH STAR RISK REGISTER CHECK

Every row of the Vision Risk Register on [ACP North Star — the guiding bet](https://n-able.atlassian.net/wiki/spaces/AI/pages/62176526400) (62176526400), checked against this run's evidence. **12 rows, 12 lines.**

| # | Row | Verdict | Why |
|---|---|---|---|
| 1 | **P0★ Q1** — cross-vendor data egress legally permitted | **EXTENDS** | Vertesia R-02: *"zero PSA connectors — every PSA integration is an N-able build"* → the egress question lands squarely on N-able, not a partner. BD-006 (Dunlop) names a third path: sanctioned vendor MCP. Round 3 keeps client-facing cross-vendor UI-scraping as `[CS: UNKNOWN]`, *"a `[?]` not an `[A]`."* **No likelihood move (Low ~40%); still no owner.** |
| 2 | **P0★ Q2** — operator wants the mechanism | **EXTENDS — with a risk-concentration flag** | The Vertesia plan turns Q2 into a **launch acceptance criterion**: *"MSP-run — the MSP's own technicians approve actions and consume output… Approval Inbox audit log, actor ≠ N-able."* SRC-M-004 bears on it adjacently and ambiguously (async-over-meeting preference; SaaS-CS domain). **No likelihood move (~50%).** Flag: a dated revenue commitment now depends on a P0 whose ⧗ study still has no owner. |
| 3 | **P0** — QBR edit fits ~15 min | **NOT TOUCHED** | No timing evidence this run. The delta-review critic pass is prototype-internal, not an edit-time test. |
| 4 | **P0** — data clean enough to normalize (75–80%) | **EXTENDS** | SRC-M-008 (Gradient = billing reconciliation, not general normalization), SRC-M-009 (Liongard → ASM), SRC-M-011 (CloudRadial unevidenced) → the **buy-parity route is weaker than the brief assumed**. Vertesia R-02 adds connector burden. **Nothing tests actual data cleanliness. Low ~30% unchanged.** |
| 5 | **P1** — data-trust handling builds trust | **EXTENDS (thin)** | DERIVED-012 argues the data-trust/normalize agent *is* the MVP spine; DERIVED-007 notes the Value Ledger is only *"accidentally AI-Act-shaped"* with compliance owner `<TBD>`. Both `derived` — cannot promote. **Status stays `Open · no concept`.** |
| 6 | **P1** — IR RCA has zero holes | **EXTENDS (weak)** | Vertesia plan places IR RCA as use case #3, *"read-only diagnostics, gated writes,"* citing insurance/compliance pull. No correlation test. **Low ~30% unchanged.** |
| 7 | **P2** — MSPs use RCA during the incident, not after | **NOT TOUCHED** | Nothing this round. |
| 8 | **P2** — live-diagnostics wedge worth paying separately | **EXTENDS** | Vertesia bundles Ticket Triage & Dispatch into the SKU as use case #2 (*"highest intensity 8.3… this is what makes 'running daily' true"*). Bundling **implies** a call against standalone pricing but does not test WTP. **Med ~55% unchanged — do not read the bundle as a resolution.** |
| 9 | **—** MSP needs to review/edit the QBR before send (Directional, High ~85%) | **EXTENDS** | Vertesia's MSP-run bar (technicians approve, actor ≠ N-able) is additional weight; SRC-M-004/007 reinforce two-way over one-way. **No likelihood move.** |
| 10 | **Answered** — MSP can predict what lands with their client (Accepted, Med ~60%, Beth 14 Jul, *"revisit if contradicted"*) | **🔴 CHALLENGES — escalate** | **First evidence pointing the other way, and the row's own escape clause names this trigger.** SRC-M-004: *"renewal rate did not correlate with QBR quality — stellar QBRs churned, skipped QBRs renewed"*; `Turbulent_Ad1229`: *"The QBR was measuring the relationship with the meeting, not the health of the account."* SRC-M-005: telemetry *"contains no reason."* Corpus row 335: no client voice anywhere. **Does NOT overturn the row** — all of it is `[DOMAIN: SaaS/CS, NOT MSP]`, n=1 company, two of three sources sell the fix. **Beth's call: does this meet the "contradicted" bar?** |
| 11 | **Answered** — ScalePad displacement window is live (Confirmed, High ~90%) | **EXTENDS on the row · separate CONFLICT on a stat** | The row rests on Guidepoint MSP-A and **stands** — it does not depend on the pricing figure. But the Vertesia plan re-cites *"$300+/user/mo to ScalePad,"* which the 2026-07-28 register **killed**. See **C-13**. **No status change to this row.** |
| 12 | **Answered** — graduated approval-gate model lands (Confirmed, High ~90%) | **EXTENDS** | Vertesia operationalizes it: approval inbox, actor ≠ N-able, QBR framed *"read-only, so zero autonomy risk."* Consistent with 8/8 + 13/17. **No change.** |

## How the touch log was written — read this

Written to the North Star page (62176526400) **as a footer comment, not appended to the body running-log.** Reason, stated plainly: this was an unattended run, and the append would have meant reproducing ~30KB of page HTML — twelve `status` macros and the Vision Clash table — to insert one bullet. A transcription slip there corrupts the register itself. A comment is additive and cannot damage the body.

**Action for Beth (or any interactive session):** move the line into the body touch log. Until then the body log's last entry reads 2026-08-14, and this run's check lives one click away in the comments.

The first comment attempt double-escaped its HTML and rendered with literal tags; a corrected, properly-formatted reply is nested under it (comment `62320771115`). The malformed parent (`62320312371`) is still there — no delete tool was available, and deleting a comment under Beth's account unattended isn't mine to do. Worth tidying by hand.

**No row status was changed.** That is Beth's call at Step 5.

## Touch-log line (as written to the page)

> **2026-08-21** — Scheduled refresh (sweep Aug 14–21; Brain Dump backfill Aug 04–21, first live read in 4 runs). Evidence base: 12 new market-shelf sources (SRC-M-004…015 — four QBR-practice sources self-flagged for this register, four MSP-vendor dossiers, a buying-committee cluster, a QBR-replacement ritual scan, an unread internship vendor-research handoff), 2 new Brain Dump items (BD-005 forecasting-frictions article; BD-006 Inforcer/Microsoft + Dunlop on vendor MCP), 13 derived items, **0 new user-shelf sources**. Plus the newly-surfaced Harness–Vertesia Nov 1 Execution Plan (62302388241). **Touched:** Q1 EXTENDS (Vertesia R-02 — zero partner PSA connectors puts every cross-vendor pull on N-able; Dunlop names vendor-MCP as a third path). Q2 EXTENDS (Vertesia makes Q2 a launch acceptance criterion — "actor ≠ N-able" — so a dated revenue commitment now rests on a P0 whose study has no owner; likelihood unmoved). Data-clean-enough EXTENDS (three vendor dossiers weaken the buy-parity route for normalization; nothing tests cleanliness). Data-trust EXTENDS-thin (derived-only; stays "no concept"). IR-RCA-zero-holes EXTENDS-weak (scoped as use case #3, read-only). Live-diagnostics-WTP EXTENDS (bundled into the Nov SKU — an implied call, not a WTP test). MSP-review/edit EXTENDS (MSP-run approval bar). Graduated-approval-gate EXTENDS (operationalized as approval inbox). **MSP-can-predict-what-lands → CHALLENGES, escalated** (r/CustomerSuccess: renewal did not correlate with QBR quality; Perspective AI: telemetry has no reason — but all SaaS-CS domain, n=1 company, vendor-adjacent; the row's "revisit if contradicted" clause is Beth's to apply). ScalePad-displacement EXTENDS, row unchanged — **but the "$300+/user/mo" stat this corpus killed on 2026-07-28 is circulating again in the Vertesia plan (C-13).** **Not touched this round:** QBR-edit-fits-15-min · RCA-during-not-after. **Three CONFLICTs escalated beyond this register:** C-11 (Vertesia partner-substrate vs. Idea Chess R3 "N3 rejected, not deferred"), C-12 (Nov 2 paid-SKU vs. phased plan's Phase-4 monetization gate), C-14 (runtime 0/40 verified against a static snapshot the live repo has moved past).

---

# STEP 5 — REVIEW GATE — **RUN 2026-08-21, Beth present**

## Verdicts given

| # | Item | Beth's verdict, 2026-08-21 |
|---|---|---|
| 1 | **C-11 Vertesia** | **Treat Vertesia as a given.** *"We need to sort this out. Vertesia is apparently now a given? Need to work the list."* → On review of the plan's blocking table (partner-run architecture kickoff 24 Aug, training booked 8 Sep, named vendor counterpart, allocation in progress) Beth confirmed: **"that sounds like a given."** The LOI being unsigned is paperwork trailing the decision. **Recorded as a given; the consequence — C2 portability — is open.** |
| 2 | **C-12 Nov 2 vs P4 gate** | **Nov 2 replaces the gate.** Phases 1–3 proof-gates become reporting milestones, not go/no-go. |
| 3 | **4c row 10** (MSP can predict what lands) | **Defer to Nicole / Product.** Status stays Accepted; owner moves from Beth to Nicole/Product; the challenge is logged on the row. |
| 4 | **Registrations** | **Accept all in bulk** — 12 market sources + 13 derived items. |

**Date correction made during review:** today is **Friday 21 Aug 2026**, which resolves the Vertesia plan's date error — its LOI row reads "Fri 22 Aug" and "hard stop Fri 29 Aug", both **Saturdays**. The Fridays are 21 and 28 Aug. **BizApps SKU (NOT STARTED) and Team Allocation are due today.**

Items 5–21 below were **not** ruled on this run and carry forward.

---

Verdicts: ✅ Accept · ✏️ Edit · ❌ Reject · 🔵 Accept-as-interpretation *(registers with owner + date + "revisit if contradicted", visually distinct from 🟢 Confirmed)*

## 🔴 Escalated — answer these first

1. ⬜ **C-11 — Vertesia partner-substrate vs. Idea Chess R3.** Does Vertesia deliver Bet A or replace it? Where does C2 accumulate? *(Beth + Nicole + Meaghan. Decision-uncertainty → `BLOCKED`, not `PROCEED-FLAGGED`.)*
2. ⬜ **C-12 — Nov 2 paid SKU vs. Phase-4 gate.** Replaces it, or runs beside it? One line in the phased plan.
3. ⬜ **C-13 — the killed ScalePad stat is live again.** Remove/re-source in 62302388241; and decide whether register corrections need a propagation path (this is the same missing mechanism as the MOD-001/002 graduation chore).
4. ⬜ **4c row 10 — does the r/CustomerSuccess evidence meet "revisit if contradicted"?** Beth's own escape clause, Beth's call.

## New this run

5. ⬜ **C-14** — check live `acp-core`/`acp-module` before the Phase-1 live-vs-prototype call; decide whether this pipeline keeps re-hashing a static snapshot.
6. ⬜ **SRC-M-004…007** — register the four self-flagged QBR-practice sources; fold into `qbr-ebr.ux.md` §1/§4/§6.
7. ⬜ **SRC-M-008…011** — register the four vendor dossiers, **including the two corrections** (Liongard acquisition direction reversed; Gradient "normalization" = billing reconciliation).
8. ⬜ **SRC-M-012** — register the QBR-replacement scan, incl. the negative finding (no external narrative-memo precedent) and *"you may be naming a category that has no settled form."*
9. ⬜ **SRC-M-013** — register the buying-committee cluster as **untested on both sides**. Candidate 🔵.
10. ⬜ **SRC-M-015** — read the internship vendor-research handoff (62272799086) before the next build-vs-buy call?
11. ⬜ **BD-005 / BD-006** — register both.
12. ⬜ **DERIVED-005…017** — accept as `derived` (reasoning, not evidence).
13. ⬜ **DERIVED-007 — EU AI Act compliance owner is `<TBD>`** on a live enforcement date. Route to Nicole?
14. ⬜ **Enforcer vs. Inforcer** — confirm the spelling, patch round 3.
15. ⬜ **INBOX-001/002/003** — promote, park, or drop.
16. ⬜ **Zero new user-shelf sources.** Accept as the run's headline gap, or open a study?

## Carry-forward — still unaccepted

17. ⬜ C-06 / C-07 / C-08 / C-09 — formal Accept (open since Aug-14)
18. ⬜ C-10 — RMM-longevity as market-shelf risk
19. ⬜ Aug-14 items A–H (8 items) + Aug-12 carry-forward (8 items)
20. ⬜ **Add `scout_input/` + `briefs/` + local glob to the Step-1b sweep scope** — *requested three times; it was the primary gather again this run.* Overdue.
21. ⬜ **MOD-001 / MOD-002** — hand-carry to `specs/_ux/acp-ux.md` / speckit constitution, or keep waiting on the graduation path?

---

# STEP 6 — UPDATE — **RUN 2026-08-21, on the four approvals above**

Applied. Everything below traces to a verdict in Step 5; nothing was synthesised on Beth's behalf.

## Written

| Target | Change | Verified |
|---|---|---|
| **[ACP Research Datadump (living)](https://n-able.atlassian.net/wiki/spaces/AI/pages/62175674556)** (62175674556) | **v16.** New "🔴 Open CONFLICTs" section (C-10…C-14). Registered the Vertesia plan on the bet layer, SRC-M-004…015 (with the Liongard + Gradient corrections carried), BD-005, BD-006, SRC-U-009 as an explicit entry, INBOX-001/002. `Swept:` → 2026-08-21. Added the "zero new user-shelf sources" gap, the Copilot-history gap, the ACP-8/43/44/48 note, and the C-14 warning on the Intent Spec entry. | **Re-read.** All prior content intact. Two cosmetic markdown artifacts: an empty bullet before the SRC-M-008…011 sub-list, one bold marker shifted on the Intent Spec line. |
| **North Star** (62176526400) | Step-4c touch log (12/12 rows) + Step-5/6 verdicts, **as comments.** Body table **not** edited — two one-cell edits are named for a human: row 10 Owner Beth → **Nicole / Product** plus the logged challenge, and a new Vision Clash row for C-11. | Comments confirmed. **Body edits outstanding.** |
| `briefs/ebr-coworker-phased-plan-2026-08-20.md` | C-12 decision recorded with date + the tradeoff it accepts (row 9's Candidate-3 warning, stated once). C-11 rewritten as "Vertesia is a given," with the layer-ownership table and the three questions before 24 Aug. | — |
| `briefs/idea-chess-qbr-round3-2026-08-20.md` | **RE-SCOPED**, not retracted. N2's month-one rec superseded; **N3 partially superseded** (N-able owns runbooks + all connectors — the opposite allocation from the one N3 scored, so "commodity pipe" doesn't apply; the margin/attribution warning still does); N1/N4 moot as stated; N1's Q1 `[CS: UNKNOWN]` re-enters against N-able-built connectors. Defend crux restated as the load-bearing question. | — |
| `briefs/context/qbr-ebr.ux.md` | 10 sources + the Vertesia plan added to `built_from`. `drift: DRAFT-updated` → **FRESH**, `reconciled_at: 2026-08-21`. New `open_conflicts:` block (C-11…C-14). **§1/§4/§6 prose untouched — that synthesis is Beth's.** | — |
| `briefs/context/acp-ux.md` | `drift: FRESH` → **STALE**, with the three reasons named inline. | — |

## Not done, deliberately

- **No synthesis written into any brief's `[0% Claude]` slot.** Four remain open: phased plan, round 2, round 3, both VP testimonies.
- **No North Star row statuses changed.** Q1/Q2 likelihoods untouched and still unowned.
- **C-13 routed, not fixed.** Beth, 2026-08-21: *"don't edit Nicole's pad. cool with comments."* Flagged as a comment on 62302388241 (the killed ScalePad figure + the Saturday date error + BizApps SKU due today), with an explicit "nothing on this page was edited — flagging only." The edit stays Nicole's. **Standing rule from here: never edit a page someone else owns — comment.**
- **Items 5–21 of the gate** untouched, including the thrice-requested sweep-scope fix.

## Stamp

```
last_run: 2026-08-21
steps_completed: 0, 1, 1b, 2, 3, 4, 4b, 4c, 5 (4 verdicts), 6 (applied on those 4)
next_sweep_window_opens: 2026-08-21
```

---

# SCOPE & ETHICS NOTE

**Data minimization.** Gathered against the stated ACP/Harness research purpose. From the Vertesia plan I extracted the commitment, dates, offer shape, use-case set, and the named technical risk — the material that bears on which offering is being built and when. Not extracted: internal financial projections, headcount/allocation detail beyond named deliverable owners.

**Purpose limitation.** INBOX-002 (N-Zo billing) was deliberately **not** cataloged onto an ACP shelf despite being in the sweep path. Different product, different purpose.

**Names.** Internal N-able colleagues (Nicole Reineke, Christopher Dunlop, Jude Scally, Chris Barber, Sidhant Hanwate, David Woakes, Meaghan Reinecke, William Mincher) are retained where load-bearing for routing a decision to its owner — this changeset's function is telling Beth who owns what. The 2026-07-31 anonymization standing rule targets customer/tenant/participant data, and no customer or tenant data appears here. **SRC-U-009 names** (Craig Fisher, David) are retained per the existing convention in `datadump-refresh-2026-08-12.md` / `-08-14.md`; named end-clients remain excluded. `pemberton-cycle-3-ebr.csv` is fictional prototype seed data.

**Authorization.** Every source read was within Beth's own authorization: her Teams channels, her SharePoint, Confluence pages she is `@`-mentioned on. The three Not-relevant sources were skipped, including one modified in-window. Nothing arrived that Beth was not meant to have.

**47% rule.** Grep-verified this run: `004-ai-coworker-registry/tasks.md` = 40 unchecked / 0 checked. The ScalePad `$300+/user` string and its 2026-07-28 correction were both read from primary sources. DERIVED-014's 402/47/355 counts are verified **in that document**, not independently re-verified here — stated rather than inherited silently.

---

# RUN METADATA

| Field | Value |
|---|---|
| Run completed | 2026-08-21 |
| Steps completed | **0, 1, 1b, 2, 3, 4, 4b, 4c — all** |
| Steps blocked | none |
| Teams Brain Dump | **LIVE** — first read since 2026-08-04; 4 dark runs backfilled |
| Atlassian | LIVE (preflight 302 was a false negative) |
| M365 | LIVE (429-throttled on 4 calls, recovered) |
| New user-shelf sources | **0** |
| New market-shelf sources | 12 (SRC-M-004…015) + 2 Brain Dump (BD-005, BD-006) |
| New derived-shelf items | 13 (DERIVED-005…017) |
| `_inbox` | 3 |
| CONFLICTs new this run | **4** (C-11, C-12, C-13, C-14) — 3 escalated |
| North Star rows checked | **12 of 12** — 8 EXTENDS · 2 NOT TOUCHED · 1 CHALLENGES (escalated) · 1 EXTENDS-with-separate-CONFLICT |
| Gate items for Beth | 21 (16 new, 5 carry-forward blocks) |
| Run complete? | **YES** — first fully-complete scheduled run since the ritual was formalized |
</content>
</invoke>
