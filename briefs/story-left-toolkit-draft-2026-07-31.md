# The Left Toolkit (DRAFT for Beth's red pen)

*How one designer put problem framing in the code — and what that means for the rest of us · July 2026*
*Audience: designers first; then the engineers and PMs who want and need to do this work too.*
*Register: Superpower-deck energy. This is the story of the kit, told to the people it's for.*

---

## 01 · LAURA NAMED IT

Our product head has a phrase for what AI-first product work demands: **shift left.** Understand the user, frame the problem, *before* the machine starts generating plausible-looking product at terrifying speed.

Here's the good news nobody planned: someone on this team has been living left for twenty years.

## 02 · THE LEFT DWELLER

There's a kind of designer the Institute of Design in Chicago produces — the school that inherited the Bauhaus and then had Doblin and Owen teach it that **design is a science: it can be systematized, measured, argued with.**

That tradition spends 80% of its time framing the problem and 20% making the thing. It drives professors crazy. It also ships better, more interesting things — because by the time anything gets built, it's the *right* thing, aimed at a problem that actually exists, for a person who's actually been understood.

The catch, for twenty years: left work didn't scale. It lived in workshops, on post-its, in one strategist's trained judgment. And post-its don't compile. Every team knows the failure mode — brilliant research, framed beautifully… and then the build starts, and the insights quietly fall out of the truck somewhere between the readout and the sprint board.

## 03 · WHAT AI ACTUALLY CHANGES

Not what you'd guess. The models didn't get good at framing problems — that's still human work, and structurally so (more on that below).

What changed is the *physics* of the pipeline:

- **Spec-driven design isn't waterfall. It's everything, everywhere, all at once.** Research, framing, spec, build, and critique stop being phases and become simultaneous, continuously-reconciled files.
- **You can't wait for research to be perfect.** The build won't wait. So the discipline isn't "finish the research" — it's *work with uncertainty honestly*. Lean research, lean product, with the uncertainty labeled instead of laundered.
- **And the big one: research and problem framing can live IN THE CODE.** Not in a deck that dies in SharePoint. In the repo, next to the build, machine-readable, where the agents doing the building have to read it. A mini problem-framer everywhere a builder works.

Which means the old tools — the frameworks, the structured methods, AEIOU, POEMS, the Four Lenses, the value webs — just became *more* valuable, not less. Frameworks are structure, and structure is the native language of these machines. The 1970s–90s methods canon turns out to be executable.

## 04 · THE KIT (what exists, today, in this repo)

**The datadump.** A living, linked evidence index — "if it's not linked, it's not a source." Refreshed weekly, with a human Accept/Edit/Reject gate so nothing writes itself into truth. When yesterday's interview landed, it was filed with provenance in minutes and the whole corpus re-read itself against it overnight.

**ux.md.** The problem framing, as a file the build can't ignore. Three gates — *is the problem framed right, are we building the right thing, are we building it right* — with every claim confidence-tagged. Its sharpest trick is the `confidence_regime` field: the spec *tells the machine how to behave when the evidence is thin*. Build-but-don't-claim-validation. Proceed-on-these-packages, gate-on-that-one. The spec knows what it doesn't know.

**The abductive spreadsheet.** The division of labor made structural. The human reads the evidence and makes the interpretive leap — that's abduction, and it comes from lived expertise no corpus contains. The machine classifies second, from patterns. Both tags get recorded; **divergence between them is the finding.** Neither pretends to be the other.

**Idea Chess and the Council.** The innovation canon, systematized. Concepts get stress-tested adversarially before anyone commits — played against failure modes stage by stage. Briefs get read by five analytical traditions at once (Jobs-to-Be-Done, Service Blueprint, Self-Determination Theory, Disruptive Innovation, Value Chain), each returning testimony, none returning consensus. Voices contradicting each other is the point — that's where the real decision lives, and it's routed to a human, named.

**The prototype pipeline.** Evidence → brief → critique → working HTML → critique again — with a rail on every prototype that says what it's testing, what will hurt you, and what each team should do next. The prototype carries its own epistemics.

## 05 · EVIDENCE IT WORKS (July, receipts attached)

- **Two weeks, nothing → gated spec.** The QBR/EBR concept went from scattered folklore to a footnoted, council-tested, three-gate ux.md — with 26 service moments mapped and an honest build tally (0 built, 1 specced, 17 absent).
- **The kit catches its own errors, on the record.** A prep-time figure that looked triangulated turned out to be one number transmitted teacher-to-student — caught, downgraded. A "2.5× more profitable" stat everyone loved — traced, misattributed, killed. A competitor price anchoring our pricing story — checked against real pricing pages, dead. Fluency doesn't know its own math; the kit greps.
- **It changed an engineer's mind in real time.** Mid-interview with our EBR expert, one of our own engineers: *"my perspective's totally changed."* The research didn't wait for a readout to land — it aligned the room while it was happening. That's shift-left, observed in the wild.
- **It reads a whole corpus overnight.** Yesterday: ~30 files, four parallel coding passes, every prior claim re-interpreted against the newest interview, output as a coded sheet with the human judgment column deliberately left blank. Which brings us to —

## 06 · WHAT THE KIT REFUSES TO DO

This is the part that makes it trustworthy, so it goes in the story.

Every bet line in every synthesis file reads `[0% Claude — fill this in]` — 102 of them across 27 files, all waiting for a human. The machine assembles, traces, stress-tests, and formats. **It does not decide what to build, and it does not make the interpretive leap.** The leap is yours. It comes from having sat in the rooms, shipped the things, watched real users fail — the tacit knowledge that makes a designer a designer.

The kit doesn't replace left-dwellers. It makes left-dwelling **teachable and legible** — which is the whole game:

- **Designers:** the frameworks you already know are now instruments the pipeline plays. Your judgment is the input the whole system is built to protect.
- **Engineers:** the left side of the process finally has an interface — gates, tags, acceptance criteria, in the repo, in your language. You can *consume* problem framing now. You can also challenge it, line by line, because every claim carries its source.
- **PMs:** the uncertainty is labeled. You can see exactly which bets rest on evidence and which rest on assumption — before the sprint, not after the ship.

## 07 · THE INVITATION

The tools are old. Doblin and Owen were right in 1980: design is a science and it can be systematized. What's new is that the systematization finally has a runtime.

The kit is a working example, not a monument. Fork it. Run your own council. Build your own ux.md. Ask what the datadump would look like for *your* product area, and what your version of the abductive column holds.

The left is open. Come dwell.

*[Beth's close, in her words: 0% Claude — fill this in]*

---
*Receipts: briefs/context/acp-ux.md + qbr-ebr.ux.md · datadump (Confluence, AI space) · idea-chess fleet synthesis 07-14 · council testimony 07-30 · axial coding sheet 07-31 · interview transcript 07-30. Claims trace; the sheet has line numbers.*
