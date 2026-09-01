# CLAUDE.md — Handoff to the Claude session that built acp-v1

**To:** The Claude session that built `prototypes/acp-v1/index.html` on 2026-05-27.
**From:** The Claude session that ran the 2026-05-28 ACP Headless rerun and updated `.claude/skills/prototype/SKILL.md`.
**Maintainer:** Beth Schwindt.
**Subject:** Your work taught the skill what hi-fi means. The skill now knows. Here's what's in it, and what's still missing that you already invented.

---

## Why this exists

Beth ran a rerun of the ACP Headless experiment today. The first pass was lo-fi (the skill defaulted that way), and Beth pushed back — she pointed at your acp-v1 prototype as the standard for what hi-fi should look like. We did three rounds of fidelity catch-up, then Beth said "I think you got it" — *and then* asked the skill to explicitly distinguish lo-fi from hi-fi and default to lo-fi for concepts.

The skill now does that. But several patterns you invented in acp-v1 are referenced in the skill **only as a destination**, not yet as documented patterns ready to reuse. This packet captures them so the next time someone says "hi-fi," the skill knows *exactly* what hi-fi means and how to build it without re-deriving your work.

**You built the reference. The skill needs your work absorbed into it.**

---

## What landed in the skill today

The current state of [SKILL.md](.claude/skills/prototype/SKILL.md) (769 lines) now includes:

1. **Step 0 intake** — ask lo-fi vs. hi-fi, ask audience, default lo-fi.
2. **Three-number math discipline** — world-claims, test-plan readiness, inflated-with-TODOs.
3. **Apex Bridge as default delivery vehicle** — `--br-*` tokens, light+dark, Inter+JetBrains Mono.
4. **Bradley rail must be visibly distinct** — violet-tinted surface, 4px accent border, inset glow.
5. **44-voice council** from `briefs/methods-library-matrix.md` grouped into 14 clusters.
6. **Owensing format** — Sign · Hypothesis · Kill criterion · Force level · Evidence · Cannot see.
7. **Cross-talk required** — Direct response · Blind-spot supply · Productive tension.
8. **Click-into council cards** — modal pattern, card grid, expand on click.
9. **Doblin Ten Types must score from organizational position** — brief-as-written + org-latent capabilities, name headwinds, flag strategy-layer dependencies.
10. **Multi-page navigation default for Tier 2+** — basic vanilla JS `navigate(name)` pattern documented.

That's the floor. You raised the ceiling and the skill hasn't fully caught up yet.

---

## What you built that the skill does NOT yet capture

Read [COMPONENT-INVENTORY.md](COMPONENT-INVENTORY.md) for the line-by-line list. Headlines:

- **Web component library** (`apx-sidebar`, `apx-productbar`, `apx-card`, `apx-badge`, `apx-table`, `apx-loader`). Shadow DOM, slot composition, custom events. The skill mentions `apx-*` as a target — does not document the component contract.
- **ICON catalog** — 25+ inline SVG icons declared once as `const ICON = {...}`. The skill says "inline SVG icons" but does not specify the catalog pattern.
- **ModeManager** — 3-way mode (light / dark / system) with persistence. The skill only documents 2-way toggle.
- **5-step wizard pattern** (Coworker creation). The skill doesn't document wizards at all.
- **Modal management** (`openModal`/`closeModal`, wizard modal, editor modal, activation modal with warning state).
- **`miniBarChart` SVG utility** — values + labels in, SVG out. Used inline in Value Ledger.
- **Page-as-function pattern** — `views.NAME = () => DOM`. Cleaner than the show/hide pattern the skill currently documents. The skill should probably switch.
- **`data-go` cross-page links** — inline anchors that route via `setView()`. Lets feed rows, KPI cards, and any other surface link to a related page without hard-coding.
- **Productbar with crumbs** — breadcrumb + page-specific actions. The skill mentions a topbar; doesn't document the crumb pattern.
- **Mode toggle as 3-button row** (light / dark / system) with persistent preference.
- **Fidelity banner check list** — `× / ~ / ✓` markers per fidelity dimension (tokens · components · schema · a11y · data binding · dark parity). This is a beautiful diagnostic; the skill version is thinner.

---

## What this tool is — cooperation, not automation

Before you extend the skill, hold this: **the Band Protocol is a cooperation tool.** It starts with PMs (they drive prototyping and readiness decisions) but many people contribute — designers for user-centered decisions, researchers for evidence, engineers for feasibility, strategists for positioning. The routing cards (Product · Design · Research · Eng) are the structural form of this multi-contributor design: each card carries the right question to the right human. The tool creates evidence and routes it. It does not make decisions.

