---
name: ebr-draft
status: PROPOSED — not installed, not runnable today. See "Why this cannot run yet" at the end.
description: >
  Draft one client's Executive Business Review to the point where a senior technician can clear it
  in under an hour, instead of building it from scratch in three. Written as the forcing function
  for the QBR/EBR system design: if this skill can be written, the system can be specified; the
  lines that need a tool call are the connector build order.
grounded_in: Craig Fisher + David interview, Technica Solutions, 2026-08-07 (SRC-U-009)
frame: production line upstream · kitting in the middle · job shop downstream
---

# ebr-draft

## What this is for

David builds Technica's EBRs. He spends 80% of his time on it, sits in every meeting, and is the
only person senior enough to do it — *"I can't get another engineer to do it because they're not
senior enough."* Craig wants him at 50%.

This skill exists to draft an EBR while David is out, and to be honest about the parts that only
David can do.

## Read this before anything else: this is a job shop, not a production line

Every client is a different job. Ten of a hundred have on-prem servers. Licence levels run 1 to 9.
Inforcer configuration state differs per client and is mid-migration, so "is this client aligned
yet" has a different answer every week. And the work does not get cheaper with client size —
*"it doesn't make a huge amount of difference whether they've got five members of staff or 50
members of staff because the work's still got to be done."*

So this skill does **not** try to mass-produce EBRs. It does three separable things:

1. **Production line** — pull the same facts the same way for every client. Fully mechanical.
2. **Kitting** — lay out the parts *this* client's job needs, and mark which of David's earlier
   conclusions still hold. This is the whole value.
3. **Job shop** — hand the kit to a skilled human. Never automate this part.

The measure of success is **how little setup David has to do**, not how many EBRs get produced.

## Facts and judgments are different things

This distinction runs through everything below.

- A **fact** is re-pullable: "this laptop runs Windows 10 Pro." Cheap, nightly, no human.
- A **judgment** is human and conditional: "those three unenrolled devices are deliberate."
  It stays true until something underneath it moves.

Every judgment you are handed comes with the facts it was decided against. Before you surface
anything, check whether those facts have moved.

- **Unchanged** → the judgment stands. Do not mention it. This is the single most important rule
  in this document.
- **Changed** → surface it again, and show exactly what moved.
- **Expired** → some judgments decay on a clock even when nothing changed. "I confirmed that
  appliance is still in use" has a shelf life. So does "the client accepted this risk."

**If you re-raise forty already-accepted deviations, David abandons this after one cycle and never
comes back.** Suppressing settled judgments is not a nice-to-have; it is the thing that makes the
skill usable at all.

---

## What you must be handed

You cannot get these yourself. Refuse to start without them.

| Input | Why |
|---|---|
| Which client | Everything is per client |
| Read access to their tools, or fresh exports | See the source map below |
| Last cycle's EBR | The commitments to check, and the baseline to diff against |
| Their EBR template | The tab order and field list are theirs, not yours |
| This client's target level | Their definition of good, not a general one |
| The open commitments from last cycle | With owners |
| **David's standing acceptances, with reasons** | Without this you will re-raise settled things and be worse than useless |

---

## Where each thing comes from

Their real stack. Seven places, and the awkwardness is the point.

| Tool | What it gives | What to watch for |
|---|---|---|
| **N-central** | Device and hardware inventory, OS versions, licensing | **Its own reports disagree.** The analytics report, the newer asset report and the old device list return different device sets — newer machines missing from one, older ones present in another. Never take one and move on. Reconcile all three, and say which you used. Also: a scheduled export is not current as of now. |
| **Inforcer** | Tenant alignment against the golden tenant, scored 1–9; deviation alerts | This is where an hour of the three goes. It sees roughly 80% of what matters. Everything it flags needs the question "who accepted this, and why" — which is a judgment, not a fact. |
| **uSecure** | Awareness training: who hasn't finished, who clicked a phishing test and gave up credentials | Report the numbers plainly. Craig treats this as a selling moment, not a shaming one. |
| **HaloPSA** | SLA percentage, client dashboard stats | Do **not** bring ticket counts or individual tickets into the report. See the exclusion list. |
| **Rewst** | Licence export out of the 365 tenant | |
| **Cloud Capsule** | Fast tenant read: guest users, last login | **Known to disagree with Inforcer about MFA.** Do not silently pick one. See the disagreement rule. |
| **The 365 tenant, directly** | Data loss prevention, retention policies, conditional access | Inforcer cannot see these. And a policy can be applied and still erroring — check both that it exists and that it is working. |

### When two tools disagree

Do not average. Do not pick the newer one. Do not pick the one that makes the report tidier.

Record both readings, name both tools, and hand it to David as a decision with the two numbers
side by side. A disagreement is a finding in its own right, and it is often the most useful thing
on the page — it is how a broken agent gets caught. A device can look like it stopped checking in
when the agent is broken and the machine is fine, or the reverse.

---

## The report

Their template, their order. Eight tabs. Do not reorder them and do not add tabs.

**Ownership is colour-coded in their own document:** the orange sections are Vanessa's — she is the
account manager and owns the client relationship. The blue middle is the technical work, and that
is what this skill drafts. **Do not draft Vanessa's sections.** Leave them empty with a note saying
whose they are.

### 1 · Agenda
Client name, meeting contact, date, location, last EBR, frequency, client advocate. Pull the
contact from the PSA, but flag it for confirmation — contact churn is the commonest staleness here
and no tool detects it.

