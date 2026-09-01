---
title: Vertesia — what it is (brief)
type: company/product brief
generated: 2026-08-21
sources:
  - vertesiahq.com (product/company — read 2026-08-21)
  - acp-findings-2026-07-14.json (partner due-diligence)
  - datadump-refresh-2026-08-03.md · datadump-refresh-2026-08-21.md (partner plan)
  - Confluence "Harness — Vertesia to Market: Nov 1 Execution Plan" (AI space, 62302388241, Nicole Reineke, 2026-08-19)
---

# Vertesia — what it is

## In one line
An **AI-native content + agent-orchestration platform** — a runtime for building, running, and governing AI agents across content, model-agnostic. `[CS: HIGH — vertesiahq.com]`

## What it does
- **Agentic orchestration** — an operating layer for *durable, observable* agent execution (run agents, watch them, keep state). This is the part that matters to us: it's a coworker *runtime*.
- **Multi-model, model-agnostic** — "over 100 of the best generative AI models with seamless switching." Not tied to one LLM vendor. `[CS: HIGH]`
- **Content / document intelligence** — a content repository with metadata, versioning, permissions, lifecycle management; document prep and retrieval for agents (RAG-adjacent).
- **Process engine** — rules, validation, auditing. (Audit is native — relevant to the governance/value-ledger story.)

## Who makes it
Founded by **ex-Nuxeo** leadership — Eric Barroca (CEO), Bogdan Stefanescu (chief architect) — enterprise content-management lineage (Nuxeo, an ECM platform, was acquired by Hyland in 2021). So the DNA is enterprise content + governance, now pointed at agents. `[CS: HIGH]`

## Who it's for
Enterprise, multi-vertical (insurance, finserv, healthcare, legal/compliance, retail, software, NGO). Serves both business teams and technical architects/developers. No MSP or IT-management focus on their own site. `[CS: HIGH]` — **their public site does not mention N-able** (consistent with a white-label "Powered by" arrangement, not a co-marketed one).

## The N-able relationship (from the datadump — this is real, not a rumour)
- **May–June 2026:** Vertesia was one of **three partner finalists** (with ZenZero and NeoAgent) in ACP partner due diligence. Assessed as *"full multi-tenant + governance + scale, but 'may be too complex.'"* SOC2 exchanged. `[D — acp-findings-2026-07-14.json]`
- **Aug 2026:** three MSP partners recruited for Vertesia group research; pilot targeted September. `[datadump-refresh-2026-08-03]`
- **Current plan (Aug 19):** *"Vertesia console, N-able-branded, with a 'Powered by Vertesia' badge, 5 coworker runbooks, and 8 integrations built on top,"* with a **paid SKU by Mon 2 Nov 2026.** `[CS: VERIFIED — Confluence 62302388241]`
- **The allocation:** **Vertesia owns the console/orchestration surface; N-able builds the runbooks and every connector** (the plan states Vertesia ships zero PSA connectors). So N-able keeps the judgment layer (C2) and the data; Vertesia is the runtime + surface.

## Why it matters for the EBR coworker
- **It is the runtime.** The feasibility wall we kept hitting — "coworker runtime (spec 004) = 0/40, unbuilt" — is answered by a buy, not a build: the coworker runs on **Vertesia**, and N-able ships runbooks + connectors on top.
- **It plausibly hosts the Sentient Design model.** Apex's "primitives × surfaces × intent-signals" generative-UX model needs an agentic runtime with multi-model + audit + lifecycle — which is exactly Vertesia's shape. The EBR coworker = N-able runbooks/primitives composing surfaces, running on Vertesia. (Mapping unconfirmed — see open questions.)

## Open / to verify `[?]`
1. **Does C2 stay portable, or accumulate inside Vertesia's schema?** This is the load-bearing Defend question now (idea-chess-round3 re-scope). If the encoded judgment lives in Vertesia's format, the moat leaks to the platform.
2. **Deal + margin terms** — not in hand. "Powered by Vertesia" + margin split unstated.
3. **How Vertesia's content/agent model maps to Apex product primitives** (Customer/Policy/Device/Audit Log) and surfaces — overlap or conflict? Unknown.
4. **The "may be too complex" flag from diligence** — did it get resolved, or is it a live risk carried into the build?
