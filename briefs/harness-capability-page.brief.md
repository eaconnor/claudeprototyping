---
feature: "Harness capability page — NeoAgent-parity card grid (mock)"
gate: 30
owner: "Beth"
problem_statement: "Laura asked for N-able's agentic capability list to be presented in the format of NeoAgent's capability page. The requester is internal; the stated problem is format parity, not a named user problem."
okr_objective: "A reader can tell, in one screen, which of N-able's agentic capabilities ship today and which are plans."
okr_key_result: "By 2026-09-30, in 5 cold reads by N-able sellers, at least 4 correctly separate shipping from planned capabilities and none mis-state the three flagged mis-sell rows (UC-06, FSN-50711, scheduling)."
counter_metric: "Zero instances of the page or a crop of it appearing in a customer-facing context without its state legend; zero pricing or tier language added to any card."
idea_score: 12
evidence_sources:
  - "crosswalk/neoagent-harness-capability-crosswalk-2026-09-04.md (all sections; primary source of truth)"
  - "prototypes/harness-ebr-v2/design.md (Apex 2.0, Figma fileKey K9CTAzip5gwJmhOQpyfbvM)"
  - "prototypes/harness-ebr-v2/harness-ebr-v2.html (:root token block, per-token provenance)"
  - "briefs/handoffs/luke-n-able-homepage-2026-06-02/scout/02-n-able-homepage-visual-language.md (n-able.com, WebFetch 2026-06-02)"
  - "Beth, session transcript 2026-09-04 (verbatim ask; state-marker and visual-language decisions)"
confidence_regime: PROCEED-PARTIAL
proceed_because: "Beth authorized an honest-state-marker page over a faithful NeoAgent format match, and a Tier 1 concept mock built only from crosswalk-traceable rows is worth more to the Laura conversation than withholding it — but crosswalk §0's three-way 'five use cases' contradiction is a decision only Beth and Nicole can make, so the packages that depend on it do not build."
machine_behavior: "build Package 1 only · every card renders an honest state marker · state never upgraded above its crosswalk state · no capability that is absent from the crosswalk · no pricing, tier, or SKU language · state legend and 'states as of' datestamp visible above the fold · fidelity = Tier 1 Concept · surface [CS:]/state provenance visibly · do not claim validation · Package 2 (five-use-case marquee, Track B runbook cards) BLOCKED pending the Beth+Nicole authority call · accent hex flagged in-artifact for Laura/brand confirmation · Band-authored dark-surface values labeled as Band-authored, never as Apex"
status: "draft"
---

# Harness Capability Page — Three-Gate Brief

## ⚠ NOT READY — verified tag ratio 55%

**Counted, not estimated: 22 [A] + 19 [?] = 41 of 74 total tags = 55.4%.**
Excluding the "What's missing" register (which is [?] by construction): 31 of 64 = 48.4%.

Both numbers are well past the 30% threshold in CLAUDE.md §9. This brief is not a spec. It is an authorized Tier 1 concept mock running on Beth's explicit `proceed_because`, and it must not be read as validation of the page, the card set, or the accent colour. Per the 47% rule, the count is shown line by line in `briefs/harness-capability-page-math-recount.md` — check it rather than trusting this paragraph.

The concentration is diagnostic, not incidental. **The capability facts are strongly sourced (27 [R] + 6 [D] = 45% of tags, nearly all tracing to the crosswalk).** What is missing is everything about the page *as a communication act*: who reads it, where it lives, what "Available" means to them, and which brand accent is correct. The evidence gap is not in the content. It is in the brief.

---

## Gate 1 — Do we understand the customer problem?

**No. Not as briefed.**

The ask, verbatim: *"laura wants our list of capabilities to look like neo-agents. Can you do a mock?"* [R] — Beth, session transcript 2026-09-04.

