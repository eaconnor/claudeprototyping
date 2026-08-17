# ACP — Reading Packet
**Date:** 2026-07-20 · **Owner:** Beth · the cut and every bet stay yours `[0% Claude]`
**What this is:** one self-contained document — everything from this session's thinking, consolidated. No jumping between files. Full package-level detail (10-field anatomy, linked evidence) lives in [concept-sketches-qbr-2026-07-20.md](concept-sketches-qbr-2026-07-20.md) if you want to go deeper on any one package; everything else you need to pick up from is here.

---

## THE THROUGH-LINE

ACP turns N-able's owned stack (Adlumin + Cove + UEM + the SOC corpus) into AI coworkers an MSP can *sell*, not just run. The unit that matters is the **package** — the thing an MSP buys and N-able sells — and the discipline is **survival**: which packages live when Idea Chess plays them out against the real world. The strongest-demand offering (Client-Facing Proof / QBR) is also one of the lowest-surviving *until one lever moves* — which is the whole game. We already built the substrate (Runbook Engine + Value Ledger); we have not built the demanded thing on top of it. `[0% Claude — the one-sentence bet is yours]`

---

## THE FIVE PACKAGES — ranked by Idea Chess survival

Full 10-field sketches, linked evidence, "Why relevant" per item: [concept-sketches-qbr-2026-07-20.md](concept-sketches-qbr-2026-07-20.md).

| # | Package | Naive floor | Dies at | The lever | One-line read |
|---|---|---|---|---|---|
| **1** | **vCIO/vCISO Advisory (flat-fee)** | **~14%** | Stage 3 (needs QBR quality) | flat-fee, not revenue-share | Highest survival on the board — and it's a pricing decision, not a build |
| **2** | **Ticket Triage On-Ramp** | ~1.2%* | Defend (commoditized) | instrument the funnel | Cheapest to de-risk; the wedge *up* into 1/3/5, not a standalone |
| **3** | **Client-Facing Proof — N-able Native** | ~0.9% | Adopt (feels incomplete) | scope honestly to N-able stacks | The buildable near-term lead; needs no acquisition |
| **4** | **Live IR/RCA Security** | ~0.55% | Build (evidence chain?) | answer Gate C | Conditional second; compliance-driven WTP is real |
| **5** | **Client-Facing Proof — Cross-Vendor** | ~0.43% | Build (normalization + egress) | **BUY + PARTNER** | Lowest floor, biggest prize, most winnable *with* the lever |

*\*Triage's floor is inflated — high only because the commodity half is already built; the differentiating wedge (live diagnostics) is untested.*

**Platform layer (not a sale):** Governed Agent Control Plane (~0.35%) → price it as the metered seat *under* 1–5. Its real moat (G4 — governing agents built elsewhere) is unspecced and long-horizon.

**Survival rank ≠ build priority.** The naive floors punish assumption-*stacks* under an independence assumption; they rank Branch A (Package 5) dead last. The fleet synthesis calls Branch A the **most winnable** offering — same fact, two true readings. Read the lever, not the decimal:

- **Package 5 is last by the decimal, first by the lever.** Its two killers — normalization ("Not started") and the data-egress wall — are the two lines N-able *doesn't have to build*: **BUY** the normalization moat, **PARTNER** past egress (marketplace = the egress solution). Money and partnerships attack A's exact death-drivers.
- **Package 3 is a real parallel line, not a lesser fallback.** If Q1 (the legal read) comes back NO, the cross-vendor promise collapses everywhere — and Package 3 is what's left standing, buildable today on the engine + ledger that exist.
- **Package 1 is the highest survivor because it dodges the death pattern that kills the others** — "nobody pays for it as a line item." Flat-fee has channel precedent; revenue-share (~0.02%) dead-ends at the billing-disclosure question.

---

## WHY N-ABLE WINS

