# NeoAgent × Harness — Capability Crosswalk

**Date:** 2026-09-04
**Author:** Bradley (Band Protocol pipeline), orchestrated by Claude for Beth Connor
**Trigger:** Beth shared a screenshot of NeoAgent's capability page and asked which rows Harness will actually do. Follow-up: which of our capabilities are *not* on their page.
**Sources swept:** this repo; Confluence (ADL/PUT/ProdUX, 5 pages read in full); Jira ACP project exhaustively (ACP-1…ACP-63), FSN at Initiative/Epic level.
**Not swept:** SharePoint (M365 connector gap — human export required); the Vertesia capability chart (cited but absent from corpus); `nable-fusion/acp-core` (Beth's standing boundary — not accessed).

---

## The thing that changes the question

"HARNESS" names two different scopes, and they disagree on exactly the rows NeoAgent lists.

**Track A — ACP / UEM Coworkers.** Engineering-real, in Jira, in development. Its own architecture page scopes it to *"repeatable **UEM** operational tasks such as patching, script execution, troubleshooting, and reporting"* [CS: VERIFIED — Confluence 62148935741, "Architecture Overview: AI Coworkers Platform (ACP)", 2026-07-22]. PSA/ticket work is outside its domain by design: *"UC-04 (Ticket Resolution) and UC-09 (Alert Suppression) remain deferred to v2"* [CS: VERIFIED — Jira FSN-84436].

**Track B — Harness / Vertesia.** A commercial commitment, not a Jira project: *"3 MSPs running Harness daily, with a launch of a real paid SKU, by Mon 2 Nov 2026"* [CS: VERIFIED — Confluence 62302388241, Nicole Reineke, mod. 2026-08-26]. Its runbooks **do** include Ticket Triage & Dispatch and Employee On/Offboarding.

The name "Harness" appears in Confluence only on Track B; Jira still says ACP (`briefs/datadump-refresh-2026-08-14.md:215` — *"ACP→Harness rename is the only qualifying mechanical item"*) [CS: VERIFIED].

### CONFLICT — three different "the five use cases" lists, two on the same page

| Source | The five |
|---|---|
| Harness Proposal deck (Aug 2026) | QBR · IR Analyst · Env Health · Security Tabletop · Alert Flood [CS: HIGH — `crosswalk/raw/claims-harness-proposal-HP.md` HP16, p7/42/43/49] |
| Nov-1 plan, §"The five top use cases" | QBR · **Ticket Triage & Dispatch** · IR RCA · Continuous Env Health · **Employee On/Offboarding** [CS: VERIFIED — Confluence 62302388241] |
| Nov-1 plan, integrations cell **on the same page** | Business Report · **Ticket Triage and resolution** · Alert Flood Suppression · Security Tabletop · Incident RCA [CS: VERIFIED — same page] |

Ticket triage is in two of three. Employee on/offboarding is in one of three. **Unresolved — needs an authority call (Beth + Nicole), not a research finding.**

---

## 1. Forward crosswalk — their 9 rows

| # | Capability | Harness | Source | [CS:] | Note |
|---|---|---|---|---|---|
| 1 | **Automated ticket triage** (Type/Subtype/Item/Priority/Urgency) | planned — **contested** | Confluence 62302388241 (UC #2, wk of Sept 29, owner "All hands") vs. Jira FSN-84436 (UC-04 → v2) | HIGH on both, contested | Named as *"what makes 'running daily' true"*, *"highest intensity (8.3)"*. Field-level auto-classification of those five PSA fields: **no source anywhere.** Runbook unwritten. |
| 2 | **Automated ticket resolution** (reads docs + history; suggests or executes fixes) | planned — contested; "executes" deliberately gated | Confluence 62302388241 ("Incident Resolution Runbook", wk of Sept 28) vs. Jira FSN-84436 | HIGH | Doc-reading side has a home: UC-A Documentation/KB Assistant, Phase 02 [Jira FSN-84435]. Autoexecution capped by design — see §4. |
| 3 | **AI service desk automation, Tier 1 end-to-end** | partial (positioning) / planned (mechanics) | `crosswalk/raw/claims-harness-proposal-HP.md` HP01–HP02 (control plane, above the stack, works across ConnectWise/Halo/ScalePad, zero N-central dependency) | HIGH for positioning; **UNKNOWN** for the loop | *"Scale support without replacing your existing tools"* is near-verbatim our own above-the-stack pitch. The intake→triage→route→resolve loop is not specced end-to-end in any artifact read. |
| 4 | **User onboarding & offboarding via M365** | planned — thin mechanism | Confluence 62302388241 (UC #5: *"Browser automation + email + typed extraction make it viable"*; Vertesia fit UC-6: 6 Native / 5 Partial of 19); Confluence 62255169643 (*"Microsoft 365 (not first)"*); Jira FSN-50711 | HIGH | Entra ID **is** Tier 1; M365 workloads explicitly not first wave. FSN-50711 builds Entra user CRUD + group/role/Teams assignment — but as a **technician UI in the UEM platform, not a Coworker**, and In Epic Definition. Browser automation ≠ native Graph API provisioning. |
| 5 | **Executing RMM scripts** | **does — in development; partial** | Jira FSN-84434 (Phase 01, In Development: UC-03 Script Coworker, UC-02 Patching); `crosswalk/raw/claims-specs-arch-infra-usecases.md` A17–A24; FSN-84435 (Script Generator, in testing) | VERIFIED (scope) / HIGH (state) | **The one real overlap.** Caveats: Phase 01 is *"on-demand triggering only — no scheduling, no push notifications, no Value Ledger"*; nothing is GA (Internal → Limited → Public Preview). Their *"runs them against the ticket"* needs PSA context Phase 01 lacks. |
| 6 | **Ticket dispatch** (tech expertise, availability, workload) | **planned in name only** | Confluence 62302388241 (title reads "Ticket Triage **& Dispatch**") | LOW on the mechanism | Nothing in the corpus describes technician skill, availability, or workload modelling. Jira FSN-84647 "Scheduling & Coworker Dispatch" (Done) dispatches *coworker runs*, not tickets to humans — **do not read it as this row.** |
| 7 | **Intelligent ticket merge** | **no source** | Absent from all three use-case lists, the 11 v1 templates (FSN-84434/35/36), and ACP-1…ACP-63 | **UNKNOWN** | Repo grep for "ticket merg\|duplicate ticket" returns only prototype seed copy, no spec. |
| 8 | **Ticket QA** (grade against your criteria, post-completion) | **no source** | Same absence | **UNKNOWN** | Nearest adjacent signal is coaching-shaped: Stefanie Hammond's red/amber/green grading is about grading the *client's environment* for the EBR (`briefs/datadump-axial-coding-2026-07-31.md:53`). Different capability — do not let it fill this row. |
| 9 | **Customer experience / sentiment analysis** | **no source** | Same absence | **UNKNOWN** | Jira FSN-76931 "N-zo Usage Sentiment & Observability" (In Development) is product-telemetry sentiment on a different surface, and **its Jira description is empty.** Not this row. |
| — | *Third screenshot row* | — | Not transcribed | — | **Known gap. Not guessed.** |

**Sweep scope note:** ACP swept exhaustively (ACP-1…ACP-63). FSN swept at Initiative and Epic level on triage / dispatch / sentiment / offboarding / merge / coworker / runbook. **Not** every FSN story. "No epic exists" is [CS: HIGH], not VERIFIED at story granularity.

### Forward-pass verdict

**1 of 9 partially ships, and it isn't GA. 5 are planned with no engineering tickets. 3 have no record at all.**

7 of their 9 are PSA/service-desk (rows 1, 2, 3, 6, 7, 8, 9); 1 is identity/M365 (4); 1 is RMM (5). Track A's 11 v1 templates are 11 UEM/RMM/reporting and **0 PSA** — counted from the three initiative descriptions (3 + 6 + 2 = 11, matching FSN-84436's own *"All 11 v1 templates"*; grep-gate passes).

---

## 2. Reverse crosswalk — Track A (ACP / UEM, Jira-real)

| Capability | State | Source | [CS:] | Note |
|---|---|---|---|---|
| **QBR / Business Review & Reporting coworker (UC-01)** | **does** | Jira FSN-84434 (Phase 01, In Development); ACP-46 (Implementing); ACP-49 (Ready for Development) | VERIFIED | **The headline absence from their page.** Best-evidenced demand row in the corpus: ranked #1 in both studies, *"the only ranked item cross-referenced w/ named partner quotes"* (`crosswalk/raw/claims-specs-arch-infra-usecases.md` U01); n=119 drag-rank avg 2.90 (Confluence 62151262211). ⚠ **ACP-46's Jira description is empty.** |
| **Patching coworker (UC-02)** | **does** | Jira FSN-84434 | VERIFIED | Not on their page. |
| **Risk-classified script repository** (low/med/high, MSP-approved, auto-run only if risk ≤ tolerance) | **does** | Jira FSN-84434 (UC-03); A17–A21, A25 | VERIFIED (spec) / HIGH (state) | Their row 5 is script *execution*. The curated, risk-graded, permission-gated repository underneath it is ours only. |
| **Script Generator Expert** — AI authors a *new* script, presented for review, publishable back to the repo | **partial** | Jira FSN-84435 (*"in testing"*); A22–A24; S15 | HIGH | They search and run existing scripts. We generate new ones under review. Genuinely different capability. |
| Real-Time Vulnerability Assessment (UC-05) | planned | Jira FSN-84435 (In Epic Definition) | VERIFIED | |
| Context-Aware Troubleshooting / RCA (UC-07) | planned | Jira FSN-84435 | VERIFIED | |
| Asset Insights & Auto-Recommendations (UC-08) | planned | Jira FSN-84435 | VERIFIED | |
| Endpoint Health & Lifecycle Analysis (UC-10) | planned | Jira FSN-84435 (incl. named Win10/11 accuracy fix) | VERIFIED | |
| Documentation / KB Assistant (UC-A) | planned | Jira FSN-84435 | VERIFIED | Adjacent to their row 2's *"reads your docs"* — but as a standalone coworker, not a resolution input. |
| Fast Asset / User Lookup (UC-C) | planned | Jira FSN-84435 | VERIFIED | |
| Risk-Based Work Prioritization (UC-06) | planned | Jira FSN-84436 | VERIFIED | ⚠ **Do not sell as their row 6.** Prioritizes *work by risk*, not tickets by technician workload. Different object. |
| License & Cost Optimization (UC-B) | planned | Jira FSN-84436 | VERIFIED | |
| **Value Ledger** — time saved per run, tenant-declared baselines, client-shareable export | **partial** | ACP-2 Done [BE]; ACP-29 Acceptance [UI]; ACP-28 Implementing; ACP-57 Backlog; FSN-84434 (*excluded* from Phase 01); FSN-84436 (Phase 03, *"minimal stub; dashboards/aggregation post-v1"*); S20/S28/S29/S32 | VERIFIED | Real code, real UI epic — and **no defensible baseline yet**: S35 / FSN-81539 Q-001 (task-category default manual-time baselines) is **open and blocking, research not done**, and S58 says that number is the first value figure the MSP ever sees. A ledger with invented baselines is the "made-up numbers" failure its own spec names (S23). |
| **BYOM — bring your own model** | **partial** | ACP-7 Done [BE]; ACP-34 Code Review [UI]; ACP-35 Implementing | VERIFIED | Strong clean row. Nothing comparable on their page. Speaks to the ranked deal-killer *"it's a black box"* (HP20). |
| **Customer-configurable MCP server connections + MCP Gateway** | **does** | ACP-9, ACP-11 [UI], ACP-39 [BE], ACP-42 [UI] Done; ACP-19/ACP-27 Acceptance; ACP-61 MCP Auth Code Review; A03/A10/A14 | VERIFIED | The MSP wires its own tools. Their page sells finished agents, not the connection layer. ⚠ ACP-52 (SSRF — MCP `base_url` unvalidated) in Code Review. |
| **MSP-authored runbooks** — plain-markdown, versioned, drafts, soft delete, clone-and-modify N-able defaults, org-scoped visibility | **does** | ACP-1 Done [UI]; ACP-30 Done [BE]; ACP-31 Implementing; FSN-84443 In Progress; Confluence 62148935741 (AI Agent Profile Register); A28/A43/I01; test suite FSN-89761–89878 (Verifying) | VERIFIED | **The load-bearing differentiator.** HP01: an MSP *"turns its own procedures into named AI Coworkers."* Their page is nine finished products; ours is an authoring layer. Different business. |
| **Coworker CRUD / assembly** (Experts + runbook + MCP connections + risk & autonomy guardrails) | **does** | FSN-84442 In Progress; ACP-6/ACP-37 Done, ACP-36 Acceptance; FSN-89761–89851 | VERIFIED | ⚠ FSN-84440 *Coworker operations UI* is **Blocked** — reason not in fields pulled. |
| **Org-hierarchy multi-tenancy + per-action authorization** (system / service-org / customer / site) | **does** | FSN-89713–89878 (Verifying) — tests enumerate all four levels, sibling/parent/child name collisions, view-only vs manage denial; FSN-89638; Confluence 62148935741 (CAS, GoAT/ORC); I05 | VERIFIED | Best-evidenced row on our side — a passing test suite, not a claim. Their page says nothing about tenancy depth. |
| **Immutable audit trail (CAL)** with actor_type / delegated_by / approval_chain | **partial** | FSN-84693 Ready for Acceptance; FSN-84434 (*"audited via CAL"*); ACP-22 Audit initiative **Backlog**; I27 | HIGH | I29 flags a **live cross-spec schema gap** (`approved_by`/`on_behalf_of` in one spec, only `created_by` in FSN-81484 REQ-001). Don't claim full attribution until that closes. |
| **HITL approval gate · destructive-action approval · cancel in-flight run** | **partial** | FSN-84691 Done; ACP-53 Implementing [UI]; FSN-84441 **Plan**; FSN-84434 scope; Confluence 62057152915 (Approval Model) | VERIFIED (scope) / HIGH (state) | Their page's verb is "executes." Ours is "proposes, then a named human approves." |
| **Autonomy ladder L1→L4 × risk-tolerance ceiling**, admin-initiated promotion | **partial** | Confluence 62148935741 glossary (L1 confirms-all → L4 opt-in only; risk tolerance × autonomy decides auto-run vs approval); FSN-84436 (full autonomy = Phase-03 opt-in, required Admin acknowledgment); I30; HP18 | VERIFIED | **A capability, not a stance** — configuration with enforcement, a UI, and a ceiling. |
| **Scheduling (cron) + notifications** (in-app, email via MailAssure, quiet hours, branding) | planned | FSN-84435; FSN-84445/84446; Confluence 62148935741 (Notification Service phases 1–3) | VERIFIED | ⚠ **We cannot currently claim scheduling.** Phase 01 is on-demand only. |
| **Execution monitoring** — streamed progress, run history, output capture | **does** | ACP-25 Implementing; ACP-43/ACP-44 Done; ACP-58 Code Review; FSN-84447 Plan; Confluence 62148935741 (websocket GraphQL subscriptions) | VERIFIED | |
| **Report/file generation + email delivery** | **partial** | ACP-48 Done (Create/Convert File Tool); ACP-47 Acceptance (SES Email Tool); ACP-60 Implementing; S29 (client-shareable PDF/CSV) | VERIFIED | The client-facing artifact path. Their page has no client-deliverable row at all. |
| **Self-serve onboarding to first value, no prerequisite N-able product** | planned | ACP-4 Initiative **Spec Review**; S16/S41/S43/S54; HP02 (*zero dependency on N-central, Cove, Adlumin; self-serve signup*) | HIGH | Their page presumes you already run a PSA. ⚠ Only ConnectWise implemented; Autotask/Halo are NONGOAL-008 (S50). |
| **AI Operator Model** — the control plane itself operable by any MCP AI client (Claude Code, N-zo); *"no separate AI mode; the MCP server **is** the canonical interface"* | planned | Jira **ACP-3 (Backlog)**, quoted verbatim in the issue; I20/I21/I24/I26/I28 | VERIFIED (spec) / VERIFIED (Backlog) | The most unusual thing in our corpus, nothing like it on their page: the governance plane is itself agent-operable, with Draft state and a proposed-changeset review flow. ⚠ Its auth model (admin token vs delegated service token) is **Open** (I24), so *"never exceeds the admin's permissions"* is unenforced. |

## 3. Reverse crosswalk — Track B (Harness / Vertesia: committed, zero Jira tickets)

| Capability | State | Source | [CS:] | Note |
|---|---|---|---|---|
| IR / RCA runbook | planned | Confluence 62302388241 (UC #3, wk of Sept 28); HP16 (#2, *"top pick of every cyber-deep buyer"*) | HIGH | Read-only diagnostics with gated writes. Insurance/compliance pull named. |
| Continuous Environment Health | planned | Confluence 62302388241 (UC #4) | HIGH | Our own plan calls it **"the weakest of the five"** — Vertesia fit *2 Native / 7 Absent of 13*. Kept because it generates the daily activity that feeds the Value Ledger. **Don't lead with it.** |
| Security Tabletop-as-a-Service | planned | Confluence 62302388241 (wk of Sept 21, Lewis Pope); HP16 (#4, maturity-gated, MSSP) | HIGH on the plan | Demand evidence weakest in the set: U04 is [CS: LOW — zero catalog support]. Distinctive, unbuilt, thinly evidenced. |
| Alert Flood Suppression / correlation | **planned in B · deferred to v2 in A** | Confluence 62302388241 integrations cell (#3); HP16 (#5, *"do not lead"*); Jira FSN-84436 (UC-09 → v2) | HIGH, contested | Same contradiction shape as ticket triage. Second-best-ranked item in the n=119 survey (avg 3.23) — and deferred. |
| Cross-stack / vendor-neutral operation, incl. competitors' tools | planned | HP01/HP02; Confluence 62302388241 Tier-1 list (ConnectWise, Halo, SentinelOne, ScalePad, IT Glue, Hudu, Entra); Confluence 62255169643 | HIGH as intent | **Zero PSA connectors exist.** See §5. |
| ~~Governance-resale "Best" tier~~ | **not a capability** | HP10/HP13; `crosswalk/board-print-notes.md` bet #5 | — | Commercial model. Rests on **one Jonathan Blakey quote**; pricing *"NOT set — do not quote numbers"* (HP12). Keep off a capability page. |

---

## 4. Capability vs. stance — the sort

**Capabilities** (have a schema, a service, a UI epic, or a test suite): Value Ledger · autonomy ladder · multi-tenancy/org scoping · audit trail (CAL) · HITL approval · BYOM · MCP configuration · runbook authoring · AI Operator Model.

**Stances** — real, load-bearing, and *not rows on a capability page*:
- *"No hidden automation — every automated action is visible and attributable"* (A27). The invariant **behind** the audit capability, not a separate feature.
- *"An empty section beats a wrong one"* / missing data labelled (HP20).
- *"Authority stays with the human"*; never open with "autonomous"; trust is THE buying criterion (HP19).
- *"He will never buy our agents. BUT he would buy the plane they run on"* (HP04) — positioning, not product.
- Named coworkers ("Resolved by Coworker Jacqueline") (S13, [CS: LOW]).
- Conservative default baselines (S32).

**A constraint mistaken for a feature:** AI Experts are N-able-owned and **not customizable in v1** (I16, NONGOAL-001, [WOBBLY] — the assumption that MSPs accept this is untested). This *limits* us against a vendor shipping tuned domain agents. Not differentiation.

**Above-the-stack vendor neutrality is a stance today** and becomes a capability only when connectors exist.

**Autonomy posture — the one sourced "not-our-game."** The *"executes fixes"* half of their row 2. MANUAL(default) → ASSISTED(earned) → AUTONOMOUS(granted), admin-initiated; *"all 8 experts described the same pattern"* (HP18); *"authority stays with the human"* (HP19); *"no hidden automation allowed"* (A27); explicit human sign-off in v1 (I30); Phase-03 opt-in requiring Admin acknowledgment (FSN-84436). Ranked deal-killers include *"it's a black box"* (HP20). A competitor page whose verb is "executes" sells into a fear our own research names as the top buying criterion — a positioning asset, but only for rows where we ship the recommend-and-gate version. Today that's row 5 only.

---

## 5. Differentiators that are only differentiators because they're unbuilt

Two plans is not an advantage over one product.

| Row | Why it doesn't count yet |
|---|---|
| Cross-stack vendor neutrality | Premise of the whole pitch, and *"Vertesia ships zero PSA connectors. Every PSA integration is an N-able build"* (Confluence 62302388241). NeoAgent's named strength in our own diligence is *"PSA/M365 integrations"* (Confluence 62272799086). We claim breadth against the vendor whose breadth we considered buying. |
| Security Tabletop | Track B only, no tickets, demand [CS: LOW]. |
| Alert Flood Suppression | Planned in B, deferred to v2 in A. Second-ranked demand row, in neither track's committed scope. |
| AI Operator Model | ACP-3 **Backlog**; permission boundary open (I24). |
| Self-serve 20-min onboarding | ACP-4 **Spec Review**; one PSA implemented; ConnectWise on-prem support unresolved *while the connection test is being built* (S57, open/blocking). |
| Scheduling | Phase 02, In Epic Definition. Today: on-demand only. |
| Value Ledger | Backend real, UI in Acceptance — **baselines open and blocking** (S35). |
| Governance-resale Best tier | Pricing explicitly not set. |

### The honest seven — built today AND absent from their page

**runbook authoring · MCP configuration · org-scoped multi-tenancy · BYOM · execution monitoring · risk-classified script repository · the QBR coworker.**

---

## 6. The asymmetry read

Overlap across ~26 of our rows and 9 of theirs: **2**, both partial (scripts; M365 on/offboarding). Not a feature race — two different products aimed at the same buyer's budget.

**Moat or market-size problem: [CS: UNKNOWN] — terminal.** The corpus contains both readings and flags the moat claim against its own evidence.

- *Moat case, sourced:* HP04 (*"he would buy the plane"*), HP02/HP03 (agent sprawl nobody can govern; above the stack). The one ground we hold and they don't is our strongest demand signal — QBR #1 in both studies, only ranked item corroborated by named partner quotes (U01), survey avg 2.90.
- *Market-size case, sourced:* our own board read scores governance-as-the-product **"HIGH — and in direct tension with the research"** (`crosswalk/board-print-notes.md` bet #3). ICP deliberately narrow — 11–49-employee MSPs, 2,523 accounts, Y3 ARR $8.16M, *"the narrow/high-survival bet over the $1B–$4B fantasy"* (HP15/HP14).
- *What decides it:* ticket triage is the **highest-intensity, daily-volume** row (8.3) and second- or third-best-evidenced demand item — and we don't hold it. If daily-use demand concentrates on the service desk, holding quarterly-artifact ground alone is a market-size problem wearing a moat's clothes. If governance is the durable purchase, the non-overlap is the moat.

**Two honesty notes on our own strong ground:** the QBR demand base is n=8 interviews + n=119 survey + n=1 operator (SRC-U-009), and the datadump states plainly **"No client voice exists anywhere in the corpus"** (Confluence 62175674556). The client-facing artifact we lead with has never been evaluated by a client.

**NeoAgent is not only a competitor.** Our own internship handoff concludes: *"**NeoAgent** emerged as the strongest **partnership/OEM candidate** due to its MSP focus, pre-built coworkers, multi-tenancy, PSA/M365 integrations, and ability to accelerate time-to-market"*, and the build/buy/partner decision between NeoAgent and Vertesia is *"not settled"* [CS: HIGH — Confluence 62272799086; HP09]. Its two strongest columns are exactly the two holes in the Vertesia allocation. **Which framing to read the page under is Beth's call, not a finding.**

---

## 7. Open gaps and what would resolve them

| Gap | Resolving artifact |
|---|---|
| Whether triage means field-level PSA classification; which track owns UC-04 | Intent spec **IC-2026-ACP-001** and **`UEM-Coworkers-v2-Backlog.md`** (`nable-fusion/spec-registry`), named authoritative by FSN-84434. Jira is explicit that the spec, not Jira, is canonical. |
| Rows 1–6 capability truth | **The Vertesia capability chart** — cited per use case ("UC-10: 10 Native / 9 Partial of 35"; "UC-6: 6 Native / 5 Partial of 19"; "UC-4: only 2 Native / 7 Absent of 13, **the weakest of the five**") but absent from the corpus. Highest-value missing document. |
| Row 6 mechanism | The Ticket Triage & Dispatch runbook, due wk of Sept 29, unwritten. |
| Whether merge / QA / sentiment were ever considered | **ACP LRP July 2026**, slides 23–25 ("Competitor Research", "Competitive Analysis"), incl. named **"ConnectWise vs Harness"** and **"Kaseya vs Harness"** analyses [Confluence 62272799086]. Plus Nicole's ACP Data Dump `competitors/` folder, 60+ profiles, logged as **"SharePoint not fully pulled"** [Confluence 62175674556]. Human export required. |
| **ACP-46 "Quarterly Business Review" (Implementing) has an empty Jira description** — flagship coworker scope undocumented in the tracker | IC-2026-ACP-001, or Jerel Howland (PM) |
| **FSN-84440 "Coworker operations UI" is Blocked**, reason not in fields pulled | The issue's comments/links, or Miguel Vinuales (EM) |
| Which of Track A's 11 templates exist on the Vertesia runtime at all | Vertesia capability chart + the architecture design starting wk of Sept 8 (Confluence 62302388241) |
| **Value Ledger baselines** — the first number the MSP sees has no researched basis | FSN-81539 Q-001 / S35. A research task, not a lookup. |
| Audit attribution schema disagreement (I29) | FSN-81484 REQ-001 vs the Management-Plane spec — one is wrong |
| What FSN-76931 actually covers | Its empty Jira description, or Rachel Grant / the N-zo team |
| Third screenshot row | Re-screenshot |

---

## 8. Process hazard found during this sweep

Batched Atlassian MCP calls returned **byte-identical results for two different queries** (md5-verified). Run Atlassian searches one at a time or you will read one answer twice and believe you checked two things. Everything in this document was re-run singly. *(This is a live instance of CLAUDE.md's Confluence-write warning generalizing to reads.)*

---

*Generated by the Band Protocol pipeline. Nothing in this document is a decision — the three-fives contradiction (§0) and the moat/market-size read (§6) both require Beth's call.*
