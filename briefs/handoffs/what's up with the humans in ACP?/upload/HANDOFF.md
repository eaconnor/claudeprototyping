---
doc_id: HANDOFF-MAIN
title: ACP Market Analysis · Handoff
version: 1.0.0
status: Tier 1 · The Only Doc You Must Read
date: 2026-06-05
audience: N-able Spec-Driven Design Team (PMs · Designers · Eng)
owner: Beth Schwindt
read_time_minutes: 5
tier:
  1: This doc — 5 min, the only required read
  2: nicole-actual-acp-vision.md + primary-research-transcripts.md — 30 min, if Tier 1 raises questions
  3: All 13 docs — reference, not required (see TAXONOMY.md)
---

# ACP Market Analysis · Handoff

**The 30-second version:** ACP is not "AI-powered triage automation." It's an **MSP operating system** that turns N-able's own products (UEM, Cove, Adlumin) into invisible infrastructure underneath a Shopify-style marketplace platform. Nicole's master vision doc calls it "headless IT." This handoff is the analysis behind that bet.

**Critic score:** 19/30 — strong analysis, some delivery gaps (math dispute, missing Wardley body). All flagged structurally. Don't quote the $33,600/month figure externally until reconciled.

**Audience:** Mixed team (PMs, Designers, Eng). Three sections below for your specific role. Read your section first; cross-read if you have time.

---

## What ACP actually is

> "If the control plane works, a new MSP should never need to learn UEM. They should never need to learn Cove. They should never need to learn Adlumin. Those products become infrastructure, engines running underneath, while the ACP is the only interface the MSP touches." — Nicole Reineke, Headless IT Tech doc, p.8 [CS: VERIFIED]

The bet: **stop pricing per device. Price the work. Capture the marketplace.** Seven stacked revenue layers (subscription + execution + Expert licensing + marketplace rev share à la Shopify + tool metering + LLM passthrough + outcome pricing). See `acp-vision-from-pdfs.md` §6 for the full breakdown.

---

## 📋 For Decisions (PMs) {#FOR-DECISIONS}

**Three decisions to make this week.** Each has options + tradeoffs. Pick one direction per decision.

### Decision 1 · How do we govern customer-authored runbooks?

Nicole's vision explicitly leaves this open ("BIG QUESTION TO ANSWER HERE" — Headless IT doc p.8). The control plane does NOT pre-screen customer runbooks. Audit layer catches violations **after the fact**.

| Option | Tradeoff |
|---|---|
| **A. Audit-only** (current vision) | Lowest friction for MSPs. Highest blast radius for bad runbooks. |
| **B. Static pre-screen** | Predictable. Slow. Misses runtime issues. |
| **C. Runtime policy engine** | Most expressive. Most engineering work. Requires telemetry already in vision. |

→ Evidence: `HANDOFF-ACP-VISION-PDFS#TENSION-RUNBOOK-NOT-PRESCREENED`

### Decision 2 · What's the trust UX mental model?

Ewan Cameron's experiment proposes three competing models for L4 earned autonomy. **One needs to win a 10-second comprehension test with mature MSPs.**

| Option | What it looks like |
|---|---|
| **A. Track record** | "This coworker handled 47 patches successfully → promote to autonomous" |
| **B. Graduated dial** | Slider per task: manual / assisted / autonomous |
| **C. Scope-based guardrail** | "Low risk: auto · Medium: approval · High: manual" (current default in PDFs) |

→ Evidence: `HANDOFF-ACP-VISION-PDFS#L4-AUTONOMY` · `HANDOFF-COUNCIL-REPORT` SDT framework

### Decision 3 · Do we ship the math reconciliation OR pull the claim?

`CLAIM-MATH-DISPUTED-001` — the $33,600/month false-positive savings claim doesn't reconcile with its stated formula. Critic flagged. Three paths:

| Option | Implication |
|---|---|
| **A. Recompute** with explicit assumptions (working days only? single-tech bottleneck?) | Honest but lowers headline number |
| **B. Rewrite formula** to match $33,600 | Risks reverse-engineering — find the assumptions that make math work |
| **C. Pull the claim** | Removes a flashy ROI number from external decks |

→ Evidence: `HANDOFF-PROBLEMS-RANKED#PROBLEM-001` · `HANDOFF-CRITIC-PASS-1`

---

## 🔬 For Research (Designers + Researchers) {#FOR-RESEARCH}

**Three named research gaps + how to fill them.** Pick one to scope this sprint.

### Gap 1 · MSP error tolerance is unknown

What error rate do MSPs actually accept from AI-powered triage? Kano framework says the gap between expectation (1%?) and reality (5% industry standard?) creates dissatisfaction even when the product is objectively good.

**How to fill:** Survey N-able's TAP partners (~25K MSPs). Five questions max. Anchor to vendor benchmarks (Pia, Robin, Charlotte AI).

→ Evidence: `HANDOFF-COUNCIL-EXTENDED` Kano section · `HANDOFF-NICOLE-VISION` "Still Unknown"

