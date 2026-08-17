# `/prototype` Skill — For Nicole

**What it does:** Turns concepts into working HTML prototypes with evidence ratios, readiness scores, and expert analysis.

**Input:** Concept description  
**Output (20-30 min):** Brief + prototype + council + handoff packet  

---

## Install (5 min)

1. Copy this folder to your Claude Code project:
```bash
mkdir -p ~/your-project/.claude/skills
cp -r prototype-skill ~/your-project/.claude/skills/prototype
cp -r agents ~/your-project/.claude/agents
mkdir -p ~/your-project/briefs
cp briefs/methods-library-matrix.md ~/your-project/briefs/
```

2. Open project in Claude Code: `claude-code ~/your-project`

3. Verify: `/help` should show `/prototype`

---

## Use it

Type:
```
/prototype YourProjectName
```

Answer 3 questions:
1. **Lo-fi or hi-fi?** → "lo-fi" (20-30 min, single page)
2. **Who is this for?** → "stakeholder" or "internal"
3. **Source material?** → Confluence pages, Jira tickets, or "no sources"

---

## What you get

- `briefs/your-project.brief.md` — Evidence-tagged brief with [A]+[?] ratio
- `prototypes/your-project/index.html` — Working prototype
- `briefs/handoffs/recipient-project-date/` — Complete packet (15 files)

---

## Key metrics

**[A]+[?] ratio:** % of claims that are assumed or unknown
- >60% = too early for engineering
- <40% = ready for directional build
- <30% = ready for production

**Readiness score (N/30):** Is concept ready to build?
- 14-18 = concept stage
- 20-24 = directional
- 26-30 = spec-ready

**Council tensions:** Where frameworks contradict = decisions you must make

---

**That's it.** Install, run, review output.

Questions → Ask Beth