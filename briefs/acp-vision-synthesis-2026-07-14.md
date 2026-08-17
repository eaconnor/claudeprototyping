# ACP — Fresh Research Synthesis (vision skill, first real run)

**Date:** 2026-07-14 · **Owner:** Beth · **Method:** read the whole corpus first-principles (5 parallel readers: the build, scout_input, our own synthesis docs, the authored vision, the transcripts + quant), reconcile qual against quant, name what's happening, run it against the build.
**Discipline:** [CS:] tags on claims · qual (small-n) never presented as projectable · synthesis sentence stays human `[0% Claude — fill this in]` · every stat traced to a source.

---

## 0. THE ONE THING THAT SURVIVES EVERY CHALLENGE

**QBR is #1 across all three instruments** — n=8 cumulative (31, #1 ×3), n=8 forced-rank (2.90), and the independent n=39 survey drag-rank (2.90). That triple agreement is the single most solid demand signal in the entire dataset. [CS: HIGH — three instruments, but two share the same 8 people; only the n=39 survey adds independent n.]

**Everything below #1 is unsettled.** The honest next move on demand is quant triangulation (Qualtrics, still out) and *operator* research, not more re-scoring of the same 8 interviews.

---

## 1. WHAT'S ACTUALLY HAPPENING (the headline)

### 1a. The evidence base is thinner and messier than our docs imply
- **Real primary ACP research is small:** 5 Guidepoint transcripts (not 8 — see §5), one n=39 drag-rank inside an n=119 conference survey, Condens AI-in-UEM (13/17), and the 22-partner UEM use-case catalog. [CS: HIGH]
- **`scout_input/` is mostly not ACP research.** Of 21 files read: ~6 are ACP *product/marketing* docs (not research), ~4 are MSP/N-central industry blogs, **6 are Cloud Commander 2024 UX research (a different product)**, and 2 are chess-UI docs. The SUS 73 / target 68 / CSAT 77% baselines belong to Cloud Commander, not ACP. [CS: VERIFIED — same Confluence URL on all six] **If any ACP baseline/target cites these, it imported another product's research.**
- **`adlumin_pendo_*.csv` is Adlumin usage telemetry, unrelated to ACP demand.** `flowers_transcript.docx` is a Rosenfeld conference talk, not an MSP interview. [CS: VERIFIED] Neither is ACP evidence.
- **Net:** we have rich *product intent* and thin *user evidence*. The most defensible meta-finding is that tension itself.

### 1b. The frames we lead with are overlays, not the authored vision
- **"vCISO / vCIO"** appears nowhere in Nicole's authored vision docs — it's Beth's frame from the Context File. [CS: VERIFIED — absent from the 6 vision docs]
- **"Six coworkers = one job, QBR is the capstone the others feed"** is a synthesis overlay (Beth/the deck). **No interviewee described it; the build explicitly rules out coworker-to-coworker orchestration in v1.** [CS: VERIFIED]
- **"Shopify not Kaseya / MSP-OS"** is Beth's TL;DR framing on top of Nicole's actual words ("products become infrastructure… ACP is the only interface"). The words are Nicole's [CS: VERIFIED]; the market analogue is asserted [WOBBLY].
- These are legitimate hypotheses. They are `[A]`, not findings. The sketches must not launder them into evidence.

### 1c. The strategic threat the demand data hides: buy-vs-build + commoditization
- **The most-demanded coworkers are the most self-buildable or already-owned.** Derek: *"I could build that [QBR] myself in Cloud in a day."* Vikram: *"we have automated all of this."* QBR demand is real but **concentrated in mid-size tool-buying MSPs** — it evaporates in shops technical enough to self-build or large enough to already have it. [CS: HIGH — n=5 transcripts]
- **"It'll be built into my RMM/PSA" objection recurs (≥4/5).** Alert Flood, Env Health, RCA, Triage all drew "I'd expect my platform to add this." Commodity features resist pricing.
- **WTP anchors low and per-technician/flat, not per-client.** Kenneth: ScalePad's $300+/user/mo is *"nuts"*; wants *"$25, $30, $50 a month"* per tech. This cuts against a rich per-run/per-outcome monetization story. [CS: MEDIUM — single-source price points]
- **The defensible value is what MSPs *can't* easily build:** cross-vendor normalization, governance/monitoring of agent sprawl, and deep integration. Not the narrative generation.

