# Source: Markdown design systems vs JSON tokens — which AI agents prefer
SOURCE_URL: https://opendesigner.io/blog/markdown-design-systems-vs-json-design-tokens-2026
AUTHOR: Open Design (vendor interest in DESIGN.md format)
DATE: 2026
TYPE: Practitioner blog + comparative test — [WOBBLY: small n, author has product interest]
CS_BASE: MEDIUM — small test, subjective assessment, vendor interest

## Two Formats Compared
1. W3C Design Tokens (JSON) — machine-readable, exact values, type definitions, alias resolution, optimized for tooling pipelines
2. DESIGN.md (Markdown + YAML) — tokens in YAML, rationale in Markdown prose, same file, one parse

## Three Advantages of Markdown over JSON
1. Rationale preservation — prose explains why, not just what
2. Scope rules — describes where tokens apply and don't apply
3. Ambiguity resolution — addresses edge cases where rules conflict

## Three Advantages JSON Retains
1. Cleaner tooling pipelines for multi-platform compilation
2. Simpler git diffs for code review
3. Better support for multilingual token names

## Test Results (Claude Opus 4.7)
- JSON only: "agent produced layouts that used the tokens correctly but didn't seem to understand why"
- DESIGN.md: "output visibly closer to brand intent... felt designed"
- 8 of 10 audited runs: agents missed scope rules, contrast intent, ambiguity resolution when working from JSON alone

## Central Thesis
"When the tool is a model that responds to language, the medium that carries language alongside structure wins."
