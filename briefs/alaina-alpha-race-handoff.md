---
artifact: "Alaina handoff — Alpha (RACE) prototype + readiness rail"
from: "Beth"
to: "Alaina"
date: "2026-05-21"
purpose: "Test scenarios with the Apex prototype + Bradley readiness rail. Three personas (Raj / Daniel / Carla)."
status: "alpha — let's iterate"
---

# Alaina — Alpha (RACE) handoff

Hi Alaina,

I built this with Claude Code to test a new design protocol. Want your eye on it before I take it anywhere else. Open it in your Claude Code session, mess with the prototype, run the scenarios below, tell me what's right and what's not.

Two things to look at:

1. **The prototype:** `prototypes/alpha-race-apex.html` — the Alpha (RACE) incident view, Apex/Adlumin-flavoured visual
2. **The readiness rail running alongside it** — right-side panel in the same file. Bradley's voice. Routes risks to you and Julian by name.

---

## What this is, in one paragraph

It's a working sketch of what a **Tier-1 Apex Prototype** looks like — a concept-grade visual paired with an honest readout that tells the PM what's good, what will hurt them, and exactly which design and research work needs to happen before this can ship. The rubric driving the readout is called Idea Chorus. It's a band-of-methods clash detector that sits *before* Nicole Reineke's 13-point Readiness Gate. Think of it as the pre-gate coaching loop — the part where a PM iterates with design and research before declaring `spec_ready: true`.

