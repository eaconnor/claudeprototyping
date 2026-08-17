# ACP — Word Sketches (vision skill · Tier 0)

**Date:** 2026-07-14 · **Owner:** Beth · **Format:** canonical word-sketch anatomy (problem+wicked bit · tension · HMW · Moore value prop · TAM · necessary functionality · evidence+[CS:] · riskiest · superpower · the bet).
**Discipline:** every claim tagged · qual (n≤8) directional not projectable · the bet stays `[0% Claude]`. Numbers seed/fictional where shown.
**Built from:** acp-offerings-2026-07-14.md · acp-vision-synthesis-2026-07-14.md · the three digs · scout_input/acp-tam-*.md.

---
# I. OFFERING SKETCHES (full template)
---

## A · Client-Facing Proof (QBR + Value Ledger) — LEAD
- **Problem / wicked bit:** MSPs must prove strategic value quarterly across 6+ vendors that don't talk. *Industry-unsolved:* nobody normalizes cross-vendor data into one defensible story. MSP-A: "the holy grail — nobody has it." `[CS: HIGH]`
- **Tension:** MSPs are trying to look strategic in front of the client, but the evidence is scattered across 6 tools — so they hand-build for hours or dump raw data. → Jonathan "2 hrs/quarter/customer" `[CS: MEDIUM]`
- **HMW:** How might we let an MSP walk in credible without spending a day building the story?
- **Value prop (Moore):** *For mid-size MSPs (20–100 clients) who must prove their value each quarter, ACP QBR is a cross-stack reporting coworker that turns every vendor's data into one narrative the MSP edits and owns. Unlike ScalePad, it's built on N-able's first-party telemetry — normalized from the inside, not scraped from brittle APIs.*
- **TAM:** $180M–1.35B floor / up to ~$4.3B share-of-services. Unknown = pricing model. `[CS: MEDIUM]`
- **Necessary functionality:** cross-stack normalize · draft narrative · edit-before-send · audience toggle (CFO/owner) · Value Ledger proof.
- **Evidence:** QBR #1 across all 3 instruments `[strong]`.
- **Riskiest / kill:** 15-min edit + 75–80% normalization — both P0, ~30–35%, unowned. If normalization fails, the whole thing fails.
- **Superpower:** first-party full-stack telemetry (+ SOC 90% data as the secret ingredient).
- **The bet:** `[0% Claude — fill this in]`

## B · Governed Agent Control Plane
- **Problem / wicked bit:** MSPs want to hand real work to AI agents but can't stand behind an actor they can't govern. *Industry-unsolved:* nobody manages agent sprawl or gives MSPs an agent-monitoring dashboard. Shawn: "everybody's beating the drum"; Derek: a 200-agent MSP "no idea how you'd manage that." `[CS: HIGH]`
- **Tension:** MSPs want to hand work to agents, but they can't be accountable for an actor that can't be fired or sued — so they avoid agents or drown in sprawl. → Derek "AIs cannot be taken to court" `[CS: HIGH]`
- **HMW:** How might we let an MSP hand work to AI agents and still be the accountable human in the room?
- **Value prop (Moore):** *For MSPs adopting AI across their stack, ACP is a governed agent control plane that lets them build, run, and audit AI coworkers with gated autonomy. Unlike rolling your own in Claude, it owns the connectors, the identity, and the audit trail — so the MSP governs every agent, including the ones they built elsewhere.*
- **TAM:** B-by-itself ~$0.5–9.6B bottoms-up, midpoint ~$3B; category (Agent Obs & Gov) ~$1.68B `[WOBBLY]`. Unknown = agent-seat ARPU (no precedent).
- **Necessary functionality:** the 9-field Coworker Brief · locked risk-tiers · admin-gated autonomy · owned connectors · audit trail / Activity Log.
- **Evidence:** gated autonomy universal (5/5 + 13/17) `[strong on need]`; WTP `[thin]`.
- **Riskiest / kill:** MSPs won't pay for governance as a line item (Shawn); + the crux — can we govern *externally-built* agents? Today: audit-after, no pre-screen (Nicole's BIG QUESTION).
- **Superpower:** Deterministic Substitution Engine + owned connectors + first-party stack.
- **The bet:** `[0% Claude — fill this in]`

