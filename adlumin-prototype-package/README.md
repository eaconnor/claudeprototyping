# Band Protocol Prototype Skill — Package for the Adlumin Group

Welcome. This package contains everything you need to start prototyping Adlumin features with Claude Code.

---

## What's in this package

```
adlumin-prototype-package/
├── README.md           ← You are here
├── INSTALL.md          ← Start here (5 minutes)
├── GUIDE.md            ← Read after installing
└── prototype.skill     ← The skill file (don't open this)
```

---

## Quick start (3 steps)

1. **Read INSTALL.md** — Follow the 3-step install process
2. **Read GUIDE.md** — Learn what the skill does and how to use it
3. **Try it** — Run `/prototype` in Claude Code and build something

---

## What is this?

The Band Protocol prototyping skill turns rough Adlumin ideas into working HTML prototypes in the Apex Bridge design system, with research, specs, and routing guidance for the full team.

**One command. Full pipeline.**

When you type `/prototype [your idea]`, Claude automatically:
- Pulls source documents from Confluence (spaces: ADL, PUT, ProdUX, AI) and Jira
- Writes a structured brief with evidence tags
- Reviews the spec before building
- Creates working HTML in the Apex Bridge design system
- Reviews what was built
- Routes decisions to Product, Design, Research, and Engineering
- Packages everything for handoff

You get a complete prototype with honest gaps named and all decisions clearly routed.

---

## What makes this Adlumin-specific?

This skill is pre-configured for the Adlumin product context:

- **Design system:** Apex Bridge (dark-navy Adlumin visual language, `--brand` blue, semantic tokens)
- **Source material:** Pulls from n-able.atlassian.net (Confluence spaces ADL, PUT, ProdUX, AI) and Jira
- **Domain context:** ACP, Coworker, Runbooks, Trust-Level Model, Alpha RACE, LOTL detection
- **Delivery pattern:** Apex Bridge overlays — prototypes sit inside N-central or Adlumin shells
- **Audience:** Internal teams building toward [n-able.com/products/adlumin](https://www.n-able.com/products/adlumin)

---

## Who made this?

Built by Beth Schwindt (Senior UX Designer, n-able) as part of the Band Protocol — an internal AI-native design tool for the Adlumin group.

**Governing principle:** Lucy holds the clipboard. The tool works for you, not the vendor.

---

## License

Open source. Fork it. Teach it. Build on it. No paywalls.

---

## Questions?

After you install, just ask Claude. Type `/help` for general Claude Code help, or ask specific questions about prototyping.

**Ready?** Open `INSTALL.md` and get started.
