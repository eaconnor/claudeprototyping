# ACP — Agent Security / Governance Market Scan
**Date:** 2026-07-20 · **Method:** five parallel scout passes (governance competitors · package-level competitors + "agentjacking" term · three investor-portfolio batches) · raw material, not synthesis — [0% Claude] calls stay yours
**Trigger:** started from one question (barndoor.ai pricing) and one hunch (agentjacking); expanded to the whole adjacent market

---

## THE HEADLINE CORRECTION

Earlier in this session I told you nobody was doing behavioral/anomaly detection on AI agents — that the gap was wide open. **That was too strong.** It exists, just not as a pure-play startup:

- **Exabeam — Agent Behavior Analytics** and **DTEX Systems** both extend existing UEBA/insider-risk engines to treat AI agents as a new baselined entity type. This is the real mechanism — an agent's own behavior vs. its own baseline, not signature-matching.
- **ARMO** is the interesting dissent: a vendor with every commercial incentive to sell into this space instead argues baseline modeling *doesn't* architecturally work for agents in ephemeral compute, and sells action-chain/"intent drift" correlation instead.
- **AuthMind** claims something similar ("detects rogue behavior even when permissions technically allow it") with no disclosed methodology — weaker evidence.
- **Valarian** ($50M Series A, July 2026) is the closest thing to a dedicated agent-governance-with-runtime-controls play found anywhere in this scan — Kubernetes-layer isolation, workload identity, default-deny segmentation, audit logging, and a "seal/revoke misbehaving workload" runtime control. Aimed at sovereign/defense infrastructure, not MSP — but architecturally the nearest Barndoor comparable found.

**The corrected read:** this isn't an open gap, it's a small, early, contested niche — one SIEM vendor, one insider-risk vendor, one identity-observability startup making an unverified claim, and one vendor arguing the whole approach is wrong. Nobody has landed it as an obvious, dominant pattern yet. That's a narrower opportunity than "nobody's doing this," but it's still real white space.

---

## AGENTJACKING — confirmed real, confirmed narrow

Coined by **Tenet Security** (~March 2026), picked up independently by ~8 outlets since (Infosecurity Magazine, The Hacker News, Dark Reading, CSA Labs, others) — all tracing to one origin, not independently coined.