1. **First-party full-stack telemetry** (Adlumin + Cove + UEM) — normalize *from inside the source*; everyone else reaches through brittle third-party APIs. The moat under Packages 3/5. [CS: HIGH]
2. **SOC 90% auto-remediation corpus** (RSAC 2026) — proprietary data on what actually resolves MSP incidents. [CS: HIGH]
3. **Adlumin live threat telemetry** — real, first-party; makes IR/RCA credible not theatrical. [CS: HIGH]
4. **Cove first-party backup/DR timelines** — real numbers, not an API a partner can break. [CS: MEDIUM]
5. **Installed base + channel** — N-able already sits inside tens of thousands of MSPs. **The actual cross-sell number is `[?]` — the single most valuable figure to go get**, because it's the strongest why-n-able argument and the only structural one still unquantified.

---

## WHAT'S ACTUALLY BUILT — the reassuring half and the sharp tension, same fact

| Piece | State |
|---|---|
| Runbook Engine | **BUILT** (49/49, close to spec) |
| Value Ledger | **BUILT** (52/52, customer-facing) — but **renders $0** (no producer wired) |
| Autonomy tiers | **Specced + ratified** |
| QBR runbook | **NO SPEC** — a bookmarked "[set up later]" card |
| Cross-vendor normalization | **"Not started"** |
| IR/RCA | **NO SPEC** — needs Gate C |
| Ticket Triage | **The one runbook with a real spec** (the day-1 coworker) |

The engine is **ahead of the runbooks.** The fastest path to the #1 offering isn't new plumbing — it's authoring the QBR runbook on the engine that exists and wiring the ledger producer so ROI stops rendering $0. We're currently leading go-live with the **#6-ranked runbook** (Triage) because it's the one that's specced — a defensible sequencing bet worth naming out loud, not backing into. **Not off-vision — the harder, less glamorous layer got built first.**

---

## THE DECISIONS ONLY YOU CAN MAKE

**The bets (every package + platform has an empty slot):**
- `[0% Claude]` — Package 1: the pricing model (flat-fee mechanism specifics)
- `[0% Claude]` — Package 2: does Triage lead day-1, or does leading with it anchor the platform as commodity?
- `[0% Claude]` — Package 3: is N-able-native the near-term lead, or a stepping-stone to 5?
- `[0% Claude]` — Package 4: build only after Gate C — yes?
- `[0% Claude]` — Package 5: BUY/PARTNER — is corp-dev appetite there?
- `[0% Claude]` — Platform: fund as the seat, spike G4 separately?
- `[0% Claude]` — the portfolio cut: which of the five, in what order

