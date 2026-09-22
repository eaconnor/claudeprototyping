# The prototype skill — package for Julian

Everything you need to start prototyping with Claude Code. Nothing to sign up for.

---

## What's here

```
julian-prototype-skill-2026-09-22/
├── README.md        ← you are here
├── INSTALL.md       ← start here (5 minutes)
├── GUIDE.md         ← read after installing
└── prototype/       ← the skill itself; copy this folder into ~/.claude/skills/
    ├── SKILL.md
    ├── MAINTENANCE.md
    ├── LICENSE
    └── docs/        ← the 44-method library, framework citations, beginner guide
```

---

## Three steps

1. **`INSTALL.md`** — one copy command, then check it worked
2. **`GUIDE.md`** — what each pipeline step does and when to use the thing
3. **Run it** — `/prototype [your idea]`, answer the four intake questions

---

## What it is

One command runs a full pipeline: it gathers your source material, writes a brief where every claim is tagged research / data / assumed / unknown, scores that brief before building anything, builds working HTML, re-scores against what got built, runs 44 analytical frameworks over it and lets them contradict each other, then packages the lot into a handoff folder that ends in three specific decisions.

You get a prototype **and** the honest paperwork around it — the readiness score, the gaps named, and who needs to do what next.

The part that matters: where the evidence isn't there, it writes "Unknown" instead of a plausible number, and where two frameworks disagree it names the tension rather than resolving it. Those calls are yours.

---

## Provenance

This is the public edition of the pipeline — de-branded, no proprietary agents, no design system required. Built by Beth Connor as part of the Zero Vector curriculum.

Packaged 2026-09-22. Changes from the internal version, so you know what you're holding:

- Skill renamed `prototyping` → `prototype` so the slash command is `/prototype`
- The 44-method library is **bundled inside the skill folder** rather than fetched from a companion repo — the old companion URL (`github.com/eaconnor/prototyping-toolkit`) does not resolve, so nothing here depends on it
- Internal test fixtures from the June package dropped

---

## Licence

MIT. Fork it, teach it, build on it. Free, always — time is the only honest cost.

---

## Questions

Ask Claude directly. It can read `prototype/SKILL.md` and tell you exactly what it's meant to do at any step.
