---
source: "Rosenverse / Rosenfeld Media — 'Designing with AI 2026' conference, panel 'From Tools to Staff: What the Next Generation of Agents Means for the Future of Design,' 2026-06-10"
panelists: "Christian Crumlish, Erica Flowers, Benjamin Jackson — moderated by Adekunle Oduye"
type: "distilled wisdom, not a transcript — see copyright note below"
applied_to: "harness-ebr-v2 brief, Ask → Learn → Automate mechanic"
---

# Panel Wisdom — Agents & the Future of Design (2026-06-10)

**Copyright note:** This file is a synthesis in my own words, not a reproduction of the panel transcript Beth pasted into chat. Per standing copyright constraints, no more than one short attributed quote appears below, and this summary is substantially shorter than and different in structure from the source.

## Principles worth carrying into this project

**1. Own your own context — don't let memory live in a vendor's black box.**
Christian Crumlish described deliberately pulling his working context out of any single AI provider's memory system and into something he controls and versions himself (his example: a GitHub-tracked store), specifically so that losing access to one vendor doesn't mean losing the accumulated context. He framed this as wanting to "own the means of production" of his own machinery — any model can plug into it, none of them can hold it hostage.

*Relevance:* this is a direct argument for where the Harness "notebook" (the shared backend for cycle memory — Parts 8, 13, 14, 27) should live. If it's owned by Harness/N-able and versioned independently of any single connector vendor (HaloPSA, Inforcer, N-central), it survives vendor churn and stays portable. If it's just accumulated chat memory inside one AI session, it's exactly the fragile pattern Crumlish warned against.

**2. Answers should crystallize into deterministic rules, not stay soft AI memory.**
Erica Flowers distinguished the "ephemeral, non-deterministic" layer (the AI conversation) from a separate, coded, deterministic layer that content/design/engineering rules live in — the AI operates *on* that deterministic layer rather than being the storage for it. The point: once a human has answered a question, the answer should become a hard rule a machine enforces consistently, not a fact an AI has to re-derive or re-remember probabilistically each time.

*Relevance:* directly hardens the "Ask → Learn → Automate" mechanic Beth specified for this brief's SHORTs (see below) — David's answer to "where do we find last cycle's commitments?" shouldn't just get logged as a remembered fact. It should become a literal, deterministic connector/rule the system runs the same way every cycle, no re-interpretation required.

**3. Ship two artifacts: one for humans, one for agents.**
Benjamin Jackson cited a design agency now delivering brand work as two folders — one labeled for humans, one labeled for agents, the latter holding structured data (colors, tokens, assets) so any agent a client uses can act on the design system directly, without re-deriving it from a PDF.

*Relevance:* validates the existing §9b handoff packet structure (CLAUDE.md — CLAUDE.md/README.md/HANDOFF.md for humans, machine-readable briefs and structured data alongside). Worth checking the harness-ebr-v2 handoff (Session B) actually separates these cleanly rather than blending them.

**4. An agent is something that keeps working when you're not watching it.**
Benjamin Jackson's definition, offered against the more common "AI = chatbot with tools" framing: the real distinguishing trait is operating unattended, whether steered-then-released or run as a background routine you only see the output of.

*Relevance:* useful framing for Stage 1 (Always Current) and Stage 2 (Nudge) — these are the stages where Harness is meant to be doing something while nobody's watching, as opposed to Stage 3-5 which are synchronous, human-present work.

## Applied change to harness-ebr-v2 brief

See the new "Cycle Learning Mechanic" section added to `briefs/harness-ebr-v2-2026-08-13.brief.md` — the SHORT-state UI pattern for Parts 8, 13, 14, 27 is now specified as an Ask → Learn → Automate ladder, with principle #2 above (deterministic crystallization) used to define what "learn" actually means mechanically, rather than leaving it as an unspecified aspiration.
