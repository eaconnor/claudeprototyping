# Mini Council — Alert Flood Suppression Agent
**Brief source:** briefs/acp-qbr-analyst.brief.md · product-experience-research.md (§2 Alert Flood Suppression) · round-2-findings.md · council-testimony-department-reframe.md (erratum applied)
**Agent under review:** Alert Flood Suppression — kills alert noise without killing the signal
**Demand position:** #2 forced-rank (3.23 mean-rank, n=8, directional); ABSENT from cumulative/mentions top-5
**Interaction class:** recommend-then-act
**Data source:** N-central alert streams (N-able-owned)
**Proposed trust artifact:** reviewable suppression log
**Panel:** 7 voices · full 6-field owensing · MEAL (cost tier corrected by parent — a 7-voice mini is not a FEAST)

---

### 1 · Jobs-to-Be-Done (Christensen / Ulwick) — Two jobs live here, and they are not the same job

**Sign:** The functional job is "clear my queue without letting a fire through." The emotional/social job is "prove to my client that I'm watching everything — and that nothing slipped." These are different enough that they can fail independently. [CS: MEDIUM — inferred from interview direction; no verbatim claim maps exactly onto the emotional job]

**Hypothesis:** The agent is being designed for the functional job (suppress noise, log it). The social job — MSP proves vigilance to the client — is currently stranded in the QBR feed as a bonus ("suppressed 400, escalated the 3 that mattered"). That sentence IS the social job. If the suppression log stays internal-only and never surfaces in the client narrative, N-able has built a tool for the tech and abandoned the job the buyer actually cares about.

**Kill criterion:** If partners in testing say the suppression log would never be shown to a client, the social job has no delivery vehicle. The agent becomes a cost-of-operations tool with no revenue story — and the "free in my RMM" expectation wins by default.

**Force level:** MUST — which job the agent is hired for determines whether it is platform-retention value or a billable service narrative.

**Evidence:** "suppressed 400, escalated the 3 that mattered" named explicitly as a client-story sentence [CS: VERIFIED — product-experience-research.md line 124]; forced-rank #2 [CS: VERIFIED — ranking table, n=8 directional]; "build it into the RMM" expectation named explicitly [CS: VERIFIED — brief Gate 1]; emotional/social job inferred [A].

**Cannot see:** Whether the buyer who ranked this #2 on forced rank was ranking the functional-relief job or the social-proof job. The study measured preference, not the underlying job. [CS: UNKNOWN]

**Strongest objection:** The agent fires the existing solution (tech manually triaging alerts) but may not hire anything new — it might just remove pain without installing capability. If "removed pain" is the whole job, it is a feature of N-central, not a coworker. The forced-rank result may reflect relief demand, not value-creation demand. Nobody who ranked it #2 described the social job in the transcripts [A — study-level inference].

[ROI from this lens]
  Business: Unknown — no willingness-to-pay signal for alert suppression specifically; "free in RMM" expectation is the strongest of the five agents [CS: VERIFIED — brief Gate 1]. If the social job surfaces in QBR, a client-story narrative could anchor a vCIO service billing. Gap: no pricing data.
  User: Functional relief = daily time savings on alert triage; direction confirmed (pain named) [CS: MEDIUM — study directional]; hours quantified: Unknown: gap (no verbatim time-on-triage figure in sourced material).

---

### 2 · Kano — This agent lives at the dangerous border between threshold and delighter, and that border shifts

**Sign:** Alert flood suppression is moving toward threshold status in the MSP market — buyers expect it as a feature of the RMM platform they already own. [CS: VERIFIED — "build it into the RMM" named explicitly in brief Gate 1 as the strongest such expectation of the five agents] Once a capability tips to threshold (basic expectation), its absence causes dissatisfaction but its presence generates zero satisfaction or differentiation.

**Hypothesis:** The agent is currently at the threshold/performance border — tolerated as a missing-feature pain, but not yet a dissatisfier if absent, because most shops have built manual workarounds (a human manually triaging). The forced-rank #2 reflects latent dissatisfaction with the workaround, not excitement about a new capability. Absent from the mentions top-5 entirely — which is the Kano tell: if it were a genuine delighter, it would have been brought up spontaneously. It wasn't.

