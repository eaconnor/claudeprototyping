# Beginner Guide

You don't need a design background, a research background, or any familiarity with the 44 methods in this library to use this toolkit. You need one thing to prototype and one sentence to say to Claude. This guide gets you from zero to your first prototype, then explains the ideas underneath it in plain language.

If you get stuck on any term, check the [Glossary](#glossary) at the bottom — every piece of jargon this toolkit uses gets defined there.

---

## What this actually does

You have an idea for a feature, a screen, a dashboard — something you want to show someone before it's built. Normally you'd either sketch it by hand, or ask someone to mock it up, or just describe it in a meeting and hope people picture the same thing.

This toolkit does something slightly different: it asks Claude to build you a **working webpage** that shows your idea — and *at the same time*, it forces a set of honest questions to get answered out loud instead of staying invisible:

- What do we actually know here, and what are we just guessing?
- Is this idea any good, and according to whom?
- Where do smart, different ways of thinking about the problem disagree with each other?
- What still needs a human to decide before this goes further?

The output is a prototype that comes with its own honesty built in — you can see, right on the page, what's real and what's a placeholder.

## What you need before you start

1. **Claude Code**, installed and working. If you're reading this file through Claude Code already, you have it.
2. **This folder's `.claude/` directory**, copied into (or merged into) whatever project folder you're working in. That's the only installation step — there's no build, no dependencies, nothing to configure.
3. **An idea.** It can be vague. "A dashboard that shows how a customer's account is doing" is a completely fine place to start. You do not need a spec, a doc, or research already done — the pipeline will ask you what you have and work with it honestly either way.

That's it. No accounts, no API keys, nothing to pay for.

## Your first prototype, step by step

Open Claude Code in your project folder and just say what you want, in your own words:

> "Prototype a simple dashboard that shows a customer's support tickets and how quickly they're getting resolved."

Claude will invoke the pipeline and ask you a handful of quick questions before building anything:

**1. "Lo-fi or hi-fi?"** — almost always say **lo-fi** as a beginner. It means one page, real-looking content, fast to produce. Hi-fi means multiple clickable pages and takes a lot longer to build — save it for later, once you know what lo-fi gives you.

**2. "Who's this for?"** — is this just for you to look at, for a manager or stakeholder, or for an actual customer? This changes tone, not content — an internal version shows gaps candidly; a stakeholder version leads with the decision; a customer-facing version scrubs anything that looks internal.

**3. "Do you have any source material?"** — notes, a doc, a ticket, a transcript, anything. If you say "nothing yet," that's a completely valid answer. The pipeline will lean more heavily on stated assumptions and will *say so* rather than pretending it knows more than it does.

**4. "How much council depth?"** — say **Fast** as a beginner. This affects one later step (see below) and Fast gives you the useful part in two minutes instead of twenty.

After that, you don't need to do anything else. Claude will:

1. Gather whatever source material exists.
2. Write a short brief describing the problem, tagging every claim honestly (more on this below).
3. Score that brief before building anything.
4. Build the actual working prototype — a single HTML file you can open in any browser.
5. Score the finished prototype and show you what changed.
6. Offer to run the "council" — a panel of expert perspectives that stress-tests the idea (you can say no; it's optional and it's your call whether the extra depth is worth the time).
7. Package everything into one folder you or someone else could open cold and understand.

You'll end up with a prototype file you can literally double-click and open in Chrome or Safari.

## Reading the tags: `[R]` `[D]` `[A]` `[?]`

Every claim in the brief the pipeline writes gets a small tag next to it. This is the single most important idea in the whole toolkit, so it's worth sitting with:

| You'll see | It means | Plain example |
|---|---|---|
| `[R]` | **Research** — someone actually talked to real users or observed real behavior | "Customers said in interviews that ticket status is confusing `[R]`" |
| `[D]` | **Data** — there are numbers or logs backing this up | "42% of tickets sit untouched for 3+ days `[D]`" |
| `[A]` | **Assumed** — a reasonable guess, but nobody's checked it | "Customers probably want a status bar `[A]`" |
| `[?]` | **Unknown** — genuinely nobody knows yet | "Whether customers check this daily or weekly `[?]`" |

None of these tags are bad. A brand-new idea is *supposed* to have a lot of `[A]` and `[?]` tags — that's what "early stage" means. The tag isn't a grade, it's a label. The failure mode this toolkit is built to prevent isn't "having assumptions" — it's **hiding them and letting the assumptions quietly become "facts" by the time the prototype looks polished.** A slick-looking prototype makes everyone forget how much of it was guessed. The tags are the memory.

**Rule of thumb for beginners:** if you look at your brief and more than about a third of the tags are `[A]` or `[?]`, that's not a problem — it just means this is a "concept" stage idea, not a "ready to build for real" idea. The pipeline will tell you which stage you're at (see fidelity tiers, next).

## Understanding fidelity tiers

Every brief gets labeled with a tier, which just answers "how sure are we, really?"

- **Tier 1 — Concept.** Mostly exploring. Lots of `[A]`/`[?]` is completely normal here.
- **Tier 2 — Direction.** You've validated some of it and are narrowing in on an approach.
- **Tier 3 — Spec-ready.** This should be mostly `[R]`/`[D]` — you're about to actually build the real thing, so guessing shouldn't still be doing the work.

As a beginner, your first several prototypes will almost all be Tier 1, and that's exactly right. Don't rush to Tier 3 — a Tier 3 label on a brief full of guesses is the one thing this toolkit is specifically designed to catch and call out.

## Understanding the "council" (in plain terms)

When the pipeline offers to "run the council," here's what that actually is: your brief gets read by a panel of **44 different ways of thinking about product ideas** — pulled from real, published fields (business strategy, psychology, anthropology, marketing, and more — every one of them is a real, citable idea; see `frameworks-references.md` if you're curious where any of them come from).

