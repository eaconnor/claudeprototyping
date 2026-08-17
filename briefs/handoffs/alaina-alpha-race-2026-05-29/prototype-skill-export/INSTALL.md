# Installing the `/prototype` Skill — For Alaina

**What this is:** The complete Band Protocol `/prototype` skill, exported from Beth's Bethproto project so you can use it in your own Claude Code workspace.

---

## Installation (2 minutes)

### Step 1: Create your project directory (if you don't have one)

Open Terminal and run:
```bash
mkdir -p ~/Documents/alaina-design-work
cd ~/Documents/alaina-design-work
```

Or use any directory you want. This will be your Claude Code project folder.

---

### Step 2: Copy the skill files

Copy this entire `prototype-skill-export/` folder to your project's `.claude/skills/` directory:

```bash
# From wherever Beth shared this folder with you:
mkdir -p ~/Documents/alaina-design-work/.claude/skills
cp -r prototype-skill-export ~/Documents/alaina-design-work/.claude/skills/prototype
```

Your directory structure should look like:
```
~/Documents/alaina-design-work/
  .claude/
    skills/
      prototype/
        SKILL.md          (main skill file)
        README.md         (documentation)
        references/       (supporting docs)
        test-cases-nicole.json
        INSTALL.md        (this file)
```

---

### Step 3: Open your project in Claude Code

**Option A: Claude Code Desktop App**
1. Open Claude Code app
2. File → Open Folder
3. Select `~/Documents/alaina-design-work`

**Option B: Terminal**
```bash
cd ~/Documents/alaina-design-work
claude-code .
```

**Option C: Web (claude.ai/code)**
- Use the directory picker to open `~/Documents/alaina-design-work`

---

### Step 4: Verify installation

In Claude Code, type:
```
/help
```

You should see `/prototype` in the available skills list.

---

### Step 5: Create required directories

The skill expects these directories to exist in your project:
```bash
mkdir -p briefs
mkdir -p prototypes
mkdir -p scout_input
```

---

## First run

Try it with a simple concept:

```
/prototype Test Concept

lo-fi
me
no sources — exploratory
```

The skill will:
1. Generate a brief (since no sources provided)
2. Run critic pre-build
3. Build a lo-fi prototype
4. Run critic post-build
5. Run council (44 voices)
6. Create handoff packet

**Time:** ~20-30 minutes for full pipeline

**Output:** 
- `briefs/test-concept.brief.md`
- `prototypes/test-concept/index.html`
- `briefs/handoffs/[recipient]-test-concept-[date]/` (15 files)

---

## What if it doesn't work?

### "Skill not found"

**Check:**
- Is the skill in `.claude/skills/prototype/SKILL.md`? (Note: `prototype` not `prototype-skill-export`)
- Did you open the project folder (not just a single file)?

**Fix:**
```bash
# Verify the path
ls -la ~/Documents/alaina-design-work/.claude/skills/prototype/
# Should show: SKILL.md, README.md, references/, etc.
```

---

### "Agent not found" or "Subagent error"

**This means:** The skill is trying to spawn agents (scout, spec, build, critic, council, bradley) but they're not in your project.

**Fix:** Copy the agents too:
```bash
# From Beth's Bethproto directory:
cp -r /Users/elizabeth/Desktop/Bethproto/.claude/agents ~/Documents/alaina-design-work/.claude/
```

You need:
- `.claude/agents/scout.md`
- `.claude/agents/spec.md`
- `.claude/agents/build.md`
- `.claude/agents/critic.md`
- `.claude/agents/council.md`
- `.claude/agents/bradley.md`

(Beth should include these in the export package.)

---

### "Methods library not found"

**This means:** Council is trying to read `briefs/methods-library-matrix.md` but it doesn't exist.

**Fix:** Copy the methods library:
```bash
# From Beth's Bethproto directory:
cp /Users/elizabeth/Desktop/Bethproto/briefs/methods-library-matrix.md ~/Documents/alaina-design-work/briefs/
```

---

## Using the skill

Read: `HOW-TO-USE-PROTOTYPE-SKILL.md` (should be in the same folder Beth shared with you)

**Quick reference:**

### Invoke it
```
/prototype YourProjectName
```

### Intake questions
1. **Lo-fi or hi-fi?** → Say "lo-fi" (default, good for most design work)
2. **Who is this for?** → Say "me" (internal team)
3. **Source material?** → Say "no sources" (exploratory) or provide Confluence pages, Jira tickets, or file paths

### What you get
- Working HTML prototype
- Design review packet (15 files)
- Three design tensions surfaced
- Validation tests with instructions
- Critic scorecards (before/after)
- Council testimony (44 expert voices)

---

## Directory structure (after first run)

```
~/Documents/alaina-design-work/
  .claude/
    skills/
      prototype/          ← Skill files
    agents/               ← Pipeline agents (if you copied them)
  briefs/
    your-project.brief.md
    methods-library-matrix.md
    handoffs/
      recipient-project-date/  ← Handoff packets
  prototypes/
    your-project/
      index.html          ← Working prototypes
  scout_input/            ← Source material
```

---

## Tips for Alaina

1. **Start with lo-fi** — Most design questions are answerable with single-page prototypes. Save hi-fi for stakeholder demos.

2. **Read the Bradley rail first** — Every prototype has a right-side rail with design tensions, validation tests, and routing cards. That's written for you.

3. **Run validation tests yourself** — Comprehension test (5 people, 30 sec) and reading order test (cover sections) are executable by you without Research.

4. **Don't wait for content to finalize** — High [A]+[?] ratio means placeholder content is expected. Evaluate design structure, not polish.

5. **Use council cross-talk to find tradeoffs** — When two voices contradict (JOBS vs NEEDS, SIGN vs JRNY), that's a design tradeoff. You decide which user to prioritize.

---

## Need help?

Ask Beth, or ask Claude in your project:
```
How do I use the /prototype skill to test a design tension?
```

Claude can read the skill documentation and help you invoke it correctly.

---

## What's NOT included in this export

**You still need from Beth:**
- `.claude/agents/` directory (6 agent files) — **Required** for skill to work
- `briefs/methods-library-matrix.md` — **Required** for council to work
- `CLAUDE.md` (optional but recommended) — Band Protocol project instructions

Ask Beth to share these if you get "Agent not found" or "Methods library not found" errors.

---

**Band Protocol:** Lucy holds the clipboard. This tool works for you, not the vendor.

**Exported:** 2026-05-29  
**From:** Beth's Bethproto project  
**For:** Alaina