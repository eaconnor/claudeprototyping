# ACP Trust & Recovery — Concept List for Cross-Functional Review

**Owner:** Beth Connor · **Date:** 2026-07-27 · **Status:** concept list for x-functional review (Product · Design · Research · Eng)
**Supersedes:** *Trust & Recovery Concept Sketches* (Jul 15 base / Jul 24 rewrite)

> **Grounding discipline.** Claims are tagged `[R]` research · `[D]` data · `[A]` assumed · `[?]` unknown, with `[CS:]` on factual claims. The new evidence in this version is **n=3 internal SMEs** (directional, *not* MSP buyer research) plus the now-funded board plan. Nothing here is validated with MSP buyers yet. Read the ranking as *where to place our bets and what to test first*, not as proof.

---

## What changed since the July sketches

Three inputs reshaped the list:

1. **The board plan is now business-real** `[CS: HIGH]` — ACP/Harness is funded, ~20–30% built, with QBR as the Sept 1 design-partner preview. The substrate these concepts sit on exists.
2. **A real internal-SME interview** (Joe Ferla · Lewis Pope · Stefanie Hammond, Jul 24) `[R — internal, directional]` reframed the demand — see the two findings below.
3. **A new concept surfaced** from that call — **Sea Trials** (runbook readiness / certification) `[A — derived from SME testimony; not yet a validated need]`.

## Organizing thesis `[A — strategic bet, not yet validated]`

The durable moat is **not** the data (competitors have the same access — a short-lived moat `[R — internal, Lewis Pope]`) and **not** the report (generation is commoditized — "asking Claude is the new starting point" `[R — internal, Lewis Pope]`). It is the **guided journey + the codified Head Nerd corpus + certification + a liability posture competitors can't casually match** `[A — strategic bet]`. Positioned to the owner, the product manufactures **transferable enterprise value** `[A]` — the certified operational capital that raises an MSP's acquisition multiple (Joe Ferla: a full runbook set can move valuation 5–10× `[R — n=1 internal, self-reported 2024 figures]`). The concepts below are the manufacturing line for that asset.

---

## ⭐ ALPHA PERSONA — The Grower

> **The growth-squeezed MSP owner.** Mature enough to know what "good" looks like; growing too fast to hold it; oriented to an exit, a raise, or an acquisition where **the multiple is the number that matters.** Grounded in Joe Ferla (17:41): *"the operationally-mature MSPs being forced away from their maturity by business ownership growing too fast."* `[R — n=1 internal expert; this is the bet to validate]`
>
> **Buys** the outcome (enterprise value, de-risked liability, pipeline). **Does not** buy time-saved — that's the technician, who is the **user, not the buyer.**
>
> **Secondary — "The Acquirer" (flywheel):** the buying MSP who "doesn't have the runbooks and doesn't want to build them" (Joe, 17:12) `[R — n=1 internal expert]`. Makes the Grower's certified asset *liquid* — the move that turns this from a product into a two-sided network `[A — strategic bet]`.

**Design consequence** `[A]`: the owner buys, the technician uses. Build the *outcome* for the Grower; let the technician operate underneath. Designing the UX for the daily user ships a time-saver priced like one — the most likely quiet failure mode.

---

## The layer stack (extended)

| Layer | Question it answers | Concept |
|---|---|---|
| **Readiness** *(new)* | Are we ready — and can we prove it? | **Sea Trials** |
| Value | What value did we create? | Value Ledger / EBR-Enablement |
| Truth | Which claims can we stand behind? | Defensibility Layer |
| History | What happened, and who approved it? | Black Box Recorder |
| Recovery | How do we get back? | Phoenix |
| Stewardship | What's drifting or ownerless? | Ghost Ship |
| **Advisory** *(the motion, not a feature)* | How does the MSP sell this? | vCISO / vCIO |

Lifecycle read: **Sea Trials** mints and certifies → **Ghost Ship** watches for drift → **Phoenix** recovers to last-known-good, with Value/Truth/History as the cross-cutting proof and **Advisory** as the go-to-market motion.

---

## Ranked concept list

Ranked by the alpha test — *does it raise the Grower's multiple, or save the technician's afternoon?* — then by evidence and strategic role.

