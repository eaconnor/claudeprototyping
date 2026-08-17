# ACP Top Use Cases — What Secondary Already Answered, and Three Concept Directions
*Before we spend interview time: here's what competitive/market/role research resolved, how it reshapes packaging the top five, and where I'd like us to align.*

You asked for the user-testing and research plan to get the top use cases market-ready. Working the writeup, I found more answers than I expected sitting in secondary — competitive, market, and vCIO/vCISO role research — and they change how I'd package what the study found. So: headline discoveries first, then concept directions with MVP sketches, then the research I think still needs actual humans. Full evidence trail with per-claim sources: `scout/`, `round-2-findings.md`, and the tagged brief.

---

# ▶ TL;DR — headline discoveries (90 seconds)

1. **QBR wins both cuts of the ranking, and the divergence below #1 is useful for packaging.** I'd treat the union — seven use cases — as our candidate set rather than either list alone. Tables below for reference.

2. **The top use cases compose into the two roles MSPs already sell as-a-service: vCIO and vCISO.** Ops use cases + QBR ≈ the vCIO deliverable set; IR RCA + Tabletop ≈ the vCISO set. And QBR is the piece that *reports the others' work to the client*. Which suggests we may not be looking at five products — more like **two service lines and a reporting voice.** (Employee Onboarding is the loose end; it fits neither. Flagging rather than forcing it.)

3. **ScalePad already reframed this category above the QBR.** Their 2026 positioning: *"Five products. One operating system"* — Lifecycle Manager is "the hub," the other products "feed it signals." So the hub architecture is market-validated. The difference we could own: their hub runs on asset-lifecycle records; ours would run on tools that *do* operational and security work (N-central / N-sight / Adlumin). Competing on "a better QBR" is the wrong fight.

4. **Deck generation is commoditizing fast** — ScalePad Copilot ("QBR decks in seconds," on MCP), Cassidy, Cast.app, Plus AI. The defensible ground is **cross-vendor normalization + decision-driving**, and a 10+ vendor sweep found nobody doing true cross-vendor normalization end to end. Backup Radar proves the mechanic for exactly one data type.

5. **The market votes feature-of-platform, not QBR-as-product.** Funding lands on adjacent jobs — Rewst $104M (automation [CS: HIGH]), Cynomi $57M (vCISO, Series B April '25 [CS: HIGH]), BrightGauge→ConnectWise (BI). vCISO is the hotter adjacency: MSPs offering it roughly tripled YoY (Cynomi's own number, so treat as directional [WOBBLY]).

6. **One internal question decides the biggest packaging choice: can Adlumin feed these agents as a signal source, or is it a separate product lane?** If yes, a security-led bundle becomes our strongest option — an owned data feed no rival can throttle. If no, we lead with QBR. Free to answer, and it decides more than any study we could run.

7. **The operator persona is our biggest open gap.** The demand voices are owners and VPs; the person who'd run these agents daily — the vCIO, the analyst, the dispatcher — hasn't been studied yet by anyone, us or competitors. That's where I'd point the next interviews.

8. **The normalization moat might be purchasable.** Gradient MSP — cross-vendor normalization, already Cove-integrated, ~$8M raised — could close the hardest technical question with a checkbook. Liongard is the deeper alternative. Parking it here for the M&A-curious.

---

# The two cuts, side by side

**Cumulative (mentions × intensity):**

| # | Use case | Mentions | Total | Avg/mention | #1 votes | Named by |
|---|---|---|---|---|---|---|
| 1 | QBR Analyst | 4 | 31 | 7.8 | 3 | Kenneth, Jonathan, Shawn, Matt |
| 2 | Incident Response RCA | 4 | 26 | 6.5 | 1 | Vitali, Jonathan, Vikram, Mike |
| 3 | Ticket Triage & Dispatch | 3 | 25 | 8.3 | 2 | Vitali, Derek, Vikram |
| 4 | Security Tabletop Simulator | 4 | 19 | 4.8 | 1 | Kenneth, Jonathan, Shawn, Matt |
| 5 | Employee Onboarding | 3 | 16 | 5.3 | 0 | Kenneth, Matt, Vikram |

**Forced rank (mean rank, lower = better):**