Two doc references if you want the protocol context:
- Beth (me) — [AI-First, Spec-Driven Design at N-able](https://n-able.atlassian.net/wiki/spaces/ProdUX/pages/61932830828/AI+First+Spec+Driven+Design+at+N+able+2026-05-10) (design-side operating model)
- Nicole Reineke — [PM and Research Operating Model for AI-First, Spec-Driven Delivery](https://n-able.atlassian.net/wiki/spaces/NTAPGT/pages/61907599364/Product+Management+and+Research+Operating+Model+for+AI-First+Spec-Driven+Delivery) (Intent Spec mechanics)

Source Initiative the prototype is built against: [ADL-1838 — Alpha (RACE): Multi-Event Detection Correlation & Incident Story Generation](https://n-able.atlassian.net/browse/ADL-1838) by Carla Gajdecki.

---

## The Apex Prototype Tier system (this is what I want your read on most)

Top of the prototype carries a fidelity banner. Three tiers:

- **Tier 1 — Concept** *(this prototype)* — Visual approximated. Tokens not bound. apx-* components are HTML mockups. Data is fake. **Don't ship as design.** Use for alignment, critique, customer conversations where everyone knows it's a sketch.
- **Tier 2 — Apex-grade structural** — Real apx-* components. Real tokens. Mocked data still OK. Production-faithful visuals, no production data binding.
- **Tier 3 — Apex-faithful, production-ready** — All of Tier 2 + real data via schema.json + a11y audit + Storybook story. Ship-ready visually.

The flag at the top is honest about what this is. Six checks shown:
- Tokens (real Apex) — ✕
- apx-* components — ✕
- schema.json contract — ✕
- A11y baseline — ~
- Production parity — ~
- Live data binding — ✕

**Design question for you:** Does the tier system feel like the right way to declare prototype trust? Is Tier 1 / 2 / 3 the right granularity, or do we need finer tiers? Should there be a "Tier 0 — Sketch" below this?

---

## Bradley's readiness rail (right side of the prototype)

The rail tells the PM:

1. **Quality read** (Promising · not ready) and **Net CX impact** (Net Good if it lands)
2. **Monte Carlo** — what happens to 1,000 PMs in this position (% reached Oregon, % killed and saved, % shipped to nobody)
3. **What you nailed** (5 specific wins, in language that survives a demo)
4. **What will hurt you** (7 things, named with consequences)
5. **Three things Alaina owns from here** (design risks routed to you by name)
6. **Three things Julian owns from here** (research risks routed to him by name)

The voice is Bradley — n-able-PM-coordinator persona. Direct, not academic. The intent is to *scare the pants off the PM about design/research risks in a good way* — make it visceral that Julian and Alaina need to be in the room before this ships, without sounding like a lecture.

**Design question for you:** Does the rail successfully do that? Is the "what will hurt you" section actually scary in a useful way, or does it read as defensive? Does naming you and Julian by name make it feel cooperative or accusatory? Is the bluntness pitched right?

---

## The three personas to test (Raj / Daniel / Carla)

I want you to run the prototype through three different PMs in your head and tell me how the rail lands for each.

### Persona 1 — Raj (the inheritor)

**Situation:** Carla wrote the Alpha-Race brief. Raj is the PM who's been handed it to prototype and ship. He's reading Bradley's rail for the first time. He didn't ask for analysis — he asked for a pretty prototype.

**What he wants:** Something he can show in tomorrow's sales meeting.

**What he's afraid of:** Looking unprepared in front of execs. Being told he has to slow down.

**Test:** Read the rail as Raj. Does it stop him from running into a sales meeting unprepared? Does it convince him to book you and Julian *this week*? Or does it feel like one more thing slowing him down?

**Specific scenario to try:** *"I have an exec demo Tuesday. Can I show this as-is?"* — what does Bradley say?

---

### Persona 2 — Daniel (the experienced pushback)

**Situation:** Daniel is a senior PM who's shipped 10+ MDR features. He doesn't think he needs design or research support for "obvious" things. He wants to push past Bradley's flags and ship.

**What he wants:** To override.

**What he believes:** Most "research" is bureaucracy. Most "design" is polish.

**Test:** Read the rail as Daniel. Does Bradley earn enough credibility to make Daniel reconsider, or does it sound like more process-for-process's-sake? Specifically — does the AI-feature N=10–12 finding (NN/g 2023+) land as legitimate methodology or as another hoop?

**Specific scenario to try:** *"I've shipped three correlation features. We don't need ethnography for this — I know the workflow."* — what does Bradley say? Can the rail handle pushback without losing authority?

---

### Persona 3 — Carla (the original author)

**Situation:** Carla wrote the original Alpha-Race brief on Jira. She's invested. She's iterated. She's the one who got Hilda's quote captured in the brief in the first place.

**What she wants:** Validation that her brief was strong. Help getting the prototype right. Honest read on what's missing without being told she did it wrong.

**What she's afraid of:** That all her work was for nothing. That Bradley will flag her brief as inadequate.

**Test:** Read the rail as Carla. Does the "what you nailed" section honor what she actually did right (the 5 wins should land specifically for her work)? Does the "what will hurt you" feel like coaching, or feel like critique of her work?

**Specific scenario to try:** *"I wrote this brief. I got Hilda's quote. Why are you saying I haven't done the research?"* — does Bradley distinguish between *brief work* (which Carla did) and *prototype validation work* (which is still ahead)?

---

## Things to play with in your Claude Code

Open the prototype, open this brief, and try:

1. **"Rewrite the rail for Daniel — make it land harder for someone who pushes back on process."** See what Claude generates. Compare to the current rail. Does the rebuttal-mode version feel more or less effective?

2. **"Make a Tier 2 version of the prototype — bind it to real Apex tokens and apx-* components."** This is the next-fidelity prototype. Worth seeing if Claude can produce it with the existing Apex tokens you have access to.

3. **"Add a fourth scenario — Hilda the customer is in the demo. Rewrite the rail for what Raj needs to know before she sees this."** Customer-in-the-room is different from internal demo. The fidelity flag becomes more important.

4. **"Add a section to the rail for what Engineering needs from this prototype to start production work."** Currently the rail talks to PM-with-Design-and-Research. Engineering is the next collaborator. What does that block look like?

5. **"Generate the schema.json contract that this prototype would need for Tier 2."** This is the Apex Assembly hand-off artifact per Nicole's Appendix B. Worth seeing if Claude can produce a defensible draft.

---

## What I'm specifically asking you for

1. **Does the Apex Prototype Tier flag feel right?** Granularity, language, visual treatment, honesty.
2. **Does the rail's voice land for the three personas?** Where does it fail? Where is it patronising? Where is it too soft?
3. **Are the design risks routed to you correctly?** Are Service Blueprint, Need→Function map, and Apex Assembly binding the right three things, or am I missing something obvious?
4. **Should this rail live inside the prototype, or should it be a separate artifact that travels with the prototype?** Right now it's one HTML file. Could be split.
5. **Anything that feels like Beth's design language leaking in?** I tried to stay in Adlumin/Apex aesthetic. If you spot Bauhaus warm-paper energy in here, flag it.

---

## What I'm building (broader context)

This prototype is one test inside a longer project — an Idea Chorus rubric that PMs can run on their briefs/Intent Specs to surface gaps before Nicole's Readiness Gate fires. The full spec is at `briefs/idea-chorus-rubric-v2-spec.brief.md` if you're curious about the underlying machinery (14-cluster method library, BIM-style clash detection, Oregon Trail readiness states, etc.). You don't need to read it to give me feedback on the prototype.

The protocol is testing whether **AI accelerates poor judgment, or accelerates better-evidenced judgment.** If we can make design and research risks visible *and consequential* at prototype time, the bet is that PMs route to you and Julian earlier, not after the wrong thing has been built.

Your read matters here because **you'll be the person Raj brings the prototype to in the real version of this scenario.** If the rail doesn't get you in the room earlier, it's not doing its job.

---

## Files referenced

- `prototypes/alpha-race-apex.html` — the prototype + rail
- `prototypes/alpha-race.html` — earlier warm-paper version (don't use; wrong design system; kept for comparison only)
- `briefs/idea-chorus-rubric-v2-spec.brief.md` — full Idea Chorus spec if you want the machinery
- `briefs/methods-library-matrix.md` — the 14-cluster method library Bradley convenes
- `briefs/research-methodology-specs.md` — NN/g + MeasuringU sample-size rules Bradley cites
- [ADL-1838 Alpha (RACE) Jira](https://n-able.atlassian.net/browse/ADL-1838) — Carla's source brief

---

Talk soon.

— Beth