| # | Concept | Job | Alpha (Grower) | Evidence | First fall / test first |
|---|---|---|---|---|---|
| 1 | **EBR-Enablement** *(reframed QBR Native)* | The Grower's quarterly value + pipeline moment — **not** a report | **Sells** | Demand `[R/D HIGH]`; "it's coaching, not a report" `[R internal]` | Is the job the forward-looking exec conversation, or a faster report? |
| 2 | **Sea Trials** *(new)* | Mints the **certified asset** that raises the multiple | **Sells** | Problem `[R internal]`; valuation link `[R n=1]` | Do owners value certified readiness enough to pay/spend the 25%? |
| 3 | **Value Ledger** | The **valuation ledger** — balance-sheet artifact in $, not minutes | **Sells** | In ACP specs `[CS: VERIFIED]`; owner framing `[A]` | Does the Ledger speak in enterprise value, not time saved? |
| 4 | **Defensibility Layer** | Telemetry-backed evidence tiering (embedded, not standalone) | **Supports** | Architecture `[CS: VERIFIED]`; legal effect `[?]` | Shared legal gate (below) |
| 5 | **Black Box Recorder** | Decision reconstruction; the assurance export Acquirers & insurers trust | **Supports** | Raw material `[CS: VERIFIED]`; narrative-vs-log WTP `[?]` | Do buyers value narrative over the raw log they already have? |
| 6 | **Phoenix** | Operational (not just infrastructure) recovery | **Infrastructure** | Substrate real `[CS: HIGH]`; JTBD `[?]` | Is "restore operational intent" a paid problem, or is "restore server" enough? |
| 7 | **Ghost Ship** | Automation stewardship / drift | **Infrastructure** | Problem `[R internal]`; standalone demand `[?]` | Likely a platform feature, not a SKU — confirm |
| — | **vCISO / vCIO** | The **advisory motion** that wraps 1–3 for the Grower | **Sells (motion)** | Advisory pull `[R internal]`; billing mechanism `[?]` | Will owners buy a practice-shaped bundle vs. per-tool add-ons? |
| 8 | **Cross-Vendor QBR** *(Branch A)* | Whole-stack proof | Sells (later) | Demand `[R]`; normalization + legal `[?]` | **North Star, not MVP** — highest dependency stack |
| ▢ | **Harness** *(the board plan — the container, scored)* | Governed control plane; "the system IT runs on" | **Platform-led — not Grower-facing** | Funded, ~20–30% built `[CS: HIGH]`; differentiation moat `[?]` | **Idea Chess: ~5% as-pitched / ~45–50% degraded** `[WOBBLY]` — falls at *differentiation* (governance is table-stakes) |

**Reading the Harness score.** It's the only item here carrying a full Idea Chess survival number (from the July Board baseline) — the Trust & Recovery concepts carry *first-falls to test*, not survival %s, because scoring them honestly requires the field research above. The point isn't "Harness is bad." It's that **Harness as-pitched is platform-led and sells to no one in particular, and its ~5% killer is *differentiation* — governance is table-stakes (auditability ✔ for 8/10 competitors).** Concepts 1–3 are the Grower-facing wedge, and 2/4/5 are the moat, that patch exactly that hole. `[A — synthesis]`

---

## Concept sketches (full)

*Same nine-point form as the original doc, updated. `⭐` = alpha (sells to the Grower).*