## C · Live IR / RCA
- **Problem / wicked bit:** when a breach gets through, the proof is scattered across 6 tools, 3 Slack threads, one tech's memory. *Industry-unsolved:* zero-holes cross-stack correlation *during* the incident. `[CS: HIGH]`
- **Tension:** MSPs are trying to prove they contained the breach — to client, auditor, insurer — but the defensible report only exists days later, if at all. → MSP-C "doing the RCA during the incident is equivalent to helping resolve it."
- **HMW:** How might we help an MSP prove they handled the breach while they're still fighting it at 2am?
- **Value prop (Moore):** *For MSPs running security services, ACP IR/RCA is an incident coworker that builds the customer-ready root-cause report as the incident unfolds. Unlike after-the-fact RCA, it correlates across the whole stack in real time and produces the artifact the insurer requires.*
- **TAM:** rides MDR/SOC services ~$4–6B (2026); capture rate unknown. `[CS: MEDIUM]`
- **Necessary functionality:** live chain-of-evidence · cross-stack correlation · two outputs (customer summary + internal) · read+write-with-approval · insurer/compliance pull.
- **Evidence:** #2 qual, #3 survey; #1 on cyber-insurance policies `[mixed]`; Vikram + Jonathan pay.
- **Riskiest / kill:** zero-holes correlation at scale + **needs Adlumin data access (Gate C, unconfirmed)**. No data = no correlation = no product.
- **Superpower:** SOC 90% auto-remediation data + Adlumin real threat telemetry.
- **The bet:** `[0% Claude — fill this in]`

## D · Ticket Triage Wedge (the day-1 build)
- **Problem / wicked bit:** tickets arrive as context-free "FW: can you sort" emails. *Industry-unsolved (contested):* live diagnostics on arrival — classification is table-stakes, the wedge is the diagnostics. `[CS: MEDIUM]`
- **Tension:** techs are trying to resolve tickets fast, but every ticket starts with manual diagnosis before real work begins. → n=119 open-text, ticket intelligence most enthusiastic `[CS: HIGH]`
- **HMW:** How might we make tickets arrive already understood, so a junior tech starts from a diagnosis?
- **Value prop (Moore):** *For MSP service desks, ACP Ticket Triage is a coworker that classifies severity and runs safe diagnostics before the tech opens the ticket. Unlike Rost/Thread/PIA classifiers, it runs the diagnostics, not just the label.*
- **TAM:** no independent TAM — it's the **on-ramp into A** (per-tech). Carry A's TAM.
- **Necessary functionality:** live diagnostics auto-run · severity + likely cause on arrival · safe-auto vs. sign-off line · daily-frequency compounding.
- **Evidence:** highest qual intensity (8.3) + most enthusiastic open-text, BUT #6 forced-rank (table-stakes signal) `[split]`.
- **Riskiest / kill:** diagnostic delta beats incumbents `[A — test]`; commodity/in-PSA risk.
- **Superpower:** SOC pattern data + PSA integration depth.
- **The bet:** `[0% Claude — fill this in]`