### Gap 2 · Headless aspiration vs. discoverability reality

Nicole's vision: MSPs never open UEM/Cove/Adlumin. Partner reality (22 interviews): "Enzo is buried on the asset tab." This gap is a UX research brief, not a strategy debate.

**How to fill:** Tree-test the "headless" navigation against the current in-app entry point. 8 MSP techs. Done in a week.

→ Evidence: `HANDOFF-ACP-VISION-PDFS#TENSION-HEADLESS-VS-DISCOVERABILITY` · `HANDOFF-PRIMARY-RESEARCH#BLOCKER-DISCOVERABILITY`

### Gap 3 · Trust progression promotion criteria

For Decision 2 above to land, we need to know what mental model MSPs reach for. **Ewan Cameron's hypothesis explicitly proposes this as a 10-second comprehension test.** That's the research. Run it.

**How to fill:** Show three concept sketches (track record / graduated dial / scope guardrail) to 10 partners. Time to grasp + immediate reaction.

→ Evidence: `HANDOFF-ACP-VISION-PDFS#L4-AUTONOMY`

### Bonus: 22 named partners are already in your pipeline

`primary-research-transcripts.md` catalogs quotes from 22 partners. Several CAB names (Christian K., Chris W., Jeff Y., Michael B., Thomas C.) appear in the source list but have **no quotes** in the synthesized record. Their voice is sitting in `nicole-acp-datadump/transcripts/`. Worth grepping.

---

## 📊 For Leadership (One-Pager for Nicole + Execs) {#FOR-LEADERSHIP}

### The Bet

**Per-device pricing is broken. The work multiplied 100x; the price didn't.** Nicole's ACP vision flips the model: price the work via 7 stacked revenue layers, capture marketplace rev share like Shopify, monetize the substrate that competitors don't own (orchestration + governance + audit).

### Why now

- **Industry has converged on MCP** as the agent-to-tool protocol (Anthropic, OpenAI, Workato, Rewst, Salesforce, ServiceNow, CrowdStrike). N-able's ACP architecture is structurally aligned.
- **Consumption pricing is mainstream.** Salesforce Agentforce $2/conversation; Zendesk $1.50/automated resolution; n8n €20/mo for 2,500 runs. SAP shifting to consumption-based AI. BCG: 40% of buyers cite seat reduction as primary cost lever.
- **Autonomous L1 is shipped, not vaporware.** Pia (Kaseya), Robin (Atera), ServiceNow L1 AI Specialist. **Catching up on L1 alone is not differentiating** — the marketplace + control plane is.

### What we have

- 22 named MSP partner interviews validate the pain (data accuracy, license reconciliation, alert triage, lifecycle planning) and the desire (MCP as "game changer").
- 60+ competitor profile synthesis — direct MSP, security, AI infra, automation.
- Nicole's full architecture spec across three PDFs (Headless IT, AI Coworker Description, Runbooks Definition).
- 9-framework strategic analysis (some superseded by Nicole's source docs — see corrections in `nicole-actual-acp-vision.md`).

### What's at risk

- **Microsoft Agent 365 at $15/user/month bundled into M365.** Different stack layer (user productivity vs. MSP operations) but reach into SMB will affect MSP value prop.
- **The "BIG QUESTION" Nicole flagged herself:** how to govern vendor agents running on customer infrastructure. Unresolved in the source doc.
- **The headless vision is far from the discoverability reality** — 22 partners are evaluating NZO inside UEM today. Bridging that gap is real product work, not marketing.

### What I'd ask Nicole

Three things:
1. **Sign-off on Decision 2** (trust UX mental model) — this gates the autonomy promotion work.
2. **Greenlight for primary research** on MSP error tolerance + headless-vs-discoverable UX (Gaps 1 + 2 above).
3. **Direction on Decision 3** (math reconciliation) — pull the claim from external decks until reconciled, or schedule the recompute.

---

## How to use the rest of this package

| If you want… | Open |
|---|---|
| The strategic frame | `nicole-actual-acp-vision.md` |
| Source-grounded architecture spec | `acp-vision-from-pdfs.md` |
| Ranked problem list (with math dispute) | `problems-ranked.md` |
| All evidence (partners + competitors + ethnography) | `research-evidence.md` |
| Framework analysis (9 frameworks) | `council-frameworks.md` |
| What's broken in this analysis | `critic-pass-1.md` |
| ID schema + grep recipes | `TAXONOMY.md` |
| Confidence tag reference | `CS-TAGS.md` |
| The raw data dump | `nicole-acp-datadump/` |
| Raw scout output | `scout/scout-secondary-output.md` |

**To regenerate JSON sidecars after edits:** `python3 _scripts/_gen_sidecars.py`
**JSON sidecars live in:** `_sidecars/` (hidden from top-level view)

---

**Beth is on vacation.** Questions hit the docs first, then Bradley/Claude. The `CLAUDE.md` in this folder orients new Claude Code sessions.
