# EBR/QBR Process Map — Stefanie Hammond material through the operations lens
**Date:** 2026-07-28 · **Source:** `scout_input/stefanie-hammond-ebr-sources-2026-07-28.md`
**Lens:** the operations frame from the Jul 27 run — `briefs/systems-maps-2026-07-27.md` (STS/bottleneck · production-line vs job-shop · fishbone · theory of constraints).
**Discipline:** `[R]` research · `[D]` data · `[A]` assumed · `[?]` unknown · `[CS:]` on factual claims. Bet sentences stay `[0% Claude]`.

---

## Why this material is worth a map

Two things arrived that the corpus did not have:

1. **A documented, taught process** for the thing Offering A is supposed to draft. Until now "QBR/EBR" was a rank on a survey and a phrase in a deck. Now there's an 8-step account-management envelope, an 8-component meeting agenda, a named artifact set, and an explicit anti-pattern list — **authored by N-able's own Head Nerd.** `[R — vendor training, WOBBLY: self-interested]`
2. **A measured operator.** Vanessa Chart (Head of Client Delivery, Technica Solutions, 13 yrs) describing **one year of real adoption**, with real numbers: 4–5 hours per EBR, and a discovered ceiling of **fewer than 4 EBRs a week.** `[R — n=1, vendor-selected reference customer, WOBBLY]`

The headline, **CORRECTED 2026-07-28 after council + scout**: Stefanie's core instruction to MSPs is *assemble the production-line data, then never show it — translate it into the job-shop conversation.* `[CS: HIGH — her explicit instruction, 0:34:29 + 0:36:36]`

**What this is NOT: independent corroboration of the kit thesis.** The original draft of this line claimed it was. Two ways that failed:
- **Not independent of the subject.** She is the Head Nerd whose craft is the thing being kitted, employed by the vendor that would sell the kit.
- **Not independent of the analyst.** Someone chose which fragments of 1:34:00 to quote, *after* the kit thesis already existed. Confirmation risk lives in the coding, not only in the source. `[WOBBLY]`

**What it IS, and it's still worth having:** a documented, taught instruction that happens to describe the same move. Read it as a *convergent articulation from inside the same commercial interest* — useful for language and agenda design, worthless as validation. The genuinely independent version of this finding arrived from a different direction and is stronger: **the SaaS customer-success field reached the same diagnosis in a different industry** (QBRs degrade into "dashboard reports, product usage statistics, support metrics") with no N-able interest at all. `[CS: MEDIUM — see scout_input/qbr-adjacent-and-legal-2026-07-28.md Part A]`

---

## Map 1 · The EBR value stream, with the constraint measured

★ = constraint (scarce judgment / scarce person) · ⚙ = kittable · ⚡ = the number Vanessa gave us

```
   ┌──────────────────── ONE EBR CYCLE · 4–5 hours ⚡ (Vanessa 20:23) ────────────────────┐
   │                                                                                       │
   │  ┌─────────────── PREP ───────────────┐   ┌── DELIVER ──┐   ┌───── FOLLOW-UP ─────┐  │
   │                                                                                        │
   │   A. ASSEMBLE ⚙        B. JUDGE ★        C. THE ROOM ★      D. TRANSCRIBE ⚙          │
   │   warranty/EOL         what's the gap    1.5–4h, exec-      summary doc               │
   │   license util         vs OUR standard   level, business-    E. RE-ISSUE ⚙           │
   │   user/staff list      what's the        only. Read the      roadmap + budget         │
   │   ticket/SLA counts    business          room. Park the      F. ACTION → TICKET ⚙    │
   │   phish-sim/training   consequence       tech questions.     every item into the PSA  │
   │   tenant config        what goes on      Get consensus.      G. REFERRAL CHASE ★     │
   │   ── the risk review   the roadmap       Ask for referral.                            │
   │      built by the      set the                                                        │
   │      HEAD OF TECHNICAL priority                                                       │
   │      OVERVIEW ★★       order                                                          │
   │      (pulled off the                                                                  │
   │       service desk)                                                                   │
   └───────────────────────────────────────────────────────────────────────────────────────┘

   MEASURED CEILING: "four EBRs a week was actually not sustainable" ⚡ (Vanessa 26:04)
   TWO scarce people per cycle, not one ★★ (Vanessa 25:25)
```

