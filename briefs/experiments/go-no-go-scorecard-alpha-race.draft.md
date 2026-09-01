# Go/No-Go Scorecard · Alpha (RACE)

**Work item:** ADL-1839 (Epic · In Progress · Raj Dhesi)
**Parent:** ADL-1838 (Initiative · Carla Gajdecki)
**Spike:** ADL-1840 (Research · Doing · Carla Gajdecki)
**Companion work:** Customer demo handoff · `briefs/handoffs/raj-alpha-race-2026-05-27/`
**Generated:** 2026-05-28 · [CS: VERIFIED — all data from Jira + handoff packet]

---

## How this scorecard works

Three Go/No-Go decisions. Three audiences. One artifact.

| Tier | Question | Decision-makers | What they decide |
|---|---|---|---|
| **T1** | Do we understand the problem? | Exec · Product leadership · Carla · Raj | Fund or kill |
| **T2** | Are we making the right thing? | Design · Raj · Alaina · Beth | Solution shape matches problem |
| **T3** | Did we make the thing right? | Eng (Zachary) + Design + T1 leadership | Did we hold T1+T2 while building? |

Every tier gets the same four product-success ratings (Monte Carlo). When ratings drop tier-to-tier without a compression note → that's the squish T3 must catch.

```
Monte Carlo ratings (asked at every tier)
Q1 · Meets user needs?
Q2 · Solves the problem?
Q3 · Creates new user problems?
Q4 · Works with the system?
```

---

## TIER 1 · Do we understand the problem?

**Audience:** Carla, exec sponsor, Raj (as PM)
**Source of truth:** ADL-1838 (Initiative) + Hilda customer feedback Mar 2026

### Criteria

| # | Criterion | Score | Evidence |
|---|---|---|---|
| 1 | Problem real and sourced | ✓ PASS | Hilda feedback Mar 2026 · "3-4 tickets per incident" [R] |
| 2 | Customer evidence exists | ✓ PASS | MDR escalations + customer requests cited [R: ADL-1838] |
| 3 | Strategic alignment | ✓ PASS | Roadmap theme: Expanded Multi-Event Correlation [R] |
| 4 | Business case | ✓ PASS | 2.57 priority score · churn reduction framing [R] |
| 5 | Counter-positioning vs competitors | ✓ PASS | Arctic Wolf + CrowdStrike gaps named [R] |

### Monte Carlo product success rating

| Q | Rating | Notes |
|---|---|---|
| Q1 · Meets user needs | HIGH ~80% | Analysts and customers both named in evidence |
| Q2 · Solves problem | HIGH | Hilda + MDR reviews + competitor gap |
| Q3 · New user problems | LOW | Problem framing — too early to know harm |
| Q4 · System fit | n/a | Not T1's question |

### **Verdict: GO** ✓

Initiative is a real problem with sourced evidence. Funding decision is sound.

---

## TIER 2 · Are we making the right thing?

**Audience:** Raj (PM), Alaina (Design lead), Beth (Design), DS consult
**Source of truth:** ADL-1839 Epic + DS Figma + brief drafts

### Criteria

| # | Criterion | Score | Evidence |
|---|---|---|---|
| 1 | Solution shape maps to problem | ✓ PASS | Correlation engine + incident stories = the named ask |
| 2 | Must-Have list captures the value | ⚠ CONDITIONAL | "Transparent scoring explanations" is Should Have, not Must Have — trust is a #2 named risk |
| 3 | Solution doesn't drift from T1 ambition | ⚠ CONDITIONAL | T1 implied real-time; T2 deferred to time-boxed windows — no compression note |
| 4 | Narrative structure validated | ✗ FAIL | "What/why/next" not tested with any analyst or customer [?] |
| 5 | Out of Scope is defensible | ⚠ CONDITIONAL | Customer UI listed OoS; customer demo handoff in parallel creates collision |

### Monte Carlo product success rating

| Q | Rating | Δ from T1 | Notes |
|---|---|---|---|
| Q1 · Meets user needs | MED-HIGH | ↓ slight | Trust UI cut from Must Have |
| Q2 · Solves problem | HIGH | = | Core shape holds |
| Q3 · New user problems | MED ⚠ | ↑ | Analyst mistrust of scoring is named in ticket and unresolved in spec |
| Q4 · System fit | UNKNOWN | — | Pending T3 |

### ⚠ Drift detected at T2

- **Transparent scoring → Should Have.** T1 trust requirement → T2 deprioritized. No note.
- **"What/why/next" narrative → untested.** Failure Mode #2 in brief; spec says assumed-effective.

### **Verdict: CONDITIONAL GO**

Solution shape matches the problem. Two named conditions before proceeding to T3:
1. Promote transparent scoring explanations from Should Have → Must Have
2. Validate "what/why/next" narrative with at least one analyst before customer demo

---

## TIER 3 · Did we make the thing right?

**Audience:** Zachary (DS+Eng) + Raj + Alaina + Beth + Carla + exec sponsor
**Source of truth:** ADL-1840 spike outputs (when closed) + build artifacts + DoD checklist

### Criteria

| # | Criterion | Score | Evidence |
|---|---|---|---|
| 1 | Spike closed with answers | ⏳ PENDING | ADL-1840 still Doing |
| 2 | Engineering estimates exist | ⏳ PENDING | Spike close gates this |
| 3 | UX DoD met (Petersen, Feb 2026) | ⏳ PENDING | 7 sections · most unrated |
| 4 | DS readiness | ⚠ AT RISK | Zachary as single point on DS+Eng |
| 5 | Acceptance criteria validated | ⏳ PENDING | Beta hasn't run |
| 6 | Held T1 problem framing | ⚠ AT RISK | See drift below |
| 7 | Held T2 solution shape | ⚠ AT RISK | See drift below |
| 8 | All squishes have compression notes | ✗ FAIL | 5 unnamed (see below) |

