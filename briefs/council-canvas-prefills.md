---
artifact: "Canvas prefills — council-flagged frameworks for alpha-race"
type: "draft prefill content for workshop canvases"
date: "2026-05-28"
source_council_pass: "briefs/council-pass-v3.1.md"
source_jira: "ADL-1838 (Initiative) · ADL-1839 (Epic) · ADL-1840 (Research Spike)"
status: "DRAFT prefill · v1 scope = 6 canvases · all entries marked [CS: MEDIUM] · canvas author verifies, accepts, edits, or rejects"
purpose: "When workshop canvases are filled, no blank page. Council intelligence seeds the canvas. Author owns the truth — gray text becomes black text only when verified."
scope: "[R — Beth 2026-05-28] V1 scope is six canvases (12 was scary). Six = Wardley, Kano, Moore positioning, Economic Buyer, plus prefills for JTBD + Service Blueprint (already in workshop). The other five (Mode 1 alt casings, Mode 3 ethnography plan, Doblin, Mode 5/6 alternatives, SDT/Maslow disambig) move to the open research questions panel / Research Plan markdown export — they are research actions, not canvases."
---

# Council Canvas Prefills — Alpha (RACE)

*Every prefill is a hypothesis, not an answer. The canvas author confirms, edits, or strikes through. [CS: MEDIUM] until verified.*

**Convention:** Each canvas entry uses ⟨gray⟩…⟨/gray⟩ markers to indicate prefilled content that must be verified before becoming authoritative.

## V1 scope — the six

[R — Beth 2026-05-28: *"You can start with 6 — 12 is scary."*]

1. **Wardley Map** (LAND voice · §1) — new canvas
2. **Kano Grid** (FEAT voice · §2) — new canvas
3. **Moore Positioning Statement** (CHTR + POS voices · §3) — new canvas
4. **Economic Buyer Map** (ECON voice · §4) — new canvas
5. **JTBD prefill** (JOBS voice · §7) — canvas already exists in workshop, prefill content seeds it
6. **Service Blueprint prefill** (JRNY voice · §8) — canvas already exists in workshop, prefill content seeds it

Sections §5 (Mode 1 alternative casings · SIGN) and §6 (Mode 3 ethnography plan · JRNY) remain in this document but **move to the open research questions panel / Research Plan markdown** rather than being workshop canvases — they're research actions that produce data, not canvases that hold a fixed frame.

Sections §9 (Doblin), §10 (Mode 5/6 alternatives), §11 (SDT/Maslow disambig) stay parked as Should-level / next-tier — still useful prefill if those canvases get built later, but not v1.

---

## MUST-level canvases (council force-rank)

### 1. Wardley Map — LAND voice

**What the canvas asks:** Map the value chain from MDR-analyst-user down to commodity infrastructure. Plot each component on the evolution axis (Genesis · Custom · Product · Commodity).

**Prefill (verify):**

⟨gray⟩

**Value chain (top-down, from user need to substrate):**
- User: MDR analyst (visible, the one with the alert backlog)
- User need: incident clarity in a 2 a.m. surge — *anchored by* JOBS testimony [CS: VERIFIED]
- Frontstage: incident view + scoring panel + narrative
- Activity: triage · investigate · escalate · respond
- Tool components: Alpha (RACE) correlation engine · "Why 94" trust UI · what/why/next narrative · Incident Map
- Data components: detection events · entity standardization (user/host/source/destination) · syscore ingestion · model outputs
- Infrastructure: Snowflake · SIEM ingestion · Abacus ticketing · SOAR

**Evolution stage placements (per Wardley axis):**
- AI-assisted incident triage (the Alpha bet) → Custom · still novel, vendors not converged
- Probabilistic correlation scoring → Custom → Product transitioning
- Story-format narrative output → Genesis · most vendors don't ship this
- Standardized detection fields → Product · table stakes
- Ticket consolidation → Product · existing capability in MDR category
- syscore + Incident Map → Product · n-able-native
- SIEM ingestion → Commodity
- SOAR routing → Product → Commodity

