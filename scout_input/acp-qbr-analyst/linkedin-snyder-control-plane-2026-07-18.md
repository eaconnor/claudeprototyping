# "You Can't License an AI Agent" — John Snyder (Net Friends), LinkedIn, 2026-07-18

**Source:** [John Snyder LinkedIn Pulse article](https://www.linkedin.com/pulse/you-cant-license-ai-agent-john-snyder-gnoae/) · Author: John Snyder, Net Friends (real MSP, owner-level). [CS: VERIFIED — primary source, directly read]
**Contains reported speech from Nicole Reineke, N-able's Chief AI Officer** — a real conversation, third-party retelling. [CS: MEDIUM on Nicole's direct quotes specifically — reported by Snyder, not a transcript Beth's team recorded; CS: HIGH on Snyder's own reasoning and stated position, which is primary]

---

## The core claim, attributed to Nicole Reineke

Asked whether Microsoft would eventually sell an "agent license" the way it sells a Business Premium seat, Nicole's answer: **no.** Her framing, per Snyder: an AI agent is not a product — it's three things: (1) a set of instructions, (2) a connection to a model, (3) an output. "You cannot license a set of instructions any more than you can license a recipe or a checklist. Anyone can generate one, and the agent itself has no obvious moat around it." [CS: MEDIUM — reported speech]

## Snyder's own thesis (primary, his own writing)

- **The agent is the data plane; the Control Plane is where the value sits.** Networking metaphor: data plane moves packets, control plane decides where they go and enforces rules. AI agents are the data plane — cheap, copyable, doing the work. The Control Plane decides which agent runs, what data it can touch, token budget, and keeps the audit trail. "Whoever operates the Control Plane manages the overall outcomes, not whoever writes the AI Agent." [CS: HIGH — primary, Snyder's own argument]
- **Per-seat pricing breaks down for agents.** "How do you put an AI Agent in that same seat?" No clean 1:1 user-to-agent mapping; a single user uses many agents in ways impossible to license per-seat. The industry needs a new unit of value, but businesses are accustomed to predictable subscriptions — "predictability is not just a nice-to-have. It's the main thing that makes an AI service adoptable." [CS: HIGH]
- **Agents commoditize; Skills may not.** "AI Agents are going to be commodities and likely given away freely. AI Skills might be more closely guarded as they are more akin to the specific way a particular business operates." Money is made on usage/tokens, not licensing the agent itself. [CS: HIGH]
- **MSPs see their own future as the Control Plane operator.** "A notable portion of the MSP's value proposition is headed" toward standing up and operating the AI Control Plane on behalf of clients — deciding what agents can do, watching what they do, controlling spend, producing audit trails. Snyder frames this as the natural extension of what MSPs (Net Friends specifically) already do: "we have always been the trusted operator responsible for technology." [CS: HIGH — stated intent from a real MSP owner]
- **Open question Snyder raises but doesn't resolve:** who "establishes the AI Control Plane and the associated protocols that standardize the way the plane works" vs. who "operates" it. He explicitly separates these as two different roles/opportunities — the standard-setter and the MSP-operator may not be the same party. [CS: HIGH — his own framing, left genuinely open]

---

## Why this matters to ACP — mapped precisely, not just noted

1. **This is the strongest external validation found anywhere in this corpus for treating the Governed Agent Control Plane as the real offering, not the coworkers.** It independently confirms the fleet synthesis's own read: "B isn't in the ranking because it isn't a runbook at all — it's the factory that makes them" ([idea-chess-fleet-synthesis-2026-07-14.md](../../briefs/idea-chess-fleet-synthesis-2026-07-14.md)). Nicole is already saying this publicly, to actual MSP customers, before ACP has shipped a spec for it.

2. **It sharpens the per-seat pricing problem the corpus already flagged as unresolved** — "a decided pricing model... before any of the five ship" ([acp-offerings-2026-07-14.md](../../briefs/acp-offerings-2026-07-14.md)) — with independent buyer-side confirmation from a real MSP owner reasoning to the same conclusion Kenneth/Derek/Jonathan's WTP anchors already implied (flat/per-tech, not per-seat, not per-outcome cleanly).

3. **"AI Skills might be more closely guarded... more akin to the specific way a particular business operates"** independently echoes "the runbook IS the IP" already in [acp-vision-sketches.brief.md](../../briefs/acp-vision-sketches.brief.md) — external confirmation that the Runbook (the specific, encoded way N-able's telemetry becomes a specific client outcome) is the defensible unit, not the generic agent wrapper around it.

4. **A genuinely new tension, not yet named anywhere in this corpus:** Snyder splits "who sets the Control Plane standard" from "who operates it" — and frames MSPs as wanting to be the *operator*, not necessarily locked to one vendor's proprietary plane. This raises a real strategic fork for Package B that nothing in the existing Idea Chess passes considered: **does N-able want to build and sell its own proprietary Control Plane, or does N-able want to be the best-governed, richest-telemetry agent *source* that plugs into whatever Control Plane standard the market converges on** — which, per the market scan, is actively forming right now (MCP, A2A, the SPIFFE/SPIRE pattern, Kong's AI Gateway, Arcade.dev's authorship of the MCP authorization spec). If MSPs want to operate ONE control plane across every vendor's agents (Snyder's own framing — "hooked into and managed by a Control Plane," singular, general), a proprietary N-able-only control plane may be exactly the wrong shape, even though it's the highest-value position if it wins.

## Registration note

New external source — not yet in the Confluence datadump. Local only for now; flag for the next `refresh-datadump` pass if this thread continues. [CS: VERIFIED provenance, LinkedIn Pulse, dated 2026-07-18]
