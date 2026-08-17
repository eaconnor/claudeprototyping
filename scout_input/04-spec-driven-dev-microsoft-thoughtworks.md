# Source: Spec-Driven Development — Microsoft + Thoughtworks
SOURCE_URL_1: https://developer.microsoft.com/blog/spec-driven-development-ai-native-engineering/
SOURCE_URL_2: https://www.thoughtworks.com/en-us/insights/blog/agile-engineering-practices/spec-driven-development-unpacking-2025-new-engineering-practices
TYPE: Vendor practitioner writing
CS_BASE: HIGH for framework descriptions; MEDIUM for causal claims

## Core Definition (Thoughtworks via Liu Shangqi)
"A development paradigm that uses well-crafted software requirement specifications as prompts, aided by AI coding agents, to generate executable code."

## GitHub Spec Kit — Seven-Phase Lifecycle (Microsoft)
1. Constitution — establish principles and guardrails
2. Specify — capture requirements and acceptance criteria
3. Clarify — resolve ambiguities and edge cases
4. Plan — define architecture and constraints
5. Tasks — create implementation-ready units
6. Implement — generate code/tests via AI
7. Validate — verify alignment with specifications

## Key Claims (Microsoft)
- Traditional prompt-first workflows → "architectural drift, code drift, inconsistent implementations"
- "Spec quality = output quality"
- Good specs capture: intent and business context · constraints and guardrails · acceptance criteria · edge cases and scenarios

## Key Claims (Thoughtworks)
- Planning phase: AI generates Markdown spec requiring human review
- Implementation phase: finalized spec passed to coding agent
- Effective specs use domain-oriented language emphasizing business intent over technical implementation
- Given/When/Then scenario formats reduce ambiguity
- "Spec drift and hallucination are inherently difficult to avoid"

## Ecosystem (2025)
GitHub Spec Kit (Sept 2025), AWS Kiro (July 2025), BMAD-METHOD