### Monte Carlo product success rating (with drift check)

| Q | T1 | T2 | T3 projected | Compression note? |
|---|---|---|---|---|
| Q1 · Meets user needs | HIGH 80% | MED-HIGH | MED 60% projected | ✗ none |
| Q2 · Solves problem | HIGH | HIGH | HIGH | n/a |
| Q3 · New user problems | LOW | MED ⚠ | MED ⚠ | ✗ none |
| Q4 · System fit | n/a | UNKNOWN | LIKELY HIGH | n/a (syscore) |

### ⚠ Squish list (T3 must resolve before Go)

Every row below is T1 or T2 insight that does not yet survive in T3 work:

| # | T1/T2 insight | T3 reality | Compression note? | Risk |
|---|---|---|---|---|
| 1 | Real-time incident context | Time-boxed batch windows | ✗ none | Loses "incident as it unfolds" framing |
| 2 | Analyst trust via transparency | Should Have, not Must Have | ✗ none | Daily-use success criterion fails if trust fails |
| 3 | "What/why/next" narrative | Not validated | ✗ none | Comprehension assumed, not tested |
| 4 | Customer-facing future ambition | "No customer UI" + demo exists in parallel | ✗ none | Coordination collision at Go/No-Go meeting |
| 5 | UX as driving function | "Consulted" in spike | ✗ none | Misattributes who shaped the work |

### Eng-flipped owensing prompts (for Zachary at Go/No-Go)

- **Drift?** Did "incident story" quietly become "ranked list of grouped detections"? Same words, smaller solution?
- **Adequacy?** With correlation accuracy still TBD, will analysts trust enough to use *daily*?
- **Missing?** Trust UI is in Should Have. Trust risk is in Must Have section. Why the mismatch?

### **Verdict: HOLD until spike closes**

Cannot Go/No-Go. ADL-1840 must close first. Five squishes must be named (or formally cut with notes) before T3 can verdict.

When spike closes, expected verdict: **SHIP-WITH-CONDITIONS.**

### Conditions for T3 Go (when spike closes)

1. Promote transparent scoring explanations → Must Have (T2 condition rolling forward)
2. Write compression note for real-time → time-boxed windows decision
3. Resolve customer demo / OoS collision in writing (Beth + Raj)
4. Backup DS owner — Zachary as single point on DS+Eng is a Q4 risk
5. Update ADL-1840 stakeholder list — UX from "Consulted" → "Contributing"
6. Validate "what/why/next" narrative with at least one analyst before customer demo runs

---

## Parallel scorecard · Customer demo handoff

**Work item:** `briefs/handoffs/raj-alpha-race-2026-05-27/`
**Owners:** Beth + Alaina

### T1 · Do we understand the problem?

| # | Criterion | Score |
|---|---|---|
| 1 | Customer target defined | ✗ FAIL — "which customer?" is open decision #1 |
| 2 | Decision to be triggered | ✗ FAIL — open decision #2 |
| 3 | Success criteria | ✗ FAIL — Gate 3 mostly [?] in brief |

**Brief evidence ratio: 65% [A]/[?]** — Band Protocol threshold is 30%.

**Verdict: HOLD.** Pipeline correctly stopped. Awaiting four human decisions.

### T2 · Are we making the right thing?

Cannot evaluate until T1 closes.

### T3 · Did we make the thing right?

Cannot evaluate until T2 closes.

### ⚠ Cross-scorecard collision

The customer demo's T3 future will collide with ADL-1839's "Customer UI Out of Scope" unless framed explicitly as **sales tool, not Alpha product surface.** Add to Conditions list above.

---

## What the scorecard cannot do without help

- **Auto-generated drift detection** — needs a critic agent watching ticket diffs against the brief
- **Confidence intervals on Monte Carlo ratings** — needs real telemetry, not projection
- **Per-hotspot rows** — needs hotspot map from Alaina's anatomy doc
- **Eng-flipped owensing answers** — Zachary answers at the meeting; scorecard surfaces, doesn't fill

---

## How to use this at three different meetings

| Meeting | Who attends | Read | What they decide |
|---|---|---|---|
| T1 Initiative review | Exec + Carla + Raj | T1 section only | GO / HOLD / KILL |
| T2 Design review | Raj + Alaina + Beth + DS consult | T1 verdict + T2 section | Right thing / wrong thing |
| T3 Pre-ship Go/No-Go | Eng + Design + Exec | All three + squish list | Ship / Ship-w-conditions / Hold |

Three meetings. One artifact. The squish list is the conversation at meeting 3.

---

## Does the shape hold? — second test pass

**This draft surfaces:**
- Three independent Go/No-Go decisions, each with its own evidence + audience
- Squish list quarantined under T3 (its proper home — "did we hold T1+T2?")
- Drift detection via Monte Carlo Δ between tiers
- Conditions that become tickets

**Open questions for next iteration:**
- Does it need a header card that summarizes verdict-per-tier in three pills (for the very fast read)?
- Should the squish list also call out *resolved* compressions (compression notes that exist)? Right now it only shows unnamed ones.
- Should each tier verdict allow "Conditional Go" + auto-route conditions to ticket creation?

*Draft scorecard v2 · Band Protocol experiment · Beth + Claude · 2026-05-28*
