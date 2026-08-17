---
feature: "QBR/EBR meeting-prep simulation (qbr-prep-sim) — Prep-Assemble stage, Package 3 N-able Native"
gate: 30
owner: "Beth Connor"
problem_statement: "MSP delivery leads hand-assemble client-facing quarterly reviews from 8 separate backstage data pulls with no tool at the judgment step; prep self-reported at 4–5h/session, but that baseline is a single transmission-line echo (Vanessa ← Stefanie), not triangulated evidence [R — blueprint Finding 2]"
okr_objective: "De-risk Q2 — does the operator want the mechanism (AI pulls, human judges and defends) or only the destination — before spec 004 build sequencing locks"
okr_key_result: "All three ux.md §6 quality-bar tests executed against the Tier 1 prototype (cognitive walkthrough, 5-second confirm-gate test ×3, ≥60/40 content-audit ratio) by 2026-08-14; results filed as [R] claims into the next spec run"
counter_metric: "Zero internal-note content reachable from the Client-Facing Extract surface (Must 6), and zero time-saved / percentage / graph framing inside client-facing content (Must 1 / DIV-004) — the sim must not get persuasive at the cost of overclaiming"
idea_score: 12
evidence_sources:
  - "briefs/context/qbr-ebr.ux.md (governing doc)"
  - "scout_input/intake-constraints-qbr-prep-sim-2026-07-31.md"
  - "scout_input/qbr-prep-data-sources-2026-07-31.md"
  - "scout_input/will-figjam-mcp-config-2026-07-31.md"
  - "scout_input/acp-repo-qbr-substrate-2026-07-31.md"
  - "scout_input/github-reference-repos-qbr-2026-07-31.md"