**Reading it.** The constraint is not the meeting. The constraint is **A+B — prep — and it consumes two scarce people**: the client-delivery lead *and* a technician pulled from the service desk to build the risk review. Vanessa: *"You can't go to these meetings and prepare 20 minutes before you walk in"* `[0:19:08]`.

> **⚠ CORRECTED 2026-07-28.** This paragraph originally read *"Stefanie's independent number agrees: 2–3h research before 2–4h delivery."* **It is not independent.** The source record's own timeline says Vanessa adopted this framework after Craig returned from Empower — **she learned the process from Stefanie's material.** The two figures are the same process measured twice at two points in its transmission. That is an echo, not convergent validation, and it was load-bearing under Claim 1 below. `[CS: HIGH — the transmission is documented in the source record, Source 2 timeline]`
>
> **Scout then found the wider figures, and they are no better.** A QBR-automation vendor claims 3–8 hours of senior time per client per quarter; "4–6 hours" is repeated across vendor blogs with **no primary source anywhere**. Vanessa's 4–5h sits inside that range — but the range is folklore, so this is **three unsourced numbers agreeing, not triangulation.** `[CS: LOW — see scout_input/qbr-independent-sources-2026-07-28.md §3]`
>
> **Net: the 4–5h baseline is the best number we have and it is still one conversational self-report.** Treat prep-time reduction as a ratio against a stated-and-caveated baseline, never as an absolute.

**Every ⚙ in that diagram is data assembly or document re-issue.** Every ★ is judgment or relationship. The line between them is clean, and it falls *inside* prep — which is exactly where the theory-of-constraints move belongs.

---

## Map 2 · Production line vs job shop, applied to the EBR itself

This is the buildable spec. Stefanie drew the line for us; the operations frame just names it.

```
                    │  PRODUCTION LINE → AUTOMATE      │  JOB SHOP → KIT
 ───────────────────┼──────────────────────────────────┼──────────────────────────────────
  In the EBR        │ hardware warranty + EOL report   │ "what does this gap COST your
                    │ software license utilisation     │  business" — the translation
                    │ (who hasn't logged in, 3–4 mo)   │ the RTO/RPO probing questions
                    │ user/employee list reconcile     │ business goals, 12/24/36-mo plans
                    │ ticket volume + SLA attainment   │ prioritising the roadmap
                    │ patch + backup status            │ getting consensus / preliminary
                    │ phish-sim + training completion  │  buy-in on projects
                    │ tenant security config vs base   │ reading the room (the lunch)
                    │ compliance-standard checklist    │ the referral ask
 ───────────────────┼──────────────────────────────────┼──────────────────────────────────
  Stefanie's rule  │ ASSEMBLE IT — AND NEVER SHOW IT  │ THIS IS THE WHOLE MEETING
                    │ "don't show them graphs and pie  │ "strategy and business focused"
                    │  charts and percentages" 0:36:36 │  0:34:38
 ───────────────────┼──────────────────────────────────┼──────────────────────────────────
  Who can do it     │ a machine, today                 │ Vanessa — deliberately NOT a
                    │ (Vanessa: "we're building        │  technician (09:56, 10:01)
                    │  reports for that" 28:15)        │
 ───────────────────┼──────────────────────────────────┼──────────────────────────────────
  Failure mode      │ done late, done by hand, done    │ MSP without confidence "falls
                    │ by a technician who should be    │  back on what they are
                    │ on the service desk              │  comfortable with" — and shows
                    │                                  │  the production-line output
                    │                                  │  instead. 0:34:29  ← THE FAILURE
```

**The finding.** The single most-cited reason EBRs fail, in Stefanie's own diagnosis, is **an operator doing the job-shop meeting with production-line material** — showing patch reports to a finance director. She spends the boot camp correcting a *category error*. That is the same category error the Jul 27 run named the market making at portfolio level `[systems-maps Map 2, line 51]`. Same error, two altitudes. `[CS: HIGH]`

