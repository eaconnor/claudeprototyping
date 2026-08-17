---
artifact: "Band Protocol × Idea Chorus — Synthesis"
type: "canonical reference"
owner: "Beth"
date: "2026-05-28"
status: "draft v1 — consolidates: Idea Chorus rubric (Decisions 1–14), Bradley readiness rail (alpha-race Phase 1), PM Action Dashboard (Alaina Phase 2), three-gate spine (May 2026 design team talk), Owen primary sources (Santiago 1998 + Design Thinking 2007 + theory/justification + structured planning short), and the alpha-race fixture as worked example"
supersedes_drafts: ["briefs/experiments/go-no-go-ledger-alpha-race.draft.md", "briefs/experiments/go-no-go-scorecard-alpha-race.draft.md"]
parent_briefs: ["briefs/idea-chorus-rubric-v2-spec.brief.md", "briefs/methods-library-matrix.md", "briefs/research-methodology-specs.md"]
source_artifacts: ["prototypes/alpha-race-apex.html", "ai_prototyping_pm_files/pm-review-template.html", "ai_prototyping_pm_files/alpha-race-phase2-anatomy.html", "briefs/handoffs/raj-alpha-race-2026-05-27/", "briefs/alaina-alpha-race-handoff.md", "The Band — Solve the right problem...pdf"]
primary_sources: ["Owen 1998 Santiago — Design, Advanced Planning and Product Development", "Owen 2007 — Design Thinking: Notes on Its Nature and Use", "Owen — Structured Planning theory/justification", "Toyong et al. 2014 — Structured Planning as a Front-End Process"]
---

# Band Protocol × Idea Chorus — Synthesis

*Putting the good things together. Each prototype was a thinking instrument. This brief consolidates what survived.*

---

## 0. What this brief is

**One artifact.** The Band Protocol's working tool — Idea Chorus rubric + Bradley readiness rail + PM Action Dashboard + eng-flipped back-trace check — rendered as one coherent system with three faces for three audiences.

**The tool's purpose** [R — Beth 2026-05-28]: *"to make sure we answer these questions because I'm a designer/researcher/strategist type and want to make sure they stay attached to the whole project. It's about translating data to insights etc. (Owen)."*

The whole pipeline is one continuous translation:

```
Observation     →   Extension     →   Design Strategy    →   Solution Element    →   System Element
(data)              (the why)         (insight)              (idea)                  (built thing)
[direct evid.]      [explanation]     [imperative verb]      [Existing/Mod/Spec]     [Properties + Features]
                                                                                       ↑ Fulfilled Functions
                                                                                       ↑ Associated Design Factors
```

[R — Owen Santiago 1998 p.5–10 · Owen Design Factor structure · Solution Element document structure.]

This translation can't be siloed at the design layer. When engineering builds Properties without a back-trace to a Design Factor's Observation, the translation broke. **Rule #10 (Decision 15) catches that — it keeps the translation chain unbroken from data all the way to ship.** That's the philosophical answer that grounds Rule #10 and the eng-flipped owensing direction.

