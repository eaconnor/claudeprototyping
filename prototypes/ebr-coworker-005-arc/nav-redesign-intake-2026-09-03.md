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

### D — Coworker organization model
Note 7. Open question: organize coworkers by MSP/client, by coworker type/category, or both (faceted). This is a data-model decision as much as a UI one — it affects the Coworkers tab, workstream E's company view, and potentially workstream C's visualization axes.

**This is Beth's abductive call (CLAUDE.md §18), not a research question** — it's about how she believes MSP techs will reach for these tools, drawn from her domain expertise, not something a scout pass resolves. Naming the tradeoff rather than deciding it:
- **By coworker type** (Security, Operations, Business reporting — the `FAMILY` array's existing `cat` field, confirmed at `ebr-app.html:531-537`) — matches "what job does this do," weak on "show me everything for client X."
- **By client/MSP** — matches the EBR Coworker's own shape (one coworker instance per client, e.g. "EBR Coworker — Fenwick Logistics") and workstream E's company view, weak on "what coworker types exist at all."
- **Faceted (both, one primary + one filter)** — most flexible, most nav-design work, and the one most likely to actually be needed once E's company view exists alongside the type-based Coworkers list.

### E — Human orientation / company / governance surface
Note 5. A genuinely new nav branch, not a rename of an existing tab: a view of *my company* — what's automated, what's connected, all clients, who has permission to use which coworkers, version history, who's using what.

**Inventory of what this needs to surface (holding this list so it survives the nav redesign, per workstream A):**
- What's automated — which coworkers are active, where
- What's connected — MCP configs / integrations, at a glance
- All clients — the MSP's own client roster, mapped to which coworkers serve them
- Permissions — who on the MSP's team can use/configure which coworkers
- Version history — per-coworker, ties to the existing `HARNESS` product IA's real **Versions** tab (`DESIGN-REFS.md:27` — confirmed real, not invented)
- Usage — who's using what, how often

**Overlap risk to flag now, before F is scoped separately:** "usage" here and the Value Ledger's "by coworker" breakdown (workstream F) are close enough to duplicate each other if designed independently. Decide which surface owns usage-over-time before building both.

### F — Value Ledger metrics
Note 6. Read the actual current content (`ebr-app.html:720-727`) rather than assuming — done as prework, see below.

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
