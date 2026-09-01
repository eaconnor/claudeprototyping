# Datadump Refresh — 2026-08-03

**Run date:** 2026-08-03
**Sweep window:** 2026-07-20 → 2026-08-03
**Baseline:** `datadump-refresh-2026-07-20.md`
**Steps completed:** 1 GATHER · 2 CATALOG · 3 RELATE · 4 QUESTIONS
**STOP:** Step 5 (REVIEW) is human. Step 6 does not run until Beth approves.

---

## CONNECTIVITY LOG — what this run could and could not reach

| Source | Status |
|---|---|
| Atlassian / Confluence (MCP) | ✅ CONNECTED — 7 pages read |
| Microsoft M365 / Teams (MCP) | ✅ CONNECTED — Graph Search path (date-filter per-chat scan was rate-limited; Graph Search resolved it) |
| Brain Dump Teams channel | ✅ PARTIAL — 1 in-window thread + 1 cross-channel reference found via keyword search; full thread bodies not retrieved |

**Teams note:** Prior attempts hit 429 using the date-filter path (per-chat scan across 48 chats). Resolved by switching to the Graph Search path (no date filter), which covers Teams channel messages. Two relevant in-window messages found (Jul 20–Aug 3 window): see SRC-T-001 and SRC-T-002. Summary fields only — full thread bodies not retrieved. Additional channel messages may exist that do not match the keywords used.

---

## ⚠️ CONFLICTS — REVIEW THESE FIRST

Three corpus corrections confirmed in SRC-M-002 (ACP Secondary Research — MSP QBR/EBR Practice). These kill claims currently in circulation.

---

### CONFLICT-03 — 2.5× profitability stat: MISATTRIBUTION · remove from all ACP artifacts

**Claim in circulation:** "EBR-practicing MSPs are 2.5× more profitable."
**Reality:** Misattribution of a Service Leadership statistic. The original stat compares EBITDA of top-quartile vs median MSPs — it makes no reference to EBR cadence. No peer-reviewed data linking EBR frequency to profitability exists in the published record. [CS: VERIFIED via SRC-M-002]

**Action:** REMOVE this stat from any ACP artifact (briefs, decks, Jira tickets, presentations) that cites it.
**Replace with:** "No published data links EBR cadence to profitability. The Maister leverage-constraint thesis (that EBR enables premium pricing via trust) predates modern MSP operations by 30 years and is not MSP-specific. [CS: MEDIUM — SRC-M-002]"
**Affects:** Offering A brief, any EBR/QBR stakeholder materials, market shelf.

---

### CONFLICT-04 — ScalePad "$300+/user" pricing: WRONG MODEL · correct before citing

**Claim in circulation:** ScalePad pricing is "$300+/user" (cited in Idea Chess Offering A, section 1.4).
**Reality:** ScalePad does not use a per-user pricing model matching this citation. Published pricing is per-client, per-portal-user, or per-PSA-seat; ranges approximately $99–$1,800+/mo depending on tier and stack. "$300+/user" does not match any published pricing model found in the secondary research sweep. [CS: LOW — SRC-M-002; no direct ScalePad pricing page confirmed]

**Action:** Do not cite "$300+/user" in new work. In Idea Chess Offering A assumption A4 and section 1.4, annotate as corrected.
**Replace with:** "ScalePad: per-client or per-PSA-seat model; indicative range $99–$1,800+/mo by tier. [CS: LOW — SRC-M-002]"
**Affects:** Idea Chess Offering A (IDEA-CHESS-A, Confluence 62180851809), Offering A brief.

---

### CONFLICT-05 — ScalePad discontinuing: NOT FOUND · assumption A4 needs revision

