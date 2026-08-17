# Installing the Band Protocol Prototype Skill

**For:** Julian (and anyone new to Claude Code)
**Time:** ~5 minutes

---

## What you're getting

The Band Protocol `/prototype` skill — a complete prototyping pipeline that turns ideas into working HTML prototypes with research, specs, and routing guidance.

---

## Prerequisites

1. **Claude Code installed**
   - Get it at [claude.ai/code](https://claude.ai/code)
   - Available as CLI, desktop app, web app, or IDE extension
   - Free to use

2. **That's it.** No other dependencies.

---

## Installation (3 steps)

### Step 1: Place the skill file

Put `prototype.skill` somewhere you can find it. Your Desktop or Downloads folder works fine.

### Step 2: Install the skill

Open your terminal and run:

```bash
cd ~/Downloads  # or wherever you put the file
claude skill add prototype.skill
```

You should see a confirmation that the skill was installed.

### Step 3: Verify it works

Open Claude Code and start a conversation. Type:

```
/prototype
```

If Claude responds asking what you want to prototype, you're ready.

---

## Your first prototype

Try this:

```
/prototype a dashboard showing security alerts for the last 7 days
```

Claude will run the full pipeline (takes 3-8 minutes) and give you:
- Working HTML you can open in a browser
- A brief with research and evidence tags
- Critic reviews (before and after build)
- Routing cards for Product, Design, Research, and Engineering
- A complete handoff packet

---

## What if it doesn't work?

**"Command not found: claude"**
- Make sure Claude Code is installed and in your PATH
- Try `which claude` to verify
- If using desktop app, you might need to install the CLI separately

**"Skill not found"**
- Check the file is named exactly `prototype.skill`
- Try the full path: `claude skill add /Users/yourname/Downloads/prototype.skill`

**Other issues**
- Ask Claude: "Can you help me troubleshoot the prototype skill installation?"
- Claude can diagnose and help fix most issues

---

## What's next?

Read `GUIDE.md` (included in this package) for:
- How the pipeline works
- What outputs you get
- Tips for first-time users
- When to use prototyping vs. other tools

---

## Questions?

Type `/help` in Claude Code for general help, or just ask Claude directly.

The skill is open source and part of the Zero Vector curriculum — fork it, teach it, build on it.

---

**Ready?** Run the install command and prototype something.
