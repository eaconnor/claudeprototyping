# Nav/IA redesign intake — 2026-09-03

**Source:** Beth's 8 markup-review notes on `ebr-app.html`, given during Step 3 of `NEXT-STEPS-2026-09-02.md`.

**Bradley flag, named plainly:** these notes are not markup review anymore. Step 3 was scoped as "spacing feel, does the rail read right, does the mode toggle behave." What came back is a nav/IA redesign initiative — five of eight notes touch information architecture, not surface polish. That's a legitimate and useful outcome of a hands-on pass, but it means `NEXT-STEPS-2026-09-02.md` Steps 4–7 (landing copy → critic-3 → handoff) are **paused, not superseded** — this doc sits in front of them, not instead of them. Naming this so the sequencing doesn't quietly drift.

**Three-gate check (CLAUDE.md §9):** Gate 1 (do we understand the customer problem?) is not met yet for most of this — these are Beth's design hypotheses from reviewing her own build, not sourced user research. That's fine and expected at this stage, but it means everything below is `[A]` Assumed / design-hypothesis unless marked otherwise. This doc is pre-brief triage, not a spec.

**No rebuild happening.** Per instruction — this is plan + prework only. `ebr-app.html` / `landing.html` are untouched.

---

## The 8 notes, organized into workstreams

**Capital One precedent, added 2026-09-03 (Beth-named, verified live before citing — see scout file bucket 3):** her first framing ("organized around what people want to do/mental models") doesn't match the actual persistent top nav, which is product-centric (Credit Cards · Checking & Savings · Auto · Business · Commercial). What *is* goal-based is a secondary layer on top of that nav — goal-framed CTAs and an explicit product-finder tool matching by self-selected goal rather than product name. Real precedent for **keep the object-based primary nav, add a goal-driven finder layer** rather than replacing nav labels with tasks — directly relevant to A below, and the finder mechanism itself is a third onboarding/matching pattern alongside Lemonade/Maya and Clay (bucket 1 of the scout file) for note 8.

### A — Nav & IA architecture (gates B, C, E)
Notes 2, 3, 4, 5. The central open question: what does the left nav actually look like once the control plane is prominent, several tabs consolidate into visualizations, and new human-orientation surfaces (company/permissions/usage) exist. Nothing here should be drawn until the moodboard (workstream C prework) gives Beth something to react to and workstream D (coworker org model) is decided, since D changes what the nav's primary axis even is.

**Decision only Beth can make:** final nav shape — what's a tab, what's a mode/view inside one visualization, what's promoted vs. demoted.
**Prework I can do now:** hold an inventory of "must be discoverable somewhere" items (below, under E) so nothing gets lost when the shape changes.

### B — Onboarding / first-time UX (fTUX)
Note 1, connected to note 8. Two distinct jobs that may or may not be one flow:
- **"Welcome to HARNESS"** — first-run orientation, wants to be genuinely delightful, not a tooltip carousel.
- **"Bring me your automation ask" / "let me shop"** — note 8's matching flow: either a tech states what they want automated and gets matched to a coworker, or they browse platform coworkers to find a fit. This could live inside onboarding, or be a permanent "add a coworker" entry point that onboarding is just the first visit to.

**Decision Beth should make once moodboard exists:** is shopping/matching part of onboarding, or a standing feature onboarding merely surfaces first.
**Prework:** scout pass kicked off (see Prework section below) — real examples of delightful B2B/admin onboarding, kept separate from generic SaaS-tour patterns.

### C — Visualization system (Manuel Lima ambition)
Notes 3, 4. The bet: Experts / MCP configs / Coworkers / Execution / Value Ledger stop being five separate list-and-table tabs and become one relationship visualization — showing the control plane actually governing, not just naming that it does.