status: "draft"
confidence_regime: PROCEED-FLAGGED
proceed_because: "carried from qbr-ebr.ux.md — artifact value to team exceeds cost of withholding during research gap; n=1–2 operator evidence is thin but the simulation is more useful now, as an instrument for the Q2 study, than after it"
machine_behavior: "build · surface [CS:] tags visibly · fidelity = Tier 1 Concept · do not claim validation · Package 3 proceeds; Package 5 gates on Q1 legal"
domain_model:
  entities:
    - "E1 · QBR Advisor (Coworker) — DEC-006 v1 default, priority 2.90, rank 1 of 5; onboarding spec calls it 'QBR Analyst' — naming divergence unresolved [D]"
    - "E2 · MCP Server — endpoint definition, platform-level metadata; never confused with an Instance [D]"
    - "E3 · MCP Instance — account-scoped configured connection holding that account's encrypted credentials [D]"
    - "E4 · Runbook — family/version, immutable snapshots; engine built 49/49 [D]"
    - "E5 · Value Ledger entry — append-only; producer built 55/55 (corrected from '52/52' by grep 2026-07-31); QBR producer not wired, renders $0 [D]"
    - "E6 · Working Document — internal prep artifact: candid notes, operator risk judgments, 'things that haven't happened yet' [R]"
    - "E7 · Client-Facing Extract — a SECOND artifact object, per Must 6; never a redaction toggle on E6 [R]"
    - "E8 · Living documents — risk register, tech roadmap, tech budget, carried cycle to cycle; the real prep substrate [R]"
    - "E9 · Operator (sim persona) — a delivery lead doing her own 8 pulls via the Coworker. In the n=1 evidence the delivery lead does NOT pull — this entity is the brief's central assumption [A]"
    - "E10 · SuperN-able Shop — seed MSP, named by Beth: UK, ~12 staff, ~40 managed clients, full N-able stack + Halo PSA + M365; composite at category level, fictional at instance level [A]"
    - "E11 · Dibbler & Sons Chartered Accountants Ltd — seed client, named by Beth 2026-07-31 (Pratchett homage, replacing spec's 'Ottersley & Vane'): fictional UK SMB, ~48 staff, offices Leeds + York, 61 managed endpoints; every number invented and stamped [A]"
  value_objects:
    - "V1 · Pull 1 — Warranty/EOL · system of record: N-central / N-sight warranty reports [R]"
    - "V2 · Pull 2 — License utilization (no login 3–4 mo) · M365 admin center / IdP login logs [R]"
    - "V3 · Pull 3 — User/staff reconcile · AD or IdP vs. HR roster cross-check [R]"
    - "V4 · Pull 4 — Ticket volume + SLA · Halo PSA reporting [R]"
    - "V5 · Pull 5 — Patch + backup · N-central patch status + Cove job success + restore-test log ('ran' ≠ 'verified restorable') [R]"
    - "V6 · Pull 6 — Phish-sim + training · security-awareness platform [R]"
    - "V7 · Pull 7 — Tenant config vs. baseline · Adlumin health report vs. MSP-authored baseline (the baseline is judgment, not data) [R]"
    - "V8 · Pull 8 — Compliance checklist · Adlumin assessments or manual checklist [R]; which standards apply per client is unnamed in source [?]"
    - "V9 · Pull 9 — Package-gap diff (sold package vs. deployed stack — the risk-register feed) · single speaker, single pass, unnumbered by the blueprint [R] [WOBBLY]"
    - "V10 · Judge step — gap → business consequence → roadmap priority; 'the one moment with no tool at all' [R]"
    - "V11 · reference_health — ok | deprecated | unresolvable | unbound; spec 004 FR-037, the on-screen state machine for 'is this source connected' — spec-complete, 0/40 built [D]"
    - "V12 · baseline_source — tenant_configured | platform_default | coworker_reported; built, in code [D]"
    - "V13 · Defensibility tier — Measured / Benchmarked / Estimated / Unverified; RESOLVED 2026-07-31 by orchestrator grep: zero hits in acp-core-main-3 — the tier is design vocabulary from the briefs corpus (word-sketches, concept-sketches), NOT code; ux.md §6's 'already implemented in code' is wrong; code has baseline_source only. Prototype uses the tier as design grammar, tagged [D — briefs corpus], never as built substrate [D]"
    - "V14 · Readiness score — single-screen prep-completeness indicator; prototype device, no evidenced counterpart [A]"
  services:
    - "S1 · MCP connection lifecycle — server template → account instance → credential fields from get_field_template() / OAuth initiate → discovered_tools + admin denylist → is_active disable → refresh-tools; built in ACP [D]"
    - "S2 · Config journeys (Will Mincher FigJam) — configure → instance → tool selection → auth → manage/reauth/disable, with error states endpoint-down / auth-invalid / URL-blocked; the connection grammar for how each pull arrives [R]"
    - "S3 · Test Connection preview — live validation + real-data echo ('we can see N tickets across N queues'); onboarding spec convention [D]"
    - "S4 · Confirm-gate — hard gate on Unverified-tier content reaching the Client-Facing Extract; auto-draft, human-clears; a passive warning is a fail [R]"
    - "S5 · Council Fast Mode — 7 key tensions + executive summary, ⚡ Hard Mode stub in modal; prototype device per intake [A]"
  ubiquitous_language:
    - "U1 · Coworker ≠ Expert ≠ Agent (locked ACP vocabulary) [D]"
    - "U2 · MCP Server ≠ MCP Instance (locked; Will's board: 'we're connecting to instances of MCPs, not a singular MCP') [D]"
    - "U3 · Prep-Assemble × 8 data pulls — one blueprint stage, eight separate backstage pulls, not one step [R]"
    - "U4 · Dual-surface — two artifact objects, structural; never 'toggle' [R]"
    - "U5 · Echo baseline — the 4–5h figure is one transmitted process measured twice; reductions phrase as ratios, never absolutes [R]"
    - "U6 · 'QBR Advisor' (FSN-83143/spec 004) vs. 'QBR Analyst' (FSN-82692 onboarding) — corpus naming divergence, carried visibly [D]"
---

# qbr-prep-sim — three-gate brief

