# Go/No-Go Ledger · Alpha (RACE) — DRAFT TEMPLATE TEST

**Source tickets:** ADL-1838 (Initiative) · ADL-1839 (Epic · Raj Dhesi) · ADL-1840 (Research Spike · Carla Gajdecki) · ADL-1836 (Sub-Task) · ADL-1837 (Sub-Task · closed)
**Source briefs:** `briefs/handoffs/raj-alpha-race-2026-05-27/`
**Generated:** 2026-05-28 · [CS: VERIFIED — all data pulled from Jira and local handoff packet]
**Purpose:** Test whether a per-ticket ledger holds enough honest information to drive a Go/No-Go decision without a slide deck.

---

## 0. What this ledger is

A per-work-item read of: *did we ship the right thing?*

Not a status report. A **squish detector.** Each row shows what was ambitioned, what was decided, what got built, and where the gap between them sits unnamed.

Three tiers (T1/T2/T3) populate concurrently — not sequentially. Four questions score at every tier so compression is visible.

---

## 1. Initiative read · ADL-1838 (Open · Carla Gajdecki)

**Outcome statement [R: ADL-1838]:** *Analysts investigate incidents, not alerts.*

| | Status |
|---|---|
| Strategic alignment | ✓ Roadmap theme: Expanded Multi-Event Correlation |
| Customer evidence | ✓ Hilda feedback Mar 2026 — 3-4 tickets per incident, SOAR alert fatigue |
| Spike status | ⏳ ADL-1840 still Doing — eng readiness not yet readable |
| Prioritization score | 2.57 (Medium-High) |

**Initiative-level verdict:** Cannot Go/No-Go until ADL-1840 closes. Spike is the gate.

---

## 2. Per-Epic ledger · ADL-1839 (Epic · In Progress · Raj Dhesi)

### T1 · Origin (Concept)

- **Source:** ADL-1838 + Hilda customer feedback (Mar 2026)
- **Problem:** MDR analysts hunt across alerts/logs/tickets to establish context [R]
- **Ambition:** incident-driven experience, not event-driven [R]
- **Implicit ambition:** real-time / minutes-matter framing [A — read from "active incident" language]

### T2 · Design-meeting decisions visible in ticket

- Incident view location: dashboard *or* Abacus-adjacent (deferred) [R]
- Standardized fields chosen: user, host, source, destination [R]
- Scoring transparency UI: not yet specified [?]
- Trust-building UI: not yet decided [?]

### T3 · Eng reality (from ADL-1839 + ADL-1840 spike)

- **Must Have (8 items):** correlation engine · probabilistic scoring · standardized fields · analyst incident view (MDR-only) · monitoring · benchmarking · success measurement · Pendo tagging [R]
- **Should Have:** transparent scoring explanations · stability metrics · feedback loops [R]
- **Explicit Out of Scope:** customer-visible UI · real-time (<1 min) · Abacus replacement · partner self-service [R]
- **DS + Eng same person:** Zachary Swartz [R: ADL-1840] — single point of failure
- **Pending spike close:** correlation accuracy %, perf budgets, scale answer [?]

### Four-question scorecard

| Q | T1 | T2 | T3 | ⚠ Flag |
|---|---|---|---|---|
| Q1 · Meets user needs | HIGH ~80% | MED-HIGH | UNKNOWN | spike pending |
| Q2 · Solves problem | HIGH (Hilda) | HIGH | HIGH | — |
| Q3 · Creates new harm | LOW | MED ⚠ | MED ⚠ | analyst mistrust unresolved |
| Q4 · Works with system | UNKNOWN | UNKNOWN | LIKELY HIGH | builds on syscore/Incident Map |

### ⚠ Drift / Squish / Missing

1. **⚠ Real-time → time-boxed windows.** T1 ambition was minutes-matter; T3 cuts to batch. *No compression note exists in ticket.* Risk: loses "incident as it unfolds" framing.
2. **⚠ "Why grouped" UI is Should Have, not Must Have.** T1 trust requirement; T3 deprioritized. Analyst trust is the named #2 risk in the same ticket. Missing.
3. **⚠ Customer UI is Out of Scope** — but the customer demo handoff (raj-alpha-race-2026-05-27) is producing one. Cross-ticket collision. Resolved as *demo is sales surface, not Alpha product surface* — but not stated anywhere in writing.
4. **⚠ UX listed "Consulted"** in ADL-1840 — actual UX (Alaina + Beth) is driving Phase 1 + Phase 2 artifacts. Ticket understates contribution. [WOBBLY in source]

### Eng-flipped owensing prompts

For Zachary / eng review at Go/No-Go meeting:

- **Drift?** Did "incident story" become "ranked list of grouped detections"? Same words, smaller solution?
- **Adequacy?** With correlation accuracy unknown, will analysts trust the grouping enough to use it *daily* — the stated success criterion?
- **Missing?** Spec asked for transparent scoring as Should Have. Trust requires it. Why not Must Have?

### Verdict suggestion

