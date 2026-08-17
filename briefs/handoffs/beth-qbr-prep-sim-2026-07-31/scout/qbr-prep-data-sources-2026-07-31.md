# Scout dossier — the probable set of data sources Vanessa Chart pulls to prep one QBR/EBR

**Date:** 2026-07-31 · **For:** lo-fi prototype — Vanessa Chart (Head of Client Delivery, Technica Solutions; deliberately non-technical) assembling her prep for one QBR/EBR
**Governing synthesis:** `briefs/context/qbr-ebr.ux.md` (not re-dossiered here)
**Evidence base:** small-n qual. Two primary voices: Stefanie Hammond (trainer, now [CS: VERIFIED] via direct 2026-07-30 interview) and Vanessa Chart (n=1, vendor-selected). Directional, not projectable. `[WOBBLY]` applies to the whole set — see §5.

---

## 1. THE STRUCTURAL DIVERGENCE — surface it before building

The prototype premise is Vanessa pulling data sources. **In the n=1 evidence, she doesn't.**

- All 8 prep pulls are done by the **Head of Technical Overview** — "one person (Head of Technical Overview) doing all of them, pulled off paying service-desk work for the whole batch" [CS: HIGH for n=1 — `briefs/ebr-service-blueprint-2026-07-29.md:115`; corroborated `briefs/qbr-ebr-experience-map-2026-07-28.md:32,93` (Vanessa 25:25)]
- Vanessa's prep role is the **Judge step**: "judges gap vs. standard, translates to business consequence, sets roadmap priority — the real constraint" — and it is "the one moment with no tool at all" [CS: HIGH — blueprint:220–222]
- All 8 pulls are **backstage-only, client not present**; only "the business-value translation and the client-facing extract cross the line of visibility" [CS: HIGH — blueprint:112–117, 224]
- **Counter-case for a one-person prototype:** Stefanie's own 16-year CSM history — 75–100 accounts, quarterly EBRs each, run entirely on Excel spreadsheets and handwritten notes, no delegate [CS: VERIFIED — `scout_input/stefanie-hammond-ebr-followup-transcript-2026-07-30.md:78–84` (14:16–16:22)]. So a single operator doing her own pulls exists in evidence — but it's the trainer's pre-2021 CSM life, not an MSP delivery lead. `[WOBBLY — the "Vanessa pulls it herself" framing has no direct source; it blends two people]`

---

## 2. THE 8 DATA PULLS — verbatim systems, from the service blueprint

Stage: PREP / "Assemble — 8 separate data pulls, not one step." Puller: Head of Technical Overview. Frontstage: invisible. [CS: HIGH for all rows — blueprint:107–211, line refs per row]

| # | Pull | System of record (Support Processes row, verbatim) | ⚙/★ | Blueprint lines |
|---|---|---|---|---|
| 1 | Warranty/EOL | "Asset/RMM inventory system (warranty lookup, EOL database)" | ⚙ | 109–120 |
| 2 | License utilization (no login 3–4 mo) | "License management tool / M365 admin center / IdP login logs" | ⚙ | 122–133 |
| 3 | User/staff reconcile | "Active Directory or IdP vs. HR roster (manual or API cross-check)" | ⚙ | 135–146 |
| 4 | Ticket volume + SLA | "PSA (Halo) reporting" | ⚙ | 148–159 |
| 5 | Patch + backup | "RMM (patch status) + backup-monitoring tool (job success + restore-test log)" — "ran" and "verified restorable" are different claims | ⚙ | 161–172 |
| 6 | Phish-sim + training | "Security-awareness / phish-sim platform" | ⚙ | 174–185 |
| 7 | Tenant config vs. baseline | "Tenant security-posture tool, compared against an internally-defined baseline" — baseline is MSP-authored judgment | ★ | 187–198 |
| 8 | Compliance checklist | "Compliance/GRC tool, or a manual checklist if none exists" — which standards apply per client is not named in source | ★ | 200–211 |
| — | Judge (Vanessa) | "None named — the one moment with no tool at all" | ★ | 213–222 |

**Vendor-name overlay from Stefanie's direct interview** [CS: VERIFIED as her account; CS: MEDIUM as operator practice — she says "I'm assuming the MSP knows where to go get that information" and "I don't get into that", transcript:160–168 (42:00–43:22)]:
- Asset/warranty (pull 1): **N-central or N-sight** — "the warranty reports that are within that" (42:00)
- Compliance/posture (pulls 7–8): **Adlumin health report** — "a health report within ad lumen that will give you information around compliance"; "Adlumin has some HIPAA and other type of assessments within it" (42:00, 44:12–45:01, transcript:170)
- Backup (pull 5): "if they have backup" — **Cove** is the named backup product elsewhere in her Cove-migration anecdote (24:27–27:21, transcript:120)
- Aggregation: "their PSA, their PSA is a huge collector of this kind of data, aggregating all that data together" (43:01, transcript:164)
- Security-stack coverage vs. sold package — the risk-register feed: "it has N central in it, it has Backup, it has EDR, it has MDR, it has DNS, it has Dark Web... this customer doesn't have any of that" (43:02–43:22, transcript:166–168) — a **package-gap diff**, a ninth kind of pull the blueprint doesn't number `[WOBBLY — single speaker, single pass]`