**Evidence math (three numbers; recount + grep-resolution history in `briefs/qbr-prep-sim-math-recount.md`):**
1. **World-claims [A]+[?]: 7/71 ≈ 9.9%** — under the 30% line. The world model is mostly sourced; it is narrow (n=1, one transmission line), not assumed. (Spec's hand count was 12.7%; two [?]s resolved to [D] by orchestrator grep 2026-07-31.)
2. **Test-plan readiness: 6/7 defined ≈ 86%** — one open item (Apex Tenets & Traps not pulled).
3. **Inflated with meta-TODOs: 29/100 = 29%** — just under the 30% line after resolutions; the bulk is deliberately-invented seed data and an enumerated gap register, named rather than hidden.

**Regime:** PROCEED-FLAGGED, carried from the governing doc. Build it; mark outputs provisional; surface [CS:] tags visibly; do not claim validation. Tier 1 · Concept.

---

## What the simulation is

**Three lo-fi surfaces** (fidelity fitted to the problem — Beth's call 2026-07-31, replacing "one screen" after critic pass 1 scored scope 2/5): the operator at SuperN-able Shop prepping one EBR for Dibbler & Sons. Lo-fi multi-page via the show/hide pattern — still Tier 1 Concept: no wizards, no web components, no multi-modal flows. Bradley rail (candid, internal audience), fidelity banner, and Fast Mode council modal {S5} persist across all three. First-party N-able sources (N-central, Cove, Adlumin) render as pre-connected; the sim takes a position on Jude Scally's open question and flags it **on-screen** (Gate 3).

## Component inventory — the build contract (added post-critic 2026-07-31)

Closes critic-pass-1 gaps 1–8 and 10. Every element states its surface and its interactivity. Anything not listed is OUT.

**Page 1 — Prep Board (internal surface):**
| Element | State | Notes |
|---|---|---|
| Premise banner | Static | F2 countermeasure rendered: the operator-pulls premise stated as [A — the thing being tested], on-screen. *(Added to inventory 2026-07-31 per critic pass 2 — was built but unlisted.)* |
| Client health snapshot | Static | Three etop-am-weighted score cards ({SD4} seed math), weights cited on-card. *(Added to inventory 2026-07-31 per critic pass 2 — was built but unlisted.)* |
| 8 pull cards (V1–V8) | Static + one card expandable (interactive) | Each: pull name · system of record · `reference_health` badge (ok / unbound / deprecated / unresolvable) {V11}. U3's "×8" holds: exactly 8 numbered pull cards. |
| Package-gap diff card (V9) | Static | **The explicit 9th card**, visually distinct, labeled "unnumbered by the blueprint · [WOBBLY — single speaker]" — the V9 exception stated on-screen, resolving the 8-vs-9 ambiguity: 8 pulls + 1 diff card. |
| Connection states | Static badges ONLY | Will's config/auth journey **collapses to badge states** (auth expired · endpoint down · URL blocked · reauth needed) on the third-party cards (Halo, M365, phish-sim). No config flow, no wizard — the journey is NOT exercised, and the brief no longer claims it is. {G3-17-amended} |
| Pre-connected N-able badge | Static | N-central/Cove/Adlumin cards carry a visible chip: "pre-connected [A] — assumes N-able MCPs ship authed (open question, J. Scally)". Gap 10 closed on-screen. |
| **Judge queue (V10 surface)** | Interactive (one demo row) | The evidenced tool-gap gets the page's prime position: pulled gaps land in a queue with two EMPTY judgment fields — "business consequence" and "roadmap priority" — that only the human fills. One row demonstrates the fill interaction; the empty state carries the caption "the one moment with no tool — this is where you come in." Gap 3 closed: the sim renders the gap as a gap, tools the pulls around it. |
| Readiness score {V14} | Static | Lives in the **Bradley rail only** (internal), never on page 2/3 content; labeled on-screen "[A] prototype device — not an evidenced metric." Gaps 5/6 closed. |

**Page 2 — Working Document (internal artifact, E6):**
| Element | State | Notes |
|---|---|---|
| Risk register draft | Static rows + confirm-gate states | Auto-drafted rows carry defensibility-tier chips (Measured/Benchmarked/Estimated/Unverified) labeled "proposed grammar — not built substrate" per resolved {G3-8}. |
| Confirm-gate {S4} | **Interactive — the load-bearing interaction** | Unverified rows render BLOCKED from extract with a hard visual state; clicking "operator clears" flips row to cleared-with-attribution. Block is default; passive-warning rendering is a build FAIL {F3}. |
| Exposure counter | Static | Must 8's machine-specific concern rendered: "This draft documents N detected gaps. Volume of detection is volume of exposure — cleared items enter the client-visible record." Critic's MISSING conversion closed. |
| Coworker admin card + time-saved chip | Static, **quarantined** | DIV-004 demo: renders ONLY on this internal page, inside a bordered "ACP admin surface" frame with caption "this framing never reaches the client surface →". Never adjacent to extract content; page 3 contains zero instances. Gap 7 closed. |
| Candid internal notes | Static seed copy | Content that must be demonstrably ABSENT from page 3 (Must 6 structural check {G3-12}). |

**Page 3 — Client-Facing Extract (second artifact object, E7):**
| Element | State | Notes |
|---|---|---|
| Extract document | Static | Business-value language only (Must 1, ≥60/40 auditable); only confirm-gate-cleared rows appear; zero time-saved/percentage/graph framing; zero legal/liability language (Must 8 {G3-13}); zero internal-note content. A separate page = the structural separation, not a toggle {F1}. |
| Send-to-client footer | Static (disabled) | Labeled "Tier 1 concept — nothing sends." |

**Copy bans (F5 extended — gap 5):** no "4–5h saved" absolutes (ratios only, against the echo-flagged baseline); **no "under 20 minutes" claim anywhere** (ux.md's value-prop promise is an open assumption [P≈0.35, unowned], not copy); **no Value Ledger dollar figures** (producer unwired, renders $0 — any $ is invented twice over); no confident category copy (market is "opportunity or failed category," unsettled {G2-9/G2-10} — rail says so).

**Council modal (Fast Mode, S5):** tension cards are populated from the actual Step-6 council output — **as many tensions as the council names, not a hardcoded 7**. Build ships the modal shell with clearly-labeled "council pass pending" slots; the orchestrator patches real tensions in after Step 6. Synthesis slot ships as `[0% Beth — fill this in]`. Gap 8 closed: zero invented tensions.

**Interactivity contract (critic MISSING closed):** interactive = page navigation, confirm-gate clear action, one pull-card expand, one judge-queue row fill, council modal open/close, 3-way mode toggle. Everything else is painted. This is the minimum set the three Gate-3 tests need (walkthrough, 5-second gate test, content audit).

**Precedence rule (gap 4):** where this brief and ux.md disagree on substrate claims (e.g., footnote 59's "tier already implemented in code"), **this brief's grep-resolved claims override ux.md**. ux.md footnote 59 correction is applied separately.

---

## AMENDMENT 2 — hi-fi rebuild (Beth, 2026-07-31, verbatim: "we need to pull the data assume we do more batching/data pulling with ai. i ALSO WANT industry trends… hi-fi is okay and use the ux.md file for qbr/ebr")

**Supersedes the lo-fi component inventory above for build v2. The lo-fi build (v1, browser-verified) stands as the Tier 1 record.**

**Premise v2 — AI as the puller [A, sharpened].** The QBR Advisor Coworker executes the Prep-Assemble batch — all 8 pulls + the V9 package-gap diff + the new V15 industry-trends sweep — as a single run. The operator triggers the run, watches the feed, answers approval gates, then judges. This REPLACES the v1 premise-blend: the Coworker takes the Head of Technical Overview's pull labor {G1-6}; the operator keeps the Judge step {G1-7} — the evidenced division of labor is preserved with a tool inserted into the technician slot. Still [A] (the operator study hasn't run; F2 premise-laundering flag carries in full), but no longer blending two people. The rail must state this version of the premise.

**New domain-model items:**
- "V15 · Industry-trends sweep — agent web search on the client's public industry context → 'top three trends in your industry' as discussion points feeding Business Priorities (brains-work). Sourced: Chris Dunlop proposal, Stefanie endorsing — [CS: VERIFIED as design conversation, NOT observed practice — transcript:195–200 (49:45–53:45)]. Non-system source; renders at Estimated/Unverified tier ALWAYS (web-gathered, unverifiable in-platform); trends content is seed data (plausible UK-accountancy trends: MTD digitisation, AI adoption in practice work, cyber-insurance documentation demands — invented, stamped) [R for the source; A for content]"
- "S6 · Batch run — Coworker executes the pull batch as one run; progress = run_audit artifact feed (polled, no token streaming), approval gate pauses the run until human signal. Grammar is BUILT in ACP for flat coworkers [D]; the QBR-specific runbook is not {G3-3}"

**Fidelity: hi-fi · Tier 2 · Direction.** Gate moves 30 → 60 for the artifact; the EVIDENCE regime does not move (PROCEED-FLAGGED, n=1, echo — hi-fi raises artifact fidelity, not evidence; the fidelity banner must say exactly this). Tier 2 [A]+[?] threshold is 40–60%; we sit at 9.9% world-claims — under.

**Build v2 contract (hi-fi per skill spec):**
- **4 pages** via the hi-fi page-as-function pattern (`views.*` + `setView()`, reference prototypes/acp-v1/index.html): ① **Run** — batch-pull execution feed (10 rows: 8 pulls + V9 + V15), per-row status (queued → pulling → done / error), run_audit-style sequenced artifacts, ONE approval-gate pause mid-run ("Coworker requests approval: HR roster cross-check touches employee PII" — human approves/declines), Will's error grammar live (Halo reauth event, phish-sim endpoint-down event); ② **Prep Board / Judge** — post-run: health snapshot w/ micro-charts, judge queue (prime position, unchanged doctrine), pull results incl. V15 trends card; ③ **Working Document** (E6) — register + confirm-gate + exposure counter + quarantined Coworker card + candid notes; ④ **THE REPORT** (E7) — see below; disabled send.

**AMENDMENT 2b — page ④ is the star (Beth, 2026-07-31, verbatim: "less book report -- more strategic advisor -- deliverable is a polished deck… it can look like a really beautiful report here. Ideally showing what we can pull from adlumin, cove, n-central -- simulate… make a stefanie worthy report -- goal make something stefanie would be proud of").**

Page ④ is a **polished, deck-grade EBR report** — strategic-advisor voice, print-quality layout, the artifact the whole prep produces. Its rubric is Stefanie Hammond's own evidence:
- **Section spine = her 15-tab template** [CS: VERIFIED — Executive Business Review Template 1.xlsx, ux.md §2]: Meeting Kick Off · Current Climate · Risk & Security Review (register with HER columns: Threat/Risk · ID Date · Risk Level · Existing Controls · Treatment Plan · Progress Status · Residual Risk · Risk Owner) · Compliancy Review · Business Priorities & Goals (V15 trends feed here) · Hardware & Software Asset Review · Employee Review · Technology Roadmap · Technology Budget (ranges, not ledger $) · Referrals & Testimonials · Post-Meeting Action Items (each one "→ Halo ticket" per her explicit instruction) · Next Meeting Planning. (Agenda/KPIs tabs may compress into kickoff/footer.)
- **Her magic-wand asks are the quality bar** [CS: VERIFIED — followup transcript]: populated risk register · **insights not data** ("here's the data, here's the risk, this is what it means to you, the impact and consequences" — every section leads with the so-what) · **talking points in "the love language of the business owner"** (a script strip per major section) · **red/yellow/green grade** (RAG scorecard up front).
- **Source attribution is the demo**: every section carries visible source chips — Adlumin (security/compliance) · Cove (backup/restore) · N-central (patch/asset/warranty) · Halo PSA (tickets/SLA) · M365 (identity/licenses) · phish-sim · industry-trends sweep — showing what the N-able stack can pull, simulated. This is Beth's "what we can pull from adlumin, cove, n-central" ask made visible.
- **Musts still bind**: business-value framing throughout (Must 1, ≥60/40); cleared-rows-only (confirm-gate); zero liability-shield language (Must 8 — the register documents and treats risk, it never claims to shield); zero time-saved/percentage-of-effort framing (DIV-004); "conversation with a side serving of structure" register — strategic advisor, not book report [CS: VERIFIED — Stefanie's phrase].
- Report is still the SECOND artifact object (E7) — assembled from cleared Working Document content, never a toggle.
- **apx-* web components** (apx-sidebar, apx-productbar, apx-card, apx-badge, apx-table minimum — copy definitions from acp-v1 per skill extraction strategy), **ICON catalog** (inline SVG, lucide-style, stroke=currentColor), **micro-charts** (miniSparkline for ticket volume; miniBarChart for backup success — token-colored, no libraries).
- **One interactive flow as a modal: the Halo PSA reauth** — Will's manage/reauth journey exercised for real this time (from the Run page error event → reauth modal → field template per ACP `get_field_template()` grammar → instance restored → pull resumes). This replaces v1's badges-only collapse for ONE source; others stay badges.
- **Cross-page interaction:** clicking a completed pull row on Run opens its result on Prep Board; judge-queue items link to their register rows on Working Document.
- All v1 doctrine carries: dual-surface two objects, confirm-gate hard block w/ attribution, copy bans (no 20-min, no ledger $, ratios only), on-screen [A]/[CS:]/[WOBBLY]/SEED stamps, quarantine frame, council modal shell w/ pending slots, rail w/ 4 routed cards, attribution slot, apx-mode-pref 3-way toggle.
- Hi-fi check matrix (banner): ✓/× per skill (tokens from Apex source ✓ · apx-* components ✓ · schema.json contract × · a11y baseline ~ · production data binding × · dark mode parity ✓).
- Target: ~3,500–5,000 lines. Seed run duration/timestamps invented + stamped.

**What hi-fi does NOT change:** evidence math (world-claims 7/71 ≈ 9.9%); the 9-item gap register (Q2 still unfielded); the market unsettledness; the echo baseline. The banner and rail carry all of it.

---

## Gate 1 — Is the problem real?

Sourced, but narrow, and the sim's premise diverges from it in one named place.

**The cost claim.** Prep runs 3–7h/quarter [R] {G1-1} per Stefanie Hammond (vendor-relayed), ~4–5h/session per Vanessa Chart, n=1 [R] {G1-2}. These two figures are **an echo, not triangulation** — Vanessa adopted the framework *from* Stefanie's training; both measure the same transmitted process once [R — blueprint Finding 2] {G1-3}. Constraint carried into the prototype: any reduction claim is phrased as a ratio against this one conversational self-report, never as an absolute [R] {G1-4}. The sim's fidelity banner shows the baseline as "self-reported, n=1, echo" — not as a stat.

**The moment.** All 8 pulls are backstage-only; the client never sees them; only the business-value translation and the extract cross the line of visibility [R] {G1-5}.

**THE STRUCTURAL DIVERGENCE — who pulls.** In the n=1 evidence, the delivery lead does not pull: the Head of Technical Overview does all 8, pulled off paying service-desk work for the whole batch [R] {G1-6}; Vanessa's prep role is the Judge step — gap → business consequence → roadmap priority — and it is the one moment with no tool at all [R] {G1-7}. **The sim's premise — the operator pulls her own sources via ACP Coworker — has no direct source; it blends two people [A] {G1-8}.** The counter-case that a solo operator doing her own pulls exists at all is Stefanie's own pre-2021 CSM history: 75–100 accounts, quarterly EBRs, Excel and handwritten notes, no delegate [R] {G1-9}. Position taken: simulate the solo-pull premise anyway, because (a) the operator-mechanism question has never been studied — every demand signal in the corpus is buyer purchase-intent, the operator is the Q2 gap [?] {G1-10} — and the sim exists to make that question concrete; (b) a 12-person shop like SuperN-able Shop plausibly has no dedicated technical-overview role to delegate to — inference, unsourced [A] {G1-11}. The Bradley rail names this premise as the thing being tested, not a finding.

**Representativeness.** All operator evidence is n=1 from a vendor-selected reference customer — directional only [R] [WOBBLY] {G1-13}. Nicole Reineke's altitude check (is Vanessa representative?) has not been run [?] {G1-12}.

## Gate 2 — Are we making the right thing?

**Scope: Package 3 — Client-Facing Proof, N-able Native.** Beth's persona constraint (super N-able customer: N-central, Cove, Adlumin, UEM) selects this branch; Package 5 stays gated on the Q1 legal read and is out of this simulation [D] {G2-7}. First-party telemetry means "Measured" is defensible on day one with no normalization — real but narrow.

**Priority evidence.** DEC-006 ships QBR Advisor as the #1 v1 platform default — priority score 2.90, best of five [D] {G2-1} — but the score traces to a single 22-partner interview catalog [D] [WOBBLY] {G2-2}, and **which branch DEC-006 assumed is open (DIV-001) — needs Nicole directly [?] {G2-3}.** Demand signals so far are buyer purchase-intent only; the operator has never been directly studied [R] {G2-4}. This sim is Gate-2 work precisely because it converts the Q2 question into something fieldable — it is an instrument for the operator study, not evidence of demand [A] {G2-8}.

**Market shape.** No shipping, generally-available MSP-specific AI QBR tool with real PSA writeback was found — possibly a search blind spot [R] {G2-9}; and one vendor (Zomentum) built and killed this exact feature in July 2024 [R] {G2-10}. Opportunity or failed category — the sim doesn't settle that; it must not pretend to.

**DIV-004 — the tension this prototype must render, not resolve.** FSN-83143 §5 sets time-saved / reduced-headcount as the Coworker-wide UX north star, visible on every Coworker card; Must 1 bans exactly that framing inside client-facing QBR content [D] {G2-5}. Different surfaces, so not a hard contradiction — but a real bleed risk if the card pattern gets reused inside QBR output. The sim shows both surfaces doing the right thing: time-saved chip on the Coworker card (admin surface), business-value language only in the extract. Resolution owner: Beth → Nicole; open [?] {G2-6}.

## Gate 3 — Are we building the thing right?

**Substrate honesty (fidelity banner content).** No PSA, RMM, M365/IdP, backup, GRC, or license-management system is wired into the ACP codebase — every one of the 8 pulls would need a connector registered from scratch [D] {G3-1}. No frontend and no auth exist in the repo [D] {G3-2}. Spec 004 (the QBR Advisor's home) is 0/40 tasks built [D] {G3-3}. What IS built: Runbook Engine 49/49 [D] {G3-4}; Value Ledger 55/55 — corrected from "52/52" by grep 2026-07-31 [D] {G3-5}; the full MCP connection lifecycle (server → instance → credential field templates / OAuth → discovered_tools → disable/reauth) [D] {G3-6}. `reference_health` (ok|deprecated|unresolvable|unbound) is spec-only, not built — the sim may use it as UI grammar, not claim it runs [D] {G3-7}. **Source conflict — RESOLVED 2026-07-31:** ux.md said the Measured/Benchmarked/Estimated/Unverified tier is "already implemented in code"; orchestrator grep of the full repo returns zero hits — only `baseline_source` (tenant_configured | platform_default | coworker_reported) exists in code. The tier is design vocabulary from the briefs corpus. The sim renders it as proposed grammar over baseline_source, never as built substrate [D — grep 2026-07-31] {G3-8}.

**What "testable" means at Tier 1 Concept** — the three ux.md §6 quality-bar tasks, all runnable against a static screen before any production code:
1. **Cognitive walkthrough** — walk each prep task as the operator; at each step, can she tell what to do and whether it worked; ~2h solo [R] {G3-9}.
2. **5-second test on the confirm-gate** — 3 people, "what does this mean, what would you do next"; if they can't tell, the gate is a passive warning, not a block — fail [R] {G3-10}.
3. **Content audit on draft output** — count business-outcome vs. technical-metric sentences in the seeded talking points; <60/40 business-outcome = the default copy isn't working [R] {G3-11}.

**Done means:** all three tests executed and filed, plus the Must 6 structural check — internal-draft content demonstrably absent from the extract object [R] {G3-12} — plus the Must 8 language check — zero legal/liability-protection language anywhere client-facing [R] {G3-13}. Tested by Beth + internal team (audience per intake); results become [R] claims in the next spec run.

**SUS ship gate (parent acp-ux.md §6, Beth's 2026-07-30 call — added 2026-07-31 after parent-doc read):** ≥6 SUS to ship at all; ≥8 SUS on the top five key tasks [D — acp-ux.md]. Applies to this offering when it moves past prototype toward ship; not runnable against a Tier 1/2 artifact, but the bar is named here so no later spec re-derives it {G3-19}.

**[AGENT GATE] compliance (acp-ux.md, read in full 2026-07-31):** parent read confirmed; regime PROCEED-FLAGGED honored; [A]/[?] flagged throughout ({G1-8}, {G3-17} et al.); DIV-002/DIV-004 surfaced per rule 10, not resolved; open decisions (Q1, Q2, DEC-006 branch) named, routed Beth → Meaghan → Nicole; ratios grep-verified by Bradley gates. The sim persona (delivery lead) is the mini's cast per DIV-002 — the alpha-persona lock (owner = USER-001, Beth 2026-07-30, do-not-reopen) is untouched by this brief.

**Quality floor.** Nielsen #1 (gate status unambiguous), #4 (defensibility tiers render consistently), #5 (auto-drafts hard to ship, not easy to approve), #6 (recognition over recall for a non-technical, time-pressured operator) [R] {G3-14}. Apex / N-able Tenets & Traps not pulled yet [?] {G3-15}.

**Connection grammar.** Error and visibility states come from Will's board: endpoint down, auth invalid, URL blocked, reauth, "potentially whitelisted MCPs only" [R] {G3-16}. MVP auth is user-level connection per Ben Casling's sticky [R] {G3-18}. Jude Scally's open question — are N-able MCPs there and authed by default? — the sim answers **yes** (N-central/Cove/Adlumin render pre-connected) and flags the answer as assumed [A] {G3-17}; the third-party sources (Halo PSA, M365, phish-sim) exercise the full config/instance/auth journey instead. **Evidence update 2026-07-31 (scout_input/nable-mcp-landscape-2026-07-31.md):** the official N-able MCP Server (N-central/N-sight) is in public preview with read-only + read-write endpoints [CS: VERIFIED], and an Adlumin customer-scoped MCP is in-flight (ADL-2031) [CS: MEDIUM — Copilot-relayed, primary unread]. MCP *existence* for the first-party stack is trending [A]→[D]; **pre-authed by default** — Jude's actual question — remains open [A].

## Failure modes

1. **Dual-surface regression.** One document with a redaction toggle instead of two artifact objects — an accidental un-toggle is a client-visible incident. The prior Tier-1 prototype failed exactly here; council caught it [R] {F1}. Non-configurable: two objects in the seed data model, two surfaces on screen.
2. **Premise laundering.** The sim's "operator pulls via Coworker" is [A]; if the prototype is persuasive, that assumption gets read back as evidence the operator wants it. A simulation is not a study — the rail must say whose question this answers and whose it doesn't [A] {F2}.
3. **Confirm-gate theater.** A visible warning requiring no action reads as permission, not a stop — warning-fatigue finding [R] {F3}. If the 5-second test fails, the gate is decoration.
4. **DIV-004 bleed.** The Coworker-card time-saved pattern leaking into the client-facing extract — the exact surface collision the divergence log warns about [D] {F4}.
5. **Echo reification.** Rendering "4–5h saved" as a hard baseline stat anywhere in the UI — the number is a single self-report in one transmission line [R] {F5}.

## What's missing — named, not filled

- Q2: the operator study — mechanism vs. destination; gates the interaction design itself [?] {M1}
- Observed pull order for a single operator — no source; the sim's sequence is assembled, not watched [?] {M2}
- Which compliance standards apply per client (Pull 8) [?] {M3}
- Who enters follow-up tickets — operator or delegate [?] {M4}
- Vanessa's raw transcript URL (B3) — her tool names beyond Halo are generic [?] {M5}
- ~~Defensibility-tier implementation truth~~ — RESOLVED 2026-07-31: grep confirms tier is NOT in code (briefs-corpus vocabulary only); ux.md §6 footnote-59 claim needs correcting [D] {M6}
- Which branch DEC-006 assumed (DIV-001) — Nicole [?] {M7}
- MCP Configs spec (soft-delete, attached-agent confirmation, tool governance) — not in tree [?] {M8}
- Real distribution of MSPs running structured QBRs — the "only 20%" figure is uncited vendor content [?] {M9}

## Seed data

**Rule applied (Beth's):** composite at the category level, fictional at the instance level. Every number stamped `SEED DATA — invented 2026-07-31`. Front-page test: nothing here embarrasses anyone if public; no real tenant, client, or pricing data anywhere.

**Anonymization rule (Beth, 2026-07-31, verbatim: "you will anonymize all data"):** binding on every future iteration that touches real data — N-able MCP pulls, Jira/Confluence content, transcripts. Real org/person/tenant identifiers are replaced with fictional ones BEFORE any artifact write; free-text is paraphrased, never quoted with identifiers; the real→fictional mapping is never persisted. Applies on top of (not instead of) the fictional-seed-data rule above.

- **MSP:** SuperN-able Shop (named by Beth) — UK, ~12 staff, ~40 managed clients; N-central + Cove + Adlumin + UEM, Halo PSA, M365 [A] {SD1}.
- **Client:** Dibbler & Sons Chartered Accountants Ltd (named by Beth — Pratchett homage; replaces spec's "Ottersley & Vane") — fictional UK SMB; ~48 staff, Leeds + York, 61 endpoints, EBR cadence 6-monthly; obviously-fictional literary reference doubles as a front-page-test pass; invented, stamped [A] {SD2}.
- **From licensed sources, structure only:**
  - Evidence-to-gather / context-to-gather checklist labels and Executive Security Scorecard rows (Identity & MFA · Endpoint · Backup & recovery · Patching & vulnerability · IR readiness) — Northsignal Labs template pack, MIT with attribution, attribution retained [D] {SD3}.
  - Three composite health scores computed with etop-am's verbatim weightings (Standards: 20/30/20/15/15 · Risk: 30/25/25/20 · Experience: 25/20/25/15/15), ISC license [D] {SD4}.
  - Metric names (MFA coverage, devices missing EDR, critical patches overdue, backup jobs successful, restore tests completed, phishing blocked) — Northsignal [D] {SD5}.
- **Invented:** every metric *value*, ticket count, score input, and register row [A] {SD7}. Mapping Northsignal/etop metric names onto Adlumin/Cove/N-central territory is our move, not the sources' [A] {SD6}.
- **License caveat:** both repos' LICENSE file texts were not individually opened — license claims rest on README statements [?] {SD8}. Both repos are 0-star solo projects: vocabulary sources, not industry consensus [noted, WOBBLY — carried from scout].

## Idea score basis

12/20. Gate 1 strong-but-narrow (problem sourced, single transmission line, premise divergence named); Gate 2 evidenced priority (DEC-006 #1) with two open forks (branch, DIV-004); Gate 3 thin substrate (0/40 on the governing spec, no connectors) but honest, cheap, and fully testable at this tier. The score is spec's rubric read, not a validation claim.
