---
source: Figma FigJam board — "QBR EBR Experience Map"
url: https://www.figma.com/board/74ru22mcRfrJKFoyvsnNh0/QBR-EBR-Experience-Map?node-id=0-1
file_key: 74ru22mcRfrJKFoyvsnNh0
pulled: 2026-09-22
pulled_by: Claude Code session (Figma MCP live — whoami = Elizabeth Connor, N-able Technologies enterprise, Full seat, admin)
method: get_figjam failed at root (SSE payload truncation at ~169KB, both with and without includeImagesOfNodes); get_metadata unsupported for FigJam. Fell back to get_screenshot at maxDimension 20000 (16575x20000, 50.7% of the board's native 32691x39448), downloaded, tiled locally with sips, read tile by tile. maxDimension 39448 (native) killed the MCP connection; 20000 is the working ceiling.
transcription_caveat: "[CS: MEDIUM] on exact wording — this is visual transcription from a 50.7%-scale render, not a text export. Structure, section titles, column names, row names and state vocabulary are [CS: HIGH]. Long cell prose may contain OCR-level word errors. Anything quoted to a stakeholder should be re-read at the source."
coverage: PARTIAL — see Coverage ledger at the bottom. Do not read this as the whole board.
---

# Figma board — QBR/EBR Experience Map — what is actually on it

## Headline answer to the handoff's Q1

**The board is not a journey map. It is a service blueprint plus a parts register, and both of them are built around exactly the thing engineering is calling v2.**

The board's own confidence legend, transcribed from the header of the blueprint table:

> "CONFIDENCE IS PER CELL. BLACK / HIGH = traceable to the Technica interview or verified against the acp-core repo. GREY / MED = designed or reasoned, not re-verified. RED / LOW = undesigned, unsourced, or explicitly no-source-exists. The red cells in PRODUCT SYSTEM and INTELLIGENCE are the build questions; the red in the footer is a decision nobody has made yet."

So the board is already claim-tagged per cell, in the same spirit as the `[R]/[D]/[A]/[?]` regime. The red cells are the open build decisions.

---

## Region B — "The UX + Meet Eng Blueprint of EBR"

Sticky note next to it, in Beth's hand: *"-what have we done here? Can we make this experience happen?"*

A full service blueprint with the canonical Adaptive Path lines drawn in as banded rows.

### Columns (the stages)

| # | Stage |
|---|---|
| 0 | Onboard & Customize |
| 1 | Always Current |
| 2 | Nudge |
| 3 | Draft Lands |
| 4 | Confirm & Personalize |
| 5 | The Room — Brains Only |
| 6 | Close & Compound |

### Rows, in board order

- `CUSTOMER ACTIONS [Client]`
- `TOUCHPOINTS`
- **— LINE OF INTERACTION —** (band)
- `VANESSA` — Frontstage account manager, 100% of her time
- `DAVID — FRONTSTAGE` — same person, above the line
- **— LINE OF VISIBILITY — what the client sees and hears —** (band)
- `DAVID` — Backstage technical, 80% of his time
- `SUPPORT PROCESSES [Tools]`
- **— THE KIT ON THE TIME AXIS — 28 parts from THE KIT (section 003:1070), placed against the stages. Part counts are real; which stage each part is picked at is inferred, not sourced. —** (band)
- `PARTS PICKED [of 28]`
- `SHORTS [no source exists]`
- `STALE BY THE ROOM`
- **— THE PICKING SEQUENCE — "Draft Lands" is not one step. Five steps, and a part is not usable until it has been through all of them. Look at column 3: that is the pile-up, in one column, done by one person. —** (band)
- `PICKING · 1 PULL`
- `PICKING · 2 RECONCILE`
- `PICKING · 3 CLEAR`
- `PICKING · 4 SHORT-LIST`
- `PICKING · 5 ASSEMBLE`
- **— SYSTEM REALITY — what's actually built, checked against acp-core code —** (band)
- `PRODUCT SYSTEM`
- **— INTELLIGENCE / JUDGMENT — data + ability to act. Per Olvera's "forecasting gap" (Gamble, Positive Sum, 2026-06-11): AI got radiology image-reading very good; radiologist headcount grew anyway, because interpreting-for-this-patient, communicating, and owning the call were never the automatable part. Same shape here. —** (band)
- `INTELLIGENCE / JUDGMENT`
- **— CHANNEL — undecided at the infrastructure level. acp-core has exactly one app (apps/backend); no frontend exists anywhere in the repo. Apex Bridge is Beth's design tool, not a shipped channel. [CS: VERIFIED — read 2026-08-13] —** (band, red)

### The picking sequence is the held-state architecture, already drawn

This is the single most important thing on the board for the engineering conversation. `PICKING · 1–5` decomposes the stage engineering treats as one pipeline step ("Draft Lands") into five, and states outright that **a part is not usable until it has been through all of them**. Selected cells:

- `PICKING · 3 CLEAR` — *"Subtract the deviations David has already accepted. A part is only CLEARED when a human decision is attached and still holds."* And in the Confirm & Personalize column: *"The rest of it: last cycle's commitments checked — done, not done, partly done, or cannot tell. Sorted by what could get someone fired, not by count."*
- `PICKING · 2 RECONCILE` — *"Settle the disagreements, or record which reading was used. Three N-central checks reports disagree on every estimate; Cloud Capsule and Inforcer disagree on MFA. Re-derive from the records rather than choosing between reports — but nothing enforces this, and choosing is faster."*
- `PICKING · 4 SHORT-LIST` — *"Five bite here — end-of-support dates, warranty, incident history, business goals, competitive signals. Every one needs a human to ask, not a tool to pull."* / *"Shorts stay on the list permanently rather than resurfacing as a surprise every quarter. A system that goes quiet reads as all clear."*
- `PICKING · 5 ASSEMBLE` — *"Paste into the template in the client's own tab order. One template over parts with different half-lives — a draft, not a report."*
- `PICKING · 1 PULL` — *"Around twenty parts, eight separate logins, nothing federates. Columns get deleted by hand out of the million-column N-central export. This is the bulk of the 80%."*

### `SHORTS [no source exists]` — absence as a first-class row

The blueprint carries a dedicated row for parts that have no source at all, and its cells say the quiet part:

- *"None yet — but the shorts are already determined here, by which tools the client is set up in and which they never bought."*
- *"1 — nothing watches for incidents. If one happens this quarter, no part records it and it reaches the EBR only if David remembers."*
- *"None new. The nudge itself is not short of data — it is short of a rule about what counts as risk-worthy."*
- *"5 bite here — end-of-support dates, warranty, incident history, business goals, competitive signals. Every one needs a human to ask, not a tool to pull."*
- *"2 — the standing-acceptance log and last cycle's commitments have no tool behind them. This is the mechanism behind EBR #2 and #3 costing the same as #1."*
- *"1 — the referral and testimonial ask is never drafted, deliberately. An honest empty table beats a scripted ask; the words are Vanessa's."*
- *"2 — the acceptance log and the commitment tracker are both spreadsheets pretending to be a system. Named in THE KIT as the biggest gap in the whole shelf."*

### `STALE BY THE ROOM` — a time-decay row

- *"Nothing stale — the only stage where every part is inside its own tolerance by definition, because nothing has been frozen into a document."*
- *"Nothing yet. The fresh pull is genuinely fresh, which is exactly why it feels solved at this point and is not."*
- *"The clock starts here, and it starts 28 times at once. One draft, one date, twenty different expiry dates underneath it."*
- *"The two Minutes-shelf parts — Inforcer level and the deviation list — are already out of tolerance by the time anyone reviews the draft. Nobody re-pulls them."*
- *"In the room: 2 Minutes-parts and 2 Hours-parts are certainly stale, and 5 Days-parts are stale if the draft is more than a week old. Up to 10 of 28 numbers older than their own tolerance, presented under a single date."*
- *"The archive freezes the staleness rather than resolving it. Next cycle inherits it: the baseline and the drift compounds."*

### `PRODUCT SYSTEM` (the red build-question row)

- *"FSR-B2092 Step 3 already connects the PSA with live validation + data preview — the gateway's real job starts here: credential + tool-discovery, not normalization. [CS: VERIFIED — spec read 2026-08-07]"*
- *"Daily background sync refreshes discovered tools per connected server. 'Connected' means whichever vendor has a live credential — not necessarily N-central/Cove/AaLwin. [CS: VERIFIED — read gateway/sync.py, 2026-08-12]"*
- *"**No distinct role. Nudge logic (tier default + risk override) sits above the gateway, not inside it. [A — undesigned]**" (red)*
- *"The draft's completeness is bounded by which servers have a live credential + discovered tools — a connectivity question before it's a content question."*
- *"No distinct role — this is David and Vanessa's review, not a data pull."*
- *"No system presence — by design. See Intelligence row below."*
- *"Archived EBR becomes the new baseline, but the gateway is read-only in — nothing writes back to N-central/PSA. Matches the corpus finding that only vCIOToolbox does PSA ticket writeback industry-wide."*

### `INTELLIGENCE / JUDGMENT`

- *"Industry is captured as data, but which risk framework applies (NIST/CE vs NIST vs neither) is decided by what applies to the client, not chosen by the product. [*A*] — data selects the framework, judgment confirms the fit."*
- *"Continuous data + continuous claims. The corpus doesn't yet address who looked at an aggregated cross-vendor risk picture, or when. [*A*, commercially competitive gap] — until that audit layer exists, 'always current' data can't responsibly become an 'always current' claim."*
- *"Tier sets the default cadence, but a risk-triggered nudge overrides that regardless. [*A*] — the override is a judgment call about what counts as risk-worthy, not a data threshold."*
- *"The draft is a hypothesis, not a verified claim, until David reads it. Testimony case, 2026-08-30: an 'Email Gap' built from assumed facts got presented as findings instead of flagged as assumptions."*
- *"No spec coverage anywhere for this: was the business owner what the tool would do or would not know [*A*]. The system interrogates the human, because some judgment genuinely cannot be pulled from any system (Stefanie's own admission)."*
- *"No system presence. By definition — the strongest statement of the principle. Everything here is the judgment David's own already describes; nothing here is a data question."*
- *"Whether 'signed' requires a literal counterstep is configurable, driven by the client's risk/compliance profile [*A*] — even closing the loop is a judgment call about risk tolerance, not an automatic action."*

### Footer table under the blueprint (4 rows: TYPE / STATUS / FINDING / NEXT MOVE)

| TYPE | STATUS | FINDING (abridged) | NEXT MOVE (abridged) |
|---|---|---|---|
| Network | **OPEN** | "Partnerships (who connects) and normalization (what happens when ≥2 sources are live) are different levers, not the same one. Craig's line — 'tighten your relationship with Inforcer, without a shadow of a doubt' — reads as a positioning stake, not a connector-build task." | "Coreboarding gap: only vCIOToolbox writes back to a PSA on tickets in the competitive scan [gbr-mbr.ac.at:768] — everyone else stops at report generation. Read/write across PSA+RMM+MDR is an open Network position nothing in the scan holds." |
| Customer Engagement | **OPEN OPTIONS** | "Four options, not a pick: (1) bespoke/status quo, (2) templated-with-variables (current design), (3) client-facing view between EBRs [white space — more of ScalePad/Cognition360/MyTechnicalTools/Bits/CloudRadial do this per the scan], (4) scored/gamified via the existing Inforcer 1-8 golden-tenant baseline." | "Current design only covers option 2. Options 3/4 are undesigned, not rejected — Beth's call which to pursue." |
| Structure | **ABSENT** | "Nobody has named who at N-able organizes to build or own this across the other nine Ten Types categories. MA's decision-owners (Beth, Meaghan, Nicole) are decision-makers, not a delivery org structure." | "Not solved in this pass — naming the gap only." |
| Brand | **WITHHELD** | "Craig's line that a client's cyber attack 'has to be on them, not on us' is a real signal from the primary source — Beth's read: stating it plainly is reputationally ugly." | "Logged as a known input; deliberately excluded from any customer-facing artifact." |

Note the status vocabulary here: **OPEN / OPEN OPTIONS / ABSENT / WITHHELD**. That is a held-state vocabulary, applied to findings, on the board, already.

---

## Region C — "THE KIT — what has to be on the shelf before David or Vanessa starts"

Sticky note in Beth's hand: *"Here - - Can we get all this stuff in a report?"*

A 28-part register. Same per-cell confidence legend as the blueprint, plus: *"every cell carries its own score, so you can see exactly which claim is weak, not just which item. BLACK / HIGH = traceable to a primary source (Craig or Stefanie's transcript) or verified against the acp-core repo. GREY / MED = standard product mechanics or a designed method, plausible but not re-verified. RED / LOW = ... this sourcing, or inserted by an earlier pass — flag these first. GOOD FOR and NOISE RULE are mostly red on purpose: those columns were largely authored, not sourced. Blank cells mean blank ones only for the workshop."*

### Columns

`THE PART` · `PICKED FROM` · `KIT IT — HOW, TODAY` · `HOW BETTER ARRIVES` · `HOW WE KNOW IT'S RIGHT` · `GOOD FOR` · **`STATE`** · **`JUDGMENT ATTACHED`** · `NOISE RULE`

Two of those nine columns are the exact thing the handoff is asking whether anyone modelled: **`STATE`** (what condition is this part in) and **`JUDGMENT ATTACHED`** (what human call is bound to it).

### Sections (the tab structure of the real Technica spreadsheet)

1. `CURRENT CLIMATE — David's (blue)`
2. `RISK REVIEW — David's, and the one that matters, "It's all on the risk review."`
3. `TAB 3 · EMPLOYEE REVIEW · David (blue)`
4. `TAB 5 · HARDWARE · David (blue)`
5. `TAB 6 · TECHNICAL ROADMAP · David (blue)`
6. `COMMERCE / INTELLIGENCE · Vanessa (orange) — this is what she has to actually work for`
7. `TAB 8 · usecure · Vanessa (orange)`
8. `TAB 7 · REVIEWS AND TESTIMONIALS · Vanessa (orange)`
9. `TAB 9 · CLOSE AND COMPOUND · David drafts, the room confirms`

### The parts, by section (as far as read)

**CURRENT CLIMATE:** Device count · Licensed user count · What's deployed, per tool, and how far · Contract lines — item, cadence, quantity · Licenses and renewal dates

**RISK REVIEW:** This client's target level, and where they actually are · The deviation list, minus the ones already accepted · Temporary exclusions nobody put back · Data loss prevention, retention, conditional access — present AND working · MFA coverage · Who hasn't finished training, who clicked a phishing test, who gave up credentials · Devices below the current minimum OS · End-of-support firmware, network kit, unmanaged offices · Anything that went wrong this quarter, and why

**TAB 3 EMPLOYEE REVIEW:** Name and email router · MFA status per person · Training completion and phishing test results

**TAB 5 HARDWARE:** Device list — name, class, OS version, last seen · (more — see coverage ledger)

### `STATE` column — the observed vocabulary

This is the evidence that a state model already exists on the board. Values transcribed:

- `Reconciled`
- `Raw`
- `Cleared for the accepted ones. Raw for the rest.`
- `Short until the notebook exists`
- `Short`
- `Not built. Needs a PSA normalizer.`
- `Not built. Needs Cloud Capsule and Inforcer connectors.`
- `Not built. Needs a usecure connector.`
- `Not built. Needs an N-central connector and reconciliation logic.`
- `No source today. Requires manual lookup or client input.`
- `Not built. Needs Inforcer connector.`
- `Can be drafted from the gap list. A senior technician must clear it before it goes into the room.`
- `No tool provides this. Requires pre-call desk research and Vanessa's relationship knowledge. This is her hour, not David's.`

So: **Raw → Reconciled → Cleared** is a lifecycle, `Short` is the no-source terminal state, and `Not built / No source today` is the connector-gap state. "A senior technician must clear it before it goes into the room" is a hold-for-a-human, written in prose, against a specific part.

### `JUDGMENT ATTACHED` — sample cells

- *"Hours needed once re-derived."*
- *"Note — but somebody has to own offboarding hygiene, because a licensed leaver quietly distorts every percentage below this."*
- *"MSP is the agreement record actually current? They go stale after mid-term changes."*
- *"MSP: which renewal are we actually talking about in the room?"*
- *"MSP had the target. Most clients sit at 5; what client is 5."*
- *"This is where mostly all of David's judgment lives. Each acceptance records who, when, why — and whether the reason had an expiry."*
- *"David: was this exclusion meant to be permanent? His own example is someone taken out of a compliance policy while away and never restored."*
- *"David only on exceptions."*
- *"Note on the number: David on what to do about this exceptions."*
- *"Note on the numbers. Craig on this is a selling moment, not a cleaning one."*
- *"Craig sets the minimum."*
- *"David, and it's a phone call not a query: is that appliance actually still in the shelf? That verification decays on a clock even when no data moves."*
- *"Is this person still in role? Is their licence spend?"*
- *"Is this a deliberate exclusion — service account, shared mailbox — or an active gap?"*
- *"Is this a tenant not-completer by agreed policy, or an active gap the client has not acknowledged?"*
- *"Is that missing device recommissioned, loaned out, or is the agent broken on a live machine?"*
- *"Is this device in daily use, stored as a backup, or effectively dead while still onward on?"*
- *"Is this gap accepted, or an agreed roadmap, or on-course for the client? The answer changes how it is raised in the room."*
- *"What is the priority order, and what is the reasoning the client will actually accept?"*
- *"Which of the gaps or services on David's side maps to where this client is actually going?"*

### `NOISE RULE` — sample cells

- *"Always show the number. Never show the reconciliation, unless it failed."*
- *"Always show. It's the denominator for two findings."*
- *"Always show. First place to look when a Risk Review finding counts off."*
- *"Always show. The roadmap is built on it."*
- *"Always show both clocks. Showing one as if it were the other is the failure."*
- *"Always show. It's the headline."*
- *"THE most important role in the kit. Suppress every accepted deviation. Re-raise forty of them once and he never uses this again."*
- *"Always show a new exclusion. Suppress ones he's confirmed as intended."*
- *"Suppress the ones that are present and healthy. Never suppress an omitted one, and never suppress 'couldn't check'."*
- *"Always show the exceptions by name. Log the Cloud Capsule disagreement quietly — a persistent one usually means something is misconfigured."*
- *"Always show. It's the most actionable thing in the register."*
- *"Always show. Suppress a device David has already accepted as overnight, with no reason."*
- *"Always show. This is the category Craig would be asked about after a breach."*
- *"Always show. Roughly 30% of their clients have been attacked at some point and today an incident reaches the EBR only if David remembers it."*
- *"No ticket counts. No percent status. Nothing that belongs in a standup goes in an EBR."*
- *"Report as a count first. Stop and flag before naming any individual. Attributing a security shortcoming to a named employee in a client document requires the client to have established the basis for that."*
- *"Report the count and percentage. Do not conflate unless David confirms a per-person flag is appropriate for this client."*
- *"Never take one N-central report and move on. Bring the gap, not just the number."*
- *"Do not infer warranty or end-of-support from the OS version or a model-line assumption. Ask for them."*
- *"Want what you recommend and say what you would drop. Do not hide gaps — priorities them."*
- *"No inserted prices or timelines. Do not recommend something the client already rejected unless the underlying fact has changed."*
- *"Technology only comes up as a servant to these goals. If the technical section runs long and this section runs short, the EBR is upside down. A room where the N-central specialist is not asked a single question is three hours in a correctly run EBR."*

---

---

## Region A — "EBR Template — Technica (Redacted) · SRC-U-009"

The real client spreadsheet, redacted, tab by tab. Eight tabs: `1. Agenda` · `2. Current Climate` · `3. Risk Review` · `4. Employee Review` · `5. Hardware` · `6. Tech Roadmap` · `7. Referrals` · `8. Follow Up`.

`3 · Risk Review` header reads **`H:17 · M:4 · L:8 · N:12`** and its categories are: Risk Mgmt · Incident Mgmt · Supply Chain · Engagement & Training · Asset Mgmt · Data Security · User Mgmt · Arch & Config · Vulnerability Mgmt · IAM · Logging & Monitoring. Columns: Category / Threat / Det. / Lik. / Treatment / Notes. This confirms the handoff's note that grading is plain-text H/M/L/N, not RAG.

### Correction to the handoff — RocketCyber

The handoff states RocketCyber "has never appeared in any sources table anyone built." **That is not right, and the board is where it appears.** `2 · Current Climate` has a `Dashboards` row reading verbatim:

> `Halo portal · Rocket Cyber · SLA Met % · Users raised`

So RocketCyber is named on the board, inside the redacted source template, as a Current Climate dashboard input. The sharper, defensible version of the handoff's claim is: **RocketCyber is in the source template but is not a part in THE KIT** — THE KIT's `CURRENT CLIMATE` section has five parts (device count, licensed user count, what's deployed, contract lines, licenses/renewal dates) and none of them is RocketCyber or incident data. The incident part lives in `RISK REVIEW` as *"Anything that went wrong this quarter, and why"*, whose STATE is *"No source today"*, and the blueprint's `SHORTS` row says it outright: *"1 — nothing watches for incidents. If one happens this quarter, no part records it and it reaches the EBR only if David remembers."* [CS: HIGH — read on the board 2026-09-22]

---

## Region D — four artifacts, stacked

### D1 · `EBR / QBR PHASES →` — the experience map proper

Six phases: `1 · Cadence Hits` · `2 · Prep` · `3 · Room Opens` · `4 · Hard Moments` · `5 · Follow-Up` · `6 · Close Loop`.
Rows: `Client Exec — Doing` · `Client Exec — Thinking/Feeling` · `MSP Operator — Doing` · `MSP Operator — Thinking/Feeling` · `Pain` · `Opportunity`.

A sticky overlaps the `1 · Cadence Hits` header carrying a **`FABRICATION RISK — Navigator CRM, needs Beth/Craig to confirm Technica's actual CRM, if any`** flag.

Notable cells:
- `Pain / 2 · Prep` — *"Two scarce people consumed per cycle, not one — and the second one degrades a different system's SLA (the service desk) while doing it [R — Vanessa 25:25, the sharpest finding in the whole corpus per Theory-of-Constraints council testimony]."*
- `Pain / 5 · Follow-Up` — *"Action items that never became tickets — named explicitly as the fastest way to lose a client's faith [R — Stefanie 1:26:33, CS: HIGH — her stated #1 killer]. Fully mechanisable; the chokepoint (writing into a PSA) sits inside software N-able doesn't own — Halo, ConnectWise, Autotask."*
- `Opportunity / 6 · Close Loop` — *"This is the cheapest, highest-leverage step in the entire cycle, and it needs zero AI — just an unskippable habit. Not every step in this process should be automated; this and tiering in Phase 1 are pure discipline."*
- `MSP Operator — Thinking/Feeling / 1 · Cadence Hits` — *"The excuse trap — accepting 'we're a little busy, do we really need to meet?' as a real reason to skip, which Stefanie calls a terrible reason but says MSPs take at face value constantly [R — 0:33:01–0:33:16, CS: HIGH]."*

### D2 · `Cast of Characters`

Four groups. The fourth is the one that matters for the defensibility argument:

- **Frontstage — MSP side:** the delivery lead (Vanessa's role); the account executive; the Head Nerd(s) — Joe Ferla, Lewis Pope, Stefanie Hammond.
- **Backstage — MSP side:** the technician pulled off the service desk; the *"OUR security standard" owner* — *"Unnamed in any source; a real role with no evidence anyone holds it. [?]"*
- **Client side:** the client executive / finance director — *"the thinnest evidence in this whole map"*; the end users / technicians.
- **Offstage — third parties who read the artifact later, not in real time:** the cyber insurer / underwriter (*"per the legal register, no evidence any carrier actually treats it as mitigating [?]"*); **a court, in discovery** — *"the audience Map 5 (backstage half) now treats as [?], not a finding"*; an auditor — Lewis, distinctly: *"'You need those for… an auditor's question, or [to] prove something to a cyber-insurance underwriter. Compliance evidence.' [R — 1:06:41] — and his explicit warning that this evidence should NOT be what's presented at the QBR itself."*

### D3 · `The Maturity Ladder — Kit → Adapt → Autolearn`

| Rung | Beth's question | Lewis's words | systems-maps v-number | Grounded? |
|---|---|---|---|---|
| 1 · KIT | "the best practices kit — let me see what is good" | "my best-practices model — my 'what good looks like'… we want control" [27:06] | v0 — the corpus, built once | [R] — strongly grounded, two independent speakers |
| 2 · ADAPT | "how do I adapt it to my business?" | "that's a generic, philosophical version… you cannot standardize that away" [35:16]; Joe Ferla's 75/25 split [17:41] | v1 — Head Nerd/operator wields the kit, fits the 25% | [R] — strongly grounded |
| 3 · AUTOLEARN | "how does it autolearn me?" | closest: "interactive, able to ask questions about the environment, probe, and have some self-correction built in" [38:45] — ask-once, not learn-over-time | v2 — MSP self-serves; judgment concentrates on certify + hardest fits | **[A] — this rung is Beth's contribution, not the corpus's. Nobody in any source describes a system that gets better at a specific MSP's business over repeated cycles.** |

### D4 · `The Line of Visibility` + `What This Map Does NOT Claim`

Above the line = what the client sees or the operator experiences in the room. Below = handed off to the backstage half already mapped in `ebr-process-map-2026-07-28.md`. Four items named as below-the-line:
- The second scarce person (technician building the risk review, pulled off the service desk) — Map 1
- The "OUR security standard" register measures against — a per-MSP configuration surface nobody has costed — Service Blueprint voice
- The PSA write path for action-item tickets — a chokepoint N-able doesn't own — Map 1, Value Chain voice
- The liability mechanism and its actual (unsubstantiated) legal status — Map 5, **now downgraded to [?]**

`What This Map Does NOT Claim` — four disclaimers, verbatim in substance:
- Built from one mature operator (n=1, vendor-selected) and one trainer's taught framework for the MSP-operator lane. **Not a validated journey for the median MSP.**
- The client-exec lane is the thinnest evidence in the whole map — almost everything about their thinking/feeling is inferred from the MSP-side account of the room, not from talking to a client executive directly. **A named gap, not a filled one.**
- **Cadence is not uniform** — Stefanie: tier and cap at six months; Vanessa: ranges from quarterly to six-monthly to refused entirely; Paul Green (UK): explicitly not quarterly, "overkill" for smaller clients. The six-phase cycle repeats at whatever interval the client's tier warrants, **not on a fixed clock.**

### D5 · Ten Types crosswalk (`TYPE / STATUS / FINDING / NEXT MOVE`)

| Type | Status |
|---|---|
| Process | STRONG |
| Service | STRONG |
| Product Performance | STRONG |
| Product System | VERIFIED |
| Channel | GAP |
| Customer Engagement | OPEN OPTIONS |
| Profit Model | ASSUMED |
| Network | OPEN |
| Brand | WITHHELD |
| Structure | ABSENT |

Process row: *"7-stage spine already designed (0 Onboard & Customize → 6 Close & Compound). **8/11 of this brief.** No action; carry forward."*

---

## Region E — `EBR Coworker — Service Blueprint (detailed, new)`

Subtitle: *"Adaptive Path canonical structure (Customer Actions / Touchpoints / Line of Interaction / Frontstage / Line of Visibility / Backstage / Support Processes). Fidelity: spreadsheet-level precision, not a printed-poster claim of production-readiness — most backstage cells below are honestly 'half-built' or 'never built' today. Customer = fictional end-client 'Fenwick Logistics'; MSP = fictional 'Bracken IT Group'; practitioner = fictional 'Priya' — real names live only in source docs, per CLAUDE.md §9b. Grounded in briefs/ebr-coworker-004-assembly.brief.md, briefs/technica-ebr-runbook-draft-2026-08-21.md, and prototypes/ebr-coworker-004-assembly/ (this session, 2026-08-24)."*

**Columns — and this is the crosswalk engineering needs:**

`Service Moment →` · `Signal Fires` · `Coworker Ingests & Grades` · `Priya Reviews & Chooses` · **`Sign-off Gate`** · `Deliver to Client` · `Client Decides` · `Close & Log Continuity`

**`Sign-off Gate` is a first-class stage on this board, not a v2 annotation.**

Rows: `Customer Actions (Fenwick Logistics)` · `Touchpoints` · — LINE OF INTERACTION — *what the customer can and cannot directly touch* · `Staff Actions — Frontstage (Priya, Bracken IT Group)` · — LINE OF VISIBILITY — *what we choose to show the customer, and when* · `Staff Actions — Backstage (Priya + the coworker)` · `Support Processes`.

The cells that answer the handoff's question:

- `Backstage / Sign-off Gate` — *"If the risk is graded high, nothing can reach Fenwick until Priya, or a named owner, explicitly signs off. Nobody has named this: whether a lower 'medium' risk tier even exists, or what it would let through faster."*
- `Touchpoints / Sign-off Gate` — *"None. The sign-off happens inside the coworker's own workflow, never in front of the client."*
- `Customer Actions / Sign-off Gate` — *"Fenwick doesn't see this step at all. It's an internal checkpoint that happens before anything reaches them."*
- `Backstage / Coworker Ingests & Grades` — *"The coworker reads Fenwick's own 8-tab file plus six other tool exports that Priya still has to paste in by hand, compares it all to what was said last time, and grades every gap red, amber, or green against the NCSC 10 / Cyber Essentials baseline. **Half-built: the grading logic is written down; whether it actually matches Priya's real judgment has never been checked against her real practice.**"*
- `Support Processes / Sign-off Gate` — *"A liability log — a permanent, append-only record — backs up every sign-off, whatever the risk tier turns out to be. This part is solid in concept, though it's never been tested against a real high-stakes call."*
- `Support Processes / Signal Fires` — *"Vertesia (the platform this all runs on) and N-able's own trigger rules together are supposed to decide what counts as a signal — **but nobody has actually written down what a 'signal' is yet.**"*

---

## Region F — `EBR Coworker — N-able Perspective (nested blueprint)`

A **nested double blueprint** — the same journey, told twice, with a seam row where the two meet. Bracken IT Group is simultaneously the service provider (to Fenwick) and N-able's customer.

Columns: `Onboarded to the Coworker` · `Signal Fires` · `Coworker Ingests & Grades` · `Priya Reviews & Chooses` · **`Sign-off Gate`** · `Deliver to Client` · `Client Decides` · `Close & Log Continuity`

Rows, top to bottom:
- `Customer Actions (Fenwick Logistics — Bracken's own client)`
- `Touchpoints (Fenwick-facing)`
- — LINE OF INTERACTION — Fenwick / Bracken
- `Staff Actions — Frontstage · MARCUS (technical practitioner)`
- `Staff Actions — Frontstage · PRIYA (relationship / account lead)`
- — LINE OF VISIBILITY — what Fenwick sees
- `Staff Actions — Backstage · MARCUS (the deep technical / grading work)`
- `Staff Actions — Backstage · PRIYA (coordination, business framing prep)`
- **`THE COWORKER (the software itself)`**
- **`THE RUNBOOK (the judgment / rules it runs)`**
- **`THE SEAM →`** *"The two rows above (Bracken's own backstage work — Marcus, Priya, the coworker, the runbook) and the row below (Bracken as N-able's customer) are the same activity, seen from two different vantage points. This is where the two nested blueprints meet."*
- `Customer Actions (Bracken IT Group — Marcus + Priya, as N-able's actual customers)`
- `Touchpoints (Bracken-facing, into ACP/Harness + Vertesia)`
- — LINE OF INTERACTION — Bracken / N-able
- `Staff Actions — Frontstage (N-able + Vertesia, facing Bracken)`
- — LINE OF VISIBILITY — what N-able chooses to show Bracken
- `Staff Actions — Backstage (N-able + Vertesia teams)`
- `THE COWORKER (running on Vertesia)`
- `THE RUNBOOK (N-able's owned judgment asset)`
- `Support Processes (shared systems underneath)`

### The decisive cells

**`THE COWORKER` / `Sign-off Gate`:**
> *"Holds the client-facing render until sign-off is recorded. **The gate itself is designed, not yet a working control.**"*

**`THE RUNBOOK` / `Sign-off Gate`:**
> *"Defines the rule that high-risk findings need a named person's explicit sign-off. The risk tier itself is unconfirmed, so this rule only has one setting to fall back to today."*

**`THE RUNBOOK` / `Deliver to Client`:**
> *"Defines which findings are allowed to reach the client… **a finding graded Unverified never renders client-facing, no matter what.**"*

**`THE RUNBOOK (N-able's owned judgment asset)` / `Onboarded to the Coworker`** — the 8-agent decomposition:
> *"Before this runs as a real product, N-able has to actually build the pipeline the runbook only describes on paper today. **The runbook's own 8 steps map onto roughly 8 candidate agents, one per job:** an ingestion agent per connected tool, a continuity/delta agent that compares this cycle to last cycle, a grading/judgment agent that applies the runbook's actual red/amber/green rules, a technical-to-business translation agent, a chooser/ranking agent, **a sign-off/guardrail agent**, a rendering agent (dashboard or Excel) and **a liability-log agent**. None of these have been scoped as real, separate pieces of software yet — right now the runbook is one document describing what eight different workers would need to do."*

**`THE RUNBOOK (N-able's owned judgment asset)` / `Sign-off Gate`:**
> *"The sign-off/guardrail agent (above) is what would enforce this automatically — **today it's a rule on paper, not a running check.**"*

**`Touchpoints (Bracken-facing)` / `Sign-off Gate`:**
> *"A sign-off button inside the console — the exact screen for it doesn't exist yet."*

**`THE COWORKER (running on Vertesia)` / `Coworker Ingests & Grades`:**
> *"This is where N-able's side of the MCP-building work lives — the six connectors named in the Bracken-tier row above are N-able's to build, not Vertesia's: 'Vertesia ships zero PSA connectors; every integration is an N-able build.' Each one is its own scoped engineering task, not a single feature."*

**`Support Processes` / `Sign-off Gate`:**
> *"The append-only liability log — the one part of this whole chain that's solid today, no matter which tier is asking."*

---

## Centre column (long stack, top to bottom)

1. **`NONGOAL-002 — Orchestration Depth Options`** — the architecture decision, stated as three options, not a binary. *"Coworker-to-coworker orchestration is NONGOAL-002 in the canonical spec — but the deck's own thesis ('these aren't six products, it's one job') pushes against it. Calculated as three options, not a binary. See briefs/qbr-system-blueprint-2026-08-04.md §10."*

   | Option | What it is | Pros | Cons | Effort |
   |---|---|---|---|---|
   | **A — MVP** (stays inside the nongoal) | QBR Coworker reads other coworkers' Value Ledger/audit entries as structured input. No write-back, no triggering. | Ships without renegotiating the spec; low engineering risk; testable now. | Doesn't deliver the deck's full "one job" thesis; killed continuous-visibility concept stays dead in full form. | Low–med |
   | **B — Event-notify** (smaller ask for Nicole) | Coworker A's completed run emits an event; Coworker B's trigger listens and enqueues its own, independently-approved run. No runtime output-sharing. | Closes part of the demand gap (proactive triggering) without reopening the architecture decision; most under-explored option. | Still not the deck's full operating-system vision; new event-bus concept doesn't exist in the Temporal model today. | Med–ium |
   | **C — Full orchestration** (reopens the nongoal) | Coworkers trigger each other and share state at runtime — the six-coworker system the deck actually describes. | Delivers the deck's validated thesis directly; matches buyer-side demand most closely. | Reopens a closed architecture decision with Nicole; guardrail model wasn't designed for compounding cross-coworker risk chains. | High |

   **Option B's "enqueues its own, independently-approved run" is a queue, named, costed, and marked "most under-explored."**

2. **`Service Blueprint — The Proposed System`** — the 7-stage spine (`0 Onboard & Customize` → `6 Close & Compound`) with a `Customer Thinking/Feeling` row tagged `[A — designed target, untested]`.

3. **`Sources & Links`** — provenance box, transcribed verbatim:
   - `briefs/qbr-system-blueprint-2026-08-04.md` — the full synthesis: repo reuse, definition of good, the ten forks, the MSP tech stack
   - `MSP Superpower Problem.pdf` (Nicole Reineke + Beth, June 2026) — the deck this system's structure is traced back to
   - `acp-core-main-3/specs/004-ai-coworker-registry/spec.md` — the canonical Coworker structural grammar
   - **`acp-core-main-3/specs/_ux/qbr-ebr.ux.md` — the 8 Musts, the job-shop/production-line classification, the riskiest assumptions**
   - `Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md` — DEC-006, the platform-default coworker decision log
   - *"This board, above — the current-state EBR/QBR experience map + full step classification this system automates and reshapes"*

4. **`Service Blueprint — 3x Detail (moment-level)`** — `Stage / Moment / What needs solving / How (as tabled) / Confidence`, ~22 moments across all 7 stages, each with a confidence tag. Header: *"What needs solving, not how — 'how' is left blank/ET) wherever the corpus genuinely doesn't have it… 'get into what we need to solve — how we solve it can leave blanks where you don't know. I can fill them in.' Confidence tags per Band Protocol convention."*

5. **`Overlay 1 — Urlocker's Internal QBR Structure`** · **`Overlay 2 — Korl's Deck Structure`** · **`Overlay 3 — Salesforce's QBR Structure`** · **`Overlay Synthesis — what all three surface, together`** · **`Overlay 4 — ConnectWise's 8 Best Practices + ABCD Tiering`** · **`Overlay 5 — Vault Q1 Shareout (Beth's own real deck, 2018)`**

   **Every overlay uses the same `Class` column, with four values: `Production-line` · `Hybrid` · `Brains-work` · `Gap`.** The job-shop/production-line classification is applied as a working instrument against five independent reference QBR structures on this board. It is not a metaphor here; it is the coding scheme.

6. **`Laissez Faire Fellows — the ideal-fit MSP persona`** — fictional MSP, tech stack deliberately 3 native / 3 cross-vendor (RMM: N-central · MDR: Adlumin · Backup/DR: Cove · PSA: ConnectWise Manage · Identity/MFA: Microsoft Entra ID · Security awareness: KnowBe4), ABCD client base with counts and avg MRR, and a named cast.

7. **`STORYBOARD — A Year of Small Honest Touches`** — 12 panels.

8. **`DETAILED SERVICE BLUEPRINT — ACP-Grounded (real spec citations, acp-core-main-3)`** — `Stage / Customer-Facing Surface / Backstage Mechanism — ACP-Grounded / Real Spec Citation`, 7 stages, with `DEC-006` cited repeatedly in the backstage column.

9. **`STORYBOARD — The Room Is For Brains Only (Tier A → B-tier delta)`** — 11 panels, including `5 · DRAFT LANDS AS A CHOOSER`, `6 · MARCUS ELECTS WHAT ENTERS THE RECORD`, `10 · CLOSE & COMPOUND`, `11 · B-TIER DELTA`.

10. **`SYSTEM BLUEPRINT — take their template, automate what we can, kit the rest, and make Davids able to do more of these`** — the same 7-stage spine, rows including `WHAT HAPPENS TODAY (baseline)`, `WHAT THE MACHINE HANDLES`, `WHAT THE MACHINE HANDLES AND A JUDGMENT`, **`THE BIGGEST RISK / HOLE`** (dark red band), and `WHAT THE MACHINE CANNOT DO`. Three pink callouts above it, one of which reads (approximately) *"THE NEVER PICTURE: THE SYSTEM DOESN'T KNOW WHAT IT CLEAN'S"* — [CS: LOW on that transcription, it needs a re-read at source].

---

## The corroborating find OFF the board — `acp-core-main-3/specs/_ux/qbr-ebr.ux.md`

The board cites this file for "the job-shop/production-line classification." It is on disk at
`acp-core-main-3/specs/_ux/qbr-ebr.ux.md` (867 lines). Read 2026-09-22. It contains, already written:

**The 8 Musts** (behaviours whose absence causes failure). Must 8, verbatim:

> `| 8. No overclaiming | Language check: does client-facing content assert legal/liability-protection language? Flag/fail if so. Treat `Source-Unavailable` the same as `Unverified` — hard-blocked from client-facing output. |`

**Operating principle 1 — Job shop vs. production line**, with the actual 15-tab template classified into Production line / Hybrid / Brains work, and this line:

> *"Maister's leverage-ratio distinction isn't just color on the Cognitive human factor — **it's an architecture principle**: proceduralize what's procedure work, protect senior judgment for what isn't."*

> *"**Automating a row does not relax the Musts** — an auto-drafted risk register still has to pass Must 1 (business-value framing) and Must 8 (no overclaiming) before it reaches the client."*

**Defensibility tiers** — `Measured / Benchmarked / Estimated / Unverified / Source-Unavailable`:

> *"only Measured gets headlined; **Unverified and Source-Unavailable are both hard-blocked from clients. Source-Unavailable applies when a source doc was expected (e.g., a connected platform is offline or the connector returned no data)** — distinct from Unverified, which means the claim was never sourced. `[WA-001 proposed — not built substrate, 2026-07-31 grep-verified]`"*

And the file's own correction, verbatim:

> *"**Correction 2026-07-31:** this section previously claimed the tier was 'already implemented in code.' A full-repo grep of `acp-core-main-3` (orchestrator, qbr-prep-sim pipeline) returns zero hits for the tier vocabulary — what exists in code is `baseline_source` (tenant_configured | platform_default | coworker_reported) only. **The tier is proposed grammar, not built substrate.** `[CS: VERIFIED — grep 2026-07-31]`"*

> *"**a hard gate on the Unverified tier, not a passive warning**, because warning-fatigue research says a visible warning requiring no action reads as [...]"*

### What that means for the argument

`Source-Unavailable` **is** the state for "Ingest hit a source that's down." It is already specified, already defined as distinct from `Unverified`, and already hard-blocked from client output. The repo's own grep says the vocabulary does not exist in code; what exists is `baseline_source` with three values, none of which is a held state.

So the honest framing of the gap is **not** "nobody modelled the held state." It is:

> **The held states are specified. They are named in the UX spec, drawn as a first-class column on the experience map, and decomposed into a sign-off/guardrail agent and a liability-log agent. What the board says about them, in its own words, is "designed, not yet a working control" and "a rule on paper, not a running check." The gap is design-to-build, not design.**

That is the [🟡 Medium] riskiest assumption in the handoff — *"The Figma board may already depict held/exception lanes that engineering just hasn't built yet, which would mean this is a design-to-build gap, not a design gap"* — **confirmed.** It should be promoted out of Medium and made the spine of the conversation.

---

## Coverage ledger — what is NOT yet read

This file is honest about being partial. [CS: UNKNOWN] on everything below.

| Region | 20k-render coords | Status |
|---|---|---|
| B — UX + Meet Eng Blueprint | x3617-4650, y692-2270 | **READ IN FULL** |
| C — THE KIT (28 parts) | x5230-6650, y717-2925 | **PARTIALLY READ** — all 9 section headers, columns, STATE/JUDGMENT/NOISE vocabulary, and ~18 of 28 part names. Remaining: part names and cells for TAB 5 HARDWARE onward, and the full `PICKED FROM` / `KIT IT — HOW, TODAY` / `HOW BETTER ARRIVES` / `HOW WE KNOW IT'S RIGHT` columns. |
| A — EBR Template (Technica, redacted) | x0-1400, y600-2100 | **READ** — all 8 tabs and their field structure. Redacted values are placeholders (`[hostname]`, `[email]`), so there is nothing further to extract. |
| D — four stacked artifacts | x9700-11400, y650-3000 | **READ IN FULL** — phase table (6 phases × 6 rows), Cast of Characters, Maturity Ladder, Line of Visibility + What This Map Does NOT Claim, Ten Types crosswalk. |
| E — EBR Coworker Service Blueprint (detailed, new) | x13980-15270, y670-1560 | **READ IN FULL** |
| F — EBR Coworker N-able Perspective (nested) | x15310-16580, y670-3430 | **READ** — all 20 row labels, all 8 column labels, and the `Onboarded` / `Signal Fires` / `Priya Reviews` / `Sign-off Gate` / `Deliver to Client` columns in full. **Not read: `Coworker Ingests & Grades`, `Client Decides` and `Close & Log Continuity` below the SEAM row** (tiles Fx3/Fx6/Fx9 were cropped, not read). |
| Centre column (10 separate artifacts) | x9700-11500, y4700-20000 | **STRUCTURE READ IN FULL** — all 10 artifacts identified, titled, column schemas captured. **Deep-read:** NONGOAL-002 (all 3 options × 5 columns) and Sources & Links (verbatim). **Not deep-read:** the ~22 moment rows of `3x Detail`, the five Overlay tables' cells, the 12 + 11 storyboard panels, `DETAILED SERVICE BLUEPRINT — ACP-Grounded` cells, `SYSTEM BLUEPRINT` cells. |

**What a next pass should pick up, in priority order:** (1) the `SYSTEM BLUEPRINT`'s `THE BIGGEST RISK / HOLE` row — the only row on the board reserved explicitly for failure modes, and it is unread; (2) the `DETAILED SERVICE BLUEPRINT — ACP-Grounded` backstage column, which carries real `DEC-006` spec citations per stage and is the closest thing on the board to a build contract; (3) region F's three unread columns; (4) the remaining ~10 of THE KIT's 28 part names.

Two "Feedback WANTED" stickies sit above regions B and C. A third, isolated element sits near x9800 y400.

## Reproduction recipe (for the next session)

```bash
# 1. Render (20000 is the working ceiling; native 39448 kills the MCP connection)
#    mcp get_screenshot fileKey=74ru22mcRfrJKFoyvsnNh0 nodeId=0:1 maxDimension=20000
# 2. Download the short-lived asset URL it returns
curl -sSL -o board-20k.png "<asset_url>"
# 3. Tile it (sips is the only crop tool on this machine — no PIL, no ImageMagick)
sips -c <height> <width> --cropOffset <offsetY> <offsetX> board-20k.png --out tile.png
# 4. Read each tile. Tiles up to ~800x760 stay legible at this scale.
# Scale factors: overview(1658x2000) -> 20k render: x10.  20k render -> native canvas: x1.972
```
