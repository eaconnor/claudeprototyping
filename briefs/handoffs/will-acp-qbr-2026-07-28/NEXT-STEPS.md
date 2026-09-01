# NEXT-STEPS

## Decisions only a human can make (see HANDOFF.md for full detail)

1. Which ACP problem-statement altitude — reframe / tactical / neither yet.
2. Positioning — delivery-lead (user) or owner (buyer).
3. MVP spine — Env Health assembly, or sever the service-desk dependency first.

Plus two gating research questions, not decisions but blockers:
- **Q1** — data-egress legality (days, a legal/DPA read + one competitor ToS check). Gates the
  entire cross-vendor branch of the offering.
- **Q2** — has the operator, not the buyer, ever been directly studied. Gates the actual
  interaction design.

## Pipeline re-run plan

- **Task #2 (coded research spreadsheet)** and **task #3 (council + prototype pass, divergent
  QBR/EBR options)** are in progress as of this packet's date, scoped to the QBR/EBR corpus
  specifically. Check `/workflows` or the session task list for current status.
- **Idea Chess should NOT be fully re-run yet.** The two gating tests (Q1, Q2) are unchanged by
  anything found since the 2026-07-20 pass — a full adversarial re-run would mostly re-derive the
  same numbers with cosmetic shifts. Re-run once Q1 or Q2 actually resolves.
- **The `refresh-datadump` skill now tracks this packet's source files for drift** — `context.md`
  files are wired into the same re-hash loop as specs (see `.claude/skills/refresh-datadump/SKILL.md`,
  step 3). If a source moves, the next sweep will flag it.
- **Once task #3 produces working prototypes,** critic passes 1 and 2 should be added to this
  folder (or a successor) — they don't exist yet and this packet says so rather than implying
  otherwise.

## Still blocked, not part of this packet's scope
- Pulling Will's own Figma project work — blocked on either a Claude-in-Chrome connection or
  individual file/board URLs (a project-listing URL can't be resolved by current tooling).
- The PICNIC-style experience-map template Beth asked to replicate — not yet built.
