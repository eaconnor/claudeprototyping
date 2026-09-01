# Installing the Band Protocol Prototype Skill

**For:** Adlumin product, design, research, and engineering teams
**Time:** ~5 minutes

---

## What you're getting

The Band Protocol `/prototype` skill — a complete prototyping pipeline that turns Adlumin ideas into working HTML prototypes in the Apex Bridge design system, with research, specs, and routing guidance for the full team.

---

## Prerequisites

1. **Claude Code installed**
   - Get it at [claude.ai/code](https://claude.ai/code)
   - Available as CLI, desktop app, web app, or IDE extension

2. **An Atlassian account with access to n-able.atlassian.net**
   - Required for scout to pull from Confluence and Jira
   - If you don't have access, scout will fall back to web research only and your brief will have a higher `[A]` ratio — that's expected

3. **That's it.** No other dependencies.

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

If Claude responds asking a couple of quick questions before running, you're ready.

---

## Your first prototype

Try this:

```
/prototype a dashboard showing LOTL detection alerts with severity tiers
```

Claude will ask:
1. **Lo-fi or hi-fi?** (default: lo-fi — one screen, fast)
2. **Who's the audience?** (internal team, stakeholder/exec, or customer/design partner)
3. **Source docs?** (Confluence page titles, Jira ticket IDs, or local files)
4. **Council depth?** (Fast Mode = 7 tensions, Hard Mode = 44 voices)

Then it runs the full pipeline (3–8 minutes) and gives you:
- Working HTML you can open in a browser, in the Apex Bridge design system
- A Bradley rail with readiness score, routing cards, and council tensions
- A brief with evidence tags showing what's sourced vs. assumed
- Critic reviews before and after build
- A complete handoff packet

---

## What if it doesn't work?

**"Command not found: claude"**
- Make sure Claude Code is installed and in your PATH
- Try `which claude` to verify
- If using the desktop app, you may need to install the CLI separately (Settings → Developer)

**"Skill not found"**
- Check the file is named exactly `prototype.skill`
- Try the full path: `claude skill add /Users/yourname/Downloads/prototype.skill`

**Scout can't reach Confluence**
- Check your Atlassian credentials are active
- If you don't have ADL/PUT/ProdUX access, tell Claude which Confluence spaces you can reach, or paste source docs directly

**Other issues**
- Ask Claude: "Can you help me troubleshoot the prototype skill installation?"

---

## What's next?

Read `GUIDE.md` for:
- How the pipeline works, step by step
- What lo-fi vs. hi-fi means for Adlumin prototypes
- How to read the Bradley rail
- The three fidelity tiers and when to use each
- Example prompts for common Adlumin use cases

---

**Ready?** Run the install command and prototype something.
