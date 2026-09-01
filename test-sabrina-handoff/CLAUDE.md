# CLAUDE.md — Orientation for this session

**Recipient:** Adlumin PMs and team members  
**Package:** Band Protocol Prototyping Skill — `/prototype`  
**Date:** 2026-06-03  
**Status:** v1 — live and usable

---

## What this is

This is the handoff packet for the `/prototype` skill — a tool built for Adlumin PMs (and anyone who needs to prototype quickly) that runs a structured pipeline inside Claude and produces working HTML prototypes with expert analysis baked in.

It was built over a series of sessions, stress-tested against real Adlumin product concepts, and is now ready for the broader team to use.

## What to know before you start

1. **You drive it.** The skill is a cooperation tool — it surfaces evidence, scores readiness, and routes decisions. It does not make decisions. You do.

2. **The synthesis slot is always yours.** Every prototype ships with a council summary block that says `[0% Claude — fill this in]`. That blank is intentional. The 3-sentence read of what the council found is the PM's call, not the tool's.

3. **Start with lo-fi.** Unless you're walking a stakeholder through a click-path or replacing a vendor demo, lo-fi (single page, real copy, expert council, readiness score) is the right default. It's faster and more honest about what you know.

4. **The pipeline is always full.** Even if you say "just build it," the tool runs scout → spec → critic → build → critic → council → handoff. Steps don't drop. This is by design — the critic and council are where the value is.

5. **Apex Bridge is the delivery vehicle.** All prototypes use the Adlumin/Apex design token set. Light · dark · system mode toggle included. No one-off colors.

## Files in this packet

See `README.md` for reading order.

## How to get started

Open a new Claude session (claude.ai, Projects recommended) and say:

> "Prototype [your concept]. Lo-fi, internal audience."

The skill will ask four intake questions, then run the pipeline.
