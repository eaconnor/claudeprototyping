---
artifact: ux.md
kind: mini
parent: briefs/context/acp-ux.md
project: QBR/EBR offering (ACP)
owner: Beth Connor
status: DRAFT-updated            # SKELETON | DRAFT | LIVE
drift: DRAFT-updated
confidence_score: SEE §8
built_from:
  - briefs/qbr-ebr-experience-map-2026-07-28.md
  - briefs/ebr-process-map-2026-07-28.md   # council corrections are edits within this file, not a separate doc
  - scout_input/stefanie-hammond-ebr-sources-2026-07-28.md
  - scout_input/qbr-independent-sources-2026-07-28.md
  - scout_input/qbr-competitor-products-2026-07-28.md
  - scout_input/qbr-operator-voices-2026-07-28.md
  - scout_input/qbr-adjacent-and-legal-2026-07-28.md
  - scout_input/SECONDARY-SOURCES-REGISTER-qbr-ebr-2026-07-28.md
  - datadump-manual-human-steps.md
  - briefs/concept-sketches-qbr-2026-07-20.md
  - briefs/idea-chess-fleet-synthesis-2026-07-14.md
  - briefs/acp-word-sketches-four-complete-2026-07-15.md
  - "Executive Business Review Template 1.xlsx" (Stefanie Hammond's own template, supplied by Beth)
  - briefs/acp-offerings-2026-07-14.md
  - scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md
  - Confluence "ACP Secondary Research — MSP QBR/EBR Practice" (AI space, 62226858351)
  - briefs/ebr-service-blueprint-2026-07-29.md
  - scout_input/stefanie-hammond-ebr-followup-transcript-2026-07-30.md   # DIRECT interview — first non-vendor-relayed Stefanie evidence
  - briefs/datadump-axial-coding-2026-07-31.md + .csv                    # whole-datadump axial pass, 141 coded rows
  - briefs/idea-chess-qbr-rerun-2026-07-31.md                            # board re-played vs July evidence, 6 concepts
  - briefs/concept-sketches-qbr-round2-2026-07-31.md                     # 3 new one-pagers + V1-V4/R1-R9 research agenda
  - briefs/story-qbr-chapter-draft-2026-07-31.md                         # human/story layer (Chapter 2) — the door; this file is the truth
last_updated: 2026-07-31 (Stefanie direct interview folded in · Idea Chess re-run · Q3 named · translation-layer principle added · encryption assumption logged)
confidence_regime: PROCEED-FLAGGED
proceed_because: artifact value to team exceeds cost of withholding during research gap — n=1-2 operator evidence is thin but the service blueprint and context are more useful now than after a full study
machine_behavior: build · surface [CS:] tags visibly · fidelity = Tier 1 Concept · do not claim validation · Package 3 proceeds; Package 5 gates on Q1 legal
---

# QBR/EBR — ux.md (mini)

**What this file is, in one breath:** everything we know about building an AI helper for the quarterly business review meeting that MSPs (the IT companies who are our customers) run with *their* customers — who said it, how much we trust it, what's still unknown, and what's already been decided. It's written to be read by both people and AI tools. **Every unusual term is defined in the [Glossary](#glossary--every-term-in-this-file-defined) at the bottom.** If a claim has a bracket tag after it, the tag tells you how much to trust it — the tag tables below explain them all.

**Scorecard** (per Constitution Principle VII, `acp-core-main-3`) — a three-question health check: do we understand the problem? are we building the right thing? are we building it right?

🟢 **Gate 1** (problem framed) — cast enriched with 4A's (Vanessa, Craig, Stefanie Hammond); named sources throughout. **07-31: Stefanie upgraded from vendor-relayed to direct interview; Craig corroborated.**
🟢 **Gate 2** (right thing) — Idea Chess re-run 2026-07-31 against July evidence (6 concepts; Package 3 leads ~2.9%, up ~3.2×) + 5-voice Council (07-30). 2 council divergences tracked — informational, not blocking. **Q3 (liability paradox) now named as a third portfolio gate: it sits under 4 of 6 concepts.**
🟡 **Gate 3** (built right) — `confidence_regime: PROCEED-FLAGGED`, n=1–2 operator evidence. Divergence Log: 3 open (🔴) + 1 resolving (🟡) — DIV-004 routed to Nicole. Q2 (operator study) narrowed by the direct interview, not closed.

Child of [acp-ux.md](acp-ux.md).

## 2026-07-31 session delta — read this first if you last opened this file before August

1. **Stefanie Hammond, direct interview (07-30, 57m, transcript filed + datadump v10).** Her unprompted magic-wand list: populate the risk register · insights not data ("here's the data → the risk → what it means to you → impact and consequences if unactioned") · scripting/talking points in "the love language of CEOs" · red/yellow/green grading. Only one of four wishes saves time; three transfer **confidence** — treat confidence-transfer as a candidate primary job `[CS: VERIFIED — primary]`. Her pedagogy: **manual first, software later**. Her cadence rule: **MRR × risk, tier A/B/C**. Prep-data-gathering named as THE roadblock. She proposed a **three-coworker family** unprompted: EBR · pre-sales first-meeting aggregator · readiness assessment. Data sources for the prep pulls named first-person: N-central, N-sight, Adlumin health report, PSA as aggregator. Caveat held: she is trainer/enablement, not the delivery lead — **Q2 stays open.**
2. **Idea Chess re-run (07-31, `briefs/idea-chess-qbr-rerun-2026-07-31.md`).** Package 3 (native) ~2.9%, board leader, first break moved to *Defend* on the liability gate. Package 5 fell to ~0.36% — cross-vendor aggregation makes N-able itself the holder of competitors' risk data. New pieces: pre-sales aggregator ~2.5% · readiness assessment ~2.6% · practice-companion framing ~2.3% · continuous-visibility layer ~1.35% (dies at Genesis: coworker orchestration is a v1 NONGOAL in the canonical spec). All probabilities [A], directional.
3. **Q3 named.** The liability paradox (auto-drafted register = expanded record of what the MSP knew; no case law tests the signed-register defense) sits under 4 of 6 concepts. The counsel question, sharpened: *does an AI-drafted but human-declined row, in the internal working surface, constitute notice?* Design consequence already in §6: what the system **sees** ≠ what the MSP **documents** — the chooser-shaped draft is the liability architecture, not just trust design.
4. **Translation-layer principle added (§6, Operating Principle 3):** N-able holds the *general* (telemetry meaning, industry trends, base-wide comparison); the MSP holds the *particular* (this client, this room). The draft is chooser-shaped — ranked include/exclude rows, two-register talking points, five-pick-three trends, flagged commercial recs.
5. **New assumption logged (§5):** "encryption resolves the data-legality concerns" — engineering assertion; category error (security control offered for a rights/knowledge question). Q1/Q3 unaffected by encryption.
6. **New artifacts:** axial coding sheet + CSV (07-31) · concept sketches round 2 with V1–V4/R1–R9 verify/research agenda · Chapter 2 story draft (the human layer — the story is the door, this file is the truth).

**Where this research comes from:** Most of it traces to one source — Stefanie Hammond's EBR training content, and Vanessa Chart, an MSP delivery lead who went through Stefanie's program. We searched for independent corroboration and folded in what we found. Where the evidence is still one voice, the doc says so.

## If Beth's not around — how to do things yourself

This file is designed so the work continues without her. The rules that keep it trustworthy:

- **Add new evidence:** save the source (transcript, article, report) into `scout_input/` with a header saying what it is, where it came from, and the date. Add a line to the "ACP Research Datadump" page on Confluence (AI space) — the rule there is *if it's not linked, it's not a source*. Then add it to this file's `built_from:` list at the top.
- **Update a claim:** change the text, change its trust tag if the evidence changed, and **date your change in place** (see the dated notes throughout for the pattern). Never silently delete a number that turned out to be wrong — mark it ☠ with a note, so nobody re-derives the mistake.
- **Quote a statistic:** only after you've opened the source and checked it yourself. We call this the 47% rule (a file once self-reported 47%; the actual count was 80%). AI-written summaries do not know their own math.
- **Two sources agree?** Check whether one *learned it from the other* before counting it twice. (Our prep-time figure looked corroborated; it was one teacher and her student.)
- **Run the next research pass:** the adversarial concept test (Idea Chess) and the multi-framework review (Council) are both repeatable — prior runs in `briefs/` show the exact format; hand the prior file plus your new evidence to a Claude session and ask it to re-run against the same rules.
- **Make a decision:** you mostly don't — you *route*. Anything tagged 🔴 open goes to a product call or a team call (the Owner column says which). What you *can* do alone: add evidence, correct claims, improve tests, build prototypes with fictional data.
- **The one thing never to do:** fill in a line that says `[0% Claude — fill this in]` with AI-generated text, or leave it filled by anyone who didn't own the call. Those are judgment slots. They stay human or they stay empty.

### If you're Will (or any designer)

**Read first:** §1 (the people — Vanessa's 4A's are your design target), §2 (the journey: 26 moments, and the 15-tab template that is the *real* artifact spec), §6 (the Musts, the quality bar, and Operating Principle 3 — the chooser-shaped draft is an interaction spec hiding in prose). The story version of all of this is `briefs/story-qbr-chapter-draft-2026-07-31.md` — faster to absorb, but this file wins where they differ.

**Yours to build now, no permission needed:** the frankenprototype draft-landing screen (fictional dental practice — seed details in the story's MAKE THE UGLY section). Three tests run against it before any production code exists: walk through every §6 task *as Vanessa* and flag each point where she couldn't tell what to do or whether she did it right; show the confirm-gate to 3 people for 5 seconds each ("what does this mean? what would you do next?" — if they can't say, it's a warning, not a gate); count business-outcome vs. technical-metric sentences in a sample draft (Must 1 wants the ratio to lean heavily business).

**Your constraints:** two documents, never a hide/show toggle (Must 6 — a prototype already made that mistake once) · Unverified claims hard-blocked, not warning-labeled · keep it ugly — Tier 1 means reactions, not validation · fictional data only · design tokens live in `.claude/agents/build.md` (brand purple is verified; dark-mode values aren't — flagged there).

**Yours to change:** Gate 1 and Gate 2 sections are design's living judgment. Disagree with a framing? Change it, date it, tag it. That's the file working, not you overstepping.

### If you're an engineer

**Read first:** §6 lower half — the 8 Musts each carry a built-in test, and those tests are your acceptance criteria (most are machine-checkable: ticket-conversion within N days, artifact freshness, internal-vs-export content diff, liability-language flag). Then §5a (the DIV log — four places this research openly disagrees with FSN-83143, each routed) and the 07-31 delta points 2–3 (the current board and Q3).

**How to read the gates:** Gate 3 is your stable layer — build against it. Gate 1/2 are context you need, not spec — expect them to move, don't hard-code them.

**Clearest build targets on current evidence:** PSA ticket writeback (Must 3 — exactly one competitor in the market does this; it's also Stefanie's "#1 killer" when absent) · the dual-surface data model (two artifact objects; a visibility flag on one object is a known failure, not a shortcut) · the hard gate on the Unverified defensibility tier (the tier logic already exists in code over `baseline_source` — it needs wiring, not inventing) · a first Value Ledger producer (the ledger is built and renders $0).

**What to push back on, loudly:** anything asking you to treat an `[A]` tag as fact · any claim that encryption settles the data-legality questions (logged in §5 — it's a security control; Q1 is a rights question, Q3 a knowledge question) · scope that assumes coworker-to-coworker orchestration (v1 non-goal in the canonical spec — the visibility concept dies on exactly this today).

**Contribute back:** when something you build changes the coverage tally (0 built · 1 specced · 8 adjacent · 17 absent), update §2 and §8 and date it. The file is only trustworthy if the build keeps telling it the truth.

**How to read the tags** (every claim carries one — the tag is how much to trust it):

| Tag | Means |
|---|---|
| `[CS: VERIFIED]` | We have the actual document, or confirmed the person's identity ourselves |
| `[CS: HIGH]` | Well-sourced; not personally verified |
| `[CS: MEDIUM]` / `[CS: LOW]` | Partially sourced / sounds right but thinly sourced — treat with care |
| `[R]` / `[D]` | Backed by research (interviews, studies) / backed by data (surveys, telemetry) |
| `[A]` | Assumed — someone's reasonable guess, not yet sourced. Fine to use, never to bet on |
| `[?]` | Unknown; needs research before anyone relies on it |
| `[WOBBLY]` | Single source or narrow tradition — don't treat as consensus |
| `[THIN]` | The honest version of a claim we *want* to be true but can't yet support |

**The section labels** (`Gate 1/2/3` and the bracketed words in headings) sort every section by what kind of thing it's telling you:

| Label | Plain meaning |
|---|---|
| `Gate 1` | Do we understand the problem and the people? (Expect this to keep moving — it's design's living judgment) |
| `Gate 2` | Are we building the *right* thing? (Design-led; engineering weighs in on feasibility) |
| `Gate 3` | Are we building the thing *right*? (Tests, criteria — the stable layer engineering can build against) |
| `[WORLD_MODEL]` | Describes the world as we understand it (people, meetings, money) |
| `[SKETCHING]` | Early concept shapes — directions, not commitments |
| `[RIGHT_THING]` / `[THING_RIGHT]` | Feeds the "right thing?" question / feeds the "built right?" tests |
| `[BRIDGE]` | Connects research to the actual build (specs, features, coverage) |
| `[STANDARDS]` | Rules for how the system itself must behave |
| `PROPOSED` in a heading | An interpretive call — evidence mapped to a framework by us; needs human eyes even where the quote is solid |

Footnotes at the bottom tell you where every claim came from.

---

## 1. The problem, and for whom — `Gate 1` · `[WORLD_MODEL]`

> **TL;DR:** MSPs spend 3–7h per quarter hand-assembling client-facing reviews. The people who do it well are scarce. All the evidence for this comes from one company.

MSPs are expected to run regular business-value conversations with clients — quarterly or semi-annual reviews that prove strategic value and justify the relationship. Prep costs **3–7h/quarter** `[CS: HIGH]`[^1], **~4–5h per session** `[CS: LOW — see note]`[^2] of senior delivery-lead time, assembled by hand each time.

> **On that prep-time figure:** Stefanie Hammond (EBR trainer) and Vanessa Chart (one of her clients) both report 3–5h of prep work. That looks like two independent sources agreeing — but it isn't. Vanessa adopted the whole EBR framework *from* Stefanie's training. They're measuring the same transmitted process, not two operators who arrived at the same number independently. Treat as one directional data point. `[CS: LOW — echo, not triangulation]`[^2b]

---

**The characters — who this is actually about:**

| Who | Role in this story | Evidence quality |
|---|---|---|
| **Vanessa Chart** — Head of Client Delivery, Technica Solutions (UK) | The primary person we designed *for*. Non-technical delivery lead — marketing/languages background, deliberately not an engineer. She runs the EBRs from start to finish. | `[CS: VERIFIED]`[^3] — identity confirmed, in-depth interview |
| **Craig** — Vanessa's business partner / MSP owner | Bought into Stefanie's EBR framework and brought it back to the company. The *buyer* of the process, not the daily user of it. Maps to USER-001 / the parent acp-ux.md alpha persona. | Not verified — composite from corpus `[?]` |
| **Stefanie Hammond** — N-able Head Nerd (~20 years at N-able, ~16 in account management, Head Nerd ~4 years) | Author/trainer of the EBR framework itself — the source Vanessa's whole practice was transmitted from. Not an MSP operator; an N-able enablement role. Named throughout the footnotes but not previously seated in this cast table. | `[CS: VERIFIED]`[^24] — identity and role confirmed |
| **The client exec** — finance director or business owner across the table | "Isn't really interested in the back end." Appears in Vanessa's account only — no client was ever interviewed directly. | `[A]`[^4] — single-operator description of a third party |
| **Nicole Reineke** — N-able PM | Internal to N-able; deep MSP domain expertise. **Not the user — but a pressure-test on whether Vanessa is representative.** Her read should be used to confirm whether we're designing at the right altitude before this brief locks. | `[?]` — call to make |

**Who else probably pulls these reports — now named, not just gestured at** (pulled from
`scout_input/lewis-persona-library-cast-2026-07.md`, the Lewis 26-persona library — DIV-002's
"map the full cast" task, first pass):

| Who (Lewis persona ID) | Why they likely touch this artifact | Evidence quality |
|---|---|---|
| **`am`** — Account manager / vCIO | The clearest named match for the "vCIO or Technical Account Manager" gap flagged in the first pass of this section. Lewis's own card says this role "leads the QBR aligning spend to business goals" — directly the QBR/EBR moment this file is about, from the account-management side rather than the delivery-lead side Vanessa represents. | `[CS: MEDIUM]` — persona-library match, not fielded against this specific offering |
| **`sdm`** — Service delivery manager | Vanessa's own account already names the risk review as "built from service-desk capacity" (footnote 7) — `sdm` is the role that owns that capacity and would feel an EBR cadence that overloads it (Must 7, sustainable backstage load). | `[CS: MEDIUM]` — inferred fit, not interviewed |
| **`owner`** — Owner-operator (small MSP) | The general category Craig instantiates specifically at Technica Solutions. Lewis's card: in a small shop, "the buyer, escalation point, salesperson, and often still a technician" — consistent with Craig's described role here. | `[CS: MEDIUM]` — category-level corroboration of an already-named individual |
| **`intaud`** / **`extaud`** — Internal/External auditor-GRC | Connects directly to Must 8 (no overclaiming legal/liability protection) and the compliance-documentation themes raised independently in the [Joe/Lewis/Julian SME interview](../../scout_input/joe-lewis-julian-interview-2026-07.md) (insurance sub-limits, audit-readiness, data retention). Human counterpart to FSN-83143 USER-005. | `[CS: MEDIUM]` — two independent sources point at the same functional gap, neither fields it directly for QBR/EBR |
| **`vciso`** — vCISO / fractional CISO | If the risk-register narrative (§2, §6) expands for larger/security-mature clients, a vCISO is a plausible co-author or reviewer of that section rather than the delivery lead alone. Not evidenced in this corpus — flagged as a hypothesis. | `[?]` — no evidence yet, named as a plausible role only |

**Adjacent named sources, not personas in the QBR story but load-bearing on its market/world
context:** Joe, Lewis, and Julian ([SME interview, filed 2026-07-30](../../scout_input/joe-lewis-julian-interview-2026-07.md)) — their discussion of insurance documentation-as-claim-prerequisite and MSP liability/service-scope retreat directly informs Must 8's "no overclaiming" stance. They are sources, not cast members of the EBR meeting itself — don't conflate the two.

**Bias flag:** All operator evidence for Vanessa/Craig is n=1, from a vendor-selected reference customer. Directional only. `[WOBBLY]`[^5] The Lewis-persona additions above are a different kind of evidence — a well-constructed persona library, but per its own filing note `[CS: MEDIUM]` until Lewis's sourcing methodology is confirmed.

**4A's treatment — Ambitions / Attitudes / Actions / Anxieties** (basic pass, 2026-07-30; `[?]` where unsourced rather than invented):

| Persona | Ambitions | Attitudes | Actions | Anxieties |
|---|---|---|---|---|
| **Vanessa Chart** | Run EBRs confidently, solo, and turn them into pipeline — her first EBR produced a referral and a new client `[CS: HIGH — n=1]`[^12]. | Deliberately non-technical; prefers business-value framing over technical metrics/graphs `[CS: HIGH]`[^9]. Believes in asking for referrals without hesitation `[CS: HIGH]`[^35]. | Builds the risk review from service-desk capacity, schedules into the PSA queue, converts action items to tickets, keeps internal notes separate from the client-facing document `[CS: HIGH]`[^7][^32]. | `[THIN]` — the "needs confidence to run the room solo" read comes from a hired coach's third-party diagnosis (Raybould, "curse of the expert"), not Vanessa's own first-person admission. No source has her naming what she personally worries about going wrong in an EBR. |
| **Craig** | `[?]` — unsourced. Only known: brought Stefanie's EBR framework back to the company, which suggests a growth/credibility motive, but that's inference `[A]`, not his own stated ambition. | Buyer-not-user framing implies a strategic/ROI attitude toward the practice rather than a process one `[A]` — not directly evidenced. | Adopted and installed the EBR framework company-wide `[CS: MEDIUM — composite from corpus]`. Whether he personally attends client EBRs is unknown. | `[?]` — entirely unsourced. |
| **Stefanie Hammond** | Scale the EBR framework across N-able's partner base; elevate partner case studies (the Vanessa interview is one) as enablement proof points `[CS: MEDIUM]`[^24][^25]. | Structured, framework-driven; teaches EBRs as "a conversation with a side serving of structure," business-outcome-first `[CS: HIGH]`[^26][^27]. | Delivers Head Nerd boot camp training, authors the EBR template `[CS: VERIFIED — Executive Business Review Template 1.xlsx]`. | `[?]` — no first-person material on her own concerns; her role is trainer/source, not a studied subject. |

## 1a. Problem framing — the friction, the design question, why this solution — `Gate 1/2` · `[SKETCHING]`

> **TL;DR:** Two candidate branches (N-able-native vs. cross-vendor). The differentiation claim in the positioning copy is also an architectural fork in the data model.

Three fields anchor the offering's identity: what problem-pressure exists (the friction), what question guides the design, and why this solution over alternatives. Carried verbatim from the 2026-07-20 Idea Chess pass — they were already written. (Underlying frameworks, if you want them: Jon Kolko on wicked problem framing; Geoffrey Moore's positioning template. You don't need to know either to read this section.)

**Package 3 — Client-Facing Proof, N-able Native:**
- **The friction:** MSPs on consolidated N-able stacks are trying to get quarterly proof of
  protection in front of clients, but the cross-N-able product integration (N-central + Cove +
  Adlumin have different data models) is unscoped, and demand for the N-able-*native* job was
  never independently measured — the research asked about cross-vendor.[^63]
- **The design question:** How might we deliver a client-ready QBR for consolidated N-able-stack MSPs in
  one engineering cycle — no normalization acquisition — as the foundation for eventually
  expanding to cross-vendor scope?[^63]
- **Why this solution:** For N-able-stack MSPs who want to stop assembling QBRs by hand,
  Client-Facing Proof (Native) produces a client-ready, defensibility-tagged quarterly review from
  first-party telemetry in under 20 minutes. Unlike the cross-vendor branch, it needs no
  normalization and carries a legally cleaner data position — but is limited to clients on an
  N-able stack.[^63]
- **N-able superpower:** First-party Adlumin + Cove + UEM telemetry — here the telemetry *is* the
  product, not a prerequisite to it. "Measured" is defensible on day one with no external data
  dependency. Real but narrow.[^63]
- **The bet:** `[0% Claude — fill this in]`

**Package 5 — Client-Facing Proof, Cross-Vendor:**
- **The friction:** MSPs are trying to prove strategic value every quarter, but the evidence is
  scattered across vendor tools that don't speak to each other — and the most defensible
  cross-vendor comparison is legally unavailable through competitors' data policies.[^64]
- **The design question:** How might we let an MSP walk in and prove, in numbers the client trusts, that
  the invisible work kept them safe across their *whole* stack — without spending a day
  hand-building it, and without needing data we have no right to?[^64]
- **Why this solution:** For security-focused MSPs assembling quarterly reviews by hand,
  Client-Facing Proof (Cross-Vendor) generates a client-ready, evidence-tagged narrative across
  the full vendor stack in under 20 minutes. Unlike manual assembly or single-vendor dashboards, it
  delivers cross-vendor normalized evidence with built-in defensibility tiering.[^64]
- **N-able superpower:** First-party full-stack telemetry (Adlumin + Cove + UEM) is the only
  normalized source N-able controls — "Measured" is defensible from day one for N-able-native
  clients *without* any acquisition. The acquisition/partnership extends that moat across
  competitors' data. The superpower is the telemetry stack, not the AI on top.[^64]
- **The bet:** `[0% Claude — fill this in]`

**Why this matters for design/eng specifically:** the "Unlike..." clause in each Value prop is the
differentiation claim eng's data model has to actually support (first-party-only vs. normalized
cross-vendor) — it's not just positioning copy, it's an architectural fork between the two
packages. Neither **bet** line is filled — that's Beth's, not this file's.

## 2. Journey / orienting map — `Gate 1` · `[WORLD_MODEL]` `[BRIDGE]`

> **TL;DR:** The full EBR spans 26 service moments across 7 stages. Almost none are built yet: 0 built, 1 specced, 17 absent. The primary source is Stefanie Hammond's actual 15-tab EBR template — a real artifact, not a description of one.

- Frontstage: [qbr-ebr-experience-map-2026-07-28.md](../qbr-ebr-experience-map-2026-07-28.md) —
  six-phase, two-actor-lane experience map (client exec / MSP operator).
- Backstage: [ebr-process-map-2026-07-28.md](../ebr-process-map-2026-07-28.md) — corrected per
  council pass 2026-07-28 (false-independence claims fixed, liability section downgraded to `[?]`).
- **Reconciled 2026-07-29** against canonical service-blueprint terminology (Customer Actions /
  Line of Interaction / Frontstage-Backstage Staff Actions / Line of Visibility / Support
  Processes, per "A Guide to Service Blueprinting," Flowers/Miller) — see
  `briefs/ebr-service-blueprint-2026-07-29.md`. 26 service moments across 7 stages (Entice ·
  Enter · Schedule · Prep-Assemble × 8 data pulls · Prep-Judge · Live Meeting × 12 moments ·
  Follow-up · Extend). Build coverage check: **0 built, 1 specced, 8 adjacent, 17 absent**.
- **The actual artifact spec, in hand as of 2026-07-28:** Stefanie Hammond's own EBR template
  (`Executive Business Review Template 1.xlsx`, supplied by Beth — closes the B1 gap flagged since
  the first sweep). 15 tabs: Agenda · Meeting Kick Off · Current Climate · Risk & Security Review
  (with a structured risk register: Threat/Risk, ID Date, Risk Level, Existing Controls, Treatment
  Plan, Progress Status, Residual Risk, Risk Owner) · Compliancy Review · Business Priorities &
  Goals Review · Hardware & Software Asset Review · Employee Review · Technology Roadmap ·
  Technology Budget · Additional Items · Referrals & Testimonials · Post-Meeting Action Items
  (explicit instruction: "turn every action item into a ticket") · Next Meeting Planning · KPIs
  (Territory Retention %, # Referrals, # Testimonials, # New Sales Opps, EBRs Delivered vs.
  Planned/Quarter, Average NPS). `[CS: VERIFIED — primary source, not a secondhand description]`.
  This is the real spec §6's Tasks should be checked against, not just Vanessa/Stefanie's spoken
  account — see §6's Operating Principles for how its 15 tabs sort by job-shop vs. brains-work.

## 3. Four-angle view of the space — `Gate 1 / Gate 2` · `[WORLD_MODEL]` — `PROPOSED, confirm`

> **TL;DR:** Risk review is the heaviest, most load-bearing section of the EBR. Business-value framing (not technical metrics) is the explicit operating principle throughout.

We looked at the QBR/EBR space from four angles to build a fuller picture: what people *do* (Activities), what's in the physical and digital environment (POEMS — People, Objects, Environment, Messages, Systems/Services), what people *need* (Five Human Factors), and who gets value from whom (Value Webs). Framework credit: Whitney Quesenbery's Four Lenses — if you want to go deeper, that's the reference. Each row `PROPOSED` means the mapping is an interpretive call, not a direct quote.

| Lens | Content | Tag |
|---|---|---|
| **Activities — client side** | Review risk register + tech roadmap; decide referrals/projects; update leadership on IT posture | `[CS: MEDIUM]`[^6] |
| **Activities — MSP side** | Build risk review from service-desk capacity; schedule into PSA prep queue; convert action items to PSA tickets; update EOS scorecard | `[CS: HIGH]`[^7] |
| **POEMS — People** | Delivery lead, technician (backstage), client exec, MSP owner | `[CS: HIGH]` |
| **POEMS — Objects** | Risk register, tech roadmap, PSA ticket queue, EOS scorecard | `[CS: HIGH]` |
| **POEMS — Environment** | In-person, 3h+ meetings observed; one ran through lunch | `[CS: HIGH — n=1]`[^8] |
| **POEMS — Message** | Business-value framing — explicitly *not* graphs/pie-charts/percentages | `[CS: HIGH]`[^9] |
| **POEMS — Systems/Services** | PSA (Halo); roadmap tooling named `[CS: MEDIUM]`[^10]; Copilot used once for transcription `[CS: HIGH — n=1]`[^11]. Wider market: HaloPSA's own recommended agenda gives "Review of Exposure and Risk" the single longest block (45 of ~110 min) — independent corroboration of the risk-register's centrality from a different vendor `[CS: MEDIUM]`[^49]; ScalePad/Cognition360, myITprocess, Datto Strategy Overview, CloudRadial all ship QBR-adjacent reporting, but **none named in the sweep does PSA ticket writeback except vCIOToolbox** — everyone else stops at report generation `[CS: MEDIUM]`[^50] |
| **Five Human Factors — Physical** | In-person, multi-hour | `[CS: HIGH — n=1]`[^8] |
| **Five Human Factors — Social** | Relationship/trust-building; first EBR produced a referral | `[CS: HIGH — n=1]`[^12] |
| **Five Human Factors — Emotional** | Client arrives "guarded" if MSP's gone quiet; documented-warning-then-incident removes blame/emotion | `[CS: HIGH — n=1 each]`[^13] |
| **Five Human Factors — Cultural** | "A conversation with a side serving of structure" — informal register preferred over technical/formal. **Independently corroborated:** a separate UK operator-coach names British reserve directly as a factor — "very un-British to blow your own trumpet." Both our primary sources are UK; nothing comparable surfaced from any US source. `[CS: HIGH]`[^14] [^51] |
| **Five Human Factors — Cognitive** | Non-technical lead needs confidence to run the room solo; client "not interested in the back end" `[CS: HIGH]`[^15]. A presentations coach independently names "the curse of the expert" — too deep in the material to know what a lay executive needs. `[THIN]`[^52] — no operator anywhere in the corpus admits this discomfort in the first person; it stays a hypothesis with a third-party proxy, not evidence. Scholarly antecedent: Maister's leverage-ratio theory — "brains work" needing senior involvement vs. "procedure work" permitting junior leverage, a career-track ceiling distinct from the confidence ceiling `[CS: MEDIUM — secondary summary, not primary text]`[^53] |
| **Value Webs — client gets** | Business-relevant risk visibility, roadmap alignment, a forum to raise needs | `[A]`[^16] |
| **Value Webs — MSP gets** | Referrals, new projects | `[CS: HIGH — n=1]`[^17] |
| **Value Webs — exchange (client↔MSP)** | MSP invests 3–7h prep for pipeline + relationship equity | `[CS: MEDIUM]`[^18] |
| **Value Webs — N-able gives** | EBR framework + templates, boot camp training, Head Nerd expertise/enablement | `[CS: MEDIUM]`[^22] |
| **Value Webs — N-able gets** | Partner attach/loyalty, product upsell surfaced via EBR-driven recommendations, reduced partner churn | `[A]`[^23] |
| **Value Webs — Head Nerds (Stefanie) gives** | Framework design, boot camp delivery, partner case-study elevation (the Vanessa interview) | `[CS: MEDIUM]`[^24] |
| **Value Webs — Head Nerds (Stefanie) gets** | Proof points for enablement content, partner success stories, community standing | `[A]`[^25] |

**Not carried into Value Webs:** the "documented risk-acceptance shields the MSP" claim. Council
downgraded this to `[?]`[^19] — it stays out of any value statement until B4 (counsel
conversation) resolves it.

## 4. Disruptive / innovation test — `Gate 2` · `[SKETCHING]`

> **TL;DR:** Unclear whether this is sustaining (better tooling for MSPs who already do EBRs) or disruptive (targeting the majority who do none). The classification is still open and changes what you build.

**Still open, but the evidence balance has shifted since the first pass.** `[?]`

- **Sustaining read:** better tooling for MSPs who already run EBRs well — reduces the 3–7h prep
  cost for an existing practice. **Weakened by the competitive scan:** no generally-available,
  publicly-priced, MSP-specific AI QBR tool with real PSA writeback exists yet.[^42] The closest
  competitor (vCIOToolbox — 2-way ticket/opportunity sync to Autotask) has its AI features
  explicitly on roadmap, not shipping, and opaque pricing.[^43] **A vendor already tried and
  killed this exact feature** — Zomentum discontinued its Assessments/QBR feature July 2024,
  reason stated only as focusing elsewhere;[^44] its marketing site still advertises the killed
  feature, a live example of marketing lagging product reality.
- **Disruptive read:** targets non-consumption. Andy Cormier ran a $4.5M, 12-employee, 1,000+
  client MSP with **zero** QBRs ever — a real, corroborated existence-proof against
  QBRs-as-necessary, mirroring Vanessa's existence-proof for them; both are n=1, both
  vendor-published.[^45] One uncited industry figure claims only 20% of MSPs have a structured QBR
  process `[CS: LOW]`;[^46] the real distribution still isn't known — B8 (Kaseya/Syncro reports,
  unopened) remains the only path to that number.
- **Sentiment balance, honestly counted:** across 9 substantive independent/peer-group sources,
  6 are anti-QBR-as-currently-run, 2 are pro/defensive, 2 argue keep-but-reframe.[^47] **Caveat:**
  "kill the QBR" is a recognizable SEO headline genre — a 6-of-9 count in searchable content is
  not the same claim as "most MSPs think QBRs are a waste."
- **The sharpest single distinction found, and it lands directly on the positioning fork (§5):**
  ScalePad's own Chief Evangelist draws a line between *relationship trust* (what most QBRs
  build) and *impact trust* (what clients actually need to see) — "if the QBR is only about
  selling more projects or enforcing standards, it becomes self-oriented, which erodes trust."[^48]
- **Category framing (vCIO/vCISO scan, 2026-07-06):** QBR is the industry-standard **core
  recurring vCIO deliverable**, not a QBR-specific invention — vCIO itself bundles roadmap,
  budget, QBR, and compliance alignment as one premium tier.[^60] Four competing category frames
  coexist and none dominates: **"lifecycle management"** (ScalePad's own vendor frame, now
  rebranding toward "Customer Success"), **"technology alignment"** (TruMethods/myITprocess
  lineage), **"vCIO"** (the role itself), and **"Customer Success"** (increasingly used,
  MRR/retention-tied).[^61] **This matters for how the offering gets pitched** — "lifecycle
  management" is not safe to assume as the buyer's own vocabulary.
- **Cross-corroboration worth noting (two independent angles, not one repeated claim):** the
  competitive scan found HaloPSA's own recommended agenda gives risk review the single longest
  block; **independently**, the 2026-07-14 buyer survey (n=119) named HaloPSA specifically as a
  must-integrate PSA.[^62] Different methods, same vendor surfacing as load-bearing — this is
  actual triangulation, unlike the prep-time-hours folklore (§1, footnote 1/2) where three
  sources repeat a similar number with no independent primary source behind any of them.
- Ten Types of Innovation classification (Doblin/Keeley) — `[PENDING — task #3]`, but the
  competitive-scan finding above should feed that pass directly rather than starting cold.
- **Council pass — done 2026-07-30**: [`briefs/qbr-ebr-council-testimony-2026-07-30.md`](../qbr-ebr-council-testimony-2026-07-30.md).
  Five voices (JTBD, Service Blueprint, SDT, Disruptive Innovation, Value Chain). Two named
  cross-voice divergences, unresolved: (1) Disruptive Innovation vs. Value Chain disagree on
  whether Package 5's Q1 gate is a market-timing call or a chokepoint-control precondition; (2)
  JTBD vs. SDT disagree on whether the confirm-gate reads as autonomy-supportive or as friction —
  both hinge on Q2 (operator study), still unfielded. Synthesis slot in that file is
  `[0% Claude — fill this in]`, Beth's to write.

**This offering already went through Idea Chess once (2026-07-20) — Will and eng should read
that pass, not restart it.** `[CS: VERIFIED — briefs/concept-sketches-qbr-2026-07-20.md]`. It
splits QBR into two branches, not one:

- **Package 3 — Client-Facing Proof, N-able Native.** Scoped to MSPs consolidated on N-able's own
  stack (N-central + Cove + Adlumin). ~0.9% naive Idea-Chess survival — **the near-term lead**,
  because it needs no cross-vendor normalization and "Measured" is defensible from first-party
  telemetry on day one. Dies at **Adopt**: mixed-stack MSPs may experience it as an incomplete
  version of the real ask.
- **Package 5 — Client-Facing Proof, Cross-Vendor.** The full "holy grail" — normalizes across an
  MSP's entire mixed-vendor stack. Lowest naive floor (~0.43–0.64%) but **the fleet synthesis's
  pick for most winnable**, because its two killers (normalization, data-egress) are lines N-able
  can buy or partner past rather than build.
- **The build substrate for both already exists**, per the same pass: the Runbook Engine
  (49/49 built) and a Value Ledger producer (55/55 built — corrected 2026-07-31 from "52/52," grep of
  `specs/003-value-ledger/tasks.md` counts 55 checked; renders $0 today, needs a QBR-specific
  producer wired in) — §6's "Function/feature structure: PENDING" understates this; it's a
  wiring job on existing plumbing, not a build from zero.
- **Two tests gate almost everything, and neither has run:** **Q1** — can N-able legally pull
  non-N-able vendors' data into a client-facing artifact? (Gates Package 5 entirely; a days-long
  legal/DPA read, not a build.) **Q2** — does the *operator* (not the buyer) want the mechanism
  (AI drafts, human edits and defends) or just the destination? **Every demand signal in the
  corpus so far is buyer purchase-intent — the operator has never been directly studied.** This
  is the single biggest gap between what we have and what Will/eng need before designing the
  actual interaction.