### 1d. Gated autonomy is the most solid design finding — with a determinism twist
- **Universal (5/5 transcripts + 13/17 Condens + all-17-expect-human-control).** Read-only → write-with-approval → earned autonomy. The build ratified this (risk-tier: low auto / med batch / high explicit sign-off, high non-configurable). [CS: HIGH]
- **Twist the synthesis under-weights:** Shawn and Vikram don't just want *gated* — they want **deterministic, locked workflows** with the LLM confined to a small slice. That's a stronger claim, and it aligns with the Substitution Engine, not with "an AI Coworker that reasons freely." [CS: MEDIUM]

### 1e. Two of the strongest *unprompted* pains sit outside the six use cases
- Jonathan: **vendor-bill / billing reconciliation** — *"a big money sync. There's very few tools out there that help with that."*
- Derek: **cross-tool AI bookkeeper** — *"each of these AI tools only has visibility into their own tools."*
- Both are "give AI visibility across ALL my tools" problems — arguably closer to the control-plane thesis than QBR is. Neither is in the ranked six. [CS: MEDIUM — n=2 unprompted, but intense]

---

## 2. QUAL × QUANT RECONCILIATION (reconcile, don't average)

| Theme | Quant (n=39 survey / n=119) | Qual (n=5–8 interviews) | Read |
|---|---|---|---|
| QBR demand | #1 drag-rank 2.90; value 3.40 | #1 cumulative (31), 3/5 clear pay | **Agree — the one stable bet** |
| Alert Flood | **#2 priority 3.23** | barely discussed; "free in RMM" | **Diverge** — quant-high, qual-thin/commodity |
| IR RCA | #3 priority 4.00; value 3.13 (low) | #2 cumulative (26); compliance; Vikram+Jonathan pay | Agree on rank, **value-rating soft** |
| Env Health | #4 priority; **value #1 (3.59)** | weakest-demand; "feature not product" | **Diverge** — highest desirability, lowest priority = Kano "expected" |
| Ticket Triage | #6 priority 5.18 (low) | **highest intensity 8.3; most enthusiastic open-text** | **Diverge** — table-stakes-in-PSA vs. daily-pain enthusiasm |
| Tabletop | #5 priority 4.95 | annual; Vikram won't pay for simulation | Flat both |
| On/Offboarding | #7; value #8 (2.94, lowest) | top time-sink but "already solved" | Low both |
| Autonomy = gated | 13/17 concerned; all expect control | 5/5 want gated + human-in-loop | **Agree — strongest design finding** |
| Overall value | **75% see value (27/36)** | 4 build / 4 narrow-MVP / 0 don't-build | ~25% vocal skeptics count |

**Divergences are findings, not noise:** Env Health and Alert Flood rise on quant but read as *features* in qual; Ticket Triage inverts (low rank, high intensity — classic table-stakes). Do not average these into a single ranking.

---

## 3. VISION ↔ BUILD CLASH REPORT (run against `acp-core-main-3`)

What's specced/coded vs. the vision, per the build read. [CS: VERIFIED against repo]

