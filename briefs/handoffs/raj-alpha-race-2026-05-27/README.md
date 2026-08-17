# Alpha RACE Customer Demo · Phase 2 — Handoff Packet

**For:** Raj Dhesi
**From:** Beth Schwindt
**Date:** 2026-05-27
**Pipeline:** Band Protocol · scout → spec [STOPPED — DRAFT at 65% [A]/[?]]

---

## How to use this folder

Drop-in-Claude-ready. Open in Claude Code and you can continue without going back to the originating chat.

`CLAUDE.md` is the orientation file. Any Claude session reading this folder reads it first.

---

## Reading order

| # | File | Time | When to read |
|---|------|------|--------------|
| 1 | **[CLAUDE.md](CLAUDE.md)** | 3 min | Always first if Claude is reading |
| 2 | **[HANDOFF.md](HANDOFF.md)** | 10 min | What Phase 2 adds. Why brief is DRAFT. What build-ready requires. |
| 3 | **[NEXT-STEPS.md](NEXT-STEPS.md)** | 3 min | Four decisions + pipeline re-run plan |
| 4 | **[alpha-race-phase2-shell.html](alpha-race-phase2-shell.html)** | 5 min | Open in browser. Phase 2 structural framework, DRAFT content. |
| 5 | **[alpha-race-rail.md](alpha-race-rail.md)** | 5 min | PM Action Dashboard as markdown — same content as shell right panel |
| 6 | **[alpha-race-customer-prototype.brief.md](alpha-race-customer-prototype.brief.md)** | 15 min | Three-gate brief. Read evidence summary first. 65% [A]/[?]. |

---

## What's in this folder

| File | What it is | Source |
|------|-----------|--------|
| `README.md` | This file | New |
| `CLAUDE.md` | Orientation for any Claude session opening this folder | New |
| `HANDOFF.md` | Full handoff — Phase 2 additions, brief status, build-ready criteria | From pipeline synthesis |
| `NEXT-STEPS.md` | Four Raj/Beth-only decisions + pipeline re-run plan | From pipeline synthesis |
| `alpha-race-rail.md` | PM Action Dashboard content as portable markdown | Extracted from Phase 2 anatomy |
| `alpha-race-customer-prototype.brief.md` | Three-gate brief, claim-tagged, 65% [A]/[?] | spec agent run |
| `alpha-race-phase2-shell.html` | Phase 2 structural shell — Tier 2 banner + lineage + PM Action Dashboard | build agent run |
| `scout/` | Source doc refs | ADL-1839 context |

---

## What's testing here

Two things:

**1. Pipeline stop behavior.** When a brief is DRAFT at >30% [A]/[?], the pipeline stops before build. This packet is the stop artifact — everything the next session needs to re-run once the four decisions are made. If the packet tries to skip over the missing decisions and build anyway, the pattern is failing.

**2. Phase 2 anatomy transfer.** Alaina's Phase 2 framework (PM Action Dashboard, Tier 2 banner, lineage strip, Review Mode) is a reusable structural pattern, not a one-off anatomy. This is the first transfer: anatomy → new prototype context. If the structural elements work without the original content, the pattern is portable.

---

## Four decisions only Raj + Beth can make

(Full detail in [NEXT-STEPS.md](NEXT-STEPS.md).)

1. **Which customer?** — who this demo is actually for
2. **Success criteria** — what the demo needs to trigger
3. **Incident story source** — real Alpha output or synthetic
4. **Narrative validation** — has "what/why/next" been tested?

Send answers to Beth. Pipeline re-runs.

---

*If anything in this folder is wrong, that's the most useful signal you can send back. The brief is editable. The shell is editable. The pipeline is re-runnable.*
