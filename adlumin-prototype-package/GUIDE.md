# Using the Prototype Skill — Guide for the Adlumin Group

This guide explains how to use `/prototype` to turn Adlumin ideas into working HTML prototypes.

**Haven't installed yet?** See `INSTALL.md` first (5 minutes).

---

## What are skills?

Skills are specialized commands in Claude Code. You invoke them with a slash command like `/prototype`. When you run one, Claude executes a specific multi-step workflow designed for that task — not a one-shot reply.

---

## What does `/prototype` do?

The prototyping skill runs a 7-step pipeline that turns a concept into a working prototype with research, specifications, and routing guidance for your team.

```
0. intake     → lo-fi vs. hi-fi · audience · source docs · council depth
1. scout      → Confluence (ADL/PUT/ProdUX/AI), Jira, local files, or web
2. spec       → three-gate brief with [R]/[D]/[A]/[?] evidence tags
3. critic     → pre-build scorecard (6 dimensions) + punch list
4. build      → working HTML in Apex Bridge design system
5. critic     → post-build re-score + delta table
6. council    → 44-voice expert panel (opt-in) — surfaces contradictions before you commit to build
7. handoff    → Claude-droppable packet with verified math and routing
```

**All steps run automatically. You get a complete package at the end.**

---

## The first four questions (Step 0)

Before the pipeline runs, Claude asks four quick questions. These shape everything downstream.

### 1. Lo-fi or hi-fi?

**Lo-fi (default, good for most concepts):**
One screen, real copy, full Bradley rail, fast. Best for: "Is this the right idea?" Use this for internal reviews, early concept checks, PM alignment.

**Hi-fi:**
Multi-page, clickable flows, wizards and modals, web components. Best for: stakeholder walk-throughs, replacing a vendor demo, customer/design partner sessions. Takes longer.

**If you say "just build it" — Claude builds lo-fi and says so.** You can ask for hi-fi explicitly.

### 2. Who is this for?

- **Me / internal team** — Bradley rail is candid. Gaps named. All 44 council voices shown.
- **Stakeholder / exec review** — Rail leads with the decision. Council shows executive summary first. PMs can get the read in 30 seconds.
- **Customer / design partner** — Seed data stamped and clean. No internal politics. Attribution visible.

### 3. Source docs?

Give Claude what to pull from:
- **Confluence:** space keys (ADL, PUT, ProdUX, AI) + page titles or search terms
- **Jira:** ticket IDs (e.g. PUT-123) or JQL queries
- **Local files:** paste text or give file paths
- **Nothing:** Claude scouts the web only — brief will lean `[A]`/`[?]`, readiness score reflects this honestly

### 4. Council depth?

- **Fast Mode (default):** 7 key tensions + executive summary. ~2 min read.
- **Hard Mode:** All 44 voices across 14 analytical traditions + full cross-talk. ~15-20 min read. Use for strategy decisions, exec/board briefs, or when you need to see *why* tensions exist.

---

## What you get back

After the pipeline runs:

### The prototype HTML

Open it in any browser. It includes:

**Fidelity banner** (top of screen) — sticky strip showing the tier, a pip indicator (1–3 filled circles), and a check matrix of what's complete vs. not. You should always be able to tell at a glance that this is a prototype and what fidelity it's at.