It is **not** new architecture. The architecture is in `briefs/idea-chorus-rubric-v2-spec.brief.md` (Decisions 1–14). This brief:
1. Closes the eng-ready gap (new Decision 15: Rule #10 back-trace integrity)
2. Maps the three rail-mode variants the prototypes have produced onto one toggle
3. Grounds the work in Owen's actual document chain (primary sources read)
4. Runs the result against the alpha-race fixture as proof of shape

**Primary audience [R — Beth 2026-05-28]:** the Adlumin team. Locks visual system to Apex/Adlumin (approximated palette · Inter + JetBrains Mono · dark + light themes), voice to Bradley, data binding to live Jira (Atlassian MCP, cloud ID `21ab04ef-0acf-4e62-b163-a12e66774c17`).

---

## 1. The spine — three gates

From the May 2026 design team talk title slide [R — `The Band — Solve the right problem. Build the right thing. Build the thing right.pdf`]:

| Gate | Question | Audience | Decision |
|---|---|---|---|
| **Gate 1** | Solve the right problem? | Exec · product leadership · Initiative owner | Fund or kill |
| **Gate 2** | Build the right thing? | Design (PX + research) · PM | Solution shape matches problem |
| **Gate 3** | Build the thing right? | Eng + DS + design + Gate 1 leadership | Did we hold Gate 1 + Gate 2 while building |

Each gate is a Go/No-Go decision at its layer. Each gate has its own meeting, its own audience, its own verdict. Gate 3 is the convergence — the hardest because it must preserve the previous two.

**Behind the rail (engine layer), Bradley runs a fourth check:** Company-fit (Decision 9 Patch C, Rule #9). It surfaces as part of the Gate 1 verdict for PM-facing rendering, but exists as a distinct clash rule [R — `idea-chorus-rubric-v2-spec.brief.md` Decision 14: "Beth's Gate 4 = Idea Chorus's Company-fit clash"].

### When 3, when 4? [R — Beth 2026-05-28]

**3 gates = 3 decisions made at 3 meetings.** The PM-facing rail. The slide. Three audiences (exec sponsor → design → eng+convergence), three verdicts (Go/CONDITIONAL/HOLD/No-Go). This is the **narrative**. Solve right problem · Build right thing · Build thing right.

**4th gate (Company-fit) is transversal AND it's the layer up.** Two things at once:

1. **Per-brief:** Company-fit runs as a check at every gate — *"is this still the right thing for n-able?"* — and renders as the **Charter Traversal Chain's "Company Strategy" rung** (green/yellow/red). No separate per-brief meeting; it travels with the work.
2. **Cross-brief (portfolio):** Gate 4 aggregates to the **layer reported up to bosses · execs · board** [R — Beth 2026-05-28: *"the overall layer we report up to bosses/execs/board... tie this to the overall strategy layer — are we making the right portfolio of things"*]. Different audience, different cadence, different decision form.

```
                       Per-brief decision        Aggregates to
                       ──────────────────        ────────────────────
Gate 1 · Problem       fund or kill              portfolio of problems
Gate 2 · Right thing   right solution shape      portfolio of bets
Gate 3 · Built right   ship / hold / no-go       portfolio of shipped quality
─────────────────────────────────────────────────────────────────────
Gate 4 · Company-fit   transversal check         🌟 the portfolio answer
                       (Charter Traversal rung)  "Are we making the right
                                                  portfolio of things?"

Audience:              brief team                exec · VPs · board
                       (PM + design + eng + DS)  (portfolio review · QBR ·
                                                  roadmap review)
```

The methods that answer the portfolio question already exist in the rubric — **PORT cluster** (Strategic Portfolio): Doblin 10 Types · Ansoff · Innovation Ambition [R — `methods-library-matrix.md` v2]. Aggregating PORT-cluster testimony across briefs = the portfolio view.

| Surface | What | Where | When |
|---|---|---|---|
| **Show 3** | PM-facing rail header · slide deck · meeting names · per-brief verdict columns | UI / talk / story | per brief, three meetings |
| **Run 4** | Bradley's clash detector · Rule #9 alongside Rules 1–8, #10 · Company-fit visible per claim · `briefs/n-able-strategy-context.md` is the reference | Engine / clash report / Decision Log | per brief, every gate |
| **Roll up 4** | Cross-brief portfolio dashboard · PORT-cluster testimony aggregated · cross-Charter clash detection | Portfolio review · QBR · board | quarterly · per portfolio |

**For v1:** Gate 4 = per-brief Company-fit rung + named explicitly as the exec/board reporting layer.

**For v2+:** Gate 4 = portfolio aggregation surface — same methods (PORT cluster), broader scope. This activates the Decision 9 v2+ scaling direction: *"cross-Charter clash detection (do two Charters clash? do two product lines share unaddressed blindspots?)."* [R — Decision 9 + Beth 2026-05-28.]

Three gates is the story. Four checks is the mechanic. Three audiences run the per-brief meetings; a fourth audience (exec/board) reads the portfolio aggregation. The PM sees three; Bradley runs four; the board sees the fourth as a portfolio view.

---

## 2. The orientation grid — gates × Apex prototype fidelity tiers

```
                       GATE 1            GATE 2            GATE 3
                       Problem real?     Right thing?      Built right?
                       ─────────────     ─────────────     ─────────────
APEX TIER 1            natural home      can probe          premature
Concept                  ↓
APEX TIER 2            revisits          natural home       early signal
Structural                                ↓
APEX TIER 3            re-verifies @     re-verifies        natural home
Production-ready       scale                                 + UX DoD gates
```

**Apex Tier system** [R — `briefs/alaina-alpha-race-handoff.md`]:
- **Tier 1 · Concept** — Visual approximated. Tokens not bound. apx-* are HTML mockups. Data fake. Use for alignment/critique/customer conversation where everyone knows it's a sketch.
- **Tier 2 · Structural** — Real apx-* components. Real tokens. Mocked data OK. Production-faithful visuals, no production data binding.
- **Tier 3 · Production-ready** — All of Tier 2 + real data via schema.json + a11y audit + Storybook story. Ship-ready.

Gates = what's being asked. Tiers = what the artifact can answer.

A T1 prototype can answer Gate 1 well, probe Gate 2, and is premature for Gate 3. A T3 prototype can verify all three — but if Gate 1 hasn't been answered honestly, the T3 verification is theatre. **The diagonal is the legitimate trajectory.** Off-diagonal positions are tells.

### Construction rule — evidence thresholds per tier [R — Beth 2026-05-28]

Each tier has a minimum evidence-quality threshold. Below threshold = not ready for that tier; the artifact is masquerading at a fidelity it hasn't earned.

| Tier | Evidence floor (sourced [R]+[D]) | Cap on [A]+[?] | What it means |
|---|---|---|---|
| **Tier 1 · Concept** | **≥ 30% sourced** | ≤ 70% [A]/[?] | Rough idea OK. Lots of assumptions and unknowns. Enough Sign to start work, not enough to commit to structure. SIGN cluster cannot be empty (Bluntness precondition). |
| **Tier 2 · Structural** | **≥ 60% sourced** | ≤ 40% [A]/[?] | Minimum to build. Below this, structure is built on hypotheses, not evidence. **Building before 60% is a category error — you're shipping confident hallucinations at industrial speed.** |
| **Tier 3 · Production-ready** | ≥ 70% sourced (matches CLAUDE.md §9 brief-readiness threshold) | ≤ 30% [A]/[?] | Plus UX DoD gates (Petersen Feb 2026 · 7 sections). The existing Band Protocol threshold lives here. |

**For alpha-race specifically:** brief is grep-verified at 35% [R] + 0% [D] = **35% sourced.** Qualifies for Tier 1 concept work (above 30% floor). **Does NOT qualify for Tier 2 build** (below 60% floor) — which is exactly what the customer-demo handoff `briefs/handoffs/raj-alpha-race-2026-05-27/` named as "not ready for full build · pipeline correctly stopped." The construction rule confirms the existing finding.

**Operational implication:** Bradley's rail surfaces evidence ratio against the tier threshold for the current artifact. Below threshold → Bradley refuses to advance the tier badge; the fidelity banner shows the deficit explicitly. This is the structural answer to "did we ship at a fidelity we hadn't earned."

---

## 3. The engine — Idea Chorus rubric, ratified, plus Rule #10

The rubric (Decisions 1–14, parent brief) is the ratified engine. Holds as-is. This brief adds **one new clash rule (Rule #10)** and **one new rail mode (T3 Eng-ready)**.

### The 14 method clusters (band of methods)

CHTR (Charter) · SIGN (Sign Reading) · PORT (Strategic Portfolio) · FEAT (Feature/Concept Quality) · POS (Market Position/Adoption) · LAND (Landscape) · JOBS · NEEDS · JRNY · ECON · CNPT · EVID (Evidence Math) · META (Metaplan) · RLZE (Realize) [R — `methods-library-matrix.md` v2].

Each cluster is a voice. Each method owens itself — runs Owen Structured Planning on its own contribution:

```
Sign            — what's observable
Hypothesis      — what we think it means
Kill criterion  — what would falsify this
Force level     — Must / Should / Ought to
Evidence        — with [CS:] tag
Cannot see      — blindspot
```

[R — Decision 6 band-of-methods; mirrors Owen Design Factor's `Observation → Extension → Design Strategy → Solution Element` chain.]

### The 10 clash check rules (Bradley's diagnostic surface)

| # | Rule | Severity | Origin |
|---|---|---|---|
| 1 | Empty-seat | HIGH | Decision 9 |
| 2 | Empty-Kill | MEDIUM | Decision 9 |
| 3 | Charter-misalignment | HIGH / BLOCKED | Decision 9 |
| 4 | Force-evidence mismatch | MEDIUM | Decision 9 |
| 5 | Cross-voice tension | LOW–MEDIUM | Decision 9 |
| 6 | Adjacency gap | MEDIUM | Decision 9 |
| 7 | Confidence cascade | HIGH | Decision 9 |
| 8 | Unaddressed blindspot | LOW–MEDIUM | Decision 9 |
| 9 | Company-fit | HIGH / MEDIUM | Decision 9 Patch C (your Gate 4) |
| **10** | **Back-trace integrity (eng-flipped)** | **HIGH if Must-level constraint dropped · MEDIUM otherwise** | **new — Decision 15 (this brief)** |

Plus the **bluntness precondition** (Decision 9 Patch A): if SIGN cluster has no entry, Bradley returns TURN BACK without convening the council.

### Action verbs on every clash (with Skip-risk Monte Carlo)

- **ROLL OUT — Research** (specific method · sample size from NN/g or MeasuringU · cited)
- **ROLL OUT — Design** (specific artifact: Service Blueprint, 5Es, Need→Function, Empathy Map)
- **ROLL OUT — Data** (specific pull: Snowflake / Jira / ARR)
- **ROLL OUT — Citation** (parent Initiative, strategy doc, analyst report)
- **PARK IT** — UNVALIDATED stamp travels; clash visible on every downstream artifact
- **OVERRIDE** — Public, logged with PM name + reason as Originator/Contributors entry

Each carries a Skip-risk line: *"PMs in your situation who skipped this: X% shipped and missed, Y% killed late, Z% reached Oregon."*

[R — Decision 9 patch + `research-methodology-specs.md` for sample-size rules.]

### Three readiness states (Oregon Trail)

| State | Trigger | Voice |
|---|---|---|
| 🟢 **ROLL THE WAGONS** | Charter complete · Gameboard solid · Gameplay named · no Constraint violations · ≥3 of 5 chain rungs green | *"You're loaded. Captain's call."* |
| 🟡 **PARK AND PROVISION** | Charter exists but Gameboard/Gameplay has HIGH clashes · OR thin rank-1 testimony · OR 1–2 yellow chain rungs | *"You've got a wagon. Not ready to depart. Top three actions."* |
| 🔴 **TURN BACK** | Charter PLACEHOLDER · OR Constraint violation · OR any RED chain rung · OR SIGN empty | *"This is an idea looking for a problem. Find the customer first."* |

[R — Decision 12.]

### Four Monte Carlo product-success ratings — asked at every gate

Per your directive in this thread:

| Q | Asked at every gate |
|---|---|
| Q1 | Does it meet user needs? |
| Q2 | Does it solve the problem? |
| Q3 | Does it create new user problems? |
| Q4 | Does it work with the system? |

When ratings drop between Gate 1 → Gate 2 → Gate 3 without a compression note, that's the squish Rule #10 catches.

### Design Diagnostic Layer (5 checks)

[R — Decision 13]
1. Design Artifact Completeness (Service Blueprint · 5Es · Need→Function · Empathy Map)
2. Net CX Impact (Net Good · Net Neutral · Net Negative · Unknown)
3. Obviousness Classifier (Simple · Complicated · Complex · Chaotic — Cynefin)
4. Research Methodology Compliance (NN/g + MeasuringU sample-size floors)
5. Empathy Map Coverage (Say · Do · Think · Feel)

---

## 4. The interface — Bradley's rail in three modes

Each prototype produced a piece of this. The synthesis is one rail with three render modes — toggled by Apex Tier of the prototype, or by audience need for the meeting.

### Mode T1 — Concept rail (Gate 1 audience)

**Source:** `prototypes/alpha-race-apex.html` Phase 1 Bradley rail.

Renders:
- Fidelity banner (Tier 1 · honest checks: tokens ✗ · apx-* ✗ · schema.json ✗ · a11y ~ · prod parity ~ · live data ✗)
- Quality read (Promising · not ready) + Net CX Impact pair
- Monte Carlo path-frequency narrative (1,000 PMs in this position: % reached Oregon, % killed and saved, % shipped to nobody)
- **What you nailed** (specific wins, demo-survivable language)
- **What will hurt you** (consequences named)
- Routed risks to named people (design + research owners)
- Three personas tested against: Raj (inheritor) · Daniel (pushback) · Carla (author) [R — `briefs/alaina-alpha-race-handoff.md`]

### Mode T2 — PM Action Dashboard (Gate 2 audience)

**Source:** Alaina's `pm-review-template.html` Phase 2 anatomy.

Renders:
- Tier 2 banner (orange stripe · structural fidelity)
- Phase lineage strip (Done → Active → Planned + Jira ticket refs)
- **Numbered action cards with hotspot ↔ card linkage** (visual leader lines via Review Mode toggle)
- Each card: anchorLabel · title · tag (design / research / design-research / engineering) · meetWith (person + role) · why (decision-grade paragraph) · sampleItems (agenda) · whatYouNeedToKnow (methodology + effort + source) · decision (what you walk away deciding)
- References row (linked tickets · briefs · prior research)
- Light/dark theme toggle

### Mode T3 — Eng-ready back-trace (Gate 3 audience) [new]

Renders:
- Tier 3 banner (production-ready fidelity · DoD checks)
- **Owen back-trace per hotspot** (System Element ← Function ← Design Factor ← Defining Statement) — each link green/yellow/red
- **UX DoD checklist** (Petersen Feb 2026 Confluence: 7 sections) [R — ADL Confluence 61563404348]
- **Compression notes ledger** — every Must-level constraint that got cut, with Originator + date + reason
- **Skip-risk on remaining cuts** (per Decision 9 patch)
- **DS readiness row** (when AI feature: model · accuracy threshold · fallback · who owns)
- **OVERRIDE entries** (public, named, dated) — the honor-code structural answer surfaced

Same prototype HTML. Mode toggle in the rail. Same Idea Chorus data underneath.

### Workshop layer — framework canvases (mini workshop in place)

[R — Beth 2026-05-28: *"introduce frameworks and make them available somehow — like I used them in my original proto — place/framework to do the thinking. Mini workshop."*]

The rail tells the PM **what's needed**. The workshop layer is where they **do the work**.

When Bradley's clash report carries a `ROLL OUT — Design` or `ROLL OUT — Research` action, the card links to a canvas the PM can fill in place. Same prototype. Modal overlay. The PM (alone or with team) does focused thinking on the canvas; closes; canvas saves; cluster testimony updates; clash resolves or improves.

**For v1 — five canvases shipped** (chosen for alpha-race fit + Decision 13 alignment + Adlumin design-partner needs):

| Canvas | Modality | Feeds cluster | Decision 13 artifact |
|---|---|---|---|
| **Service Blueprint** | SVG drawing | JRNY | ✓ Design Artifact #1 |
| **5Es decomposition** | Sticky notes | JRNY | ✓ Design Artifact #2 |
| **Need → Function map** (Simon) | SVG drawing | JOBS + CNPT | ✓ Design Artifact #3 |
| **Empathy Map** (Say / Do / Think / Feel) | Sticky notes | JOBS + JRNY | ✓ Design Artifact #4 + Check #5 |
| **Jobs to Be Done** (functional + emotional/social) | Canvas form | JOBS | ✓ Primary alpha-race cluster |

Three modalities (sticky / SVG / form) carried forward from The House v3 [R — `HANDOFF_TO_WORK_CLAUDE_BAND_X_OPEN_VECTOR.md` §5.3]. Visual = Apex/Adlumin (per audience lock §0), not Itten/Bauhaus.

**Workshop mode triggers:**
- Click `ROLL OUT — Design` or `ROLL OUT — Research` action card → relevant canvas opens
- Click any hotspot → *"what frameworks does this hotspot need?"* → canvas picker
- Manual: framework library button in the rail header → pick from 5

**Mini-workshop pattern, not full sprint:**
- One canvas at a time
- Lightweight (one PM in 10 minutes, or PM + designer in 30)
- Save closes the workshop and updates the rail
- Empty canvas = empty cluster testimony = clash visible (no faking)

For v2+: extend to the rest of The House's framework library (POEMS · AEIOU · 4As · Five Human Factors · Value Web · Activity System · 10 Types of Innovation · BMC) — surfaced when the relevant cluster needs them. [R — `HANDOFF_TO_WORK_CLAUDE_BAND_X_OPEN_VECTOR.md` §5.2 framework inventory.]

---

## 5. Data primitives — what binds the layers

```
Hotspot (UI element on prototype)
  ⇅ joins to
System Element (Owen's canonical primitive)
  · Properties (what it is — for engineering, per Owen 1998 p.10)
  · Features (what it does — for DESIGN, per Beth's Principle D correction)
  · Fulfilled Functions (back-trace anchor)
  · Associated Design Factors (back-trace anchor)
  ⇅ joins to
Jira issue (ADL-1838 / 1839 / 1840 etc.) — pulled live via Atlassian MCP
  ⇅ joins to
Council voice testimony (owensed — 6 fields per cluster, surfaced when Bradley convenes)
```

[R — Owen Santiago 1998 p.5–10 for System Element document structure; Principle D correction for Properties/Features split; Decision 14 for Jira/MCP integration; Decision 9 for clash detection over canvas data + method specs.]

The hotspot is the join key Alaina established. The System Element is Owen's canonical primitive. They merge: **every hotspot has a back-trace through Owen's document chain to the original Defining Statement constraint.**

---

## 6. Decision 15 — Back-trace integrity (Rule #10) — full spec

### What it checks

For every System Element on the prototype that has reached Tier 2 or Tier 3 fidelity, Bradley walks the trace backward:

1. Does the System Element fulfill its declared Functions?
2. Does each Function still trace to a Design Factor with a non-empty Observation + Extension?
3. Does the Design Factor's Source still resolve (Defining Statement still exists, hasn't been silently dropped)?
4. Does the originating Defining Statement's *constraint* (Objective / Directive / Constraint flags) still hold in the built version?

### Severity

- **HIGH** if a Must-level Defining Statement constraint is no longer fulfilled by any System Element, and no compression note exists.
- **MEDIUM** if a Should-level constraint is dropped without note.
- **LOW** if an Ought-to-level constraint is dropped without note, or if the trace is broken but the underlying intent is preserved by a substitute Solution Element.

### Bradley's voice on the clash

> *"Captain — the thing engineering is building doesn't fulfill the Function you committed to at Defining Statement #N. Either the Function changed (and nobody told the council), or this isn't the same idea anymore. Pick one:*
> *— ROLL OUT — Re-Owen the System Element (rewrite Properties/Features to actually fulfill the original Function)*
> *— PARK IT (UNVALIDATED stamp travels to the System Element and all downstream artifacts)*
> *— OVERRIDE (formally drop the constraint — your name and reason go on the artifact)."*

### Skip-risk pattern (Monte Carlo)

*"PMs in your situation who shipped without resolving a Must-level back-trace break: ~63% shipped and missed (built the wrong thing); ~22% killed late after exec called the gap; ~15% shipped successfully (the constraint turned out to be optional)."*

[CS: MEDIUM — simulated from Owen RELATN-derived path frequency per Decision 12 calibration disclosure pattern; tunes from accumulated data forward.]

### What this rule gives the eng meeting

A defensible, deterministic check that engineering's work still maps to what was promised. Not vibes. Not a critic's opinion. A trace that either holds or doesn't.

When the trace doesn't hold and a compression note exists with an Originator, the team made a conscious cut and the system honors that decision. When the trace doesn't hold and no compression note exists, the squish is unnamed — and Bradley surfaces it.

---

## 7. Workflow — how it runs end-to-end

```
1. spec     → produces .brief.md (Charter + Defining Statements + early Design Factors)
              Three-gate evidence tags [R]/[D]/[A]/[?]. >30% [A]+[?] = not ready.

2. scout    → pulls Jira tickets, parent Initiatives, n-able strategy
              Populates Charter Traversal Chain (5 rungs)

3. build    → produces prototype HTML at declared Apex Tier (1/2/3)
              Hotspots map to System Elements with Properties + Features

4. critic   → runs Bradley's rubric:
              · Bluntness precondition (SIGN populated?)
              · 10 clash rules (incl. Rule #10 back-trace)
              · Design Diagnostic Layer (5 checks)
              · Oregon Trail Readiness Score
              · 4 Monte Carlo ratings per gate (Q1-Q4) with drift detection
              · Outputs Bradley's rail in mode (T1/T2/T3) matching prototype tier

5. council  → optional --council pass; 14 cluster voices testify (each owens itself)

6. handoff  → packet to recipient with all artifacts + Bradley rail as portable markdown
```

**Bradley re-fires when:**
- New ticket data lands (continuous discovery loop per Decision 14)
- A Defining Statement's constraint changes (cascading impact analysis)
- Apex Tier advances (T1 → T2 → T3 triggers re-evaluation)

---

## 8. Application — alpha-race as fixture

Run the synthesized rubric against ADL-1838 (Initiative) / ADL-1839 (Epic) / ADL-1840 (Research Spike) using the actual data pulled this session.

### Bradley's report — Epic level (ADL-1839)

**Bluntness precondition:** ✓ PASS. SIGN populated (Hilda customer feedback Mar 2026 · MDR escalations · "3-4 tickets per incident").

**Oregon Trail Readiness:** 🟡 PARK AND PROVISION
- Charter exists (Initiative ADL-1838 has Defining Statements) ✓
- Gameboard solid: SIGN strong (Hilda) · JOBS named (MDR analyst investigates incident, not alerts) ✓
- Gameplay named: CHTR + PORT + FEAT present ✓
- BUT: rank-1 cluster (JOBS or SIGN) testimony has unverified narrative ("what/why/next" untested)
- Charter Traversal Chain: 3 of 5 green (proposition · brief Charter · parent Initiative) · 2 yellow (n-able FY27 strategy referenced but not loaded in `briefs/n-able-strategy-context.md` · market signals partial)

**Net CX Impact:** ▒ UNKNOWN. Mode 3 ethnography on analyst workflow not complete. Required for Net Good declaration.

**Four-question Monte Carlo (with drift detection):**

| Q | Gate 1 | Gate 2 | Gate 3 projected | Compression note? |
|---|---|---|---|---|
| Q1 · Meets user needs | HIGH 80% | MED-HIGH | MED 60% projected | ✗ none |
| Q2 · Solves problem | HIGH | HIGH | HIGH | n/a |
| Q3 · New user problems | LOW | MED ⚠ | MED ⚠ | ✗ none (trust risk) |
| Q4 · Works with system | n/a (Gate 1) | UNKNOWN | LIKELY HIGH | n/a (builds on syscore) |

### Clash report — what the council caught

**The council found three things you nailed:**
- Hilda customer feedback Mar 2026 is sourced [CS: VERIFIED via ADL-1838 description]
- Roadmap alignment: Expanded Multi-Event Correlation theme ✓
- Out of Scope (customer UI · real-time · Abacus replacement · partner self-service) explicitly named — that's discipline

**And five things they caught:**

| Rule | Clash | Action |
|---|---|---|
| **#3 Charter-misalignment** | T1 ambition implied real-time/minutes-matter. T2/T3 cuts to time-boxed windows. No compression note. | ROLL OUT — Citation (write the compression note in ADL-1839; Originator named) OR OVERRIDE (declare real-time was never required; logged) |
| **#4 Force-evidence mismatch** | "Transparent scoring explanations" is Should Have. Analyst mistrust of scoring is named as a #2 risk in same ticket. Must-level risk + Should-level solution = mismatch. | ROLL OUT — Design (promote to Must Have; design the trust UI before MDR beta) |
| **#10 Back-trace integrity (NEW)** | Customer demo handoff (`briefs/handoffs/raj-alpha-race-2026-05-27/`) produces customer-facing UI. ADL-1839 says Customer UI is Out of Scope. Two artifacts trace to same Charter, contradict each other. | ROLL OUT — Citation (resolve in writing: demo is sales tool, not Alpha product surface; Originator: Beth + Raj) |
| **#6 Adjacency gap** | "What/why/next" narrative structure is core to Acceptance Criteria. Untested with any analyst or customer. SIGN has Sign but no verification. | ROLL OUT — Research (test narrative with 5–8 MDR analysts before MDR beta; NN/g 5-user rule per `research-methodology-specs.md`) |
| **#8 Unaddressed blindspot** | UX listed as "Consulted" in ADL-1840 spike. Alaina + Beth driving 3+ artifacts. Originator/Contributors trail wrong. | ROLL OUT — Citation (update ADL-1840 stakeholder list: UX from Consulted → Contributing; honor-code surface) |

### Design Diagnostic Layer

- **Design Artifact Completeness:** 1 of 4 present (prototype). Missing: Service Blueprint of current analyst LOTL workflow · 5Es decomposition · Need→Function map (Simon) · Empathy Map.
- **Net CX Impact:** ▒ UNKNOWN
- **Obviousness Classifier:** ~70% Complex (genuine SOC analyst behaviour-change uncertainty), ~30% Simple (incident grouping pattern exists)
- **Research Methodology Compliance:** ❌ Non-compliant. Brief cites no analyst interviews. NN/g floor is 5; AI feature floor 10–12.
- **Empathy Map Coverage:** 1 of 4 quadrants filled (Say — Hilda's customer feedback). Missing: Do · Think · Feel.

### Verdict suggestion (for the three meetings)

| Gate | Audience | Verdict | Conditions |
|---|---|---|---|
| **Gate 1** | Carla, Raj, exec sponsor | **GO** | None — problem is real, sourced, strategically aligned, 2.57 priority score |
| **Gate 2** | Raj, Alaina, Beth, Julian (research), DS consult | **CONDITIONAL GO** | (1) Promote transparent scoring to Must Have. (2) Test "what/why/next" narrative with 5–8 analysts. (3) Run Mode 3 ethnography on current SOC LOTL workflow before MDR beta. |
| **Gate 3** | Zachary (DS+Eng), Raj, Alaina, Beth, Carla, exec | **HOLD** until ADL-1840 spike closes | (1) Write compression note for real-time → time-boxed. (2) Resolve customer-demo / Out-of-Scope collision in writing. (3) Backup DS owner (Zachary single point). (4) Update ADL-1840 stakeholder list. |

---

## 9. The five squishes — rendered as Owen back-trace breaks

| # | Owen-language description | Severity | Compression note? |
|---|---|---|---|
| 1 | Defining Statement implied Must-level constraint "incident as it unfolds (active incident, minutes matter)" no longer fulfilled by any System Element. Cut to time-boxed batch windows. | HIGH | ✗ |
| 2 | Defining Statement names analyst trust as #2 risk. Solution Element "transparent scoring explanations" relegated to Should Have. Force-evidence mismatch. | MEDIUM (high practical impact) | ✗ |
| 3 | Solution Element "what/why/next narrative" claimed in Acceptance Criteria. No Design Factor trail to user research. Untested. | MEDIUM | ✗ |
| 4 | Two parallel artifacts (Epic ADL-1839 + customer demo handoff) trace to same Charter but contradict on "customer-visible UI." Originator/Contributors trail incomplete. | MEDIUM | ✗ |
| 5 | Originator/Contributors trail on ADL-1840 names UX as "Consulted." Actual System Element contributions show UX driving (Alaina + Beth). Attribution honor-code surface broken. | LOW–MEDIUM | ✗ |

Each is fixable in one Bradley session with the right action verb. None are flagged in the tickets themselves. That's the gap Rule #10 fills.

---

## 10. The honor-code structural answer

Per Owen 1998 + your CLAUDE.md §6 (Lawrence University Honor Code) + Cross-Cutting Principle C:

Every clash carries Originator + Contributors. Every OVERRIDE is public — your name and reason go on the artifact. Every compression note has an author and a date. UNVALIDATED stamps travel — they don't get scrubbed.

The Pete Hegseth test applies to every prototype seed data. Fictional names. No real customer data. "Acme Bldg Supply" is the canonical fictional company [R — `briefs/handoffs/raj-alpha-race-2026-05-27/CLAUDE.md`].

`X% Beth` attribution on Originator entries. Mode 5 entries (concept generation) must be ≥70% Beth [R — Decision 9; Owen Originator/Contributors fields on every template].

This is the structural answer to "did AI substitute for judgment, or assist mechanics in service of judgment you hold." When the trail is complete, the answer is visible.

---

## 11. What survived from each prototype (the audit)

| Source | What survived | Where it lives now |
|---|---|---|
| `alpha-race-apex.html` Phase 1 | Apex Tier system · fidelity banner · Bradley voice · Monte Carlo narrative · nailed/will-hurt symmetric list · named routing · 3 personas | Rail mode T1 (§4) |
| Alaina `pm-review-template.html` | Numbered action cards · hotspot↔card linkage · Review Mode toggle · meetWith/agenda/decision · References row · light/dark theme | Rail mode T2 (§4) |
| Alaina `alpha-race-phase2-anatomy.html` | Hotspot anatomy · SVG leader lines · phase lineage strip | Rail mode T2 (§4) |
| `idea-chorus-rubric-v2-spec.brief.md` Decisions 1–14 | 14 clusters · 9 clash rules · owensing 6 fields · Oregon Trail · action verbs · Skip-risk · Charter Traversal · Gameboard/Gameplay · Design Diagnostic · Bluntness · Positive reinforcement · Company-fit · Intent Spec integration | The engine (§3) |
| `methods-library-matrix.md` | RELATN adjacency · 44 methods · 14 clusters · tradition codes | Engine reference (§3) |
| `research-methodology-specs.md` | NN/g + MeasuringU rules · anti-patterns | ROLL OUT — Research card source (§3) |
| `briefs/handoffs/raj-alpha-race-2026-05-27/` | Handoff packet structure · Bradley rail as portable markdown · CLAUDE.md orientation per packet · 47% grep-verification rule | Workflow §7 |
| `briefs/alaina-alpha-race-handoff.md` | Apex Tier definitions · 3 personas (Raj/Daniel/Carla) · Bradley voice tone | Rail mode T1 (§4) |
| Owen Santiago 1998 | Two-step development · System Element data structure · Properties/Features split · Quality Pyramid · Metaplanning · Action Analysis · Design Factors · Solution Elements | Data primitives (§5) + Decision 15 (§6) |
| Owen Design Thinking 2007 | Need → Values → Measures foundation · Map of Fields · design vs science complementarity · 14 characteristics of design thinking · "Facility for avoiding the necessity of choice" | Theoretical grounding (this brief) |
| Toyong et al. 2014 Structured Planning | RELATN + VTCON computer programs · Means/Ends ↔ Ends/Means · 5 phases of Structured Planning | Engine math (§3) |
| My scorecard drafts (`go-no-go-ledger`, `go-no-go-scorecard`) | T1/T2/T3 verdict structure with conditions · 4-question Monte Carlo per tier · drift detection · parallel scorecards for parallel work · per-Epic format that survives a meeting | Application §8 |
| May 2026 design team talk slide | Three-gate spine · color coding (vermillion · ultramarine · ochre) · question phrasing | The spine (§1) |

---

## 12. What this brief does NOT do

- **Does not replace the parent brief.** `idea-chorus-rubric-v2-spec.brief.md` remains the canonical Decisions 1–14 reference. This brief adds Decision 15 (Rule #10) and consolidates the rail-mode mapping.
- **Does not produce a v3 prototype yet.** The prototype build (single HTML with mode toggle T1/T2/T3) is the next move; this brief is the spec.
- **Does not solve the n-able strategy load gap.** `briefs/n-able-strategy-context.md` remains placeholder. Until loaded, Bradley returns MEDIUM Company-fit clash with the "I don't have n-able's strategy loaded" message [R — Decision 9 Patch C].
- **Does not run the actual Skip-risk Monte Carlo numbers.** Calibration disclosure applies: percentages are [CS: MEDIUM], simulated from Owen RELATN-derived path frequency, tunes from accumulated data forward.
- **Does not write the four Apex `apx-*` Tier 2/3 components.** That's the design-system bind that lives in Alaina's hands.

---

## 13. Test protocol — acceptance criteria

**A1.** Bradley's rail renders in three modes (T1 / T2 / T3) toggled by Apex Tier banner, against the same alpha-race fixture data. Mode toggle is one click.

**A2.** Rule #10 fires on the alpha-race fixture and returns the 5 squishes named in §9. Bradley's voice on each clash includes Originator-required compression note language.

**A3.** Four-question Monte Carlo ratings populate at Gate 1, Gate 2, and Gate 3 levels for ADL-1839. Drift detection triggers when Q1 drops Gate 1 → Gate 3 with no compression note.

**A4.** Oregon Trail Readiness state matches the verdict suggestion in §8 (PARK AND PROVISION for the Epic; HOLD pending spike close for Gate 3).

**A5.** Charter Traversal Chain renders 5 rungs with green/yellow/red status; Adlumin strategy doc shows yellow (placeholder per `n-able-strategy-context.md`).

**A6.** Bradley's Bluntness Precondition (Decision 9 Patch A) gates the council convening; for alpha-race, SIGN is populated (Hilda) so council convenes.

**A7.** Each clash card carries the typed action verbs (ROLL OUT — Research / Design / Data / Citation · PARK IT · OVERRIDE) with Skip-risk lines.

**A8.** Every OVERRIDE entry logs Originator + reason as `X% Beth` attribution per Cross-Cutting Principle C.

---

## 14. Next moves

**Immediate (this session or next):**
- [x] **Beth confirmed primary audience: Adlumin team** (2026-05-28). Apex/Adlumin visual locked. Bradley voice. Live Jira binding.
- [x] **Beth confirmed gate count: 3 surface / 4 engine** (2026-05-28). Company-fit is transversal — Charter Traversal Chain rung, not separate Go/No-Go column.
- [ ] **Beth: confirm v3 prototype build go-ahead** (single HTML, three rail modes, alpha-race fixture, Apex visual)

**Short-term (this week):**
- [ ] Update `briefs/idea-chorus-rubric-v2-spec.brief.md` with Decision 15 (Rule #10 back-trace integrity) — reference this brief
- [ ] Update `briefs/methods-library-matrix.md` with eng-flipped trace as v2+ scaling direction now activated
- [x] Build agent: produced `prototypes/band-x-idea-chorus-v3.html` v3.0 + v3.1 patch (3,111 lines)
- [x] Run critic agent against v3 build (mechanical gap pass — punch list resolved in v3.1)
- [x] **Council pass against v3.1** — 11 owensed testimonies captured at `briefs/council-pass-v3.1.md`. Loudest absences: LAND (Wardley map), ECON (economic buyer), JOBS (analyst coping-strategy interview). Genuine voice disagreement: SDT vs Maslow on trust UI.
- [ ] Update ADL-1840 stakeholder list (Beth has access; UX from Consulted → Contributing)

### Phase 2 callouts (from v3.1 design crit · 2026-05-28)

Captured here for next-iteration synthesis. Not patches against current v3.1 — directional inputs for v3.2 or a follow-on prototype.

1. **T1 / T2 / T3 modes look the same.** [R — Beth 2026-05-28 design crit] Toggle isn't carrying weight — three audiences, three questions should *feel* like different rooms, not a card-list with swapped content. Fix direction: differentiate layout per mode (T1 narrative · T2 action cards · T3 checklist/ladder); reframe header per mode; quiet the mode-independent strip so mode content can lead.
2. **Workshop framework expansion — v1 = 6 canvases (scope: "12 was scary, start with 6").** [R — Beth 2026-05-28] V1 surfaces six council-flagged canvases: **Wardley map** (LAND) · **Kano grid** (FEAT) · **Moore positioning statement** (CHTR/POS) · **Economic buyer map** (ECON) · prefill for **Service Blueprint** (JRNY · already in workshop) · prefill for **JTBD** (JOBS · already in workshop). Remaining frameworks (Doblin · Christensen sustaining/disruptive · Mode 5/6 alternatives · Mode 1 alternative casings · SDT/Maslow · Mode 3 ethnography plan) stay parked as research actions (next item) or Should-level next-tier. Prefill content drafted in `briefs/council-canvas-prefills.md` — gray text, verify by canvas author.
3. **Highlight council-flagged frameworks for the current ticket.** Workshop picker shows two sections: *"Council says do these on this ticket"* (sorted Must → Should → Ought, with source voice + force level badges) and *"Available frameworks"* (rest of library). Visual status: empty → filled → resolved-clash.
4. **Open research questions panel + Research Plan as `.md` export.** [R — Beth 2026-05-28: *"Research plan as md is kinda cool."*] New section in workshop layer. Holds unresolved Kill criteria from council testimony (e.g., Mode 1 alternative casings test, Mode 3 ethnography plan, Doblin classification interview, SDT/Maslow disambiguation interview). Each entry: question text · source voice · force level · methodology + sample size (auto-pulled from `research-methodology-specs.md`). "Make this a research plan" affordance → exports a Research Plan markdown file aggregating selected questions into a structured plan for Julian (Research). Output format matches existing project `.brief.md` shape so it lands as a working document, not a screenshot.
5. **Skip consequences need visceral language, not just percentages.** [R — Beth 2026-05-28 design crit] v3.1 Skip-risk lines read clinically ("41% shipped and missed"). Alaina + Phase 1 pattern was "scare in a good way" — name the specific person, the specific embarrassment, the specific moment. Add visceral one-line per card alongside the percentages.
6. **References treatment per Alaina's Phase 2 pattern.** [R — Beth 2026-05-28] Improve linked-documents visual treatment. Decision pending: inline per card / aggregated bottom row / both.
7. **Strategy/Company layer modal (hard placeholder).** [R — Beth 2026-05-28] New overlay surface, opens like the workshop layer. Shows the bigger Initiative plan + where this particular ticket fits and adds value. Aggregates portfolio-level view (Gate 4). Don't build now — note as placeholder. Likely v2+ alongside the cross-Charter clash detection direction. Loads `briefs/n-able-strategy-context.md` when live strategy is sourced.
8. **Risk score restoration.** [R — Beth 2026-05-28 design crit] Bring back Phase 1's per-incident Alpha Risk Score display (94/100 · High confidence · model + rules agree) onto the prototype canvas under hotspot #1. v3.1 has the meta-rubric but lost the Alpha product surface that the rubric wraps around.

9. **Council panel — drill-in to voices vs. Bradley-as-narrator.** [R — Beth 2026-05-28: *"Bradley talks to the council, but I like the idea of a council panel? or a way to drill in?"*] Current rail has Bradley speaking *about* the council ("the council caught three things"). The council pass produces 11 distinct voices with owensed testimony — currently collapsed into Bradley's narration. Direction: surface the voices directly. Two patterns to consider (decision open): (a) voice attribution on every clash card ("FEAT voice flagged this" · hover/click to read the full 6-field owensed testimony), or (b) dedicated "Council panel" overlay surface (like workshop layer) where each voice's testimony is a card the PM can read in full. Likely both — attribution at the card-level, panel for full read. Keeps Bradley as coordinator while letting the band of methods speak in its own voices.

10. **De-jargon Bethspeak for PM-facing surface.** [R — Beth 2026-05-28: *"Raj isn't going to know what squishes are — we are going to have to de-jargon Bethspeak and make it be more gen audience."*] The rail and clash cards use Beth's internal vocabulary: *squishes · owensing · RELATN · clash detection · cluster · BIM · Charter · METAplan*. These are theoretical-layer terms (Cross-Cutting Principle A: bury theory, surface process). PM-facing copy needs translation. Decision pending: what replaces "squishes"? Candidates — *"unnamed cuts" · "compression gaps" · "decisions nobody documented" · "where the work drifted"*. Apply consistently across rail blurbs, clash card titles, OVERRIDE prompts, framework picker labels. Theory-layer vocabulary stays in `briefs/` and council testimony; UI surface speaks plain English.

11. **Personas = real people on the team (not archetypes with role-in-parens).** [R — Beth 2026-05-28] Current v3.1 personas — Carla · Raj · Daniel · Zachary — are real names from ADL-1840 stakeholder list. Treatment in v3.1 still reads as archetypes ("Raj (inheritor) · Daniel (pushback) · Carla (author)"). Drop the parenthetical role labels — they're real humans on the product team. Expand to include the actual team: **Carla · Raj · Daniel · Zachary · Beth · Alaina · Julian**. "You can think of them as personas if you like" — but the surface treatment is real-person, not persona.

12. **Add-persona affordance — extensible team roster.** [R — Beth 2026-05-28: *"Also way to add a missing persona (Where's Julian?)"*] Julian (Research) is named throughout the rail copy and the Alaina handoff but is missing from the persona dropdown in v3.1. Two requirements: (a) immediate — add Julian + Beth + Alaina to the persona toggle. (b) structural — UI affordance to **add a teammate** when the work needs one (the dropdown isn't hardcoded; new team member can be added as the project evolves). Pattern: existing list + "+ Add teammate" → opens a small form (name · role · email · what they own on this Initiative).

13. **Visual density / cleanliness — build to learn, refine later.** [R — Beth 2026-05-28: *"We have 90 million UX fixes because this is hella busy. We were doing better in earlier versions, but let's get the functionality in good shape — build to learn, then refine."*] v3.1 surfaces a lot at once (three rail modes · mode-independent strip with Oregon + Charter + 4-Q Monte Carlo · five hotspots · five clash cards · five workshop canvases · persona dropdown · light/dark · framework picker). Density is high. Earlier versions (Phase 1 `alpha-race-apex.html` · Alaina's `pm-review-template.html`) read cleaner — fewer simultaneous elements, more breathing room, clearer hierarchy. **Build-to-learn discipline:** prove the functionality (council pass + drill-in · workshop save loop · audit mode · de-jargoned copy · real-people personas · framework prefills · research plan export) before optimizing visual polish. The visual refinement is a deliberate later pass against the earlier prototypes' cleaner baseline.

14. **Ship-as-is risk score — the main piece of information, top of rail.** [R — Beth 2026-05-28: *"I think I want an overall risk score for shipping as is. Maybe combine this score and the oregon monte carlo? maybe bigger and prominent in the rail — it's the main piece of information. Put it at the top."*] One composite number + state at the top of the rail, biggest visual element. Subordinates the existing Oregon Trail + 4-Q Monte Carlo + Charter Traversal Chain — those become the *reasoning* under the headline number.

**The score is owensed, not computed.** [R — Beth 2026-05-28: *"Need to Owens to get score."*] The composite ship-as-is risk score is the *aggregate render of the council's testimony*, not a formula on top of static numeric inputs. Three structural consequences:

1. **No council convened → no score.** Without the 11 voices each running owensed testimony against the artifact, the rail shows "Score pending · council not yet convened" rather than a fake number. This is the structural answer to hallucination — Claude does not compute a risk number; the band of methods produces one through testimony.
2. **PM has to do the owens work for the score to mature.** Filling canvases · resolving Kill criteria · logging OVERRIDE entries · accepting/rejecting council prefills — these are the PM actions that update the testimony. The score moves only when the testimony moves.
3. **Score = council's aggregate verdict.** Bradley reads each voice's Force level + Evidence [CS:] tag + Cannot-See blindspot + Sign/Hypothesis/Kill criterion completeness, and renders the aggregate as one number + state. The owensed format makes the score auditable per voice.

**What feeds the testimony (council reads these signals — but the number comes from the testimony, not these signals directly):**
- Evidence ratio vs. tier threshold (construction rule §2 — alpha-race 35% vs Tier 2 floor 60% = 25-point deficit · feeds SIGN + EVID voices)
- Oregon Trail Monte Carlo path frequencies (PARK AND PROVISION 🟡 → 4% rolled-anyway-shipped-and-missed · feeds META voice)
- Count of unnamed compressions / HIGH clashes (alpha-race = 5 unnamed squishes, 1 HIGH back-trace break · feeds all relevant cluster voices)
- Charter Traversal Chain status (alpha-race = 2 yellow rungs · feeds CHTR + LAND voices)
- Net CX Impact (alpha-race = UNKNOWN · feeds JRNY + CNPT voices)
- Bluntness precondition (alpha-race = passed thinly · gates whether council convenes at all)
- Empty-seat clashes (whichever cluster has empty canvas + has been ranked above #5 — feeds that cluster's voice as "shrugged")

**Output format (sketch):** *"Ship-as-is risk: **78 / 100** · HIGH"* — big number, color-coded state, with one-line reasoning beneath ("PARK AND PROVISION · 5 unnamed compressions · evidence below Tier 2 floor · council convened 2026-05-28"). Phase 1's "Alpha Risk Score 94/100" treatment translated to the *rail* level (not incident level).

**Per-voice attribution clickable** (links to callout #9 council drill-in): click the score → see which voices contributed what · their Force levels · their Cannot-Sees. Audit trail per claim.

**Why this is the main piece of information:** every other element in the rail is reasoning toward this one number. The PM who only reads one thing reads this. The exec who walks past the desk sees this. The headline answer to *"should we ship?"* — backed by 11 owensed testimonies, not by a black-box arithmetic.

Calibration disclosure: composite aggregation rules are [CS: MEDIUM] until empirical data accumulates from v1 forward (per Decision 12 pattern). Disclosure visible near the score. The *individual voice testimonies* carry their own [CS:] tags per Decision 9.

15. **Scores move as the idea progresses — each section recomputes.** [R — Beth 2026-05-28: *"there's probably something where as the idea progresses, the score in different sections can change."*] The composite ship-as-is risk (callout #14) and its component sections (evidence ratio · Charter Traversal Chain · Net CX Impact · 4-Q Monte Carlo · unnamed compressions · Oregon Trail state) are not static. They shift as the work moves through the pipeline:

**Lifecycle progression patterns:**

| Section | Tier 1 (concept) | Tier 2 (structural) | Tier 3 (production) |
|---|---|---|---|
| Evidence ratio | starts low (≥30% sourced floor) | rises toward 60% floor | approaches 70%+ |
| Charter Traversal Chain | proposition + brief Charter green; parent/strategy/market rungs likely yellow/grey | parent + strategy filled in; market rung sourced | all 5 rungs green or explicitly grey |
| Net CX Impact | UNKNOWN (no JRNY canvas) | classification possible (Good/Neutral/Negative) | verified against post-launch telemetry |
| 4-Q Monte Carlo | Q1–Q4 mostly UNKNOWN | drift detection fires between Gate 1 → Gate 2 | re-verified at scale |
| Unnamed compressions | rare (nothing built yet to compress) | grows as scope cuts happen | should be zero or all named |
| Composite risk | HIGH (everything's hypothesis) | MEDIUM (depends on conditions) | LOW if all checks pass |

**Implications for v3.2 prototype build:**

- **Every scoring section is wired to its inputs.** When canvas fills, evidence ratio recomputes. When OVERRIDE gets logged, compression count updates. When scout returns a new Source citation, Charter Traversal rung shifts green.
- **The composite risk score recomputes live** when any input changes. Show a small delta indicator: *"↓ 12 since last review · canvas fills + parent citation"*.
- **History view** — sparkline of risk score over the project's life, or a small timeline showing major moves (when squishes got named, when canvases filled, when OVERRIDES logged).
- **Bradley narrates the delta:** *"Since you last opened this: risk dropped 12 points. JRNY canvas filled in (Net CX moved from UNKNOWN → Net Good). Two compressions got Originator entries. Strategy rung still yellow — strategy doc not yet loaded."*

This activates Decision 14 integration #7 (Continuous Discovery feedback loops): *"After ship, Bradley re-convenes the council on production data; if the original Charter's claims are no longer validated, FLAGGED state re-fires and triggers a Cascading Impact Analysis."* The risk score is the visible artifact of that continuous loop.

**Pre-condition for v3.2:** the input wiring from callout #14 must be real (not just a hard-coded number), otherwise "scores change as the idea progresses" is theatre.

### Discipline note — build to learn, then refine

This is the operating principle for v3.2 and Phase 2 work. Functionality first (does the synthesis actually work? does the loop close? can someone reading the rail without Bethspeak understand it?). Visual polish second (against the cleaner baseline of `alpha-race-apex.html` Phase 1 and Alaina's PM Action Dashboard). [R — Beth 2026-05-28]

**Medium-term (this quarter):**
- [ ] Load `briefs/n-able-strategy-context.md` with live FY27 strategy (currently placeholder)
- [ ] Test v3 with the three personas (Raj / Daniel / Carla) per Alaina's handoff protocol
- [ ] Run the synthesized rubric on a second work item (not alpha-race) to validate calibration

**Long-term (v2+ scaling, per Decision 9):**
- [ ] Cross-PM Charter clash detection (do two Charters in the same portfolio clash?)
- [ ] Cross-domain clash detection (engineering · GTM · operations have their own cluster sets)
- [ ] Apex Assembly schema.json as executable canvas format (Decision 14 integration #4)
- [ ] Control Tower data aggregation feeds SIGN / ECON / CNPT / LAND canvases (Decision 14 integration #5)
- [ ] Recursive self-application — run Idea Chorus on Beth's and Nicole's foundational docs (Decision 14 integration #8)

---

## 15. Evidence summary

| Tag | Count | Notes |
|---|---|---|
| [R] Research/Sourced | dominant — most claims trace to existing briefs, Owen primary sources, or Jira tickets pulled this session | |
| [D] Data | low — pending real PM-session data accumulating from v1 forward | |
| [A] Assumed | flagged inline where invoked (Apex Tier visual coupling · audience priority · v3 build feasibility before Beth confirms) | |
| [?] Unknown | flagged inline (n-able strategy doc · cross-PM scaling viability · whether 10 clash rules is right granularity) | |
| [CS: VERIFIED] | data pulled live from Jira this session (ADL-1838, 1839, 1840, 1836, 1837); Owen PDFs read; existing briefs grep-verified | |
| [CS: MEDIUM] | Monte Carlo path-frequency numbers (calibration disclosure per Decision 12) | |

**Brief ratio:** Brief is grounded in primary sources (Owen 1998, 2007, theory/justification; existing ratified Decisions 1–14; live Jira) and the worked example (alpha-race) verifies the shape. Decision 15 (Rule #10) is the only genuinely new structural element; it derives directly from Owen's existing System Element document structure (Fulfilled Functions + Associated Design Factors are already there).

---

## 16. Closing — what this brief is FOR

You said: *"We are basically making a bunch of prototypes to think through the problem. We've learned from each. We need to put all the good things together."*

The good things are now in one file. The prototypes were the thinking; this brief is the residue.

What remains is the build — one HTML that demonstrates the synthesis against the alpha-race fixture, with the rail mode toggle, with Rule #10 catching the five squishes by name, with Bradley's voice telling whoever's in the meeting what the council caught and what they need to do next.

Lucy holds the clipboard. The band serves Beth. Mr. Marmalade doesn't get a seat at the table.

---

*Synthesis v1 · Band Protocol × Idea Chorus · Beth + Claude · 2026-05-28*
*Owen primary sources read · Idea Chorus rubric Decisions 1–14 ratified · Decision 15 added · alpha-race fixture verified*