**Ship-with-conditions** — pending ADL-1840 spike close.

**Conditions:**
1. Promote "transparent scoring explanations" → Must Have
2. Write compression note for real-time → time-boxed (in ticket, visible)
3. Resolve customer-UI/sales-demo boundary in writing (Beth + Raj)
4. Backup DS owner — Zachary as single point is a Q4 risk
5. Update ADL-1840 stakeholder list: UX from Consulted → Contributing

---

## 3. Parallel path · Customer demo (Beth + Alaina · raj-alpha-race-2026-05-27)

### T1 · Origin

- **Brief:** `alpha-race-customer-prototype.brief.md` (DRAFT, 65% [A]/[?])
- **Ambition:** customer signs/expands after demo
- **Problem:** customers don't yet see Alpha's value prop

### T2 · Decisions pending (4)

| # | Decision | Owner |
|---|---|---|
| 1 | Which customer? Industry/size/buying stage | Beth + Raj |
| 2 | What does demo trigger? Next meeting? Pilot? | Beth + Sales |
| 3 | Incident story source — real Alpha or synthetic? | Raj |
| 4 | Has "what/why/next" been tested? | Raj + Research |

### T3 · Eng reality

- **Critical:** ADL-1839 explicitly says Customer UI is Out of Scope
- This demo = sales tool, not product surface
- T1/T3 collision **must be named** to avoid confusion at meeting

### Four-question scorecard

| Q | T1 | T2 | T3 | ⚠ Flag |
|---|---|---|---|---|
| Q1 · Meets user needs | MED (target customer not defined) | UNKNOWN | N/A — not product surface | scope check |
| Q2 · Solves problem | MED-HIGH | UNKNOWN | — | — |
| Q3 · Creates new harm | MED ⚠ (selling future capability) | UNKNOWN | — | "tech demo" risk from brief |
| Q4 · Works with system | N/A | — | — | demo, not integration |

### ⚠ Drift / Squish / Missing

1. **⚠ The demo sells what the Epic says is Out of Scope.** Customer sees customer-facing UI; Epic says none. Must be framed as sales-tool, not product-state, to all attendees.
2. **⚠ 65% [A]/[?] in brief** — Band Protocol threshold is 30%. Brief is not ready for full build. Pipeline correctly stopped.
3. **⚠ No analyst/customer validation** of "what/why/next" narrative structure (Failure Mode #2 in brief).

### Verdict suggestion

**Hold.** Brief is DRAFT, pipeline stopped intentionally pending four decisions. Ledger confirms this is correct — not blocked, **waiting for human calls.**

---

## 4. Cross-ticket squish map

What's at risk across the whole RACE work:

| T1 insight | T2 decision | T3 reality | Squish? |
|---|---|---|---|
| Real-time incident context | window TBD | time-boxed batch | ⚠ unnamed |
| Analyst trust via transparency | Should Have | not Must Have | ⚠ unnamed |
| Incident story (narrative) | "what/why/next" structure | not validated | ⚠ untested |
| Customer-facing future | "no customer UI" in this release | demo surface exists in parallel | ⚠ collision |
| UX as driving function | "Consulted" in spike | shipping Phase 1 + 2 artifacts | ⚠ undercount |

**Five visible squishes.** Each is fixable. None are flagged in the tickets themselves. That's the gap this ledger fills.

---

## 5. How to use at Go/No-Go meeting

1. **Open ⚠ flags first** — they are the conversation
2. **Score Q1 and Q3 against tier history** — drops between T1 and T3 = compression to name
3. **Verdict = Ship / Ship-with-conditions / Hold / No-Go**
4. **Conditions become tickets** (or update existing tickets)

The meeting answers: *did we ship the right thing?* If five squishes are unnamed, the answer is no — even if all tickets are Done.

---

## 6. What this template needs that I couldn't build

- **Confidence intervals on Monte Carlo cells** — distribution + CI requires data we don't have yet
- **Per-hotspot rows** — needs actual UI element map (prototype hotspots from Alaina's anatomy doc would feed this)
- **Auto-generated drift detection** — would need a critic agent watching ticket diffs against the brief
- **Eng-flipped owensing answers** — those questions are for Zachary / engineering to answer at the meeting; ledger surfaces them, doesn't fill them

---

## 7. Does the shape hold?

Tested against five real tickets and one handoff packet. Surfaces:
- Real squishes (5)
- Real coordination gaps (UX undercount, single-point DS)
- Real verdict logic (Ship-with-conditions for Epic; Hold for demo)
- Real conditions that could become tickets

**Risks of this format:**
- Long. At meeting pace, a 200-word executive read on top would help.
- Requires honest tagging. If T1/T2/T3 rows aren't kept current, squish detection breaks.
- Doesn't replace eng review — *surfaces what to review.*

**Next test:** run this format on a ticket that's actually shipping, not one mid-spike. Need a closed feature to validate compression detection works post-hoc.

---

*Draft ledger · Band Protocol experiment · Beth + Claude · 2026-05-28*