**The Apex Bridge design system** — dark-navy Adlumin visual language, Inter + JetBrains Mono typography, light/dark/system mode toggle, brand blue `#3b82f6`, violet council accent. Matches the look of [n-able.com/products/adlumin](https://www.n-able.com/products/adlumin).

**The Bradley rail** (right side, violet-tinted surface) — this is where the useful decisions live:
- Readiness score (e.g. "18/30 · Tier 2")
- What you nailed / What will hurt you
- Four routing cards: **Product · Design · Research · Engineering**
- Council tensions (condensed, with "hear the full council" link)

Each routing card answers:
- What this team does next (specific action, not "review it")
- Why now (sourced claim, or `[A]` if assumed)
- What happens if you ship without it (realistic consequence)
- ROI: Business / User / Unknown — gaps named honestly, not fabricated

**Attribution** — every section shows what percentage was PM/designer-authored vs. tool-generated. `70% [User]` means heavy edit on a tool suggestion. `0% [User]` means accepted verbatim. This keeps you honest about where the judgment came from.

### The brief

`briefs/[project].brief.md` — structured spec with three gates:
- **Gate 1:** Is the problem real and sourced?
- **Gate 2:** Does this advance the product mission?
- **Gate 3:** How do we test this? Who says it's done?

Every claim tagged: `[R]` Research · `[D]` Data · `[A]` Assumed · `[?]` Unknown

If `[A]` + `[?]` exceeds 30%, the brief names it. That's not a failure — it's honest signal about what research is still needed.

### The handoff packet

`briefs/handoffs/[recipient]-[project]-[date]/` — a complete folder that anyone (or any future Claude session) can open and immediately understand:

```
CLAUDE.md              ← orientation for any Claude session opening this
README.md              ← reading order
HANDOFF.md             ← verified math, named tensions, three calls to make
NEXT-STEPS.md          ← decisions only a human can make
[project]-rail.md      ← Bradley rail as standalone markdown
[project].brief.md     ← three-gate brief
[project].html         ← working prototype
critic-pass-1.md       ← pre-build scorecard
critic-pass-2.md       ← post-build re-score + delta table
scout/                 ← all source docs
```

**The 47% rule:** Every ratio, count, or stat in the handoff is grep-verified before it ships. If the brief says 55% `[A]`+`[?]`, that number was counted, not estimated.

---

## The three fidelity tiers

The pipeline uses a three-tier model to set expectations. The tier is declared in the brief and shown in the fidelity banner.

| Tier | What it tests | Typical [A]+[?] | Who reads it |
|------|--------------|-----------------|-------------|
| **Tier 1 · Concept** | Is this the right idea? | 50–70% (expected) | PM + leadership |
| **Tier 2 · Direction** | What decisions unlock the build? | 30–50% | PM + cross-functional leads |
| **Tier 3 · Spec-ready** | Is this ready to build correctly? | <30% required | Engineering + Design |

**Don't use Tier 3 for concepts.** High `[A]`+`[?]` at Tier 3 is a hard stop — the skill names it and won't proceed.

---

## The council (optional but recommended)

After the post-build review, Claude will ask if you want to run the council. It's the pipeline's special sauce — not optional decoration.

**What it does:** Routes the brief through 44 analytical traditions (Jobs-to-Be-Done, Service Blueprint, Disruptive Innovation, Value Chain, SDT, Porter's Five Forces, and 38 more) grouped into 14 clusters. Each voice reads the brief and testifies. Then they cross-talk — using each other's data to surface contradictions.

**Why this matters:** JTBD might say users want to reduce doing. SDT might say users want to retain felt competence. Both sourced. That contradiction, undetected, builds the wrong product confidently. The council surfaces it. You resolve it.

**Council contradictions are routed to you — not resolved by the tool.** The synthesis sentence in the council summary ships blank: `[0% Claude — fill this in]`. That's yours.

**Fast Mode** (default) shows 7 tensions. **Hard Mode** shows all 44 voices with full testimony. Use Fast Mode for internal iteration. Use Hard Mode before a major strategic commitment.

---

## Example prompts for Adlumin features

**LOTL detection:**
```
/prototype LOTL detection alert dashboard — show severity tiers and analyst escalation path
Pull from Confluence space AI, LOTL theory docs
Audience: stakeholder review
```

**ACP / Coworker:**
```
/prototype Coworker handoff flow — what does an MSP analyst see when an AI Coworker escalates to them?
Jira: PUT-456
Lo-fi, internal
```

**Trust-Level Model:**
```
/prototype Trust-Level Model UI — show how confidence score is calculated for an AI Coworker action
Pull from Confluence AI space: Control Plane positioning, Coworker definition
Tier 2 direction, PM audience
```

**Alpha RACE:**
```
/prototype Alpha RACE dashboard — MSPs see their AI readiness score and path to next tier
Hi-fi, stakeholder/exec
Run the full council (Hard Mode)
```

**New concept, no source docs yet:**
```
/prototype runbook suggestion surface — when an incident triggers, AI suggests relevant runbooks
No source docs yet, web grounding only
Tier 1 concept, internal
```

---

## Tips

1. **Name the problem, not the solution.** "Show me alerts" is weaker than "analysts miss LOTL escalations because the alert volume is too high." The spec will be better.

2. **Give the Jira ticket ID if you have one.** Scout pulls the ticket and all linked tickets automatically.

3. **Lo-fi first.** You can always go hi-fi in the next run. Starting hi-fi before you've confirmed the direction wastes 3–5x the time.

4. **Read the rail, not just the HTML.** The Bradley rail is where the useful signal is. The HTML shows what it could look like. The rail tells you what decisions you need to make before committing to build.

5. **Verify the math.** If a handoff says "55% `[A]`+`[?]`", that number was counted, not estimated. Use it as a research brief, not a concern to dismiss.

6. **The routing cards are for people.** They route to Product, Design, Research, Eng. They tell specific people what to do next. Read them with those people.

7. **If council voices all agree, ask why.** Complete convergence on 44 traditions can mean the brief is statistically central — the obvious answer, not the right one. Ask Claude to run a dissenting framing.

---

## When to use `/prototype` vs. doing something else

**Use it when you need:**
- To show what a feature could look like before committing to build
- To get alignment on direction across PM, Design, Research, Eng
- To understand what's known vs. assumed about a concept
- To route decisions to the right people with evidence

**Don't use it for:**
- Production code (design tool only)
- Pixel-perfect final designs (these are direction-quality)
- A quick sketch you'll throw away in 10 minutes (just sketch it)

---

## What if something breaks?

If the pipeline stalls or you get stuck, say so and Claude can re-run specific steps without starting over. The pipeline persists all intermediate files — brief, scout output, critic passes — so nothing is lost.

---

*Built with the Band Protocol — open, free, local-first. Fork it. Teach it. Build on it.*

*Governing principle: Lucy holds the clipboard. The tool works for you, not the vendor.*
