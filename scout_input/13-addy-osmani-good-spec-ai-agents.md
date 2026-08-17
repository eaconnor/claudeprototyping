# Source: How to Write a Good Spec for AI Agents
SOURCE_URL: https://addyosmani.com/blog/good-spec/
AUTHOR: Addy Osmani (Google)
TYPE: Practitioner blog (senior practitioner, Google Chrome team)
CS_BASE: HIGH for framework; MEDIUM for cited statistics (source not always named)

## Why Specs Fail
GitHub analysis of 2,500+ agent files: "Most agent files fail because they're too vague."

Key failure patterns:
- Vague directives ("Build something cool")
- Overlong contexts without summarization
- Skipping human review
- Missing the six core areas
- Ignoring the "lethal trifecta": speed, non-determinism, cost

## Six Areas Every Spec Must Cover
1. Commands — exact syntax (npm test, pytest -v)
2. Testing framework and coverage expectations
3. Project structure with explicit paths
4. Code style with real examples
5. Git workflow requirements
6. Boundaries — what to never touch

## Three-Tier Boundary System
- Always: safe default actions
- Ask first: high-impact decisions
- Never: hard stops ("Never commit secrets")

## Critical Research Finding
As instruction count increases, model adherence to each one drops significantly.
Solution: decompose complex requirements sequentially rather than simultaneously.

## Five Structural Principles
1. High-level vision first; let AI expand details
2. Structured PRD-like format with the six areas above
3. Modular prompts over monolithic ones — feed only relevant sections per task
4. Self-checks and constraints (three-tier system)
5. Test, iterate, evolve — treat spec as living document
