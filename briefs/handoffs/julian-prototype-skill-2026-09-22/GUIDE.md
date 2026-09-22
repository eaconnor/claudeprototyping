# Using the prototype skill — guide for Julian

**Haven't installed yet?** `INSTALL.md` first. Takes five minutes.

---

## What skills are

Skills are named workflows in Claude Code. You type a slash command, Claude runs that workflow instead of improvising.

```
/prototype
/prototype dashboard for security alerts
/prototype onboarding flow for new analysts — they need the threat feed, how to escalate, where the runbooks live
```

More context in the prompt, better output. "We're prototyping X because users keep doing Y" beats "make a dashboard."

---

## What `/prototype` does

Eight steps. It asks you four questions first, then runs the rest.

```
0. intake    → four questions (below)
1. research  → gathers your source material, doesn't interpret it yet
2. brief     → three-gate brief, every claim tagged, the assumption math
3. critique  → scores the brief before anything is built, writes a punch list
4. build     → working HTML: fidelity banner, readiness rail, fictional seed data
5. critique  → re-scores against what actually got built, shows the delta
6. council   → 44 analytical frameworks read the brief and argue with each other
7. handoff   → a folder someone can pick up cold, ending in three decisions
```

**The pipeline is always full.** If you say "just build it," it builds — then it still runs the reviews and appends the rail. Steps compress. They don't drop.

---

## The four intake questions

**1. Lo-fi or hi-fi?** Lo-fi is one page and takes minutes. Hi-fi is multi-page and clickable and costs 3–5x as much. Almost every concept wants lo-fi. If you don't answer, it builds lo-fi and says so.

**2. Who's the audience?** Internal team gets the gaps shown candidly. An exec gets the rail leading with "what this means for your decision." A customer gets seed data scrubbed and no internal politics.

**3. Any source material?** Docs, tickets, notes, links, files. With nothing, the brief runs assumption-heavy — and it has to say so in the score rather than papering over it.

**4. Council: fast or hard?** Fast is an executive summary plus the top seven tensions, a two-minute read. Hard is all 44 voices with full cross-talk — for strategy calls and board briefs.

---

## What you get back

**Working HTML** — open it in a browser. Self-contained, no build step.

**Fidelity banner** at the top of the page. Says which tier this is and ticks off six checks: real copy, seed data fictional, core interaction works, full workflow built, visual hierarchy, production ready. It's there so a prototype can't quietly impersonate a real product.

**Readiness rail** down the right side. Deliberately looks like commentary, not chrome. Holds the readiness score, a plain-language line on what this prototype is testing, a **what you nailed / what will hurt you** pair, and routed cards for Product, Design, Research and Engineering. Each card says what that team does, why now, and what happens if you ship without it.

**A tagged brief.** Every factual claim carries one of four tags:

| Tag | Means |
|---|---|
| `[R]` | Research — from interviews, studies, observed behaviour |
| `[D]` | Data — from telemetry or records |
| `[A]` | Assumed — somebody's belief, labelled as one |
| `[?]` | Unknown — nobody knows, and it's named |

If more than 30% of the brief is `[A]` or `[?]`, the brief says so at the top. That's fine for a concept sketch and disqualifying for a build spec. The failure mode isn't having assumptions — it's hiding them.

**Council testimony.** Each of the 44 frameworks gives the same six fields: what it observes, what it thinks that means, what would prove it wrong, how hard it's pushing, how confident it is, and what it structurally cannot see. Then they argue. **Where two voices contradict on the same sourced point, the tool names the tension and leaves it.** Resolving it is your call, not the machine's.

**A handoff folder** ending in three specific decisions — with an owner and a date, not open questions.

---

## Five things worth knowing

1. **Start with one screen.** Not the whole system.

2. **Read the rail before you read the pixels.** The score and the "what will hurt you" block are the actual output. The HTML is the illustration.

3. **"Unknown" means unknown.** Where the tool has no data — on ROI especially — it writes Unknown rather than inventing a number. An honestly named unknown is a research brief. Treat it as one.

4. **Every number is re-counted before it ships.** There's a verification step for this, because it's a real failure mode: a brief once reported 47% assumed claims; an actual count showed 80%. Fluency doesn't know its own math.

5. **The synthesis slot stays blank.** In the council output you'll find `[0% AI — fill this in]`. That's not a bug. Synthesis is yours — the slot exists so the work stalls visibly instead of the machine inventing a strategy.

---

## When to use it

Good for: showing what a feature could look like · testing an idea with stakeholders · getting alignment before anyone builds · finding out what's actually known vs. assumed about a design.

Not for: production code (this is a design tool) or final pixel-perfect design (these are direction-quality).

---

## If it stalls

Say so. Claude can re-run one step without starting the pipeline over.

---

## What else is in the package

`prototype/docs/BEGINNER-GUIDE.md` — longer plain-language walkthrough
`prototype/docs/methods-library-matrix.md` — the 44 methods and 14 clusters the council runs
`prototype/docs/frameworks-references.md` — citation and link for every framework
`prototype/docs/owen-structured-planning.md` — where the matrix math comes from (Charles L. Owen, IIT Institute of Design)
`prototype/MAINTENANCE.md` — how to extend the library without breaking it

---

MIT licensed. Fork it, teach it, build on it.
