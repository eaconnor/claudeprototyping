# QBR/EBR Experience Map — Adaptive Path style
**Date:** 2026-07-28 · **Scope:** frontstage only — this is the **top half** of a service blueprint. The backstage half (technician pulled off the service desk, the PSA writeback chokepoint, the risk-register-as-liability-instrument mechanics) already exists as [briefs/ebr-process-map-2026-07-28.md](ebr-process-map-2026-07-28.md) Maps 1, 3, and 5. Read them together — the **line of visibility** at the bottom of this map is the seam between the two documents.

**Method note (Adaptive Path convention, not a customer journey map):** this is broader than a single-persona journey. It carries **two actor lanes side by side** — the client executive and the MSP delivery lead — because an EBR is a two-sided room, not a self-service product a lone user moves through. Phases run left to right across the full cycle, not just the meeting itself: cadence lapses and resumes, so the map bookends with the trigger before Prep and the loop-closing after Follow-up.

**Evidence discipline:** `[R]` sourced to a named primary · `[D]` from the n=119 survey or similar · `[A]` synthesized/assumed by this run · `[CS:]` per-claim confidence. Full citations and timestamps live in the sources this draws from: `scout_input/stefanie-hammond-ebr-sources-2026-07-28.md`, `scout_input/qbr-operator-voices-2026-07-28.md`, `briefs/ebr-process-map-2026-07-28.md`, `briefs/ebr-process-map-council-2026-07-28.md`.

---

## The six phases

| | 1 · CADENCE HITS | 2 · PREP | 3 · THE ROOM OPENS | 4 · THE HARD MOMENTS | 5 · FOLLOW-UP | 6 · CLOSE THE LOOP |
|---|---|---|---|---|---|---|
| **What it is** | The reminder that it's time — or the silence that means it isn't happening | Assembling the production-line data + the risk review | Introductions, agenda, parking the tech questions | Risk/exposure review, roadmap prioritization, the referral ask | Summary sent, roadmap re-issued, action items ticketed | Next meeting booked before anyone leaves |

---

### 1 · CADENCE HITS

**Client exec — DOING:** nothing, usually. Passive. `[A]`
**Client exec — THINKING/FEELING:** if overdue, guardedness sets in — the UK nonprofit finance director *"had his back up against the wall"* and was already miffed the MSP had gone quiet before the meeting even started `[R — Stefanie boot camp, 0:41:04, CS: MEDIUM — single anecdote]`. Reviews that lapse "go unscheduled, rescheduled, or canceled" `[R — Luis Giraldo/ScalePad via MSP Growth Hacks, CS: MEDIUM as sentiment]`.
**MSP operator — DOING:** (in the mature-operator case) checks an EBR schedule, tiers clients A/B/C `[R — Stefanie 0:04:24; Vanessa maintains "an EBR schedule," 30:42]`.
**MSP operator — THINKING/FEELING:** the excuse trap — accepting *"we're a little busy, do we really need to meet?"* as a real reason to skip, which Stefanie calls a terrible reason but says MSPs take at face value constantly `[R — 0:33:01–0:33:16, CS: HIGH]`.
**PAIN:** most MSPs never reach a structured version of this phase at all — *"only 20% of MSPs have a structured QBR process"* `[PEER-GROUP — TruMethods, uncited, CS: LOW — directional only]`.
**OPPORTUNITY:** automatic cadence tracking, tiered by segment — this phase is close to pure `[A]`-kittable; almost no judgment lives here.

---

### 2 · PREP — *(the constraint; see backstage Map 1)*

**Client exec — DOING:** nothing. Invisible to them by design — this is the phase where the frontstage/backstage line matters most. `[A]`
**MSP operator — DOING:** assembles the production-line data (warranty/EOL, licence utilisation, ticket/SLA counts, phish-sim completion, tenant config) — **and** a second, scarcer person (a technician pulled off the service desk) builds the risk review `[R — Vanessa 25:25, CS: HIGH for n=1]`.
**MSP operator — THINKING/FEELING:** *"You can't go to these meetings and prepare 20 minutes before you walk in"* `[R — Vanessa 0:19:08]`. The grind is real and its size is contested — Vanessa's own figure is 4–5h total; vendor blogs claim 3–8h/client/quarter with a direct incentive to inflate `[CS: LOW — see qbr-independent-sources register]`.
**PAIN:** **two scarce people consumed per cycle, not one** — and the second one degrades a *different* system's SLA (the service desk) while doing it `[R — Vanessa 25:25, this is the sharpest finding in the whole corpus per Theory-of-Constraints council testimony]`.
**OPPORTUNITY:** the kit thesis lives entirely here — assemble the left column **silently**, draft the translation into business consequence, never surface raw data as-is `[A — session thesis, corroborated independently by the SaaS customer-success field's identical diagnosis in a different industry]`.

