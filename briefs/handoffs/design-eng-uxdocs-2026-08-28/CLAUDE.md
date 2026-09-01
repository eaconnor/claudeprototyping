# CLAUDE.md — orientation for a Claude session opening this packet

You've been dropped into a handoff of the **context.md / design.md** doc system. Read this, then read the doc the user points you at — and follow **that doc's own AGENT GATE**, which overrides your defaults.

## The two artifacts

- **context.md** (= ux.md) — *what must be true*: problem · who · gates (Gate 1 understand / Gate 2 right-thing / Gate 3 thing-right) · open items · success criteria (Musts + built-in tests). Band-native: evidence tags, gates, an AGENT GATE.
- **design.md** — *the thing that makes it true*: a Google-style design doc. Its §6 answers to context.md's Musts one-for-one — **design's acceptance criteria are context's success criteria.**

Pipeline: `research → context.md → design.md → build`.

## Rules you inherit (short form — the full set is each doc's AGENT GATE)

1. **Confirm you read the doc in full** before generating against it.
2. **Don't invent grounding.** Every factual claim carries a `[CS:]` tag; if you add a claim, it's `[A]` until sourced. "Unknown" is a complete answer — don't fill a gap with a fluent guess.
3. **Don't resolve open decisions or `[?]`.** Surface them; route to the owner named in the row. A blocked decision blocks what depends on it.
4. **Judgment slots stay human.** `‹0% AI — human fills this›` is never AI-filled.
5. **Verify any ratio/count before quoting it** (grep the source; fluency doesn't know its own math).
6. **To scaffold a new doc:** copy `templates/TEMPLATE.ux.md` (context) or `templates/TEMPLATE.design.md`, read `templates/GUIDE.md`, and pick a `work_type`.

## What to do

- **Design/eng testing the docs:** answer questions from the doc, flag gaps, help scaffold a new context.md or design.md from the templates. Don't overwrite the research; add/flag.
- **Producing a design.md:** read the linked context.md first; fill §6 by answering each Must; put trade-offs/`[?]` back into context's Open-items loop.

## Caveats

- **These are copies.** The live, link-resolving versions are in the repo (`briefs/context/`) — a footnote's `../scout_input/…` path only resolves there. Provenance for this packet is `SOURCES.md`.
- **Anonymized (internal packet).** Participant content is anonymized; source *file paths* still carry names — don't propagate them into anything external.