Each one gives its honest read of your idea *in its own lane* — one might notice a pricing problem, another might notice an emotional need your idea doesn't address, another might flag that you're solving a problem a competitor already owns. Two of them might straight-up **disagree** with each other. That disagreement isn't a bug — it's the most useful part. It's the tool finding a real decision that a human (you) needs to make, before it gets expensive to find out the hard way.

The council never picks a winner. It hands you the disagreement and steps back. That's on purpose — see the rules below.

**As a beginner:** run it on Fast mode, read the top few tensions it surfaces, and treat each one as a genuine question worth five minutes of thought, not a bug report to dismiss.

## Reading your handoff packet

At the end, everything lands in one folder. Open `HANDOFF.md` first — it's written to be read cold, by you next week or by someone who's never seen the project. It ends with **three specific decisions** someone needs to make, with names attached if possible. That's the actual point of the whole exercise: not the pretty prototype, but the short, honest list of what to decide next.

## Common beginner mistakes

- **Jumping straight to hi-fi.** It's 3–5x slower and you don't need clickable multi-page flows to test whether an idea is even worth pursuing. Start lo-fi every time.
- **Treating a high `[A]` ratio as a failure.** It's not — it's information. The failure would be *not knowing* your ratio.
- **Skipping the tags when writing your own notes into the brief.** If you add a claim yourself, tag it honestly, even if it's a hunch. Untagged claims are the thing this whole system exists to prevent.
- **Resolving a council tension yourself in the moment, then forgetting to write it down.** If two frameworks disagree and you make a call, say so in the handoff — that's a real decision, and decisions are the actual deliverable.
- **Putting real names or real numbers into a prototype "just this once."** Don't. Use made-up ones. If it wouldn't be fine to see on the front page of a newspaper, it doesn't belong in a prototype, ever.

## Glossary

- **Brief** — the written document (`.brief.md`) that states the problem, tags every claim, and defines what "done" looks like.
- **Prototype** — the actual working webpage (a single `.html` file) that shows the idea.
- **Fidelity tier** — how much confidence the brief claims (Concept / Direction / Spec-ready). See above.
- **Evidence tags** — `[R]` `[D]` `[A]` `[?]`. See above.
- **Council** — the panel of 44 method-perspectives that stress-tests the brief. See above.
- **Cross-talk** — the part of the council output where two perspectives respond to each other directly, instead of just talking past each other.
- **Readiness rail** — the sidebar on the finished prototype that shows what's solid, what's risky, and who (Product/Design/Research/Engineering) needs to weigh in on what.
- **Fidelity banner** — the strip at the top of the prototype that honestly labels what tier it is, so nobody mistakes a rough sketch for a finished product.
- **Handoff packet** — the final folder containing everything: the brief, the prototype, the scores, the council output, and a summary anyone can pick up cold.
- **The 47% rule** — before any number gets quoted anywhere in the output, it gets mechanically double-checked against its source. Named after a real incident where a self-reported statistic turned out to be very wrong when someone actually checked.
- **Synthesis slot** — a spot in the output deliberately left blank (`[0% AI — fill this in]`) because that judgment call belongs to a human, not the tool.

## Where to go next

Once a few prototypes feel comfortable:

- `README.md` — the full picture of what's in this toolkit.
- `docs/methods-library-matrix.md` — the 44 methods and how they cluster, if you want to see what's actually running under "the council."
- `docs/owen-structured-planning.md` — where the underlying structure comes from (a real design-planning methodology from the IIT Institute of Design).
- `docs/frameworks-references.md` — a citation for every single framework used, if you want to go read the originals.
- `MAINTENANCE.md` — for when you want to add your own method to the library, or fix something.
