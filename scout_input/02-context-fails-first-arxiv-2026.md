# Source: AI Agents Do Not Fail Alone — The Context Fails First
SOURCE_URL: https://arxiv.org/html/2607.14275v1
DATE: July 2026
TYPE: arXiv preprint (not peer-reviewed)
CS_BASE: HIGH for taxonomy; MEDIUM for quantified claims

## Abstract
AI agent failures stem from poor context engineering, not solely model limitations. Study validates context quality as an independent reliability indicator via ProofAgent-Harness.

## Seven Context Failure Categories
1. Goal Drift — vague role definition causes scope loss
2. Unsafe Compliance — missing guardrails and refusal conditions
3. Rule Conflict — conflicting instructions force agent to choose
4. Tool Misuse — weak tool schemas → incorrect tool selection and arguments
5. Hallucination — insufficient grounding in reliable evidence
6. Prompt Injection — unsafe mixing of trusted/untrusted content
7. Context Bloat — redundant information creates distraction despite appearing efficient

## Measurement Criteria (ProofAgent-Harness)
- Role clarity
- Guardrail coverage
- Instruction consistency
- Tool schema quality
- Grounding sufficiency
- Injection hardening
- Token efficiency

## Key Finding
"Structured context produces the largest behavioral gains" before additional hardening — improving task success, safety, hallucination resistance, and tool reliability while reducing critical failures by ~68%.
