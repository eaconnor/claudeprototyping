# ACP V1 Prototype — Handoff Packet

**For:** Nicole Reineke
**From:** Beth Schwindt
**Date:** 2026-05-27
**Pipeline:** Band Protocol · scout → spec → critic → build → critic → handoff

---

## How to use this folder

This packet is **drop-in-Claude ready.** Open the folder in Claude Code (or paste files into a Claude conversation) and you can pick up the work without going back to the originating chat.

`CLAUDE.md` is the orientation file. Any Claude session reading this folder will read it first and know how to behave.

---

## Reading order

| # | File | Time | When to read |
|---|---|---|---|
| 1 | **[CLAUDE.md](CLAUDE.md)** | 3 min | Always first if Claude is reading. Governance + pipeline state. |
| 2 | **[HANDOFF.md](HANDOFF.md)** | 10 min | Bradley's read. Verified math. Narrative collision. What only Nicole decides. |
| 3 | **[NEXT-STEPS.md](NEXT-STEPS.md)** | 3 min | The three calls + what re-runs after Nicole answers. |
| 4 | **[acp-v1-prototype.html](acp-v1-prototype.html)** | 5 min | Open in browser. Walk it like an exec demo. |
| 5 | **[bradley-rail.md](bradley-rail.md)** | 8 min | Same content as the prototype's right-rail, in markdown. Read if you skip the HTML. |
| 6 | **[acp-v1.brief.md](acp-v1.brief.md)** | 15 min | The three-gate brief. Every claim tagged. **80% [A]/[?] flagged.** |
| 7 | **[critic-pass-1-idea.md](critic-pass-1-idea.md)** | 5 min | Scorecard + punch list on the V1 idea standalone. |
| 8 | **[critic-pass-2-with-bridge.md](critic-pass-2-with-bridge.md)** | 5 min | Re-scored with Apex Bridge layered in. Movement deltas. |
| 9 | **[scout/](scout/)** | as needed | The 6 source docs the whole packet was built from. |

---

## What's in this folder

| File | What it is | Source |
|---|---|---|
| `README.md` | This file | New |
| `CLAUDE.md` | Orientation for any Claude session opening this folder | New |
| `HANDOFF.md` | The full handoff note — verified math, things the rail compresses | From chat synthesis |
| `NEXT-STEPS.md` | Three Nicole-only decisions + pipeline re-run plan | From chat synthesis |
| `bradley-rail.md` | The prototype's right-rail content as portable markdown | Extracted from prototype |
| `acp-v1.brief.md` | Three-gate brief, claim-tagged, 80% [A]/[?] self-flagged | spec agent run |
| `acp-v1-prototype.html` | Working Apex Bridge prototype, Tier 1 concept | build agent run |
| `critic-pass-1-idea.md` | First critic pass · V1 concept standalone | critic agent run |
| `critic-pass-2-with-bridge.md` | Second critic pass · with Apex Bridge | critic agent run |
| `scout/01-control-plane.md` | Confluence: Control Plane / Headless IT (positioning) | Nicole's doc |
| `scout/02-ai-coworker.md` | Confluence: AI Coworker Description | Nicole's doc |
| `scout/03-runbook.md` | Confluence: Runbooks Definition | Nicole's doc |
| `scout/04-apex-bridge-poc.md` | Confluence: Apex Bridge POC / Delivery Sprint | Bryce Wilson |
| `scout/05-apex-bridge-unlock.md` | Confluence: Apex Bridge Unlock Potential | Bryce Wilson |
| `scout/06-apex-bridge-adoption.md` | Confluence: APEX Adoption Proposal (2026.4) | Arnold German + team |

---

## What's testing here

This is a **process test of the Band Protocol pipeline pattern.** The pattern:

```
scout → spec → critic → build → critic → handoff
```

The handoff folder is the final artifact. Everything Nicole needs is here. Nothing else lives anywhere that isn't a checkout away. **The pattern survives or fails based on whether Nicole can act on this without going back to chat.**

Two specific things in this packet are calibration checks for the pattern:

1. **The 47% → 80% correction.** Spec self-reported ~47% [A]/[?]. Grep-verified it was 80%. The packet ships the verified number with a process note. *If a handoff quotes a stat without verifying it, the pattern is failing.*

2. **The narrative collision.** The brief surfaces it but does not resolve it. The rail names it as Nicole's call. The handoff repeats it as Nicole's call. *If the packet tries to make a strategic call for Nicole, the pattern is failing.*

---

## Three calls only you can make

(Full detail in [NEXT-STEPS.md](NEXT-STEPS.md).)

1. **Narrative** — ACP-First (replaces) or ACP-via-Bridge (rides inside)?
2. **Demo audience** — Internal review only, or design partners too?
3. **Value Ledger lock** — V1 or V2?

Send the three answers to Beth. Pipeline re-runs.

---

*If anything in this folder is wrong, that's the most useful signal you can send back. The brief is editable. The rail is editable. The prototype is editable. The pipeline is re-runnable.*