### 2 · Current Climate
Device count, user count, what's deployed and how far. Contract lines and licence renewals.

Two renewal clocks exist and they are easy to confuse: the service agreement and the licence term.
If they differ, say so explicitly. Getting this wrong out loud in front of a client is expensive.

### 3 · Risk Review — the important one
Craig: *"It's the risk review. It's all on the risk review."* And the reason is liability:
*"if a client has a cyber attack, it has to be on them, not on us."*

- Map findings to the **NCSC 10 Steps to Cyber Security**, and note where the client falls short of
  **Cyber Essentials**. That is the framework they use, because they are UK and they sell against
  the government minimum. Do not use a different framework because it is more familiar to you.
- Order by what could get someone fired, not by count. A missed hole in security is the thing
  Craig would be asked about. An incomplete hardware inventory is not.
- **Cut for time.** They do not get through everything: *"usually we have so much to talk about, we
  have to cut it out and just really focus on the important stuff."* Draft the full register, then
  mark your recommended top three and say what you would drop.
- Every finding needs its raw number, which tool it came from, and what date it was true.
  David has to be able to defend it, and Vanessa has to be able to say it out loud.

### 4 · Employee Review
Names, emails, licences, and per-person flags for training and MFA.

**Stop and flag rather than proceeding:** this attaches a security shortcoming to a named person
and puts it in a document going to their employer. Nobody has established the basis for that. Note
it and let a human decide whether the flag is per-person or a count.

### 5 · Hardware
Device, class, OS, warranty.

Two of those four columns have no source in the stack. Warranty terms are not in the RMM, and
manufacturer end-of-support dates are outside knowledge that changes without notice. **Ask for
them; do not infer them.**

### 6 · Technical Roadmap
Gap, recommendation, priority, timeline, cost.

Where possible frame a recommendation as switching on something already paid for rather than a new
purchase. Mark clearly which items are in contract and which need a quote. Do not invent a price.

### 7 · Referrals & Testimonials
**Vanessa's.** Leave it. If it is empty, leave it empty — an honest empty table beats a filled-in
guess.

### 8 · Follow Up Summary
Draft the commitments from the roadmap, and label them clearly as *recommended, not yet agreed*.
Only someone in the room knows what was actually agreed to.

---

## Never put these in an EBR

Craig, directly: *"Things that shouldn't be discussed in an EBR — individual tickets. Number of
tickets. Projects that are going on at the moment. That's got no place to sit in an EBR… This is
not for the minutia."*

Those belong in the daily and weekly conversation with the engineers who own them.

---

## Check last cycle's promises

This is the part Craig says nobody is doing for him: *"We're working off multiple spreadsheets.
We're not utilising AI to say, well, where are the gaps here and have we done what we said we were
going to do?"*

For each open commitment, report one of exactly four states:

- **Done** — and name the evidence.
- **Not done** — still open, unchanged.
- **Partly done** — say what remains.
- **Cannot tell** — and say what would settle it.

Never guess. "Cannot tell" is a useful answer; a wrong "done" is a disaster, because it will be
said out loud to the client.

---

## What you must refuse to do

- Invent a number, a price, or a date.
- Resolve a disagreement between two tools on your own.
- Call something measured when a human asserted it. If the client told you, that is better than
  not knowing and it is still not telemetry.
- Close a commitment you could not verify.
- Re-raise a deviation David already accepted, as though it were new.
- Draft Vanessa's sections.
- Mark this ready to go into a room.

## What you cannot do while he is away, and must hand back

End your output with this block. Keep it short — six items, not sixty. If it runs long, you are
asking questions that belong in the meeting, not in the prep.

```
DAVID MUST ANSWER BEFORE THIS GOES ANYWHERE
1. [the question]           — blocks: [which tab or finding]
2. …
```

The four kinds that always belong here:

- **Physical verification.** Is that end-of-life appliance actually still in the path? A phone
  call, not a query — and it is usually the riskiest device in the estate.
- **Anything the client must answer.** Does the risk policy exist. Were those devices excluded on
  purpose.
- **Whether to raise it at all.** Some findings are politically awkward and that judgment is his.
- **Whether normal is good enough.** You can say a number is normal for a client like this. You
  cannot say that clears a regulated client. Those are different sentences.

---

## Why this cannot run yet

Everything above is writable today. Almost none of it is runnable, and the gaps are specific.
This list doubles as the build order.

**Blocked on a connector — nothing exists for any of these.** No code anywhere names N-central,
Inforcer, uSecure, HaloPSA, Rewst, Cloud Capsule or the 365 tenant. Every source in the map above
would need a tool the platform does not have. *Build order: N-central first — it feeds three tabs.
Then Inforcer, which is the hour.*

**Blocked on the shared notebook.** There is nowhere for a finding to live as a durable, addressable
thing. Without it there is no judgment to check against, no diff, and no commitment to close — so
the three most valuable behaviours in this skill are unavailable. Nobody has named this yet.

**Blocked on there being no such thing as a client.** Everything in the platform is filed under the
MSP. A per-client report has nowhere to attach.

**Blocked on the skill format itself.** Office files are rejected on upload, so this skill cannot
carry their template as an attachment. Runtime file reads cap at 200KB. Scripts are rejected
outright. So this can only ever be instructions — which is fine, but it means every pull has to be
a tool call, and there are no tools.

**Not blocked:** pausing to ask a human and waiting for the answer already works. It exists as the
approval step, waits properly, and gives up after 24 hours. The questions block at the end of this
skill could use it today.

---

## Synthesis

[0% Claude — fill this in]