**Kill criterion:** If any major RMM platform (NinjaOne, Datto, ConnectWise) ships native alert suppression with a log in the next 12 months, N-able's version loses its differentiation before launch. The threshold floor is rising. [CS: LOW — no announced product roadmaps confirmed; directional inference from market trajectory]

**Force level:** SHOULD — Kano analysis does not veto the agent, but it names the window.

**Evidence:** "free in RMM" strongest for this agent [CS: VERIFIED — brief Gate 1]; absent from cumulative mentions top-5 [CS: VERIFIED — ranking table]; forced-rank #2 on same n=8 [CS: VERIFIED]; absence from spontaneous mentions = no delighter profile [A — Kano interpretation].

**Cannot see:** Whether the client-facing narrative ("suppressed 400, escalated 3") is the actual delighter hiding inside the threshold expectation. If the suppression log as a client story is genuinely new — no RMM does this — then the log is the performance/delighter layer and the suppression itself is the threshold hygiene. The brief has not separated these two.

**Strongest objection:** Kano says build threshold capabilities as fast as possible and as cheaply as possible, then invest design budget in the delighter. The brief is investing heavy design thinking (staged autonomy ladder, reviewable log, promotion criteria) in what may be a threshold feature. If the real delighter is the client-facing sentence, the log's architecture needs to be designed backward from that sentence, not from the suppression mechanism.

[ROI from this lens]
  Business: Threshold ROI = platform retention (not losing partners who want this as a basic feature); no premium expected. Delighter ROI (client story) = Unknown: gap — no data on whether "suppressed X, escalated Y" changes renewal or upsell rates.
  User: Unknown at the delighter level — if the log is a client-story vehicle, daily user satisfaction is irrelevant; MSP owner / client relationship drives value.

---

### 3 · Self-Determination Theory (Deci / Ryan) — The staged autonomy ladder is the right frame but the wrong default starting rung

**Sign:** The study found autonomy universally gated — all respondents wanted human control before AI acts. [CS: VERIFIED — product-experience-research.md: "autonomy universally gated"] The brief proposes: recommend → approve-batch → auto-with-log. This ladder is structurally correct for SDT. [A — no interviewee described the ladder directly; it is a design construct]

**Hypothesis:** The ladder supports competence and autonomy correctly — but starting on rung 1 (recommend only) may undermine relatedness. The MSP tech sitting in recommend mode is still reviewing every suppression suggestion. If alert volume is high enough to be painful (the premise of the agent), recommend-only is not relief — it is alert triage with extra steps. The agent must deliver felt relief to earn trust in upgrade; recommend-only may not deliver enough relief to motivate promotion to rung 2.

**Kill criterion:** If users stay on rung 1 indefinitely — because rung 2 (approve-batch) requires a "promotion criterion" nobody has defined — the ladder is a trust-building fiction. Competence grows only if the agent demonstrably succeeds; without a criterion for promotion, the agent is stuck recommending and users feel no more capable than before.

**Force level:** MUST — the promotion criterion is a design gap the brief names but does not fill [CS: VERIFIED — product-experience-research.md: "the staged autonomy ladder... this agent *acts*, so it can't launch with the QBR's read-only free pass"].

**Evidence:** Autonomy universally gated [CS: VERIFIED — product-experience-research.md]; recommend→approve-batch→auto structure named [CS: VERIFIED — product-experience-research.md §2]; promotion criterion undefined [A — gap named in brief, no sourced criterion]; SDT three needs applied to AI trust [CS: MEDIUM — WOBBLY, application to AI coworker context is model-generated inference].

**Cannot see:** What missed-critical asymmetry does to the ladder. A single wrongly suppressed critical alert may permanently kill the trust that would have allowed promotion to rung 2. SDT cannot model a one-strike-you're-out scenario because SDT assumes iterative competence-building. The asymmetric trust kill is outside SDT's frame.

