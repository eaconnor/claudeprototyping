# EXAMPLE — Turnips for Halloween

> **Moved here 2026-09-22**, from the repo root. This is the record of a kickoff that
> actually ran; it is not the template. The *authored* worked example, with filled files
> and live evidence ceilings, is `../alert-digest/`. Read that one to learn the mechanics;
> read this one to see what running the kickoff for real exposed about the toolkit.

A worked example, not a real product. Used to dry-run this toolkit end-to-end:
`project.conf` filled, `/ux-kickoff` run for real (Step 0 → 0b → 0c → 1-4 → 5),
`check-roster.sh` exiting 0, and the full check suite run against the result.

**Start here:** [`TURNIPS-INTENT-SPEC.md`](TURNIPS-INTENT-SPEC.md) — its frontmatter
(roster, owners, escalation, evidence basis) is filled from the actual kickoff
Q&A. Its §0-§20 body content is untouched template — that part was never this
kickoff's job, so it stays as placeholders.

## What the run found, not just what it produced

Testing this on a real (if fictional) solo project surfaced three genuine gaps in
the toolkit itself, not in Turnips's own content:

- **`TOOLKIT-OPEN.md` H-06** (open) — `check-tier.py` routes every T1 criterion to "one
  peer who is not the author." Mechanically impossible for a team of one. No
  policy decided yet for what a solo founder does instead.
- **`TOOLKIT-OPEN.md` H-07** (resolved) — Research had no owned section anywhere in the
  20-section Intent Spec body, despite being one of the kickoff's four RACI
  disciplines. Fixed in `templates/UX-INTENT-SPEC.template.md` itself, so every
  future project inherits it, not just this one.
- **`TOOLKIT-OPEN.md` H-08** (resolved) — `/ux-kickoff` used to create the Intent Spec
  copy only at the old Step 4, last. Any answer written to `project.conf` during
  Steps 1-3 had nowhere to land until then. Fixed: new **Step 0c** creates the
  file immediately after Step 0b, before any RACI question is asked.

That's the value of running this on something, even something fictional: H-06,
H-07 and H-08 were invisible until a real kickoff conversation hit them.

## Also changed this session

- `/ux-kickoff` is now symlinked into `~/.claude/skills/ux-kickoff`, so it's
  discoverable from any Claude Code session, not just one with `cwd` inside this
  repo. A new **Step -1** in the skill checks the toolkit is actually present
  before asking anything, rather than failing confusingly on a missing script.
- Held, not built: a separate "retrofit wizard" for adding this toolkit to a
  project that already has a shipped build. Different problem from discovery —
  see `check-never.sh`'s own RD-2 (a gate authored after the artifact it grades
  grades the artifact on its own terms) before attempting it. RD-2's text there
  cites "Recorded as OPEN.md A-03," but no A-03 row currently exists in
  `OPEN.md` — a discrepancy worth checking, not verified here.