**Competitor placements (the missing read):**
- Arctic Wolf · MDR Concierge → Product (rule-based correlation; not probabilistic) [CS: LOW — outside training window]
- CrowdStrike Falcon Complete → Product (some grouping within Falcon detections; not full story generation) [CS: LOW]
- Sophos MDR → Product (similar shape) [CS: LOW]
- Red Canary → Product (story-format threat reports — closest competitor on narrative axis) [CS: MEDIUM]
- Huntress → Custom (newer entrant; lighter-weight; targets smaller MSPs) [CS: MEDIUM]

**Strategic implication:** Alpha is in Custom; competitors are in Product. 12–18 month lead window IF the move from Custom → Product happens before competitors catch the AI scoring + narrative idea.

⟨/gray⟩

**Author should verify:** Q1–Q2 2026 competitor moves (Claude knowledge cutoff applies); Wardley evolution placements; whether Huntress actually targets the same segment.

---

### 2. Kano Grid — FEAT voice

**What the canvas asks:** Classify each Alpha feature as Must-be · Performance · Excitement · Indifferent · Reverse.

**Prefill (verify):**

⟨gray⟩

| Feature | Council prefill classification | Rationale |
|---|---|---|
| Trust UI ("Why 94" scoring panel) | **Must-be** | Absence destroys analyst confidence; presence is invisible. The Epic's Should Have demotion is the Kano error FEAT testimony names. |
| Correlation accuracy (basic) | **Must-be** | Below floor = product unusable |
| Consolidation ratio (47→12) | **Performance** | More is linearly better; metric scales monotonically |
| "What/why/next" narrative format | **Excitement** | Delighter if it works; neutral if it doesn't (delighters are typed first-instinct concepts per CNPT) |
| Pendo tagging | **Indifferent** | Analyst doesn't see it; product team needs it |
| Real-time correlation (<1 min) | **Reverse?** | Customer cuts to time-boxed in Epic; if real-time was on, would they actually use it differently? Unclear. |
| Hotspot leader-lines / Review Mode | **Excitement** | UI delighter; affects PM, not analyst |

**Test design:** 5-point Kano questionnaire with 10–12 MDR analysts (NN/g 10–12 AI feature floor). Ask paired functional / dysfunctional questions per feature.

⟨/gray⟩

