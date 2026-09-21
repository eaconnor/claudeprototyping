# Sync with Beth Nam — 2026-09-21

Prep, not a script. Questions are mechanics; the calls are yours.

Her own page already booked this meeting: *"Does Beth C's Evidence Ledger overlap with
`findings.yaml` or serve a different purpose? — To discuss at sync"* and *"Agreed: no
proposals go to Nicole until Beth C and Beth N have synced."* (Research in the SDD
Pipeline — Two Complementary Systems, ProdUX 62253760665, Aug 04.) So the overlap
question is hers, already asked, and this is the answer session.

---

## 1 · What to show her

**Three things, in this order. Fifteen minutes.**

### a. The working repo

`acp-core-testrepo` — a detached copy of acp-core with the gate files filled in for real.
Run this in front of her:

```bash
cd ~/Library/CloudStorage/OneDrive-N-able/Bethproto/acp-core-testrepo && ./check-blocked.sh
```

It prints twelve open rows, names the five decisions nobody owns, and refuses to let a
placeholder owner pass as a real one. That last part is the most persuasive thing in the
toolkit and it takes four seconds to see.

### b. The thing that broke, because it makes the case better than the thing that works

Seven readers were pointed at `acp-core-testrepo/specs/` and all seven correctly reported
"no research cited in this folder." That got generalised — by me — into "this project has
no user research," and reported upward as the strongest finding of the session. It's
false. The research exists: the Datadump, the June blind interviews, the survey, Craig
Fisher, Stefanie Hammond. None of it was reachable from the repo, and nothing in the repo
said where to look.

That is the gap. Not missing evidence — missing connection. It is also, almost word for
word, her own line: *"The common failure is not too little research. It is sound research
that was never linked to the claim resting on it."*

### c. Three real defects — ask her which ones her gates catch

Better than a demo. All three are from the Idea Chess pages in the `AI` space, July, your
own work. Put them up and ask.

**One — the survey n.** The survey page headline says "119 Total responses." Its own body
reports n=39 for the ranking, n=33–45 per agent rating, 36 for the value question, 27 for
access model. Four of the five stress-test pages then cite it downstream as "the n=39
survey." Nothing reconciles 119 against 39.

Her own Format Stress Test found this exact defect independently, in a different study:
*"A study-level `n` field forces a choice between four numbers, and whichever is chosen
misrepresents three claims. Requires a per-instrument n, not a study-level n. This was not
anticipated."* So she'd catch it — and she found it the same way, from the other end.

**Two — a claim wider than the instrument.** The Fleet Package says Offering A has
"#1 across all 3 instruments." On the survey's own ratings table, sorted by the survey
itself, Env Health Monitor scores 3.59 and QBR Analyst 3.40 — QBR is second on that
instrument, not first. Her rule 9 covers this: *"Nothing may be cited beyond its scope."*

**Three — the one her layer probably doesn't catch.** The two portfolio-gating questions
on the Fleet Package — can we legally pull competitors' data, and does the operator want
the mechanism — gate four of five offerings between them. Both Owner cells render the word
**"None."** Compliance owner reads `<TBD>` on three separate pages, against an EU AI Act
date of 2026-08-02 printed on the same pages.

That isn't an evidence-labelling problem, so her gates have no reason to fire. It's the
same shape as the two risks that rode five documents unowned for thirteen days. **This is
where the boundary actually is**, and it's a better way to find it than arguing about
schemas.

### d. The one new thing, and why it's hers too

`CONTESTED` — a fourth row type for two real sources that flatly disagree. Built today.
First row is the EBR operator: one document says Vanessa runs them solo, Craig Fisher says
the three-hour prep is David's and that it has to be David because nobody else is senior
enough. Both sourced. It doesn't block work, it caps what work may claim.

Show her this expecting her to say she already has it — because she does. Her rule 7:
*"Disagreement between independent studies lowers confidence on both claims and promotes
the disagreement to an open question."* And `contradicts` is on her own list of requested
schema changes.

---

## 2 · The honest description of the boundary

Worth having ready in one breath, because her page already drew it and it holds up:

> Her layer checks, at commit, whether a claim is labelled honestly. It's downstream and
> it's automated. Mine sits earlier — where the problem is still being set and nobody has
> decided what we're building yet. The two don't overlap. What's missing is the join:
> nothing upstream can point at her evidence, and nothing in her layer knows a problem
> statement exists.

**The thing to be straight about:** this morning the plan was to build a second evidence
schema — field names, quality grading, the lot. Her work makes that unnecessary and worse.
Nearly shipping it is the strongest argument for the sync happening before any of it gets
proposed anywhere. Say so plainly; it costs nothing and it's true.