**What it means for the build.** The coworker's job is not "generate the EBR." It is:
- **own the left column completely and silently** — assemble, never surface as-is;
- **draft the translation** — the left column expressed as business consequence, which is the first ★ and the one with a corpus behind it;
- **hand the operator the right column as a prepared conversation**, not a deck.

That is a kit. Not automation (the room stays human), not raw templates (the translation is pre-drafted). `[A — session thesis, now corroborated]`

---

## Map 3 · The artifact set — and it is dual-surface

Stefanie's minimum viable EBR is **two living documents**, not a presentation `[CS: HIGH — 1:15:34]`:

```
   ┌── RISK REGISTER ────────────┐   ┌── TECHNOLOGY ROADMAP ───────┐
   │ every identified risk       │   │ 12–36 month horizon         │
   │ every deviation from OUR    │   │ prioritised project list    │
   │  security standard          │   │ re-prioritised each meeting  │
   │ the recommendation made     │   │ + TECHNOLOGY BUDGET (the CFO │
   │ the date it was made        │   │   asks for a copy — that is  │
   │ the client's answer         │   │   the buy-in moment) 1:21:28 │
   └──────────┬──────────────────┘   └──────────┬──────────────────┘
              └──────────────┬──────────────────┘
                             ▼
              ┌── THE WORKING DOCUMENT ──────────────────────┐
              │  Vanessa: client does NOT get the whole       │
              │  thing — "there's some internal notes on      │
              │  there that I need to keep" 29:38             │
              └──────────────┬───────────────────────────────┘
                             ▼
              ┌── THE CLIENT-FACING EXTRACT ─────────────────┐
              │  follow-up email: the relevant risk-review    │
              │  items they showed interest in · hardware     │
              │  report · budget listed (doc not attached)    │
              └──────────────────────────────────────────────┘
```

**Design constraint, not a nice-to-have.** The artifact has **two surfaces with different contents.** The internal surface carries the MSP's own judgment, pricing intent, and candour about the client. The client surface carries the agreed record. Any product that renders one document breaks the operator's actual practice. `[R — Vanessa 29:38, CS: HIGH for n=1]`

**Continuity, second-order.** Vanessa: if she's away, *"it's all saved… they can get into the document."* The living document is the MSP's institutional memory of that account. That is a switching-cost surface nobody in canon has priced. `[?]`

---

## Map 4 · Fishbone — why EBRs fail (Stefanie's + Vanessa's own root causes)

```
   NO STRUCTURE / no          THE PREP COST                RESOURCE CONTENTION
   framework — "they don't    2–3h research before you     the risk review needs a
   know how to structure      can open your mouth          technician OFF the service
   them" 0:33:44                    │                      desk ★★ (Vanessa 25:25)
            \                       │                       /
             \                      │                      /
              ───────────────────►◆ THE EBR MOTION DIES ◄──────────────────
             /                      │                      \
            /                       │                       \
   OPERATOR DISCOMFORT →     "CLIENT SAID NO"          NO FOLLOW-THROUGH
   falls back to tech/stats  taken at face value       action items never became
   → meeting reads tactical  0:32:44 — Stefanie        tickets → "quickly cause your
   → client sees no value    calls this a terrible      customer to lose faith" 1:26:33
   → client declines next    reason                     ← Stefanie's #1 killer
```

**Read.** Same two spines as the runbook fishbone (`systems-maps` Map 3): **capability** (no structure, no time, no confidence) and **accountability** (no follow-through, excuses accepted). And the same root sits under the capability spine that sits under the runbook one: **no time.** The 70%-no-time population from Joe's account and the MSP-can't-prep population here are **the same population.** `[A — cross-source inference]`

**One rib is new and it is the one a product can't fix:** operator discomfort in an executive room. Stefanie's remedy is role-play and practising on friendly clients. A kit can pre-draft the conversation; it cannot give someone the nerve to sit in front of a CFO. **That is a genuine ceiling on the offering, and it is not in canon's assumption set.** `[?]`

---

## Map 5 · The accountability spine — the risk register is a liability instrument

Stefanie states the register's purpose three separate ways, and none of them is "prove value":

