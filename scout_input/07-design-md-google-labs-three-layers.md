# Source: AGENTS.md, SKILL.md, DESIGN.md — Three-Layer Framework
SOURCE_URL: https://dev.to/aws-builders/agentsmd-skillmd-designmd-how-ai-instructions-split-into-three-layers-d0g
AUTHOR: AWS Builders (DEV Community)
TYPE: Practitioner/vendor writing
CS_BASE: HIGH for framework; MEDIUM for normative claims

## Three-Layer Taxonomy
| Layer | File | Purpose | Structure |
|-------|------|---------|-----------|
| Behavior | AGENTS.md / CLAUDE.md | Roles, prohibitions, context | Human-readable Markdown; "over-structuring blocks contextual judgment" |
| Task | SKILL.md | Reusable procedures | YAML metadata header + Markdown task procedures |
| Appearance | DESIGN.md | Design system spec | Machine-readable YAML tokens + human-readable Markdown intent |

## Key Principle
"Not everything becomes a spec" — tone and cultural nuance remain in natural language; appearance specs demand formal verification.

## DESIGN.md Details (Google Labs, April 23, 2026)
- Format: YAML tokens at top, Markdown design intent below
- CLI validator: `npx @google/design.md lint`
- Checks: token reference integrity, WCAG contrast ratios, structural rule compliance

## AGENTS.md
- Industry standard since 2025
- Jointly developed: OpenAI, Google, Sourcegraph, Cursor, Factory
- Donated to Linux Foundation: December 2025

## Figma Stat (context)
Teams using semantic token names: 43% better AI-generated code accuracy [WOBBLY — cited without methodology]
