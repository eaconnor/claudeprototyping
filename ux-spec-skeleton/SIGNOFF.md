# SIGNOFF.md — who signs, and why it is not about rank

`scripts/check-tier.py` reads your open gate criteria and assigns each one a tier. This
file is what a person does with that output. The script is the computation; this is the
ritual.

## The principle

**The signature level matches who bears the consequence, not who has seniority.**

Escalating by rank is what makes approval processes hated and routed around — it asks
people to sign things they have no stake in and blocks people who could have decided
alone. Escalating by who gets hurt is defensible to the person being asked, and it
produces a tier nobody has to argue about.

## The ladder

| tier | consequence lands on | who signs | how long it should take |
|---|---|---|---|
| **T0** | the person doing the work | themselves | now |
| **T1** | the team or the roadmap | one peer, **not the author** | same day |
| **T2** | **a user** | the accountable owner (`project.conf`) | within a day or two |
| **T3** | **the company** — legal, regulatory, contractual | accountable owner **+** the risk function | as long as it takes |
| **T4** | unbounded or irreversible | **nobody.** This is an incident, not a decision. | stop and escalate |

## The five rules that stop this becoming bureaucracy

1. **Default is T0.** Most work is self-serve. If the tiering pushes routine work to T2,
   the tiering is wrong — `check-tier.py` exits 17 to say so, and calls it "a bottleneck
   with a diagram."
2. **Nothing reversible goes above T2.** If you can undo it, it does not need a
   company-level signature.
3. **One signature per tier, two at most.** A third adds delay and no information.
4. **Silence is not consent.** An unsigned T2 is not approved by time passing. If you need
   an answer and cannot get one, that is an `OPEN.md` `HUMAN` row with a named owner.
5. **Escalation is by consequence, not by disagreement.** You do not escalate because
   someone said no. A "no" on a FLOOR item means the FLOOR item gets fixed.

## What to do when the script says T2 or T3

1. **Run it.** `python3 scripts/check-tier.py` — it names the criterion and the tier.
2. **Decide whether you are asking for a signature or a waiver.** They are different. A
   *signature* says "I accept this consequence." A *waiver* says "we are going around this
   gate anyway" — and every waiver gets a row in `WAIVERS.md` with a **predicted cost**
   before the fact.
3. **Ask the named person, once, in writing, with the consequence stated plainly.** Not
   "can you approve the a11y gate" — "this ships without keyboard navigation, which means
   a keyboard-only user cannot complete the primary task. Accepting that?"
4. **Record the answer where the next person will find it** — `WAIVERS.md` for a bypass,
   `ux.md`'s “What we ruled out, and why” section for a direction call, `OPEN.md` for a decision still open.
5. **Keep working.** The signature blocks the *action*, never the person. If you are idle
   waiting for a signature, something has gone wrong with the process, not with you.

## The thing that makes this loop honest

`WAIVERS.md` has an **actual cost** column, filled in later. `./check-waivers.sh` then
computes: of the waivers that resolved, what share turned out **costly** versus
**vindicated**?

- **70% or more costly** → the gates are earning their keep. Keep them.
- **30% or less costly** → the gates are too strict. **Loosen them.** People went around
  them and were right to.

That number is the only evidence anyone has about whether this apparatus is worth its
overhead. A gate nobody can go around never generates it, which is why waivers are a
feature and not a leak. **Gates block artifacts, not people.**

## Status

The ladder and the five rules are implemented in `scripts/check-tier.py` and its header.
**This ritual layer has never been run with real signatories on a real project.** `[A]`
The regex that assigns tiers has known ambiguities its own header documents. Expect to
correct both. First correction goes in `OPEN.md`, not in a private opinion about it.
