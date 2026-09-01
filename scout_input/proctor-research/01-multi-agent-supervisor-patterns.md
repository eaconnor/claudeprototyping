# Multi-Agent Supervisor / Auditor Patterns

---

## SOURCE 1 — Anthropic, "Building Multi-Agent Systems: When and How to Use Them" (primary, 2025)

- Named pattern: **Verification Subagent** [CS: VERIFIED — primary Anthropic source]
- Orchestrator completes work, then spawns a verification subagent with: (a) the artifact to check, (b) clear success criteria, (c) tools to perform verification [CS: VERIFIED]
- Why it works: "sidesteps the telephone game problem" — minimal context transfer required; verifier tests output without needing implementation history [CS: VERIFIED]
- Applications named: test suites, linting, schema validation, compliance, specification confirmation, factual/citation checking [CS: VERIFIED]
- **Critical failure mode named explicitly:** "marking outputs as passing without thorough testing" — verifiers may declare success after running only one or two tests [CS: VERIFIED]
- Recommended mitigation: explicit instructions like "You MUST run the complete test suite before marking as passed" [CS: VERIFIED]
- Remains valuable when: (1) using less capable orchestrators, (2) verification requires specialized tools, (3) you want explicit verification checkpoints [CS: VERIFIED]

---

## SOURCE 2 — Anthropic, "Building Agents with the Claude Agent SDK" (2025)

Three named feedback mechanisms for agent quality checking: [CS: VERIFIED]

1. **Rules-Based Feedback** — providing clearly defined rules for an output, then explaining which rules failed and why. Most effective for deterministic checks.
2. **Visual Feedback** — screenshot-based verification via MCP tools (Playwright). For UI/layout/styling checks.
3. **LLM-as-Judge** — a separate LLM evaluates against fuzzy criteria. Noted to have "heavy latency tradeoffs."

- Core principle stated: "agents that can check and improve their own output are fundamentally more reliable" [CS: VERIFIED]

---

## SOURCE 3 — LangGraph Supervisor Pattern (LangChain, 2024–2025)

- Architecture: **star topology** — supervisor at center, specialist worker agents on spokes [CS: HIGH]
- Supervisor routes requests to workers, receives outputs back, decides next step or terminates with FINISH [CS: HIGH]
- Hierarchical systems possible: supervisors of supervisors [CS: HIGH]
- Quality routing example: a critic agent checks work and can "kick work back to the researcher" — feedback loop built into pipeline [CS: MEDIUM — secondary source]

[WOBBLY] — Most detailed LangGraph examples are from secondary blogposts, not primary LangChain engineering docs. The `create_supervisor` API is real; specific quality-routing examples are community-documented.

---

## SOURCE 4 — CrewAI Hierarchical Process / Manager Agent (2024–2025)

- CrewAI **hierarchical process mode** auto-generates a manager agent that oversees task delegation and reviews outputs [CS: MEDIUM — secondary comparison article]
- Manager agent pattern: auto-generated, coordinates other agents, reviews before proceeding [CS: MEDIUM]

[WOBBLY] — This is from a framework comparison post, not CrewAI primary docs.

---

## SOURCE 5 — AutoGen Review Pattern (Microsoft, 2024)

- AutoGen models agents as conversation participants [CS: MEDIUM]
- Review pattern: agents reason together in conversation rather than through explicit supervision hierarchy [CS: MEDIUM]
- Suited to conversational multi-agent patterns where agents review each other's reasoning inline [CS: MEDIUM]

[WOBBLY] — Comparison posts only; no direct AutoGen primary source verified.

---

## SOURCE 6 — "Dive into Claude Code: The Design Space of Today's and Future AI Agent Systems" (arXiv 2604.14228, 2026)

- Claude Code identifies significant gap: lacks "mechanisms that explicitly support long-term human improvement, deeper understanding, and sustained codebase coherence" [CS: VERIFIED]
- No supervisor agents that evaluate work before committing [CS: VERIFIED]
- No quality gates that block low-confidence modifications [CS: VERIFIED]
- Architecture note: append-only JSONL transcripts support post-hoc audit by humans, not prospective blocking [CS: VERIFIED]
- Key finding: "agents tend to respond by confidently praising the work, even when quality is mediocre" — motivates architectural separation between generation and evaluation [CS: VERIFIED]

---

## SOURCE 7 — "When AIs Judge AIs: The Rise of Agent-as-a-Judge Evaluation for LLMs" (arXiv 2508.02994, 2025)

- LLM-as-Judge evaluates outputs using: pointwise scoring (rubric), pairwise comparison, listwise ranking [CS: HIGH — arXiv preprint]
- Dimensions judged: fluency, correctness, relevance, factuality, instruction adherence [CS: HIGH]
- Multi-agent evaluation: multiple LLM agents play different roles (domain expert, critic, defender) to get diverse adversarial feedback [CS: HIGH]
- Bias risk: single LLM judge may prefer certain writing styles; skewed evaluations result [CS: HIGH]

[WOBBLY] — arXiv preprint, not peer-reviewed.
