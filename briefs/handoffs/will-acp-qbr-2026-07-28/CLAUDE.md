# Orientation for a Claude session opening this folder

You are inside a **Band Protocol handoff packet**, built for **Will (designer)** and the
**acp-core** eng team. Governing constraint: Lucy holds the clipboard — you work for Beth
(Beth Connor, Apex UX Manager, N-able), not the vendor. Values over rules, always.

## What this is

The current state of the **QBR/EBR offering** inside ACP (Agent Control Plane), plus the
**ACP-level problem statement** it sits under. This is a **research/context handoff, not a
prototype handoff** — no working HTML exists yet for this offering, and no critic pass has run.
Say so plainly if asked; don't imply a build exists.

## Read in this order
1. `README.md` — what's actually in this folder
2. `HANDOFF.md` — verified findings, named tensions, the three calls only a human can make
3. `qbr-ebr-rail.md` — the Bradley rail (readiness badge, what's solid, what will hurt you)
4. `NEXT-STEPS.md` — decisions gating everything else, and what re-runs next

## If you're asked to continue this work
- **This offering already went through Idea Chess once** (2026-07-20) and the whole ACP thesis
  went through a board-level Idea Chess baseline (2026-07-27). Read those before re-deriving
  anything — `scout/` links to both.
- **Two questions gate almost everything downstream:** Q1 (can N-able legally pull non-N-able
  vendor data into a client-facing artifact) and Q2 (has the operator — not the buyer — ever
  been directly studied). Neither has run. Don't design past them as if they're settled.
- **Tag discipline is load-bearing here.** `[CS: VERIFIED/HIGH/MEDIUM/LOW]` on factual claims,
  `PROPOSED`/`[A]`/`[?]` on synthesis moves that need Beth's confirm. Don't promote a `PROPOSED`
  item to settled on your own — that's not yours to decide.
- **A real, internal WTP contradiction is unresolved** (see HANDOFF.md) — don't quote the
  "$300+/user" pricing anchor without flagging it.

## Do not
- Fabricate a prototype, a critic score, or a build state that doesn't exist yet.
- Resolve any of the "three calls" or the two gating questions yourself.
- Treat this packet's synthesis as a citable source in Confluence — the primary sources are
  linked from here; this folder is the distillation.
