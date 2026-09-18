---
artifact: intent-spec
project: ‹project name›
date: ‹YYYY-MM-DD›

# ─────────────────────────────────────────────────────────────────────────────
# STATUS — THE FIELD THIS TEMPLATE EXISTS FOR. Read the comment before filling it.
#
# Most intent specs are written before there is evidence, because something has to
# exist before anyone can argue with it. A made-up draft is a better instrument than
# a blank page: it is a set of guesses specific enough to be wrong. That is not the
# problem.
#
# The problem is three weeks later. Somebody who was not in the kickoff reads the
# draft, quotes a claim from it in a deck, and it arrives downstream as a finding.
# Nobody lied. The status just did not travel with the sentence.
#
# And no script can catch it. check-trace.sh validates that a criterion POINTS AT a
# real section of this document — that is alignment, not grounding. A criterion can
# trace perfectly to an invented claim and the gate goes green. This label is the
# only defence, which is why it is the first field and not a footnote.
#
#   HYPOTHESES  nobody in the room can point at evidence for the claims. Legitimate,
#               common, and the normal state of a spec at kickoff. Routes the project
#               to a pre-spec phase.
#   FINDINGS    every load-bearing claim has evidence someone can point at. Requires
#               evidence_pointer: below. Does not have to be rigorous — locatable.
#   MIXED       some of each. Then the [R]/[D]/[A]/[?] tags in the body carry the
#               weight, per section, and this field only says "do not assume."
#
# "I don't know" resolves to HYPOTHESES. Not as a penalty — as logic. FINDINGS is a
# positive claim that requires someone able to point. If nobody can point, it is a
# hypothesis however likely it is to be true.
status: ‹HYPOTHESES | FINDINGS | MIXED›
status_stated_by: ‹the author's own name — this is a self-assessment, not an audit›

# Required when status is FINDINGS or MIXED. Where would you point? A path, a Condens
# artifact id, a Jira key, a transcript, a dashboard. "Well-sourced" is not a pointer.
evidence_pointer: ‹what you would point at, or "none — status is HYPOTHESES"›

# ─────────────────────────────────────────────────────────────────────────────
# OWNERSHIP. Accountability is a property of a decision, not of a document — but this
# document needs one name that carries it, and one that holds the pen. They are often
# the same person on a small team. Say so rather than leaving it implied.
pen_held_by: ‹who edits this file›
accountable: ‹who carries it when a claim in here turns out to be wrong›

# WHEN A HUMAN LAST RECONCILED THIS AGAINST ITS SOURCES. Read by check-condens.sh as
# the comparison point for research drift: a cited artifact updated after this date
# has moved since anyone looked. Copying today's date without reading defeats it, and
# nothing can detect that.
reconciled_at: ‹YYYY-MM-DD›

# ─────────────────────────────────────────────────────────────────────────────
# THE AUTHORIZATION CONTRACT (CLAUDE.md §9b). Read by check-judgment.sh.
# Decision uncertainty — what should we build? — is BLOCKED.
# Evidence uncertainty  — do we have enough research? — is PROCEED-FLAGGED.
# These are different. Do not conflate them.
confidence_regime: ‹PROCEED | PROCEED-FLAGGED | PROCEED-PARTIAL | BLOCKED›
proceed_because: ‹one sentence — why this document is worth having in this state›
machine_behavior: ‹e.g. "treat every §1-§4 claim as [A] until tagged otherwise ·
  do not claim validation · UXI requirements are provisional until §5 is signed"›
---

# ‹Project› — intent spec

> **Status: ‹HYPOTHESES›.** ‹One sentence a stranger can read. e.g. "Nothing in this
> document has been tested. It is what we currently believe, written down so it can be
> argued with."›

## Why this file is numbered

Every acceptance criterion in the gate files carries a `traces_to:` pointer, and
`check-trace.sh` resolves it here. The syntax it validates:

| pointer | means |
|---|---|
| `§N` | a section of **this** document |
| `UXI-##` | a numbered requirement in **§5** of this document |
| `ds:N.N` | a section of the *local* gate file, never this one |

So the section numbers are an interface, not formatting. **Renumbering a section
breaks every criterion that points at it** — and `check-trace.sh` will tell you, which
is the point. Add sections at the end rather than inserting.

---

## §1 · The problem

‹What is wrong, for whom, and how you know. Tag every claim: `[R]` research · `[D]`
data · `[A]` assumed · `[?]` unknown. If `[A]`+`[?]` exceeds 30%, say so here rather
than letting a reader discover it — that threshold is CLAUDE.md §9 and it is the
difference between a spec and a wish.›

