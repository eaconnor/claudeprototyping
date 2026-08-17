# The Test Bed — research toolkit for AI-first product work

*A shareable kit of Claude Code agents + skills · Beth Connor, N-able UX · v2026-07-31*

## What this actually is (engineers and designers, start here)

You already trust staging environments: you don't test against production first — you test against the best available *model* of production, and you keep that model honest. This kit is the same idea for product decisions.

**The research corpus is our best representation of the natural world.** The personas (Vanessa, the alpha owner-operator) are not marketing fluff — they're compressed field evidence about how specific real people work, tagged with how much we trust each claim. The journey maps (26 service moments for the EBR) are the environment model. The evidence files (`ux.md`) are the state of the world as best we know it, with the uncertainty *labeled instead of hidden*.

Together they make **a little test environment**: before you spend a sprint building or a month recruiting research participants, you run your idea against the model. Would Vanessa read that confirm-gate as a seatbelt or a nag? Does your feature land in a production-line moment (automate it) or a brains-work moment (don't you dare template it)? The test bed answers in minutes, with citations. Then — and this matters — **the real world outranks the model.** When reality disagrees, you update the model, date the change, and the test bed gets better for the next person. Same discipline as fixing a flaky staging config.

The model is only as good as its provenance. That's what all the bracket tags are: `[CS: VERIFIED]` means we checked; `[A]` means someone guessed; `[?]` means nobody knows. A test run against `[A]`-heavy sections tells you where to be humble.

## What's inside

**Agents** (`.claude/agents/`) — spawnable specialists:
`scout` finds and files evidence (never synthesizes) · `spec` turns fragments into structured briefs · `build` produces working HTML against the design tokens (brand values verified against real Apex 2.0, 2026-07-31) · `critic` scores output against the brief, pre- and post-build · `council` reads a brief through five analytical frameworks and returns *testimony, not consensus* · `bradley` project-manages and truth-tells · `proctor` checks the process was actually followed · plus editorial/reflection roles.

**Skills** (`.claude/skills/`) — repeatable procedures:
- `prototype` — the full pipeline: evidence → brief → critique → working HTML → critique → handoff. Steps compress under pressure; they never drop. (Its own guide: `PROTOTYPE-SKILL-README.md`.)
- `refresh-datadump` — the weekly evidence-refresh ritual, with a human Accept/Edit/Reject gate. Nothing writes itself into truth.
- `abductive-tag` — the dual-tag pass: the human interprets first, the machine classifies second, and divergence between them is the finding.
- `journey-map` — builds the environment model (ships to FigJam/Figma).
- `vision` — reviews a whole research body from first principles into candidate offerings.
- `handoff` — produces a paste-ready block so the next session (or the next person) starts with full context.

**`shift-left-playbook.md`** — the why and the how of the whole method: the loop on one screen, the nine epistemics rules, what stays human no matter what, a day-one quick start, and the failure modes we already paid for so you don't have to.

## Install

Drop the `.claude/` folder into any repo where you run Claude Code (or merge it into an existing one). Read `shift-left-playbook.md` first — ten minutes. Then try one thing: point `scout` at a question you actually have.

## The rules that keep the test bed honest

1. Every factual claim carries a trust tag. Untagged = suspect.
2. Statistics get checked against their source before anyone quotes them (the 47% rule).
3. Two agreeing sources count once if one learned it from the other (the echo check).
4. Dead numbers get marked ☠ in place, never silently deleted.
5. Prototype data is fictional. Always. If you wouldn't want it public, it doesn't go in.
6. Lines marked `[0% Claude — fill this in]` are human judgment slots. The machine never fills them. If nobody fills them, the work stalls safely instead of inventing a strategy.
7. The real world outranks the model. Update the model when they disagree — and date it.

## Live example

The QBR/EBR research spine (`briefs/context/qbr-ebr.ux.md` in the source repo, registered on the ACP Research Datadump page in Confluence) is the working reference: a complete test environment for one product bet — cast, journey, craft rules, adversarial scores, open gates — built with exactly this kit in July 2026.

*Fork it. Run your own council. Build your own test bed. The left is open.*