Read that literally. The requester is Laura, an internal colleague. The stated problem is that our capability list does not look like a competitor's capability list. That is a **stakeholder preference about presentation format**, not a customer problem: no user is named, no user goal is named, no cost to any user of the current format is named [A]. CLAUDE.md §3's anchor requirement applies directly — a taxonomy is not a deliverable, and a card grid is a taxonomy with a shadow. If this page ships without a named user problem attached, it is decoration with good sourcing behind it.

Two things are unknown that would change the entire design, and neither is guessable:
- Who the audience is [?] — MSP prospects, N-able sellers, internal leadership, the board, analysts, and partner/OEM diligence readers each need a different page, and some of them make it dangerous.
- Where the page lives [?] — n-able.com, a sales deck, a Confluence page, or sales enablement. Venue determines whether the state markers survive contact with a screenshot.

### The reframe that would make Gate 1 pass

There is a defensible user problem adjacent to Laura's request, and Beth's own decision this session already points at it: **a buyer or a seller cannot currently tell which of N-able's agentic capabilities exist today** [A]. If that is the problem, the state markers are not a caveat bolted onto a marketing grid — they are the deliverable, and NeoAgent's format is the wrong reference because it has no state affordance at all. This reframe is available but unclaimed. It needs Laura's or Beth's word, not mine.

What the corpus does and does not support underneath that reframe:
- **There is no client voice in the evidence base at all** — *"No client voice exists anywhere in the corpus"* [R] — Confluence 62175674556, via crosswalk §6. Whatever a capability page is optimised for, it is not optimised against anything a client said.
- Demand evidence for the QBR coworker is the strongest in the corpus: ranked #1 in both studies, n=119 drag-rank average 2.90 [D] — Confluence 62151262211, crosswalk §2.
- Ticket triage is the highest-intensity, daily-volume row at 8.3 [D] — Confluence 62302388241, crosswalk §1 row 1 and §6.
- NeoAgent's nine rows are 7-of-9 PSA/service-desk; Track A's eleven v1 templates are 11 UEM/RMM/reporting and **0 PSA** [R] — crosswalk §1 forward-pass verdict.
- Therefore matching their format imports their scoreboard, one on which we overlap on 2 of 9 rows and hold neither cleanly [A]. Format parity is not neutral. It is an argument about what matters, made in someone else's terms.
- Whether Laura wants a nine-row mirror of their page or a presentation of our full inventory is unresolved [?]. These produce different pages and the difference is not cosmetic.

**Gate 1 verdict:** conditional fail [A]. The mock can proceed as a concept artifact under Beth's authorization, but the problem statement in the frontmatter is a relay of a request, not a sourced customer problem, and the brief says so rather than dressing it up.

### The "Available" problem — surfaced, not solved

Beth's settled decision: every card carries an honest state tag, Available / In development / Planned [R] — Beth, session transcript 2026-09-04. Settled, not re-litigated.

But the label *Available* carries an implication the source will not support. To most readers, "Available" means purchasable [A]. The crosswalk says plainly that **nothing is GA — the ladder is Internal → Limited → Public Preview** [R] — crosswalk §1 row 5. So either "Available" means *the code exists and runs*, which is true of eight rows, or it means *you can buy it today*, which is true of none.

What "Available" means to this page's reader, and who signs that definition, is unresolved [?]. Recommendation, not decision: define the marker set against **evidence** rather than sales status, and put the definition in the legend where the reader sees it. If Laura needs "Available" to mean purchasable, the honest card count for that marker is zero and the page needs a different vocabulary.

---

## Gate 2 — Are we making the right thing?

### The counted shape of the inventory

Counted from crosswalk §2, row by row: **8 `does` · 7 `partial` · 11 `planned` = 26 Track A rows** [D]. Crosswalk §3 adds 5 planned Track B rows plus one item explicitly labelled *not a capability*, giving **31 capability rows of which 8 are `does`** [D].