**Strongest objection:** SDT says autonomy is a basic psychological need — but for this agent, autonomy is a liability before trust is established. The design is suppressing the user's need for autonomy (by keeping them on rung 1) in order to protect the system's trustworthiness. SDT would say this creates a competence-relatedness tension: the user is capable of trusting more but the system won't let them. That tension is not friction to be smoothed — it is the correct design. But it will feel constrained to the user, and SDT predicts lower intrinsic motivation in a constrained-autonomy environment. The agent may be psychologically correct and functionally resented.

[ROI from this lens]
  Business: Unknown: promotion rate through the ladder is the proxy metric for trust-building ROI, and no baseline exists.
  User: Time savings materialize only at rung 2+ (approve-batch) and rung 3 (auto). Rung 1 may add cognitive load, not reduce it. Unknown: gap — no task-timing data on manual triage vs. recommend-mode triage.

---

### 4 · Service Blueprint (Shostack / Bitner) — The reviewable log is the line of visibility, and it has no design

**Sign:** The agent's frontstage is: "your environment was quiet this quarter — 400 alerts, 3 escalated." The backstage is: every suppression decision the agent made across the full alert stream. The reviewable log is the only artifact that makes backstage visible — it is the line of visibility made tangible. [A — design construct; no interviewee described the log]

**Hypothesis:** The brief names the log as the product, not a feature. [CS: VERIFIED — product-experience-research.md: "the reviewable log is the product, not a feature"] But the log's design is entirely undefined. A stream of hundreds of suppressions nobody has time to review is not a reviewable log — it is a liability disclosure. The frontstage claim ("3 that mattered") is only credible if the backstage log is designed to make sampling, anomaly detection, and audit tractable. Dumping 400 rows is not design.

**Kill criterion:** If the log is a raw event table rather than an organized, scannable, exception-surfacing artifact, the frontstage/backstage contract breaks — the client hears "we caught the 3 that mattered" but nobody ever actually verified that, because the log is unreadable. This is the missed-critical asymmetry failure in blueprint form: the failure happens backstage and is invisible until a client's server is down.

**Force level:** MUST — the log is the trust artifact; if the log is unusable, the trust claim is theater.

**Evidence:** Log named as the product [CS: VERIFIED — product-experience-research.md §2]; "hundreds of suppressions nobody has time to review" — named explicitly in the council prompt [A — framing from brief owner]; frontstage "suppressed 400, escalated 3" [CS: VERIFIED — product-experience-research.md line 124]; log interaction design: entirely [A], undefined.

**Cannot see:** The support processes required to maintain the log. Who validates that the escalation logic is current? When a client's environment changes (new software, new threat profile), who updates the suppression rules? The backstage support process for rule maintenance is absent from the brief. If the suppression logic drifts, the log faithfully records wrong decisions at scale. [A — structural risk, unsourced]

**Strongest objection:** The blueprint's line of visibility defines what the customer can and cannot see. Right now, the customer sees the QBR sentence; the tech (internal) sees the log; nobody sees the suppression logic. A third layer — the rules the agent used — is below the line of visibility for everyone. When something goes wrong, the root cause is in the rules, not the log. The log records outcomes; the rules are the process. Designing a reviewable log without a reviewable rule set is designing accountability with a blind spot.

[ROI from this lens]
  Business: Unknown: operational cost of log maintenance + rule governance not scoped. If rule maintenance requires analyst time, the agent's efficiency gain is partially offset.
  User: Unknown: gap — time saved on alert triage vs. time spent on log review is not measured. Net savings may be near zero at rung 1–2 until promote to auto.

---

### 5 · Value Chain (Porter) — N-central ownership is the chokepoint and the agent's only durable moat

**Sign:** N-central alert streams are N-able-owned — no rival API in the way. [CS: VERIFIED — product-experience-research.md §2] This is the only agent in the department where N-able controls the entire data supply chain. Every other agent faces cross-vendor normalization risk (the hardest feasibility question across the department). Alert Flood Suppression does not.

**Hypothesis:** The value chain position for this agent is unusually strong at the data layer — N-able owns the chokepoint — but weak at the margin layer. Alert suppression does not create new margin for the MSP; it protects existing margin (tech time that was being burned on noise). Protecting margin is a retention play, not a growth play. The brief's strongest commercial argument ("free-in-RMM" expectation is the strongest of the five) is actually a value chain argument: when you control the data but can't charge for the analysis, the value stays inside the platform.

