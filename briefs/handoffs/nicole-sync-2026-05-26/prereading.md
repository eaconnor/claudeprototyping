# Pre-read: Spec Pre-flight + Intent Context — Sync

**For:** Nicole Reineke
**From:** Beth Connor
**Date:** May 26, 2026
**Read time:** 5 minutes. Demo: 10 minutes.

---

## The short version

You built the Intent Context — the centralized evidence repository that feeds the Intent Spec.
I built a scoring layer that sits between that evidence and the generation step.

Slides 4 and 5 of your deck both say "WE NEED A THING HERE."
That's what I want to show you.

---

## What Spec Pre-flight is

I originally built this for myself — a personal tool called The Band, a multi-agent AI framework I use for design and strategy work. I modified it into a prototyping tool to give PMs and designers a way to score ideas with some guardrails.

The mechanism: Owen matrix math running as a panel of experts. Each expert voice is a different strategic or design framework — business strategy, UX research, market positioning, customer jobs theory, competitive dynamics, and others. The panel is configurable: experts can be added, swapped, or updated, and inputs can likely include engineering signals as well, though I haven't tested that yet.

You hand it a concept or a brief. Each voice names what it sees, what it's assuming, and what would prove it wrong. the Advisor — a coordinator voice — calls the panel, collects testimony, and produces a gap report: which evidence exists, which is running on assumption, and what specific research would close each gap.

The output is a structured gap report and a first-pass spec scaffold — what you know, what you're assuming, what would kill the idea if you're wrong about it.

---

## Where it fits in your SDLC model

Your flow:

```
Capture & Centralize → Reference → Generate → Refine
```

Spec Pre-flight inserts here:

```
Capture & Centralize → Reference → [IDEA SCORER: score evidence, surface gaps] → Generate → Refine
```

Before Claude drafts the Intent Spec, Spec Pre-flight checks whether the referenced evidence is sufficient. If clusters are thin or empty, the gap report fires before generation begins — not after. This prevents Claude from producing a fluent-but-evidence-thin spec.

Your "Surfaces gaps" bullet on slide 10 is already this function. Spec Pre-flight formalizes it: specific research actions, recommended sample sizes, and an explicit risk statement for skipping each step.

---

## How your evidence types map to the scoring clusters

| Your evidence type | Clusters it feeds |
|---|---|
| User Interviews | Customer jobs · Human needs · User journey · Market signals |
| Market Research | Landscape · Market position · Strategic portfolio |
| Competitor Research | Landscape · Market position · Feature/concept quality |
| PX Context | User journey · Market signals · Economics |

When a PM references tagged evidence, the tool knows which clusters that evidence feeds — and which remain empty. Empty clusters with no referenced evidence surface as gap cards before generation runs.

---

## Vocabulary alignment

The Spec Pre-flight tooling now uses your term — **Desired Outcome** — as the verb-led, measurable purpose statement. Same artifact, shared term. Worth confirming this lands for your team before either doc goes wider.

---

## The full pipeline

```
Intent Context (evidence repository)
    ↓
Spec Pre-flight gap check (is the evidence sufficient to generate?)
    ↓
Intent Spec generation (Claude drafts outcomes, Epics, success criteria)
    ↓
Readiness Gate (is the spec ready for Engineering?)
    ↓
Engineering
```

If this is wrong, that's what the sync is for.

---

## Demo — Alpha (RACE) · 10 minutes

Open `idea-chorus-prototype.html` in a browser before the sync.

This is the Alpha RACE prototype — a real Adlumin initiative (INC-2026-0834, confidence scoring for MDR analysts) built as a Tier-1 concept for Raj and Daniel. It shows what Spec Pre-flight produces when applied to an actual PM brief.

**What to show, in order:**

**Step 1 — The initiative (left panel, ~2 min)**
- Show the incident story: 3 detections + 1 SOAR action correlated, scored 94, routed to Raj.
- This is what the PM brought. One initiative. One claim. "We should build confidence scoring for MDR analysts."
- Point to the Scoring tab: "The score is 94. But a score isn't a readiness check."

**Step 2 — the Advisor's rail (right panel, ~4 min)**
- Scroll to the right rail. Two readiness cards:
  - **"Quality read: Promising · not ready"** — show it for alignment, don't ship as design yet.
  - **"For the customer: Net Good (if it lands)"** — Hilda asked for this, MDR team needs it.
- These are two different reads on the same initiative. Not a single verdict.
- The Desired Outcome reachability: "The biggest group did the work. The second biggest killed the idea on purpose. Both are wins. The 4% is the one to avoid."

**Step 3 — The risk items (~3 min)**
- Three research gaps with specific requirements:
  - Service Blueprint of the current MDR workflow (missing)
  - Need → Function map for probabilistic scoring (missing)
  - Apex Assembly binding / schema.json contract (missing)
- One validation requirement: AI-feature beta with 10–12 MDR analysts × 3 iterations. "NN/g calls 5 the floor for normal features; AI features need 10–12. Nobody's done that yet."
- This is not "you need more research." This is "here is exactly what is missing and what happens if you skip it."

**Step 4 — Connect to Nicole's model (~1 min)**
- "In your flow, this fires between Reference and Generate. The PM references Hilda's interviews and the MDR team's signal. Spec Pre-flight checks: is that enough to generate a credible Intent Spec? Here — it isn't. Not yet. The Service Blueprint and the analyst validation are the gaps."

---

## What we need to decide

1. **Is this the right integration point?** Between Reference and Generate, or somewhere else in your model?
2. **Pilot:** Is there one initiative where we could run both systems together and see what breaks?
3. **Engineering signals:** I've sketched how engineering inputs could feed the panel (Jira velocity → Business Economics; tech debt → Concept Quality; Pendo → Market Signals). I haven't tested it. Want to find a team to try this with?
4. **Who else needs to be in the room?** Engineering lead, one PM already running spec-driven development.

---

## Files in this package

- `prereading.md` — this doc
- `idea-chorus-prototype.html` — demo prototype (Alpha RACE)
- `agent-package/` — six Claude Code agents ready to drop into your project:
  - `explore`, `refine` — thinking tools
  - `scout`, `scorer`, `spec`, `advisor` — pipeline tools
  - `CLAUDE.md` and `README.md` — setup + workflow

---

*Gut reactions more useful than polish. Leave comments directly in this doc.*
