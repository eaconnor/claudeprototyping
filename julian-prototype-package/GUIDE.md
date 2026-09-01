# Using the Prototype Skill — Guide for Julian

This guide explains how to use the `/prototype` skill to turn ideas into working HTML prototypes.

**Haven't installed yet?** See `INSTALL.md` first (takes 5 minutes).

---

## What are skills?

Skills are specialized commands in Claude Code. You invoke them by typing a slash command like `/prototype`. When you do this, Claude runs a specific workflow designed for that task.

**How to use:**
- Type the skill name with a slash: `/prototype`
- Add what you want to prototype after the command: `/prototype dashboard for security alerts`
- Hit enter

Claude will run the full workflow and return everything you need.

---

## What does `/prototype` do?

The prototyping skill runs a 6-step pipeline that turns a concept into a working prototype with research, specifications, and routing guidance for your team.

**The pipeline:**

```
1. scout      → Pulls source documents (Confluence, Jira, files you provide)
2. spec       → Creates a three-gate brief with tagged claims
3. critic     → Reviews the spec before building (scorecard + punch list)
4. build      → Makes working HTML you can open in a browser
5. critic     → Reviews what was built (re-scores + shows what changed)
6. handoff    → Packages everything for your next session or team
```

All steps run automatically. You get a complete package at the end.

---

## What you get back

After the pipeline runs, you'll have a folder in `briefs/handoffs/` with:

- **Working HTML prototype** — Open it in a browser to see and test the concept
- **Bradley rail** (right sidebar) — Shows readiness tier, what's strong, what's risky, and routing cards for Product/Design/Research/Engineering
- **Three-gate brief** — Structured spec with evidence tags: `[R]` Research, `[D]` Data, `[A]` Assumed, `[?]` Unknown
- **Critic passes** — Pre-build and post-build reviews with scores and punch lists
- **Scout sources** — All the docs the pipeline pulled from
- **HANDOFF.md** — Verified math, named tensions, three calls to make next

---

## How to use it

**Example 1: Simple concept**
```
/prototype dashboard for security alerts
```

**Example 2: With context**
```
/prototype onboarding flow for new analysts — we need to show them the threat feed, how to escalate, and where to find runbooks
```

**Example 3: With Jira context**
```
/prototype user profile page for PUT-123
```

If you reference a Jira ticket (like `PUT-123`), scout will pull the ticket details automatically.

---

## What to expect

- **Time:** Pipeline takes 3–8 minutes depending on complexity
- **Output:** You get a complete package — not just a visual, but research, routing, and next steps
- **Iteration:** If the first pass isn't right, you can run it again with adjustments or ask Claude to refine specific parts

---

## Tips for Julian

1. **Start small.** Your first prototype can be one screen or one workflow. You don't need to design the whole system.

2. **Provide context.** The more you tell Claude about the problem, the better the output. "We're prototyping X because users are struggling with Y" beats "make a dashboard."

3. **Check the rail.** The Bradley rail (right sidebar in the HTML) shows what's ready and what's risky. Read it before making decisions.

4. **Verify the math.** If the handoff mentions percentages or counts, those are verified against source docs. If it says "Unknown," that means there's a research gap — don't guess.

5. **Routing cards are for people, not Claude.** The cards in the rail route work to Product, Design, Research, and Engineering. They tell you who needs to do what next.

---

## When to use `/prototype`

Use this skill when you need to:
- Show what a feature could look like
- Test an idea with stakeholders
- Get alignment on direction before building the real thing
- Understand what's known vs. assumed about a design

**Don't use it for:**
- Production code (this is a design tool, not a dev pipeline)
- Polished final designs (these are direction-quality, not pixel-perfect)

---

## What if something breaks?

If the pipeline stalls or you get stuck, say so. Claude can debug and re-run specific steps without starting over.

---

## Questions?

Type `/help` for general Claude Code help, or just ask Claude directly: "How do I [thing]?"

Claude works for you. If something's unclear, ask.

---

*Built with the Band Protocol — open, free, local-first. Fork it. Teach it.*
