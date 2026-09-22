# Installing the prototype skill

**For:** Julian
**Time:** ~5 minutes

---

## What you're getting

The `/prototype` skill — a prototyping pipeline that turns an idea into a working HTML prototype, plus the honest paperwork around it: a brief where every claim is tagged as research, data, assumption or unknown; a readiness score; and a handoff packet someone can pick up cold.

It runs entirely on your machine. No accounts, no server, no other tools.

---

## Prerequisites

1. **Claude Code installed** — [claude.ai/code](https://claude.ai/code). CLI, desktop app, web, or IDE extension.
2. That's it. The method library ships inside the skill folder, so there's nothing else to download.

---

## Install (one move)

Copy the `prototype` folder from this package into your personal skills folder:

```bash
mkdir -p ~/.claude/skills && cp -R prototype ~/.claude/skills/
```

That's the whole install. A skill is just a folder with a `SKILL.md` in it — putting it in `~/.claude/skills/` makes it available in every project you open.

**If you'd rather it only work in one project,** copy it to `<your-project>/.claude/skills/` instead.

---

## Check it worked

```bash
ls ~/.claude/skills/prototype/SKILL.md
```

Then open Claude Code and type `/prototype`. It should ask you four intake questions — fidelity, audience, sources, council depth — before it builds anything. If it does, you're ready.

If `/prototype` doesn't appear in the slash-command list, restart Claude Code so it re-reads the skills folder.

---

## Your first run

```
/prototype a dashboard showing security alerts for the last 7 days
```

Answer the four intake questions. Lo-fi is the right answer for a first run — it takes minutes instead of an hour, and it's the correct fidelity for almost every concept.

You'll get back:
- A working HTML file you open in a browser
- A brief where every claim is tagged `[R]` research · `[D]` data · `[A]` assumed · `[?]` unknown
- Two review passes with scores, before and after the build
- A handoff folder ending in three specific decisions someone needs to make

---

## If something breaks

**`/prototype` not listed** — restart Claude Code. If it's still missing, check the folder is `~/.claude/skills/prototype/SKILL.md` exactly, not nested one level deeper.

**Council step can't find the method library** — check `~/.claude/skills/prototype/docs/methods-library-matrix.md` exists. If the `docs` folder didn't come across, re-copy the whole `prototype` folder.

**Anything else** — tell Claude what happened and ask it to diagnose. It can read the skill file and tell you what it expected.

---

## What's next

Read `GUIDE.md` in this package for what each step actually does and when to use the thing.

`prototype/docs/BEGINNER-GUIDE.md` is the longer plain-language walkthrough if you want it.
