# NEXT-STEPS — Prototype Skill v1

**For:** Adlumin team  
**Date:** 2026-06-03

---

## What to do right now

**Run your first prototype.** Lo-fi, internal audience, any concept you've been meaning to test. The pipeline takes one session. You'll have a working prototype, a readiness score, and a council read by the end of it.

Good first prompts:
> "Prototype the [feature name] dashboard — lo-fi, internal, Fast Mode council."  
> "Mock up the [workflow] — I have a Confluence doc in space ADL."  
> "Build a lo-fi of [concept] for internal review. No source docs yet."

---

## What's open in v1

| Item | Status | What to do |
|------|--------|------------|
| Apex UI MCP package name | ⚠️ Unverified | Confirm `@n-able/apex-ui` package + server command with platform team before any build relies on live `apx-*` web components. Until verified, static Apex token block is the source of truth. |
| Hi-fi builds in one session | ⚠️ Multi-session | Hi-fi prototypes (~3,500–5,000 lines) typically require 2–3 sessions. Plan accordingly. |
| Hard Mode council cost | ⚠️ Token-heavy | Hard Mode (44 voices) is 3–5x the token cost of Fast Mode. Use Fast Mode for iteration; Hard Mode for strategic decisions. |

---

## What's next (v2 candidates)

These are not commitments — they're directions based on what v1 stress-testing surfaced.

**1. Persistent project state**  
Right now, each session re-reads the skill and re-orients. A Projects-based setup with a persistent `CLAUDE.md` in the project root would let the pipeline pick up mid-run without re-explaining itself.

**2. Confluence auto-scout**  
The skill can already pull from Confluence if you give it space keys. v2 candidate: a scout that proposes its own search queries based on the concept brief, so you don't have to know which space to point it at.

**3. Stakeholder-ready export**  
Right now, the handoff packet is Claude-droppable (optimized for re-entry into Claude). A v2 export that produces a clean Confluence page or PDF for stakeholders who aren't in Claude would close the loop.

**4. Test case library**  
A set of pre-built test cases for common Adlumin feature types (dashboards, overlays, audit flows, wizard sequences) so the first run of a new feature type has a proven prompt to start from.

---

## How to send feedback

This skill improves through use. When something breaks or surprises you, note:
- What you said to invoke it
- What you expected
- What happened instead

That's a bug report. Send it back and it goes into the next version.

What we most want to know from v1:
- Does the readiness score feel calibrated? (Too harsh / too generous / about right?)
- Do the council tensions route to the right people?
- Is the Bradley rail actually useful in your workflow, or does it feel like overhead?
- What did you have to do manually that the skill should have handled?

---

## The one thing to remember

The skill is a cooperation tool. It holds the clipboard. You make the calls.

If the council surfaces a tension and you resolve it in 30 seconds because you already know the answer — that's the skill working. It surfaced the question. You answered it. Move on.