## 5. Riskiest assumptions — `Gate 1 / Gate 2` · `[RIGHT_THING]`

> **TL;DR:** Seven open product decisions. Two of them (legal read on cross-vendor data, and whether the operator actually wants AI drafts vs. just the finished report) gate almost everything downstream.

Carried from Part C of the manual-steps register[^21]:

| Assumption | Status | Owner |
|---|---|---|
| Positioning: does the offering speak to the delivery lead (user) or the owner (buyer)? **New evidence sharpens this without resolving it — the relationship-trust-vs-impact-trust distinction in §4 is the clearest lens found on this fork.** | 🔴 open | Beth |
| MVP spine: Env Health assembly vs. severing the service-desk dependency | 🔴 open | Beth |
| Confidence scope: differentiator vs. enablement problem vs. research-first | 🔴 open | Beth |
| Goal unit unnamed: more EBRs delivered, or more projects closed? | 🔴 open — unfalsifiable until asked | Beth |
| Sustaining vs. disruptive (§4) | 🔴 open | Beth |
| Alpha persona = mature operator (dedicated delivery lead, EOS, PSA queue) | 🟢 confirmed 2026-07-28 | Beth |
| The 15-minute operator edit-and-send flow actually fits in 15 minutes [P≈0.35, unowned][^54] | 🔴 open | — |
| Data is clean enough to normalize across sources at 75–80% [P≈0.30, unowned][^54] | 🔴 open | — |
| Buy-vs-build: mid-size MSPs buy, small MSPs self-build, large MSPs already have something — segment-dependent, not resolved[^54] | 🔴 open | — |
| **Ledger billing-dependency conflict** — the vision wants the Value Ledger to "justify the platform fee"; the Intent Spec's own NONGOAL/PROHIBIT bars any billing dependency; resolved in-code as read-only consumer, **but that's a decision, not a settled fact**[^55] | 🔴 open — routed as a product call | Beth |
| **Compliance ownership is unassigned** — the ledger schema is only accidentally EU-AI-Act-shaped; do not treat it as compliant until a named owner verifies[^56] | 🔴 open | `<TBD>` |
| **WTP anchor contradicts itself, internally** — the 2026-07-14 vision doc's displacement-pricing anchor is Kenneth's Guidepoint quote, "$300+ per user" for ScalePad Lifecycle Manager X.[^57] The 2026-07-28 competitive scan independently fetched ScalePad's actual pricing pages: **nothing matches a flat per-user model** — everything is per-client or per-PSA-seat-block, entry tier $250/mo.[^58] One of these is wrong, or Kenneth is describing a different, stacked tier. **Do not quote "$300+/user" without resolving this first.** | 🔴 open | — |
| **"Encryption resolves the data-legality concerns"** — engineering assertion, 2026-07-31. Category error: encryption is a security control (GDPR Art. 32 territory); Q1 is a rights-to-process question and Q3 a knowledge/notice question — neither has a cryptographic answer. Encryption belongs in the architecture and does not retire either gate. | 🔴 open — route with Q3 to counsel | eng → counsel |
| **Q3 — the liability paradox as a portfolio gate** (promoted from Must 8's machine-specific concern, per 07-31 re-run: sits under 4 of 6 concepts). Counsel question, sharpened: does an AI-drafted but human-declined row, held in the internal working surface, constitute notice? One shared counsel review beats four separate stalls. | 🔴 open | a product call → counsel |

## 5a. Divergence Log — vs. FSN-83143 (canonical) — `[SPEC DIVERGENCE]`

> **TL;DR:** Four places this file's research diverges from or isn't addressed by the canonical
> Intent Spec. Logged per acp-ux.md AGENT GATE rule 10. 🔴 = genuinely open, routes through
> Beth → Meaghan → Nicole. 🟡 = known and in motion, not a standoff. Status is grep-checkable —
> don't self-report it, count the emoji.

| ID | Divergence | vs. spec | Status | Owner | Resolution |
|---|---|---|---|---|---|
| DIV-001 | This file treats Package 3 (N-able Native) vs. Package 5 (Cross-Vendor) as a live, ungated fork | FSN-83143 DEC-006 already ships one Coworker, "QBR Advisor" (priority 2.90), without specifying which branch | 🔴 open | Beth → Nicole | Which branch did DEC-006 assume — or is that itself still open? Needs Nicole directly. |
| DIV-002 | Primary persona (Vanessa Chart — non-technical delivery lead who runs the EBR) doesn't map to either FSN-83143 §3 actor; she's the person doing the job the Coworker's output serves, a role the actor model has no slot for. Craig (owner/buyer) does map to USER-001, per the 2026-07-30 alpha-persona lock. Per acp-ux.md rule 10, a sub-spec carrying its own persona is fine — the gap is that the *full cast* isn't mapped yet | FSN-83143 §3: USER-001 (Admin, configures/creates), USER-002 (Technician, runs/approves) — neither fits Vanessa | 🔴 open | Beth | Map full cast (Vanessa, Craig, client exec, + check USER-005 Audit/Compliance overlap with the client exec's own compliance reviewer) against FSN-83143's table in one place. Revisit as §1's cast list fills in. |
| DIV-003 | QBR Value Ledger producer isn't wired yet — renders $0 (§4, §6) | FSN-83143 INV-PROD-005: every completed run must write a Value Ledger entry — "a run that produces no value entry is a system error" | 🟡 resolving-with-Product | Beth (tracking) | Build-sequencing item, expected to close before QBR Advisor ships — producer wiring gates activation. Not a standoff, just needs to land before ship. |
| DIV-004 | Must 1 bans time-saved/percentage/graph framing inside the QBR's own client-facing content — a value-prop-shaping finding, not just a risk flag | FSN-83143 §5 sets "time saved / reduced headcount" as the Coworker-wide UX north star, visible on every Coworker card | 🔴 open | Beth → Nicole (Product) | Different surfaces (admin dashboard vs. client-facing doc) so not a hard contradiction, but a real bleed risk if the Coworker-card pattern gets reused inside QBR output. Needs a resolution with Product before the Coworker-card pattern is assumed to apply everywhere. |

## 6. Problem → Goals → Tasks → Function · `[RIGHT_THING]` `[THING_RIGHT]` `[BRIDGE]`

> **TL;DR:** 8 Musts defined (behaviors that cause failure when absent). 3/8 auto-classifiable as "procedure work" (automatable). 5/8 require human judgment. Only 2 of 8 are testable at current prototype fidelity.

**Problem — `Gate 1` · `[WORLD_MODEL]`:** link to §1.

**Goals — `Gate 1/2` · `[RIGHT_THING]` — `PROPOSED, confirm`:**
1. Cut prep time without losing the business-value framing that makes EBRs land.
2. Let a non-technical delivery lead run the room solo, without a technician present.
3. Turn the EBR into a repeatable pipeline motion (referrals/projects), not just a checkpoint.

**Tasks — `Gate 3` · `[THING_RIGHT]` — Top Tasks candidates, `PROPOSED, confirm`:**
1. Build/update the risk register.
2. Build/update the tech roadmap.
3. Schedule the EBR into a prep queue.
4. Draft business-language talking points (explicitly not graphs/percentages).
5. Log post-meeting action items as PSA tickets.
6. Update the pipeline/scorecard (opportunities raised / opportunities closed).

**What "good" means — `Gate 3` · `[THING_RIGHT]` — `PROPOSED, confirm`:**
pulled together from the sources already in hand, not new research. Musts are behaviors the
corpus ties directly to failure when absent; shoulds are evidenced as valuable but the corpus
shows real variation in how they're done.

*Musts:*
1. **Business-value framing, not technical/graphs/percentages.**[^26] Named failure mode when
   absent: confidence-lacking operators fall back to tactical/technical framing instead.[^27]
2. **Real prep, not last-minute.**[^28]
3. **Follow-up after the meeting** — action items converted to tickets, and the relationship
   pushed forward, not left to lapse.[^29]
4. **Some regular cadence, tuned to the client** — not fixed-quarterly. `[CS: MEDIUM]`[^30]
   **Correction 2026-07-28:** this must was previously justified by "three MSP lawsuits" where
   MSPs "weren't meeting regularly." Checked against the actual case records — that causal link
   doesn't hold. See Must 8 for what the two real cases actually turned on.
5. **Both core artifacts present** — risk register and tech roadmap, at minimum.[^31]
6. **Dual-surface document — structural, not a toggle.** Internal notes stay internal; the
   client-facing version is a distinct surface — **two real artifacts**, not one document with a
   redaction filter.[^32] **Finding (service blueprint 2026-07-29):** Vanessa's working document
   (candid prep notes, operator risk judgments, "things that haven't happened yet") is an internal
   tool; the client-facing extract (composed follow-up email) is a separate surface. A product that
   renders one document — even with a redaction toggle — breaks this structurally: an accidental
   un-toggle is a client-visible incident. The Tier-1 prototype made exactly this mistake; council
   caught it. This must is therefore non-configurable: two distinct artifact objects in the data
   model, not one with a visibility flag.
7. **Sustainable backstage load** — the technical role building the risk review is a shared,
   limited resource; a cadence that overloads it is a named failure point.[^33]
8. **No overclaiming legal/liability protection to the client.** `[CS: HIGH — well-checked
   negative finding]`[^34] Only **two** named MSP-liability cases exist in the record, not three,
   and neither is 2025: *Mastagni Holstedt v. LanTech* (filed 2024, active, no written contract
   between MSP and client — that absence is itself a live issue) and *Boardman Molded Products v.
   Involta* (reported 2020, **the MSP's own marketing claims were used against it** to argue the
   contract didn't match what was promised). Neither turned on meeting frequency. No case law, US
   or UK, tests whether a documented risk-acceptance/refusal form holds as a defense. No named
   underwriter treats such documentation as mitigating for premium or claims — underwriters
   evaluate deployed controls (MFA, tested backups, EDR), not paperwork about client refusals. A
   good EBR does not oversell defensibility, and **a good tool must not surface a
   documentation-as-shield claim to the client at all** — the record doesn't support it.
   **Machine-specific concern (service blueprint 2026-07-29):** A machine-assembled risk register
   that surfaces every detected gap expands the documented record of what the MSP knew. Volume of
   detection is volume of exposure. The same confirm-gate logic that applies to client-facing
   language applies here: auto-draft, human-clears is the only defensible pattern. `[CS: HIGH —
   derived from service blueprint Finding 1; not yet reviewed by counsel]`

*Shoulds:*
1. Ask for referrals — evidenced as valuable, not universal.[^35]
2. Cadence tuned per client rather than fixed-quarterly — Vanessa's own account shows real
   variation (up, down, and refused) as legitimate outcomes,[^36] and this is now independently
   corroborated by three unrelated consultancies, not vendor-selected: cadence set by client need
   rather than calendar,[^39] tiered by account size,[^40] and one UK coach explicitly recommending
   twice-yearly/annual over quarterly ("quarterly is overkill" for typical smaller clients).[^41]
   **This is the one Should with real independent triangulation, not just n=1 agreement.**
3. High-touch/in-person format where feasible — correlates with strong outcomes in the one
   detailed example available, not proven necessary.[^37]
4. Log into a pipeline/scorecard (opportunities raised/closed) tying the EBR to a growth system.[^38]

**Built-in tests of good — `Gate 3` · `[THING_RIGHT]` — `PROPOSED, confirm`:** each must gets a check that could
run against a real or AI-assisted EBR, not just a description of the ideal.

| Must | Test |
|---|---|
| 1. Business-value framing | Content ratio: business-outcome sentences vs. technical-metric sentences in the prepared talking points. Same discipline as the 47% rule — grep it, don't self-report it. |
| 2. Real prep | Artifact-freshness check: was the risk register / roadmap updated within a defined window pre-meeting, not stale or templated? |
| 3. Follow-up | Ticket-conversion check: were action items logged as PSA tickets within N days post-meeting? Binary, machine-checkable if the PSA has an API. |
| 4. Regular cadence | Time-since-last-EBR per client, flagged if it exceeds that client's own set cadence. |
| 5. Both artifacts present | Presence check: does this client have a risk register AND a tech roadmap on file? |
| 6. Dual-surface | Structural check: does the internal draft contain content absent from the client-facing export? |
| 7. Sustainable backstage load | Capacity check: technical-role EBR load per week against the sustainability ceiling observed in the corpus.[^33] |
| 8. No overclaiming | Language check: does client-facing content assert legal/liability-protection language? Flag/fail if so. |

**Operating principles — `Gate 2/3` · `[STANDARDS]` — `PROPOSED, confirm`:** two structural rules for how the
system itself should be built, not just what it must contain. Both were flagged as missing from
the first pass.

**1. Job shop vs. production line — classify every task in the real template, don't guess.**
Maister's leverage-ratio distinction (footnote 53) isn't just color on the Cognitive human
factor — it's an architecture principle: proceduralize what's procedure work, protect senior
judgment for what isn't. Mapped against the actual 15-tab template (§2):

| Template section | Classification | Why |
|---|---|---|
| Agenda, Current Climate, Hardware/Software Asset Review, Employee Review (data pull), Post-Meeting Action Items, Next Meeting Planning, KPIs | **Production line** — automatable | Directly pullable from PSA/RMM, or (Post-Meeting Action Items) already an explicit instruction to mechanize: "turn every action item into a ticket." **The clearest automation candidate in the whole template.** |
| Risk & Security Review, Compliancy Review, Technology Roadmap | **Hybrid** | Register entries and gap-detection are pullable/draftable; the narrative synthesis ("any concerns," overall risk rating, priority/timeline calls) is judgment |
| Business Priorities & Goals Review, Referrals & Testimonials, Technology Budget | **Brains work — protect this** | A live conversation about the client's specific business; the template itself has no fields here that aren't a live question |

**The point:** automating the production-line rows should be what buys back the delivery lead's
time for the brains-work rows — that's the mechanism behind Goal 1 (cut prep time) and Goal 2
(run the room solo), not a separate feature. **Automating a row does not relax the Musts** — an
auto-drafted risk register still has to pass Must 1 (business-value framing) and Must 8 (no
overclaiming) before it reaches the client.

**2. The human acts in the client's best interest — the mechanism already exists, reuse it.**
This isn't a new design problem: the Defensibility tier (**Measured / Benchmarked / Estimated /
Unverified**) is a briefs-corpus design vocabulary intended to sit over the existing
`baseline_source` field in the Value Ledger.[^59] **Correction 2026-07-31:** this section
previously claimed the tier was "already implemented in code." A full-repo grep of
`acp-core-main-3` (orchestrator, qbr-prep-sim pipeline) returns zero hits for the tier vocabulary
— what exists in code is `baseline_source` (tenant_configured | platform_default |
coworker_reported) only. The tier is proposed grammar, not built substrate. `[CS: VERIFIED —
grep 2026-07-31]` Two rules already decided there, both directly reusable for Must 8: **bill and
headline off Measured only** — never blend the AI's self-reported `estimated_human_minutes` into
a headline number a client sees — and **a hard gate on the Unverified tier, not a passive
warning**, because warning-fatigue research says a visible warning requiring no action reads as
permission, not as a stop. Apply directly: whatever the system drafts for the risk register or
roadmap, an Unverified/overclaiming-adjacent claim cannot reach the client without the operator
actively clearing it. **A second reading of "best interest" worth naming separately:** N-able's
own commercial interest (partner attach, upsell — see Value Webs, N-able gets) must not bias what
the system recommends to the client; the same confirm-gate pattern should apply if a draft
surfaces an upsell recommendation, so it's visibly flagged as commercial rather than laundered as
neutral risk analysis.

**3. The translation layer — we hold the general, the MSP holds the particular.** *(Added 2026-07-31.)*
N-able's side of the draft is everything true *across* clients and verticals: telemetry rendered in the consequence grammar (data → risk → what it means → what happens if not), industry-trend intelligence, and base-wide comparison ("how your profile compares across our whole base") — general expertise no single MSP can self-build. The MSP's side is the particular: this client, this history, this room. The draft is therefore **chooser-shaped, not prose-shaped**: register rows arrive ranked with include/exclude (choosing what to raise is a liability judgment — Must 8); talking points come in two registers (CFO/ROI vs owner/strategy, per Jonathan's audience-adaptive ask); the industry brief offers five trends and the MSP picks three; commercial recommendations carry a visible flag and are never accepted by default. Corollary that makes this the liability architecture, not just trust design: **what the system sees ≠ what the MSP documents.** The tools already see everything; the new legal object is only the client-adjacent record, and nothing enters it without a human electing it. `[CS: HIGH — derived; the notice question on drafted-but-declined rows is Q3's, for counsel]`

**Function/feature structure — `Gate 3` · `[BRIDGE]`:** not fully `[PENDING]` — real substrate exists. Per the
2026-07-20 Idea Chess pass: the Runbook Engine (49/49 built) and a Value Ledger producer (55/55
built — corrected 2026-07-31 from "52/52" by grep-count of `specs/003-value-ledger/tasks.md`;
currently renders $0) already exist; a QBR runbook is wiring onto existing plumbing, not a
build from zero. What's actually pending: the QBR-specific runbook spec, the producer wiring, and
resolving Q1/Q2 (§4) before locking scope.

**Quality bar (Nielsen, Tenets & Traps) — `Gate 3` · `[THING_RIGHT]`:**

**Default floor — applies in the absence of product-specific usability research:**

These standards apply to any QBR/EBR UI until overridden by findings from an actual usability study. They're a starting point, not a ceiling.

| Standard | Why it applies here |
|---|---|
| Nielsen #6 — Recognition over recall | The delivery lead is time-pressured, non-technical, and running the room solo. Don't make them remember what each field means. |
| Nielsen #1 — Visibility of system status | The confirm-gate must be unambiguous — system status drives Must 8 (no overclaiming). |
| Nielsen #5 — Error prevention | Auto-generated content (risk register drafts) must make errors hard to ship, not easy to approve. |
| Nielsen #4 — Consistency and standards | Defensibility tiers (Measured / Benchmarked / Estimated / Unverified) must render consistently throughout. |
| N-able Tenets & Traps | Apply current N-able design system rules — check with Apex reference skill for current state. `[?]` — not pulled here yet. |

**Placeholder — to be filled by usability research:**

No product-specific usability study exists for this feature yet. If you are working on this without a researcher:

1. **Cognitive walkthrough** — walk through each task in §6 as Vanessa. At each step: can she tell what to do? Can she tell if she did it right? Flag every friction point. Estimated time: ~2h solo, ~1h with a facilitator.
2. **5-second test on the confirm-gate** — show the confirm-gate screen to 3 people. Ask: what does this mean? What would you do next? If they can't tell, the gate is a passive warning, not a block.
3. **Content audit on draft output** — run Must 1's built-in test manually: count business-outcome sentences vs. technical-metric sentences in a sample AI-generated risk review. If ratio < 60/40 business-outcome, the default prompt isn't working.

`[THING_RIGHT]` at this fidelity tier (Tier 1 Concept): the three tasks above are runnable against a static prototype before a single line of production code is written.

## 7. Open decisions (the dirty data) — `Gate 1 / Gate 2` · `[RIGHT_THING]`

Same list as §5 — restated here per the parent template's shape, not a second register. Routed
through Beth; none of these resolve themselves by appearing twice.

## 8. Confidence score

`[PENDING computation — see parent §8 method]`. After the full-datadump pass (2026-07-28): several
items moved from `[A]`/n=1 to independently-corroborated `[CS: MEDIUM/HIGH]` (cadence, UK cultural
register, the risk-register's centrality via HaloPSA). One item moved the other way — Must 4's
cadence justification was resting on an unverified causal claim (lawsuits ← irregular meetings)
that didn't survive the legal scout and had to be corrected. Net read: still **fine as evidence of
what's happening, thinner than it looked on what to build** — the competitive scan (§4) is the
newest and most load-bearing gap: no shipping direct competitor with real PSA writeback exists,
which cuts both ways (opportunity, or a category that failed once already at Zomentum). Don't
quote a percentage here without grepping it first — 47% rule.

**Service blueprint pass (2026-07-29):** Three items changed confidence this pass.
- `[CS: HIGH — n=1]` on 4–5h/EBR **downgraded** to `[CS: LOW — echo]` — the corroboration is
  a transmission echo, not independent validation (Finding 2).
- Must 6 dual-surface: was `[CS: HIGH]`; now `[CS: VERIFIED — structural]` — service blueprint
  confirms two real artifacts exist and must be preserved, not inferred from the narrative.
- Risk Register legal shield: moved from `[?]` → explicitly `[CS: HIGH — unvalidated, must not
  reach client-facing surface before counsel]` (Finding 1).

Build coverage from service blueprint (26 service moments): **0 built · 1 specced · 8 adjacent ·
17 absent**. The one specced item is QBR Advisor in `specs/004-ai-coworker-registry` — 0 of 40
tasks done as of 2026-07-29. The gap is subject matter (the 8 data pulls, the judgment layer, the
dual-surface artifact structure), not mechanism — Value Ledger + Runbook Engine are already built.

## 9. Sources

- `briefs/qbr-ebr-experience-map-2026-07-28.md`
- `briefs/ebr-process-map-2026-07-28.md` (council corrections are edits within this file, not a separate doc)
- `scout_input/stefanie-hammond-ebr-sources-2026-07-28.md`
- `scout_input/qbr-independent-sources-2026-07-28.md` — benchmark/industry data, KAM academic
  literature, Maister
- `scout_input/qbr-competitor-products-2026-07-28.md` — the competitive scan (§3, §4)
- `scout_input/qbr-operator-voices-2026-07-28.md` — unfiltered operator sentiment (§4), UK texture
  (§3)
- `scout_input/qbr-adjacent-and-legal-2026-07-28.md` — the legal/insurance investigation (Must 8)
- `scout_input/SECONDARY-SOURCES-REGISTER-qbr-ebr-2026-07-28.md`
- `datadump-manual-human-steps.md`
- `briefs/concept-sketches-qbr-2026-07-20.md` — the Idea Chess pass on this offering (§4, §6)
- `briefs/idea-chess-fleet-synthesis-2026-07-14.md` — death patterns, survival methodology
- `briefs/acp-word-sketches-four-complete-2026-07-15.md` — Defensibility Layer, Branch A/B split
- `Executive Business Review Template 1.xlsx` — Stefanie Hammond's own template (§2, §6 Operating
  Principles)
- `briefs/acp-offerings-2026-07-14.md` — the original vision doc for this offering (Offering A);
  quantified riskiest assumptions, WTP anchors, TAM, the two routed human-call items (§5)
- `scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md` — category framing, QBR-as-core-
  vCIO-deliverable (§4)
- Confluence: [ACP Secondary Research — MSP QBR/EBR Practice](https://n-able.atlassian.net/wiki/spaces/AI/pages/62226858351)
- Confluence (this file, registered): [ux.md — ACP synthesis spine (2026-07-28)](https://n-able.atlassian.net/wiki/spaces/AI/pages/62227775577) — Synthesis-briefs shelf
- `briefs/ebr-service-blueprint-2026-07-29.md` — 26-step service blueprint, Flowers/Miller
  canon, three critical findings (legal shield, echo problem, dual-surface structural)

## 10. Mini-docs

This file has no children. Parent: [acp-ux.md](acp-ux.md).

---

## Glossary — every term in this file, defined

**The world:**
**MSP** — managed service provider; the IT company that runs technology for small/mid businesses. Our customer. · **Client / SME** — the MSP's customer (a dental practice, a law firm). · **QBR / EBR** — quarterly/executive business review; the recurring meeting where the MSP proves its value to the client's leadership. Stefanie teaches "EBR" (not tied to a calendar quarter); the industry mostly says "QBR." Same meeting. · **PSA** — professional services automation; the MSP's ticketing/billing system (e.g. HaloPSA). · **RMM** — remote monitoring & management; the tool that watches client devices (N-central is ours). · **MDR** — managed detection & response; security monitoring (Adlumin is ours). · **Cove** — our backup product. · **N-sight** — our other RMM. · **vCIO / vCISO** — "virtual" chief information (security) officer; the advisory service MSPs sell upmarket; the QBR is its core recurring deliverable. · **Risk register** — the structured table of a client's known risks; the heart of the EBR; the client signs it each meeting. · **Tech roadmap / budget** — the client's planned technology work and its cost; the register's two companion documents. · **EOS** — a small-business operating framework (weekly scorecards); how Vanessa's company runs itself.

**The people:**
**Stefanie Hammond** — N-able "Head Nerd" (partner-education expert); author of the EBR training this research started from; directly interviewed 07-30. · **Vanessa Chart** — delivery lead at an MSP that runs Stefanie's method; our richest operator account. · **Craig** — Vanessa's business partner; the *buyer* of the practice, not its daily runner. · **Head Nerd** — N-able's partner-education role. · **Alpha persona / USER-001** — the primary user the build spec targets: the MSP owner-operator who is also still a technician. · **The operator** — whoever actually runs the EBR (Vanessa's seat). Note: the spec currently has no slot for this person — that's divergence DIV-002.

**The research apparatus:**
**Datadump** — the living index of every research source; on Confluence; rule: *if it's not linked, it's not a source*. · **scout file** — a raw source saved into `scout_input/` with provenance. · **ux.md** — this kind of file: the machine-and-human-readable research spine for one offering. · **Idea Chess** — adversarial concept testing: walk a concept through the stages where it could die; name the first death; "naive survival" multiplies stage probabilities (all guesses, tagged `[A]`) — useful for *comparing* concepts, useless as forecasts. · **Council** — five analytical frameworks read the same brief and give testimony *without* agreeing; contradictions are kept, not resolved. · **4A's** — a persona summary: Ambitions, Attitudes, Actions, Anxieties. · **POEMS / Five Human Factors / Value Webs** — observation checklists (what's in the environment / what people need / who gets value from whom). · **Echo (not triangulation)** — two sources agreeing because one taught the other; counts once. · **47% rule** — check every statistic against its source before quoting; named for the day the self-report said 47% and the count said 80%. · **Confidence regime** (in the file header) — instructions to AI tools for how boldly to act on this file: `PROCEED-FLAGGED` = build, show doubt visibly, claim no validation. · **The bet / `[0% Claude — fill this in]`** — judgment slots reserved for a human; never AI-filled. · **Frankenprototype** — a deliberately ugly first working version, built with fictional data, used to ask questions. · **Tier 1 Concept** — lowest prototype fidelity: for reactions, not validation.

**The bets and gates:**
**Package 3** — build the QBR helper for MSPs using N-able's own products only (no permission problems; current board leader). · **Package 5** — the cross-vendor version (pulls competitors' data; legally gated). · **Q1** — may we legally pull other vendors' data into a client-facing document? · **Q2** — does the *operator* actually want AI drafting (vs. just the finished report)? Never directly studied. · **Q3** — the liability paradox: an AI-drafted risk register expands the record of what the MSP "knew" — the most-requested feature and the biggest legal risk are the same feature; one counsel session gates four of six concepts. · **DIV log** — where this file openly disagrees with the official build spec (FSN-83143); each entry routed to a decision-maker. · **DEC-006** — the build-spec decision that ships a "QBR Advisor"; hasn't picked Package 3 vs 5. · **Musts / Shoulds** — behaviors whose absence causes failure / behaviors that help but vary. · **Job shop vs production line** — our sorting rule: which meeting-prep work is repetitive (automate it) vs. judgment-and-relationship work (support it, never template it). Our fusion of an operations idea with Maister's professional-services theory — cited secondhand; verify before leaning on it (V1). · **Dual-surface** — the internal candid notes and the client-facing document are two separate artifacts, never one document with a hide/show switch. · **Defensibility tiers** — every machine-made claim is labeled Measured / Benchmarked / Estimated / Unverified; only Measured gets headlined; Unverified is hard-blocked from clients. · **Chooser-shaped** — the draft arrives as ranked options the operator picks from (include/exclude rows, pick-3 trends, two tones), because the choosing is where their judgment and liability live. · **Drag-rank** — survey method: rank by dragging; "tops drag-rank" = most-wanted. · **WTP / TAM** — willingness to pay / total addressable market. · **DPA / ToS** — data processing agreement / terms of service; the contracts Q1 turns on.

---

### Footnotes

[^1]: Stefanie Hammond, N-able Head Nerd boot camp, 0:38:51. Vendor-relayed.
[^2]: Vanessa Chart, operator self-report, 20:23. n=1.
[^2b]: Service blueprint Finding 2 (2026-07-29): Vanessa adopted this framework after Craig
  brought it home from Stefanie's training. Both Vanessa's and Stefanie's figures measure the
  same transmitted process, not independently arrived-at estimates. Echo, not triangulation.
[^3]: Vanessa Chart, Head of Client Delivery, Technica Solutions. Identity verified 2026-07-28 —
  see `scout_input/stefanie-hammond-ebr-sources-2026-07-28.md`.
[^4]: Vanessa Chart, 10:16.
[^5]: Per the source doc's own flag: n=1, vendor-selected reference-customer content — see
  `scout_input/stefanie-hammond-ebr-sources-2026-07-28.md`.
[^6]: Synthesized from Vanessa Chart's account — not a direct quote.
[^7]: Risk review built from service-desk capacity, Vanessa Chart 25:25; scheduled into Halo PSA
  queue, 26:36; action items converted to PSA tickets, Stefanie Hammond 1:26:02; EOS scorecard,
  Vanessa Chart 15:29.
[^8]: Stefanie Hammond's UK-partner anecdote (boot camp), n=1: 3-hour EBR that ran through lunch.
[^9]: Stefanie Hammond boot camp, 0:36:36.
[^10]: ScalePad / Lifecycle Insights named by Stefanie Hammond as existing roadmap toolkits — not
  independently confirmed as in-use by Technica Solutions specifically.
[^11]: Vanessa Chart, 27:15 — Microsoft Copilot used once for transcription/summary, one trial.
[^12]: Vanessa Chart, 13:28 — first EBR she ran produced a referral and a new client.
[^13]: "John," super-elite partner FL, Stefanie Hammond boot camp 0:28:05–0:32:36 — documented
  warning removed blame after an incident. n=1 each anecdote.
[^14]: Stefanie Hammond boot camp, 1:32:22 — attributed to "John."
[^15]: Vanessa Chart, 09:56 and 10:16.
[^16]: Inferred from the corpus as a whole — not a direct claim by any single source.
[^17]: Stefanie Hammond boot camp, 0:39:52–0:44:06 — UK partner anecdote, £70,000 project closed
  off the back of one EBR. n=1.
[^18]: Synthesized — prep-time cost weighed against pipeline/relationship-equity value; not a
  stated exchange in any source.
[^19]: Council pass, 2026-07-28 (edits within `briefs/ebr-process-map-2026-07-28.md`) — no case law, no
  carrier practice found; see `scout_input/qbr-adjacent-and-legal-2026-07-28.md`.
[^20]: Andy Cormier, named operator — $4.5M MSP running zero QBRs. Single named counter-example,
  not a market statistic.
[^21]: `datadump-manual-human-steps.md`, Part C, 2026-07-28.
[^22]: Inferred from N-able's enablement role (boot camp, handouts) — not a stated value-web claim
  by any source.
[^23]: The "John" anecdote (Cove migration closed after a documented risk-register warning,
  Stefanie Hammond boot camp 0:28:05–0:32:36) is the one concrete instance of vendor-product
  attach via the EBR motion in the corpus. Broader partner-attach/loyalty/churn framing is
  inferred, not stated.
[^24]: Stefanie Hammond, N-able Head Nerd (sales/marketing), ~20 years at N-able, ~16 in account
  management, Head Nerd ~4 years — role and delivery per
  `scout_input/stefanie-hammond-ebr-sources-2026-07-28.md`.
[^25]: Inferred — the boot camp and partner interview function as enablement content built from
  partner case studies; not a stated motivation by Stefanie herself.
[^26]: Stefanie Hammond boot camp, 0:36:36. Same source as POEMS — Message, footnote 9.
[^27]: Stefanie Hammond boot camp, 0:34:29 — confidence-lacking MSPs "fall back on what they are
  comfortable with… technology and products and usage stats," making the EBR "tactical… rather
  than strategy and business focused."
[^28]: Vanessa Chart, 19:08 — "You can't go to these meetings and prepare 20 minutes before you
  walk in."
[^29]: Vanessa Chart, 14:14 — "if you don't push and continue them and follow up, they won't be
  that effective." Ticket conversion per Stefanie Hammond boot camp, 1:26:02 (footnote 7).
[^30]: Stefanie Hammond boot camp, 1:00:44 — three named MSP lawsuits; the MSPs "were not having
  regular meetings with their clients."
[^31]: Stefanie Hammond boot camp, 1:15:34 — "having your risk register, having your tech
  roadmap, have at least these two pieces."
[^32]: Vanessa Chart, 29:38 — clients "don't get access to the whole EBR document… there's some
  internal notes on there that I need to keep."
[^33]: Vanessa Chart, 25:25–26:29 — the head of technical overview builds the risk review from
  service-desk capacity; "having four EBRs a week was actually not sustainable."
[^34]: Council pass, 2026-07-28 — same finding as footnote 19 (no case law, no carrier practice
  found).
[^35]: Vanessa Chart, 13:28 — "you don't be afraid to ask."
[^36]: Vanessa Chart, 23:22 — one client moved from 6-monthly to quarterly after seeing value;
  another moved from 6-weekly to quarterly to protect resource; some refuse EBRs entirely.
[^37]: Stefanie Hammond boot camp, 0:39:52–0:44:06 — UK partner anecdote, £70,000 project closed.
  n=1, same as footnote 17.
[^38]: Vanessa Chart, 15:29 / 15:45 — EOS weekly L10 meeting and scorecard; EBRs "instrumental
  in… putting the stats into the scorecard."
[^39]: Start Grow Manage (Jeff Loehr & Joe Rojas, independent consultancy, sells coaching not a
  QBR tool): "Sometimes it's every six months. Sometimes it's weekly. Sometimes it's monthly" —
  cadence set by client need, not calendar. `scout_input/qbr-independent-sources-2026-07-28.md`.
[^40]: Call To Action LLC (Dori Spade): tiered cadence — quarterly for large/complex, biannual for
  smaller, annual for stable long-term clients.
[^41]: Paul Green, MSP Marketing Edge podcast ep. 82 (UK), with guest Ernest Murray — recommends
  twice-yearly/annual, explicitly not quarterly; "overkill" for typical smaller clients.
[^42]: `scout_input/qbr-competitor-products-2026-07-28.md` — full market sweep, no generally
  available MSP-specific AI QBR generator with real PSA writeback found; noted as possibly a
  search blind spot, not a certainty.
[^43]: vCIOToolbox — 2-way ticket/opportunity sync to Autotask (the only real PSA writeback found
  in the sweep); AI features stated in future tense ("AI to suggest review topics...") and not
  shipping; pricing page returns 403, opaque.
[^44]: Zomentum's own release notes, 1 July 2024: "Sunset Assessments and QBRs: We have
  discontinued the Assessments and QBRs feature," stated reason "focus on enhancing other core
  functionalities." Marketing site still advertises the discontinued feature.
[^45]: Andy Cormier, "How Do MSPs Prove Their Worth? It Ain't QBRs," Syncro blog, 11 Oct 2022 —
  "I never ran a single customer through a QBR—ever. Twelve employees, $4.5 million in annual
  revenue, over a thousand clients." Now Syncro's MSP Channel Chief (as of Nov 2024); operator
  history predates the role and is independently corroborated (authored *So You Want To Be An
  MSP*).
[^46]: TruMethods blog — "only 20% of MSPs have a structured QBR process." No survey name, no n,
  no year cited; TruMethods sells the myITprocess QBR tool.
[^47]: `scout_input/qbr-operator-voices-2026-07-28.md` — balance counted across 9 substantive
  independent/peer-group sources.
[^48]: Luis Giraldo, Chief Evangelist, ScalePad, via MSP Growth Hacks, 2 Oct 2025 — "MSPs have
  been taught to become trusted advisors, but that usually builds relationship trust, not impact
  trust." Flagged in source as vendor-evangelist, not operator voice.
[^49]: HaloPSA's published Strategic Business Review agenda: Check-in (5min) · Action Items (5) ·
  Project Status (5) · Client Updates (15) · **Review of Exposure and Risk (45)** · Issues List
  (30) · Wrap-up (5). HaloPSA does not claim native QBR automation — explicitly recommends a
  third-party tool (lifecycleinsights.io) instead.
[^50]: `scout_input/qbr-competitor-products-2026-07-28.md` — full product-by-product breakdown:
  ScalePad/Cognition360, myITprocess, Datto Strategy Overview, CloudRadial, BrightGauge/
  ConnectWise, MSPbots. None confirmed to write actions back into a PSA as tickets except
  vCIOToolbox's roadmap (unshipped) claim.
[^51]: Richard Tubb, former UK MSP owner, now industry coach — "very un-British to 'blow your own
  trumpet.'" Tubblog has since closed; background independently verified.
[^52]: Dr Simon Raybould, presentations coach, TubbTalk #68 (29 Mar 2020, UK) — MSPs "suffer from
  the curse of the expert"; decision-maker audiences "don't care what's in it, only how it
  works." A hired coach's diagnosis of the industry, not a first-person operator admission.
[^53]: Maister, *Managing the Professional Service Firm* (Free Press, 1993), via secondary
  summaries — not the primary text, verify before quoting as load-bearing. "Brains" work requires
  high senior involvement; "procedure" work permits junior leverage. Separately: "people do not
  join professional firms for jobs, but for careers" — a staff-development ceiling distinct from
  the client-facing confidence ceiling.
[^54]: `briefs/acp-offerings-2026-07-14.md` — Offering A (Client-Facing Proof / QBR + Value
  Ledger), riskiest assumptions, read directly 2026-07-28 (previously only cited secondhand via
  the Idea Chess pass).
[^55]: `briefs/acp-offerings-2026-07-14.md`, "Two things that need a human call," item 1.
[^56]: `briefs/acp-offerings-2026-07-14.md`, "Two things that need a human call," item 2. EU AI
  Act enforceable 2026-08-02.
[^57]: Kenneth, via Guidepoint, cited in `briefs/acp-offerings-2026-07-14.md` — "$300 per user…
  per MSP user," calls it "nuts." `[CS: MEDIUM — single-source]` in the original document.
[^58]: `scout_input/qbr-competitor-products-2026-07-28.md` — ScalePad Lifecycle Manager (Pro)
  entry tier $250/mo per-client (blocks of 5); highest verified tier Cognition360 $449/mo (25 PSA
  users). No flat per-user pricing found on any fetched ScalePad page.
[^59]: `briefs/acp-offerings-2026-07-14.md`, "Value Ledger — dig findings" — defensibility tier
  over the existing `baseline_source` field. **The original "confirmed against `acp-core-main-3`"
  claim was wrong**: grep 2026-07-31 finds no tier vocabulary anywhere in that repo; only
  `baseline_source` exists in code. Corrected during the qbr-prep-sim pipeline.
[^60]: `scout_input/acp-qbr-analyst/vcio-vciso-industry-practice.md`, §1, §3.
[^61]: Same source, §6 — frame test result: "lifecycle management" reads as ScalePad-specific,
  not the dominant industry-wide frame.
[^62]: HaloPSA agenda finding: footnote 49. Survey finding: `briefs/acp-offerings-2026-07-14.md`,
  Offering A, "Partner / partner-type" — HaloPSA named specifically in the n=119 survey as
  must-integrate.
[^63]: `briefs/concept-sketches-qbr-2026-07-20.md`, Package 3 — Client-Facing Proof, N-able Native
  (Branch B), fields 2–4 and 9. Idea Chess pass, ~0.9% naive survival.
[^64]: `briefs/concept-sketches-qbr-2026-07-20.md`, Package 5 — Client-Facing Proof, Cross-Vendor
  (Branch A), fields 2–4 and 9. Idea Chess pass, ~0.43–0.64% naive survival.
