---
feature: "ACP QBR Analyst (AI Coworker)"
gate: 30
owner: "Beth"
problem_statement: "MSPs spend senior hours each quarter hand-assembling QBRs from 6-8 disconnected tools (PSA, RMM, security, backup, identity); no tool normalizes cross-stack today, and the current N-Zo experience is trusted-gapped on data completeness and exportable reporting. [R][D]"
okr_objective: "Make the QBR the first AI coworker MSPs trust enough to send with minimal editing."
okr_key_result: "70%+ of test partners say they would send the draft with under 15 minutes of editing, AND can explain the provenance of every number, by end of council + first build cycle."
counter_metric: "Trust must not degrade: zero partners report they would send a number they could NOT trace to a source; fabricated/ungrounded figures in draft output = 0."
idea_score: 14
evidence_sources: ["Confluence: BLIND INTERVIEWS ACP - June 2026 Study (Nicole Reineke, 8 demand interviews)", "Condens: N-Zo time-savings; N-Zo in preview; Empower 2026", "Web: competitive intel / integration reality-check / benchmarks"]
status: "draft"

domain_model:
  entities:
    - name: QBRReport
      tag: "[A]"
      note: "The draft artifact the coworker produces. Existence demanded [R]; its structure/fields are assumed — nobody described the report object directly."
    - name: Customer
      tag: "[R]"
      note: "End-client the QBR is about. Whole-portfolio reporting named by Jonathan/Matt [R]."
    - name: Integration
      alias: "DataSource"
      tag: "[R]"
      note: "PSA/RMM/security/backup/identity connectors. 6-8 tools named as the feasibility watch-item [R]. Specific vendor set [D] (Matt's stack verbatim)."
    - name: ReportSection
      tag: "[A]"
      note: "Sub-units of the report (e.g. security posture, backup status, lifecycle). Section management is Beth's Step-3 hypothesis, not sourced."
    - name: DataPoint
      tag: "[A]"
      note: "A single number with source provenance. Provenance requirement grounded [D] (trust-through-transparency, Empower); the DataPoint-with-source object model is assumed."
    - name: AudienceMode
      tag: "[D]"
      note: "Executive vs technical framing. 'Narrative reports for executives' corroborated at Empower [D]; the mode SELECTOR as UI is assumed [A]."
    - name: Gap
      alias: "MissingData"
      tag: "[A]"
      note: "Missing/incomplete data surfaced as a gap-not-error. Data-completeness IS a named gap [D]; treating it as a first-class flagged entity in the UI is Beth's design move [A]."
  value_objects:
    - name: SourceProvenance
      tag: "[D]"
      note: "Which tool a DataPoint came from + freshness. Transparency demand [D]; shape assumed [A]."
    - name: TrustState
      tag: "[A]"
      note: "Whether a section is send-ready / needs-review / gap-blocked. Design construct, unsourced."
    - name: PrepTimeBaseline
      tag: "[?]"
      note: "Hours saved. Direction hours->minutes [D]; exact 90->17.5min/80% behind JS-gated report body [D verify-in-browser]; Vitali's 15-20hr [?] (public sources say 3-8hr / 4-6hr)."
  services:
    - name: PullData
      tag: "[R]"
      note: "Ingest from 6-8 tools. Deepest integration set of any coworker = the study's named risk [R]."
    - name: NormalizeCrossVendor
      tag: "[R]"
      note: "Reconcile across PSA+RMM+security+backup. Demanded ('holy grail', Kenneth) [R]; no public tool does it today [D-absence]. Hardest service; feasibility watch-item."
    - name: GenerateDraft
      tag: "[D]"
      note: "Produce the draft report. Report-generation time savings verified in direction [D]."
    - name: FlagGap
      tag: "[A]"
      note: "Surface missing data as a gap, not an error. Core to Step-2 trust thesis but the behavior itself is assumed."
    - name: AdaptToAudience
      tag: "[D]"
      note: "Reframe for exec vs technical. Narrative-for-executives corroborated [D]; interaction assumed [A]."
    - name: EditReport
      tag: "[A]"
      note: "Human review/edit of sections. Step-3 hypothesis, unsourced."
    - name: Export
      alias: "Publish"
      tag: "[D]"
      note: "Exportable reporting named as a top gap twice (Condens #2, #3) [D]."
  ubiquitous_language:
    - term: "QBR"
      tag: "[R]"
      note: "Quarterly Business Review. Jonathan reframed SBR->QBR; QBR is the pinned term."
    - term: "Coworker"
      tag: "[R]"
      note: "ACP framing - AI coworker, not tool/agent. From the study's own ranking tab."
    - term: "draft"
      tag: "[A]"
      note: "Output is a draft the human owns and sends, never auto-published. Autonomy-gated posture is [R]; calling the artifact a 'draft' is the design choice [A]."
    - term: "gap-not-error"
      tag: "[A]"
      note: "Missing data framed as a gap to fill, not a system failure. Beth's trust-language move."
    - term: "audience mode"
      tag: "[D]"
      note: "Exec vs technical narrative framing [D corroborated]."