---

### 3 · THE ROOM OPENS

**Client exec — DOING:** arrives — sometimes willing, sometimes cold. The lunch-break UK case: an exec who "came in gonna say he kind of had his back up against the wall" `[R — 0:41:04]`.
**Client exec — THINKING/FEELING:** default skepticism about the format itself — *"20 minutes of reading through a report they could review on their own followed by 10 minutes of being upsold"* `[R — CloudRadial, CS: HIGH as sentiment]`.
**MSP operator — DOING:** introductions, states the purpose, walks the agenda, **parks** any early questions to protect the structure `[R — Stefanie 0:50:53]`.
**MSP operator — THINKING/FEELING:** **the confidence rib.** *"MSPs suffer from the curse of the expert"* — too close to the material to know what's essential to a lay audience `[R — Dr Simon Raybould via Tubb, CS: MEDIUM as sentiment, third-party proxy, not a first-person admission]`. Two independent lenses (SDT, PSF economics) call this the least-copyable, least-served need in the whole market.
**PAIN:** low confidence → falls back to what's comfortable → shows the production-line output instead of the translation → the meeting reads tactical and loses the room `[R — Stefanie 0:34:29, CS: HIGH — her named #1 root cause]`.
**OPPORTUNITY:** pre-drafted translation *and* rehearsal/mastery-experience scaffolding — nobody in the shipping market builds courage, only decks `[A — this is a genuine gap, not evidenced as solved anywhere in the competitor sweep]`.

---

### 4 · THE HARD MOMENTS

**Client exec — DOING:** reacts to the risk conversation; may decline the recommendation outright (see John/backup anecdote, `ebr-process-map` Map 5) `[R]`.
**Client exec — THINKING/FEELING:** the thaw, when it happens, happens over food — the UK finance director's guardedness visibly shifted mid-meeting, over a shared lunch `[R — 0:41:04–0:44:06, CS: MEDIUM, n=1]`. Underneath: **relationship trust vs. impact trust** — *"MSPs have been taught to become trusted advisors, but that usually builds relationship trust, not impact trust"* `[R — Giraldo, the sharpest single distinction found in the whole secondary sweep]`.
**MSP operator — DOING:** the Review of Exposure and Risk — the **longest single block on any agenda found anywhere**, 45 minutes `[R — HaloPSA's own published agenda]`. Documents the recommendation and the date. Asks for a referral.
**MSP operator — THINKING/FEELING:** believing the documented risk conversation protects the firm legally — **this belief is currently unsubstantiated.** No tested case law anywhere upholds a documented client refusal as a defence; the one case with a written contract (Involta) had that contract pierced by the MSP's *own marketing copy* `[R — see the legal register, CS: HIGH for the finding, CS: LOW for the folk belief itself]`.
**PAIN:** false confidence in the liability shield; the referral ask gets skipped when the room is tense, which is exactly when it matters least to skip (Stefanie: *"we never get referrals if we don't ask"*).
**OPPORTUNITY:** reframe the risk conversation around consequence, not fear, per Stefanie's own coaching language; prompt the referral ask as a scripted, unskippable step.

---

### 5 · FOLLOW-UP