**Two conflicts routed to a product/leadership call (Beth · Meaghan · Nicole):**
1. **Ledger billing-dependency conflict.** Vision uses the ledger "to justify the platform fee"; the Intent Spec's NONGOAL-002 + PROHIBIT bar any billing dependency. In-code it's resolved as read-only consumer — but that's a decision, not a settled fact.
2. **Compliance owner is `<TBD>`.** EU AI Act enforceable **2026-08-02**. The Value Ledger schema is only *accidentally* AI-Act-shaped — do NOT treat it as compliant. [CS: LOW — outside training window on the Act's specifics.]

**Ledger discipline already dug (don't re-litigate):** keep the name **"Value Ledger"** (not "Trust Ledger"); governance view = **"Activity Log"**; bill/headline off **Measured tier only**; never blend AI's `estimated_human_minutes` into the headline number.

---

## THE TESTS THAT UNLOCK THE BOARD

Both are days, not quarters, and each gates 3+ packages. Pay these first.

- **Q1 · Data-egress read** — can N-able legally pull non-N-able vendors' data into a client-facing artifact? *(legal/DPA review + one competitor ToS read.)* Gates **5, 4, and cross-vendor 1.** If NO → everything collapses to N-able-native (Package 3).
- **Q2 · Operator + solution-fit study** — does the operator (not the buyer) want the *mechanism*, not just the destination? *(one operator ethnography + prototype session.)* Gates **1, 3, 4, 5.** Every demand signal is buyer purchase-intent; the operator was never studied.
- **Gate C · Adlumin data access** (tech + legal, cross-tenant) — the existence question for Package 4.

The two genuinely hard, LOW-doability builds are exactly two: **cross-vendor normalization** (buy/partner beats build) and **live zero-holes correlation for IR/RCA** (real R&D). Everything else is decisions and cheap studies.

---

## AGENT SECURITY / GOVERNANCE MARKET SCAN

Started from one question (barndoor.ai pricing) and one hunch ("agentjacking"); expanded into a five-scout sweep of the whole adjacent market. Raw material — [0% Claude] calls on what to do with it stay yours.

### The headline correction

Behavioral/anomaly detection for AI agents is **not** the wide-open gap first claimed in this session. It exists — narrow, early, contested — not as a pure-play startup:

- **Exabeam (Agent Behavior Analytics)** and **DTEX Systems** both extend existing UEBA/insider-risk engines to treat AI agents as a new baselined entity type — an agent's own behavior vs. its own baseline, the real LOTL-for-agents mechanism.
- **ARMO** is the dissent worth weighing: a vendor with every incentive to sell into this space instead argues baseline modeling *doesn't* architecturally work for agents in ephemeral compute, and sells action-chain/"intent drift" correlation instead.
- **AuthMind** claims similar behavior-based detection with no disclosed methodology — weaker evidence.
- **Valarian** ($50M Series A, July 2026) — Kubernetes-layer agent isolation, workload identity, runtime "seal/revoke misbehaving workload." Sovereign/defense-focused, not MSP — but the closest architectural comparable to a Barndoor-for-agents found in the whole scan.

**The corrected read:** a small, contested niche — one SIEM vendor, one insider-risk vendor, one weak claimant, one dissenting voice — not empty space, but real white space still.

### Agentjacking — confirmed real, confirmed narrow

Coined by **Tenet Security** (~March 2026), independently picked up by ~8 outlets, all tracing to one origin. Their definition: *"Agentjacking occurs when an attacker hijacks an agent's logic, using a chain of prompt injection, RAG poisoning, and tool abuse, to force it to perform unauthorized actions."* Demonstrated via a fake Sentry bug report read by Claude Code/Cursor/Codex through MCP — 85% success rate in their own controlled test [CS: MEDIUM — vendor's own unreplicated figure]. Their term for why it evades everything: an **"Authorised Intent Chain"** — every action is technically authorized.

Matches the LOTL-for-agents idea closely — no credential theft, the agent's own legitimate access is the weapon. **The scope gap is the opportunity:** used exclusively for AI coding agents via MCP dev-tool integrations. Nobody's applied it to MSP-tooling agents, RMM/PSA-integrated coworkers, or ACP. **That extension is available to claim first.**

### Market consolidation

Six acquisitions in twelve months: Cisco/Robust Intelligence, Cisco (bid)/Astrix Security, F5/CalypsoAI, SentinelOne/Prompt Security, Check Point/Lakera, Cato Networks/Aim Security. **Most of what looks independent today will be a platform module inside six months** — relevant to any build/partner/buy call on this whole space, including the Barndoor question.

### The landscape, by detection approach

| Category | Names | Note |
|---|---|---|
| **Behavioral/anomaly (narrow, real)** | Exabeam, DTEX, AuthMind, AgentOps, ARMO (dissents), Valarian, MI9 (academic, no product) | The real category; see above |
| **Signature/pattern-based** | Lakera (acq. Check Point), HiddenLayer, CalypsoAI (acq. F5), Robust Intelligence (acq. Cisco), Repello AI, Straiker, CrowdStrike AIDR | Catch known-bad patterns, not drift |
| **Policy/access-control + discovery only** | Barndoor AI, Lasso Security, Prompt Security (acq. SentinelOne), Aim Security (acq. Cato), Noma Security, Zenity, WitnessAI, Astrix (no longer sold), Linx, Entro, Oasis | No anomaly claim found |
| **Directly relevant to platform layer / G4** | Kong AI Gateway (agent auth/RBAC/machine identity), Arcade.dev (authored MCP authorization spec), Composio (MCP tool layer), Panther Labs (AI SOC agents) | Closest comparables to what G4 needs |

### Package-level competitive gaps — confirmed by search depth, not just absence

| Package | What exists | The gap |
|---|---|---|
| vCIO/vCISO Advisory | Cynomi, GetCybr, Apptega, Vanta/Drata | Crowded; differentiation thin everywhere except Cynomi's newest move |
| Ticket Triage | Pia (live diagnostics — the one real analog), Thread, Rewst | **No fourth player doing live diagnostics at arrival, not just classification** |
| Client-Facing Proof/QBR | ScalePad Copilot (confirmed real threat), Invarosoft, CloudRadial | ScalePad is the confirmed competitor; rest are single-sourced |
| Live IR/RCA | Rootly AI SRE (confidence scores, general SRE not MSP), BigPanda, MDR services | **Nobody does cross-stack, confidence-tagged, customer-facing RCA *during* an incident, branded for MSP/cyber-insurance** — real, confirmed white space |
| Alert Flood/Env Health | LogicMonitor Edwin AI (claims 80% reduction), ConnectWise RMM | **Nobody has a named, auditable "here's what we caught" log** — every noise-reduction number is an unaudited vendor case study |

### Investor/capital signal

Provenance correction: Barndoor's own press release names only 8 backers (Crosslink Capital, Preface, Precursor, Gaingels, Rob Hayes, Natalie Diggins, Scott Banister, Cyan Banister). The other 9 names scouted (AirAngels, AIX Ventures, First Round, Innovation Endeavors, Long Journey, Mana Ventures, HIT Forge, Trajectory, Bharadwaj, Rajaram) trace to a single aggregator claim, not Barndoor's own materials [CS: MEDIUM, WOBBLY] — still real market signal, just not confirmed cap-table.

- **TrueFoundry** — independently backed by three separate names (Mana Ventures, Trajectory Ventures, Aravind Bharadwaj personally). The strongest capital-convergence signal in the whole scan.
- **Gokul Rajaram's personal portfolio is the richest cluster found:** Patronus AI (agent training/reliability-testing, closest behavioral-anomaly-adjacent find), Openlayer (governance/observability, Gartner-recognized), Composio, Valarian.
- **OpNova** (Preface Ventures) — agentic AI for IT/security/compliance operations. **The strongest direct MSP/SOC/compliance hit found across the entire investor scan.** Worth a direct look.
- **Feroot Security** (Preface Ventures) — AI compliance monitoring across 50+ privacy frameworks, expanding agent capabilities. Relevant to the compliance-owner gap.
- Confirmed dead ends: AirAngels, Precursor Ventures (real gap, not a search artifact), The HIT Forge (2007-era gaming/social portfolio — doesn't plausibly match a 2024 agent-governance investment; unresolved identity mismatch).
- Fabrication risks caught and excluded: Long Journey Ventures' own page returned "Anduril"/"DeepMind" (implausible for a seed fund) and an unverifiable "Parakeet Security" link — both excluded.

### What to do with this

- Correct any earlier claim that behavioral-anomaly detection is fully open — it's narrow and contested, not empty.
- Watch **OpNova** and **Feroot Security** — the two most MSP/SOC/compliance-relevant finds in the whole sweep.
- The two confirmed package-level white spaces (during-incident RCA, auditable suppression log) are real, and map directly onto Packages 4 and D's riskiest, least-built parts.
- **Agentjacking is available to extend to ACP's own threat model** — nobody's claimed it for MSP/RMM-integrated agents yet.

---

## FRAGMENTS TO KEEP

- **Defensibility Layer (embedded)** — closed standalone; as trust architecture across every QBR package it's the answer to the wrong-number catastrophe. Four tiers (Measured/Benchmarked/Estimated/Unverified) + a **hard gate on Unverified**. One legal opinion answers it for Packages 1, 3, and 5 at once.
- **Cross-Tool Reconciliation** — voted off → one discovery interview. Jonathan + Derek raised it unprompted; the pain *between* the tools.
- **MSP Benchmarking** — Mike ranked it #1 for himself; a natural add to the vCIO tier if cross-MSP data rights exist.
- **Vendor-Agnostic Runbooks** — Chris Barber / William Mincher: runbooks that mix-and-choose the service per step. If normalization lands, this is the moat's UX. **Directly echoed by the market scan** — MCP as the emerging tool-integration standard is the same primitive.
- **Employee On/Offboarding** — weak value signal; a workflow feature, promote only if named a bundle gap.

---

## WHERE THE DEEPER DETAIL LIVES

1. **This packet** — the whole map and state, self-contained.
2. [concept-sketches-qbr-2026-07-20.md](concept-sketches-qbr-2026-07-20.md) — the five packages, full 10-field anatomy, survival + linked evidence.
3. [acp-agent-security-market-scan-2026-07-20.md](acp-agent-security-market-scan-2026-07-20.md) — the market scan in full, per-scout detail and every source URL.
4. [idea-chess-fleet-synthesis-2026-07-14.md](idea-chess-fleet-synthesis-2026-07-14.md) — why we die (6 patterns), who survives, how to win.
5. [idea-chess-five-to-build-2026-07-15.md](idea-chess-five-to-build-2026-07-15.md) — doability per package, cheap-vs-hard.
6. [acp-word-sketches-four-complete-2026-07-15.md](acp-word-sketches-four-complete-2026-07-15.md) — Branch A/B, Defensibility, flat-fee vs. revenue-share.
7. [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md) — offerings, why-n-able, build-state, TAM, the digs.
8. [idea-chess-offering-a.md](idea-chess-offering-a.md) — the deep adversarial pass on Package 5 (H1–H11, Q1/egress).
9. Evidence base: [Blind Interviews n=8](../scout_input/acp-qbr-analyst/confluence-blind-interviews-study.md) · [survey table n=119](acp-vision-sketches.brief.md) · [vCISO/vCIO practice](../scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md) · mini-councils ([IR/RCA](council-mini-ir-rca.md), [Alert Flood](council-mini-alert-flood.md), [Env Health](council-mini-env-health.md), [Tabletop](council-mini-tabletop.md)).

---

## NEXT MOVES — a suggested sequence (yours to decide)

1. **Fill the bets** — the `[0% Claude]` slots above are the spine of everything downstream.
2. **Pay Q1 + Q2** — the two cheap reads that de-risk the whole fleet this week.
3. **Wire the ledger producer + author the QBR runbook** — turns Package 3 from substrate into the demanded thing.
4. **Instrument the Triage funnel** — nearly free; answers whether day-1 sequencing is even right.
5. **Route the two human calls** (billing-dependency, compliance owner) — neither is a build; both block honestly.
6. **Decide what to do with the market scan** — watch-list OpNova/Feroot, consider claiming "agentjacking" for ACP's threat model, weigh Barndoor build/partner/buy.
7. **Then**: re-run Idea Chess on the five as re-packaged, or hand off to prototype for the lead package.

---

*[CS:] tags per Band Protocol. Small-n qual (n=8) directional, not projectable. Survival %s are naive products of required probabilities — directional, read the lever not the decimal.*
*47% rule: grep-verify every stat before this ships externally. Do-not-cite-as-fact: Kenneth $300/user · ScalePad displacement window · vCISO market $ figures · ~30% AI efficiency · Gartner-70%. Cynomi tripling = MEDIUM/WOBBLY-vendor.*
*[0% Claude] bet slots stay empty until filled by the human. The cut is yours.*
