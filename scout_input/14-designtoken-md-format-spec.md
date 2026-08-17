# Source: designtoken.md — Rich Design Tokens for Coding Agents
SOURCE_URL: https://designtoken.md/
TYPE: Open format specification (vendor/community)
CS_BASE: HIGH for format description; MEDIUM for effectiveness claims

## What It Is
A structured markdown file containing machine-readable design system definitions for AI coding agents. "Everything a coding agent needs to produce consistent, on-brand UI. Substantially richer than a typical 30-line design file."

## Format Components
- Color Scales: four color roles, 50–900 scale, light/dark variants (40 total tokens)
- Typography: nine levels (size, weight, line-height, letter-spacing)
- Spacing: harmonious 4px–96px scale, 12 steps
- Radius & Elevation: border radius variants + five-level shadow scale
- Component Tokens: pre-mapped definitions for buttons, cards, inputs (states included)
- Visual Reference: human-readable descriptions for agent self-verification

150+ lines vs. ~30 for Google DESIGN.md stitch format.

## Problems Solved
1. Agent vocabulary depth — moves beyond color names to complete scales and deterministic values
2. Consistency at scale — enables agents to produce on-brand UI automatically
3. Precision over inspiration — exact hex values, pixel measurements, semantic roles
4. Zero-friction adoption — single file, agents read it from project root

## Core Claim
AI coding agents (Claude Code, Cursor, Copilot) can parse and apply these tokens reliably without repetitive prompting.