**This already has real prework in the repo — don't re-derive it.** `DESIGN-REFS.md` (2026-08-27) has Beth-curated Manuel Lima sourcing (Visual Complexity, The Book of Trees/Circles), Google's dataviz principles, and — critically — the **three-layers rule**: marketing (landing.html) stays its own visual language, Apex-UI/data-viz can be extra-beautiful and aspirational, but product *chrome and IA* should mirror the real HARNESS eng reality, not a franken-nav invented for a demo. Notes 3/4 are asking to extend the *Apex-UI beauty license* (layer 2) from the register view into the nav/tab structure itself (layer 3's territory). That's a bigger ask than the register viz was, and worth naming as its own decision, not an automatic extension of the register precedent.

**`[WOBBLY]` — flagging before it gets built, not after:** `critic-pass-2.md`'s tested value proposition is "can an MSP tech run a client's EBR through a coworker they configure — and trust it — in the time they have." A beautiful Lima-style relationship graph across five domains is a bigger parsing task than a list, not a smaller one, unless the visualization genuinely makes the governance relationship *faster* to grasp than a table would. Lima's own manifesto (already in `DESIGN-REFS.md`) says the same thing: function and clarity over decorative art, narrative over decoration. Worth Beth weighing explicitly: is this visualization in service of the tested value prop, or in tension with it — before it's built, not discovered at critic-pass-3.

**Prework:** scout pass kicked off for governance/control-plane/permission-graph inspiration specifically (distinct from the register-viz references already in `DESIGN-REFS.md`) — see below.

### D — Coworker organization model + "what's the heart of the product" (the crux, per Beth 2026-09-03)
Note 7, plus Beth's own escalation of this workstream: "this is probably first, need to explore options — it is probably the crux of the experience... need to figure out this control plane schizzle — what's the heart of the product. likely need to consult north star vision thread." Two distinct questions bundled here — kept separate below, because they have different owners and different answers.

**Question 1 — coworker organization axis.** Organize by MSP/client, by coworker type/category, or both (faceted). This is a data-model decision as much as a UI one — it affects the Coworkers tab, workstream E's company view, and potentially workstream C's visualization axes.

**This is Beth's abductive call (CLAUDE.md §18), not a research question** — naming the tradeoff, not deciding it:
- **By coworker type** (Security, Operations, Business reporting — the `FAMILY` array's existing `cat` field, confirmed at `ebr-app.html:531-537`) — matches "what job does this do," weak on "show me everything for client X."
- **By client/MSP** — matches the EBR Coworker's own shape (one coworker instance per client, e.g. "EBR Coworker — Fenwick Logistics") and workstream E's company view, weak on "what coworker types exist at all."
- **Faceted (both, one primary + one filter)** — most flexible, most nav-design work, and the one most likely to actually be needed once E's company view exists alongside the type-based Coworkers list.

**Question 2 — the control-plane question. Consulted the canonical source, not the local file.** "North star vision thread" = the Confluence page **"ACP North Star — the guiding bet"** (space AI, page `62176526400`, Beth Connor + Nicole Reineke, last modified Sep 1 2026 — the living doc, not a point-in-time export). Read directly, `[CS: VERIFIED — Confluence 62176526400]`. This has a real, current, and load-bearing answer — and it complicates the premise of note 2/3 rather than confirming it:

> **"The reframe"** (the page's own section header): *"We are **not** selling a control plane. We are selling the product/service the MSP sells to their clients — vCISO + vCIO at scale. The coworkers are the delivery mechanism; the QBR is where the service becomes visible. The product isn't for the MSP's engineer. It's for the MSP's client relationship."* Tagged on the page itself as `[CS: LOW · [A] strategic framing — the premise of the bet, unvalidated]` — so even the canonical doc holds this as a bet, not settled fact.

**Named tension, not resolved here — this is Beth's call:** `prototypes/ebr-coworker-005-arc`'s own prework (`briefs/vision-synthesis-2026-07-27.md`, a *different*, earlier synthesis pass) reads the Jul 20 "play to win" doc as having promoted the control plane from "seat" to **flagship** — "governed, auditable bundle," with the framing "B governs, A advises." The live North Star page's Critical Questions section still lists this as genuinely open, not resolved either direction: *"Is there standalone willingness-to-pay for governance, or is it the seat under the client-facing and IR/RCA offerings (control plane)?"* — unanswered, gated on Q1/Q2 below, no owner. **So: the two sources in this repo disagree on which way this leans, and the canonical live doc says it's still an open question, not a decided one.** Making control plane nav-prominent (note 2) is a bet on one side of a question the product's own north star hasn't settled. Worth naming before nav work leans into it.

**Two portfolio-gating questions the North Star page puts ahead of everything else here, both open, both unowned, neither resolved as of Sep 1 2026:**
- **Q1** — can N-able legally/contractually pull non-N-able vendors' data into a client-facing artifact? ~40% likelihood, gates QBR/IR-RCA/cross-tool offerings.
- **Q2** — does the *operator* (not just the buyer) want the mechanism (AI drafts, human edits/approves), or just the destination handed over? ~50% likelihood, gates QBR, the governed-control-plane direction, IR/RCA, and ticket-triage. Touched three times since 2026-08-04 (SaaS-CS adjacent evidence, one UK MSP interview SRC-U-009, Beth's own domain read 2026-09-01) — **none of those touches moved the likelihood**, still ~50%, still no owner, still no real operator ethnography run.

**Vision Clash Report — build-state findings on the same page, relevant to sequencing everything above:**
- Day-1 onboarding coworker is Ticket Triage, not QBR — flagged CONFLICT against the vision, which leads with QBR. Open owner call: "sequencing or drift?"
- **No delivery channel exists for QBR/EBR output** — zero frontend anywhere in the actual `apps/` tree, zero outbound path in the gateway code, verified twice by code (2026-08-12 and 2026-09-01). Four candidate channels (SMS/email/portal/PSA-writeback), zero test plans, no owner. Directly relevant to workstream A/E — whatever nav and company-view design happens here has no confirmed way to actually deliver the artifact to a client yet.

### E — Human orientation / company / governance surface
Note 5, plus Beth's 2026-09-03 addition: "what can we learn from Vertesia? what does someone want to do... I need to think through this... need to figure out how to make [seeing my bot army] delightful." A genuinely new nav branch, not a rename of an existing tab: a view of *my company* — what's automated, what's connected, all clients, who has permission to use which coworkers, version history, who's using what.

**Vertesia — this is not just a moodboard question, it may be a build/buy/skin question. Read `briefs/vertesia-brief-2026-08-21.md` (already researched in this repo, 2026-08-21, `[CS: HIGH]` — vertesiahq.com + partner due-diligence docs + Confluence 62302388241) rather than re-scouting it.** Facts that matter here:
- Vertesia is an AI-native content + agent-orchestration **runtime** — it runs, watches, and keeps state for agents, is model-agnostic (100+ models), and its content layer already has **metadata, versioning, permissions, and lifecycle management** built in. Founded by ex-Nuxeo (enterprise content-management) leadership — the DNA is content governance, now pointed at agents.
- **The current partner plan (confirmed, Aug 19 Confluence): Vertesia owns the console/orchestration surface; N-able builds the runbooks and every connector.** If that allocation holds, permissions/versioning/lifecycle for the underlying agents may already exist *inside Vertesia's own console* — workstream E might not be a from-scratch design problem, it might be a "what does HARNESS need to surface from Vertesia's console vs. build itself" problem. **This changes the shape of the question, not just the inspiration for it — flagging before any UI gets drawn.**
- Open and unresolved (`RA-023`, Beth's own 2026-09-01 note): does the judgment layer (C2) stay portable, or does it accumulate inside Vertesia's schema? If the answer is "accumulates," the moat leaks to the platform — this is the load-bearing risk on top of the build/buy question above.
- Not yet answered anywhere in this repo: how Vertesia's content/agent model maps to Apex's own primitives (Customer/Policy/Device/Audit Log) — named as unknown in the brief itself, not fabricated here.

**"What does someone want to do" with the company/bot-army view — genuinely open, not resolved by this pass.** Naming what exists as a technique precedent rather than answering it: `briefs/003-value-ledger-council-testimony-2026-08-03.md` ran a Jobs-to-Be-Done lens against the Value Ledger spec (functional/emotional/social jobs, what gets fired) — the same lens applies cleanly to "what does an MSP admin want from a view of their whole coworker fleet," and hasn't been run against that question yet. Naming it as a candidate next step, not doing it here since it's explicitly the "need to think through this" piece.

**Inventory of what this needs to surface (holding this list so it survives the nav redesign, per workstream A):**
- What's automated — which coworkers are active, where
- What's connected — MCP configs / integrations, at a glance
- All clients — the MSP's own client roster, mapped to which coworkers serve them
- Permissions — who on the MSP's team can use/configure which coworkers
- Version history — per-coworker, ties to the existing `HARNESS` product IA's real **Versions** tab (`DESIGN-REFS.md:27` — confirmed real, not invented)
- Usage — who's using what, how often

**Overlap risk to flag now, before F is scoped separately:** "usage" here and the Value Ledger's "by coworker" breakdown (workstream F) are close enough to duplicate each other if designed independently. Decide which surface owns usage-over-time before building both.

### F — Value Ledger metrics
Note 6, escalated by Beth 2026-09-03: **"back it up, Joe. what is this actually supposed to do? need to go back to the docs."** Correct instinct — my first pass on this workstream (still below, kept not deleted) generated candidate metrics from looking at the prototype's code, not from the actual spec. Went back to the docs, as asked:

**The actual spec's purpose, per `briefs/003-value-ledger-council-testimony-2026-08-03.md` (five-voice council review of `specs/003-value-ledger/spec.md`, the real 261-line feature spec, `[CS: VERIFIED]` — read in full by that prior session):**
- **The named job:** an MSP Admin needs a defensible, credible number to put in front of a client (or their own management) at a QBR — replacing the homegrown spreadsheet/anecdotal ROI claim MSPs already make by hand. This is the spec's own User Story 3, the sharpest statement in the document.
- **A second, less-examined job is bundled into the same feature:** N-able's own product/marketing team wants aggregate metrics across tenants (User Story 4) — a *different* customer's job, technically separated (anonymization, suppression rules) but never named as a second job-to-be-done in the spec itself. The council's JTBD lens flags this as unexamined scope-conflation, not a flaw that's been resolved.
- **Two value categories, tracked separately, with asymmetric trust design:** `script_execution` (the MSP admin sets their own baseline/labor rate — they own the number) vs. `ai_reasoning` (the coworker self-reports its own time-saved estimate, only checked by an "implausible if >8hr" flag) — **and no FR, entity, or dependency in the spec names who reviews a flagged self-report, on what cadence, or what happens next.** A flagged-data category with no closing loop, in a system whose entire output is a client-facing trust number.
- **The chokepoint the spec itself identifies:** the Platform Default Baseline catalog — "whoever controls what 'manual time for this task' means controls the ROI story for every tenant using the default" — named as a Medium-risk dependency with **no owner, no research plan, no timeline**, anywhere in the document.
- **Cross-referenced against the North Star's own Vision Clash Report (read live, see workstream D above): "Value Ledger has no wired producer — fully built, but renders $0 at launch (no runbook writes to it yet)."** Logged as an open sequencing decision on the canonical doc itself, not something this session is surfacing for the first time.

**What this means for "do we have the right metrics":** the current `ebr-app.html` ledger tab (hours/cost/runs, by-coworker breakdown) doesn't yet reflect the spec's actual central mechanic — the `script_execution` vs. `ai_reasoning` split, the "using default" baseline indicator, or anything that visibly builds the credibility the whole feature exists to produce. The candidate-additions list below was generated before this grounding pass and should be read as superseded by it, not added alongside it, until Beth decides which of the spec's actual FRs this prototype needs to represent versus which are legitimately out of scope for a demo.

---

## Prework already done

**Value Ledger audit (`[CS: VERIFIED]` — read directly, `ebr-app.html:720-727`).** Current metrics, exactly as coded:
- Rolled-up: ~14 hours saved, £1,120 cost saved, 9 runs, **"across 4 coworkers"**
- By-coworker breakdown lists only **3** rows: EBR Coworker (~11 hrs · 3 runs), Security Tabletop (~2 hrs · 3 runs), Environment Health Monitor (~1 hr · 3 runs) — which sums to 9 runs correctly, but is 3 coworkers, not 4. **Internal inconsistency, confirmed by reading the code, not assumed** — the header says 4, the list shows 3. Small, but exactly the kind of stat that shouldn't ship unreconciled (47% rule).
- No per-client breakdown, no trend-over-time (only "this quarter" snapshot), no adoption/utilization signal (how many of the 5 platform coworkers have ever run vs. sit dormant), no quality/correction signal (how much of a register needed a human fix vs. was accepted as-drafted).

**Candidate additions for "do we have the right metrics" — `[A]` Assumed, not sourced, offered as options not a recommendation:**
1. Per-client rollup (ties directly to workstream E's company view — same underlying data, one argument for *not* building it twice).
2. Adoption/dormancy — of the 5 platform coworkers, how many have ever been activated. Currently invisible; only active ones show up in the ledger at all, which quietly hides the "we bought this and never turned it on" signal that's usually the most important MSP-facing number.
3. Trend over time, not just a quarter snapshot — the product already has `CYCLES` (Q3'25 → Q3'26, `ebr-app.html:538`) wired for the register's "Over time" view; the ledger doesn't yet borrow that axis.
4. Correction rate — how often a human changed a drafted grade before publishing. This is the honesty-badge thesis's own metric (learned structure, not judgment) and currently isn't measured anywhere, which is a gap given how central that claim is to the product's pitch.

**Scout pass returned (background, read-only, web) — written to `prototypes/ebr-coworker-005-arc/scout/onboarding-and-governance-viz-inspiration-2026-09-03.md`.** Scoped to what `DESIGN-REFS.md` does not already cover. Headline findings:
- **Bucket 1 (onboarding/fTUX):** Superhuman, Linear, Arc, Clay, Notion — mostly secondary-source teardowns, so "delightful" is the write-up author's editorial judgment, not verified UX research `[CS: MEDIUM]` in most cases. **Clay** is the closest existing precedent for note 8's "bring your task, get matched" — an onboarding survey drives an AI-generated first workspace scoped to the user's actual stated use case, not a generic template.
- **Bucket 2 (governance/control-plane viz):** stronger sourcing (mostly vendor's own docs, `[CS: HIGH]`). **Kiali/Istio** is the strongest match for "a control plane visibly governing" — a live service-topology graph with policy state overlaid on the same graph. **Wiz Security Graph**, **AWS IAM Access Analyzer**, and **Spotify Backstage's Software Catalog** are the closest precedents for workstream E's "who has permission to use what" and "what's connected" — typed relationship graphs across identities/resources/ownership, not tables.
- **Named gap, not papered over:** no search turned up an admin/governance dashboard that cites Manuel Lima as an influence — the network-graph *pattern* is real and well-precedented (Kiali, Wiz, Backstage), but the Lima framing for workstream C is Beth's synthesis to make, not something confirmed to exist in the wild. `[WOBBLY]`.
- Okta/Entra ID admin consoles: no permission-graph visualization surfaced for either. Named as a gap, not guessed at.

**Beth-named addition, 2026-09-03: Lemonade's onboarding (Maya).** Added to the scout file, bucket 1, item 7. `[CS: HIGH]` on the mechanism (multiple independent sources agree): Maya asks one question at a time in an ongoing conversation instead of a static form, assesses risk in the background, and issues a personalized quote in under 90 seconds–2 minutes — explains coverage in plain language, can process payment in the same flow. `[CS: MEDIUM]` on the "90%+ of policies sold this way" figure — repeated everywhere but traces back to Lemonade's own PR/investor material, not an independent audit. **This is the strongest single precedent found for note 8** — conversational, one-question-at-a-time intake ending in a ready personalized output, not a form or a template picker. Worth weighing directly against Clay's survey-then-AI-generate mechanism above — same goal, different shape (live conversation vs. async generation from a form).

---

## Beth's whiteboard, 2026-09-03 — primary material, transcribed not designed

Two photos, no caption. Transcribing what's there rather than interpreting it into a solution — this is her own mental model made visible, it doesn't need my synthesis layered on top, only accurate capture plus honest cross-references to what's already sourced elsewhere in this doc. Uncertain reads marked `(my read —?)`.

**Board 1, left column — a daily-briefing home surface (not yet a named workstream — call it G until it has one):**
"What's in my daily briefing?" → a to-do box, split **me — bot army**. Questions under it: "What do I have to do? What do I want bots to do? What can I follow up on — needs my attention b/c bots/other people." Sorted by **important / urgent**. This reads as a literal answer to "what's the home screen" that doesn't cleanly live in any of A–F — it's the surface where a person checks in on their bot army and their own to-do list side by side. Touches B (it's plausibly the thing onboarding delivers you *into*), D, and E all at once.

**Board 1, top — Beth's own working definition of "control plane" (relevant directly to workstream D's "what's the heart of the product"):**
"bot check-in" → **control plane**, defined as three questions: *"what are they doing? how well are they doing it? ★ what's scary?"* — with an arrow out to "how to fix/improve → get better data/insights." This is sharper and more concrete than anything in the sourced docs above (North Star's "the reframe" argues control-plane-as-hero is an unvalidated bet; this sketch defines what a control plane would actually *do* if built — activity, quality, risk, in that order, feeding an improvement loop). Worth holding both: the North Star tension (is control plane the hero or the seat) is a positioning question; this sketch answers a different, also-necessary question (if there is a control plane, what does it check on). They don't contradict each other.

**Board 1, middle — task assignment ("Assign work / Tackle to-do list") — clarified by Beth 2026-09-03, verbatim structure, not a transcription guess:** "Think of it as a decision tree — I have a task as a human. I get to choose if I do it myself, use a bot that I already have, or make a new one. It's a human going through their to-do list or **any planning apparatus.**" So: **Task → {Do it myself · Use an existing bot · Make a new bot}**, and critically, the entry point isn't limited to a single to-do-list screen — it's *any* planning surface in the product. That's a meaningful generalization: this three-way decision could recur wherever a human is looking at work to be done, not just on one dedicated screen — worth carrying into whichever workstream ends up owning it (B most directly, but potentially D/G too, since "any planning apparatus" implies it's a pattern, not a single screen). This is Beth's own version of note 8's "bring your task, get matched" — more specific than any of the scouted precedents (Lemonade/Clay/Capital One) above, because it names the three real outcomes of looking at a task, not just "match me to something." The bots-tell-you-what-they-can/cannot-do detail and the self-selects-vs-you-choose branch (both legible on the board) still stand as written.

**Still open, not yet resolved:** the rating-row read ("ok at this / perfect / meh... 87(?)") — asked, not yet answered. Not blocking anything; noting it stays open rather than silently dropping the question.

**Board 1, bottom — create-bot flow:** define task ("what do you want to do?") → choose best existing runbook or make a new one → **tailor + train** (from excel sheets/past docs) or **train** from scratch → "get it to be what you like" via what looks like a rating mechanism (bot icons tagged "ok at this" / "perfect" / "meh... 87(?)" `(my read —?)`) across numbered steps → "makes 👤+bot workflow happen" → "runs tests & then does it with each loop." Reads as an iterative, rated refinement loop rather than a one-shot config wizard — relevant to workstream B once onboarding/build-a-coworker gets designed.

**Board 2 — the visualization workstream (C), sketched, not just referenced:** a **"Coworker Army"** label over a radial burst of small nodes radiating from a single point (a starburst/network shape, not a Lima tree or circle specifically — closer in spirit to the Kiali/Wiz network-graph precedents in the scout file than to a hierarchy). Below it, a **"factory" floor** — a conveyor/bar icon with a figure, and rows of bars-with-circles suggesting production lines. Separately, **"Kits"** — a sketched toolbox — with an arrow down to "your piece / template / mental model" and an arrow back up to **"get it back — with stuff done, little kits."**

**Genuine cross-reference worth naming, not a reach:** "factory floor" + "kits" + "get it back... in little kits" lines up directly with `briefs/vision-synthesis-2026-07-27.md`'s operations-theory finding (already sourced in workstream D's territory above) — *"the operator wants a **kitted** mechanism — expert-by-your-side — neither full automation (production-line) nor raw templates,"* framed there as job-shop-vs-production-line theory. That synthesis was Claude's from a research session; this sketch is Beth's own hand arriving at the same shape independently, which is a real corroboration worth flagging, not two unrelated things forced together.

**Sticky note, partially visible:** "history/delta / golden tenant / other tenants" — relevant to workstream E's version-history item and workstream D's org-model question: a "golden tenant" (reference/template tenant) vs. "other tenants" implies a canonical-setup-plus-deltas model worth carrying into whichever of D/E gets designed first.

---

## Framing metaphors for the human↔bot-army relationship — brainstorm, 2026-09-03

Requested vague, not developed — ingredients to react to later, not a shortlist or a recommendation. `[N/A — generative brainstorm, not sourced, not evaluated]`. Already in active use elsewhere in this doc/repo: **"coworker"** (product's own naming), **"bot army"** (Beth's whiteboard), **"factory floor" / "kits"** (Beth's whiteboard, corroborates the vision-synthesis kitting thesis above), **"Head Nerd by your side"** (North Star canon). More directions, loosely grouped:

- **Crew / vessel:** captain + crew, bridge/helm, deckhands, "who's on watch"
- **Apprentice / guild:** journeyman, master craftsperson + apprentices, workshop, guild hall
- **Staff / roster:** team roster, bench, lineup, "who's starting today," shift schedule
- **Stable / ranch:** stable of horses, ranch hands, "who's saddled and ready," a herd
- **Orchestra:** conductor + section, players who need cueing, rehearsal vs. performance
- **Garden / ecosystem:** tending, cultivating, what's dormant vs. in bloom, pruning
- **Household / staff:** butler, household staff, "running the house," below/above stairs
- **Squadron / fleet:** wing commander, sorties, ships in dock vs. deployed
- **Lab / experiment:** the bench, active experiments, what's running vs. shelved
- **Newsroom:** editor + reporters, the assignment desk, beats, "who's on this story"
- **Kitchen / brigade:** head chef + line cooks, stations, mise en place, the pass
- **Constellation / swarm:** a swarm with a queen/hub, nodes lighting up, a constellation you're steering
- **Farm hands / harvest:** seasonal hands, what's ready to harvest, fields under cultivation
- **Toolshed:** tools on a pegboard, which ones are out being used vs. hanging ready
- **Classroom:** teacher + students at different levels, who needs help vs. who's ahead

---

## Recommended order, given dependencies

1. **F (Value Ledger metrics)** — contained, doesn't gate on anything else. The audit above is the prework; deciding which candidate additions to build is a small, separate call whenever Beth wants it.
2. **Scout returns** → feeds Beth's moodboard for B and C.
3. **D (coworker org model)** — Beth's call, doesn't need the moodboard, but changes what A and C are designed around. Worth deciding early rather than late.
4. **Beth's moodboard** (her own work, per her note) for B (onboarding) and C (visualization system), now informed by scout material + existing `DESIGN-REFS.md`.
5. **A (nav shape)** — drawn only after C and D have real shape, since it's downstream of both. E's inventory (already captured above) feeds in here too.
6. **Resume `NEXT-STEPS-2026-09-02.md` Step 4** (landing.html copy) whenever Beth wants — it was already flagged as independent of the rest of that file's sequence, and nothing here blocks it.

## Open decisions — Beth's, not mine

- Nav shape (A) — no draft exists yet, waiting on moodboard + D.
- Onboarding vs. standing feature for the "shop for automation" flow (B/note 8).
- Coworker org axis — by type, by client, or faceted (D).
- Whether "usage" lives in the company view (E) or the Value Ledger (F), not both.
- Whether the visualization ambition (C) is in service of or in tension with the tested "trust it fast" value prop — flagged `[WOBBLY]` above, worth an explicit yes/no before build time is spent.