## E · Cross-Tool Reconciliation (research-first)
- **Problem / wicked bit:** each tool (and each tool's AI) sees only its own silo. *Industry-unsolved:* no AI has cross-tool visibility — the billing/bookkeeper blind spot. Jonathan: "very few tools help… a big money sync." `[CS: MEDIUM — n=2 unprompted]`
- **Tension:** MSPs are trying to run a tight business across dozens of tools, but the money leaks *between* systems go unwatched.
- **HMW:** How might we give an MSP one AI that sees across every tool they own?
- **Value prop (Moore):** *For MSPs bleeding margin between systems, ACP Reconciliation is a cross-tool coworker that watches vendor bills, licensing, and usage across the whole stack. Unlike single-tool AIs, it's the only one with visibility across all of them.*
- **TAM:** unsized white space `[?]` — the strongest fit to the control-plane thesis, weakest evidence.
- **Necessary functionality:** cross-tool ingest · bill/license reconciliation · anomaly surfacing · alerts on money leaks.
- **Evidence:** n=2 unprompted, intense `[thin but hot]`.
- **Riskiest / kill:** is it ACP's job? Out of current scope. Route to a **discovery interview, not a spec.**
- **Superpower:** first-party cross-stack visibility.
- **The bet:** `[0% Claude — fill this in]`

---
# II. GOVERNANCE-CRUX SKETCHES (answering B's "govern agents built elsewhere") — mechanism sketches; TAM = part of B
---

## G1 · Register & Observe
- **Problem:** MSPs run agents ACP didn't build; today we can only watch after the fact.
- **Tension:** MSPs want oversight of every agent, but audit-after can record a bad action, not stop it.
- **HMW:** How might we give an MSP one place that sees every agent, even the ones we didn't build?
- **How it works:** MSP registers external agents; ACP wraps them with monitoring + an audit trail.
- **Evidence:** it's today's model (verified in build) `[strong]`. **Riskiest:** oversight without control may not be worth paying for.
- **Superpower:** the control plane + Activity Log. **The bet:** `[0% Claude]`

## G2 · Adopt into a Runbook
- **Problem:** home-built agents have no guardrails.
- **Tension:** MSPs want their Claude-built agents *and* governance, but the two don't come together.
- **HMW:** How might we let an MSP bring an agent they built into ACP's guardrails without rebuilding it?
- **How it works:** import the external agent as a Coworker/Runbook under ACP's risk-tiers. Bring-your-agent.
- **Evidence:** aligns with the runbook-as-contract model `[mixed]`. **Riskiest:** only works for agents willing to be re-homed.
- **Superpower:** Runbook engine (built). **The bet:** `[0% Claude]`

## G3 · Identity Gate
- **Problem:** ungoverned agents touch the stack with borrowed credentials.
- **Tension:** MSPs want agents to act, but not with a shared key nobody can trace.
- **HMW:** How might we make it so no agent can act without a scoped identity we can revoke?
- **How it works:** every agent needs a scoped Non-Human Identity to act. No identity → no action.
- **Evidence:** NHI is in the vision (per-agent scoped identity) `[mixed]`. **Riskiest:** MSPs must route all access through ACP.
- **Superpower:** Non-Human Identity model. **The bet:** `[0% Claude]`

## G4 · Action Proxy  *(strongest moat candidate)*
- **Problem:** governing the *agent* misses agents you don't control; governing the *action* doesn't.
- **Tension:** MSPs want to govern everything, but they can't govern an agent they didn't build.
- **HMW:** How might we govern the action instead of the agent, so it works for any agent at all?
- **How it works:** external agents route their actions through ACP's risk-tier approval gate (MCP proxy). Govern the action, not the agent.
- **Evidence:** makes ACP the layer everything passes through — the governor-of-all-agents moat `[thin but strategic]`. **Riskiest:** you must sit in the action path (latency, adoption).
- **Superpower:** risk-tier approval gate + MCP. **The bet:** `[0% Claude]`

## G5 · Certify & Catalog
- **Problem:** vendor/third-party agents have no trust signal.
- **Tension:** MSPs want to trust external agents, but there's no certification anyone recognizes.
- **HMW:** How might we let an MSP trust an outside agent the way they trust an app-store app?
- **How it works:** external/vendor agents get certified into the marketplace — Shopify pattern extended to home-built.
- **Evidence:** marketplace is in the vision `[A — demand unvalidated]`. **Riskiest:** heavy + slow for a one-off agent; needs supply side first.
- **Superpower:** vendor marketplace + certification. **The bet:** `[0% Claude]`

> **The fork (yours):** walled garden (only ACP-built agents) vs. **governor-of-all-agents** (G3+G4 make ACP the layer everything passes through — the stronger buy-vs-build moat).

---
# III. PRICING-MODEL SKETCHES (mechanism, not product; TAM shown, applies across A/B/C)
---

## P1 · Per-Tech Tool
- **Problem:** MSPs resist unpredictable AI bills and per-client pricing (breaks for small-client shops).
- **Tension:** MSPs want ACP's value, but a token/per-client bill they can't predict makes them self-build instead.
- **The model:** flat $/tech/month, priced like the RMM seat next to it.
- **TAM:** floor ~$0.5B–1.35B. **Evidence:** the only real WTP anchor — Atera $129–219/tech; Kenneth "$25–50/tech; $300/user is nuts" `[CS: MEDIUM]`.
- **Wins:** predictable, familiar, matches WTP. **Riskiest / hurts:** commodity pressure, caps the upside, doesn't capture the value AI creates.
- **The bet:** `[0% Claude]`

## P2 · Share of Services
- **Problem:** per-device/per-tool pricing captures a fraction of the value AI creates ("3,000 findings in one pass").
- **Tension:** N-able wants to price the value, but there's no MSP precedent for revenue-share and MSPs guard their margins.
- **The model:** a % of what the MSP bills *their client* for the vCISO/MDR service. "Price the work, not the laptop."
- **TAM:** max ~$4.3B+. **Evidence:** precedent exists elsewhere — Zendesk $1.50/resolution, Salesforce $2/conv `[CS: VERIFIED precedent]`; MSP appetite `[?]`.
- **Wins:** captures AI's value, biggest upside. **Riskiest / hurts:** no MSP precedent, rev-share resistance, harder to meter + explain.
- **The bet:** `[0% Claude]`

> **The lever (yours):** P1 vs P2 *is* the difference between a ~$1B and a ~$4B+ business. `[0% Claude — the pricing bet]`

---
*Twelve sketches. Bets left open. The synthesis is Beth's. Bet-layer fields (partner, shipping-speed, success metric) pulled in only when a sketch graduates to a real business case.*
