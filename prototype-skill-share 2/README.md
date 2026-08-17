# `/prototype` — Strategic Prototyping Protocol

A Claude Code skill for **design thinking, not grading** — a fast way to get an early idea or spec out of your head, turn it into a **working HTML prototype**, kick the tires on it, and iterate. Each pass also hands you a **design-review packet** and a readiness signal for where to push next.

> **Version dated:** 2026-06-26 · Generic build — safe to fork and customize.
> **What it is:** the core Strategic Prototyping Protocol workflow, packaged for drop-in use in any Claude Code project.

---

## What it does

Type `/prototype` and Claude runs a fixed seven-step pipeline. No steps drop, even if you say "just build it":

```
scout  →  spec  →  critic  →  build  →  critic  →  council  →  handoff
(sources) (brief) (pre-score) (HTML)  (re-score) (44 voices) (packet)
```

You get back:

- **A working HTML prototype** — single-page (lo-fi) or clickable multi-page (hi-fi), rendered in the **host product's design language** (Apex / Apex Bridge / Adlumin) so it reads as real, not as a generic mockup.
- **A readiness signal** — is this ready to build, or still a concept worth pushing on? A read on your next iteration, not a verdict. (3-tier fidelity model.)
- **A "review rail"** — a right-side panel naming what you nailed, what will hurt you, and routed cards for Product · Design · Research · Eng.
- **A 44-voice expert council** — analytical traditions (Jobs-to-Be-Done, Self-Determination Theory, Service Blueprint, etc.) read the same idea and surface where they *disagree*. Those disagreements are your design risks. The tool routes them to a human; it never resolves them.
- **A handoff packet** — a folder another person (or another Claude session) can open cold and pick up.

It is a **cooperation tool, not an automation tool.** It creates evidence and routes it to the right human. It does not make the decision.

---

## What's in this package

```
prototype-skill-share/
├── README.md                     ← you are here (what + why + quick install)
├── INSTALL.md                    ← step-by-step install + troubleshooting
├── CLAUDE.md                     ← Strategic Prototyping Protocol instructions (recommended)
├── .claude/
│   ├── skills/
│   │   └── prototype/            ← the skill itself
│   │       ├── SKILL.md          ← the full 7-step pipeline (the brain)
│   │       ├── README.md         ← deeper skill documentation
│   │       ├── references/       ← ownership-attribution guidance
│   │       └── test-cases-example.json
│   └── agents/                   ← 7 pipeline agents (REQUIRED) + 4 optional modes
│       ├── scout.md  spec.md  build.md  critic.md  council.md   ← pipeline
│       ├── bradley.md  proctor.md                               ← pipeline
│       └── reflect.md  refine.md  scribe.md  tech.md            ← optional modes
└── briefs/
    └── methods-library-matrix.md ← the 44-method council library (REQUIRED)
```

**All three pieces are required for the skill to actually run:**
1. `.claude/skills/prototype/` — the skill
2. `.claude/agents/` — the subagents it spawns (scout, spec, build, critic, council, bradley, proctor)
3. `briefs/methods-library-matrix.md` — the council's 44 voices

Skip any of them and you'll get "agent not found" or "methods library not found." `CLAUDE.md` is strongly recommended — it carries the design system, confidence-tag rules, and the governing constraints the agents assume.

---

> **Why this is a zip and not a `.skill` file:** a `.skill` file packages *only* the skill folder. This skill spawns 7 subagents and reads a 44-voice council library that live **outside** that folder. Install the `.skill` alone and it fails on the first run with "agent not found." This package carries all three required pieces together, so it installs in one pass.

## Quick install (2 minutes)

1. Download / unzip this folder.
2. Copy its contents into your Claude Code **project root**, merging the `.claude/` and `briefs/` folders:
   ```bash
   cp -r prototype-skill-share/.claude   /path/to/your-project/
   cp -r prototype-skill-share/briefs    /path/to/your-project/
   cp     prototype-skill-share/CLAUDE.md /path/to/your-project/   # recommended
   ```
3. Open the project in Claude Code and type `/prototype`.

Full steps, verification, and troubleshooting are in **[INSTALL.md](INSTALL.md)**.

---

## First run

```
/prototype My Concept Name
```

The skill asks two quick intake questions before it builds:

1. **Lo-fi or hi-fi?** → say **lo-fi** (the default; right for most concepts). Say hi-fi only when you're walking a stakeholder through a click-path or replacing a vendor demo.
2. **Source material?** → paste Confluence/Jira links or file paths, or say **"no sources — exploratory."**

Then it runs the full pipeline. Lo-fi takes a few minutes; hi-fi is 3–5× the time and token cost.

---

## A few principles worth knowing

- **The council surfaces clashes, it doesn't settle them.** When two traditions contradict (e.g. "reduce the user's effort" vs. "preserve the user's sense of competence"), that clash *is* the design decision. A human resolves it. The synthesis line in the council summary is always left blank — `[0% Claude — fill this in]`.
- **Ownership attribution is built in.** Components that involve judgment carry an `X%` human-authorship mark (100% = you wrote it, 0% = accepted verbatim). This makes "legitimate assistance" visible and distinct from substitution.
- **The verify-every-stat rule.** Every ratio or stat in a handoff is grep-verified before it ships. Fluency does not know its own math.
- **Honest unknowns.** Where there's no data, the tool writes `[?]` and names the gap instead of inventing a number. A named unknown becomes the next research brief.

---

## Requirements

- **Claude Code** (desktop, CLI, or web), opened on a **project folder** (not a single file).
- For pulling live sources from Confluence/Jira: the **Atlassian MCP server** connected. Without it, the skill still works fully in "no sources / exploratory" mode or with local files.

---

*Strategic Prototyping Protocol — The human owns the decisions. This tool works for you, not the vendor.*