---

## 3 · Questions

Grouped by what changes depending on the answer.

### Where the join goes

1. Can a document upstream of a spec point at `findings.yaml` — and if so, what's the
   stable address? A file path in acp-core, a finding ID, or a repository page URL?
2. Does `findings.yaml` live only in acp-core, or one per repo? The UX toolkit is a
   separate skeleton that gets dropped into other projects, so this decides whether the
   join is a path or a URL.
3. Her repository pages are per product area. Is there a stable naming convention for
   them, or is the Confluence page ID the only reliable handle?

### The two ID conventions

4. She wants IDs in keyword form (`ACP-FND-001`) and has flagged that numbered IDs collide
   once a second area exists. The UX intent-spec template currently mixes three schemes —
   `UXI-`, `REQ-` and `UX-STATE-` — and the trace checker only reads `UXI-`. Which
   convention should the UX side move to, and does she want the alignment or would she
   rather keep the two sides deliberately separate?

### The gates

5. G19 and G20 are cited in her Format Stress Test and defined nowhere — the published set
   stops at G18. Are those in flight, or renamed?
6. `contradicts` and `superseded_by` are both on her requested-changes list. Any sense of
   when? Two problems on this side are waiting on exactly those two fields.

### Upstream evidence, which may not be hers at all

7. The vision briefs carry survival estimates (`~0.43%`, `P=0.35`) and confidence tags,
   but they're not findings — they're bets about what to build. Does anything in her schema
   want to hold those, or is that firmly the other side of the line?
8. Candidates get dropped with no reason recorded. Alert Flood Suppression ranked #2 on the
   n=119 survey and then disappears from every later document, with no note saying whether
   the follow-up research ran. Is that a `superseded_by` case, or does it belong somewhere
   else entirely?
9. Two risks rode five documents over thirteen days with identical numbers and the word
   "unowned" attached, and never reached any register. Does her layer catch that, or is it
   upstream of where she fires?

### Practical

10. Is PR #34 merged? Is the schema in it current, or has it moved since? Reading the PR
    rather than the wiki page would stop this side guessing.
11. She's recorded the status as "piloting, not adopted" — director-approved pilot on ACP,
    gates pending sign-off. What does she need to get to adopted?
12. There's a lighter version of the UX side being kept deliberately small so the working
    group isn't put off. Does a smaller, softer version help her get to adopted, or does it
    undercut the gates she needs signed?

### The one she raised and nobody has answered

13. Her stress test found participant email addresses embedded in a shareable link, and
    those emails resolve to account revenue. She flagged it as a consent and data-handling
    issue separate from the format work. If documents start citing research sources by
    pointer, what's the rule for what may be copied into a repo versus only linked?

---

## 4 · Not to walk in proposing

- A confidence scale. Hers is canonical, has a governance section, and a change log.
- Field names for evidence quality. Same reason.
- Anything going to Nicole. Her page records the agreement that nothing does until after
  this conversation.

---

## 5 · Worth knowing before you're in the room

- All 88 of her Confluence items are in **ProdUX**. Nothing in ADL or PUT.
- **"Intent confidence" is not her name for any of this.** It's the title of Will Mincher's
  Brain Dump post from 14 July that announced her work — the one your own datadump filed as
  "process announcement. Not user evidence. Park until relevance is clear." Her names are
  "Evidence Gate" and "Research Evidence Layer."
- **Neither of you has ever been argued with.** Nobody has commented on her confidence
  taxonomy or her gate proposal, and her governance section explicitly invites it. The nine
  Idea Chess pages have zero comments of any kind — no footer, no inline, open or resolved.
  Every objection in those adversarial stress-tests is self-authored. Two rigorous
  frameworks, both un-reviewed by anyone else. Worth naming out loud; it's the same problem
  and neither of you can fix it alone.
- **Your own July rule already described the join problem.** The Fleet Package flags that
  its own canonical sources aren't citable: *"the local `.md` files above are not yet
  uploaded/shared — per the Datadump's own rule ('if it's not linked, it's not a source'),
  they are listed here for provenance but are not yet independently citable."* Every
  probability on those five pages rests on assumption models nobody outside your machine
  can open. You wrote the rule and then documented yourself breaking it — which is a
  better argument for a mechanical join than anything I could build.
- She says the index page can't be maintained by hand and has the receipts: a repeatability
  check on 27 August found counts and confidence values moving between runs and six
  findings silently dropped.
- Two of her lines are worth agreeing with out loud because they're the same position as
  this side of the work: *"Sample size is not a multiplier on truth"* and *"An empty
  exposure block is honest; a hand-typed one is worse than nothing."*