Their definition: *"Agentjacking occurs when an attacker hijacks an agent's logic, using a chain of prompt injection, RAG poisoning, and tool abuse, to force it to perform unauthorized actions."* Demonstrated via a fake Sentry bug report with a hidden instruction, read by Claude Code/Cursor/Codex through MCP — 85% success rate in their controlled test [CS: MEDIUM — vendor's own unreplicated figure]. Their own term for why it evades everything: an **"Authorised Intent Chain"** — every action looks legitimate because it *is*, technically, authorized.

**This matches the LOTL-for-agents idea almost exactly** — no credential theft, the agent's own legitimate access is the weapon. **The scope gap is the opportunity:** the term is used *exclusively* for AI coding agents (Claude Code, Cursor, Codex) via MCP dev-tool integrations. Nobody has applied it to MSP-tooling agents, RMM/PSA-integrated coworkers, or ACP. If you want it for ACP's threat model, that's a genuine novel extension — real thought-leadership positioning, not borrowed language.

---

## MARKET CONSOLIDATION — the whole category is being rolled up fast

Six acquisitions in twelve months: Cisco/Robust Intelligence, Cisco (bid)/Astrix Security, F5/CalypsoAI, SentinelOne/Prompt Security, Check Point/Lakera, Cato Networks/Aim Security. **Most of what looks independent today will be a platform module inside six months.** Relevant to any build/partner/buy call on this whole space, including the Barndoor question — it's exactly the kind of company this pattern eats.

---

## THE FULL LANDSCAPE — by detection approach

**Behavioral / anomaly-based (the real, narrow category):**
| Company | What it does | Note |
|---|---|---|
| Exabeam (Agent Behavior Analytics) | UEBA extended to AI agents as new entity type; baseline + deviation | Established SIEM vendor, not a startup |
| DTEX Systems | Insider-risk platform extended to agent identities; tool-call/data-lineage baselining | Same pattern — established platform, new entity type |
| AuthMind | Claims "detects rogue behavior even when permissions technically allow it" | No disclosed methodology — weaker evidence |
| AgentOps | Dev-facing observability SDK; flags "behavioral drift" | Reliability/ops tooling, not security/compliance grade |
| ARMO (Kubescape) | Explicitly argues baseline detection doesn't work for agents; sells intent-drift correlation | The dissenting voice — worth weighing |
| MI9 (arXiv paper) | Academic prior art for "goal-conditioned drift indicator" | No commercial product |
| Valarian | Kubernetes-layer agent isolation, workload identity, runtime "seal/revoke" | Sovereign/defense-focused, not MSP — closest architectural comparable to a Barndoor-for-agents |

**Signature/pattern-based (prompt injection, jailbreak, known-bad matching):**
Lakera (acq. Check Point), HiddenLayer, CalypsoAI (acq. F5), Robust Intelligence (acq. Cisco, no longer standalone), Repello AI, Straiker, CrowdStrike AIDR — all catch *known* bad patterns, not drift.

**Policy/access-control + discovery only (no anomaly claim):**
Barndoor AI, Lasso Security, Prompt Security (acq. SentinelOne), Aim Security (acq. Cato), Noma Security, Zenity (possible drift-detection content, unverified — flagged for a direct follow-up read), WitnessAI, Astrix Security (no longer independently sold), Linx Security, Entro Security, Oasis Security.

**Directly relevant to the platform layer / G4 specifically:**
- **Kong AI Gateway** — agent authentication, RBAC, prompt-injection detection, machine identity for agents. Backed by Innovation Endeavors since 2011.
- **Arcade.dev** — AI agent authorization + action-runtime; authored the MCP authorization spec. $60M Series A, 2026.
- **Composio** — MCP integration/tool layer for building agents (1000+ toolkits, sandboxed execution, auth). Backed by Gokul Rajaram.
- **Panther Labs** — AI SOC platform, "agents that learn and improve over time." Backed by Innovation Endeavors since 2020.

---

## PACKAGE-LEVEL COMPETITIVE GAPS — real white space, confirmed by search depth

| Package | What exists | The gap |
|---|---|---|
| **vCIO/vCISO Advisory** | Cynomi (added persona-based "AI Agents"), GetCybr, Apptega (ApptegaGPT), Vanta/Drata (compliance-automation, not purpose-built vCISO) | Crowded; differentiation is thin everywhere except Cynomi's newest move |
| **Ticket Triage** | Pia (live diagnostics — closest analog to your wedge), Thread ($19–34/license, 725+ MSP partners), Rewst | **No fourth player found doing live diagnostics at arrival, not just classification** — Pia is the only one |
| **Client-Facing Proof/QBR** | ScalePad Copilot (beta, "in seconds" claim), Invarosoft, CloudRadial, smaller unverified entrants | ScalePad is the real, confirmed competitive threat; the rest are single-sourced |
| **Live IR/RCA** | Rootly AI SRE (confidence scores — closest analog, but general SRE not MSP), BigPanda, LogicMonitor Edwin AI, MDR services (Sophos, Cyderes, UnderDefense) | **No tool found doing cross-stack, confidence-tagged, customer-facing RCA *during* an incident, branded for MSP/cyber-insurance.** Real, confirmed white space. |
| **Alert Flood / Env Health** | LogicMonitor Edwin AI (claims 80% noise reduction), ConnectWise RMM, Resolve, Acronis | **No product found with a named, auditable "here's what we caught" log as a distinct feature.** Everyone's noise-reduction number is an unaudited vendor case study. |

---

## INVESTOR / CAPITAL SIGNAL

**Correction on provenance first:** Barndoor's own press release names only 8 backers — Crosslink Capital (lead), Preface Ventures, Precursor Ventures, Gaingels, Rob Hayes, Natalie Diggins, Scott Banister, Cyan Banister. The other 9 names you gave (AirAngels, AIX Ventures, First Round, Innovation Endeavors, Long Journey, Mana Ventures, HIT Forge, Trajectory Ventures, Aravind Bharadwaj, Gokul Rajaram) trace to a single aggregator claim, not Barndoor's own materials [CS: MEDIUM, WOBBLY]. Doesn't invalidate the market-scan value — still real capital near this space — but don't cite them as confirmed Barndoor backers.

**What the scan actually found, by strength:**

1. **TrueFoundry** (enterprise LLM deployment/MLOps) — independently backed by three separate names on your list (Mana Ventures, Trajectory Ventures, Aravind Bharadwaj personally). The single strongest capital-convergence signal in the whole scan.
2. **Gokul Rajaram's personal portfolio is the richest cluster found anywhere:** Patronus AI (agent training/reliability-testing pre-deployment — closest behavioral-anomaly-adjacent find), Openlayer (AI governance/observability, Gartner-recognized), Composio (MCP layer), Valarian (agent isolation/governance).
3. **OpNova** (Preface Ventures) — agentic AI for IT/security/compliance operations, explicitly targeting "rework" automation. **The strongest direct hit for the MSP/SOC/compliance category found across the entire investor scan.** Worth a direct look.
4. **Feroot Security** (Preface Ventures) — AI compliance monitoring across 50+ privacy frameworks, expanding "AI Agent capabilities." Relevant to the compliance-owner gap.
5. **ValidMind** (Gaingels) — AI model-risk-management/governance for financial services. Adjacent to the EU AI Act compliance question.
6. **Kong** and **Panther Labs** (Innovation Endeavors) — see platform-layer table above.

**Confirmed dead ends:** AirAngels (nothing relevant in 33 companies), Precursor Ventures (nothing relevant, real gap not a search artifact), The HIT Forge (portfolio is 2007-era gaming/social — doesn't even plausibly match being a 2024 agent-governance investor; flagged as an unresolved identity mismatch, not confirmed).

**Fabrication risks caught and excluded:** Long Journey Ventures' own portfolio page returned "Anduril" and "DeepMind" (implausible for a seed fund, no corroboration) and an unverifiable "Parakeet Security" connection — both excluded from anything above.

---

## WHAT TO DO WITH THIS

- **Correct the earlier claim** in [acp-continue-here-2026-07-20.md](acp-continue-here-2026-07-20.md) — behavioral-anomaly detection for agents is a narrow, contested, early category (Exabeam/DTEX/ARMO), not an open gap. Still worth pursuing; just say it accurately.
- **Watch OpNova and Feroot** — the two most directly MSP/SOC/compliance-relevant companies found in the entire five-scout sweep, both Preface Ventures-backed.
- **The two confirmed package-level white spaces (Live IR/RCA during-incident, and an auditable alert-suppression log) are real gaps, not search artifacts** — both independently confirmed by targeted search depth, and both already the riskiest/least-built parts of Packages 4 and D in the concept sketches.
- **Agentjacking as a term is available to extend to ACP's own threat model** — nobody's using it for MSP/RMM-integrated agents yet.
- [A — every "so what" above is my synthesis across the five raw scout passes; the raw material itself is tagged per-claim in the scouts' own outputs, reproduced faithfully here.]

---

*[CS:] tags per Band Protocol. Scout agents cannot write files (Read/WebSearch/WebFetch only) — this brief is the actual record; nothing landed on disk from the agents themselves beyond what's captured here.*
*47% rule: every stat above traces to a single vendor claim, case study, or press release unless marked otherwise — verify before quoting externally.*