- **shift the risk** — *"pushing the risk back onto the customer"* `[0:58:28]`
- **survive the insurer** — show the register when the carrier hunts for negligence `[0:59:07]`
- **stay out of court** — three live MSP lawsuits; her stated takeaway: those MSPs *"were not having regular meetings with their clients"* `[1:00:44]` `[CS: LOW — cases unnamed, causal claim is hers]`

And the John anecdote is the mechanism working: the documented warning trail *removed the emotion and the blame* when the client got hit `[0:31:21]`.

> ## ⚠⚠ MAP 5 DOWNGRADED 2026-07-28 — THE LEGAL MECHANISM IS UNSUBSTANTIATED
>
> This section originally presented risk-shift as upside and proposed defensibility "may be the stronger buying trigger." **Scout checked the record. It does not support that.** `[scout_input/qbr-adjacent-and-legal-2026-07-28.md Part C]`
>
> **1. Two named cases exist, not three, and neither is 2025.**
> - **Mastagni Holstedt, A.P.C. v. LanTech, LLC; Terry Alan Berg; Acronis, Inc.** — Sacramento County Superior Court, filed 26 Feb 2024, $1M+ sought, **still active** (CMC continued to 05/01/2026). `[CS: VERIFIED — public docket]` **N-able has already blogged this exact case.**
> - **Boardman Molded Products v. Involta LLC** — Mahoning County, Ohio, 2020, $1.7M phishing loss. Outcome not found. `[CS: HIGH]`
> - No third case, and nothing 2025-dated, met the naming bar. The likely origin of the "three lawsuits" figure is MSP-security-vendor marketing content using hypothetical framing with no docket. `[CS: LOW — negative finding]`
>
> **2. No case law — US or UK — has ever tested a documented client refusal as a defence.** The mechanism is asserted constantly in vendor and MSP-attorney marketing and has never been demonstrated against a decided judgment. Where the law-firm content is specific, it claims the form guards against **gross** negligence, not all claims. `[CS: LOW]`
>
> **3. No carrier, MGA, or broker treats it as mitigating.** Underwriters assess **deployed, verifiable controls** — MFA, immutable/tested backups, EDR, documented IR plan. The claim risk that actually gets litigated is *the insured's own application accuracy* ("misrepresentation is the single leading cause of claim denials"). Cyber questionnaires require board-level attestation about **the insured's own** posture — structurally a different thing from showing a carrier that a client declined advice. `[CS: MEDIUM]`
>
> **4. ★ The defence gets pierced by the seller's own marketing.** Involta *had* a written contract. Plaintiff's attorneys used Involta's own copy against it — *"one-stop shop for all IT needs," "no need for any other service providers"* — to argue the contract didn't match what was promised. **A defensibility artifact does not protect an MSP whose marketing over-promised.** This is the single most important thing scout found on this question. `[CS: HIGH]`
>
> **5. The jurisdiction is inverted against us.** No decided UK case establishes that an MSP's "reasonable skill and care" duty extends to cybersecurity at all; the doctrine is untested there. The live litigation is US. **And the risk-register-as-shield advice in our corpus comes from UK operators, while our market is largely US.** (*Warren v DSG Retail Ltd* [2021] EWHC 2168 is real but off-point — controller-to-data-subject duty, not MSP-to-client. Do not conflate.) `[CS: HIGH / VERIFIED for Warren]`
>
> **6. And the mechanism runs both ways.** Machine-generated risk identification expands the record of what the MSP **knew**. Every risk the tool surfaced and the MSP did not raise becomes evidence of notice. **Volume of detection is volume of exposure.** `[CS: MEDIUM — general negligence principle, requires counsel]`
>
> **Revised status: `[?]` — an unvalidated hypothesis with a plausible mechanism and no supporting record.** Not a finding, not a buying trigger, and **not to appear in any deck before counsel signs off.** The 45-minute legal read moved from advisable to prerequisite, and its first question is #6, not #1.

**Provisionally — and now explicitly unvalidated — this reads as a second job-to-be-done inside the same artifact.** `[?]`

