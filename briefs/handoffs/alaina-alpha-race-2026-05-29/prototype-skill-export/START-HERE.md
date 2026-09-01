# `/prototype` Skill Export — For Alaina

**What this is:** Complete, portable `/prototype` skill package from Beth's Bethproto project. Install it in your own Claude Code workspace to run the full Band Protocol prototyping pipeline.

---

## What's included (everything you need)

✓ **SKILL.md** — Main prototype skill (72KB, full pipeline)  
✓ **agents/** — 11 pipeline agents (scout, spec, build, critic, council, bradley, etc.)  
✓ **briefs/methods-library-matrix.md** — 44-method council library (required)  
✓ **CLAUDE.md** — Band Protocol instructions  
✓ **INSTALL.md** — Installation guide (start here)  
✓ **README.md** — Skill documentation  
✓ **references/** — Supporting docs  

---

## Installation (5 minutes)

**Read:** `INSTALL.md` for step-by-step instructions.

**Quick version:**
1. Create your project directory (e.g., `~/Documents/alaina-design-work`)
2. Copy this entire `prototype-skill-export/` folder to `.claude/skills/prototype/` in your project
3. Copy `agents/` to `.claude/agents/` in your project
4. Copy `briefs/methods-library-matrix.md` to `briefs/` in your project
5. Copy `CLAUDE.md` to your project root (optional but recommended)
6. Open your project in Claude Code
7. Type `/prototype` to verify it works

---

## How to use it

**Read:** `HOW-TO-USE-PROTOTYPE-SKILL.md` (in the parent handoff folder)

**Quick start:**
```
/prototype YourProjectName

lo-fi
me
no sources
```

**Time:** ~20-30 minutes for full pipeline  
**Output:** Working HTML prototype + design review packet (15 files)

---

## What you can do with it

- **Prototype concepts** — Turn briefs into working HTML with design tensions surfaced
- **Test design decisions** — Council shows where frameworks contradict (JOBS vs SDT, SIGN vs JRNY)
- **Run validation tests** — Comprehension, believability, reading order, economic buyer
- **Create stakeholder demos** — Lo-fi for concept, hi-fi for click-path walkthroughs
- **Generate handoff packets** — Complete design review packets with verified math

---

## Files in this package

```
prototype-skill-export/
  START-HERE.md          ← You are here
  INSTALL.md             ← Installation guide (read next)
  SKILL.md               ← Main skill file (72KB)
  README.md              ← Skill documentation
  CLAUDE.md              ← Band Protocol instructions
  agents/                ← Pipeline agents (11 files)
    scout.md
    spec.md
    build.md
    critic.md
    council.md
    bradley.md
    george.md
    paul.md
    tech.md
    ringo.md
    proctor.md
  briefs/
    methods-library-matrix.md  ← 44-method council library
  references/            ← Supporting docs
  test-cases-nicole.json ← Example test cases
```

---

## Support

**If something doesn't work:**
1. Read `INSTALL.md` troubleshooting section
2. Ask Beth
3. Ask Claude in your project: "Why isn't /prototype working?"

**If you want to customize:**
- Edit `SKILL.md` to change pipeline steps
- Edit `agents/` files to change agent behavior
- Edit `briefs/methods-library-matrix.md` to add/remove council voices

---

## Next steps

1. **Read:** `INSTALL.md` (installation)
2. **Read:** `HOW-TO-USE-PROTOTYPE-SKILL.md` (usage guide, in parent folder)
3. **Try it:** Run `/prototype Test Concept` with "lo-fi / me / no sources"
4. **Review output:** Check `prototypes/test-concept/index.html` and handoff packet

---

**Band Protocol:** Lucy holds the clipboard. This tool works for you, not the vendor.

**Exported:** 2026-05-29  
**From:** Beth's Bethproto project  
**Version:** Current as of Alpha RACE lo-fi build

---

**Ready to install? Read `INSTALL.md` next.**