Reported against the ask in good faith: the "~19 of 26 partial or planned" figure is not exactly reproducible from the tables — my count is 18 unbuilt of 26 in Track A, or 23 unbuilt of 31 across both tracks [D]. The 19 is most likely 26 minus the honest seven [A], which is a different operation than counting states. Nobody should quote either number without the table in front of them.

A live inconsistency in the source that the design has to absorb: **the honest seven (§5) includes BYOM, which §2 marks `partial`** — ACP-7 Done backend, ACP-34 Code Review UI, ACP-35 Implementing [R]. So the honest seven is not a strict subset of the built rows. The conservative rule this brief adopts: any row marked `partial` renders as **In development**, BYOM included [A]. If Beth wants BYOM on the Available shelf, that is an override she makes explicitly, not a rounding the build performs quietly.

### The two tracks contradict each other, and the page cannot hide it

Track A (ACP/UEM) is Jira-real and scoped to *"repeatable **UEM** operational tasks"* with PSA work deferred by design — *"UC-04 (Ticket Resolution) and UC-09 (Alert Suppression) remain deferred to v2"*. Track B (Harness/Vertesia) is a commercial commitment with zero Jira tickets — *"3 MSPs running Harness daily, with a launch of a real paid SKU, by Mon 2 Nov 2026"* [R] — Jira FSN-84436 and Confluence 62302388241, crosswalk §0.

And **crosswalk §0 documents an unresolved three-way CONFLICT: three different "the five top use cases" lists, two of them on the same Confluence page** [R]. Ticket triage appears in two of three; employee on/offboarding in one of three.

How the page handles this is a design decision with only one honest answer: **the page must not merge the three lists into a single "our five use cases" marquee** [A]. Either split the grid by track with the tracks named, or omit the marquee entirely and present rows individually with their own states. Which five is "the five" is an authority call for Beth and Nicole, not a research finding [?] — crosswalk §0 says exactly this, and §9b says decision uncertainty is BLOCKED. **This is why the regime is PROCEED-PARTIAL: Package 2 does not build until that call is made.**

### Does a capability page advance the mission?

The mission-fit case is real but it is not the case a nine-card product grid makes. The load-bearing differentiator is the **authoring layer**: MSP-authored runbooks, where an MSP *"turns its own procedures into named AI Coworkers"* [R] — HP01, crosswalk §2 and §5. Their page is nine finished products; ours is a layer underneath. Crosswalk §2 calls it *"different business."*

Which means the format Laura asked for actively works against the strongest thing we have to say [A]. A grid of nine agent cards invites row-for-row comparison on a board where we hold two partial rows. A page about an authoring layer would lead with one thing and explain it. The mock can be built either way; the brief's job is to note that the format choice is a strategy choice wearing a layout's clothes.

### Who this document travels to

A capability page is a document that travels, and this one has an unusually loaded destination list.

- **NeoAgent itself is a live partnership candidate.** N-able's own internship handoff concludes NeoAgent *"emerged as the strongest partnership/OEM candidate"* and the build/buy/partner decision is *"not settled"* [R] — Confluence 62272799086 and HP09, crosswalk §6. A page constructed to out-grid them, circulated externally, prices that conversation [A].
- Whether the page is internal-only or external-facing is unresolved [?], and it changes the risk class entirely — internal, this is a useful inventory; external, it is a public commitment schedule.
- **Pricing is explicitly not set — *"NOT set — do not quote numbers"*** [R] — HP12, crosswalk §3. Card grids attract price columns.
- The governance-resale "Best" tier is a commercial model, not a capability, and crosswalk §3 says *"Keep off a capability page"* [R]. Honour that literally.
- **Alert Flood Suppression is the second-best-ranked demand item at n=119 average 3.23 — and it is in neither track's committed scope** [D] — crosswalk §3. Same shape for ticket triage.
- Demand-ranked-but-unbuilt rows are the highest mis-sell risk on the page, because they are the rows a reader most wants to believe [A].
- The moat-versus-market-size read is **[CS: UNKNOWN], terminal** [R] — crosswalk §6. The page cannot resolve it and must not imply it has been resolved [A].