**Claim in circulation:** ScalePad is discontinuing; Idea Chess assumption A4 ("ScalePad displacement window open") priced at p=0.80.
**Reality:** "ScalePad discontinuing" not found anywhere in the published record. Lifecycle Manager X (LCM-X) launched approximately August 2025 as a new stacked tier — indicating active product expansion, not wind-down. [CS: MEDIUM — SRC-M-002; ScalePad's own marketing]

**Action:** Revise Idea Chess Offering A assumption A4.
- Old: `A4 | ScalePad displacement window open | p=0.80`
- Proposed: `A4 | ScalePad competitive displacement uncertain (LCM-X launched ~Aug 2025) | p=0.30–0.45`
**Affects:** Idea Chess Offering A assumption table (A4), naive survival product recalculation, Offering A brief market defense.

---

### CONFLICT-06 — EU AI Act enforcement: DATE PASSED · compliance owner still TBD

**Situation:** Idea Chess Offering A H12 flagged EU AI Act enforcement date as 2026-08-02. That date has now passed (today is 2026-08-03). The compliance owner for Offering A remains `<TBD>` per the stress-test document.

**This is no longer a future risk. It is a present regulatory reality.**

Offering A ships a customer-facing, number-bearing artifact (the QBR narrative) with no named compliance owner, into a regulated liability surface under active EU AI Act enforcement.

**Action:** Before any Offering A work continues toward launch, a named human compliance owner must be designated. This is not a UX call — it routes to Legal/Product/Nicole.
**Affects:** Offering A brief, Idea Chess Offering A H12, any Offering A launch timeline. Urgency: HIGH.

---

## NEW SOURCES THIS RUN

### User shelf

**SRC-U-007 — Stefanie Hammond EBR Process Follow-up**
- Type: Primary research — recorded Teams call (57 min, 2026-07-30)
- Participants: Stefanie Hammond, Beth Connor, Chris Dunlop, Will Mincher
- Filed: 2026-07-31 · Confluence: ACP Research Datadump (living), 62175674556
- Local annotated copy: `scout_input/stefanie-hammond-ebr-followup-transcript-2026-07-30.md`
- Confidence: [CS: VERIFIED — primary]
- GDPR: Participant is EBR practitioner/consultant (not N-able customer), interview context — apply IRB standard.
- Shelf: user
- Feeds specs: Offering A brief, FSN-83143 (QBR coworker), qbr-ebr.context.md
- Status: FRESH

**SRC-U-008 — Partner Outreach LTP (GDPR — anonymized)**
- Type: Market/contextual — Confluence page (Nicole Reineke, 2026-07-28, page 62229839882)
- Content: 3 MSP partners recruited for Vertesia group research Jul 28. All agreed to participate.
  - Partner-A: US, N-Central + Cove + Autotask stack, uses Claude + Make for AI/automation, SentinelOne
  - Partner-B: Belgium, n-sight stack
  - Partner-C: UK
- **GDPR NOTE:** Original page contains real names, email addresses, company names. Anonymized above. Never store the mapping. Never use real names in artifacts.
- Shelf: user (operator-fit research path — evidence Q2 study is materializing via Vertesia)
- Feeds specs: Q2 (operator fit), H3 assumption (operator adoption)
- Status: FRESH

**UPDATE: SRC-U-006 (ACP Research Datadump — living) — re-hash needed**
- Confluence page 62175674556 modified 2026-07-31 (last swept 2026-07-20)
- New entries added: SRC-U-007 (Stefanie Hammond) + link to SRC-M-002 (secondary research)
- Swept date in the page still shows 2026-07-20 — update to 2026-08-03 after this run accepts
- Status: STALE (source moved; re-hash after acceptance)

### Market shelf

**SRC-M-002 — ACP Secondary Research — MSP QBR/EBR Practice**
- Type: Secondary research — compiled from four parallel scout sweeps
- Author: Beth Connor · Filed: 2026-07-28 · Confluence: 62226858351
- Confidence: [CS: MEDIUM–HIGH — secondary research, multiple sources; three stats killed via this same source]
- Key content:
  - Competitive set established: vCIOToolbox (closest competitor, PSA writeback to Autotask, 2-way), ScalePad (LCM-X active), Datto, CloudRadial, Scopable (pre-GA alpha, Anthropic partner), Zomentum (WITHDREW QBR feature 2024-07-01)
  - Three corpus corrections (see CONFLICT-03/04/05 above)
  - Key gap: EBR frequency distribution (per client per year, share doing zero) — does not exist in published record; decides a live strategic fork
  - Legal: Two named cases only — Mastagni Holstedt (Sacramento CA, active) and Boardman Molded (Mahoning OH, 2020). "Volume of detection = volume of exposure" risk (machine-generated risk ID expands what MSP knew). UK doctrine untested. US only.
  - [WOBBLY]: every strong anti-QBR operator quote arrives through a vendor's content-marketing channel
- Shelf: market
- Feeds specs: Offering A brief, Idea Chess Offering A (assumptions), qbr-ebr.context.md
- Status: FRESH

### Structural / artifact type

**SRC-NEW-TYPE — context.md (ACP synthesis spine)**
- Type: Architecture pointer — Confluence page 62227775577 (Beth Connor, 2026-07-28)
- Documents new artifact type in the pipeline: `briefs/context/acp-context.md` (SKELETON) and `briefs/context/qbr-ebr.context.md` (DRAFT)
- context.md is synthesis, not datadump. Agents read context.md; datadump is referenced not loaded.
- "8 musts of a good EBR/QBR" drafted with paired built-in tests — lives in qbr-ebr.context.md
- Gate 2 open: sustaining vs. disruptive unresolved for QBR/EBR context
- Not a datadump source per se — but affects manifest architecture: synthesis spine is now a first-class artifact with its own maturity tracking
- Status: SKELETON (main) / DRAFT (QBR/EBR mini)

### Teams channel (new coverage this sweep)

**SRC-T-001 — Product branding announcement: "ResilienceAI Harness"**
- Type: Internal announcement — Brain Dump Teams channel post (Nicole Reineke, 2026-07-23)
- chatId: `19:OlTtVVyAz8wISWXG2Jfi-9xSIAqBe4k-No9OAmHb1bM1@thread.tacv2` · messageId: `1784813438578`
- Summary: "Hey hey Brain Dump — marketing has come back and this ACP will be branded the ResilienceAI Harness (where Resilience AI is our umbrella term and Harness is our product name."
- Domain announced: `HARNESS.n-able.com`
- Confidence: [CS: HIGH — primary source, decision-owner announcement]
- GDPR: Internal N-able business communication; no customer/participant data
- Shelf: market (naming decision — affects all artifacts still using "ACP" or "QBR Advisor/Analyst")
- Status: FRESH

**SRC-T-002 — ACP Trust & Recovery Sketches post (self-referential)**
- Type: Internal design share — ACP Bolt Team channel (Elizabeth Connor, 2026-07-27)
- chatId: `19:521f85c9f1864541b9413fb98eb8eda5@thread.tacv2` · messageId: `1785141656941`
- Summary: "Idea Chess: ACP Trust & Recovery Sketches (help me break these)"
- Note: Beth's own post — self-referential to `acp-trust-recovery-concepts-2026-07-27.md`. Confirmatory, not an independent source.
- Shelf: user (concept iteration — feeds Idea Chess Offering A trust track)
- Status: FRESH

### Market / contextual updates

**UPDATE: ACP Partner Diligence Tracking (Confluence 62013669455, Nicole Reineke, modified 2026-07-30)**
- Previously dismissed (Jul 20 run) — partner-track PM, not UX/value-prop lens
- New state: Offer Validation COMPLETE (2026-07-27): 8–10 customer feedback points + pricing signals
- Partner selection gate (deadline 2026-07-31) shows NOT STARTED as of Jul 30 — see OQ-NEW-03
- Three finalists: NeoAgent (strong preference), Vertesia, ZenZero
- Contract target: mid-August. Pilot: September.
- Post-pilot quantitative metrics defined (due 2026-08-25): tasks automated/week, technician time saved (hrs), confidence in AI governance (1–5), audit log usefulness (1–5), chargeback report clarity (1–5), NPS (0–10), go-live intent (Yes/No/Maybe)
- Relevance: Offer Validation complete + partner selection imminent affects H2 (DPA clock) and Q1 (data-egress). Re-open as market signal — not dismissed.

---

## NEW FINDINGS

For each finding: ✅ Accept · ✏️ Edit · ❌ Reject

---

### FINDING-01 — Magic-wand ask aligns with Offering A feature set (practitioner-layer validation)

**Source:** SRC-U-007 (Stefanie Hammond, [CS: VERIFIED — primary])
**Claim:** Unprompted, Stefanie named exactly: risk register population + insights + scripting in CEO's "love language" + R/Y/G grading.
**Maps to:** Offering A feature set — alignment is high.
**IMPORTANT caveat:** Stefanie is an EBR practitioner/consultant — practitioner-adjacent, not the MSP technician operator doing the QBR. This is operator-adjacent validation, not operator evidence. H3 (operator adoption) remains [A].

**Proposed change:**
- Promote "risk register + insights + scripting in CEO language + R/Y/G grading" from [A] to [R] at the practitioner layer in Offering A brief Gate 1.
- Annotate: "Practitioner validation only — the actual MSP operator was not the source. H3 stays [A] until operator sessions run. [CS: VERIFIED — SRC-U-007]"

**Affects:** Offering A brief (Gate 1), qbr-ebr.context.md

---

### FINDING-02 — "Manual first, software later" pedagogy — framing constraint for Offering A

**Source:** SRC-U-007 ([CS: VERIFIED — primary])
**Claim:** EBR practitioners train clients to do EBRs manually before introducing software. Stefanie has a 15-tab Excel template (EBR framework in hand) as the manual-first artifact.
**Implication for Offering A:** Onboarding for A should teach the EBR process before the tool — operators who skip the manual step will have different (lower) trust thresholds. This is not a product feature; it is a pedagogy constraint that shapes onboarding design and adoption arc.

**Proposed change:**
- Add to Offering A brief as [R] framing constraint: "Manual-first pedagogy: operators trained manually before adopting automation show higher trust thresholds. Onboarding must teach the job before the tool. [CS: VERIFIED — SRC-U-007]"
- Note in qbr-ebr.context.md under "What good looks like."

**Affects:** Offering A brief (onboarding/adoption), qbr-ebr.context.md, H3 (operator adoption) nuance

---

### FINDING-03 — 3-coworker family proposed unprompted → _inbox as HYPOTHESIS-01

**Source:** SRC-U-007 ([CS: VERIFIED — primary] for the fact that she said it; [A] for whether these are validated jobs)
**Claim:** Stefanie proposed (unprompted) a natural 3-coworker family: (1) EBR coworker, (2) pre-sales first-meeting aggregator, (3) readiness assessment.
**Note:** (1) maps to Offering A. (2) and (3) are NEW directions not currently in offerings A–E. This is a single practitioner-adjacent source — primary but not triangulated.

**Proposed change:**
- Park as HYPOTHESIS-01 in _inbox. Do not promote to spec until Beth makes the strategy call.
- Flag to Beth: "Practitioner proposed two companion coworkers beyond Offering A. Is either in scope for ACP? [Route: Beth — strategy bet, not research question.]"

**Affects:** Offering model (super-epic level) — IF Beth accepts

---

### FINDING-04 — MRR-tiered A/B/C cadence — H4 probability needs revision

**Source:** SRC-U-007 ([CS: VERIFIED — primary])
**Claim:** MSPs tier EBR cadence by client MRR: A-clients (quarterly), B-clients (semi-annual), C-clients (annual or ad hoc). Most clients are B or C tier.
**Implication:** The "quarterly cadence trap" (H4 in Idea Chess Offering A) is more complex than modeled. Offering A's subscription value depends heavily on the A/B/C distribution of a given MSP's client base. An MSP with 10% A-clients uses A four times a year for a fraction of accounts — the cost-per-use looks very different than assumed.

**Proposed change:**
- Add to Offering A brief as [R] evidence.
- Revise Idea Chess H4 label: "Quarterly cadence trap — applies only to A-tier clients; B/C tier use is semi-annual or annual. Cadence mix unknown for ICP. [CS: VERIFIED — SRC-U-007]"
- H4 probability: was 0.55 (survives subscription). With MRR-tier complexity, revise to 0.40–0.45.
- Flag OQ-NEW-02: what is the actual A/B/C distribution for a typical ICP MSP?

**Affects:** Offering A brief (top task model), Idea Chess Offering A H4, qbr-ebr.context.md

---

### FINDING-05 — Competitive set update: vCIOToolbox, Zomentum withdrawal, Scopable

**Source:** SRC-M-002 ([CS: MEDIUM — secondary research])
**Claims:**
- vCIOToolbox = closest current competitor with real PSA writeback (2-way ticket sync to Autotask). [CS: MEDIUM]
- Zomentum WITHDREW QBR feature 2024-07-01. [CS: MEDIUM — SRC-M-002; not independently verified]
- Scopable = pre-GA alpha, Anthropic partner, AI-native. [CS: LOW — pre-release, single source]

**Proposed changes:**
- Update market shelf competitive entry: add vCIOToolbox (PSA writeback) as lead competitor, Zomentum as withdrawn, Scopable as pre-GA watch.
- Note: "vCIOToolbox has PSA writeback depth no other current competitor has. This is the differentiation gap Offering A needs to account for. [CS: MEDIUM]"
- Zomentum withdrawal: remove from active competitor set; note as market signal (QBR-feature market may be harder to monetize than it appears — Zomentum tried and withdrew).

**Affects:** Offering A brief (market shelf), Idea Chess Offering A competitive assumptions

---

### FINDING-06 — Pilot quantitative metrics defined (due 2026-08-25)

**Source:** ACP Partner Diligence Tracking (Confluence 62013669455, [CS: MEDIUM])
**Claim:** Post-pilot quant metrics: tasks automated/week, technician time saved (hrs), confidence in AI governance (1–5), audit log usefulness (1–5), chargeback report clarity (1–5), NPS (0–10), go-live intent (Yes/No/Maybe). Due 2026-08-25.
**Implication:** This is the first structured quant baseline for pilot evaluation — relevant to Gate 3 (thing right) and ROI measurement across offerings.

**Proposed change:**
- Register in market shelf as pilot evaluation framework signal.
- Route to Research: "Pilot quant metrics defined by Product/PM. Design should align any usability success metrics to this framework before pilot begins."
- Note to Beth: these are PM-defined metrics — worth checking whether they capture UX-quality signal or only output metrics.

**Affects:** Offering B brief (platform seat), Gate 3 evaluation framework, pilot research plan

---

### FINDING-07 — Product officially branded "ResilienceAI Harness" — all ACP artifacts now misnamed

**Source:** SRC-T-001 (Nicole Reineke, Brain Dump channel, 2026-07-23, [CS: HIGH])
**Claim:** Marketing has named the product "ResilienceAI Harness." Resilience AI = umbrella brand. Harness = product name. Domain: HARNESS.n-able.com.
**[ASSUMPTION]:** Memory records Beth referring to the product as "N-able Harness" on 2026-07-31 — one week after Nicole's announcement. Whether Beth's usage is shorthand, an alternative, or a subsequent divergence is unknown. This run does not resolve that.
**Implication:** All existing specs, briefs, and Confluence pages using "ACP", "QBR Advisor/Analyst", or "N-able Harness" are misnamed relative to the official brand. This is not a UX call — the naming decision has been made.

**Proposed change:**
- Note in all briefs/specs: official product name is "ResilienceAI Harness" per marketing (Jul 23, Nicole Reineke). [CS: HIGH — SRC-T-001]
- Do NOT rename artifacts in this run — naming propagation is Beth's call after confirming (see OQ-NEW-07).
- Flag divergence: "ResilienceAI Harness" (Nicole, Jul 23) vs "N-able Harness" (Beth, Jul 31) — confirm before any renaming.

**Affects:** All ACP artifacts, spec naming conventions, Jira tickets using "ACP", Offering A–E briefs

---

## DRIFT FLAGS

| Spec / Source | State before this run | Proposed state | Trigger |
|---|---|---|---|
| Offering A brief | STALE (from Jul 20 run) | STALE (maintain) | CONFLICT-03/04/05/06 unresolved; new primary evidence added but no synthesis yet |
| **Idea Chess Offering A** (IDEA-CHESS-A, 62180851809) | FRESH (self-declared) | **→ STALE** | CONFLICT-04/05 (cited stats invalid), CONFLICT-06 (EU AI Act date passed), FINDING-04 (H4 revision) |
| FSN-83143 (QBR coworker spec) | STALE (from Jul 20 run) | STALE (maintain) | New evidence (SRC-U-007) positive but CONFLICTs not yet resolved |
| qbr-ebr.context.md | DRAFT | DRAFT (maintain) | New primary evidence (SRC-U-007) should shape synthesis update — synthesis is [0% — Beth] |
| acp-context.md (main spine) | SKELETON | SKELETON (maintain) | No synthesis updates this run |
| ACP Management Plane spec | STALE (from Jul 20 run) | STALE (maintain) | No new management-plane evidence this sweep |
| ACP Partner Diligence | DISMISSED (Jul 20) | **→ RE-OPEN as market signal** | Offer Validation complete, partner selection imminent — changed state affects H2 |
| ACP Research Datadump (living) (SRC-U-006) | FRESH | STALE (re-hash needed) | Modified Jul 31 — new entries added; swept date still shows Jul 20 |

---

## OPEN QUESTIONS — this run

**OQ-NEW-01 — COMPLIANCE OWNER: EU AI Act enforcement active as of 2026-08-02. Offering A compliance owner = `<TBD>`. Who owns this?**
- Routes to: Legal / Product / Nicole
- Urgency: HIGH — active regulation, present now
- Not a UX call. Do not park.

**OQ-NEW-02 — MRR tier distribution: what is the actual A/B/C client split for a typical ICP MSP?**
- Affects H4 probability and subscription value model
- Routes to: Research (secondary or primary)
- Becomes a research brief if no existing data

**OQ-NEW-03 — Partner selection gate: did it happen by Jul 31? Shows NOT STARTED as of Jul 30.**
- Affects H2 (DPA/data-egress clock starts at partner selection)
- Routes to: Nicole / Beth
- Urgency: MEDIUM

**OQ-NEW-04 — Companion coworkers: Stefanie proposed "pre-sales first-meeting aggregator" and "readiness assessment" as natural companions to EBR coworker. Are either in scope for ACP?**
- This is a strategy bet, not a research question
- Routes to: Beth
- Park as HYPOTHESIS-01 until Beth decides

**OQ-NEW-05 — Corpus corrections: do CONFLICT-03/04/05 affect any shipped stakeholder artifacts (decks, Jira tickets, presentations) beyond the Confluence briefs?**
- If so, those artifacts also need correction before next stakeholder use
- Routes to: Beth to audit
- Urgency: MEDIUM (active misinformation risk in circulation)

**OQ-NEW-06 — Context.md synthesis update: which session writes the qbr-ebr.context.md update incorporating SRC-U-007?**
- Synthesis is [0% — Beth]. The source is in hand. The synthesis slot is empty.
- Routes to: Beth
- Without this, SRC-U-007 stays in the datadump and agents can't plan from it

**OQ-NEW-07 — Naming divergence: "ResilienceAI Harness" (Nicole, Jul 23) vs "N-able Harness" (Beth, Jul 31)?**
- Nicole's Jul 23 announcement (SRC-T-001): product = "ResilienceAI Harness"; Resilience AI = umbrella; Harness = product name; domain = HARNESS.n-able.com
- Beth's Jul 31 usage: "N-able Harness"
- These may be the same (shorthand), two valid variants, or a divergence — unknown
- Routes to: Beth to confirm before any artifact renaming
- Urgency: MEDIUM — affects naming in briefs, specs, any new stakeholder materials

---

## _INBOX STATUS

| Item | ID | Status |
|---|---|---|
| BD-002 (Intent Confidence, William Mincher) | SRC-INB-001 | Parked — no new content found this sweep |
| Untitled live doc (Aruna Laxminarayan, 61739171844, empty body, modified Jul 29) | SRC-INB-002 | Still empty — parked |
| Ramya Exploratory Testing (Rachel Grant, 62238621833, empty body) | — | New empty page; dismiss unless content appears |
| HYPOTHESIS-01: 3-coworker family (FINDING-03) | — | New — awaiting Beth strategy call |

---

## NOT REACHED THIS RUN

- **Brain Dump Teams channel** (`19:OlTtVVyAz8wISWXG2Jfi-9xSIAqBe4k-No9OAmHb1bM1@thread.tacv2`): PARTIAL — connection fixed (Graph Search path). Two in-window messages retrieved (summary only; see SRC-T-001, SRC-T-002). Additional messages may exist that did not surface on the keyword searches used ("ACP Brain Dump", "Harness Stefanie EBR offering", "ResilienceAI trust recovery partner diligence", "trust recovery idea chess offering compliance", "sketches break offering A"). Full thread bodies not retrieved.
- **Idea Chess pages B–E**: Not individually re-read. Page A modified Jul 31 (content reviewed above — stale triggers confirmed). B–E modification metadata not checked.
- **UX Research Projects List + Research Tiering Decision Tree** (ProdUX space): Not read — lower priority, no indication of relevant change.
- **Local transcript copy** (`scout_input/stefanie-hammond-ebr-followup-transcript-2026-07-30.md`): Path noted in living datadump. File existence not verified this run.

---

## NEXT SWEEP TASKS

- Re-sweep Brain Dump channel with additional keyword variants (Graph Search returns by relevance, not chronologically — low-keyword messages from the window may have been missed)
- Read Idea Chess B–E to confirm or deny STALE propagation
- Verify local transcript copy exists at noted path
- Check whether partner selection gate closed (OQ-NEW-03)

---

*Synthesis slot: [0% — Beth]. This document proposes. It does not decide.*
*47% rule: no ratios or stats quoted here without source citation. Grep-verified: p-values in Idea Chess Offering A are from the original document, not recalculated here.*