```
   ONE DOCUMENT, TWO JOBS
   ─────────────────────────────────────────────────────────────────
   Job 1 · PROVE VALUE        →  canon's Value Ledger story
      buyer feeling: growth, share-of-wallet, enterprise value
      timing: whenever
      willingness to pay: contested (ScalePad anchor bites)
   ─────────────────────────────────────────────────────────────────
   Job 2 · DOCUMENT THAT I WARNED THEM  →  NOT in canon's framing
      buyer feeling: fear — insurer, lawsuit, reputation
      timing: now (Stefanie is building an Oct boot camp on MSP
              liability; three cases in flight)
      willingness to pay: unknown, but fear prices differently
                          than growth  [?]
   ─────────────────────────────────────────────────────────────────
```

Canon's A-moat is *"prove enterprise value."* This material says the artifact's other half is **defensibility** — which is the same word canon uses for the Black Box / behavioural-conformance mechanism under **B**. **The risk register is where A and B touch.** The client-facing proof artifact and the governed-audit artifact are, in the operator's actual practice, **one living document.** `[A — this run's contribution; needs a real WTP read]`

---

## Map 6 · The envelope — EBR is a cadence machine, not a document

The 8-step account-management process (0:04:46–0:21:39) is the thing the EBR sits inside:

```
  1 pre-sales intro (AM meets prospect BEFORE close — "pre-framing", Joey Coleman)
  2 internal post-sale handoff (AE → AM; client never retells their story)
  3 kickoff w/ all stakeholders + support-process education + welcome gift
  4 weekly/bi-weekly check-ins through onboarding (60–90 days)
  5 FIRST EBR at ~90–100 days ─── "training your customers on the way that you do
                                   business" 0:19:00
  6 BOOK THE NEXT ONE IN THE ROOM ─── the self-perpetuating rule
  7 ongoing marketing to existing base (retention, not acquisition)
  8 anniversary / holiday gestures
