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

## Coverage ledger — what is NOT yet read

This file is honest about being partial. [CS: UNKNOWN] on everything below.

| Region | 20k-render coords | Status |
|---|---|---|
| B — UX + Meet Eng Blueprint | x3617-4650, y692-2270 | **READ IN FULL** |
| C — THE KIT (28 parts) | x5230-6650, y717-2925 | **PARTIALLY READ** — all 9 section headers, columns, STATE/JUDGMENT/NOISE vocabulary, and ~18 of 28 part names. Remaining: part names and cells for TAB 5 HARDWARE onward, and the full `PICKED FROM` / `KIT IT — HOW, TODAY` / `HOW BETTER ARRIVES` / `HOW WE KNOW IT'S RIGHT` columns. |
| A — left purple tables | x0-1400, y600-2100 | **NOT READ** |
| D — centre-top tables | x9700-11400, y650-3000 | **NOT READ** |
| E | x13950-15200, y650-1600 | **NOT READ** |
| F | x15300-16575, y600-3500 | **NOT READ** |
| Centre column (long stack, ~12 separate tables) | x9700-11500, y4800-20000 | **NOT READ** |

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