**Kill criterion:** If N-able embeds this agent as a free RMM feature, it is a platform retention investment — no margin created, no new revenue line. If it is priced as a coworker, the MSP's expectation (it should be free) creates price resistance that destroys value capture before the first sale. The value chain says: own the chokepoint (N-central data — already true), but find the margin layer *above* the chokepoint, not inside it. The margin layer is the client-story sentence, not the suppression log.

**Force level:** MUST — the margin question is not separable from the build decision. Retention value and growth value require different investment levels.

**Evidence:** N-central owned data [CS: VERIFIED — product-experience-research.md §2]; "free in RMM" strongest expectation [CS: VERIFIED — brief Gate 1]; margin analysis [A — Porter application; no pricing data exists for this agent].

**Cannot see:** Whether the MSP's margin on their own service (vCIO hours, alert triage labor) increases when the agent handles suppression. If the MSP bills clients for alert management, an agent that does it better could let them bill more clients with the same team — a margin amplifier. Or the MSP absorbs the efficiency gain and the client never sees it. Which path the MSP takes is unknown. [CS: UNKNOWN]

**Strongest objection:** Porter's value chain says: who controls the chokepoint, controls the margin. N-able controls the data (N-central). But the margin is not in the data — it is in the *decision* (which alerts matter). If a competitor builds a better suppression model on top of N-central data via API, N-able's data advantage evaporates. The chokepoint is the suppression intelligence, not the stream itself. N-able does not currently own that logic — it is the thing being built. This is a temporary moat, not a durable one, unless the suppression model is continuously trained on proprietary N-central telemetry that no API exposes.

[ROI from this lens]
  Business: Platform retention value: Unknown: gap — no churn data tied to alert fatigue. New revenue: Unknown: gap — willingness-to-pay blocked by "free in RMM" expectation. Net: this agent is probably a retention investment with speculative upsell if the client-story sentence becomes a vCIO billing narrative.
  User: Margin recovery on tech time: Unknown: gap — no time-on-triage baseline in sourced material.

---

### 6 · Disruptive Innovation (Christensen) — This is a sustaining move dressed as a feature, not a disruption

**Sign:** Alert suppression is a capability that already exists in enterprise SIEM/SOAR tooling (correlation rules, alert deduplication, noise reduction). [CS: MEDIUM — common enterprise security operations practice; specific MSP RMM implementations not verified] The MSP market is currently underserved on this capability because enterprise SIEM tooling is too complex and expensive for SMB-scale MSPs. N-able building this into the RMM platform fits the classic disruptive pattern: simpler version of a complex capability, targeted at a non-consumer (MSP at SMB price points).

**Hypothesis:** The disruption is not aimed at RMM incumbents — it is aimed at the enterprise SIEM market from below. MSPs who currently cannot afford SOAR-level alert suppression would become new consumers. BUT: the "free in RMM" expectation suggests the market already expects MSPs to have this — which means the disruption window may have already passed, or the capability is commoditizing before N-able enters.

