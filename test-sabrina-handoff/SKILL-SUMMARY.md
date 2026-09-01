# Skill Summary — `/prototype`

**Band Protocol Prototyping Pipeline — v1**  
One-page reference. Keep this open during your first run.

---

## Invoke it by saying

> "Prototype [your concept]."  
> "Mock up [this flow]."  
> "Build a demo of [X] — lo-fi, internal audience."  
> "Show me what [Y] would look like."

---

## Four intake questions (asked before the pipeline runs)

| # | Question | Default |
|---|----------|---------|
| 1 | Lo-fi or hi-fi? | Lo-fi |
| 2 | Who is the audience? | Internal |
| 3 | Any source docs? (Confluence, Jira, files) | Web only |
| 4 | Council depth — Fast or Hard Mode? | Fast Mode |

**Lo-fi** = one page, real copy, council, readiness score. One session.  
**Hi-fi** = multi-page, clickable flows, web components. Use when walking a stakeholder through a click-path or replacing a vendor demo.

**Internal** = honest gaps visible, Bradley speaks plainly.  
**Stakeholder/exec** = council modal leads with PM executive summary, rail written at decision level.  
**Customer/design partner** = seed data clean, attribution visible, no internal politics.

---

## The pipeline (steps never drop)

```
scout → spec → critic → build → critic → council → handoff
```

1. **Scout** — pulls source docs from Confluence, Jira, files, or web
2. **Spec** — writes a three-gate brief with [R]/[D]/[A]/[?] claim tagging and three-number evidence ratio
3. **Critic (pre-build)** — scores the brief on 6 dimensions, produces a punch list
4. **Build** — working HTML with Apex Bridge tokens, fidelity banner, Bradley rail, council entry point
5. **Critic (post-build)** — re-scores, shows delta vs. pre-build
6. **Council** — 44 analytical voices, cross-talk, named tensions
7. **Handoff** — Claude-droppable packet, proctor-verified, 47% grep-checked

---

## What ships with every prototype

- **Fidelity banner** at top — tier flag, readiness indicator, mode toggle
- **Bradley rail** — violet-tinted right sidebar, four routed action cards (Product · Design · Research · Eng), cross-talk preview, "Hear the council" button
- **Council modal** — click-into from the rail; Fast Mode (7 tensions) or Hard Mode (44 voices, 14 clusters)
- **Seed data stamps** — wherever fictional numbers appear, they're labeled
- **Three-way mode toggle** — light · dark · system

---

## Source grounding

Give the skill Confluence space keys, Jira ticket IDs, or local file paths and it scouts them before writing the brief. Without sources, the brief leans `[A]`/`[?]` — which lowers the readiness score honestly. Don't paper over a sourceless brief.

Confluence spaces in scope: ADL, PUT, ProdUX, AI.

---

## Key rules

**The synthesis slot is yours.** `[0% Claude — fill this in]` is not a bug. Write the 3-sentence council read yourself.

**Council tensions are routed, not resolved.** If JTBD and Service Blueprint contradict, the prototype names it and sends it to you. You decide.

**47% rule.** Every ratio and stat is grep-verified before the handoff ships. If the tool can't verify it, it labels it `[CS: UNKNOWN]`.

**Apex Bridge tokens only.** No ad-hoc colors. If you need a one-off, add it to the `:root` contract.

---

## Reference prototypes

| File | Fidelity | What it shows |
|------|----------|---------------|
| `prototypes/acp-headless/index.html` | Lo-fi | Single dashboard, council modal, no wizards (~1,650 lines) |
| `prototypes/acp-v1/index.html` | Hi-fi | 9 pages, 5-step wizard, web components, mini charts (~4,675 lines) |
