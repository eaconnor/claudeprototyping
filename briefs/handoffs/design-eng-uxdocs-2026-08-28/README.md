# Handoff — the context.md / design.md doc system, for design + eng to play with & test

**Date:** 2026-08-28 · **From:** Beth Connor · **For:** design + eng

## What this is

A two-artifact system for turning research into something you build from, with the honesty apparatus around it. Two docs, one job each:

- **context.md** (a.k.a. ux.md — same file) — *what must be true*: the problem, who it's for, the gates, and the success criteria (Musts + built-in tests). Design and eng build **from** it.
- **design.md** — *the thing that makes it true*: a Google-style design doc (Goals/Non-Goals, the design, alternatives considered) whose acceptance criteria **are** context.md's Musts. Eng builds **it**; it's checked **against** context.

Plus a **template** for each so you can make your own, a **GUIDE**, and a **CONTRIBUTE** front door for non-researchers (marketing, Head Nerds) to feed insight in.

## How to play with it & test it — three ways

1. **Read** — open [`rendered/index.html`](rendered/index.html) in a browser. The whole set, rendered, cross-linked, no setup. Start with the **QBR/EBR context** doc (the worked example) and the two **templates**.
2. **Scaffold your own** — copy `templates/TEMPLATE.ux.md` (context) or `templates/TEMPLATE.design.md` (design), read `templates/GUIDE.md`, and fill it for a feature you know. Pick a `work_type` (new-product / new-feature / bug-fix / rebuild) — it decides which sections you fill.
3. **Drop it into a Claude session** — open this folder in Claude Code and see the **AGENT GATE** work: the doc tells the agent to confirm it read the file, flag `[A]`/`[?]` claims, not resolve open decisions, and verify counts before quoting. That's the "does it actually govern an AI" test. (See `CLAUDE.md` here.)

**What we want you to test:** does design open the context doc and immediately see *who + what "good" looks like*? Does eng open it and immediately see *testable Musts + open gates*? Can you build a design.md from it without re-deriving the research? Tell us where it breaks.

## Reading order

1. `rendered/qbr-ebr.ux.html` — the worked context doc (QBR/EBR). Skim §1 (who), §5 (open gates), §6 (Musts + tests). Frameworks are in Appendix A.
2. `rendered/TEMPLATE.ux.html` + `rendered/TEMPLATE.design.html` — the two templates.
3. `rendered/GUIDE.html` — how to pick work-type/posture, main↔mini, the Gate rubric, the two-artifact model.
4. `SOURCES.md` — provenance: where every claim traces.

## Honest notes

- **Anonymization:** participant *content* is anonymized (the delivery lead · the MSP owner · Stef H. · Joe L. · Lewis P.; a UK MSP). This is an **internal** packet. Source **file paths** still carry names (e.g. `scout_input/stefanie-hammond-…`) — fine internally; **rename those before any external share**.
- **Copies vs. live:** the `docs/` here are **copies for reading/testing**. The **live, link-resolving** versions are in the repo at `briefs/context/`. A footnote's `../scout_input/…` link only resolves there — that's why `SOURCES.md` is the provenance surface in this packet.
- **Where it should ultimately live:** for eng's links to resolve against the spec + code, the context doc belongs in the spec repo (`acp-core/specs/_ux/`, next to FSN-83143). This packet is the review copy; that's the home.