### Card set the build may ship

Every row and state below is transcribed from the crosswalk section named beside it. **No state is upgraded, no row is added, no row is invented** [R].

**Package 1 — BUILDS NOW.**

| Card | Marker | Crosswalk source |
|---|---|---|
| MSP-authored runbooks (authoring, versioning, clone-and-modify, org-scoped visibility) | Available | §2 `does` · §5 honest seven |
| Customer-configurable MCP server connections + MCP Gateway | Available | §2 `does` · §5 honest seven |
| Org-hierarchy multi-tenancy + per-action authorization | Available | §2 `does` · §5 honest seven |
| Execution monitoring (streamed progress, run history, output capture) | Available | §2 `does` · §5 honest seven |
| Risk-classified script repository (low/med/high, MSP-approved, risk-gated auto-run) | Available | §2 `does` · §5 honest seven |
| QBR / Business Review & Reporting coworker (UC-01) | Available | §2 `does` · §5 honest seven |
| BYOM — bring your own model | **In development** (conservative; §5 lists it in the honest seven, §2 marks it `partial`) | §2 · §5 |
| Patching coworker (UC-02) | Available | §2 `does` |
| Coworker CRUD / assembly | Available | §2 `does` — ⚠ FSN-84440 Coworker operations UI is **Blocked** |
| Script Generator Expert | In development | §2 `partial` |
| HITL approval gate / destructive-action approval / cancel in-flight run | In development | §2 `partial` |
| Autonomy ladder L1→L4 × risk-tolerance ceiling | In development | §2 `partial` |
| Immutable audit trail (CAL) | In development | §2 `partial` — ⚠ schema gap I29 open |
| Report / file generation + email delivery | In development | §2 `partial` |
| Value Ledger | In development | §2 `partial` — ⚠ baselines open and blocking (S35) |
| Remaining Track A planned rows (UC-05, UC-06, UC-07, UC-08, UC-10, UC-A, UC-B, UC-C, scheduling, self-serve onboarding, AI Operator Model) | Planned | §2 `planned` |

**Package 2 — BLOCKED pending Beth + Nicole.** Any "our five use cases" hero or marquee; any Track B card (IR/RCA runbook, Continuous Environment Health, Security Tabletop, Alert Flood Suppression, cross-stack vendor neutrality). Reason: crosswalk §0's three-way conflict, plus §3's own note that Continuous Environment Health is *"the weakest of the five"* and *"Don't lead with it."*

**Never on the page:** governance-resale Best tier, any price, any capability not in the crosswalk, intelligent ticket merge, ticket QA, sentiment analysis (crosswalk §1 rows 7–9: no source anywhere — these are NeoAgent rows we have no answer to, and an empty card beats a wrong one, HP20).

---

## Gate 3 — Are we making the thing right?

**Laura's approval is acceptance, not validation** [A]. If the only test is "Laura likes it," the page has been reviewed by the person who requested the format and by nobody who has to live with the claims.

### Design system — one unresolved conflict, named not buried

