# Prototyping Toolkit

An evidence-first prototyping pipeline for product teams using Claude Code (or any capable coding agent), plus the methods library that powers its expert council. Free and open — fork it, teach it, build on it.

## What this is

Most prototypes answer "what would this look like?" This pipeline also answers the questions that decide whether the prototype matters:

- **Is the problem real?** Every claim in the brief is tagged `[R]` researched · `[D]` data · `[A]` assumed · `[?]` unknown — and the assumption ratio is reported honestly, in three numbers, before anything is built.
- **Is the idea ready?** A pre-build and post-build critique score it on six dimensions, with a delta table.
- **Where does it break?** A council of **44 analytical methods in 14 clusters** — from Peirce's abduction to Porter's Five Forces to Kano to Wardley Mapping — reads the same brief and testifies in a fixed six-field format. Where traditions contradict each other, the contradiction is *named and routed to a human*, never resolved by the tool. The clash is the finding.
- **Can someone pick it up cold?** Every run ends in a self-contained handoff packet with verified math and three explicit decision calls.

The output is a working, self-contained HTML prototype wearing its own honesty: a fidelity banner declaring what's real, a readiness rail routing questions to Product / Design / Research / Eng, and authorship attribution on everything AI-touched.

**New to this? Start with [`docs/BEGINNER-GUIDE.md`](docs/BEGINNER-GUIDE.md)** — no design or research background assumed, walks through your first prototype end to end, and defines every term this toolkit uses.

## What's inside

```
docs/BEGINNER-GUIDE.md                ← start here if this is your first time
.claude/skills/prototyping/SKILL.md   ← the pipeline itself; drop into any repo running Claude Code
docs/methods-library-matrix.md        ← the 44 methods, 14 clusters, and the full relation matrix
docs/owen-structured-planning.md      ← where the matrix math comes from (Charles L. Owen, IIT
                                         Institute of Design) and exactly how the adapted math works
docs/frameworks-references.md         ← citation + link for every framework in the library
MAINTENANCE.md                        ← invariants, symmetry checker, how to add/retire methods
```

## Install

1. Copy the `.claude/` folder into any repo where you run Claude Code (or merge into an existing one).
2. Ask naturally: *"prototype a dashboard that shows X"* — or invoke `/prototyping` directly.
3. Answer the four intake questions (lo-fi vs. hi-fi, audience, sources, council depth). The pipeline runs from there.

Ten-minute orientation: read the SKILL.md top to bottom, then skim the matrix's cluster tables.

## The rules that keep it honest

1. The pipeline is always full — steps compress under pressure, they never drop.
2. Every factual claim carries an evidence tag. Untagged = suspect.
3. Every statistic is mechanically re-verified before it's quoted (fluency does not know its own math).
4. Unknown ROI is named, never fabricated — a named unknown is a research brief.
5. Tensions between frameworks are routed to humans, never resolved by the tool.
6. Prototype data is fictional, always. If you wouldn't want it public, it doesn't go in.
7. Synthesis slots (`[0% AI — fill this in]`) stay blank until a human fills them. If nobody does, the work stalls safely instead of inventing a strategy.
8. The tool creates evidence and routes it. Humans make the decisions.

## Lineage

The methods are all public scholarship — see `docs/frameworks-references.md` for all 44 citations. The structural spine is the IIT Institute of Design tradition (Bauhaus → Doblin → Owen → Kumar), and the matrix math adapts Charles L. Owen's Structured Planning — `docs/owen-structured-planning.md` tells that story. The toolkit was extracted from a working internal practice at a product organization and de-branded for public use; see `MAINTENANCE.md` for how to keep your fork honest.

## License

MIT — see `LICENSE`. Free, open, forkable, no knowledge gated by money.