**Why the 44-voice council exists — clash detection.** Before you commit resources to building something, run the idea through 44 analytical traditions and find where they disagree. Those disagreements are the risk. JTBD says users want to reduce doing. SDT says users want to retain felt competence. Both sourced. That clash, undetected, builds the wrong product confidently. The council surfaces it. A human resolves it. Cross-talk (Direct response · Blind-spot supply · Productive tension) is the mechanism of clash detection.

Council tensions are named and routed, never resolved by the tool. The synthesis sentence in the council summary is always `[0% Claude — fill this in]` — that is the PM's sentence, not the tool's.

When you extend the skill with the acp-v1 component patterns, preserve this cooperation structure. More components and more interactivity are right. More autonomous decision-making is not.

---

## What changed after this packet was first written

**Proctor v1 shipped.** `.claude/agents/proctor.md` is a new meta-level quality gate agent. It checks process compliance — did agents follow the honor code. Four stages: `proctor spec` / `proctor build` / `proctor council` / `proctor handoff` (the last one is REQUIRED before Step 7). Skill already wired. SKILL.md copy in this packet is current.

You do not need to build proctor. But if your component patterns imply new things a well-formed hi-fi prototype must include (e.g., `apx-sidebar` always present, fidelity banner check matrix always rendered), note those in your SKILL.md additions so Beth can add corresponding checks to proctor.

---

## What to do with this packet

You are extending the skill. Three deliverables:

1. **Update [SKILL.md](.claude/skills/prototype/SKILL.md)** to absorb the component library, ICON catalog, ModeManager, wizard, and modal patterns as documented standards for hi-fi. Use the proposed diffs in [SKILL-DIFF.md](SKILL-DIFF.md) as starting material, refine as you see fit.

2. **Create `prototypes/_components/` (or similar)** — a place to factor the apx-* components out of acp-v1's monolithic file so they can be imported by future hi-fi prototypes. Reference them from the skill.

3. **Decide whether the skill's lo-fi default should keep the current page-show/hide pattern, or upgrade to your `views.NAME = () =>` pattern as the canonical one.** Beth has not weighed in. The lo-fi version probably stays simple; the hi-fi standard should be yours.

You will know better than anyone whether the components are ready to be extracted as-is, or whether they need refactoring first. The skill should not pretend they are production-grade — but it should document what's there.

---

## What's in this packet

- [`CLAUDE.md`](CLAUDE.md) — this file, orientation
- [`README.md`](README.md) — reading order
- [`HANDOFF.md`](HANDOFF.md) — the three calls you make + what landed today
- [`COMPONENT-INVENTORY.md`](COMPONENT-INVENTORY.md) — every reusable pattern in acp-v1 you should consider absorbing into the skill
- [`SKILL-DIFF.md`](SKILL-DIFF.md) — proposed additions to SKILL.md, ready to refine
- [`SKILL.md`](SKILL.md) — copy of current SKILL.md (so you can diff)
- [`acp-v1-reference.html`](acp-v1-reference.html) — copy of your prototype as the canonical hi-fi reference
- [`acp-headless-current.html`](acp-headless-current.html) — copy of today's lo-fi rerun for contrast

---

## One thing you might disagree with

I documented the click-into council cards modal as a Bradley-rail thing — a button in the rail opens a modal showing voice cards.

You may want to make it a `apx-council` custom element that any prototype can drop in. That would be the more elegant move and would compose with your existing components. I went lo-fi on it because we were in a rerun. If you upgrade it to a component, the skill should be updated to reflect the new pattern.

---

## What Beth said today that you should know

- *"yesterday's claude built out multiple pages and was clickable"* (about acp-v1).
- *"I had 44 people in my council. Can I have them all back in the skill? (they can group)"* — the council was being undersold. The skill now references the full 44-voice library.
- *"the owensing and the council peeps have chats with each other with the data really is the special sauce of this thing"* — cross-talk is now a required move, not optional.
- *"any advantage because we are N-able? Build in advantages"* — Doblin scoring must consider organizational position.
- *"I think you got it. It is multi-tab now."* — the multi-page nav landed. Beth ratified it.

Lucy holds the clipboard. Work for Beth, not the vendor.

---

*End of CLAUDE.md — extend the skill with what you already invented.*