**Client exec — DOING:** receives a redacted extract, not the working document — the operator keeps internal notes out of what the client sees `[R — Vanessa 29:38]`.
**Client exec — THINKING/FEELING:** whether they feel followed-through-on. This is where trust is actually won or lost, per the single most emphatic claim in the corpus.
**MSP operator — DOING:** sends the summary, re-issues the roadmap/budget, and — the discipline test — turns **every** action item into a PSA ticket with an owner `[R — Stefanie 1:26:02]`.
**MSP operator — THINKING/FEELING:** relief vs. the drag of doing paperwork no one sees.
**PAIN:** **action items that never became tickets — named explicitly as the fastest way to lose a client's faith** `[R — Stefanie 1:26:33, CS: HIGH — her stated #1 killer]`. This step is fully mechanisable and currently done by hand, and the chokepoint (writing into a PSA) sits inside software N-able doesn't own — Halo, ConnectWise, Autotask.
**OPPORTUNITY:** automatic ticket-ification with owner + due date; per-line provenance metadata if any of the drafting was AI-assisted, since this artifact may later be read by a carrier or in discovery.

---

### 6 · CLOSE THE LOOP

**Client exec — DOING:** agrees to the next date — or, for a real minority, refuses the ritual entirely; the operator still pushes critical information to them without a meeting `[R — Vanessa 24:22]`.
**Client exec — THINKING/FEELING:** growing trust if the cadence sticks. A UK-specific dampener may suppress them from *saying* it even when they feel it — *"very un-British to 'blow your own trumpet'"* `[R — Richard Tubb, the only named UK cultural dynamic in the whole sweep]`.
**MSP operator — DOING:** books the next meeting **before anyone leaves the room** `[R — Stefanie's explicit rule, 0:49:54; Vanessa does this every time, 16:19]`.
**MSP operator — THINKING/FEELING:** the flywheel feeling — this step is free and self-perpetuating.
**PAIN:** skip this step and the cycle relapses straight back to Phase 1's guardedness.
**OPPORTUNITY:** **this is the cheapest, highest-leverage step in the entire cycle, and it needs zero AI** — just an unskippable habit. Worth stating plainly in the map: **not every step in this process should be automated.** The two cheapest wins in the whole cycle (this, and tiering in Phase 1) are pure discipline.

---

## Cast of characters

A service blueprint needs its actors named, not just its lanes. Everyone who appears above, or just offstage:

