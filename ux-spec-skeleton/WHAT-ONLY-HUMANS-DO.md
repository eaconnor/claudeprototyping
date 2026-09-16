# WHAT-ONLY-HUMANS-DO.md

Not a motivational document. A list of the things the automation in this repo
**structurally cannot do**, so that a gap gets routed to a person instead of being filled
with something fluent.

The distinction that matters: these are not tasks an agent does badly. They are tasks where
an agent's output is *indistinguishable in form* from a correct answer, which is worse.

## The six recurring ones

**1 · Decide what is relevant.** Everything new lands as *Review*. Promoting it to
*Relevant* or dismissing it is a judgment about what you are trying to learn, and it is the
only control that stops the corpus growing without bound. A machine that decides relevance
optimises for what looks like the existing corpus.

**2 · Reach what the tooling cannot.** Gated reports, partner portals, login-walled
communities, paywalled research, chat histories that have no API. The honest move is to
fetch it manually or write "none this period" — **skipping is fine, silently skipping is
not.** A gap logged as a gap is data; a gap that prints as coverage is a lie.

**3 · Ask a person the things only a person can be asked.** What did we actually decide.
Is this still true. Does anyone own this. These are conversations, not queries, and no
amount of searching substitutes.

**4 · Say "this is my read, not evidence."** The fourth verdict at any review gate, beside
Accept / Edit / Reject: **Accept-as-interpretation.** It means *this is my best current
read and it is not sourced*. It must stay visually distinct from a confirmed fact forever,
because the failure mode is an interpretation hardening into a citation over three
documents and nobody being able to tell.

**5 · Own the review gate itself.** Gathering is automatic. Synthesis is yours. The gate is
manual by design, not because the automation is immature.

**6 · Read the evidence behind a ticked box.** The scripts check that a box is ticked. Only
a person reading the cited source can check the claim is true. `RITUALS.md` §2 step 4 is
where this happens, and if it stops happening the rest is theatre.

## The two that are specifically yours, not the machine's

**Abduction.** The interpretive leap — inference to the best explanation, drawn from tacit
knowledge built by doing the work. An agent applies patterns learned from a large, skewed
corpus; what looks like a leap is retrieval. When your read and the machine's read diverge,
**the divergence is the finding** — it marks where the inference is weakest or where your
tacit knowledge is carrying the most weight. Record it; do not reconcile it away.

**Order of operations.** Your read goes first, the machine's classification second.
Reversed, your interpretation anchors to the corpus and the independent signal is gone. This
is not a preference about process; it is the only way the divergence above stays meaningful.

## Data, before you gather anything

- **Offered, not taken.** Publicly reachable is not the same as yours to use. A source is in
  scope if it was published or shared with the intent of being used.
- **Minimise.** Gather what the stated purpose needs, not what you can reach.
- **Purpose limitation.** Data gathered for one research purpose stays in that purpose.
  Interview quotes are not seed data.
- **Consent for quotes**, and participant data used only for what participants agreed to —
  whether or not a formal ethics review was required.
- **UK jurisdiction, GDPR applies.** If you would not be comfortable with it public, it does
  not belong in the corpus.

## Status

Compiled from an existing internal manual-steps document and a shift-left playbook, both
written for a single-person practice. `[CS: HIGH — internal source docs]` The abduction and
order-of-operations sections restate a standing principle of that practice, not a finding
from this repo. Nothing here has been tested with a multi-person team. `[A]`