### 1 · EBR-Enablement ⭐ *(reframe of QBR Native / Branch B)*
*The QBR isn't a report — it's the owner's forward-looking value + pipeline conversation. We don't enable QBRs; we arm them.*
1. **Problem / wicked bit:** MSPs assemble quarterly reviews by hand — but the deeper failure is that the QBR is delivered as a *technical report* when the client's exec wants a *forward-looking business conversation*. MSPs ask for "QBR automation" because they attack a business problem technically. `[R/D HIGH` on demand; `R internal` on the misframe — Stefanie 1:10:45, Lewis 48:22]
2. **Tension:** The strongest demand signal (QBR is #1 in every cut) points at the weakest, most commoditized product — a faster report ("asking Claude is the new starting point," Lewis). The value sits in the coaching layer, which is harder to build and harder to copy. `[A]`
3. **How might we:** turn first-party telemetry into an owner-ready EBR — strategy, risk register, pipeline — in under 20 minutes, so the report is a *byproduct* and the conversation is the product?
4. **Value prop (Moore):** For N-able-stack MSP owners who must prove value and grow accounts, EBR-Enablement produces the evidence *and* the forward-looking narrative for an executive business review. Unlike report generators or ScalePad, it codifies expert coaching (Stefanie's methodology) into the output. `[A]`
5. **TAM:** Do not estimate without an install-base cut by stack consolidation + an attach study. `[CS: FABRICATION RISK]`
6. **Necessary functionality:** cross-N-able schema alignment; EBR runbook; Value Ledger producer; Defensibility tiering; risk register (incl. shadow-AI); pipeline/opportunity surfacing; Stefanie-methodology schema; human review gate. `[A]`
7. **Evidence + [CS:]:** QBR tops demand `[CS: HIGH / R/D]`. QBR Native prototype exists `[CS: VERIFIED]`. "It's coaching, not a report" `[R — internal]`. Owner-alpha framing `[A]`. Buyer WTP untested `[?]`.
8. **Riskiest assumption:** the winning job is EBR-enablement (coaching + evidence), not a faster report. **Counter-tension:** the mass market may just want the report. Field it with owners. `[?]`
9. **N-able superpower:** first-party telemetry (day-one Measured claims) + the Head Nerd coaching corpus (Stefanie as schema) — the part a generic LLM can't reproduce from the same prompt. `[CS: HIGH internal]`

### 2 · Sea Trials ⭐ *(new)*
*A ship isn't seaworthy until its shakedown. Sea Trials certifies a runbook ready — and turns "tested" into enterprise value. (Nautical partner to Ghost Ship: it certifies the vessel; Ghost Ship flags the derelict.)*
1. **Problem / wicked bit:** the 25% that makes a runbook good — asset-specificity and the *drill* — is exactly what ~70% of MSPs skip for lack of time; untested runbooks fail at go-time and can cause harm. `[R internal — Joe 11:12]`
2. **Tension:** the market *rewards* tested runbooks (5–10× valuation) but MSPs don't *do* the testing ("never had time"). Value and neglect share one root cause: time. `[A]`
3. **How might we:** take a generic runbook → asset-specific → drilled via tabletop → **certified**, with the 25% nearly free-and-guided, and price the resulting maturity as valuation?
4. **Value prop (Moore):** For MSP owners raising maturity and enterprise value, Sea Trials turns generic playbooks into drilled, certified, asset-specific operational capital. Unlike template libraries or one-off tabletops, it certifies readiness and tracks the maturity climb as equity. `[A]`
5. **TAM:** Unknown; sits inside ACP / a tabletop-as-a-service line. No defensible sizing without buyer research. `[CS: FABRICATION RISK]`
6. **Necessary functionality:** canonical runbook → asset-context tailoring (75/25); tabletop drill engine; drill-evidence capture; certification/readiness score; maturity ladder; Cove standby-image → real-RTO proof; adversarial pen-test flip; links to Black Box + Ghost Ship. `[A]`
7. **Evidence + [CS:]:** tabletop-as-a-service = $3–10K recurring, produces regulatory/compliance evidence `[R internal — Lewis 1:17:05]`; tabletop appears twice in the July board deck `[CS: VERIFIED]`; runbook drift/versioning in ACP `[CS: VERIFIED]`; buyer demand for certification `[?]`.
8. **Riskiest assumption:** owners value certified readiness enough to spend/pay the 25%. Joe's data cuts both ways (5–10× reward vs. "never had time"). Field-test. `[?]`
9. **N-able superpower:** Head Nerd corpus (the 75% skeleton), Cove standby images (provable RTO), operational data to certify a drill happened. Moat = certification + corpus, not generation. `[CS: HIGH internal]`

### 3 · Value Ledger ⭐
*Continuous receipts — denominated in enterprise value, not minutes. The owner's balance sheet of operational capital.*
1. **Problem / wicked bit:** MSPs can't continuously prove value created; the proof-of-value report is occasional, backward-looking, and counted in tickets/minutes — not in what the business is worth. `[R internal — Lewis 1:08:12 "monthly reminder… cut the check"]`
2. **Tension:** the report MSPs scream for (proof they earned the check) is backward-looking and commoditized; the owner needs a forward, valuation-denominated ledger — which requires a shared definition of "value" the industry lacks. `[A]`
3. **How might we:** maintain a continuous, certified record of operational value in enterprise-value terms that an owner can carry and an acquirer will trust?
4. **Value prop (Moore):** For MSP owners, the Value Ledger records created value as transferable operational capital — maturity, certified assets, defensible multiple — not minutes saved. `[A]`
5. **TAM:** N/A standalone; parent = EBR-Enablement / advisory. `[A]`
6. **Necessary functionality:** value-event capture; enterprise-value translation model; certified-asset registry (from Sea Trials); maturity ladder; Defensibility tiering; diligence export. `[A]`
7. **Evidence + [CS:]:** Value Ledger is the evidence mechanism in ACP specs `[CS: VERIFIED]`; owners use reports to prove value sold `[R internal]`; enterprise-value denomination is the bet `[A]`; whether owners/acquirers accept a vendor's value number `[?]`.
8. **Riskiest assumption:** a vendor-maintained ledger can credibly denominate enterprise value in a way owners *and* acquirers trust. `[?]`
9. **N-able superpower:** owned telemetry + certified-asset chain = a value record competitors without the operational data can't assemble. `[CS: HIGH internal]`

### 4 · Defensibility Layer *(embedded — Supports)*
1. **Problem / wicked bit:** every AI-authored artifact *and* AI-driven operation has an epistemological gap — fluency ≠ accuracy — and the reader can't tell verified from generated. `[CS: VERIFIED / A]`
2. **Tension:** MSPs want client-ready AI output that survives scrutiny, dispute, and audit; if every claim looks equally confident, telemetry-backed evidence is indistinguishable from model prose. `[A]`
3. **How might we:** give MSPs a structural way to stand behind AI outputs and operations so inputs and outputs carry evidence tiers?
4. **Value prop (embedded):** distinguishes Measured / Benchmarked / Estimated / Unverified; makes the evidence chain visible, not assumed. `[A]`
5. **TAM:** N/A standalone; parent = EBR-Enablement / advisory / assurance. `[A]`
6. **Necessary functionality:** tiering vocabulary; telemetry coverage audit; hard gate on Unverified; input provenance; Black Box trace link; assurance export; legal review. `[A]`
7. **Evidence + [CS:]:** Defensibility as trust architecture, not standalone `[CS: VERIFIED]`; ACP emphasizes approval/audit/Value-Ledger evidence `[CS: VERIFIED]`; legal effect of tiering `[?]`.
8. **Riskiest assumption:** tiering *protects* rather than merely *documents* liability `[P=0.45]`. **New:** buyers may actually want liability *transfer*, which tiering doesn't provide — see Finding 2. `[?]`
9. **N-able superpower:** first-party telemetry makes Measured claims defensible; the vocabulary is copyable, telemetry-backed evidence is not. `[CS: HIGH]`

### 5 · Black Box Recorder *(Supports)*
*Receipts for reality — every recommendation, approval, action, and outcome reconstructed into a human-readable accountability chain.*
1. **Problem / wicked bit:** autonomous systems accumulate accountability debt; audit logs exist, operational explainability doesn't. The July 2026 autonomous-agent incident sharpened "show me exactly what happened." `[A; CS: HIGH at disclosure level]`
2. **Tension:** dependence on automation grows; trust collapses when someone asks what the system knew, recommended, who approved, what changed. Systems preserve activity, not narrative. `[A]`
3. **How might we:** build a flight recorder for MSP operations that reconstructs the causal chain into a human-readable accountability story?
4. **Value prop (Moore):** tells the story of what happened — not merely that something happened. `[A]`
5. **TAM:** possibly premium / assurance / insurance-enablement export; no defensible sizing. Insurance is a downstream *consumer*, never a standalone product. `[CS: FABRICATION RISK / A]`
6. **Necessary functionality:** recommendation/approval/action capture; decision reconstruction; timeline generation; assurance export; Value Ledger + Defensibility links; legal/audit export. `[A]`
7. **Evidence + [CS:]:** ACP captures approvals/versions/execution `[CS: VERIFIED]`; runbook engine versioned `[CS: VERIFIED]`; incident tailwind `[CS: HIGH]`; narrative-reconstruction demand unstudied `[?]`.
8. **Riskiest assumption:** people trust narrative reconstruction more than raw logs `[P=0.55]` — and since audit is table-stakes, the *narrative* must be the differentiator. `[?]`
9. **N-able superpower:** accumulated operational context; converts internal mechanics into customer-facing (and acquirer/insurer-facing) evidence. `[A]`

### 6 · Phoenix *(Infrastructure — build, don't pitch to the Grower)*
*Backup restores infrastructure. Phoenix restores operations.*
1. **Problem / wicked bit:** DR restores infrastructure, not operational reality — which automation changed policy, which approval authorized it, which runbook caused the issue, what the intended state was before drift. Industry solved infrastructure recovery, not operational recovery. `[A]`
2. **Tension:** the more work delegated to systems, the harder to answer "what changed, why, when did it stop being correct, how do we go back." Cove restores data/systems; ACP owns the operational decisions around them. `[A]`
3. **How might we:** create a Last Known Good State for MSP operations — reconstruct and recover operational *intent*, not just systems?
4. **Value prop (Moore):** models operational state and keeps a recoverable history of automation behavior, config decisions, runbook versions, and AI actions — restoring operational reality, not just infrastructure. `[A]`
5. **TAM:** Unknown; inside Cove / ACP / Trust & Recovery. No defensible sizing. `[CS: FABRICATION RISK]`
6. **Necessary functionality:** operational state graph; dependency + runbook + policy lineage; rollback recommendation; last-known-good engine; recovery simulation; Cove integration; Black Box links; recovery confidence score. `[A]`
7. **Evidence + [CS:]:** Cove DR + standby images + automated recovery testing `[CS: HIGH]`; DR-orchestration coworker in ACP material `[CS: HIGH]`; **but** when experts talked recovery they defaulted to infra RTO (Joe 22:53), not operational-intent `[R internal — faint negative]`; operational-recovery demand unmeasured `[CS: UNKNOWN]`.
8. **Riskiest assumption:** customers value restoration of operational *state*, not just infrastructure `[P=0.45]` — and even experts reached for "restore the server." `[?]`
9. **N-able superpower:** Cove owns recovery credibility; Phoenix extends it to automation/runbooks/AI. Moat = recovery trust + ACP operational memory. `[CS: HIGH / A]`

### 7 · Ghost Ship *(Infrastructure — likely a platform feature)*
*Automation nobody owns anymore. Find it before it becomes dangerous.*
1. **Problem / wicked bit:** automation decays because it succeeds — the better it works, the less visibility it gets; owners leave, environments drift, tools change, runbooks stop matching reality, and it keeps running. Industry solved automation *creation*, not *stewardship*. `[A]`
2. **Tension:** orgs optimize for creating automation (visible efficiency), almost nobody for governing it (invisible debt until failure). If coworkers/runbooks/MCPs become the MSP operating model, stale automation is business risk. `[A]`
3. **How might we:** identify abandoned, drifting, or context-invalid automation before it causes operational risk?
4. **Value prop (Moore):** continuously evaluates whether automation stays owned, relevant, effective, and contextually valid — flags *governance* failures, not just technical ones. `[A]`
5. **TAM:** Unknown; likely not standalone early — ACP lifecycle hygiene / Trust Package component. `[CS: FABRICATION RISK]`
6. **Necessary functionality:** ownership detection; stale-runbook + unused-expert + effectiveness-regression detection; MCP/tool + environmental drift; orphan discovery; approval-policy mismatch; stewardship score; retire/review recommendations; Phoenix link. `[A]`
7. **Evidence + [CS:]:** runbook drift + maintenance burden recur in SME material `[R internal — Lewis 35:16]`; runbook engine versioned `[CS: VERIFIED]`; stewardship demand unmeasured `[CS: UNKNOWN]`.
8. **Riskiest assumption:** orgs perceive automation governance as painful enough to buy/prioritize `[P=0.35]` — many tolerate the debt until it breaks something. `[?]`
9. **N-able superpower:** ACP owns experts, runbooks, approvals, execution history, and tool access — lifecycle visibility point products can't easily get. Moat = operational memory. `[A]`

### · vCISO / vCIO — *the motion, not a feature*
1. **Problem / wicked bit:** MSPs want to sell advisory services but lack scalable proof; packaging the work as a *practice* needs evidence, readiness artifacts, and a business narrative clients understand. `[CS: MEDIUM]` Reinforced hard by SMEs: "you are not an MITSP" (Lewis 46:30). `[R internal]`
2. **Tension:** a tool subscription and an advisory practice are different economic objects; N-able prices like a tool, the Grower sells an outcome. `[A]`
3. **How might we:** package EBR-Enablement, Value Ledger, Defensibility, Black Box, Sea Trials so owners sell a productized advisory service, not tool access?
4. **Value prop (Moore):** bundles proof, readiness, resilience, and operational evidence into a recurring advisory motion — customer-facing artifacts that justify advisory pricing. `[A]`
5. **TAM:** original references `[CS: MEDIUM / WOBBLY]` until source chain retraced.
6. **Necessary functionality:** the Tier-1 concepts + assurance export + recovery narrative + optional tabletop/RCA coworkers, wrapped in advisory packaging + billing. `[A]`
7. **Evidence + [CS:]:** North Star frames vCISO as packaging above coworkers `[CS: MEDIUM]`; advisory pull strong in SME call `[R internal — Lewis 1:19:32]`; billing mechanism untested `[CS: UNKNOWN]`.
8. **Riskiest assumption:** owners accept a practice-shaped bundle + billing model rather than per-tool add-ons. `[?]`
9. **N-able superpower:** distribution + channel trust — N-able already sits in the MSP operating model; competitors build agents, N-able can package evidence + advisory into the business motion. `[A]`

### 8 · Cross-Vendor QBR *(Branch A — North Star, not MVP)*
*Flag: assumes cross-vendor normalization is achievable (build/acquire/partner). That dependency is the first fall.* `[CS: VERIFIED / A]`
1. **Problem / wicked bit:** MSPs assemble QBRs by hand across multiple vendor stacks; the industry hasn't solved client-ready proof of protection at cross-vendor scale. `[CS: HIGH]`
2. **Tension:** the strongest value (cross-stack proof) is also the strongest legal/technical risk — competitor data policies, normalization, provenance, defensibility must all hold at once. `[A]`
3. **How might we:** produce a defensible, client-ready QBR in under 20 minutes across the full stack while preserving provenance and avoiding legally fragile normalization?
4. **Value prop (Moore):** generates an evidence-tagged narrative across the MSP's full vendor stack; unlike manual assembly or single-vendor dashboards, it normalizes cross-vendor evidence into a defensible story. `[A]`
5. **TAM:** do not cite without source-chain validation. `[CS: FABRICATION RISK]`
6. **Necessary functionality:** cross-vendor normalization layer; QBR runbook; Value Ledger producer; defensibility tiering; operator edit; legal/ToS review; input provenance; assurance export. `[A]`
7. **Evidence + [CS:]:** QBR demand strong `[CS: HIGH]`; cross-vendor specificity directional `[CS: MEDIUM]`; normalization path `[CS: UNKNOWN]`; legal/DPA/ToS `[?]`.
8. **Riskiest assumption:** correlated beliefs — normalization clears legal, operators trust provenance, output still valuable after caveats. `[A]`
9. **N-able superpower:** first-party telemetry supports Measured claims *before* competitor normalization exists — owned telemetry + proof, not synthetic writing. `[CS: HIGH]`

---

## Two findings the team must metabolize

1. **QBR-as-report is misframed** `[R internal]`. QBR tops every demand cut — but Stefanie Hammond (the EBR expert) says MSPs ask for it "from a technical standpoint," and Lewis Pope: *"We do not enable QBRs. We provide a small set of evidence you take *to* your QBRs."* The win isn't a faster report; it's **EBR-enablement** — coaching that turns data into a forward-looking conversation and pipeline. **Counter-tension to hold:** the mass-market buyer may still just want the report. Both can be true — field it.
2. **The deepest buyer want is liability transfer, and the concepts don't deliver it** `[R internal / ?]`. Nicole Reineke, on MSPs and AI: *"They want a transfer of liability… okay with it as long as *we're* the liable ones."* Defensibility/Black Box **document and tier** claims — they don't transfer liability. This is a legal + business-model question (routed to counsel + leadership), and it may be the highest-value unlock or a serious exposure. **Not a design decision.**

---

## What each function reviews

- **Product** — Is the alpha the Grower or the technician? That call re-prices and re-sequences everything. Does vCISO become the motion (advisory pricing) rather than a tier?
- **Design** — The owner-buys / technician-uses split. Prototype the Value Ledger in *enterprise-value* language, not minutes-saved.
- **Research** — Field the two findings with real MSP **owners** (not internal, not technicians): (a) EBR-enablement vs. faster report; (b) willingness to pay for certified readiness / liability transfer. Everything above is n=3 internal until this runs.
- **Eng** — Sea Trials + Ghost Ship as the runbook lifecycle; Value Ledger denominated in value; Head Nerd corpus extracted to sub-agent schemas (Stefanie/Lewis/Joe), per the SMEs' own suggestion.

---

## Honest limits + the one move that validates the whole line

Everything here rests on n=3 internal experts + prior qual. It is directional, not projectable. The cheapest move that ignites or kills the strategy: **one certified ransomware runbook (Sea Trials) + the EBR/Stefanie agent, in front of a handful of Growers — and read one signal: does the owner reach for her exit math?** If yes, the alpha and the line are validated cheap. If she just wants the report faster, we've learned that before building the network.