---

## Readiness note (read first)

This brief is **NOT uniformly ready** — and that is the honest signal, not a defect. The **demand/problem layer (Gate 1) is well-sourced** (Nicole's 8-interview study + three Condens artifacts). The **experience/test layer (Gate 3) is almost entirely [A]** because **nobody described the UI directly** in any source. The primary screen Beth wants to test — Step 2, the draft-report landing / trust moment — is a design hypothesis, not a sourced requirement.

Three-number honest math (see acp-qbr-analyst-math-recount.md for line-by-line):
- **World-claims [A]+[?]: 24% (8/33)** — the LEAD number. Under 30%. Passes Tier 1.
- **Test-plan readiness [A]+[?]: 93% (13/14)** — the experience layer. Does not pass. This is why gate = 30, not higher.
- **Inflated [A]+[?] (all buckets): 41% (21/51)** — over 30%, driven entirely by the experience layer.

**Fidelity: Tier 1 · Concept.** It passes the gate for a Tier 1 concept on the strength of the world evidence, with an explicit caveat: everything below Gate 1 is a hypothesis to be shot at by the council, not validated design.

**Round-2 update (2026-07-06):** a 16-question competitive/market deep-dive is folded in — see new **Gate 1b** (competitive & framing reality), the sharpened **value play** in Gate 2, and new unknowns. Headline shifts: ScalePad reframed the category to an "operating system" (don't fight on "better QBR"); deck-gen is commoditizing (race normalization + decision-driving instead); "lifecycle management" is ScalePad's frame not the industry's; plug-in-via-MCP is a real path; and buying **Gradient** could acquire the normalization moat. Decision-owners: Beth, Meaghan, Nicole.

---

## Gate 1 — Do we understand the problem? (real & sourced)

Strongest gate. The problem is real and sourced, not assumed.

- QBR Analyst ranked **#1 of 9 coworkers**: total 31, avg 7.8/mention, 4 of 8 interviews, ranked #1 three times, volume 8/8, autonomy 8/8. [D] (study's Coworker Ranking tab)
- Named by **Kenneth, Jonathan, Shawn, Matt** — actual roles: principal consultant/owner, VP of Technology, VP of Strategy (advises 200+ MSPs), CISO. [R]
- The **feasibility watch-item is explicit and the study's own**: deepest integration set of any coworker, 6-8 tools (PSA, RMM, security, backup, identity). [R]
- **Autonomy-gated**: read-only diagnostics first; report generation is read-only so no autonomy concern for QBR specifically. [R]
- **Target buyer = larger side of SMB, not enterprise** (most-mature shops run their own control plane = displacement risk). [R]
- **Data trust + exportable reporting are the top gaps** in the current N-Zo experience — corroborated twice (Condens #2 preview + #3 Empower). [D]
- **Time savings run hours -> minutes for report generation.** [D] Exact "90min -> 17.5min / 80%" is **[D, verify-in-browser]** — behind a JS-gated Condens report body; do NOT quote as [R].
- **No tool normalizes cross-stack today** (PSA+RMM+security+backup+identity). Cognition360 = ConnectWise-only; BackupRadar = backup only. [D-absence] — this is absence-of-evidence [WOBBLY], proof no one advertises it, not proof of a void.

Corrections baked in (do not repeat the integrated brief's errors):
- **ScalePad "displacement window" is SHAKY.** Lifecycle Manager X is the NEW top tier ScalePad is *selling* (launched Aug 2025), not a discontinued product. Lifecycle *Insights* is the legacy product with no announced EOL. The displacement-urgency framing is **[A]/[?], not [R]** — Beth to reconcile with Kenneth's account. [contradiction named]
- **"~30% AI efficiency"** from VC rollups = **[?] FABRICATION RISK.** No public source attributes 30% to STP/Titan/Treeline. Do not state as fact.
- **Kenneth's "$300+/user/month"** = **[?]** respondent-reported; ScalePad publishes no per-user pricing.
- **Vitali's "15-20 hours"** = **[?]** respondent-reported; public sources say **3-8 hrs (4-6 hrs typical)**. Name the range, don't pick the high end.
- Vendor spellings: **Axcient** (not Axient), **Rubrik** (not Rubric); Avanan is now Check Point Email Protection.

## Gate 1b — Competitive & framing reality (round-2 research, 2026-07-06)

Added after a 16-question competitive/market deep-dive. Full synthesis: `prototypes/acp-qbr-analyst/round-2-findings.md`; sources in `scout_input/acp-qbr-analyst/` (scalepad-deep-dive · vcio-vciso-industry-practice · landscape-plugin-crossindustry · ma-acquisition-targets).

- **ScalePad moved up a level.** It reframed from "QBR/vCIO tool" to *"Five products. One operating system"* for customer success; Lifecycle Manager is "the hub," other products "feed it signals"; standalone Lifecycle Insights de-emphasized. [CS: HIGH] **Competing on "a better QBR" fights the wrong battle — the contest is the operating layer around the client relationship.**
- **"Lifecycle management" is ScalePad's frame, not the industry's.** The category is frame-contested: lifecycle mgmt (ScalePad) · technology alignment (TruMethods/myITprocess) · vCIO (role) · customer success (emerging). [CS: MEDIUM] N-able should pick a frame, not inherit ScalePad's. Strongest open ground: **customer success / "Most Valuable Partner."**
- **Deck-generation is commoditizing.** ScalePad Copilot ("QBR decks in seconds," on an MCP server), Cassidy, Cast.app, Plus AI, DemandFarm all generate QBRs. [CS: HIGH] **Do not race deck-gen.** The defensible races are cross-vendor **normalization** (the moat) and **decision-driving**.
- **The cross-vendor white space holds** across a wider field (10+ players): all are single-ecosystem or single-job. [CS: MEDIUM — absence]. Pricing is near-universally opaque (value-based, not commodity). Funding flows to *adjacent* jobs (automation, vCISO), not QBR-as-product. [CS: HIGH]
- **The quarterly ritual is itself under question** — a "kill the QBR" camp (CloudRadial) and "continuous review" (Cast.app) exist. Opening to reframe **quarterly event → continuous advisor.** [CS: MEDIUM]
- **Plug-in is a real GTM path.** ScalePad exposes an MCP server + open APIs; **Rewst already integrates N-able N-central + N-sight** and normalizes ticket data. A QBR agent could *consume cross-vendor data via MCP/APIs* ("works with these") rather than only compete — lowering Enter/integration risk (#1) and fitting the platform-embedded concept. [CS: HIGH]
- **Buy-vs-build the moat:** acquiring **Gradient MSP** (cross-vendor normalization, *already Cove-integrated*, ~$8M raised) could close riskiest-assumption #2 outright; **Liongard** is the deepest config-normalization alternative; **vCIOToolbox/CloudRadial** (already N-able partners) buy the delivery layer. [CS: HIGH facts / [A] fit] — decision for Beth, Meaghan, Nicole.

## Gate 2 — Are we making the right thing? (advances mission)

- Advances ACP mission: this is Nicole's **"clearest build-first AI coworker"** — most broadly demanded AND high-intensity. [D]
- **Objective:** make the QBR the first coworker MSPs trust enough to send with minimal editing.
- **Key result:** 70%+ of test partners would send with <15 min editing AND can explain every number, by end of council + first build cycle.
- **Counter-metric:** zero partners report they'd send a number they cannot trace to a source; ungrounded figures in output = 0. (Trust cannot be traded for speed.)
- Tension to hold for council: **"build it into the RMM" caps WTP** [R] — buyers may expect QBR as a feature they already own. The value must clear that bar.
- **Value play (round-2 sharpening):** the core JTBD is **NOT "eliminate prep time"** (commoditizing — every agentic-QBR tool claims it). It is **"make me the client's trusted strategic advisor / Most Valuable Partner — and grow the account."** Time-savings is the entry hook; the value is **credibility + account growth.** The QBR is a *communication event whose real job is driving a decision* (the priced opportunity slate → one commitment). The agent's value is teeing up that decision with cross-vendor evidence the vCIO can defend — not generating a deck. [CS: MEDIUM — synthesized from round-2 competitive + cross-industry (Gainsight/EverAfter/Cast.app) convergence on customer-success + assessment-led growth]

## Gate 3 — Are we making the thing right? (tested how, by whom, success signal)

Weakest gate. Almost entirely [A]. Nobody described the UI.

- **Primary screen to test:** Step 2 — the draft-report landing (the trust moment). [A]
- **Secondary:** Step 3 — review/edit with audience-mode selector + section management. [A partly, [D] on audience-narrative existence]
- **Stimulus:** a QBR draft for a fictional mid-size customer (150 endpoints; ConnectWise + NinjaOne + SentinelOne + Cove) with ONE deliberate gap — backup status missing for 3 devices. [A design construct; vendors real [D]]
- **Success signal:** partner says (1) "I'd send this with under 15 minutes of editing" and (2) "I can explain where every number came from." [A — derived from [D] trust/transparency demand]
- **Tested by whom:** council pass this round (no build); then MSP test partners resembling the study roster. [?] — recruitment not yet planned.
- **What counts as done (this round):** the council has surfaced the holes in the Step-2 trust hypothesis; the [A] experience claims are converted into explicit testable questions. Not a working screen.

## Failure modes (at least two)

1. **The gap reads as a bug, not a gap.** If Step 2 surfaces "backup missing for 3 devices" in a way that feels like the coworker failed, trust collapses at the exact moment we're testing for it. gap-not-error is an unsourced [A] bet.
2. **Provenance theater.** Showing source labels that partners can't actually drill into = fluency without accountability. The counter-metric ("can explain every number") fails silently if provenance is decorative.
3. **Normalization is where it dies.** NormalizeCrossVendor is the hardest service and the study's named feasibility risk. A demo that fakes clean cross-vendor data hides the one problem that determines whether this is buildable.
4. **"Build it into the RMM" undercut.** If partners see this as something N-central/Ninja should just include, WTP caps and the standalone-coworker framing loses.

## What's missing (honest unknowns)

- The actual 4-step flow, trigger modes, and what specifically earns vs kills trust in the UI — **all [A].** [?]
- Exact time-savings figures (90->17.5 / 80%) — behind JS-gated Condens body. [?] verify in browser.
- Test-partner recruitment plan and sample size. [?]
- Whether autonomy stays read-only at v1 or moves to write-with-approval. [?]
- How Gap is represented as a first-class object vs an inline note. [?]
- Reconciliation of Kenneth's ScalePad account vs public product roles. [?]
- Whether "150 endpoints / 4-vendor" stimulus matches the target-buyer profile (larger SMB) or is too small. [?]
- **Buyer-vs-user gap (round-2):** Nicole's study measured *buyers/economic-decision-makers* (owners, VPs — "would you pay?"). The daily **user persona** — the vCIO/analyst who'd operate the agent — was **not studied.** Demand is buyer-side; user-side evidence is thin. [?] This is the same hole as the 93%-[A] experience layer and the SDT competence question.
- **Which frame do we choose** — customer success vs. lifecycle vs. tech-alignment vs. vCIO? Inheriting ScalePad's "lifecycle" by default is a choice, not a given. [?]
- **Build vs. buy the normalization moat** — build (Gate A) or acquire (Gradient/Liongard)? A strategic call for Beth, Meaghan, Nicole. [?]
- **Quarterly vs. continuous** — is the winning shape the quarterly report or a continuous advisor (Cast.app pattern)? [?]

---

## Round-2 do-not-cite additions (2026-07-06)
- "Gartner: 70% of enterprise presentations AI-generated by 2026" — [CS: FABRICATION RISK], secondhand vendor attribution; verify against Gartner before use.
- vCISO market "$1.06B→$1.48B by 2032" — no named research firm; [CS: LOW].
- ScalePad pricing conflict ($250/$125 vendor vs $149/$15 aggregator) — unresolved; needs a sales quote.
- (Carried from round 1: 82/85% QBR retention stats · "30% AI efficiency" · Kenneth $300/user · Vitali 15–20 hrs.)