- Apex 2.0 brand purple **`#8500cc`** is `[VERIFIED]` as `border/container/active`, node 23635:75103 [R] — `prototypes/harness-ebr-v2/design.md`, fileKey K9CTAzip5gwJmhOQpyfbvM. `--brand-hero:#a90aff` and `--brand-logo:#c046ff` are `[OBSERVED]`, directional only.
- The n-able.com marketing language is dark/light alternating sections, minimalist, icon-driven, with **"vibrant blue as primary accent"** [R] — `briefs/handoffs/luke-n-able-homepage-2026-06-02/scout/02-n-able-homepage-visual-language.md`, WebFetch 2026-06-02.
- **These disagree, and this brief does not silently resolve it.** The build uses purple `#8500cc` because it is the only node-cited, resolved design token in evidence, while "vibrant blue" is a three-month-old visual interpretation of a live marketing site that names no token [A].
- A plausible reconciliation, offered as hypothesis only: n-able.com may render **Apex v1**, whose brand accent *is* blue and whose primary face is Open Sans — `design.md` documents that generation explicitly [A]. If so, both sources are right about different systems, and the question becomes which system a Laura-facing page belongs to.
- **Which accent brand actually wants for this page is unresolved and needs Laura's or brand's confirmation before this artifact leaves the building** [?]. The build must carry that flag in the artifact, not in a chat message.
- **Dark mode is explicitly unspecified in the Apex 2.0 pull** — design.md: *"treat as unspecified rather than inventing"* [R]. Beth's chosen "n-able marketing" language is dark/light alternating, so the page needs exactly the values Apex 2.0 does not have. Any dark surface must be Band-authored and labelled as Band-authored, never presented as Apex-sourced [A].
- Type and shape are settled: Manrope for headings, Inter for body/UI; radius scale 2/4/8/16/999; soft shadows, no Bauhaus hard offsets; no monospace face (v1's mono tokens must not be borrowed across generations) [R] — design.md and the `:root` block in `prototypes/harness-ebr-v2/harness-ebr-v2.html`.

### The mis-sell traps the build must carry

These are not stylistic notes. Each one is a warning the crosswalk raises against a specific row, and each survives into card copy or the card is wrong.

- **UC-06 "Risk-Based Work Prioritization" must not be presented as ticket dispatch.** It prioritises *work by risk*, not tickets by technician workload — different object. FSN-84647 "Scheduling & Coworker Dispatch" (Done) dispatches **coworker runs, not tickets to humans** — do not let it back this row [R] — crosswalk §2 and §1 row 6.
- **M365 on/offboarding: FSN-50711 builds Entra user CRUD as a technician UI in the UEM platform, not a Coworker, and is In Epic Definition.** M365 workloads are explicitly *"not first"*. Browser automation is not native Graph API provisioning [R] — crosswalk §1 row 4.
- **Scheduling cannot be claimed.** Phase 01 is *"on-demand triggering only — no scheduling, no push notifications, no Value Ledger"* [R] — crosswalk §2.
- **Value Ledger baselines are open and blocking** (S35 / FSN-81539 Q-001, research not done), and that number is the first value figure an MSP ever sees. A ledger with invented baselines is the "made-up numbers" failure its own spec names [R] — crosswalk §2.
- **ACP-46 "Quarterly Business Review" (Implementing) has an empty Jira description** — the flagship card's scope is undocumented in the tracker [R] — crosswalk §7.

### How we would know the page works

- **Test 1 — cold sort.** Five N-able sellers read the page cold and sort every card into "ships today" / "does not." Pass is ≥4 of 5 correct with zero mis-statements on the three trap rows [A].
- **Test 2 — adversarial crop.** Screenshot a single card, strip the legend, and ask a naive reader whether it reads as purchasable. This is the test that matters, because it simulates the actual failure mode [A].
- **Test 3 — truth check.** Product and eng confirm every card's state matches Jira on the day it ships. Not a review; a diff [A].
- **Whether we can get real MSP readers in front of it is unresolved** [?] — Confluence 62302388241 names three MSPs committed to running Harness daily by 2 Nov 2026, but their availability for a page read is unknown and this brief does not assume it.
- **Nobody owns state accuracy after ship** [?]. Every marker on this page is true on a date. Without a named owner it becomes a lying document by attrition, not by intent.

### Definition of done

Every card traces to a named crosswalk row; every state is equal to or more conservative than the crosswalk state; the legend and a "states as of 2026-09-04" datestamp sit above the fold; no pricing, tier, or SKU language anywhere; no capability that is absent from the crosswalk; the three mis-sell traps are reflected in card copy; the accent-colour flag is visible in the artifact; Package 2 is absent rather than stubbed [A].

---

## Failure modes

1. **Screenshot drift — the most likely failure by a wide margin.** Someone crops the grid for a deck, the legend does not come with it, and eleven Planned rows become a roadmap commitment in a customer's hands. The state markers are only honest while they are attached [A].
2. **Mis-sell by adjacency.** In a grid styled like a competitor's product page, UC-06 sitting two cards from a shipping capability reads as ticket dispatch regardless of its label. The crosswalk raises this warning explicitly against this exact row [R] — §1 row 6, §2.
3. **Format parity imports their scoreboard.** Overlap across ~26 of our rows and 9 of theirs is **2, both partial** [R] — crosswalk §6. Their strength in our own diligence is PSA/M365 integrations; we claim breadth against the vendor whose breadth we considered buying, while shipping zero PSA connectors.
4. **Two plans presented as a product line.** Crosswalk §5 states it flatly: *"Two plans is not an advantage over one product"* [R]. A card grid flattens `does` and `planned` into visual equivalence — same box, same weight, same authority — and the marker is the only thing resisting that. It is a small label doing very heavy work.
5. **Partnership cost.** If this page reaches NeoAgent while they are the strongest OEM candidate on the table, it has taken a position in a negotiation Beth has not decided to open [A].
6. **The flagship card is the least documented one.** We would lead with the QBR coworker on the strength of its demand evidence, and ACP-46's Jira description is empty [R] — crosswalk §7. The best-evidenced *demand* row is not the best-evidenced *scope* row.

---

## What's missing

Named, not filled. All ten are [?] by construction.

1. The third NeoAgent screenshot row was never transcribed — their page is 9+ rows and we have 9 [?] — crosswalk §1. Resolvable by re-screenshot.
2. **The Vertesia capability chart** — cited per use case but absent from the corpus, and crosswalk §7 calls it the highest-value missing document [?]. It decides whether Track B's rows are real.
3. Nicole's ACP Data Dump `competitors/` folder, 60+ profiles, logged as *"SharePoint not fully pulled"* [?] — crosswalk §7. Human export required; M365 connector gap.
4. The page's audience and venue [?].
5. Authority on the brand accent — purple token versus blue marketing site [?].
6. Card count, and whether Laura wants a nine-row mirror or our full inventory [?].
7. The operative meaning of "Available" to this page's reader [?].
8. Which list is "the five use cases" [?] — Beth + Nicole, crosswalk §0.
9. Who owns state accuracy after ship, and on what cadence [?].
10. Whether Laura has read the crosswalk [?]. If she has not, the mock will be the first time she learns that 23 of 31 rows are unbuilt — and a mock is a poor instrument for delivering that news.

---

## Idea score — 12 / 20

| Dimension | Score | Why |
|---|---|---|
| Problem evidence | 1 / 4 | Stakeholder request; no user problem, no user, no client voice in the corpus at all. |
| Outcome clarity | 2 / 4 | The OKR in the frontmatter is authored by this brief, not inherited. The implicit real KR is "Laura is satisfied." |
| Truth of the differentiation | 3 / 4 | The crosswalk is unusually strong source material and the honest-seven story is real and defensible. |
| Feasibility | 4 / 4 | A static card grid; tokens Figma-verified; a single sourced document as the source of truth. Cheap. |
| Risk-adjusted value | 2 / 4 | Travel risk, mis-sell risk, and OEM-negotiation risk are all live and all named above. |

---

*Sourced against `crosswalk/neoagent-harness-capability-crosswalk-2026-09-04.md`, which states of itself: "Nothing in this document is a decision." Neither is this brief. Tag counts are shown line by line in `briefs/harness-capability-page-math-recount.md` — verify them there rather than trusting the summary.*