| # | Agent | Avg rank |
|---|---|---|
| 1 | QBR: Business reporting | 2.90 |
| 2 | Alert flood suppression | 3.23 |
| 3 | Incident Response RCA | 4.00 |
| 4 | Continuous env health | 4.18 |
| 5 | Security Tabletop | 4.95 |
| 6 | Ticket Triage & Dispatch | 5.18 |

**The packaging read:** QBR anchors either way. IR RCA + Security Tabletop are the only band present on both cuts — which is why the security bundle keeps coming up in the directions below. Everything else is cut-dependent, so which list we weight is worth five minutes of alignment before the interview round.

---

# Three concept directions

Each with the same five questions answered: what customer problem it solves, why it would work, MVP sketch, risks, upside. These aren't competing pitches — more like three doors into the same building, and the Adlumin answer (#6 above) tells us which to open first.

## Direction 1 — Security-led: the vCISO bundle

**The customer problem:** SMB clients increasingly demand CISO-grade security assurance; MSPs can't hire CISOs at SMB price points; two-thirds of MSPs are now trying to sell vCISO services anyway. The MSP needs to *do* credible security operations and *prove* them to clients.

**Why it would work:** IR RCA and Tabletop are in both top-5 cuts — the most robust demand pair after QBR. Adlumin gives us an owned data feed (no rival's API to throttle). And it sells *revenue*, not margin — a billable service line escapes the "shouldn't my RMM include this?" price ceiling that caps everything else we tested.

**MVP sketch:** IR RCA + tabletop agents running on Adlumin data, producing a client-facing security report the MSP bills around — with a review step where the human affirms each claim before a client sees it.

**Risks:** the whole direction hinges on the Adlumin lane question. And the tail risk is heavier here — a wrong security claim narrated to a client ("your tabletop passed, you're covered") is liability, not embarrassment. The review step is the insurance, not a nicety. Also: the vCISO market-growth numbers are vendor-sourced; directional only.

**Upside:** a new billable line for partners in the adjacency where the funding is actually flowing; the only direction whose data supply chain N-able fully owns.

## Direction 2 — Business-led: QBR as the reporting voice of the platform

**The customer problem:** senior hours burned every quarter hand-assembling QBRs from 6–8 disconnected tools; numbers the MSP can't defend in the room; clients who see a vendor, not an advisor. Documented in the study, corroborated in N-Zo sessions (trust + exportable reporting are the top named gaps).

**Why it would work:** #1 on both cuts. Time savings for report generation validated in direction (hours → minutes) in N-Zo. And read-only report generation carries zero autonomy anxiety — it's the trust-free entry point for the whole agent line.

**MVP sketch:** a draft QBR over N-able-stack data — every number drillable to its source, one deliberately planted gap shown to the MSP and never the client, editable, one PowerPoint export, exec audience mode, read-only. Success bar: "I'd send this with under 15 minutes of editing, and I can explain every number."

**Risks:** the "build it into the RMM" price cap is real and came from the study's own mouths. Deck generation is commoditizing all around this direction. And going cross-vendor means depending on APIs controlled by competitors (ConnectWise owns BrightGauge).

**Upside:** retention and stickiness on the existing base; the trust beachhead that makes every later agent easier to introduce; the direction with the most demand evidence behind it.

## Direction 3 — Ops-led: the noise department

**The customer problem:** alert fatigue and triage load — the always-on grind that burns techs out and buries the signal. Alert Flood Suppression ranked #2 on forced rank; Ticket Triage hit #3 on mentions with the highest per-mention intensity (8.3) in the study.

**Why it would work:** it's everyday value — the agents partners would feel *daily*, not quarterly. Always-on operational agents also generate exactly the signals a QBR needs to narrate ("suppressed 400 noise alerts, caught the 3 that mattered").

**MVP sketch:** an alert-flood-suppression agent on N-central with a reviewable suppression log — what it silenced, why, and what it escalated.

**Risks:** this is the direction the "build it into the RMM" expectation hits hardest — buyers may simply expect it as a feature of tools they already own. Autonomy anxiety is real here too (suppressing the wrong alert is an action, not a report), so trust posture needs more care than the read-only directions.

**Upside:** daily habit formation; the operational signal supply for whichever reporting direction we pick; the intensity numbers suggest the pain is sharpest here even if willingness-to-pay is murkiest.

## How they might fit together

The pattern I keep seeing: **the ops and security agents do work; the QBR narrates it.** That's ScalePad's hub-and-signals architecture with one upgrade — the signals come from agents doing real work rather than asset records. If that composition holds, the sequencing question becomes tractable: start with the QBR pulling signals from tools we already have (N-central / N-sight / Adlumin), simulating the agents that don't exist yet, and stand up the first real band — security or ops, per the Adlumin answer — once the reporting voice has earned trust. We'd be testing the composition claim along the way: two signals combining into one client decision no single tool implies is a department; two sections on one page is just co-presentation.

---

# Competitive landscape

| Agent | Key competitors | Market signal | White space |
|---|---|---|---|
| **QBR** | ScalePad LMX (12K+ MSPs [CS: MEDIUM, WOBBLY]) · BrightGauge (ConnectWise-owned) · Strategy Overview "Arya" (vCIO agent, PitchIT '25 champion [CS: HIGH]) · CloudRadial · Humanize IT | No discrete segment; deck gen commoditizing — ScalePad Copilot on MCP, Cast.app, Cassidy | Cross-vendor normalization + work-product provenance. Gradient MSP ($10.3M raised) normalizes billing, not work product. Nobody doing it end-to-end. |
| **Alert Flood** | ConnectWise RMM · NinjaOne · Atera · SuperOps ($54.4M raised [CS: HIGH]) · Rewst ($104M [CS: HIGH]) — **no standalone pure-play exists** | No standalone segment; alert suppression is embedded in every RMM | Cross-vendor alert normalization: confirmed gap. Reviewable suppression log as a client deliverable: nothing on market. |
| **IR RCA** | Huntress ($100M ARR, $338M raised, still private [CS: HIGH]) · Arctic Wolf (Series F MDR) · Datadog Bits AI SRE (enterprise, launched Dec '25 [CS: HIGH]) | MDR: $4.1B (2024) → $11.8B by 2029, 23.5% CAGR [CS: HIGH — MarketsandMarkets] | Client-facing RCA artifact with drillable provenance. MDR tools do the response; the proof-of-work document for clients is manual everywhere. No MSP-native product found. |
| **Tabletop** | Immersive Labs ($189M raised, Forrester Wave Leader '26, enterprise-only [CS: HIGH]) · Palo Alto Unit 42 · Group-IB (professional services, not SaaS [CS: HIGH]) · Reflex Security, ChaosTrack (early-stage, AI facilitator angle [CS: LOW]) | No MSP-native segment; insurer-requirement angle is the likely market-creation trigger [?] | No MSP-native pure-play found. Enterprise tools are 10× the price point. |
| **Ticket Triage** | ConnectWise Sidekick PSA · Datto Autotask AI · Pia (MSP-native [CS: HIGH]) · MSPbots · Mizo (PitchIT runner-up '25 [CS: HIGH]) · SuperOps Monica | PSA: $14–40B range (extreme analyst variance [WOBBLY — scope inconsistency across firms]) | Most crowded category. Differentiation only through cross-vendor normalization + visible triage reasoning. Without it: a slower version of what PSA vendors ship quarterly. |

**Funding on adjacencies:** Rewst $104M (automation) · Cynomi $57M (vCISO) · Huntress $338M (MDR) · SuperOps $54.4M (AI PSA+RMM). The investment signal is security and automation — not QBR generation. [CS: HIGH]

*Competitive pass: scout, 2026-07-07.*

---

# The five agents, one by one — what each needs to be good

Before the per-agent detail, the cross-cutting find, because it changes the build math: **these five are three interaction classes sharing one trust kit.**

- **Report-only** (QBR, IR RCA): the agent analyzes and drafts; a human sends. Lowest autonomy anxiety — the study's read-only preference maps straight onto them.
- **Recommend-then-act** (Alert Flood, Env Health): the agent's output *is* an action (suppress, remediate). Trust has to be earned in stages — recommend → approve → auto — and the artifact that earns it is a reviewable log.
- **Live-facilitate** (Tabletop): the only agent that runs a *meeting*, not a pipeline. Different interaction design class entirely.

The trust kit they all share: drillable provenance, visible confidence per claim, a reviewable record of what the agent did and why, and a human review gate before anything faces a client. Build that kit once and every agent inherits it — which is the strongest practical argument for treating these as a department rather than five separate builds.

## 1 · QBR / Business Reporting

**The job:** turn a quarter of stack activity into a story the client acts on — ending in one decision, not a data dump.
**What good looks like:** the MSP sends it with under 15 minutes of editing and can defend every number live. Audience modes (CFO / owner / IT — documented MSP practice). Gaps shown to the MSP, never the client. A priced next-step teed up.
**What we need to make it good:** the provenance UX made drillable, not decorative — this is the whole trust proposition and it has no interaction design yet. Cross-vendor normalization eventually; N-able-stack data is enough to start. Operator research on the review-and-edit moment.
**What kills it:** provenance theater; the "should be free in my RMM" cap; racing deck-generation, which ScalePad now gives away.

## 2 · Alert Flood Suppression

**The job:** kill the noise without killing the signal.
**What good looks like:** a suppression rate the MSP can quote to clients, a zero-missed-criticals record, and a reviewable log — what it silenced, why, and what it escalated. Tunable per client, because one client's noise is another's emergency.
**What we need:** the staged autonomy ladder (recommend → approve-batch → auto-with-log) — this agent *acts*, so it can't launch with the QBR's read-only free pass. N-central alert streams are owned data — no rival API in the way. And a design answer for how a suppressed alert stays inspectable rather than invisible.
**What kills it:** one missed critical. The trust loss is asymmetric and probably permanent — which is exactly why the reviewable log is the product, not a feature. Also the strongest free-in-RMM expectation of the five.
**Bonus:** its output is the perfect QBR feed — "suppressed 400, escalated the 3 that mattered" is a client-story sentence waiting to happen.

## 3 · Incident Response RCA

**The job:** after an incident, reconstruct what happened, why, and what to change — in hours instead of days.
**What good looks like:** a timeline with evidence links, a root cause stated *with its confidence level*, and remediation recommendations — readable at two altitudes (the tech who fixes, the client who pays).
**What we need:** Adlumin as the evidence source (this is Gate C's most direct beneficiary). An incident data model. Confidence display matters more here than anywhere — RCA is inference, and a root cause presented at 60% certainty as if it were 100% is how the narration liability problem starts.
**What kills it:** a wrong root cause narrated confidently to a client. Second-most-robust demand in the study (both cuts) — worth protecting.

## 4 · Continuous Env Health

**The job:** always-on posture watch — drift, degradation, config decay — caught before it becomes a ticket.
**What good looks like:** a per-client baseline, drift detection with "what changed and when," and prevention the MSP can point at ("caught 12 issues before they were outages").
**What we need:** a crisp definition of "healthy" — this is the fuzziest value proposition of the five, and it needs a metric, not a vibe. Owned telemetry (N-central/N-sight) makes the data side easy. And noise discipline: an env-health agent that pages people constantly *becomes* the alert flood the #2 agent exists to suppress.
**What kills it:** vagueness. If "health" doesn't cash out in prevented tickets or a defensible score, it reads as a dashboard nobody asked for — and dashboards are firmly in free-in-RMM territory.

## 5 · Security Tabletop

**The job:** run breach-scenario exercises so the client's team practices before it's real — and produce the evidence insurers and compliance frameworks increasingly ask for.
**What good looks like:** scenarios generated from the client's *actual* stack (not generic templates), facilitation that keeps a room of non-security people engaged, and a scorecard with named gaps that feeds directly into the security narrative and the renewal conversation.
**What we need:** a scenario engine grounded in real client config (Adlumin + N-central again). Facilitation UX — this is a live social event, unlike everything else on the list, and it needs its own interaction design work. An output artifact formatted for insurers/auditors, because that's where the billable value likely lives.
**What kills it:** genericness — a template tabletop is a commodity PDF. And the liability framing cuts sharpest here: "tabletop passed" must never be narratable as "you're covered." Demand is broad but shallow (lowest per-mention intensity in the study), so this one probably ships as part of the vCISO bundle, not alone.

## The two just off the list

**Ticket Triage & Dispatch** — highest per-mention intensity in the study (8.3), so the pain is sharp, but dispatch is a *judgment action* (routing a ticket wrong has a blast radius), making it the hardest autonomy sell of the set. Strategy: let the trust kit and the staged-autonomy ladder prove out on Alert Flood first, then Triage inherits both.
**Employee Onboarding** — fits no band, and that's fine. My read: it's a different kind of demand — internal MSP operations rather than client-facing service delivery. Possibly its own lane later; parking it shouldn't cost us anything now.

---

# What still needs humans (the research plan)

This is where I'd spend our interview and testing budget, in order:

1. **The Adlumin lane question** — internal, free, this week. Decides Direction 1's viability and the packaging conversation. Who's the right person to ask?
2. **User-persona sessions (5–6):** the study measured buyers; nobody has watched the daily operator. Task-based, centered on the review-and-approve moment: do they trust it, do they still feel like the author, what kills it. This is the biggest evidence gap in the project.
3. **QBR concept test (8–10 partners resembling the roster):** draft-report stimulus with realistic cross-vendor data, one planted gap, drillable sources. Pass = sends with <15 min of editing and can trace every number when asked to actually do it — not just say they could.
4. **Normalization feasibility spike** — one engineer, 1–2 weeks: reconcile ConnectWise + NinjaOne + SentinelOne + Cove for one fake tenant, and check the API terms while in there (do these vendors even permit MSP-level extraction at this scale?). This was the study's own named feasibility worry.
5. **Two pricing/competence calls** with the warm participants (Kenneth, Jonathan): bundled vs billable-service-line framing; done-for-you vs still-the-author; and reconcile Kenneth's ScalePad urgency against the public record (Lifecycle Manager X is their new flagship, not a sunset — worth asking him directly before any timing assumptions).
6. **A short quant survey** against the partner base to check whether the n=8 ranking direction holds at scale — before the roadmap calcifies around it.

Three additions from the per-agent council passes (all cheap, all fold into the same weeks):

7. **Signal-format design spike.** All four agents' "feed the QBR" paths depend on one shared interface — what an Alert, an RCA, a DriftEvent, a TabletopGap looks like as a consumable object — and it doesn't exist yet. One design spike unblocks four Exit paths; without it, the narration-hub idea can't be demonstrated at all.
8. **Alert-suppression pricing framing test.** Five questions, three current N-central partners: is this a coworker or a feature you already paid for? The strongest free-in-RMM expectation in the set, and the only agent whose riskiest assumption had no test in the plan.
9. **One manual grounded tabletop.** Half a day with a friendly partner: build a scenario from their actual Adlumin + N-central config by hand, run it, and see (a) whether grounded differs materially from generic and (b) whether it surfaces anything the client's staff shouldn't be in the room for. Answers the tabletop's riskiest assumption before anyone designs a scenario engine.

Rough sequence: items 1 + 4 + 5 + 8 run in parallel (about a week). Items 2 + 3 + 9 are a 3–4 week round behind them, with 7 running alongside. Then we have what we need to spec the top ones properly.

---

# Where I'd like to align

- **The Adlumin question** — can we get this answered before we design the next research round? It changes what we test.
- **Which cut do we weight for packaging?** Mentions = what people brought up with intensity; forced rank = preference under constraint. My lean is the union-of-seven with the security pair and QBR as anchors, but you two have context I don't.
- **Employee Onboarding** — comfortable parking it as out-of-band for now, or does it deserve a lane?
- **Buyer vs user** — agreed that the next interview round targets the operator persona rather than more buyers?

Depth docs if wanted: `concept-mvps.md` (full positioning per direction) · `staged-path.md` (gates + sequencing detail) · `acp-qbr-analyst.brief.md` (the tagged brief) · `council-testimony-department-reframe.md` (44-framework stress test of the composition idea) · per-agent mini councils: `council-mini-alert-flood.md` · `council-mini-ir-rca.md` · `council-mini-env-health.md` · `council-mini-tabletop.md` (7 voices each, tensions routed) · `experience-frameworks-map-four-agents.md` (5Es · Human Factors · AEIOU · 4As across all four, matching the QBR map's format).
