# Source: Codified Context — Infrastructure for AI Agents in a Complex Codebase
SOURCE_URL: https://arxiv.org/html/2602.20478v1
DATE: February 2026
TYPE: arXiv preprint (single practitioner study)
CS_BASE: MEDIUM — single practitioner, 108k-line C# system

## Core Problem
LLM-based coding assistants lose coherence across sessions and forget project conventions.

## Three-Tier Architecture
- Tier 1 (Hot Memory): ~660-line constitution file loaded into every session — code quality standards, naming conventions, build commands, architectural summaries, trigger tables
- Tier 2 (Specialists): 19 domain-expert agent specifications (~9,300 lines total) — "over half of each specification's content is project-domain knowledge rather than behavioral instructions"
- Tier 3 (Cold Memory): 34-document knowledge base (~16,250 lines) retrieved on-demand via MCP

## Key Findings
- 283 development sessions; 2,801 human prompts; 16,522 autonomous agent turns
- Save system specification (74 sessions): zero persistence-related bugs
- Context infrastructure = 24.2% of codebase size
- Staleness was the primary failure mode
- Specification updates averaged 1–2 hours weekly

## Key Claim
Single-file manifests (CLAUDE.md, .cursorrules) don't scale for large projects. Trigger tables route work to specialists without manual invocation.