**Author should verify:** Whether "real-time" should be classified Reverse (customer doesn't want it) or Performance (they do want it, scaled by latency). Kano questionnaire wording per Sauro/Lewis.

---

### 3. Moore Positioning Statement — CHTR + POS voices

**What the canvas asks:** Fill the Moore template. If "unlike [alternative]" cannot be filled cleanly, the Charter is a wish.

**Prefill (verify):**

⟨gray⟩

**For** MDR analyst teams operating tier-1 SOC within MSP and mid-market organizations using Adlumin MDR / XDR

**Who** currently triage individual detections in isolation, drowning in ticket volume (3-4 tickets per incident per Hilda Mar 2026) and losing situational awareness during active incidents

**Alpha (RACE) is** a probabilistic AI-assisted incident correlation engine

**That** groups related detections into single incident stories with risk-ranked scoring and what/why/next narrative — built on existing Incident Map + syscore telemetry, requiring no new data sources

**Unlike** Arctic Wolf MDR Concierge (rule-based correlation, no probabilistic scoring) · CrowdStrike Falcon Complete (some grouping within Falcon-only detections, no narrative generation) · Sophos MDR (similar rule-based) · Red Canary (story-format threat reports but no real-time consolidation)

**Alpha** uses probabilistic / ML scoring on existing telemetry, narrative storytelling for analyst comprehension, and standardized detection fields (user/host/source/destination) to deliver consolidation independent of static severity labels.

⟨/gray⟩

**Author should verify:** Competitor differentiation accuracy [CS: LOW — Claude knowledge cutoff]; whether "unlike [alternatives]" parses cleanly for Beth + Raj without bluffing; whether tier-1 MSP is the right "for" anchor or whether enterprise-direct should be primary.

---

### 4. Economic Buyer Map — ECON voice

**What the canvas asks:** Who actually signs the MDR contract? What do they care about? What would make them not renew?

**Prefill (verify):**

⟨gray⟩

**Buying personas at typical MDR customer (mid-market / MSP):**

| Persona | Role | Decision authority | Cares about |
|---|---|---|---|
| **CISO** | Information Security executive | Signs MDR renewal; owns risk budget | Cost-per-incident · breach defensibility · audit-log completeness · contractual SLA on isolation time · regulatory compliance posture |
| **IT Director** | Operational owner | Approves below CISO threshold; influences | Analyst attrition (their team's capacity) · time-to-resolution · ticket volume normalized to staff size |
| **CFO** | Above ~$50K signature | Signs above threshold | TCO trajectory · multi-year cost vs. SOC build · vendor consolidation |
| **VP IT** | Alternative title in flatter orgs | Same as IT Director | Same |

**For Acme Bldg Supply (fictional · mid-market) — most likely buyer:**
- CISO if they have one (mid-market threshold ~$50M revenue)
- IT Director if no CISO seat
- Owner-operator/CFO involvement for renewal signoff

**Renewal triggers (what makes them not renew):**
- Missed breach → defensibility failure
- Analyst attrition (their internal team can't keep up; MDR not absorbing load)
- Incident-to-resolution time growing
- Cost-per-incident not improving year-over-year
- Audit-log gap exposed in a compliance review

**Value-based pricing axis:**
- $ saved per missed-breach-avoided (low-probability, high-value)
- $ saved per analyst-hour reclaimed (high-probability, moderate-value)
- $ saved per ticket reduction (medium-probability, low-value alone)

**Alpha's current value claim ("47 → 12 alerts") maps to:**
- Analyst-hour reclaimed (HIGH match)
- Defensibility (NO match — consolidation doesn't speak to defensibility)
- Cost-per-incident (PARTIAL — depends on whether time-saved translates to fewer escalation seats)

**Implication:** Alpha's current pitch is an analyst-hour story, not a defensibility story. CISO renewal motion needs defensibility framing too — or this is a PLG bottoms-up motion (analyst-as-buyer) that needs different go-to-market.

⟨/gray⟩

**Author should verify:** One conversation with one Acme-equivalent CISO. Ask the council's Kill-criterion question: *"What would make you not renew?"*

---

### 5. Mode 1 Alternative Casings — SIGN voice

**What the canvas asks:** The "3-4 tickets per incident" sign — what ELSE could explain it besides "Alpha solves a real correlation gap"? Each alternative is independently testable.

**Prefill (verify):**

⟨gray⟩

**The observed sign:** Customers report 3-4 tickets per incident; analysts manually correlate (Hilda Mar 2026; MDR escalation pattern).

**Current hypothesis:** Alpha is needed because the correlation gap is real → consolidation engine solves it.

**Alternative casings (each independently testable):**

1. **SOAR auto-action tax** — Each SOAR action (isolation, blocking, quarantine) generates its own alert/ticket independent of detection correlation. So ticket inflation is partly *response actions*, not detection multiplicity. Test: pull SOAR-vs-detection ticket ratio from Snowflake. If >40% of tickets are SOAR-action-generated, Alpha's correlation engine addresses only part of the problem.

2. **Microsoft Defender triplication** — Defender generates ~2-3 events per malicious activity by design (initial detection + response action + resolution). The "3-4 tickets per incident" may largely be a Defender ingestion artifact, not a multi-source correlation problem. Test: filter ticket counts by source = Defender vs. others.

3. **Alert tuning regression** — Detection engineering may have over-tuned rules in the past 6 months, generating more detections per real incident. Test: check rule-firing rate trend in Snowflake.

4. **Operator workflow** — Analysts may not be closing tickets properly (one incident, four tickets, all closed by hand without parent-child linkage). Test: ticket lifecycle audit across 20 MDR partner accounts.

5. **Tier-1 staffing model** — MSPs running tier-1 analysts may fragment work intentionally (one analyst per ticket) so ticket volume reflects staffing model, not problem volume. Test: compare ticket-per-incident across MSP staffing models.

6. **What we hypothesize (Alpha solves correlation gap)** — true and the others are also true; consolidation engine addresses #1, partially #2, none of #3-5.

⟨/gray⟩

**Author should verify:** Pull the Snowflake data (DS Zachary). At minimum, casing #1 (SOAR-vs-detection ratio) and #2 (Defender share) should be answered before Alpha's value claim ships externally.

---

### 6. Mode 3 Ethnography Plan — JRNY voice

**What the canvas asks:** Field research plan with sample sizes (NN/g + Kumar Mode 3 ethnography).

**Prefill (verify):**

⟨gray⟩

**Objective:** Observe the actual MDR analyst incident-triage workflow in situ. Reveal handoffs and friction points invisible from screen mocks.

**Method:** Mode 3 ethnography — site visits with passive observation + think-aloud + post-shift interviews.

**Sample (NN/g + Kumar Mode 3):**
- **3–5 MDR partner sites** (depth > count per Kumar)
- **1–3 days each** (a full shift cycle minimum to catch handoffs)

**Per site:**
- Tier-1 analyst shift-shadow (5+ analysts across the cohort, mixed shifts including 2 a.m. peak)
- Tier-2 escalation observation (2+ analysts on the escalation desk)
- MDR manager interview (1 per site)

**Observation focus:**
- Shift handoff: how does outgoing analyst transfer in-flight incidents?
- Alert triage workflow: what's the actual cognitive flow when an alert arrives?
- Escalation procedure: when does an analyst escalate vs. close vs. defer?
- End-of-shift backlog: what's the analyst doing in the last 30 minutes of shift?
- SOAR auto-action notifications: how does analyst experience automated actions?
- The 2 a.m. surge: what's the felt experience when 50+ alerts/hour hit?

**Site selection criteria:**
- Mix of MSP sizes (small / medium / large)
- Mix of segments (US / EMEA / financial services / healthcare)
- Mix of Adlumin tenure (new customer / 1+ year / 3+ year)

**Deliverables:**
- Service Blueprint (current state) per site
- Empathy Map filled across all 4 quadrants (Say + Do + Think + Feel) per persona
- Top 5 friction points ranked by analyst-impact × frequency
- "What did you do yesterday to manage alert volume?" — JOBS Kill-criterion answers from all subjects

⟨/gray⟩

**Author should verify:** Julian's calendar; site access via MDR partner relations; whether 3 or 5 sites is the right number given the segment mix.

---

### 7. JTBD (functional + emotional + social) — JOBS voice [exists in workshop · prefill the canvas]

**Prefill (verify):**

⟨gray⟩

**When** I'm an MDR analyst in the middle of a tier-1 shift, alerts arriving faster than I can investigate them, half of them obviously related to the same activity but each generating its own ticket

**I want to** see what's actually happening — which alerts are one incident, which are unrelated, what the situation actually is

**So I can** investigate fewer, more meaningful units of work and feel confident I'm not missing the one that matters

**Functional jobs:**
- Triage 50+ alerts/hour without missing the breach
- Group related detections automatically so I don't manually correlate
- Prioritize by actual risk, not severity label

**Emotional jobs:**
- Feel in control during a 2 a.m. surge — not drowning, not numb
- Not be the one who missed the breach (job-security need)
- Trust the scoring enough to act without second-guessing

**Social jobs:**
- Not have to explain to my manager why I escalated 47 tickets for one incident
- Have a defensible record for compliance audits
- Be the analyst other analysts respect (competence-signaling)

**What the analyst hires Alpha to fire:**
- Their own coping strategies (filter rules, ignore-lists, end-of-shift triage backlogs, learned numbness) — per JOBS testimony, this is the more honest competitor than Arctic Wolf or CrowdStrike.

⟨/gray⟩

**Author should verify:** Beth's domain. Has anyone tested this with 10–12 MDR analysts? JOBS Kill criterion: ask 10–12 analysts *"what did you do yesterday to manage alert volume?"* — if dominant answer is workarounds, Alpha competes with workarounds, not with vendors.

---

### 8. Service Blueprint (current state) — JRNY voice [exists in workshop · prefill the canvas]

**Prefill (verify):**

⟨gray⟩

**Customer actions (analyst-facing — what the user does):**
1. Receives alert ticket → 2. Reads alert details → 3. Checks related alerts manually → 4. Pivots to logs → 5. Decides: close · escalate · investigate → 6. Documents · responds → 7. Marks resolved

**Frontstage (visible to analyst — what they see):**
- Adlumin alert queue
- Individual detection cards
- Incident Map (when they manually pivot to it)
- Abacus ticket view
- SOAR action notifications

**Backstage (analyst doesn't see — what's happening invisibly):**
- Detection rules firing on syscore ingestion
- Microsoft Defender / Azure AD / EDR sources push events
- SOAR auto-actions execute (isolation, blocking)
- Incident Map updates incrementally
- DS model scoring (in Alpha future state)

**Support processes (what supports the work):**
- Detection engineering rule maintenance
- DS model training + retraining cadence
- syscore ingestion pipeline
- Audit log archival

**AI handoff points (Shostack blindspot — modern addition per JRNY testimony):**
- Detection-source → Alpha correlation engine (currently invisible)
- Alpha correlation → analyst view (the frontstage moment)
- Analyst decision → SOAR (handoff to automation)
- SOAR action → customer IT (often missed — who notifies them at 2 a.m.?)
- Model output → DS retraining feedback (closed-loop or not?)

**Friction points (where the experience breaks):**
- Step 3 (manual correlation across alerts) — the problem Alpha solves
- Step 4 (pivot to logs) — context-switching
- Steps 5-6 (decide + document) — anxiety load
- SOAR notifications — analyst doesn't always know what SOAR did

⟨/gray⟩

**Author should verify:** Tier-2 escalation flow not captured here; customer-side experience (the IT manager at 2 a.m.) not captured here — that needs Mode 3 ethnography fill.

---

## SHOULD-level canvases

### 9. Doblin 10 Types — PORT voice

**Prefill (verify):**

⟨gray⟩

| # | Type | Alpha plays here? | Notes |
|---|---|---|---|
| 1 | Profit Model | ✗ | No new pricing/monetization claim |
| 2 | Network | ✗ | No platform/partner leverage claimed |
| 3 | Structure | ✗ | No org/infra reconfiguration |
| 4 | Process | **✓ (modest)** | Correlation as a process innovation; standardizes how detections become incidents |
| 5 | Product Performance | **✓ (primary)** | Better incident view; better consolidation; ranked scoring |
| 6 | Product System | **✓ (partial)** | Incident Map + syscore + Alpha as a system — but the system claim is implicit, not architected |
| 7 | Service | **✓** | MDR service offering improves; analyst-hours reclaimed |
| 8 | Channel | ✗ | No channel innovation |
| 9 | Brand | ✗ | No brand claim ("Adlumin = AI-first MDR" is implied but not architected) |
| 10 | Customer Engagement | **✓** | Story view changes how analysts engage with incidents |

**Result:** Alpha plays in 5 of 10 types — moderate to strong portfolio play. **But the highest-moat types (Profit Model, Network, Structure) are empty.** Per PORT testimony: easy-to-copy product performance plays need a flywheel claim. The Epic does not claim one.

**Moat audit:** Where is the data flywheel? Could Alpha use customer telemetry to improve scoring such that each new customer makes the product better for all customers? If yes, that's a Type 2 (Network) claim and a real moat. Currently: not architected.

⟨/gray⟩

**Author should verify:** Whether a flywheel/network claim is intentionally absent (because data privacy across tenants) or accidentally absent (because nobody thought to architect it).

---

### 10. Mode 5/6 Alternatives Matrix — CNPT voice

**Prefill (verify):**

⟨gray⟩

For each of the 5 prototype hotspots, alternatives that were (or should have been) considered and why each was rejected.

**Hotspot 1 — Incident Story View:**
- ALT A: Timeline-first view (chronological event stream) — rejected because timeline doesn't surface causality
- ALT B: Risk-score-first view (94/100 + 1-sentence summary) — rejected because score without context fails trust
- ALT C: Entity graph view (user/host/source/destination as nodes) — rejected because cognitive load too high for tier-1
- ALT D: Existing alert-list view (do nothing) — rejected because that's the problem we're solving

**Hotspot 2 — Transparent Scoring ("Why 94"):**
- ALT A: Show top-3 contributing detections only — could be valid; less is more
- ALT B: Confidence band only (High/Medium/Low) — rejected as too lossy
- ALT C: Numerical score only — rejected as the Kano must-be (verified by FEAT voice)

**Hotspot 3 — What/Why/Next Narrative:**
- ALT A: Bulleted incident facts — rejected as not story-format (loses the comprehension delighter)
- ALT B: Pre-filled investigation template — could be valid; closer to existing analyst workflow
- ALT C: Free-text analyst notes only — rejected as no signal Alpha is adding

**Hotspot 4 — Customer-Facing Surface:**
- ALT A: No customer surface — matches Epic Out of Scope; matches default
- ALT B: Customer notification only on critical — could be valid; minimal exposure
- ALT C: Embed in customer's portal — out of v1 scope per Epic

**Hotspot 5 — UX Attribution Row:**
- ALT A: Don't surface attribution — rejected per honor-code structural answer
- ALT B: Show only Originator on hover — could be valid; less noise
- ALT C: Full credit roll always visible — matches Originator/Contributors principle

⟨/gray⟩

**Author should verify:** Whether Beth + Alaina actually considered these alternatives offline or whether this prefill is the council guessing. Per CNPT Kill criterion: if Beth + Alaina can produce the actual rejected-alternatives list in 30 minutes, CNPT is implicit-but-real; if they cannot, the concepts are unexamined.

---

### 11. SDT / Maslow Disambiguation on Trust UI — NEEDS voice

**Prefill (verify):**

⟨gray⟩

**The trust UI ("Why 94" scoring panel) — what need does it serve?**

**SDT (Deci/Ryan) reading: Competence-support**
- Analyst can learn the pattern (scoring math visible)
- Builds analyst's own predictive intuition over time
- Implies: trust UI is a Should Have because analyst doesn't strictly *need* it; they can develop confidence iteratively

**Maslow reading: Safety-need**
- Analyst's job is at risk when the model is wrong and they acted on it
- Trust UI is verification; without it, analyst is gambling on the model
- Implies: trust UI is a Must-be because absence makes the analyst feel unsafe

**Voice disagreement is the point — both are true.**

**Test that disambiguates:** Interview 10–12 MDR analysts. Ask: *"When you trust Alpha's scoring, what changes for you?"*

- Answers like *"I can stop second-guessing"* → safety-need (Maslow). Promote trust UI to Must-be (Kano + Maslow agree).
- Answers like *"I can investigate more incidents"* → competence-support (SDT). Trust UI stays Should Have but improves over time.
- Answers like *"I can finally focus on the breach instead of the model"* → both at once. Trust UI is Must-be early, then becomes Should-have once analyst learns the pattern.

⟨/gray⟩

**Author should verify:** Julian designs interview prompt. Beth + Alaina interpret the dominant answer. NEEDS voice doesn't decide for you — it surfaces the disagreement honestly.

---

## How to use this file

1. **When a workshop canvas opens** — these prefills become gray-text seeds in the canvas
2. **Canvas author reviews** — accepts (turns gray to black) · edits · or strikes through
3. **What survives author verification** — becomes the canvas content; updates cluster testimony; resolves clash
4. **What gets struck through** — stays in `briefs/council-pass-v3.1.md` as the council's record; canvas author's correction lives in the canvas itself

**Per Owen Originator/Contributors:** Each canvas's saved version has:
- Originator: the canvas author (Beth · Alaina · Julian · whoever fills it)
- Contributors: "Bradley council pass 2026-05-28" (the prefill source)
- Date · Version

This is the honor-code structural answer applied to workshop canvases: when the prefill is by Claude/council, *say so explicitly*; the canvas author owns the truth.

---

*Canvas prefills · sourced from council pass 2026-05-28 · all entries [CS: MEDIUM] until canvas author verifies*