---

## 3. NON-SYSTEM SOURCES — named, not pullable from any system of record

- **Business goals & objectives:** "I don't think they're going to be able to pull it out from any of our systems... go look at their websites, look at their LinkedIn... if they have a higher end LinkedIn account with Navigator" [CS: VERIFIED — transcript:194 (48:52–49:45)]
- **Industry-insight layer:** agent/web search on "job openings and what their latest strategy is... news articles" → "top three trends in your industry" as discussion points (Chris Dunlop proposal, Stefanie endorsing) [CS: VERIFIED as design conversation, not observed practice — transcript:195–200 (49:45–53:45)]
- **The living documents** (carried cycle to cycle, the real prep substrate): "there's a risk register, there's a technology roadmap, there's a technology budget. Those are all living documents" [CS: VERIFIED — transcript:87 (16:31)]. Blueprint adds the **Working Document** (internal) → **Client-Facing Extract** (follow-up email only) split — structural, two real artifacts, not one doc with a toggle [CS: HIGH — blueprint:440–442, finding 3]
- **The 15-tab Excel template** — `Executive Business Review Template 1.xlsx`, Stefanie's actual artifact; plus two handouts ("EBR framework" + "Executive Business Review template" with technology-roadmap planning sheets) offered on request, not web-reachable [CS: HIGH — blueprint:11,31; `datadump-manual-human-steps.md:44–51`]
- **Ticket history — conditionally in scope only:** "EBRs are forward-looking"; ticket history enters ONLY when a recurring root-cause needs an investment (roadmap/budget item) [CS: VERIFIED — transcript:150–156 (34:45–37:27)]
- **Follow-up (post-meeting, still the operator's data surface):** every action item → **PSA/Halo ticket queue**; PSA write path named as chokepoint N-able doesn't own — "Halo, ConnectWise, Autotask" [CS: HIGH — blueprint:369–373; experience-map:65–68 (Stefanie 1:26:02, 1:26:33)]

---

## 4. SEQUENCE — what the evidence actually supports

**No source gives an observed pull order.** `[WOBBLY — sequence below is assembled from map structure + agenda order, not from watching an operator work]`

1. **Cadence trigger first:** check the EBR schedule, tier A/B/C by MRR/risk [CS: HIGH — experience-map:22 (Stefanie 0:04:24; Vanessa 30:42); cadence tiers CS: VERIFIED — transcript:92–94 (18:05–19:11)]
2. **Open the living documents** from last cycle (risk register, roadmap, budget, working doc) — "you're following up on what you talked about last time" [CS: VERIFIED — transcript:87–89]
3. **The 8 pulls, as batched backstage work** — the blueprint numbers them 1–8 but the numbering is the map's presentation order; resource contention is described "for the whole batch, not per-pull" [CS: MEDIUM for order — blueprint:115]
4. **Non-system gather** (website, LinkedIn, industry trends) — position in sequence unevidenced `[?]`
5. **Judge:** translate gaps → business consequence, set roadmap priority — "you can't prepare 20 minutes before you walk in" [CS: HIGH — blueprint:220, experience-map:33 (Vanessa 0:19:08)]
6. Meeting (Stefanie's tab order: Kick Off → Current Climate → Risk & Security → Compliancy → Business Priorities → HW/SW Assets → Employee → Roadmap → Budget → Additional → Referrals → Next Meeting) [CS: HIGH — blueprint:227–359] → **Follow-up pulls:** transcribe, reissue roadmap+budget, action items → PSA tickets, send client-facing extract [CS: HIGH — blueprint:364–373; extract redaction: experience-map:63 (Vanessa 29:38)]

Total prep cost claim: Vanessa 4–5h/EBR, ceiling 4/week [CS: MEDIUM — blueprint:41] — **but see echo finding, §5.**

---

## 5. THE THREE FINDINGS — constraints on what the prototype may claim

1. **Legal shield — unvalidated.** Register's stated purpose: shift risk to customer, survive the insurer, stay out of court. Downgraded 2026-07-28: two named cases not three (Mastagni Holstedt v. LanTech; Boardman Molded Products v. Involta); no case law tests documented refusal as defense; no carrier treats it as mitigating; Involta's own marketing pierced its contract; jurisdiction inverted (UK advice, US litigation); mechanism runs both ways — "volume of detection is volume of exposure." Status: "not a finding, not to appear client-facing before counsel" [CS: HIGH for the downgrade — blueprint:432–434]. New wrinkle: sign-off every meeting is **confirmed as taught practice** first-person (Stefanie 6:33–7:44, transcript:50–52) — practice confirmed, legal efficacy still not [CS: VERIFIED practice / CS: LOW efficacy].
2. **The 4–5h baseline is an echo.** Vanessa adopted Stefanie's framework (via Craig/Empower); measuring both is the same process twice in one transmission line, not corroboration. Vendor figures (3–8h) have no primary source. "Any reduction claim must be phrased as a ratio against this one-conversational-self-report baseline, never as an absolute" [CS: HIGH — blueprint:436–438] `[WOBBLY — n=1 echo]`
3. **Dual-surface is structural.** Working Document (internal) and Client-Facing Extract are two real artifacts; one document with a redaction toggle "breaks this structurally" — the 2026-07-28 Tier-1 prototype made exactly this mistake and council caught it [CS: HIGH — blueprint:440–442]

---

## 6. Supplementary tool mentions (skim results)

- **Stefanie's magic-wand asks** (design ingredients, not sources): populate the risk register (4:37); insights not data — "here's the data, here's the risk, this is what it means to you, the impact and consequences" (46:35–47:07); scripting/talking points — "the love language of the business owner" (47:38–48:06); red/yellow/green or a grade (48:15) [CS: VERIFIED — transcript:11, 178–192]
- **Reports ≠ EBR:** monthly patch/backup reports "sent off into the ethos" have little value without an executive summary; "that's rear view mirror stuff" [CS: VERIFIED — transcript:98–106 (20:13–22:05)]
- **`qbr-operator-voices-2026-07-28.md` tool mentions only:** CloudRadial (sells QBR automation), ScalePad, Syncro as vendor channels [lines 10–13]; r/msp thread titles all tooling/template questions, comments unread [20–37]; the only "AI to prep a QBR" workflow found is Vitally — **SaaS CS, not MSP, domain mismatch** [134]; "Vanessa's Copilot trial may be the only such datapoint we hold" [151] `[THIN DOMAIN — no unmediated operator voice reachable; all quotable sentiment is vendor-distributed]`
- **Datadump infrastructure files** (`datadump-spec-model.md`, `-spec-docset.md`, `-loops-and-checks.md`, `-update-process.md`, `-reconcile-runbook.md`, `-refresh-2026-07-20.md`): checked; these document Beth's research pipeline, not MSP prep. Only product names: N-central/Cove/Adlumin as ACP-governed control-plane products (`datadump-update-process.md:114`), ScalePad MCP · Rewst MCP/N-central as competitor moves (`:122`). Nothing on QBR prep pulls. Do not re-read for this purpose.
- **Build-side reality check** (for fidelity banner honesty): "No PSA, RMM, M365/IdP, backup, GRC, or license-management system is wired into this codebase. Every one of the eight prep pulls would need a connector registered from scratch" [CS: HIGH — blueprint:414]

---

## 7. Gaps — named, not filled

- Observed pull **order** for a single operator: `[?]` no source
- Which compliance standards apply per client: `[?]` "isn't named in source" [blueprint:201]
- Who enters follow-up tickets — Vanessa or a delegate: `[?]` [blueprint:371]
- Vanessa's own tool names (her PSA is Halo per blueprint:158; everything else generic): thin — her transcript URL still missing (`datadump-manual-human-steps.md:67–70`, B3)
- Any operator using ChatGPT/Copilot/Claude to prep: absent from everything reachable [operator-voices:151]

---

### Honor check
- **Completed:** read all 3 required files in full; skimmed all 8 secondary files in full (none partially read); extracted 8 pulls verbatim with systems, actors, frontstage/backstage, three findings; extracted six-phase map with operator-lane tools; extracted Stefanie-interview source names (N-central, N-sight, Adlumin, Cove, PSA, LinkedIn/Navigator, web search); flagged the Vanessa-doesn't-pull divergence and the echo/thin-domain wobbles.
- **Skipped:** no web searches — task scoped to local files; `qbr-ebr.ux.md` per instruction.
- **Cannot verify:** timestamp accuracy inside transcripts (quoted as filed); whether Vanessa's PSA is definitively Halo (blueprint asserts it, her raw transcript not in scope).
- **Stats produced:** none new; all counts (8 pulls, 26 steps, 4–5h, n=1) quoted with provenance, not computed.
