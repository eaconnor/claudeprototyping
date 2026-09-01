# Constitutional AI / Self-Critique Patterns

---

## SOURCE 1 — "Constitutional AI: Harmlessness from AI Feedback" (Anthropic, arXiv 2212.08073, December 2022)

Mechanics of the two-phase pipeline: [CS: VERIFIED — primary Anthropic paper]

**Phase 1 — SL-CAI (Supervised Learning):**
1. Sample response from initial model
2. Generate self-critique against constitution principles
3. Generate revision based on critique
4. Finetune original model on revised responses

**Phase 2 — RL-CAI (RLAIF):**
1. Sample from finetuned model
2. Separate model evaluates which of two responses is better (against constitution)
3. Train preference model from AI-generated preferences
4. Use preference model as reward signal for RL training

- "Constitution" = explicit natural-language principles the model must critique against [CS: VERIFIED]
- Chain-of-thought style reasoning improves transparency and human-judged performance [CS: VERIFIED]
- Key result: reduces tension between helpfulness and harmlessness; less evasive than RLHF-only [CS: VERIFIED]
- Only the May 2023 constitution is public; production versions not disclosed [CS: HIGH]

**Implication for Band Protocol proctor:** The protocol already has a de facto constitution — 47% rule, synthesis slot stays blank, cooperation over automation, [CS:] tags required. These can be turned directly into proctor checklist rules.

---

## SOURCE 2 — Arthur AI, "Best Practices for Building Agents: Guardrails" (2024–2025)

Pre-LLM guardrails (checks on input before agent acts): [CS: VERIFIED]
1. PII detection and redaction
2. Sensitive data blocking (credentials, card numbers)
3. Prompt injection detection

Post-LLM guardrails (checks on output after agent responds): [CS: VERIFIED]
1. Hallucination detection — verifies claims are supported by context the agent had access to
2. Toxicity detection
3. Tool/action validation — confirms agent selected appropriate tools
4. Output format compliance — confirms structure matches expected schema

**Self-correction loop pattern:** [CS: VERIFIED]
Rather than blocking, post-LLM guardrails feed failures back to LLM as targeted correction prompts. Agent revises and re-checks until passing or hitting retry limit. This transforms guardrails from filters into execution-layer quality mechanisms.

---

## SOURCE 3 — "Bridging the Safety Gap: A Guardrail Pipeline for Trustworthy LLM Inferences" (arXiv 2502.08142, February 2025)

- Guardrail pipeline as a distinct layer between LLM output and downstream delivery [CS: HIGH — preprint]
- Named modules: Safety Detector, Grounding (RAG-based claim anchoring), Customizer (real-time output adjustment), Repairer (correcting erroneous outputs) [CS: HIGH]
- "96% reduction in hallucinations vs. baseline" cited in secondary source attributed to a "Stanford study" [CS: LOW — not verified against primary paper; apply 47% rule before using this number]

[WOBBLY] — The 96% figure is from a secondary summary. Not grep-verified. Do not use without checking primary.

---

## SOURCE 4 — "Tool Receipts, Not Zero-Knowledge Proofs: Practical Hallucination Detection for AI Agents" (arXiv 2603.10060, 2026)

- Proposes "tool receipts" as a practical hallucination detection mechanism: agents log what tools they called and what was returned, creating a verifiable audit trail [CS: HIGH — preprint]
- Claims not grounded in tool receipts are flagged as potential hallucinations [CS: HIGH]

[WOBBLY] — Preprint, not peer-reviewed. "300 trap prompts" study cited in secondary reporting; primary not directly verified.
