# Installing the `/prototype` skill

This package is **self-contained** — everything the pipeline needs is inside it. Installation is one copy step because the folder already mirrors the structure Claude Code expects.

---

## What you need first

- **Claude Code** — desktop app, CLI, or web (claude.ai/code).
- A **project folder** to install into. Any directory works; the skill writes its output into subfolders there.
- *(Optional)* The **Atlassian MCP server** connected, if you want the pipeline to pull live source docs from Confluence or Jira. Not required — the skill runs fully in exploratory mode or from local files without it.

---

## Step 1 — Pick (or make) a project folder

```bash
mkdir -p ~/Documents/my-design-work
cd ~/Documents/my-design-work
```

## Step 2 — Copy the package contents in

From wherever you unzipped this folder, merge its three pieces into your project root:

```bash
# from inside the unzipped prototype-skill-share/ folder:
cp -r .claude   ~/Documents/my-design-work/
cp -r briefs    ~/Documents/my-design-work/
cp    CLAUDE.md ~/Documents/my-design-work/      # recommended, not strictly required
```

Your project should now contain:

```
~/Documents/my-design-work/
├── CLAUDE.md
├── .claude/
│   ├── skills/prototype/SKILL.md   (+ README.md, references/, test-cases)
│   └── agents/                     (11 .md files)
└── briefs/
    └── methods-library-matrix.md
```

> **If you already have a `.claude/` or `briefs/` folder**, merge rather than overwrite — copy `skills/prototype/`, the agent `.md` files, and `methods-library-matrix.md` in alongside what's there. Watch for filename collisions on the agents (`scout.md`, `spec.md`, etc.).

## Step 3 — Create the output folders (optional but tidy)

The skill writes here as it runs; it will create them if missing, but making them up front keeps the first run clean:

```bash
mkdir -p ~/Documents/my-design-work/prototypes
mkdir -p ~/Documents/my-design-work/scout_input
```

## Step 4 — Open the project in Claude Code

- **Desktop:** File → Open Folder → select your project folder.
- **CLI:** `cd ~/Documents/my-design-work && claude`
- **Web:** use the directory picker to open the folder.

Open the **folder**, not a single file — skills and agents are only detected at the project level.

## Step 5 — Verify

Type `/prototype` in Claude Code. It should activate and begin the intake questions. If you type `/` you should also see `prototype` in the skill list.

---

## First run

```
/prototype Test Concept
```

Answer the two intake questions:

1. **Lo-fi or hi-fi?** → `lo-fi`
2. **Source material?** → `no sources — exploratory`

The pipeline runs scout → spec → critic → build → critic → council → handoff and produces:

- `briefs/test-concept.brief.md` — the three-gate brief
- `prototypes/test-concept/index.html` — the working prototype
- `briefs/handoffs/[recipient]-test-concept-[date]/` — the handoff packet

---

## Troubleshooting

### "Skill not found" / `/prototype` doesn't appear
- Confirm the path is exactly `.claude/skills/prototype/SKILL.md` (the folder is `prototype`, not `prototype-skill-share`).
- Confirm you opened the **project folder**, not a single file.
- Check: `ls .claude/skills/prototype/` — you should see `SKILL.md`.

### "Agent not found" / "subagent error"
The pipeline spawns subagents and one is missing. Confirm all of these exist:
```bash
ls .claude/agents/
# expect: scout.md spec.md build.md critic.md council.md bradley.md proctor.md
#         (plus optional modes: reflect.md refine.md scribe.md tech.md)
```
Re-copy `.claude/agents/` from the package if any are missing.

### "Methods library not found" (council step fails)
The 44-voice council reads `briefs/methods-library-matrix.md`. Confirm:
```bash
ls briefs/methods-library-matrix.md
```
Re-copy it from the package's `briefs/` folder if absent.

### Scout can't reach Confluence / Jira
That step needs the **Atlassian MCP server** connected to your Claude Code session. If it isn't, just answer the source question with **"no sources — exploratory"** or point the skill at local files — the rest of the pipeline runs unchanged.

### The build feels slow / expensive
Hi-fi prototypes are 3–5× the time and token cost of lo-fi. Default to lo-fi unless you specifically need a clickable, multi-page walkthrough.

---

## Customizing

- **Change the pipeline** → edit `.claude/skills/prototype/SKILL.md`.
- **Change an agent's behavior** → edit the relevant file in `.claude/agents/`.
- **Add / remove council voices** → edit `briefs/methods-library-matrix.md`.
- **Change the design system, color palette, or confidence-tag rules** → edit `CLAUDE.md`.

---

*Strategic Prototyping Protocol — The human owns the decisions. This tool works for you, not the vendor.*