```

**Two structural facts a product has to respect:**
- **Step 5's real function is not reporting — it's setting precedent.** The first EBR has little content by design; it exists to establish the cadence. A coworker that only adds value once there's data to show **misses the meeting that creates the habit.** `[CS: HIGH — 0:19:00]`
- **Step 6 is the whole retention flywheel** and it costs nothing. *"You don't want to leave the meeting before the next meeting is scheduled"* `[0:49:54]`. Vanessa does it every time `[16:19]`.

**Cadence is not quarterly and is not universal.** Stefanie: tier clients A/B/C, at least twice a year, never let it exceed six months. Vanessa: some quarterly, some 6-monthly, **some refuse entirely** — and for those she pushes critical information without a meeting `[24:22]`. → **the addressable EBR population is a subset of the client base, and the subset is operator-tiered.** Any TAM math that multiplies clients × EBRs/yr is wrong. `[A]`

---

## What this changes for the ACP bet

### 1. The 15-minute-edit assumption now has a measured denominator — and it looks worse
Canon carries *"15-min edit fits"* at `[~35%]`. Vanessa's real baseline is **4–5 hours per EBR**, roughly half of it prep. A 15-minute edit is therefore a claim of **~16–20× reduction on a job-shop task with a human-judgment core.** The assumption didn't change; we can now see how aggressive it always was. **Recommend restating it as a reduction ratio against a cited baseline, not as an absolute.** `[D — n=1, Vanessa 20:23]`

A defensible intermediate target exists and is more interesting: **take prep from 2–3h to ~30 min and hand the operator four EBRs a week instead of three.** That is the theory-of-constraints move, it is measurable, and it is what Vanessa actually asked for without being asked.

### 2. The persona is TWO people, and canon flattens them into one
Canon: *"Alpha persona = the owner/growth-squeezed operator."* Here:

| | Who | Role in the sale |
|---|---|---|
| **Buyer / champion** | Craig (owner/partner) — went to Empower, brought the framework home | authorises, feels the deficit |
| **User / where the pain lives** | Vanessa (Head of Client Delivery) — 4–5h/EBR, hit her own ceiling | adopts or doesn't |
| **Third party in the loop** | Head of technical overview — builds the risk review off service-desk time | the hidden cost centre |

The UK partner Stefanie observed is the extreme version: **1 net-new salesperson, 10 client engagement managers** `[0:43:29]`. In a mature account-management MSP the user is a *dedicated role*, not the owner wearing a hat. **The pitch to the owner is enterprise value; the pitch to the user is Tuesday afternoon. Canon writes only the first one.** `[A — this run]`

### 3. The Env Health quant divergence resolves — Env Health is an *ingredient*, not a competitor
Canon's open item #3: QBR tops drag-rank (2.90) but Env Health tops per-agent value (3.59) `[D — n=119]`, flagged as an unreconciled divergence.

**The EBR agenda contains env health.** Asset lifecycle, warranty/EOL, license utilisation, staffing reconciliation, tenant config vs baseline — that entire left column of Map 2 *is* environment health, assembled in service of the EBR conversation. So:

> **Env Health = the highest-value ingredient. QBR/EBR = the highest-drag container.** Not a contradiction — a supply chain. The survey measured the same value twice, once at the input and once at the output.

If that holds, the sequencing question answers itself: **build the Env Health assembly first, because it is the production-line half of the EBR and it is the half a machine can own outright.** `[A — proposed reconciliation; verify against the n=119 item wording before trusting it]`

### 4. Q2 gets partial evidence, and the *shape* matches the kit thesis
Canon's Q2: *does the operator want the mechanism, or just the destination?* Vanessa is a real operator who:
- took a **vendor-supplied framework + templates**, ran it a year, and modified it;
- **built her own kit around it** (the Halo EBR reporting queue, 26:36);
- tried **Copilot** on transcription/summary unprompted and changed her process from it (27:15);
- refused to hand the whole document to clients — kept the judgment layer internal (29:38).

That is a person who wants the mechanism, wields it, and keeps the judgment. **Not automation. Not raw templates. A kit.** `[R — n=1]`

**It does not close Q2 and must not be reported as closing it.** She is a vendor-selected reference customer in vendor marketing content — selection bias is total, and she is thanking the interviewer for the framework on camera. Canon's Q2 needs operator ethnography with MSPs N-able did not choose. **What changed: Q2 now has a hypothesis with an existence proof attached, which makes the study cheaper to design, not unnecessary.** `[WOBBLY]`

### 5. Don't call it a QBR agent
Both sources independently drop "QBR." Vanessa dropped it because the cadence isn't always quarterly and *"the terminology doesn't sit well"* `[05:11]`. Stefanie prefers EBR because it signals **who has to be in the room** — an executive-level conversation with executive-level attendees `[0:22:22]`. Naming input, free, and it contradicts how the survey instrument and the internal docs refer to the thing. `[CS: HIGH]`

### 6. Go get the two handouts
The boot camp references an **"EBR framework"** handout and an **"Executive Business Review template"** containing the technology-roadmap planning sheets `[1:16:06]`. Stefanie offers to send them to anyone who asks `[Source 2, 35:18]`. **That template is the closest thing that exists to a spec for the artifact Offering A generates, and it is one internal email away.** Highest-value / lowest-cost item on this page.

---

## Honest gaps in this map
- Both sources are **vendor content**. Stefanie's stats are single-source and several are uncited (the 34/50/33% cluster has no source named at all). The load-bearing one — **2.5× profitability for EBR-doers, Service Leadership** — has not been verified and **must be grep-checked against the actual report before it appears in any deck.** `[CS: MEDIUM]`
- **n=1 on the operator side**, and that one was selected by the vendor for a success story. Every number Vanessa gave (4–5h, <4/week) is directionally useful and statistically nothing.
- The Technica financial claim (deficit wiped out) was **relayed by the interviewer, not stated by Vanessa, with no figures.** `[CS: LOW]`
- The two handouts are **not in hand** — the artifact spec is inferred from spoken description.
- No pricing evidence here at all. Nothing in either source touches what an MSP would pay for prep offload. The WTP anchors in canon (ScalePad $300+/user, Jonathan $100/customer, Kenneth $25–50/tech) remain the only ones. `[?]`
- **The operator-discomfort rib has no product answer** and no owner.

---

## The bet
**`[0% Claude — Beth fills]`**