| Finding | Kind | Where | Status | Owner call |
|---|---|---|---|---|
| Day-1 coworker = **Ticket Triage** (10 tickets, ConnectWise, med-risk batch approval) | Vision↔spec | FSN-82692 onboarding | **CONFLICT** — vision leads with QBR, which is a bookmarked "[Set up later]" card | Sequencing or drift? Product call |
| **QBR / IR RCA / Alert Flood / Env Health / Tabletop have NO spec** | Coverage gap | acp-core-main-3 | Named platform-default cards with priority scores, nothing behind them | When/where do the top-demand coworkers get specced? |
| **Six-coworkers-feed-QBR not present**; coworker-to-coworker orchestration is a v1 **non-goal** | Vision↔spec | NONGOAL-002 | **CONFLICT** — build is 5 flat peer coworkers | Ratify flat-catalog, or fund composition |
| Build self-describes as **"agent factory / agent control plane,"** not "MSP-OS / Shopify" | Framing | CLAUDE.md | Divergent positioning | Which story do we tell externally? |
| Autonomy = **risk-tier + admin-gated promotion**, presented as **ratified** (decision-logged) | Backed-into→ratified | Approval model | Build treats it as canonical; research had 3 open models | Ratify formally or reverse |
| Value Ledger — customer-facing dashboard + internal anonymized aggregate | Match | 003-value-ledger | **CONSISTENT** with vision; "Trust Ledger" absent everywhere | None — this one's aligned |
| Time budgets: onboarding **<20 min**, builder **≤15 min median** | Spec↔spec | FSN-82692 ↔ FSN-83143 | Two different budgets for two different flows | Distinguish, don't reconcile |
| Only **Runbook Engine + Value Ledger** built close to spec; Coworker/Expert are **flat pre-registry tables** | Maturity | apps/backend | Rich registries (autonomy/guardrails/versioning) designed, not migrated | Eng reality-check on roadmap |

**Bottom line:** the vision is QBR-capstone / six-feed-it / MSP-OS. The build is **Ticket-Triage-first / five flat peers / agent-control-plane**, with only Runbook + Value Ledger actually built. The QBR capstone has no spec and no code. This is the biggest thing to resolve.

---

## 4. CANDIDATE PRODUCT OFFERINGS (clustered from the evidence — bets stay human)

Not features, not the raw six. Each is a thing an MSP buys and the org sells. **The bet sentence is yours** — I clustered and tagged; I did not decide.

### A · Client-Facing Proof — QBR narrative + Value Ledger
**Value prop:** Walk into the client meeting credible and strategic; justify the price with an auditable record of what the AI saved. (QBR + the one built, aligned mechanic.)
**Evidence:** **strong** — QBR #1 ×3 instruments; Value Ledger built + customer-facing. **The bet:** `[0% Claude — fill this in]`
**Riskiest:** 15-min edit (P0, ~35%, unowned) · normalization 75-80% (P0, ~30%, unowned) · buy-vs-build (mid-size buys, small self-builds, large already-have).
**Bundles:** QBR Analyst + Value Ledger (+ Env Health/Alert Flood as *inputs*, not standalone). **Model:** per-QBR outcome or per-tech flat.