## §2 · Who it is for

‹Named audiences, not "users". If a persona here is invented, tag it `[A]` — an
invented persona reads exactly like a researched one.›

## §3 · Why this, why now

‹What advances if this exists. Gate 2 asks whether we are making the right thing; this
is the section it reads.›

## §4 · Scope

‹In scope / out of scope. Out-of-scope is the more useful half and the one usually
missing.›

## §5 · UX intent — `UXI-##`

**Mandatory and numbered. This is the section the toolkit resolves `UXI-##` against.**

‹One numbered requirement per line. Each states an intended experience, not a
solution. A requirement that names a component has skipped the intent.›

| id | requirement | tag |
|---|---|---|
| UXI-01 | ‹what must be true of the experience› | ‹[R]/[D]/[A]/[?]› |
| UXI-02 | ‹…› | ‹…› |

> **A caution about writing this section early.** §5 is where a made-up spec does the
> most damage, because `UXI-##` ids look like requirements the moment they exist and
> criteria start pointing at them. Writing it in kickoff and writing it after research
> produce documents that are indistinguishable in shape. If these are guesses, tag
> every row `[A]` and leave the table short — a scaffold of four honest rows beats
> fourteen that have to be unpicked.

## §6 · Non-goals

‹What this deliberately does not do, and what someone will assume it does.›

## §7 · Constraints

‹Legal, regulatory, platform, technical. **Lawfulness is FLOOR** — it is never gated
on problem validation, so this section is live even when `status: HYPOTHESES`. If any
personal data is processed, name the lawful basis and whether special-category data is
involved, or record who owes that answer. Processing special-category data without a
reviewed lawful basis is a never event in this toolkit: zero acceptable rate.›

## §8 · Open questions

‹Do not answer them here. Each one is a row in `OPEN.md`, typed `HUMAN` (a decision no
research resolves) / `RESEARCH` (a question evidence settles) / `ACCEPTED`. This
section points at them; the register holds them.›

## §9 · Decision log

‹Append-only. Date, decision, who made it, what it closed. A decision that is not
written down gets re-litigated by whoever joins next.›

---

## Change requests — the channel back

**Nothing else in this toolkit models upstream challenge.** `traces_to:` points from a
criterion *up* to this document and is validated in that direction only. But design,
research and engineering each interrogate an intent spec by nature — research asks *is
this true*, engineering asks *is this buildable and what does it cost* — and without a
channel those arrive as corridor conversations and the document quietly stops matching
what anyone believes.

Rejected is a legitimate outcome. Silent is not.

| id | target | asked by | what they are asking | status |
|---|---|---|---|---|
| CR-01 | ‹§N or UXI-##› | ‹name› | ‹the change requested, and why› | ‹open / accepted / rejected — with the reason› |

## Signatures

Everyone on the project signs. **Scoped by section**, so an edit voids only the
signatures over the section it landed in — a typo fix notifies, a changed figure voids.
A signature that void-alls on any edit gets withdrawn from use within a month.

Two different signatures, and conflating them poisons the record:

- **AGREE** — I think this is right. Only sign this for sections you are competent to judge.
- **READ** — I have read it and will not later claim nobody told me. Always legal, never a rubber stamp.

| who | role | AGREE / READ | sections | date |
|---|---|---|---|---|
| ‹name› | ‹role› | ‹AGREE / READ› | ‹§1-§9, or the subset› | ‹YYYY-MM-DD› |

**A refusal to sign is not a blocker to route around — it is an `OPEN.md` row typed
`HUMAN`, owned by the escalation path.** The toolkit never adjudicates a signature
conflict; `check-blocked.sh` exits 2 and names who owes the decision.

---

## Honest limits of this template

**It cannot make a claim evidenced.** It makes the *absence* of evidence visible in
three places — `status:`, the per-claim tags, and `evidence_pointer:` — which is all a
document can do.

**Nothing reads the Change requests or Signatures tables yet.** They are documentary,
the same way `confidence_regime:` sat documentary until `check-judgment.sh` was built.
Recorded here because a convention with nowhere to live does not survive a fortnight,
and because the shape has to exist before anything can check it.

**Do not let an agent fill this in.** Not §5, not `status:`, not a persona in §2. A
generated intent spec reads exactly like an authored one and contains none of your
judgement — and `status: HYPOTHESES` written by a model is a self-assessment nobody
made. The gap is the deliverable. An unfilled slot is `[?]`, never a licence to draft.