**Frontstage — MSP side**
- **The delivery lead** (Vanessa's role) — deliberately non-technical, owns the room, owns the relationship. `[R]`
- **The account executive** — appears once, at the handoff (Stefanie's Step 2 of the account-management envelope): hands pre-sale notes to the delivery lead so the client never retells their story. `[R]`
- **The Head Nerd(s)** — Joe Ferla, Lewis Pope, Stefanie Hammond in the internal SME call — the tacit-expertise source the whole kit thesis is trying to codify. Lewis, unprompted: *"We do not enable QBRs. We provide a small set of evidence you can take to your QBRs. The best thing we offer about QBRs is Stefanie Hammond — we need her as an agent"* `[R — runbooks-transcript-2026-07-24.md, 47:49, CS: HIGH]`.

**Backstage — MSP side**
- **The technician pulled off the service desk** — builds the risk review, degrading a second system's SLA while doing it. The single sharpest finding in the whole corpus per council testimony. `[R — Vanessa 25:25]`
- **The "OUR security standard" owner** — whoever maintains the per-MSP baseline the register measures against. Unnamed in any source; a real role with no evidence anyone holds it. `[?]`

**Client side**
- **The client executive / finance director** — the person whose behaviour the artifact actually has to change; the thinnest evidence in this whole map (see gaps, below). `[R — one named anecdote]`
- **The end users / technicians at the client** — offstage but load-bearing: phish-sim completion, tenant config drift, the "no harm to the human" principle Lewis names (38:45) all trace back to people who never appear in the room.

**Offstage — third parties who read the artifact later, not in real time**
- **The cyber insurer / underwriter** — the audience Stefanie's risk register is aimed at; per the legal register, no evidence any carrier actually treats it as mitigating. `[?]`
- **A court, in discovery** — the audience Map 5 (backstage half) now treats as `[?]`, not a finding.
- **An auditor** — Lewis, distinctly: *"You need those for... an auditor's question, or [to] prove something to a cyber-insurance underwriter. Compliance evidence."* `[R — 1:06:41]` — and his explicit warning that this evidence should NOT be what's presented at the QBR itself (see below).

---

## The maturity ladder — Kit → Adapt → Autolearn

Beth's own framing, reconciled against Lewis Pope's language from the same Jul 24 call and against the `v1 → v2` theory-of-constraints ladder already named in `systems-maps-2026-07-27.md` Map 1. Same ladder, three names for it:

| Rung | Beth's question | Lewis's words | `systems-maps` v-number | Grounded? |
|---|---|---|---|---|
| **1 · KIT** | *"the best practices kit — let me see what is good"* | *"my best-practices model — my 'what good looks like'... we want control"* `[27:06]` | v0 — the corpus, built once | `[R]` — strongly grounded, two independent speakers |
| **2 · ADAPT** | *"how do I adapt it to my business?"* | *"that's a generic, philosophical version... you cannot standardize that away"* `[35:16]`; Joe Ferla's 75/25 split `[17:41]` | v1 — Head Nerd/operator wields the kit, fits the 25% | `[R]` — strongly grounded |
| **3 · AUTOLEARN** | *"how does it autolearn me?"* | closest: *"interactive, able to ask questions about the environment, probe, and have some self-correction built in"* `[38:45]` — **ask-once, not learn-over-time** | v2 — MSP self-serves; judgment concentrates on certify + hardest fits | `[A]` — **this rung is Beth's contribution, not the corpus's.** Nobody in any source describes a system that gets better at a *specific* MSP's business over repeated cycles. Worth naming as the genuinely new bet it is, not something already validated. |

**The "knowing when to do what" design requirement — also Lewis's, independently:** his civil-engineering-derived principle, *"no harm to the human"* `[38:45]`, isn't a data-privacy rule — it's a method: *"you have to ask all the compounding, knock-on questions... I don't stop at secondary effects; I go to quaternary."* Applied here: the decision of *which step is kittable and which needs a human* shouldn't be a fixed rule baked into the product once — it should be asked freshly, compounding, for each client and each risk, the way Lewis insists a runbook author must. **This is a live design principle for the prototype pass, not just an ops-theory abstraction.**

**On where evidence belongs — Lewis's sharpest, least-reconciled point:** *"QBRs should not be an exercise in validating value delivered. It should be validation of future value"* `[1:04:50]`, and separately: the compliance/forensic evidence (tabletop results, incident logs) is *"your evidence for when you answer an auditor's question, or prove something to a cyber-insurance underwriter"* — **but it does not belong in the QBR itself.** *"That polished deliverable is just the monthly reminder... The QBR devolves, or never evolves"* when it's used to prove past value instead. `[1:06:41–1:09:14]`

**This measurably sharpens the still-open Job 1 / Job 2 fork from the council pass.** It suggests a third read neither canon nor the council named: the QBR's job is **neither** proving past value **nor** carrying liability evidence — it's rehearsing **future** value, while the liability/compliance evidence is held **separately**, for a different audience, surfaced only when that audience asks. If this holds, it reshapes the prototype options in task 3 more than either prior framing did.

---

## The line of visibility

Everything above is what the client sees or the operator experiences in the room. **Below the line** — where this map hands off to the backstage half of the blueprint already mapped in `ebr-process-map-2026-07-28.md`:

- The **second scarce person** (the technician building the risk review, pulled off the service desk) — Map 1
- The **"OUR security standard"** the register measures against — a per-MSP configuration surface nobody has costed — council testimony, Service Blueprint voice
- The **PSA write path** for action-item tickets — a chokepoint N-able doesn't own — Map 1, Value Chain voice
- The **liability mechanism** and its actual (unsubstantiated) legal status — Map 5, now downgraded to `[?]`

A real service blueprint would draw the line of visibility as a literal horizontal band and continue these four threads downward as backstage lanes + support processes. That's the natural next artifact once this frontstage half is validated.

---

## What this map does NOT claim
- It is built from **one mature operator (n=1, vendor-selected)** and **one trainer's taught framework** for the MSP-operator lane, corroborated/contradicted by secondary voices where cited. It is not a validated journey for the median MSP.
- The client-exec lane is the thinnest evidence in the whole map — almost everything about *their* thinking/feeling is inferred from the MSP-side account of the room, not from talking to a client executive directly. This is a named gap, not a filled one. `[?]`
- Cadence is not uniform — Stefanie: tier and cap at six months; Vanessa: ranges from quarterly to six-monthly to refused entirely; Paul Green (UK): explicitly not quarterly, "overkill" for smaller clients. The six-phase cycle repeats at whatever interval the client's tier warrants, not on a fixed clock.
