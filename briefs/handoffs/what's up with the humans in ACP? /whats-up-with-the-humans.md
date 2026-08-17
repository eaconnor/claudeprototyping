---
doc_id: HANDOFF-HUMANS
title: What's Up With The Humans
version: 0.1.0
status: Starter doc · designer journal · keep adding
date: 2026-06-05
owner: Beth Schwindt
purpose: |
  The other docs are analytical. This one is for the humans.
  What MSP techs are feeling, fearing, hoping for. What gets in their way.
  What ACP needs to honor, not just enable. Read like a designer's field notes.
sources_drawn_from:
  - research-evidence.md (22 partner interviews)
  - nicole-actual-acp-vision.md
  - council-frameworks.md (SDT section)
note_to_reader: |
  This is a STARTER. I added what jumped out from one read of the research.
  Add to it as you learn. Quotes anonymized as first name + last initial.
---

# What's Up With The Humans

*Designer notes. Less analytical, more observational. The other docs catalogue what people said. This one tries to hear what they meant.*

---

## What people are actually doing

**Spending the first hour of every morning checking dashboards across tools.** Not because it's productive — because they can't trust the alerts otherwise. ACP's "Continuous Environment Health Coworker" exists because someone, somewhere, started every day by clicking through five dashboards just to make sure nothing exploded overnight.

**Spending 20 hours a week, per dedicated person, going through alerts** — "80–90% just checking." (David) That's a full-time human job whose entire purpose is to confirm "nope, still nothing." The work is real. The output is mostly negative space.

**Writing QBRs in 1.5 hours when they should take 20 minutes.** Pulling data from systems that don't talk to each other. Translating raw metrics into language a CEO might value. The bottleneck isn't capability — it's translation.

---

## What people are afraid of

**Becoming button-pushers.** If ACP shows *what* it did but not *why*, the senior tech becomes the person who clicks "approve." That's not a career; that's a checkbox.

**Losing the next generation.** Junior techs traditionally learned through manual triage. Automation removes the foundational work. When ACP hits an edge case, who takes over? Someone who was never taught. **Learned helplessness as a product side-effect.**

**Trusting AI that hallucinates against their own customers.** 65% of analysts are skeptical of AI-generated alerts. 79% prefer hybrid over full automation. This isn't resistance to innovation — it's professional caution honoring liability.

**The data being wrong.** "Reported all Windows 10, zero Windows 11 — which clearly does not match our current environment." (David) When AI gets the numbers wrong, everything has to be double-checked. The "AI saves time" promise inverts.

---

## What people are hoping for

**Being seen as Managed Intelligence Providers, not IT shops.** The repositioning matters. Nicole's "AI Coworker" language implies parity with the human; Kaseya's "Digital Specialists" elevates the human. Words matter.

**Shifting conversations from ticket noise to business outcomes.** That's the QBR job. "[I told it] don't be salesy but at the same time give constructive information that could be used as almost natural recommendations… It actually did a good job." (David)

**Getting Valentine's Day back.** Louis O. saved two hours one Valentine's Day using Ask Enzo on a SentinelOne issue — figured it out himself instead of waiting on support. The wins are small and personal. Time returned to humans for human things.

**Being the MSP that has receipts.** Nicole's Seth Godin pitch: "We run 14 AI Coworkers across your environment. Last month they resolved 340 incidents, onboarded 12 employees, closed 2,100 vulnerabilities, and generated your quarterly business review. Here is the proof." The dignity of provable work.

---

## What gets in their way today

**Discoverability.** Enzo is buried on the asset tab. Loses context on tab-switch. No chat history. Partners want a standalone, bookmarkable, over-the-top app — *somewhere they can put it and find it again.*

**Broad queries fail.** Specific ones work. Partners report needing to learn "the right way to ask" rather than just asking. The cheat-sheet ask is a symptom — the system is asking humans to translate themselves into prompts.

**Output is chat-only.** They want CSV. They want Word/PDF. They want branded layouts that drop into the workflows they already have. Chat is great for thinking; it's bad for delivering.

**The persona split is real.** Technicians want raw data and lists. Account managers want executive narratives. One UI; two audiences; the friction is invisible until you talk to both.

---

## The mental models people are reaching for

When asked how they'd want AI to graduate from "human confirms" to "AI executes, human audits," three models surfaced (Ewan Cameron experiment):

- **Track record:** "This coworker handled 47 patches successfully → promote." History as trust.
- **Graduated dial:** A slider per task: manual / assisted / autonomous. Human knob.
- **Scope guardrail:** "Low risk: auto · Medium: approval · High: manual." Policy by category.

One of these will land in a 10-second comprehension test. The others won't. That's a research question. (See Gap 3 in `HANDOFF.md`.)

---

## The quote that keeps coming back

> "Today a technician spends the first hour of every morning checking dashboards across tools. ACP eliminates that entirely. The environment is already healthy before anyone logs in. The MSP replaces a daily human ritual with a persistent, cross-product coworker that never misses, never forgets, and never calls in sick."
> — from Nicole's *Top 10 ACP Use Cases*, Continuous Environment Health Coworker

The ritual is the thing. Not the dashboard-checking — the *waiting to find out if everything is okay*. ACP's job isn't to do that work faster. It's to replace the anxiety with proof.

---

## What design needs to honor

- **Competence preservation.** Show *why*, not just *what*. The Trust/Value Ledger is the place this lives or dies.
- **Dignity in role language.** Whatever it gets called, the human needs to feel elevated by it, not replaced.
- **The graceful failure path.** When AI is wrong (and it will be), the explanation needs to teach, not just apologize.
- **The hand-off moment.** When the AI escalates to a human, what does the human see? Half-finished work? Or context they can act on?
- **Time returned.** The win isn't "saved 12 minutes." The win is "Valentine's Day evening was free."

---

## Open observation prompts (for the team to fill in)

- Where does ACP feel like a colleague vs. a tool? (write here as you watch partners use it)
- When do partners reach for the audit log vs. the value ledger vs. the chat? (different intents)
- What language do MSPs use to describe ACP to their *customers*? (the brand reframes itself in their voice)
- Whose job did this just change, and do they know it yet?

---

*Add to this file. The other docs catalogue what was said. This one is for what we're learning to listen for.*