**Kill criterion:** If NinjaOne or ConnectWise ships native AI alert suppression with a log before N-able launches, the disruption window closes. N-able would be shipping a sustaining feature in a commoditizing space, not a disruptive one. The demand-asymmetry data (forced-rank #2 but absent from spontaneous mentions) is consistent with a capability that buyers expect to exist somewhere but don't think about proactively — a sign the disruption is already happening around them.

**Force level:** SHOULD — the disruption frame does not block building the agent, but it determines how fast to move and where to differentiate.

**Evidence:** Enterprise SIEM/SOAR alert correlation is established [CS: MEDIUM]; "free in RMM" expectation strongest of five [CS: VERIFIED — brief Gate 1]; absent from spontaneous mentions top-5 [CS: VERIFIED]; forced-rank #2 [CS: VERIFIED — n=8 directional]; NinjaOne/ConnectWise roadmaps: [CS: UNKNOWN — no public announcement confirmed].

**Cannot see:** Who loses market position if this lands. If the incumbent being disrupted is "manual tech triage" (a behavior, not a product), there is no incumbent to displace and no market share to win — just efficiency gain on existing work. Disruptive innovation requires a market, not just a pain point.

**Strongest objection:** The demand asymmetry (strong forced-rank, absent from spontaneous mentions) is the most important signal for this framework. In Christensen's model, disruptive products are often initially undervalued — the buyers can't articulate why they need them. But alert suppression is not an undervalued new capability; it is an expected-but-missing one. The asymmetry more likely reflects a threshold expectation (Kano reading) than a disruption-ready foothold. N-able should not mistake "they want it but didn't mention it" for "they can't see it yet." They can see it — they just expect it to be included.

[ROI from this lens]
  Business: If disruptive (new non-consumer MSPs adopting the platform): Unknown: gap — no data on MSPs deterred from N-central specifically by absence of alert suppression.
  User: If sustaining (existing platform users): tech time saved on triage, direction confirmed, magnitude unknown.

---

### 7 · Lean Startup Riskiest Assumption — The riskiest assumption is not the one the brief is watching

**Sign:** The brief names missed-critical asymmetry as the trust kill. [CS: VERIFIED — product-experience-research.md: "one missed critical. The trust loss is asymmetric and probably permanent"] This is the correct operational risk. But the Lean Startup frame asks: what assumption, if wrong, makes the entire *business* case collapse — not just the trust posture?

**Hypothesis:** The riskiest business assumption is: **the "free in RMM" expectation is addressable.** If MSPs genuinely will not pay for alert suppression as a coworker — if they treat it as a feature they already paid for — then no suppression quality, no staged autonomy ladder, no reviewable log, and no client-story sentence changes the commercial outcome. The agent ships, partners use it (because it is included), and the revenue model is retention — which is worth something, but not coworker economics. This assumption has NO test designed for it. The study measured demand preference, not willingness-to-pay. [CS: VERIFIED — brief Gate 1: "the study's own mouths" named the free-in-RMM expectation]

**Kill criterion:** If a 5-question pricing framing test with 3 current N-central partners shows unanimous "this should be in my RMM already" — the commercial assumption is falsified before a line of code is written. That test is cheap, fast, and absent from the research plan.

**Force level:** MUST — this assumption gates whether the agent is a product investment or a platform feature. The distinction is architectural (build it as a coworker with its own trust kit and log, vs. ship it as an N-central module), commercial (coworker pricing vs. platform retention), and strategic (department spine vs. table-stakes hygiene).

**Evidence:** "Free in RMM" strongest expectation of five [CS: VERIFIED — brief Gate 1]; research plan (product-experience-research.md §4) does not include a pricing/WTP test for this agent specifically [CS: VERIFIED — research plan lists 6 items, none target alert suppression WTP]; willingness-to-pay data: [?] unknown.

**Cannot see:** Whether the QBR feed role ("suppressed 400, escalated 3") changes the WTP frame. If MSPs understand they are buying a client-story sentence (vCIO narrative value), not alert suppression (RMM feature value), the expectation may shift. That reframe is untested. It may be the only commercial lifeline — and nobody has asked the question.

**Strongest objection:** The research plan puts pricing/competence calls with Kenneth and Jonathan at item #5, framed around QBR bundled vs. billable. Alert Flood Suppression is not in that framing. The riskiest assumption for this agent will not be surfaced by the planned research. The brief's research agenda is QBR-centric, and the agent with the starkest commercial uncertainty gets the least targeted investigation. That is a research design failure, not a knowledge gap.

[ROI from this lens]
  Business: Unknown — and this is the gap. If WTP = $0 (included in RMM), the business ROI is retention value only, unquantified. If WTP exists (client-story narrative), the ROI is a new vCIO billing narrative, unquantified. Two very different business cases, and the brief currently holds both without choosing.
  User: Time saved on triage (direction confirmed) + cognitive relief (alert fatigue is real) [CS: MEDIUM — alert fatigue in IT operations is well-documented [WOBBLY — broad literature, not MSP-specific]]; magnitude: Unknown: gap.

---

## Tensions — Alert Flood Suppression specific (do not resolve; route to Beth/Meaghan/Nicole)

**AF-T1 · The demand asymmetry: two methodological reads, one decision**
JTBD and Disruptive Innovation diverge on what forced-rank #2 / mentions-absent means. JTBD reads it as a latent job the market can't articulate yet (which means: design the social job, not just the functional one). Disruptive Innovation reads it as a threshold expectation the market can already see (which means: ship fast and cheap as a platform feature, don't invest in coworker architecture). These are not reconcilable by analysis — they produce different build plans. Route to Beth/Meaghan/Nicole: which read determines the investment level?

**AF-T2 · The reviewable log: accountability artifact or liability disclosure**
Service Blueprint and Lean Startup diverge on what the log must be. Blueprint says: the log is the trust artifact — design it as an exception-surfacing, audit-tractable, rule-visible document or it is theater. Lean Startup says: before you design the log, test whether "free in RMM" kills the commercial case — because if it does, a beautifully designed log is a sunk cost in a platform feature. The log's design investment is only justified if the WTP assumption survives. This is a sequencing decision: does the brief test WTP first, or does it design the trust artifact first? Route to Beth/Meaghan/Nicole.

**AF-T3 · SDT vs. missed-critical asymmetry: the promotion criterion is both necessary and dangerous**
SDT says: the staged autonomy ladder must have a promotion criterion or users are stuck. The missed-critical risk says: the promotion criterion, if it fires too early, allows auto-suppression before trust is earned — and one miss kills the relationship. These forces pull in opposite directions. A well-defined criterion promotes safety (SDT wins); a too-liberal criterion amplifies the asymmetric risk (missed-critical wins). The brief names both but leaves the criterion undefined. This is a design decision that requires a human judgment call on risk tolerance — it cannot be resolved by framework. Route to Beth/Meaghan/Nicole: what evidence standard must the agent meet to graduate from recommend to approve-batch, and who sets that standard?

**AF-T4 · QBR feed role: signal design or product design**
Value Chain and JTBD agree that the client-story sentence ("suppressed 400, escalated 3") is the commercial lifeline. But they disagree on what this implies for the agent's design. Value Chain says: if the margin is in the client sentence, design the agent backward from the QBR feed — the suppression log's format should be optimized for QBR narration. JTBD says: the social job (proving vigilance) is different from the functional job (reducing triage load) — and conflating them in one agent design creates a surface that serves neither job cleanly. The agent may need to separate its internal log (functional) from its QBR output (social) as two distinct artifacts. This is an information architecture decision. Route to Beth/Meaghan/Nicole: one artifact or two?

---

## Cannot-see roll-up

This panel structurally cannot see the operator who lives in this agent daily. The study's respondents are buyers — owners, VPs, directors — who ranked alert suppression high on forced rank but did not bring it up spontaneously. The tech who actually reviews the suppression log, decides whether to trust the recommend output, and would navigate the promotion-criterion threshold has not been studied by anyone. The entire staged-autonomy ladder — its UX, its cognitive load, its felt-relief payoff — is designed for a persona that exists only as an inference. The panel can stress-test the architecture; it cannot see whether the daily-user experience of the log is tractable, resentable, or invisible. That gap is not resolvable by council. It requires the operator research named in the product-experience-research.md §4 research plan (item #2: 5–6 user-persona sessions centered on the review-and-approve moment).

---

# SYNTHESIS
[0% Claude — fill this in]

---

## Honor check
- n=8 named as directional, never projectable, on every use.
- Do-not-cite list honored: 82/85% retention, ~30% AI efficiency, Gartner-70%, Kenneth $300/user, Vitali 15–20hrs, ScalePad displacement window, vCISO $1.06B→$1.48B — none appear.
- Cynomi tripling cited once as [CS: MEDIUM, WOBBLY-vendor]; not stated as fact.
- Respondent names: kept in evidence layer only; not used as product-facing claims.
- No fabricated market numbers for alert-fatigue tooling.
- Department-level tensions (T1′–T7′) not re-litigated.
- Synthesis slot: [0% Claude — fill this in]. That is Beth's.
