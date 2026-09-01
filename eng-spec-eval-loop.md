# The spec/eval loop — for engineering

What this is: a way to test whether an idea is worth building *before* — and while — it's being built, without either (a) killing viable ideas because someone always finds an objection, or (b) shipping something whose real risk never got named. One page, written for whoever's building this with UX, not just for UX.

## The loop

```
SPEC an idea  →  EVAL it (two methods, independently)  →  REGISTER what's found
     ↑                                                          |
     |                                                          v
FIX THE CRITERIA  ←—— did either method miss something? ——   FIX THE IDEA
(if the eval had no way to ask                              (if the risk is fixable —
 the question that mattered)                                  usually the cheapest lever)
```

This loop runs on real, in-progress work, not just up front. Every pass through it either de-risks the idea or improves the next pass's questions. Both count as progress.

## Spec: three gates, not a wall of requirements

Every idea gets checked against three questions, in this order, because a good answer to #2 or #3 doesn't rescue a bad answer to #1:

| Gate | Question | Owned by |
|---|---|---|
| **1 — Desirability** | Is the user problem real and sourced? What does the user currently do instead, that this replaces? | Research/UX |
| **2 — Viability** | Do we know the right pieces to build and the right order — and does the value this creates actually convert to something (money, retention, differentiation) for the business? | Product/UX |
| **3 — Feasibility** | Can we build it — engineering, service design, the pieces working together? | Engineering |

**Where this gets non-obvious: Viability depends on UX, the same way it depends on engineering.** A sound business model still fails Viability if the value never becomes legible to the user — someone has to translate "this creates value" into something the user actually perceives. That's not Feasibility (can we build it) and it's not a fourth gate — it's UX's part of making Gate 2 true, exactly parallel to engineering's part of making Gate 3 true. Neither of us owns a gate alone.

**A second non-obvious thing: Feasibility constraints shrink Desirability, and whether what's left is still big enough is a Viability question.** Hardware or access limits (battery life, display brightness, which data sources we can actually connect to) don't just cap what gets built — they shrink the *space* of desirable use cases down to whatever survives the constraint. The real question is whether that surviving sliver is big enough to be worth shipping on its own, which is Viability's call, not Feasibility's. Flag this explicitly whenever a technical constraint is doing more than limiting scope — when it's actually picking which use case we're allowed to have.

## Eval: two independent methods, checked against each other

Run both, separately, on the same spec:

1. **Council** — five analytical lenses (Jobs-to-Be-Done, Service Blueprint, Self-Determination Theory, Disruptive Innovation, Value Chain) each testify independently. Each gives a verdict *and* a strongest objection — not just a list of concerns.
2. **Idea Chess** — the idea gets decomposed into the specific sequence of gates *it* has to clear (build this, ship that, defend this claim, get this adopted), each with a probability, multiplied for a rough survival estimate. Names which gate dies first.

**Why both, not one:** they use completely different logic — parallel interpretive lenses vs. sequential probability gates. When they land on the same weak point independently, that's real signal. When they disagree, or when neither had a way to ask a question that turned out to matter, that's not a finding about the idea — it's a bug in the eval itself, and gets fixed in the criteria, not just noted and dropped.

## The rule that keeps this from killing viable ideas

Running five voices plus a multi-gate probability model means *something* will always read as an objection — that's just what happens when you check anything from enough angles. Treat "one voice found something" as noise, not a verdict. The only thing that counts as a real risk is one that passes the **crux test**: if this resolves badly, does the idea actually fail? If it resolves well, does it clearly win? Yes/yes = crux. Anything softer is a note worth knowing, not a reason to stop.

Same logic in reverse for the good stuff: **name the free wins, not just the risks.** Being early to market, owning data or access a competitor doesn't have, an existing distribution channel — these don't need to be built or proven, and it's easy for a risk-hunting process to leave them uncounted. Credit them — but check whether each one **compounds** (gets more defensible over time — accumulating data, switching costs) or **decays** (a one-time head start that a fast-follower erases the moment they copy it). An early idea with a decaying-only advantage is still exposed; an early idea with a compounding one is genuinely ahead.

## Worked example (qbr-prep-sim, run 2026-08-03)

Council and Idea Chess, run independently against the same live brief, both landed on the same dies-first gate: the Value Ledger producer for this feature is unwired and renders $0 — nothing in the current build proves the ROI story the brief is implicitly making. Two different methods, same evidence, same answer — trust it. Cheapest fix: wire the producer with placeholder values clearly marked provisional, before the test window closes. That's a wiring task, not a research study — the highest-leverage move available, found by comparing two methods instead of trusting either one alone.

Where the two methods *didn't* fully agree — how much weight the untooled "judgment" step should carry — got named and left open rather than smoothed into a single number. That's a real product call, not something either method should resolve on its own.