### B · Governed Agent Control Plane — what's actually built
**Value prop:** Build, run, and govern AI coworkers with gated autonomy and a real audit trail — adopt AI safely *and* bill for it. This is the build's true identity and the harder-to-self-build moat.
**Evidence:** **mixed-strong** — gated autonomy universal (5/5 + 13/17); governance-dashboard gap named (*"everybody's beating the drum for that"* — Shawn); agent-sprawl pain (Derek's 200-agent MSP). **The bet:** `[0% Claude — fill this in]`
**Riskiest:** will MSPs *pay* for governance or expect it free (Shawn: *"probably not something you'll get someone to pay for"*) · buy-vs-build.
**Bundles:** Runbook Engine + autonomy tiers + MCP + Value Ledger metering. **Model:** platform access + per-run metering.

### C · Live Incident Response / RCA
**Value prop:** A customer-ready root-cause report built *during* the incident — the #1 item on cyber-insurance policies, defensible by morning.
**Evidence:** **mixed** — #2 qual, #3 survey; Vikram + Jonathan pay (per-incident / % of SOC). Value-rating soft (3.13). **The bet:** `[0% Claude — fill this in]`
**Riskiest:** zero-holes cross-stack correlation — **needs Adlumin data access (Gate C, unconfirmed)** · used-during-not-after.
**Bundles:** IR RCA + Tabletop (feeds runbooks) + Adlumin telemetry. **Model:** per-incident or % of SOC cost.

### D · Ticket Triage Wedge — the day-1 build
**Value prop:** The tech opens the ticket and context + safe diagnostics are already done. Daily, compounding.
**Evidence:** **split** — highest intensity (8.3) + most enthusiastic open-text, BUT #6 forced-rank (table-stakes-in-PSA signal). It's what's being **built day-1**. **The bet:** `[0% Claude — fill this in]`
**Riskiest:** delta vs. Rost/Thread/PIA · safe-auto/sign-off line · commodity (in-PSA).
**Model:** per-tech flat. **Tension to resolve:** we're *building* the thing that rates as table-stakes.

### E · Cross-Tool Reconciliation (research direction, not a ready offering)
**Value prop:** One AI with visibility across *all* the MSP's tools — billing reconciliation, the "AI bookkeeper." Aligns with the control-plane thesis better than QBR does.
**Evidence:** **thin but hot** — n=2 unprompted, intense; named white space. **The bet:** `[0% Claude — fill this in]`
**Riskiest:** is it ACP's job? Out of current scope. **Route to:** a discovery interview, not a spec.

**Probably NOT standalone offerings:** Alert Flood, Env Health, Tabletop — council minis + transcripts read them as *features / free-in-RMM*. Bundle into A or B; don't sell alone. [CS: MEDIUM]

---

## 5. RESEARCH GAPS & DATA-HYGIENE FLAGS (name them, don't fill them)
- **Interview count doesn't reconcile:** the deck/findings cite 8 blind interviews; **only 5 transcripts exist in the Guidepoint folder** (Kenneth May, Jonathan Blakey, Shawn Eftink, Derek Froese, Vikram Thakar). Verbatim for 5; 3 are second-hand. Verify before quoting "of 8." [CS: HIGH]
- **Vikram is an enterprise outlier** (350k-employee global IT, not an SMB MSP) — weight separately.
- **Operator / vCIO is unstudied** — every demand number is *buyer* purchase-intent (owners/VPs). The daily user is ~93% `[A]`. Every council "cannot-see" independently lands here.
- **`$33,600/mo` — DO NOT CITE** (CLAIM-MATH-DISPUTED-001). Underlying false-positive burden is real; the dollar figure isn't.
- **N-Zo 90→17.5 min — DO NOT USE as a benchmark** (n=3, self-reported, JS-gated report never opened, contradicted by Empower's 90→15-20).
- **Company strategy can't be checked** — `n-able-strategy-context.md` is a v0 placeholder. No on/off-strategy judgment is backed until FY27 strategy loads.
- **Hard external constraint:** EU AI Act enforceable **2026-08-02** — logging/audit must be built-in, not retrofitted. The Value Ledger + audit trail help here.
- **Still out:** Qualtrics (Meaghan, 500-target) · 12 remaining Guidepoint · Pendo behavioral (Snowflake, permissions-blocked) · Nicole's ACP Data Dump (competitors 60+, pricing report).

---

## 6. THE SYNTHESIS SENTENCE (yours)
> `[0% Claude — fill this in]` — what is ACP, in one sentence, now that you've seen the whole pile?

---
*Vision skill run 1. Stats to grep-verify before any handoff (47% rule): QBR 2.90 (n=39) · Env Health 3.59 · 75%=27/36 · Condens 13/17 · autonomy 5/5. Sources: survey 62149787674, datadump 62175674556, 5 Guidepoint transcripts, acp-findings-2026-07-14.json, acp-core-main-3.*
