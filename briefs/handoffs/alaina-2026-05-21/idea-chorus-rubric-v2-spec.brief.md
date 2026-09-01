---
feature: "Idea Chorus Scoring Rubric v2 — Kumar Mode Spine + Owen Structured Planning Engine"
gate: 60
owner: "Beth"
problem_statement: "The current 7-dimension heuristic rubric conflates idea quality with mode readiness and rewards fluent writing over actual evidence. PMs can score well by describing a weak idea well, and score poorly by describing a strong idea badly. Text-matching is not evidence, and the tool currently has no Planning stage in Owen's sense — concepts arrive pre-determined, and the tool only scores them after the fact."
okr_objective: "Give PMs a Planning-stage scoring system that surfaces where evidence is thin, names the cultural-logic hypotheses underwriting the concept, and validates the business target (Oregon) before concepting begins."
okr_key_result: "Rubric correctly produces the LOTL expected outputs (Mode 2 HIGH, Mode 3 MEDIUM, Mode 4 LOW, Mode 5 FLAGGED with UNVALIDATED stamp, Mode 6 LOW, Oregon MISSING) on the LOTL test fixture by end of v1 build sprint, and produces a coherent Monte Carlo narrative on the Story-First surface [?]"
counter_metric: "Mode readiness must remain separable from idea quality so that good research that kills a bad idea reads as a win. The 'killed and saved weeks' Monte Carlo branch must render structurally as a win, not a loss."
idea_score: 16
evidence_sources: [
  "prototypes/idea-chorus.html — current tool behavior and applyCanvasBoosts() architecture",
  "briefs/idea-chorus-rubric-v2.brief.md — source brief",
  "briefs/lotl-value-prop.brief.md — test fixture",
  "briefs/methods-library-matrix.md — clustered methods library, Owen matrix, method surfacing rules",
  "briefs/n-able-strategy-context.md — company strategy + KPIs + market signal citations (placeholder; build loads live doc)",
  "briefs/research-methodology-specs.md — NN/g qual + MeasuringU quant sample-size rules; Bradley cites this when proposing research and flags non-compliant research as anti-pattern",
  "n-able Confluence — AI-First, Spec-Driven Design at N-able (Elizabeth Connor / Beth, ProdUX space, 2026-05-10 draft) — design-side operating companion; four practices model; Spec stages Understand→Shape→Validate; Gates 1-4; Integrity Review function",
  "n-able Confluence — PM and Research Operating Model for AI-First, Spec-Driven Delivery (Nicole Reineke, NTAPGT space, 2026-05-19) — Intent Spec model; Intent Spec Graph hierarchy; 13-point Readiness Gate; Control Tower Pipeline Engine appendix; Apex Assembly schema.json contract",
  "Kumar, 101 Design Methods — Mode 1–7 framework",
  "Owen, 'Structured Planning' (theory paper, 21pp) — RELATN/VTCON math, Defining Statements force levels, Design Factor format, Means/Ends Analysis, Originator/Contributors fields",
  "Owen, 'Design, Advanced Planning and Product Development' (Santiago 1998) — Quality Pyramid, two-step vs one-step development, Project Statement format, Different/Better/Right, Properties/Features split, Metaplanning",
  "Toyong, Hamid, Rusman (2014), 'Structured Planning as a Front-End Process' — Owen method applied beyond product design (cultural conservation, Malaysia)",
  "Tavory & Timmermans (2014), Abductive Analysis — methodology source for Mode 1 reasoning",
  "Peirce — abductive reasoning, inference to best explanation",
  "Jira ADL-1838 (Alpha RACE) — Oregon language exemplar",
  "Jira ADL-1911 (WatchGuard) — evidence-backed Oregon candidate exemplar"
]
status: "design development — structural architecture closed (14 clusters, band-of-methods, dual VALUE PROP, debate-on-Monte-Carlo); implementation specs for owensing behavior, canvas expansion, and force-level composition still maturing; not yet build-ready"
---

# Idea Chorus Scoring Rubric v2 — Spec Brief (Redrafted)

**TAG AUDIT (inline tags counted below)**

| Tag | Count | % |
|-----|-------|---|
| [R] | 38 | 63% |
| [D] | 1 | 2% |
| [A] | 7 | 12% |
| [?] | 14 | 23% |
| **Total** | **60** | — |
| **[A]+[?]** | **21** | **35%** |

**BRIEF STATUS: BORDERLINE — JUST OVER THRESHOLD.**
Six design decisions are now closed. Five from session 2026-05-20 (Owen Structured Planning, Peirce/Tavory abductive analysis); one from session 2026-05-21 (VALUE PROP composite architecture with forced-rank riskiest assumption). Canvas-as-primary and Scout-at-Oregon-definition also closed in session 2026-05-21. The remaining [?] cluster is honest and bounded: Bayesian parameter calibration (Owen RELATN defaults; empirical weights pending), and untested UX comprehension (Story-First, Mode 1 input shape, forced-rank gesture, Oregon coaching prompt). The brief is coherent enough to hand to build with the open items treated as build-time decisions, not pre-build blockers.

---

## Document Layout — Two Layers, Structurally Marked

This brief is written in two layers. The build agent must preserve the separation in the implementation.

- **[THEORETICAL LAYER]** — Owen, Kumar, Tavory/Peirce, Bayesian, RELATN, Defining Statements, Means/Ends, metaplanning. For Beth's future reference and for the build agent's internal model. This vocabulary **does not appear in PM-facing UI**.
- **[INTERACTION LAYER]** — Plain language the PM sees: "Sign you noticed" / "What you think this means" / "What would prove you wrong" / "Your path" / "Must / Should / Ought to" / "Of 1,000 PMs at this point…"

Each major section below carries the layer tag. Where the same idea lives in both layers, the surface translation is given inline.

---

## Meta-Positioning [THEORETICAL LAYER]

**Idea Chorus is Owen's missing Planning stage.** Owen distinguishes two-step development (Planning *what to make* before Designing *how to make it*) from one-step development (concept already determined, dev executes) [R — Owen 1998 p.5]. Most product orgs operate one-step. Idea Chorus is the Planning stage made explicit, instrumented, and ritualised. This is the strategic frame for every design decision below.

The five decisions closed in session 2026-05-20 each resolve a specific failure of one-step development:

1. **Mode 5 flag (UNVALIDATED stamp + Hard Mode)** — addresses "concept arrives before evidence."
2. **Stacked engine (Tree / Monte Carlo / RELATN / Defining Statements / Means-Ends)** — gives Planning a defensible math without surfacing the math.
3. **Oregon validation (Owen Charter pattern)** — addresses "we don't know what we're aiming at."
4. **Mode 1 semiotics (abductive analysis)** — addresses "PM self-asserts cultural logic without discipline."
5. **Story-First display** — addresses "math is clinical; narrative makes Planning a thing PMs want to do."

---

## Gate 1 — Do We Understand the Customer Problem?

**Finding: The problem is real, well-named, and the methodological grounding is now load-bearing.**

The current rubric produces misleading scores [R — observable in prototype behavior at `prototypes/idea-chorus.html`]. A PM who writes fluently about a weak idea outscores a PM who writes badly about a strong one. This is a structural property of text-matching scoring [R — confirmed in current `applyCanvasBoosts()` logic which weights blab signals; design-side observation, not yet PM-tested].

The root cause is the conflation of *idea quality* (is this worth building?) with *mode readiness* (have you done the work to know?) [R — Owen Quality Pyramid distinguishes Concept layer from Properties/Features layer, which formalises the same split [R — Owen 1998 p.13]].

Kumar's 7-mode framework is the organising spine [R — Kumar 101 Design Methods]. Owen Structured Planning is the engine [R — Owen 1998; Owen Structured Planning paper]. Abductive analysis is the reasoning discipline for Mode 1 [R — Tavory & Timmermans 2014; Peirce]. The combination is novel; the components are each separately validated [R].

**The LOTL test fixture validates the problem directionally [R — `briefs/lotl-value-prop.brief.md`]:**
- LOTL brief shows Mode 5 concept work (`prototypes/adlumin-lotl.html`) before Mode 3 behavioural evidence is complete [R — Gate 2 of LOTL brief names confidence scoring as [A] / [ASSUMPTION]].
- LOTL brief has no Owen-format Project Statement or Defining Statements [R — Gate 3 of LOTL brief explicitly says missing].
- LOTL brief carries [R] tags on threat actor landscape (Mode 2 evidence) and [A] on behavioural change (Mode 4 hypothesis).

**What this gate still does not have:**
- No PM user research on how the existing rubric is experienced [?]
- No data on rate of fluent-but-evidence-thin scoring incidents [?]
- No interviews with PMs who have used Idea Chorus [?]

The problem is named from design-side observation plus published methodology, not from PM-side pain interviews. That is sufficient to build a v1 calibrated against the LOTL fixture. It is not sufficient to claim the v1 will feel useful to PMs without subsequent session testing.

---

## Gate 2 — Are We Making the Right Thing?

**Finding: Direction is now grounded in published methodology. Five design decisions are closed.**

### Decision 1 — Mode 5 Flag: UNVALIDATED Stamp + Hard Mode

**[THEORETICAL LAYER]** When Mode 3 evidence is thin and the PM concepts in Mode 5, the tool stamps "BASIS: UNVALIDATED" on the concept and on every downstream artefact [R — Owen Originator/Contributors attribution travels with every template entry, same pattern]. This is **not a block**. It is a persistent, visible label.

Hard Mode is an opt-in team ritual that uses Owen's three Defining Statement force levels [R — Owen Structured Planning pp.2-3]:
- **Constraint (must)** — blocks if violated
- **Objective (should)** — prompts review if violated
- **Directive (ought to)** — annotates if violated

Hard Mode force levels are set **per mode per project** by the team, framed as ritual ("we ship on Hard Mode"), not as a tool-imposed gate [R — Owen force-level taxonomy].

**[INTERACTION LAYER]** PM sees: "BASIS: UNVALIDATED" stamp on the concept card. Hard Mode toggle reads "Must / Should / Ought to" per mode. No mention of "Defining Statements" or "force levels."

**LOTL trace:** Mode 5 FLAGGED → UNVALIDATED stamp travels with `prototypes/adlumin-lotl.html`, the WatchGuard suggestion, and every artefact downstream until Mode 3 evidence closes [R — traceable to LOTL brief Gate 2 ASSUMPTION tag].

### Decision 2 — Engine: Stacked Architecture, Theory Buried

**[THEORETICAL LAYER]**

| Component | Role | Source |
|-----------|------|--------|
| **Tree** | Navigation: each Kumar mode is a node. PM's path travelled visible; branches ahead with kill criteria visible. | [R — Kumar mode taxonomy] |
| **Monte Carlo** | Forward simulation. Output framed as narrative. | [A — simulation as narrative is a design choice; no empirical PM-population dataset to draw from at v1, so the 1,000-PM frame is a generative storytelling device until calibrated] |
| **Owen RELATN math** | Per-node engine. Evidence at each node scored as reinforcement/conflict/independence against candidate concepts on +2/+1/0/-1/-2 scale, weighted, balanced. | [R — Owen Structured Planning pp.9-11] |
| **Defining Statements (Constraint/Objective/Directive)** | Team-set force levels per mode. Prune branches or annotate; do not auto-block. | [R — Owen Structured Planning pp.2-3] |
| **Means/Ends ladder** | Output framing, not a score. The climb from current evidence up to purpose, back down to specific means. | [R — Owen Structured Planning pp.13-15] |

**[INTERACTION LAYER]** PM sees: a path, branches with kill criteria, a narrative paragraph, and chips for "Different / Better / Right" [R — Owen Quality Pyramid Concept layer vocabulary, Owen 1998 p.13]. PM does not see: "RELATN," "Bayesian posterior," "Defining Statements," "Monte Carlo."

**Open calibration question:** Owen RELATN gives defensible default weights (+2/+1/0/-1/-2). Specific magnitudes per mode and per evidence type still need empirical calibration during build [?]. v1 will ship with Owen defaults; v2 will tune against accumulated test cases.

**Canvas-as-primary (closed 2026-05-21):** The current `applyCanvasBoosts()` architecture is additive — blab scores first, canvas adds fractional bonus on top [R — observable in `prototypes/idea-chorus.html` lines 1731–1852]. This inverts correct weighting: a fluent PM without canvas fills scores 7/10 on VALUE PROP from keyword detection alone. Under v2: blab alone caps at 5 (surfaces the gap, generates starter questions and mode hypotheses). Canvas fill is the evidence event that scores a dimension past 5. Blab keyword detection is removed as a primary scoring mechanism [R — Owen RELATN: canvas entries are the evidence at each node; blab is the candidate concept statement, not the evidence].

### Decision 3 — Oregon Validation: Owen Charter Pattern

**[THEORETICAL LAYER]** Oregon = Owen **Project Statement** + 2-3 **Defining Statements** [R — Owen 1998 p.1].

- **Project Statement**: one sentence, verb-led, operational, names *purpose*, not deliverable [R — Owen 1998 p.1]. Example: *"Reduce dwell time on LOTL attacks for SOC analysts in MSP environments so they can act before incidents escalate."*
- **Defining Statements**: 2-3 statements naming business reality, force-levelled [R — Owen pp.2-3]. Example for LOTL: *"Must protect $45K WatchGuard ARR by Q3"* / *"Should close competitive gap on Huntress LOTL language by FY27"* / *"Ought to enable AI-led narrative in renewals."*

**Structural validation:** the tool checks each statement for verb / number / date / named entity:
- 0-1 present → PLACEHOLDER → UNVALIDATED stamp travels
- 2-3 present → PARTIAL
- 4 present → VALID

Hard Mode: Constraint blocks if PLACEHOLDER. Default mode: stamp travels [R — Owen force levels applied to Charter validation].

Scout pulls candidates from Jira Value/Outcome, Success Criteria, named accounts/MRR, Initiative Prioritization Scorecard [R — fields confirmed in ADL-1838, ADL-1911]. Suggestions cite evidence inline.

Coaching prompt to distinguish outputs from outcomes: *"If you shipped this tomorrow, what would that earn you? That's your Oregon."* [A — phrasing not yet PM-tested].

**[INTERACTION LAYER]** PM sees: "Your Oregon" with a one-line "what would shipping this earn you?" prompt and a 2-3 line "Must / Should / Ought to" panel. PM does not see: "Owen Project Statement," "Defining Statements," "force levels."

**LOTL trace:** Oregon MISSING [R — LOTL brief Gate 3]. Scout would suggest WatchGuard $45K (from ADL-1911 [R]) as Defining Statement candidate. Without a Project Statement, the tool stamps PLACEHOLDER and the UNVALIDATED stamp travels.

**Scout integration timing (closed 2026-05-21):** Scout runs at the Oregon definition step only — at session open, before full scoring begins [R — Owen two-step development: Oregon = Project Statement is the first Planning artifact; you know what you are aiming at before you score whether you have done the work]. Flow: PM opens Idea Chorus → tool checks Oregon → if MISSING, prompts "define your Oregon" with Scout available to pull Jira candidates → once Oregon is defined or explicitly marked PLACEHOLDER, scoring proceeds. Scout is a planning aid, not a scoring-time retrieval. Running Scout at scoring time would conflate Planning ("what to make") with scoring ("have you done the work") — the same conflation the tool exists to prevent [R — Owen 1998 p.5 two-step vs. one-step distinction].

### Decision 4 — Mode 1 Semiotics: Abductive Analysis (Not Self-Classification)

**[THEORETICAL LAYER]** PMs do NOT self-classify Lapsed / Dominant / Emergent. Those classifications are *outputs* of abductive reasoning, not inputs [R — Tavory & Timmermans, Abductive Analysis, 2014; Peirce on abductive inference].

Mode 1 input uses Owen Design Factor shape [R — Owen Structured Planning, Design Factor format]:
- **Sign observed** — cultural/market sign recorded, not interpreted
- **Hypothesis** — abductive inference about what cultural logic the sign suggests
- **What would kill this hypothesis** — REQUIRED, not optional; the abductive discipline made structural [R — Tavory/Timmermans on disciplined abduction]

Tool generates 2-3 starter hypotheses from PM's intake doc, brief, or typed input. This is **metaplanning** — planning the planning [R — Owen 1998 p.5, metaplanning].

Starter hypotheses ALWAYS include the most uncomfortable reading — the strongest dissenting interpretation, named explicitly [R — CLAUDE.md §5: "Always name the strongest dissenting position"].

PM accepts, refines, rejects, or adds. **No batch-accept.**

[CS:] tag mapping:
- Sign = [CS: VERIFIED] if observable
- Hypothesis = [CS: LOW] or [CS: UNKNOWN] until tested
- Classification (Lapsed/Dominant/Emergent) = derived output, with confidence reflecting how many hypotheses survived a kill test

**[INTERACTION LAYER]** PM sees three fields per entry:
- "Sign you noticed"
- "What you think this means"
- "What would prove you wrong" (required)

Tool offers: "Here are three readings of what you noticed. The third is the most uncomfortable. Accept, refine, reject, or add your own." PM does not see: "abductive," "Peirce," "metaplanning," "Design Factor."

**LOTL trace:** Mode 1 was effectively skipped in the LOTL brief. The redrafted Mode 1 would take "84% of attacks use LOTL techniques [WOBBLY]" as a **Sign**, generate hypotheses (e.g., *Hypothesis A: the security market has shifted from prevention to detection-of-the-invisible*; *Hypothesis B: this stat is vendor marketing and the real cultural shift is buyer fatigue with alert volume*; *Hypothesis C (uncomfortable): LOTL discourse is a renewals talking point looking for a product to attach to*), and require a kill condition for each.

### Decision 5 — Display: Story-First (Option A), Debate Layer Added 2026-05-21

**[THEORETICAL LAYER]** Two layered surfaces, both available, PM toggles or stacks.

**Layer 1 — Monte Carlo narrative (primary surface, path-frequency read):**

> *"You're at Mode 4. Of 1,000 PMs at this point with similar evidence: 22% reached Oregon, 41% killed and saved 6 weeks, 37% shipped and missed. Strongest: Mode 2. Weakest: Mode 6."*

**Layer 2 — Expert debate transcript (callable layer, cluster-voice read) [R — Beth's directive 2026-05-21: "layer on top of it. like ability to make expert diversity weigh in on monte carlo"]:**

When PM calls up the debate, each scoring cluster's voice weighs in on the same situation the Monte Carlo just described. Each voice **owens itself** — Sign / Hypothesis / Kill criterion / force level / evidence / [CS:] confidence / what it cannot see. Format:

> **JOBS voice (JTBD):** *"Sign: PMs at this stage have rarely tested the job. Hypothesis: the customer is hiring this to do X. Kill: if interviews show they fire current solution for a different reason, the claim falls. Force: Should. Evidence: 2 interviews [CS: LOW]. Cannot see: the buyer's emotional job."*
>
> **NEEDS voice (SDT):** *"Sign: confidence scoring engages competence, not autonomy. Hypothesis: SOC analysts will use this to feel more capable, not more in control. Kill: if testing shows users want override authority, the competence reading was wrong. Force: Ought to. Evidence: domain-pattern [CS: MEDIUM]. Cannot see: the team-relatedness dimension."*
>
> **POS voice (Christensen Disruptive):** *"Sign: incumbent (Huntress) owns the LOTL discourse. Hypothesis: Adlumin can disrupt from below by reframing for MSP. Kill: if MSP buyers turn out to want the same enterprise-scale product, the wedge is illusory. Force: Should. Evidence: ADL-1838 RACE [CS: HIGH]. Cannot see: the WatchGuard renewal dynamic."*

The PM reads the debate. The PM finds the innovative space *between* the voices, in the paradox they surface. The tool does not synthesize a winner [R — innovation navigates paradox; rubric is band of methods, principle G].

Layers below the two narrative layers:
1. **Minimap** — thin bar showing tree position
2. **"Show my work"** — full tree with path lit, branches with kill criteria, **Different / Better / Right** as three vocabulary chips [R — Owen Quality Pyramid Concept layer]
3. **Click any node** — Means/Ends ladder for that mode + Owen-format entries with Originator/Contributors attribution stamps [R — Owen attribution fields on every template]

The **"killed and saved weeks"** Monte Carlo branch is framed structurally as a **WIN**, not a loss [R — Owen Quality Pyramid].

**[INTERACTION LAYER]** The Product Manager (the tool's user) sees: Monte Carlo paragraph by default; **"Ask Bradley"** button calls up the council (each strategist's testimony as a card); minimap; three chips; on click, a ladder. The Product Manager does not see: "Monte Carlo," "owens itself," "cluster," "clash detector." The Product Manager does see Owen's *Must / Should / Ought to* force-level vocabulary directly — these are plain English and need no translation [R — Beth 2026-05-21: keep Owen force levels in PM-facing surface].

**The framing model:** The Product Manager is the trail captain on the Oregon Trail toward their Oregon (Charter). **Bradley — the Project Manager persona from The Band Protocol — CLAUDE.md §0** — is the truth-telling chief-of-staff inside the tool. Bradley is *not* the Product Manager; Bradley serves the Product Manager. Bradley convenes the **council of strategists** (the cluster voices — 44 method-experts, each carrying their tradition's epistemology), gathers their readings, and reports back to the Product Manager with what the council caught. Bradley's existing voice rules apply: not a friend, not a therapist, doesn't sycophant, tags everything with [CS:], names spirals from CLAUDE.md §7 when they appear, and crucially — Bradley does *not* make the strategic call. The Product Manager does. Bradley keeps the record honest; the Product Manager decides what to do about it.

**Open question:** Whether the debate transcript reads as illuminating or as overwhelming is untested [?]. v1 may need cluster-by-cluster expandable cards rather than a full transcript blob [A — interaction shape needs PM session to calibrate]. Also: whether the simulated path-frequency in Monte Carlo reads as honest disclosure ("simulated, calibrating") or as fiction is untested [?]. v1 footer carries the disclosure until empirical data accumulates.

### Decision 6 — VALUE PROP as Charter Output; Rubric as Band of Methods

**[THEORETICAL LAYER]** VALUE PROP is **not** the aggregate score of multiple clusters. VALUE PROP is the **claim under examination** — the proposition the Charter (CHTR) produces. The other scoring clusters are *voices weighing in on the claim*, not sub-signals being averaged [R — Owen Structured Planning: Project Statement is the Solution candidate; Design Factors score *against* it, they do not compose *into* it; Beth's reframe 2026-05-21].

VALUE PROP holds two valid readings simultaneously (paradox-navigated, not collapsed):

- **Reading 1 — VALUE PROP = CHTR output (collapsed):** The claim extracted from Charter alone. Project Statement + Defining Statements + Theory of Change. This is the *internal* proposition: what the team's purpose says the value is.
- **Reading 2 — VALUE PROP = bridge layer (integrated):** A Moore-style positioning statement that integrates Purpose (CHTR) + Positioning (POS + LAND) + For-whom (JOBS). This is the *market-facing* proposition: what the claim becomes when it meets the world.

Both readings live in the tool. PM can view either. v1 surfaces both as labeled views; the build agent does not pick one [R — Beth's directive 2026-05-21: "let's try both"].

---

**The fourteen clusters (revised from eleven after harder clustering):**

| Layer | Cluster | Question | Methods |
|---|---|---|---|
| **Claim** | **CHTR** Charter | What are we aiming at? Produces VALUE PROP. | Project Statement · Defining Statements · Hard Mode · Theory of Change · Moore positioning |
| **Debate** | **SIGN** Sign Reading | What is the world signalling? | Peirce · Tavory · Owen Design Factor · Mode 1 · Mode 4 · Cynefin · Lean Startup riskiest |
| | **PORT** Strategic Portfolio | What kind of innovation in our portfolio? | Doblin 10 Types · Ansoff · Innovation Ambition |
| | **FEAT** Feature / Concept Quality | What feature-value against alternatives? | Kano · Blue Ocean ERRC |
| | **POS** Market Position / Adoption | Where in the market's adoption story? | Moore Crossing the Chasm · Christensen Disruptive |
| | **LAND** Landscape | What is the market actually doing? | Mode 2 · Porter's Five Forces · Wardley Mapping |
| | **JOBS** Jobs Theory | What is the customer hiring this to do? | JTBD functional · JTBD emotional/social |
| | **NEEDS** Need Theory | What human drive beyond function? | SDT · Maslow |
| | **JRNY** Journey | How does the use-sequence break apart? | Mode 3 · UX 5Es · Service Blueprint · Signal entropy |
| | **ECON** Economics | What are the money and buyer dynamics? | Value-based pricing · Price corridor · Economic buyer |
| | **CNPT** Concept Work | Is the thing we are making any good? | Mode 5 · Mode 6 · Owen Quality Pyramid |
| **Meta** | **EVID** Evidence Math | (Not scored; powers other clusters) | Owen RELATN · [CS:] |
| | **META** Metaplan | (Not scored; governs the rubric) | Means/Ends · Metaplanning · two-step · Originator/Contributors · IDEO Design Thinking |
| | **RLZE** Realize | (Post-launch; visible in tree, not scored at Planning) | Mode 7 |

Full library and Item × Item RELATN matrix at `briefs/methods-library-matrix.md` v2. **No conflict scores in the matrix** — innovation navigates paradox; methods that appear to conflict simply cluster around different questions [R — Beth 2026-05-21, governing principle of the methods library].

**JOBS and NEEDS** both surface for motivation questions. Both stay valid. PM does not pick. **PORT and POS** both classify innovation. Both stay valid. PM does not pick. *The tension between them is the innovative space.*

---

**Method surfacing within clusters [R — Owen Means/Ends Analysis]:**

The tool does not require PMs to know which method to use. For each cluster, given the evidence-type available, the tool surfaces the method that fits.

Examples:
- SIGN + cultural sign without interpretation → Owen Design Factor (Sign / Hypothesis / Kill)
- PORT + portfolio question → Doblin 10 Types or Innovation Ambition
- POS + disruption question → Christensen Disruptive Innovation
- JOBS + qualitative interview data → JTBD emotional/social
- NEEDS + same data, different lens → SDT
- LAND + market structure → Porter's Five Forces; + evolution stages → Wardley Mapping
- CNPT + concept evaluation → Mode 6 + Owen Quality Pyramid

Full per-cluster surfacing logic at `briefs/methods-library-matrix.md` § Method Surfacing.

---

**The Band of Methods — debate as scoring [R — Beth's directive 2026-05-21]:**

When the PM works on an idea, the tool surfaces methods from the relevant clusters. Each method **owens itself** — runs Owen Structured Planning on its own contribution:
- Names its **Sign** (what it observed)
- Names its **Hypothesis** (its reading of the sign)
- Names its **Kill criterion** (what would prove it wrong)
- States its **force level** (Must / Should / Ought to)
- Cites its **evidence** and tags **confidence** [CS: VERIFIED / HIGH / MEDIUM / LOW / FABRICATION RISK / UNKNOWN]
- Acknowledges what it **cannot see**

The PM does not pick winners. The PM reads the transcript and finds the innovative space in the tension. JOBS-voice and NEEDS-voice may give different readings of the same customer; PM holds both. POS-voice and PORT-voice may classify the same idea differently; PM holds both. *Paradox is the source of innovation, not a problem to resolve.*

This is also structurally The Band Protocol: many voices in productive tension serving Beth, not the vendor.

---

**Forced-rank mechanism — now operates on debate, not composition:**

PM force-ranks the scoring clusters (the debate panel) by **which testimony, if it lands negative, most undermines the VALUE PROP claim.** No ties. Rank 1 = Constraint-level: if this voice's evidence is thin and its hypothesis cannot survive its own Kill criterion, the entire claim is FLAGGED regardless of how other voices read.

Scoring math: each cluster's testimony scores on Owen RELATN scale (0 to +2 reinforcing the claim, 0 if independent, with the FLAGGED state replacing what would have been negative — the principle is paradox-held, not conflict-resolved). Forced-rank done **with the team** where possible [R — IIT "we do things together"].

**[INTERACTION LAYER]** The Product Manager sees: council seats with plain-language questions ("What is the customer hiring this to do?" — JOBS; "Where does this sit in the market?" — POS; etc.). Drag to rank — *"who is your lead strategist on this one?"* Rank-1 seat displays: *"This is the voice whose testimony, if thin, brings the whole claim down."* Story-First narrative opens with: *"Your lead strategist is [council-seat-name]. They have [thin/no/strong] evidence right now."* The Product Manager does not see: "RELATN," "cluster," "forced-rank mechanism," cluster codes. Owen's *Must / Should / Ought to* force-level vocabulary stays surfaced directly.

**Open question:** Whether ranking the debate panel before reading the transcript reads as clarifying or as a barrier is untested [?]. v1 requires explicit ranking; no default offered [R — closes critic item 4]. If the first PM session shows the gate is too high, v2 may add default-rank-with-override [A — UX call deferred to first PM session].

**LOTL trace:** Product-Manager-driven rank for LOTL most likely puts JOBS at the lead-strategist seat — *what is the SOC analyst hiring confidence scoring to do, and is that job real?* [R — LOTL brief Gate 2 ASSUMPTION on behavioural change]. NEEDS could rank 2 — *what autonomy or competence drive is engaged?* The tool surfaces both seats; the JOBS strategist and the NEEDS strategist each present their reading; Bradley reports the council's notes on top of the Monte Carlo prediction. **The Product Manager (not the tool, not Bradley) assigns rank** [R — closes critic item 6; Bradley coordinates but does not decide].

### Decision 7 — Canvas Slot → Cluster Mapping

**[THEORETICAL LAYER]** The existing 8 canvases in `prototypes/idea-chorus.html` (MOORE, JTBD, BLUE_OCEAN, ANSOFF, KANO, DOBLIN, FIVE_ES, SDT) map cleanly to the new cluster set [R — observable in `CANVAS_DIM_MAP` at lines 2461–2470]. Some clusters have no canvas yet; these need v1 addition. Some methods within a cluster need their own canvas (Hard Mode Constraint sub-clusters).

**v1 canvas mapping — existing 8 canvases reassigned to clusters:**

| Existing canvas | Cluster it now feeds | Method instance |
|---|---|---|
| MOORE | CHTR | Moore positioning statement |
| JTBD | JOBS | JTBD functional + emotional/social (both layers in one canvas) |
| BLUE_OCEAN | FEAT | Blue Ocean ERRC |
| ANSOFF | PORT | Ansoff matrix |
| KANO | FEAT | Kano tier |
| DOBLIN | PORT | Doblin 10 Types |
| FIVE_ES | JRNY | UX 5Es |
| SDT | NEEDS | SDT three needs |

**v1 canvas additions — required for full coverage of scoring clusters:**

| New canvas | Cluster | Method instance | Why required |
|---|---|---|---|
| **PROJECT_STATEMENT** | CHTR | Owen Project Statement (verb / number / date / named-entity check) | Charter cannot complete without it; pre-condition for scoring [R — Decision 3] |
| **DEFINING_STATEMENTS** | CHTR | Owen Defining Statements (2-3 entries with force level) | Same; pre-condition [R — Decision 3] |
| **THEORY_OF_CHANGE** | CHTR | ToC (purpose → intermediate outcomes → long-term impact) | Bridges Charter to Concept Work; needed for the integrated VALUE PROP reading [R — Decision 6 dual-reading] |
| **DESIGN_FACTOR** | SIGN | Owen Design Factor (Sign / Hypothesis / Kill criterion) | The owensing format itself; needed for every voice's testimony [R — Decision 6 band-of-methods] |
| **CYNEFIN** | SIGN | Cynefin domain classification (simple / complicated / complex / chaotic / disorder) | Sense-making before method choice [R — surfacing logic in methods library matrix] |
| **MOORE_CC** | POS | Moore Crossing the Chasm position (early adopter / chasm / pragmatist / late majority) | POS cluster has no canvas yet; needed for Decision 6 panel |
| **CHRISTENSEN** | POS | Christensen Disruptive (sustaining / low-end disruption / new-market disruption) | Same — POS coverage |
| **LANDSCAPE** | LAND | Mode 2 landscape + Porter Five Forces + Wardley Mapping (combined canvas; method surfaced by question) | LAND cluster has no canvas yet |
| **MASLOW** | NEEDS | Maslow hierarchy position (deficiency / growth) | NEEDS cluster currently single-method; Maslow adds second lens for paradox-held NEEDS reading |
| **MODE_3_ETHNO** | JRNY | Kumar Mode 3 ethnographic findings (day-in-the-life, segments) | JRNY currently only has 5Es; ethnography is primary input |
| **SERVICE_BLUEPRINT** | JRNY | Service Blueprint (front / back / behind stage) | Same — JRNY coverage |
| **PRICING** | ECON | Value-based pricing + Price corridor + Economic buyer (combined; method surfaced by question) | ECON cluster has no canvas yet |
| **CONCEPT_EVAL** | CNPT | Mode 6 + Owen Quality Pyramid (Different / Better / Right) | CNPT has no canvas yet |

**v1 canvas count: 8 existing + 13 new = 21 canvases.** Significant build expansion. Justified because canvas-as-primary scoring (Decision 2 patch) requires every scoring cluster to have at least one canvas-instance for the PM to fill.

**Per Owen Means/Ends method surfacing [R — Decision 6]:** the tool does not show all 21 canvases at once. For a given PM session, the tool surfaces the canvas relevant to the cluster currently in focus, based on what evidence the PM has. The remaining canvases are reachable but not foregrounded. *The PM does not see 21 canvases as a wall; the PM sees one canvas at a time, surfaced by the band.*

**Build priority order for v1 (Owen Means/Ends — climb from purpose):**

1. **CHTR canvases first:** PROJECT_STATEMENT, DEFINING_STATEMENTS, MOORE, THEORY_OF_CHANGE (Charter must complete before scoring proceeds — pre-condition [R — Decision 3])
2. **PM's rank-1 cluster canvas next:** whichever cluster the PM ranked riskiest — that canvas is loaded immediately after Charter
3. **DESIGN_FACTOR canvas always available:** because every cluster's voice owens itself via Design Factor format [R — Decision 6 band-of-methods]
4. **Remaining cluster canvases lazy-load** as PM moves through the debate

**LOTL trace:** Charter canvases would surface first (PROJECT_STATEMENT, DEFINING_STATEMENTS for WatchGuard ARR + Huntress gap + AI narrative). PM ranks JOBS at 1 — JTBD canvas opens. PM has no Mode 3 ethnography → MODE_3_ETHNO canvas surfaces as the gap. DESIGN_FACTOR canvas always available so JOBS voice can owens itself even before interviews exist (the Kill criterion still gets named).

**Open question:** Whether 21 canvases lazy-loaded reads as elegant or as a sprawl is untested [?]. v1 may need to collapse multi-method clusters (LANDSCAPE, PRICING, CONCEPT_EVAL) further than the 13 additions above [A — exact canvas count and granularity needs build-time iteration with PMs].

### Decision 8 — Force-Level Composition: Forced-Rank Flags, Hard Mode Decides Consequence

**[THEORETICAL LAYER]** Forced-rank (Decision 6) and Hard Mode (Decision 1) both use Owen's Must / Should / Ought to taxonomy, but they apply to **different objects** and **compose** rather than collide [R — Owen Structured Planning: force levels are applied per artifact, not per system; multiple force-levelled artifacts coexist].

| Mechanism | Operates on | What it produces |
|---|---|---|
| **Hard Mode force levels** | The **Charter** (Defining Statements, Project Statement components) | A force level applied to each statement (Must = Constraint / Should = Objective / Ought to = Directive) |
| **Forced-rank** | The **debate panel** (scoring clusters, ranked by which voice's testimony most threatens the claim) | A FLAGGED state when the rank-1 voice's testimony is thin, missing, or fails its own Kill criterion |

**They compose via Hard Mode determining the consequence of FLAGGED:**

| Hard Mode state on rank-1 cluster | What FLAGGED becomes |
|---|---|
| Off (default) | Persistent UNVALIDATED stamp travels with artifact [R — Decision 1] |
| **Directive** ("ought to") | Stamp + annotation prompt at next checkpoint |
| **Objective** ("should") | Stamp + team review prompt before next stage gate |
| **Constraint** ("must") | BLOCKED — work cannot ship until rank-1 voice's testimony resolves |

This composition means: forced-rank produces the *signal* (this voice's testimony is the riskiest, and it's currently thin). Hard Mode determines the *consequence* (annotate / review / block). The PM and team set the consequence per project; the signal is structural.

**LOTL trace example:**
- LOTL Charter: Defining Statement *"Must protect $45K WatchGuard ARR by Q3"* set at Constraint level by team [R — ADL-1911 source].
- Forced-rank on debate panel: JOBS at rank 1 (what is SOC analyst hiring confidence-scoring to do?) [R — LOTL Gate 2 ASSUMPTION].
- JOBS voice owens itself: Sign = no interviews yet; Hypothesis = analyst hires this for triage speed; Kill = interviews show analyst hires for audit-trail instead; Force = Should; Evidence = none [CS: UNKNOWN]; Cannot see = the buyer's emotional job.
- JOBS testimony fails its own Kill criterion (no interviews exist). FLAGGED.
- Hard Mode on JOBS cluster: Objective (default for Decision 1 PLACEHOLDER stamp). Result: stamp + team review prompt.
- If team sets Hard Mode on JOBS to Constraint, ship is BLOCKED until interviews close the Kill criterion.

**[INTERACTION LAYER]** The Product Manager sees: Bradley's flag — *"Your lead strategist has thin testimony. Here's what they couldn't tell you."* Hard Mode panel shows per-strategist-seat toggles: Off / Ought to / Should / Must (Owen language kept verbatim). The Product Manager does not see: "force-level composition," "FLAGGED state machine," cluster codes.

**Open question:** Whether per-cluster Hard Mode toggles read as configurable rigor or as overwhelming governance UI is untested [?]. v1 may ship with single project-wide Hard Mode toggle (all clusters at same level) and add per-cluster differentiation in v2 [A — UI complexity tradeoff deferred to first PM session].

### Decision 9 — Owensing as Clash Detection (Bradley Calls the Council)

**[THEORETICAL LAYER]** Owensing is the rubric's diagnostic operation. Modeled on **BIM clash detection** from architecture/engineering practice [R — Beth 2026-05-21 directive: *"Owensing could be like clash detecting in BIM models — find out where decisions need to be made. May scale to larger inputs?"*]. The tool does not synthesize opinions. It surfaces gaps, tensions, and decisions the Product Manager needs to make, then points the Product Manager toward the work that closes them (canvas fills, research team requests, customer interviews, scout briefs).

This resolves critic items 1, 2, 3: owensing has an executable specification (deterministic rule engine); nothing runs at runtime that requires LLM inference; token cost is zero per Product Manager session.

**Architecture — design-time artifacts:**

| Artifact | Count | Content |
|---|---|---|
| **Method spec files** at `briefs/method-specs/{method-name}.md` | 44 | Canvas field map · force level default (Owen Must/Should/Ought to) · curated method-specific blindspot list (2–3 lines) · voice render template |
| **Clash check rules** | 8 | Deterministic functions over the 44 method specs + canvas data (see table below) |
| **Council seat metadata** | 14 | Cluster-to-question mapping (e.g., JOBS seat = *"What is the customer hiring this to do?"*) — derives from `briefs/methods-library-matrix.md` v2 |

**Architecture — runtime operation:**

1. Product Manager fills canvases (or leaves them empty)
2. Product Manager force-ranks the council seats
3. Product Manager clicks **Ask Bradley**
4. Clash detector runs the 8 rules against the canvas data + method specs
5. Bradley renders the clash report: *"I asked the council. Here's what they caught."*
6. Product Manager acts on each clash card (ROLL OUT · PARK IT · OVERRIDE)

**The 8 clash check rules:**

| Rule | What's checked | Severity | Clash report line (sample) |
|---|---|---|---|
| **Empty-seat** | Ranked seat has no canvas data | HIGH | *"JTBD didn't show up to council. They have nothing to weigh in on."* |
| **Empty-Kill** | Voice has Sign + Hypothesis but no Kill criterion | MEDIUM | *"Christensen can't tell you if they're wrong about this. Press them."* |
| **Charter-misalignment** | Voice testimony contradicts a Must-level Defining Statement | HIGH (or BLOCKED via Decision 8) | *"Owen Project Statement and Moore are pulling against each other. Fork in the trail."* |
| **Force-evidence mismatch** | Must-level Defining Statement has no supporting evidence in any seat | MEDIUM | *"You committed to WatchGuard ARR at Must — no council member has evidence for it yet."* |
| **Cross-voice tension** | Two seats testify in opposite directions about the same case-evidence | LOW–MEDIUM | *"JTBD says triage speed. SDT says override authority. Both may be true. Your call, captain."* |
| **Adjacency gap** | Lead seat lacks evidence from an adjacent seat that would normally source it | MEDIUM | *"JTBD's reading is ungrounded — they need ethnography from the trail. Send a scout?"* |
| **Confidence cascade** | Voice's evidence tagged [CS: LOW] or [CS: UNKNOWN] in a Must-level seat | HIGH | *"You're betting the wagon on testimony the council is guessing at."* |
| **Unaddressed blindspot** | Voice's structural blindspot is named in its spec; no adjacent seat's canvas covers it | LOW–MEDIUM | *"JTBD functional can never see emotional jobs. The seat next to them is empty."* |

**Action cards on each clash — typed by the kind of work needed, each carrying a Skip-risk Monte Carlo line [R — Beth 2026-05-21: be explicit that people need real research and/or real design; show the risk of skipping each step]:**

Every ROLL OUT card carries three fields:
- **What:** the specific action (book interviews, build a Service Blueprint, pull a metric)
- **Closes:** which cluster gap or design check this resolves
- **Skip-risk:** *what happens to PMs in your situation who skip this step* — Monte Carlo path-frequency on consequences, not just on Readiness state

This makes Bradley's bluntness consequential rather than nagging. He doesn't just say *"you need research"* — he says *"if you skip this, 41% of PMs in your situation shipped and missed by misreading the customer job."* The Skip-risk is the third Monte Carlo layer (Decision 12), tied to the specific action.

**The four typed ROLL OUT cards:**

- **ROLL OUT — Research** (specific method + sample size + source cited):
  - *Format:* `What / Sample / Source / Why this N / Closes / Skip-risk`
  - *Sample sizes come from `briefs/research-methodology-specs.md`* — NN/g (Nielsen Norman Group) for qual rules, MeasuringU (Sauro/Lewis) for quant rules. Bradley *never invents* sample sizes; he looks them up [R — Beth 2026-05-21: *"follow real qual research principles via MeasuringU and NN/g"*].
  - *Examples:*
    - *"Usability testing on the new key management page. Sample: 5 users per iteration × 3 iterations. Source: Nielsen 5-user rule (NN/g, 1993). Why this N: iterative discovery — 5 users catch ~85% of issues per round; 3 rounds > 1 round of 15."*
    - *"Test the confidence-scoring AI feature with SOC analysts. Sample: 10–12 users. Source: NN/g AI-testing guidance (2023+). Why this N: AI features are stochastic; more users needed to see the range of model behaviour and user response."*
    - *"Survey MSP buyers on Billing API needs. Sample: 200 minimum for ±7% MoE at 95% confidence. Source: MeasuringU sample-size calculator. Why this N: minimum for projectable findings on n-able's customer base."*
    - *"Mode 3 ethnography on the Partner Care path. Sample: 3–5 sites × 1–3 days each. Source: NN/g + Kumar Mode 3 ethnographic practice. Why this N: ethnography prioritises depth per site over count of subjects."*
  - *Closes:* SIGN verification · JOBS adjacency · Empathy Map Say/Do quadrants · Research Methodology Compliance (Decision 13 check #5)
  - *Skip-risk pattern:* *"PMs in your situation who skipped customer interviews: ~41% shipped and missed (misread the job), ~28% killed the idea late (assumed problem turned out wrong), ~31% reached Oregon (problem was obvious or got lucky)."*
  - *Anti-pattern flags:* Bradley also flags research that *was* done but at non-compliant N (e.g., *"You tested with 3 users on an AI feature. That's below the NN/g 10-12 floor for AI. Findings are unreliable until you re-run."*) — see `research-methodology-specs.md` § Anti-patterns.

- **ROLL OUT — Design** (specific artifact named):
  - *Examples:* Service Blueprint of current state · 5Es decomposition · Need→Function map (Simon) · Empathy Map quadrant fill
  - *Closes:* Design Artifact Completeness · Net CX Impact assessability · Herbert Simon need→function check
  - *Skip-risk pattern:* *"PMs in your situation who skipped Service Blueprint: ~56% broke the experience at handoffs (the part you didn't map), ~19% had to rebuild after launch, ~25% shipped successfully (the handoff turned out to be simple)."*

- **ROLL OUT — Data** (specific pull named):
  - *Examples:* Snowflake query for support case volumes · Jira pull for ticket-to-resolution time · ARR data for affected accounts
  - *Closes:* SIGN evidence · ECON quantification · Empathy Map Do quadrant
  - *Skip-risk pattern:* *"PMs in your situation who skipped behavioural data: ~38% misjudged scale (built for the wrong N), ~22% missed compliance flags, ~40% shipped successfully (scale was as assumed)."*

- **ROLL OUT — Citation** (specific document named):
  - *Examples:* Find parent Initiative · Surface n-able strategy doc · Pull analyst report
  - *Closes:* Charter Traversal Chain gaps (Decision 10)
  - *Skip-risk pattern:* *"PMs in your situation who skipped parent Initiative citation: ~31% got deprioritized at portfolio review, ~12% got hit by an exec ambush ('how does this ladder?'), ~57% shipped successfully without strategic blowback."*

- **PARK IT** — Product Manager acknowledges the gap and defers. The UNVALIDATED stamp travels (per Decision 1); the clash remains visible on every downstream artifact until resolved. **Park-risk:** *"Parking this gap means the UNVALIDATED stamp travels to every downstream artifact (concept card, debate transcript, exported brief). Downstream readers see what you parked. Approve with eyes open."*
- **OVERRIDE** — Product Manager declares the clash false. Logged with the Product Manager's name and reason as Originator/Contributors entry. **Override-risk:** *"Overrides are public. Your name and reason go on the artifact. Future readers see you decided this clash didn't matter. Stand behind it."* [R — CLAUDE.md §6 honor-code structural answer; overrides leave authorship trail].

Typed ROLL OUT cards with Skip-risk lines make the **default recommendation Research and Design, and make the cost of ignoring that recommendation visible.** Bradley errs toward telling the Product Manager that research or design is needed, *and shows what happens to PMs who don't heed* [R — Beth 2026-05-21: *"I want to err on needing research and design"* + *"more explicit about risks of not doing design steps (also include research)"*].

**Calibration disclosure:** Skip-risk percentages are simulated from Owen RELATN-derived path-frequency math, same as the Readiness-state Monte Carlo. [CS: MEDIUM] until empirical data accumulates. v1 footer carries: *"Skip-risk simulated from Owen RELATN math; calibrating from accumulated PM-population data."*

**[INTERACTION LAYER]** Product Manager clicks **Ask Bradley**. Bradley opens with: *"I asked the council. They caught three things."* Each clash renders as a card with the strategist's name, what they said or shrugged about, and the three action verbs. The Product Manager works through the cards. Bradley tags each commitment and parks each deferral. The Product Manager does not see: "clash detection rule," "BIM analogy," cluster codes, the 44 method spec structure.

**LOTL trace, end-to-end:**

1. Charter: Project Statement valid; Defining Statements include *"Must protect $45K WatchGuard ARR by Q3"* [R — ADL-1911].
2. Product Manager ranks council seats: JOBS at lead.
3. Product Manager fills no JOBS canvas (no interviews exist yet).
4. Ask Bradley.
5. Council convenes. Clash rules run.
6. Bradley reports:
   - **Empty-seat clash (HIGH):** *"JTBD didn't show up — no canvas filled. Lead strategist has nothing to weigh in on."* Action: ROLL OUT (book interviews) or PARK IT (stamp travels).
   - **Force-evidence mismatch (MEDIUM):** *"WatchGuard ARR is at Must — no seat has evidence for it yet."* Action: ROLL OUT (Scout the ARR data from Jira) or OVERRIDE (declare ARR locked from external source).
   - **Unaddressed blindspot (LOW-MEDIUM):** *"Christensen can't see the WatchGuard renewal dynamic. POS seat is light."* Action: ROLL OUT (fill the Christensen canvas) or PARK IT.
7. Product Manager works the cards.

**Open question:** Whether 8 rules is the right granularity — too few misses real clashes, too many creates report noise. v1 ships with these 8; v2 calibrates from accumulated runs [?]. Also: whether method-specific blindspot lists at 2–3 lines per method is enough to surface canonical critiques — needs domain-expert review per method during design-time authoring [A].

**v2+ scaling direction (named, not scoped for v1) [R — Beth 2026-05-21]:** Clash detection scales to non-product domains (engineering, GTM, operations) by absorbing additional cluster sets + method specs. Cross-Product-Manager clash detection (do two Charters clash? do two product lines share unaddressed blindspots?) becomes possible. The BIM-clash-detection lineage supports this scaling — large-scale engineering models do exactly this operation against thousands of clash rules.

### Decision 10 — Charter Traversal Chain: Trace Briefs Up to Market Signals

**[THEORETICAL LAYER]** Charter is not a standalone artifact. It is a **link in a chain of justification** that runs from individual brief up through parent initiatives, up through company KPIs and strategic objectives, and out to market reality / Mode 1 signals [R — Beth 2026-05-21: *"way to trace charter through briefs and up through company KPIs and then against market reality/signals"*].

```
Market Signals (Mode 1 / Mode 2 / external evidence)
        ↑ derived from
Company Strategy / KPIs
        ↑ derived from
Parent Initiative Charter
        ↑ derived from
This Brief's Charter
        ↑ derived from
This Brief's Proposition (VALUE PROP)
```

Every Charter must be derivable from its parent, and ultimately from market signals. **A Charter without a traceable chain is a hallucination.** This is the structural fix for the common failure mode *"this aligns with our strategy"* — where nobody has checked whether the strategy itself aligns with anything real [R — Beth's framing applied to strategic claims: same epistemic discipline as [CS:] tags applied to factual claims].

**Implementation:**

| Charter level | Lives in | Linked via |
|---|---|---|
| Brief Charter (this artifact) | Charter canvas (Decision 7) | `parent_charter` field |
| Parent Initiative Charter | Another Charter canvas, or external doc | `parent_charter` field |
| Company Strategy / KPIs | `briefs/n-able-strategy-context.md` (referenced artifact) | Citation in parent Defining Statements |
| Market Signals | Mode 1 / Mode 2 cluster canvas fills, with [CS:] tags | Citation in Company Strategy claims |

**Bradley's traversal check (new clash rule, runs as part of Decision 9):**

When Bradley convenes the council, he walks the chain upward:
1. Does this brief's Charter cite a parent? → If no, flag adjacency gap.
2. Does the parent Charter cite company strategy? → If no, flag adjacency gap.
3. Does the company strategy cite market signals? → If no, *the strategy itself is unevidenced*. Bradley flags this clearly: *"Captain, before we score your brief — your company's strategy may not survive the same check we're running on you."*
4. At any link, if the citation exists but is [CS: LOW] or [CS: UNKNOWN], Bradley surfaces the weak link.

**The audit trail becomes the secret sauce extension:** when a Product Manager runs Idea Chorus on their brief, they can trace any claim — *"protect $45K WatchGuard ARR by Q3"* — up the chain and see exactly where it's grounded and where it's hand-wavy [R — Beth 2026-05-21: anti-strategy-hallucination via traceable derivation].

**[INTERACTION LAYER]** The Product Manager sees a **chain visualization** next to their Charter — five rungs (Proposition → Brief Charter → Parent → Strategy → Market Signal). Each rung is either green (cited and [CS: HIGH] or VERIFIED), yellow (cited but [CS: MEDIUM]/[CS: LOW]), red (missing citation), or grey (not applicable). Bradley narrates: *"Your Charter traces clean for three rungs. The Company Strategy → Market Signal link is grey — n-able's strategy doc doesn't cite market evidence. That's not your job to fix, but you should know."*

**Open question:** Whether walking the chain catches more in practice than Charter-completion alone is testable — only with the n-able strategy context loaded and at least one real chain to trace [?]. v1 ships with traversal logic in place; calibration through use.

**LOTL trace:** WatchGuard ARR Defining Statement → derived from? Parent Charter would be the Adlumin product strategy. → derived from? n-able FY27 strategy (Huntress LOTL gap closure). → derived from? Market signal — competitive landscape research [R — ADL-1838 RACE]. Chain holds. *That's a good chain.* Bradley reports: *"This Defining Statement has a four-rung chain. Strong."* Contrast with the AI Intelligence Platform proposal (simulation #1): ROI claims have no chain at all. Bradley would surface this immediately.

### Decision 11 — Gameboard / Gameplay: PM-Facing Cluster Layout

**[THEORETICAL LAYER]** Clusters don't change. Their *grouping in the PM-facing UI* changes [R — Beth 2026-05-21: extends Beth's existing PM toolkit *Gameboard / Gameplay* into the rubric].

| PM-facing pane | Question the pane answers | Clusters in this pane |
|---|---|---|
| **The Gameboard** | *Do you even know what you're solving?* | SIGN · JOBS · NEEDS · LAND · POS · JRNY |
| **Gameplay** | *How do you win on this board?* | CHTR · PORT · FEAT · ECON · CNPT |
| *(Meta — Bradley uses, PM rarely sees directly)* | *How does the rubric run?* | EVID · META · RLZE |

**The Gameboard cluster** answers the basic-strategy question: *have you mapped the situation you're playing in?* Without a sound Gameboard, Gameplay is wishful thinking. The Gameboard pane shows: the customer (JOBS), what drives them (NEEDS), what the world is signalling (SIGN), what the market is doing (LAND), where this sits in adoption (POS), and how the user actually experiences the situation (JRNY).

**The Gameplay cluster** answers the strategic-choice question: *given your Gameboard, what move are you making?* It contains the Charter (the claim), the portfolio classification (what kind of innovation), the feature-vs-alternative read (FEAT), the money math (ECON), and the concept work (CNPT — is the thing you're building any good?).

**Bradley's clash report is two-paned** to match this layout:

> *"On the Gameboard, the council caught these:*
>  *— [list of Gameboard-cluster clashes]*
>
> *On Gameplay, these:*
>  *— [list of Gameplay-cluster clashes]*
>
> *Captain — most of what's missing is on the Gameboard. You're trying to win a game whose board you haven't fully mapped yet."*

The two-pane split makes a structural diagnostic legible: *did you know what you were solving, or did you have a strategy looking for a problem?* [R — Beth 2026-05-21: original Gameboard / Gameplay toolkit framing].

**[INTERACTION LAYER]** Product Manager sees: two-pane layout with Gameboard left, Gameplay right. Bradley's report is two-paned. Cluster cards live in their pane. Force-rank gesture (Decision 6) operates within each pane *and* across panes (PM can rank a Gameboard cluster as their lead strategist if the situation-mapping is what's riskiest). Owen *Must / Should / Ought to* force-level vocabulary still surfaced directly.

### Decision 12 — The Oregon Trail Readiness Score: "Is this idea good enough for n-able to make?"

**[THEORETICAL LAYER]** Distinct from VALUE PROP (the claim, Decision 6) and from cluster-by-cluster clash detection (Decision 9). The **Readiness Score** is the aggregate verdict — *given everything the council saw, is this idea ready for n-able to commit resources to?* [R — Beth 2026-05-21: *"is this idea good enough for the company to make?"*]. Owen-style force-level summary applied to the entire artifact, not to a single Defining Statement.

**Three states (the Oregon Trail framing — kept as-is, intentionally a little game-cute):**

| State | When it fires | What it means |
|---|---|---|
| **ROLL THE WAGONS** 🟢 | Charter complete · Gameboard solid (no HIGH clashes on Gameboard rank-1 cluster) · Gameplay strategy named (CHTR + PORT + FEAT all have testimony) · no Constraint-level violations · Charter Traversal Chain has at least 3 of 5 rungs green | *Council says you're loaded enough to depart. Captain's decision now — but the wagon is ready.* |
| **PARK AND PROVISION** 🟡 | Charter exists but Gameboard or Gameplay has HIGH clashes · OR rank-1 cluster's testimony is thin · OR Charter Traversal Chain has 1–2 yellow rungs | *Don't leave yet. Here's what to gather — interviews, scout briefs, missing canvases.* Bradley lists the Top 3 ROLL OUT actions. |
| **TURN BACK** 🔴 | Charter PLACEHOLDER · OR rank-1 cluster has Constraint-level violation · OR Charter Traversal Chain has any RED rung · OR SIGN cluster is completely empty (no Sign Reading at all — Beth's bluntness precondition) | *This isn't a wagon. This is an idea looking for a problem. Find the customer first.* |

**The Readiness Score is the Oregon Trail-format Product-Manager-facing surface for the existing FLAGGED state machine** (Decision 8). Same engine; this is the captain-facing summary. The cluster-by-cluster clash report still lives behind it (PM can drill in).

**[INTERACTION LAYER]** Three-button block at the top of Bradley's report. The current state is lit. Hover: *"Why ROLL THE WAGONS? Charter complete · 4 of 5 chain rungs cited · Gameboard JOBS strong · Gameplay strategy named."* Or hover: *"Why TURN BACK? SIGN cluster empty. The council hasn't seen a single Sign from outside this room."*

**Bradley's voice translation per state — with Monte Carlo path-frequency narrative restored [R — Beth 2026-05-21: bring back the Monte Carlo percentages]:**

- **ROLL THE WAGONS:** *"You're loaded. Three things the council nailed: [list]. Two small things they caught: [list]. Captain's call. Of 1,000 PMs at this point with similar evidence: 62% reached Oregon, 11% shipped and missed, 27% killed late after departure."*
- **PARK AND PROVISION:** *"You've got a wagon. You're not ready to depart yet. Top three actions: [list]. Come back when those close. Of 1,000 PMs at this point with similar evidence: 18% rolled the wagons anyway and reached Oregon, 47% parked, provisioned, then reached Oregon, 31% killed the idea here and saved 6 weeks, 4% rolled anyway and shipped and missed. PARK AND PROVISION puts you in the largest reach-Oregon group, and the kill branch is also a win."*
- **TURN BACK:** *"Stop. Before we get into anything else — show me one customer who has this problem. Show me a number. Show me a meeting transcript. The council is shrugging because there's nothing to weigh in on. Of 1,000 PMs at this point with similar evidence: 8% found a Sign and went on to reach Oregon, 73% kept going without a Sign and shipped to nobody, 19% turned back here and re-emerged later with a real problem. Turning back now is the second-most-frequent successful path."*

The **"killed and saved 6 weeks"** branch under PARK AND PROVISION is framed structurally as a WIN, not a loss [R — Decision 5; counter-metric preserved]. Same for the **"turned back and re-emerged"** branch under TURN BACK — Bradley honors the decision to stop, not just the decision to ship.

**Calibration disclosure (v1 footer):** *"Path-frequency simulated from Owen RELATN math; calibrating from accumulated PM-population data."* These numbers carry [CS: MEDIUM] until empirical data accumulates from v1 forward [R — Decision 5 disclosure pattern; honest about the simulated nature].

**The three Monte Carlo layers (named for build agent clarity):**

| Layer | What it shows | Where it surfaces | Decision |
|---|---|---|---|
| **Readiness-state Monte Carlo** | Given current Readiness (ROLL/PARK/TURN), what % of PMs reached Oregon / shipped and missed / killed and saved / turned back and re-emerged | Top of Bradley's report, narrating the current state | Decision 12 (this decision) |
| **Skip-risk Monte Carlo** | Per specific action skipped — what % of PMs failed in which way when they skipped this kind of work | On each ROLL OUT card as the "Skip-risk:" line | Decision 9 Patch (typed ROLL OUT cards) |
| **Outcome Monte Carlo** | Will the idea succeed / waste time / fail in market — the whole-idea outcome distribution | Implicit in Readiness-state percentages; explicit narrative at the top of Bradley's report | Decision 12 + Decision 5 (Story-First Monte Carlo narrative) |

All three layers share the same underlying simulation math (Owen RELATN-derived path frequencies). They differ only in what slice they expose. v2 calibration tunes each layer separately as accumulated data accumulates by step-type and outcome-type [R — Beth 2026-05-21: *"the Monte Carlo simulation that shows if the idea will succeed, will it waste time, will it fail in market — the PM simulation"* — the three layers are the operationalisation of that vision].

The TURN BACK message is the bluntness precondition Beth named: *Bradley refuses to convene the full council until SIGN has at least one entry.* This is structural protection against ideas-without-problems.

### Decision 9 patch — Bluntness precondition + Positive reinforcement + Company-fit clash rule

**Patch A — Bluntness precondition (two-stage).** Before Bradley convenes the full council, he runs two precondition checks on SIGN:

1. **Is the SIGN cluster empty?** If yes, return TURN BACK (Decision 12). Rationale: without a Sign, abductive inference can't start; running the rest of the rubric on an idea with no observed signal is performance theatre [R — Beth 2026-05-21: *"way to get more blunt on company problem/real customer problems"*].
2. **Does SIGN have a Sign but no verification?** I.e., is the problem named but never tested on a real user? If yes, Bradley convenes the council but opens with an explicit research demand: *"Captain — your problem is named but never tested. Before we score anything else, here's the research you need: [specific method]. The council will weigh in, but everyone's testimony will carry an UNVERIFIED stamp until the problem diagnosis is confirmed with real users."* [R — Beth 2026-05-21: *"has it been tested on real people/data back that problem has been diagnosed correctly"*]

**Patch B — Positive reinforcement.** Clash report becomes symmetric two-list. Bradley reports what the council found you nailed *and* what they caught:

> *"The council found three things you nailed:*
>  *— Charter has all four checks (verb, number, date, named entity).*
>  *— JRNY testimony has [CS: HIGH] from Mode 3 ethnography.*
>  *— ECON cluster has three voices in agreement.*
>
> *And three things they caught:*
>  *— JOBS shrugged.*
>  *— POS has no Kill criterion.*
>  *— Confidence cascade on rank-1 cluster."*

Same engine. Truth-telling means both directions. *Bradley honors what's working, names what's not.* [R — Beth 2026-05-21: *"Probably also need to tell them what's working"*]

**Patch C — Company-fit clash rule (new Rule #9 in clash detection, total now 9 rules + bluntness precondition):**

| Rule | What's checked | Severity | Clash report line (sample) |
|---|---|---|---|
| **Company-fit** | Charter Defining Statements align with `briefs/n-able-strategy-context.md` stated strategy | HIGH if misaligned · MEDIUM if no n-able-strategy citation found | *"Your Charter says 'protect $45K WatchGuard ARR by Q3.' n-able's FY27 strategy says 'close the Huntress LOTL gap.' Those align. Captain, you're on-strategy."* OR: *"Your Charter says X. n-able's strategy says Y. Off-strategy. Either reframe, get exec air cover, or PARK IT."* |

Requires `briefs/n-able-strategy-context.md` as a referenced artifact, loaded as Bradley's company-strategy reference [R — Beth 2026-05-21: *"does it meet the company goals? Good for n-able?"*]. v1 ships with placeholder; production loads the live strategy doc.

### Decision 13 — Design Diagnostic Layer

**[THEORETICAL LAYER]** Beyond cluster-by-cluster clash detection, Bradley runs five design-specific checks that surface what the brief is missing from a *design rigor* standpoint, not just *strategy rigor* [R — Beth 2026-05-21: explicit ask to surface design gaps and tell people they need real design / real research; follow real qual research principles via MeasuringU and NN/g]. These operate primarily over JRNY, JOBS, CNPT, and SIGN clusters and produce explicit, typed recommendations.

**The five design checks:**

**1. Design Artifact Completeness.** Bradley names which design artifacts are present in the brief and which are missing:

| Artifact | Why it matters | Bradley's voice on absence |
|---|---|---|
| **Service Blueprint** | Front stage / back stage / behind the scenes — surfaces where the experience breaks at handoffs | *"You have no Service Blueprint. You're designing the front stage only — the part the customer sees. Without front-to-back, the experience breaks at the handoffs."* |
| **5Es decomposition** | Entice / Enter / Engage / Exit / Extend — the full use sequence | *"Your 5Es is partial — you covered Engage. Entice and Enter (how do users find this and start?) and Exit and Extend (how do they finish and come back?) are empty."* |
| **Need → Function map (Herbert Simon)** | The bridge from user goal to product structure [R — Simon, *Sciences of the Artificial*; design as the link between human goals and artificial systems] | *"Your JOBS canvas says the customer wants [X]. Your CNPT canvas describes a product structure that does [Y]. There's no explicit map between them. This is the design problem that hasn't been solved."* |
| **Empathy Map (Say / Do / Think / Feel)** | Four-quadrant model of what users tell you, what they actually do, what they internally believe, and what they emotionally feel | (See check #4 below) |

**2. Net CX Impact Assessment.** Bradley declares one of four states for what this idea does to n-able's customer experience [R — Beth 2026-05-21: *"is this thing net good to customer experience, net neutral, net negative or unknown?"*]:

| State | When it fires |
|---|---|
| **🟢 Net Good** | JRNY canvas is filled and shows a clear improvement in usability/NPS-relevant metrics. CNPT evaluation against alternatives confirms the new structure outperforms current. Has been tested on real users or has unambiguous design-pattern support. |
| **🟡 Net Neutral** | Internal-facing change (e.g., infrastructure, API restructure) with no direct customer impact, OR change confined to a workflow where measured impact is flat. |
| **🔴 Net Negative** | Removes a capability customers currently rely on without replacement, OR adds friction to a flow that's already a known pain point, OR migration plan creates a regression window. |
| **▒ Unknown** | JRNY, CNPT, or NEEDS canvases are insufficiently filled to assess. Bradley refuses to declare Good/Neutral/Negative without evidence — declares Unknown explicitly and demands the research that would close the gap. |

Net CX Impact is displayed **next to the Oregon Trail Readiness state** at the top of Bradley's report:

```
🟡 PARK AND PROVISION    |    Net CX Impact: ▒ UNKNOWN
```

This gives the Captain two parallel readouts: *am I ready to ship? AND is what I'm shipping good for customers?* They can be independent — a brief can be ROLL THE WAGONS on strategic readiness AND Unknown on CX impact, which is a real warning.

**3. Obviousness Classifier (Cynefin-based).** Bradley uses Cynefin (from SIGN cluster, Decision 6) to classify how much of the proposed work is in known design territory vs. requires genuine research [R — Beth 2026-05-21: separate low-hanging fruit (cybersecurity people love dark mode) from problems requiring real research].

Bradley narrates: *"Read of the design landscape — most of what you're proposing is [Simple / Complicated / Complex / Chaotic]. Simple work has known answers (just build). Complicated work needs careful design but the patterns exist. Complex work needs research before you build. Chaotic work needs to be stabilized before any of this matters."*

Example: *"Most of what you're proposing is Complex (70%) — genuine user uncertainty around SOC analyst behaviour change. The Simple 30% (dark mode toggle, keyboard shortcuts) you can just build. The Complex 70% needs research first, not after build."*

**4. Research Methodology Compliance.** Bradley checks whether any research the brief cites follows established sample-size and method rules from NN/g (qual) and MeasuringU (quant) — captured in `briefs/research-methodology-specs.md` [R — Beth 2026-05-21: *"follow real qual research principles via MeasuringU and NN/g — test with 5 users for a qual sample, more for AI tools 10-12, quant samples etc."*].

Bradley flags non-compliant research immediately, with the source rule and the corrective:

| Anti-pattern | Bradley's voice |
|---|---|
| Qual usability with N<5 | *"3 users is below the NN/g floor. Nielsen 5-user rule says 5. Re-run with 2 more, or your findings are below the qual reliability threshold."* |
| AI feature tested with N=5 | *"5 is the canonical qual rule. AI features need 10-12 (NN/g 2023+ guidance) because stochastic outputs need more coverage. Re-run."* |
| Survey with N<200 making projectable claims | *"50 users is below MeasuringU's threshold for ±5% MoE on n-able's typical population. Your survey is descriptive, not projectable. Either re-run at N=200+ or downgrade the claim."* |
| SUS score reported with N<30 | *"SUS needs 30+ for stable scoring (MeasuringU / Sauro). At N=10, your 73 has a CI wide enough to be anywhere from 60 to 86."* |
| Blended sample across segments | *"You ran 5 users blended across MSP and enterprise. NN/g says 5 per segment if segments matter. Your findings are 2.5 users per segment — below floor."* |
| Stated preferences without behavioural confirmation | *"Say data without Do data — see Empathy Map check #5 below."* |
| N=1 anecdote treated as evidence | *"One customer is a Sign (Decision 9 Patch A), not a verified problem. Run 5-user discovery before treating this as confirmed."* |

Compliance status displays at the top of Bradley's research summary:

> *"Research methodology check: ❌ Non-compliant. You cited '3 user interviews' as your problem verification. NN/g floor is 5 for qual usability; 10-12 for AI features. The Sign you cited remains UNVERIFIED until re-run."*

OR (if compliant):

> *"Research methodology check: ✓ Compliant. 8 customer interviews across 2 segments (NN/g 5-8 per segment guidance). Sign verified at the qual reliability threshold."*

This is the structural protection against research-theatre — work that looks like research but doesn't meet the methodology floor. Bradley names it as such.

**5. Empathy Map Coverage (Say / Do / Think / Feel).** Bradley checks which of the four quadrants has evidence [R — Beth 2026-05-21: *"separating out what people are saying/doing/thinking/feeling"*]:

| Quadrant | Evidence sources | Bradley flags on absence |
|---|---|---|
| **SAY** | Interview quotes, survey open-text, sales call transcripts | *"You have interview quotes. That's Say. Customers often Say one thing and Do another."* |
| **DO** | Behavioural analytics, session replays, support-case actions, telemetry | *"No behavioural data. You're trusting stated preferences without confirming with observed behaviour. Most common research failure mode."* |
| **THINK** | Survey reasoning, retrospective interviews, journey-mapping output | *"No data on what the user internally believes about the current flow. Their stated frustration may be a symptom, not the cause."* |
| **FEEL** | Sentiment data, NPS verbatims, complaint-tone analysis, ethnographic field notes | *"No emotional read. Confidence scoring is an emotional product — analyst feels exposed when they get it wrong. You haven't accounted for that."* |

Reliance on **Say-only** is flagged as the highest-risk research configuration. Reliance on **Do-only** is flagged second (you see what they do but not why). The rubric pushes toward at least Say + Do + one other.

**Bradley's design-layer voice summary (added to the clash report):**

> *"On the design side, here's what I see:
> — **Net CX Impact:** Unknown. JRNY canvas is partial; need research to assess.
> — **Design artifacts present:** Wireframes (1 of 4 stages). Missing: Service Blueprint, full 5Es, Need→Function map.
> — **Problem diagnosis status:** UNVERIFIED. SIGN cited an internal team observation, not a customer-verified problem. (Decision 9 Patch A precondition; UNVERIFIED stamp travels.)
> — **Obviousness read:** 30% Simple (just build), 70% Complex (research first). Don't treat the Complex 70% like the Simple 30%.
> — **Research methodology check:** ❌ Non-compliant. You cited '3 user interviews' as your problem verification. NN/g floor is 5 for qual usability; 10–12 for AI features (NN/g 2023+). Re-run before treating findings as evidence.
> — **Empathy Map coverage:** 1 of 4 quadrants filled (Say). You need Do (behavioural) before you trust the Say data.
> — **Recommended actions:** ROLL OUT — Research (Mode 3 ethnography on current flow, sample: 3–5 sites × 1–3 days each, source: NN/g + Kumar Mode 3 practice). ROLL OUT — Design (Service Blueprint of current state before designing replacement)."*

**[INTERACTION LAYER]** The Product Manager sees Bradley's design-layer summary as a distinct block in the clash report, immediately under the symmetric "nailed / caught" list. Net CX Impact appears next to the Oregon Trail Readiness state at the top. Empathy Map coverage is a small 4-cell badge showing which quadrants are filled. The Product Manager does not see: "Herbert Simon Need→Function," "Cynefin Obviousness Classifier," "Empathy Map Coverage" labels — they see plain-language renderings.

**Open question:** Whether the design-layer summary reads as additive coaching or as overwhelming-many-frameworks at first glance is untested [?]. v1 ships with all four design checks; if the first PM session shows the summary is too dense, v2 may collapse Obviousness Classifier into the standard clash report rather than the design summary [A — UI complexity tradeoff deferred to first PM session].

**LOTL trace:** Net CX Impact: ▒ UNKNOWN (Mode 3 ethnography not complete). Design artifacts: 0 of 4 present. Problem diagnosis: UNVERIFIED (SIGN has WOBBLY citation only). Obviousness: ~80% Complex (behavioural change in SOC analyst response is genuinely uncertain). Empathy Map: 0 of 4 quadrants filled. Recommended ROLL OUT cards: Research (Mode 3 ethnography), Design (Service Blueprint of current SOC analyst LOTL response), Design (Need→Function map for confidence scoring).

### Decision 14 — Integration with n-able Intent Spec / AI-First Protocol

**[THEORETICAL LAYER]** Idea Chorus does not exist in isolation. It operates inside n-able's AI-first, spec-driven delivery model — defined by two canonical Confluence artifacts: Beth (Elizabeth Connor)'s **AI-First, Spec-Driven Design at N-able** (ProdUX, working draft) and Nicole Reineke's **Product Management and Research Operating Model for AI-First, Spec-Driven Delivery** (NTAPGT). Surfaced and aligned in session 2026-05-21 [R].

**The integration model: Idea Chorus is the pre-Readiness-Gate diagnostic loop.** Bradley + council = the band that helps the Product Manager iterate on an Intent Spec *before* declaring `spec_ready: true` and handing to Nicole's 13-point Readiness Gate. They are complementary, not competing [R — Beth 2026-05-21: *"we are testing. it is new protocol."*].

**Vocabulary alignment (Intent Spec system → Idea Chorus rubric):**

| Intent Spec system term | Idea Chorus rubric equivalent | Status |
|---|---|---|
| **Intent Spec** (Nicole; was `Initiative.md`) | **Charter** (Decision 3, 6, 10) | Functionally identical at the artifact level. *Charter is the cluster; Intent Spec is the deliverable.* Idea Chorus PM-facing UI should use "Intent Spec" where Bradley speaks; "Charter" remains in theoretical layer. |
| **Intent Spec Graph** (Nicole — parent/child/peer/foundational/dependent) | **Charter Traversal Chain** (Decision 10 — brief → parent → company KPIs → market signals) | Same architectural move. Idea Chorus's chain is one slice through the Graph (vertical: brief up to market). The full Graph also has peers and foundational relationships. |
| **13-point Readiness Gate** (Nicole) | **Oregon Trail Readiness Score** (Decision 12) + **Owen Charter completeness check** (Decision 3) | Different surfaces, same gate function. The 13-point gate is the formal commit-to-deliverable check. Oregon Trail is the captain-facing pre-Gate diagnostic. |
| **Cascading Impact Analysis** (Nicole) | **FLAGGED state machine + UNVALIDATED stamp travel** (Decisions 1, 8, 9) | When new research arrives, impact propagates. Nicole names this as a feature; Idea Chorus has it implicit in the stamp-travel and OVERRIDE-public-attribution mechanisms. |
| **Decision Log binding to AI** (Nicole) | **Originator/Contributors attribution + public OVERRIDE entries** (Decision 9 action cards) | Same accountability mechanism. Each OVERRIDE in the Idea Chorus clash report becomes a Decision Log entry in the Intent Spec. |
| **Four practices: Research / PX / Info Dev / Apex** (Beth) | **Council clusters** (Decision 6): Research feeds SIGN/JOBS/NEEDS; PX owns JRNY/CNPT; Info Dev is content/canvas authorship; Apex is META infrastructure | Aligned. Beth's practices are role-layer; Idea Chorus's clusters are method-layer. Both stack. |
| **Spec stages: Understand → Shape → Validate** (Beth) | **Brief lifecycle: Charter-generation → Council session → Readiness Score state** | Understand = SIGN cluster filling + Charter drafting. Shape = Council session (clash detection + ROLL OUT cards). Validate = ROLL THE WAGONS state + Readiness Gate. This re-anchors the "Charter-generation vs Charter-application" distinction from the simulation findings into Beth's vocabulary. |
| **Gates 1-4** (Beth: Problem truth · Solution intent · Delivery readiness · Strategy/portfolio/ecosystem fit) | **Three-gate framework** (CLAUDE.md) + **Decision 9 Rule #9 Company-fit** | Beth's Gate 4 = Idea Chorus's Company-fit clash. Gates 1-3 align directly to CLAUDE.md's three-gate framework. |
| **Integrity Review** (Beth — truth, not polish; "are claims sourced or assumed?") | **Bradley's clash report + [CS:] tag discipline** (Decision 9 + CLAUDE.md §4) | Same function. Bradley *is* the Integrity Reviewer when invoked. |
| **Apex Assembly schema.json** (Nicole Appendix B — Bryce Wilson) | *Not yet in Idea Chorus.* Worth integration: JRNY + CNPT canvases could adopt `schema.json` as their executable format. | New integration opportunity. |
| **Control Tower data aggregation** (Nicole — Snowflake / Condens / Qualtrics / Rally / Jira / Ideas Portal / Chorus/Gong / Social Capture) | **Scout integration** (Decision 3) — currently single-source (Jira). | Control Tower is a richer aggregation pipeline. Worth integration: Scout becomes a query layer over Control Tower's aggregated signal data. |
| **5 AI Modes** (Nicole — Editor / Assistant / Cortex / Search / Code Interpreter) | *Not in Idea Chorus.* Idea Chorus's owensing is fully templated (Decision 9). | Different architecture by intent — Idea Chorus chose templated for environmental discipline (Principle B + CLAUDE.md §10). Worth noting the divergence in vocabulary mapping. |

**Concrete integration mechanisms (proposed for v1 build):**

1. **Intent Spec metadata gains `idea_chorus_session_id` field.** Every Intent Spec carries a reference to its most recent Idea Chorus session. Bradley's clash report becomes part of the Intent Spec's Decision Log.
2. **9 clash check rules feed the 13-point Readiness Gate.** Mapping (proposed):
   - Empty-Seat clashes → Readiness Gate items #4 (workflow exists), #6 (scope explicit)
   - Empty-Kill clashes → Readiness Gate item #10 (invalidation triggers documented)
   - Charter-misalignment / Force-evidence mismatch → Gate items #2 (problem statement evidence-backed), #3 (measurable success criteria)
   - Adjacency gap → Gate items #2, #5 (experience rules declared)
   - Confidence cascade → Gate item #2 (traceable to signals)
   - Cross-voice tension → Gate item #11 (inheritance declarations explicit when child Intent Spec)
   - Unaddressed blindspot → Gate item #10 (load-bearing assumptions documented)
   - Company-fit → Gate items #6, #11 (out-of-scope rationale, inheritance)
3. **Charter Traversal Chain (Decision 10) IS Intent Spec Graph traversal.** The 5-rung chain (Proposition → Brief Charter → Parent → Company Strategy → Market Signal) is the vertical slice. The horizontal slice (peers, foundational, dependent) is in Nicole's doc; Idea Chorus should add peer-Charter and foundational-Charter awareness in v2.
4. **Apex Assembly schema.json becomes the executable canvas format** for JRNY and CNPT clusters. The PM-facing prototype is the canvas-fill. Bradley's clash detection runs over `schema.json` content directly, not just text canvas data.
5. **Control Tower data aggregation feeds canvas data.** SIGN canvas pulls from Condens/Chorus/Gong; ECON canvas pulls from Snowflake/Salesforce; CNPT canvas pulls from Jira; LAND canvas pulls from Social Capture / competitive intel. *Scout becomes a query layer over Control Tower's aggregated signals* rather than a direct Jira retrieval.
6. **"Things We Know / Things We Don't Know" becomes a required Intent Spec section.** Surfaced from the simulation finding on Taha's brief — the closest n-able artifact to abductive Mode 1 SIGN structure. Beth's Integrity Review function names confidence per claim; this section makes that explicit.
7. **Continuous Discovery feedback loops** (Beth § 9 living system) tie Idea Chorus session outputs back to Control Tower telemetry. *After ship, Bradley re-convenes the council on production data; if the original Charter's claims are no longer validated, FLAGGED state re-fires and triggers a Cascading Impact Analysis (Nicole).*
8. **The Foundational Intent Specs are themselves Charter artifacts.** Beth's and Nicole's docs are Charter-generation at the n-able-wide level. Running Idea Chorus on those docs is **recursive application of the protocol to itself** — and it should pass its own bar. This is a v2 self-test.

**[INTERACTION LAYER]** PM-facing language uses **Intent Spec** when speaking about the artifact, **the band** when speaking about the council, **Bradley** as the coordinator persona. Charter, cluster, owensing, RELATN, clash detection — these are theoretical-layer terms the PM does not see in the UI. The PM sees: *"Bradley says: your Intent Spec is at PARK AND PROVISION. Here's what the band caught. Top three actions."*

**LOTL trace:** The LOTL test fixture (`briefs/lotl-value-prop.brief.md`) is structurally an early-stage Intent Spec for an Adlumin product capability. When run through Idea Chorus, Bradley would convene the council, produce the clash report (UNVERIFIED stamp because Mode 3 ethnography incomplete; JOBS rank 1 likely; Charter Traversal Chain incomplete at parent rung), and the resulting Decision Log becomes part of the LOTL Intent Spec when Adlumin commits. The 13-point Readiness Gate would NOT pass at current state — LOTL is correctly in pre-Readiness-Gate iteration.

**Open questions:**
- [ ] Should Idea Chorus run as a **standalone tool** (current architecture) or as a **plugin to Control Tower** (Nicole's Appendix B suggests Control Tower already hosts a "spec-readiness tracker")? Risk: building duplicate infrastructure if standalone; risk: Idea Chorus loses its differentiated voice/clash-detection if absorbed [?]
- [ ] **Should foundational Intent Specs (Beth's + Nicole's docs) be run through Idea Chorus?** They are Charter-generation artifacts at the protocol level. Self-application would be a strong validation but politically/practically delicate — would surface gaps in n-able's own AI-first protocol [?]
- [ ] **Vocabulary migration path** — current brief uses "Charter" throughout; PM-facing UI should use "Intent Spec." Build agent needs to know which audience each surface speaks to (theoretical vs interaction layer) [A — UX call for build]

### Cross-Cutting Design Principles

**A. Bury theory, surface process.** [R — Owen 1998 metaplanning principle; the planner's structure should serve the user, not be displayed to them.] Internal vocabulary is invisible to PMs. Brief carries both layers; UI carries only the interaction layer.

**B. Fun as interaction grammar.** Game-style framing for serious work [R — Saint-Exupéry "teach them to yearn"; CLAUDE.md §8]. Monte Carlo narratives read as game outputs. "What would kill this" is "what would lose this round?" Hard Mode is a team game ritual. Oregon Trail is the spine metaphor. Concrete instantiations (post-2026-05-21):
- The Product Manager is **the trail captain** on the trail toward Oregon (their Charter).
- **Bradley** (Project Manager, from CLAUDE.md §0) is the truth-telling **chief-of-staff** inside the tool — not the strategic decider; the record-keeper and council-convener.
- The cluster voices are a **council of strategists** sitting around the campfire — each strategist a method-expert (JTBD, SDT, Porter, Christensen, etc.) with their own tradition and their own blindspots.
- The clash report is **"what the council caught"** — surfaced via *"Ask Bradley."*
- Action cards on clashes carry verbs (ROLL OUT · PARK IT · OVERRIDE) that read as game moves, not enterprise-software status changes.
- The "killed and saved 6 weeks" Monte Carlo branch is a **win state**, not a loss.
- The Product Manager always decides. Bradley keeps the record honest. The council weighs in. The tool never decides for the captain.

**C. Attribution as honor-code structural answer.** Every entry has Originator + Contributors + attribution display in **`X% Beth`** form (centers human, not tool) [R — Owen Originator/Contributors fields on every template]. Future versions: multi-person (`40% Beth / 30% Jin`). Hard Mode rules read as authorship recognition: *"Mode 5 entries must be ≥70% Beth"* — not tool-defensiveness. [R — CLAUDE.md §6 academic integrity / Copilot Exception alignment]

**D. Properties = engineering. Features = design. Discussion + Scenario = context for both.** This **corrects** Owen 1998's split (which sent Features to marketing, an artifact of how product orgs looked then) [R — Owen 1998 p.10, with Beth's design-ownership correction]. The brief and build carry the corrected split.

**E. The tool IS Owen's missing Planning stage.** Two-step development: Planning ("what to make") before Designing ("how to make it"). Idea Chorus is the Planning stage made explicit [R — Owen 1998 p.5].

**F. Innovation navigates paradox.** Methods in the library do not conflict; they cluster around different questions [R — Beth 2026-05-21]. JOBS and NEEDS both read motivation, from different angles, and both stay valid. PORT and POS both classify innovation, from different angles, and both stay valid. Lean Startup and Owen Structured Planning both organise the work, from different angles, and both stay valid. The rubric never asks the PM to choose a camp. It surfaces the cluster whose question matches the moment, and lets adjacent clusters be visited when the moment shifts. *Paradox is the source of innovation, not a problem to resolve.* Operational consequence: RELATN scores in the methods library are bounded `0` to `+2`; no negative scores [R — abductive analysis treats alternative readings as parallel hypotheses; IIT tradition built to absorb across schools].

**G. The rubric is a band of methods.** Each cluster is a *voice* carrying its tradition's epistemology [R — Beth 2026-05-21: *"build the tool to use these frameworks like experts weighing in"*]. Each method, when surfaced, **owens itself** — runs Owen Structured Planning on its own contribution: Sign / Hypothesis / Kill criterion / force level / evidence / [CS:] confidence / what it cannot see. The PM does not pick winners. The PM reads the transcript and finds the innovative space in the tension between voices. This mirrors The Band Protocol's own structure: many voices in productive tension serving Beth, not the vendor.

### LOTL Test Fixture (Calibration Check)

Expected results, traceable to LOTL brief evidence:

| Mode | Expected | Traceable evidence |
|------|----------|--------------------|
| Mode 1 | Hypotheses generated, kill conditions required | LOTL brief currently skipped this; tool would back-fill from "84% of attacks use LOTL" sign [R — WOBBLY tag already in LOTL brief] |
| Mode 2 | HIGH | Threat actor landscape sourced [R — ADLC-178, -161, -199, TRG-44, JOINT-CSI in LOTL brief] |
| Mode 3 | MEDIUM | Customer segments named (SOC analyst, MSP operator); behavioural evidence thin; ethnography missing [R — LOTL brief WHO section + 2 sessions in next_actions] |
| Mode 4 | LOW | Hypothesis formed (confidence scoring changes behaviour) but not tested [R — LOTL brief Gate 2 ASSUMPTION] |
| Mode 5 | FLAGGED — UNVALIDATED stamp travels | Concept exists (`prototypes/adlumin-lotl.html`) before Mode 3 complete [R — LOTL brief prototype field] |
| Mode 6 | LOW | No failure modes named; no competitive response modelled [R — LOTL brief Gate 3 missing] |
| Oregon | MISSING / PLACEHOLDER | No Project Statement + Defining Statements [R — LOTL brief Gate 3 missing] |

These outputs are internally consistent and testable [R]. Whether the v1 scoring logic produces them from the LOTL blab plus canvas fills is not verified until build [?].

---

## Gate 3 — Are We Making the Thing Right?

**Finding: Test protocol now exists in outline. Calibration data and integration paths still open.**

### What "done" means

**Scoring accuracy:** Rubric produces cluster scores from canvas fills (not blab keyword detection). LOTL fixture is the v1 calibration case [R]. Three additional test cases (one with strong JRNY evidence, one with strong CNPT evidence, one with VALID Charter producing both VALUE PROP readings) needed to test false-negatives on UNVALIDATED stamp and false-positives on Hard Mode Constraint [?].

**Story-First comprehension:** At least one PM reads the Monte Carlo narrative *and* the debate transcript layer, and correctly describes (a) where they are in the tree, (b) which voice's testimony is the riskiest, (c) what would close the gap on the rank-1 voice's Kill criterion, (d) that "killed and saved weeks" is a win, without coaching [?].

**Band-of-methods owensing:** When a cluster voice is surfaced, the tool produces an owensed testimony with all six required fields: Sign, Hypothesis, Kill criterion, force level, evidence with [CS:] tag, and a "cannot see" blindspot. PM can read the testimony and identify the Kill criterion without coaching [?].

**Dual VALUE PROP readings:** Both readings render visibly. PM can describe (a) what their Charter says the value is (Reading 1), and (b) what the integrated bridge says about how the value lands in the market (Reading 2). PM does not have to pick between the readings [?].

**Forced-rank gesture:** PM force-ranks all scoring clusters 1–N before scoring proceeds. No batch-rank. No default rank offered. PM can articulate why the rank-1 cluster is the killer for their idea [?].

**Charter as pre-condition:** PM can produce a Project Statement that passes verb / number / date / named-entity check; if not, knows the entry is PLACEHOLDER and the UNVALIDATED stamp travels [?].

**Attribution display:** Every entry shows `X% Beth` attribution. v1 single-person mode acceptable [R — Owen Originator/Contributors single-author baseline].

### Acceptance tests (per closed decision)

**A1. Canvas-as-primary (Decision 2 patch):** Run a fluent, keyword-rich blab with zero canvas fills. Verify every scoring cluster's score caps at 5 from blab alone. Add a canvas fill in one cluster. Verify only that cluster's score moves past 5; blab alone in other clusters still caps at 5.

**A2. Scout timing (Decision 3 patch):** PM opens a new Idea Chorus session. Verify Scout is available only inside the Charter definition flow. Verify Scout is NOT surfaced at scoring time, debate-transcript time, or in cluster method-surfacing.

**A3. VALUE PROP dual-reading (Decision 6):** Charter complete. Verify Reading 1 (CHTR collapsed) and Reading 2 (integrated bridge with POS + JOBS) both display as labeled views. PM can toggle between them.

**A4. Band-of-methods owensing (Decision 6):** PM ranks scoring clusters. Tool surfaces the rank-1 cluster's voice. Verify testimony contains all six fields: Sign, Hypothesis, Kill criterion, force level, [CS:] tagged evidence, blindspot. Repeat for at least three additional cluster voices in the same session.

**A5. Debate-on-Monte-Carlo (Decision 5):** PM views Monte Carlo narrative (Layer 1). PM clicks "hear the band." Verify debate transcript (Layer 2) loads with each scoring cluster's owensed voice. Verify PM can stack both layers or toggle between them. Verify "killed and saved weeks" branch displays as a win.

**A6. Force-level composition (Decision 7):** Set rank-1 cluster's testimony to thin/missing-evidence state. Verify FLAGGED notice appears. Toggle Hard Mode on that cluster:
- Off → UNVALIDATED stamp travels, no block.
- Directive → stamp + annotation prompt at next checkpoint.
- Objective → stamp + team review prompt.
- Constraint → BLOCKED — work cannot ship.
Repeat with rank-1 cluster's testimony resolved → no FLAGGED state regardless of Hard Mode toggle.

**A7. Charter PLACEHOLDER stamp travel (Decision 1):** Charter incomplete (Project Statement fails verb/number/date/named-entity check). Verify UNVALIDATED stamp stamps the Charter and travels to every artifact downstream (concept card, debate transcript, exported brief).

**A8. Mode 1 abductive input shape (Decision 4):** PM opens SIGN cluster. Verify Mode 1 / Design Factor surfaces with Sign / Hypothesis / Kill three-field structure. Tool generates 2–3 starter hypotheses including the most uncomfortable. PM can accept / refine / reject / add. No batch-accept available.

### Test protocol (LOTL session) — full run

1. Run LOTL blab + existing canvas fills through v1 rubric.
2. Verify table from "LOTL Test Fixture" section matches rubric output, plus VALUE PROP populates both Reading 1 and Reading 2.
3. Verify canvas-as-primary (A1): blab-only score caps at 5; canvas adds past 5.
4. Verify Scout timing (A2): Scout present in Charter, absent in scoring.
5. PM force-ranks scoring clusters. Verify rank-1 = JOBS (likely for LOTL — behavioural change hypothesis untested).
6. Tool surfaces JOBS voice. Verify owensing produces all six fields. Sign = no interviews; Hypothesis = analyst hires for triage; Kill = interviews show different reason; Force = Should; Evidence = none [CS: UNKNOWN]; Blindspot = buyer emotional job.
7. JOBS testimony fails Kill (no interviews exist) → FLAGGED.
8. Show Story-First Monte Carlo to one SOC-adjacent PM. Then call up debate transcript. Ask: where are you, which voice is riskiest, what would close JOBS' Kill criterion, what does "killed and saved 6 weeks" mean?
9. Toggle Hard Mode on JOBS cluster: Off → stamp; Directive → stamp + annotate; Objective → review prompt; Constraint → BLOCKED. Verify each.
10. Toggle Hard Mode off everywhere. Verify stamp travels but ship is not blocked.

---

## Failure Modes

**1. The rubric becomes a writing rubric under new branding.**
If mode scores are detected from blab text alone, a fluent PM scores HIGH without research. **Mitigation:** canvas fill data (structured Owen Design Factor entries) must carry more scoring weight than blab signals. The rubric must distinguish "PM mentioned competitors" from "PM filled Competitors-Complementors Map." [R — `applyCanvasBoosts()` exists in prototype; whether its weighting is sufficient under the new rubric is a build-time question [?]].

**2. Story-First narrative reads as fiction.**
"1,000 PMs at this point" implies a dataset that does not yet exist. **Mitigation:** v1 footer discloses simulated path-frequency. The narrative remains directionally honest because the underlying RELATN math is sound [R — Owen pp.9-11]. v2 calibrates from accumulated runs.

**3. Abductive Mode 1 feels like surveillance.**
"What would prove you wrong" required field could read as gotcha. **Mitigation:** Saint-Exupéry framing — the kill condition is "what would lose this round?" not "where's your proof?" [R — CLAUDE.md §8 yearning-energy principle].

**4. UNVALIDATED stamp normalises and disappears.**
If every artefact carries the stamp, it becomes wallpaper. **Mitigation:** stamp is visible and persistent but **also** ties to the Monte Carlo narrative ("37% of PMs at this point shipped and missed") so the consequence is named, not just the label [R — Owen Quality Pyramid concept-evaluation principle].

**5. Hard Mode becomes a team weapon.**
Constraint-level Defining Statements can be used to block work the team doesn't like. **Mitigation:** Hard Mode is opt-in and per-project, framed as a ritual, with force levels set by the team together, not unilaterally [R — Owen Structured Planning collaborative-planning principle].

---

## What's Still Missing

**Open [?] items — bounded and named:**

*Build dependencies:*
- [x] Canvas fill integration — canvas-as-primary. Blab caps at 5. Canvas fill is the scoring event past 5. `applyCanvasBoosts()` additive model replaced [R — closed 2026-05-21]
- [x] Scout integration timing — Scout runs at Oregon definition step only, before scoring begins. Planning aid, not scoring retrieval [R — closed 2026-05-21]

*Empirical calibration:*
- [ ] Bayesian parameter values — Owen RELATN gives defensible defaults (+2/+1/0/-1/-2) but specific weights per mode and evidence type need calibration from accumulated runs [?]
- [ ] Monte Carlo path-frequency dataset — v1 ships with simulated narratives derived from RELATN; empirical PM-population data accumulates from v1 forward [?]

*UX comprehension (untested until build sessions):*
- [ ] Story-First narrative comprehension [?]
- [ ] Abductive Mode 1 input shape comprehension [?]
- [ ] Oregon Charter coaching prompt phrasing [?]
- [ ] "Killed and saved weeks" reading as win, not loss [?]
- [ ] UNVALIDATED stamp visibility curve over time [?]

**Closed in session 2026-05-20:**
- [x] Mode 5 flag mechanism — UNVALIDATED stamp + Hard Mode [R]
- [x] Engine architecture — stacked, theory buried [R]
- [x] Oregon validation — Owen Charter pattern [R]
- [x] Mode 1 semiotics — abductive analysis, not self-classification [R]
- [x] Display surface — Story-First [R]
- [x] Theoretical layer / interaction layer separation [R]
- [x] Attribution structural answer — `X% Beth` per entry [R]
- [x] Properties/Features split — corrected to design-owned Features [R]
- [x] Meta-positioning — Idea Chorus is Owen's Planning stage [R]

**Closed in session 2026-05-21 (architecture sprint):**
- [x] Canvas-as-primary — blab caps at 5; canvas fill is the scoring event [R]
- [x] Scout timing — Oregon definition step only; planning aid not scoring retrieval [R]
- [x] Methods library architecture — IIT ID design-as-science as spine (Bauhaus → Moholy-Nagy → IIT ID → Doblin / Whitney / Kumar / Owen / Keeley); non-IIT methods as absorbable operations; method surfacing per cluster per evidence type via Owen Means/Ends [R]
- [x] Library additions named — Theory of Change, Porter's Five Forces, Christensen Disruptive Innovation, Wardley Mapping, Cynefin, IDEO Design Thinking; declared in matrix artifact [R]
- [x] Cluster set resolved at 14 clusters after harder clustering — CHTR (claim) · SIGN · PORT · FEAT · POS · LAND · JOBS · NEEDS · JRNY · ECON · CNPT (debate) · EVID · META · RLZE (meta) [R]
- [x] Item × Item RELATN matrix produced and printed [R]
- [x] No conflict scores in the library — innovation navigates paradox; RELATN bounded `0` to `+2`; methods that appear to conflict simply cluster around different questions [R]
- [x] VALUE PROP relocated — no longer the aggregate score of sub-signals. VALUE PROP is the **claim under examination** that Charter (CHTR) produces; other clusters are voices debating the claim [R]
- [x] VALUE PROP dual-reading — held as both CHTR output (collapsed) AND bridge layer integrating Purpose + Positioning + JOBS (integrated). Paradox-held, not collapsed [R]
- [x] Band of methods interaction model — each cluster is a voice; each method owens itself (Sign / Hypothesis / Kill / force / evidence / [CS:] / what it cannot see); PM reads transcript and finds innovative space in the tension [R]
- [x] Debate transcript as layer on Monte Carlo — not a replacement; PM toggles or stacks [R]
- [x] JOBS / NEEDS / PORT / POS split — derived from RELATN dense-region read; both lenses on motivation and both lenses on innovation kept valid [R]
- [x] Cross-cutting principles F and G added — innovation navigates paradox; rubric is band of methods [R]
- [x] Mode 7 placement — mapped to RLZE cluster (post-launch), visible in tree, not scored in pre-launch Planning use [R]
- [x] LOTL trace rank assignment — PM-driven, not tool-assigned; likely rank 1 for LOTL = JOBS (what SOC analyst is hiring confidence-scoring to do) [R]
- [x] Decision 7 — Canvas slot → cluster mapping: 8 existing canvases reassigned to clusters; 13 new canvases identified (PROJECT_STATEMENT, DEFINING_STATEMENTS, THEORY_OF_CHANGE, DESIGN_FACTOR, CYNEFIN, MOORE_CC, CHRISTENSEN, LANDSCAPE, MASLOW, MODE_3_ETHNO, SERVICE_BLUEPRINT, PRICING, CONCEPT_EVAL); total v1 canvas count = 21; build priority order set [R — closes critic item 2]
- [x] Decision 8 — Force-level composition: forced-rank generates FLAGGED signal; Hard Mode determines consequence (Off / Directive / Objective / Constraint → stamp / annotate / review / BLOCK); per-cluster Hard Mode toggle proposed for v1, project-wide fallback for UX simplicity [R — closes critic item 3]
- [x] Test protocol expanded with A1–A8 acceptance tests covering canvas-as-primary, Scout timing, dual VALUE PROP rendering, band-of-methods owensing, debate-on-Monte-Carlo, force-level composition, Charter stamp travel, and abductive Mode 1 input shape [R — closes critic item 5]
- [x] Status changed from READY to DESIGN DEVELOPMENT; Readiness Statement updated to reflect post-session-2026-05-21 architectural advancement [R — closes critic item 7]
- [x] Decision 9 — Owensing as Clash Detection: deterministic rule engine modeled on BIM clash detection; 44 method spec files + 8 clash check rules; zero LLM tokens at runtime; action cards (ROLL OUT · PARK IT · OVERRIDE) with Originator/Contributors attribution on each [R — closes critic items 1, 2, 3]
- [x] Bradley + Council + Oregon Trail interaction frame established — Bradley is the Project Manager persona (CLAUDE.md §0), serves the Product Manager (the user), convenes the council of strategists (cluster voices), reports clash detection results. Product Manager always decides; Bradley never does [R]
- [x] Product Manager vs Project Manager terminology disambiguated — "PM" acronym retired from interaction layer; tool user = Product Manager (strategic owner); Bradley = Project Manager (coordinator) [R — Beth 2026-05-21 correction]
- [x] Owen force levels (Must / Should / Ought to) kept verbatim in PM-facing interaction layer; no translation [R — Beth 2026-05-21 directive]
- [x] Owensing v2+ scaling direction named (cross-domain clash detection, cross-PM Charter clash detection); not scoped for v1 [R]
- [x] **Simulation against 10 real n-able briefs** (ADL, ProdUX, MSPPP, BusinessApplications spaces) — rubric does useful work; clash detector survives diverse brief shapes; surfaced patterns: Mode 1 absence at n-able is structural, engineering Charter rigorous / value-prop Charter vibes, UX research culture writes better Charters than product/engineering culture [R — session 2026-05-21]
- [x] Decision 10 — Charter Traversal Chain: brief → parent → company KPIs → market signals; Bradley walks the chain upward; anti-strategy-hallucination via traceable derivation; chain visualization in interaction layer (5 rungs, green/yellow/red/grey) [R — Beth 2026-05-21]
- [x] Decision 11 — Gameboard / Gameplay PM-facing layout: Gameboard pane (SIGN · JOBS · NEEDS · LAND · POS · JRNY = "do you even know what you're solving?") / Gameplay pane (CHTR · PORT · FEAT · ECON · CNPT = "how do you win on this board?"); two-pane clash report; extends Beth's existing PM toolkit [R]
- [x] Decision 12 — Oregon Trail Readiness Score: aggregate verdict in three states (ROLL THE WAGONS / PARK AND PROVISION / TURN BACK); Captain-facing summary of FLAGGED state machine; intentionally a little game-cute per Beth-call [R]
- [x] Decision 9 patches: bluntness precondition (SIGN-empty → TURN BACK before convening council), positive reinforcement (symmetric clash report — what was nailed AND what was caught), company-fit clash rule (new Rule #9, library now 9 rules) [R]
- [x] Brief shape classifier (proposed Decision 11 from simulation findings) **withdrawn** — clash detector produces good signal across all brief shapes without classification [R — Beth 2026-05-21: "Does it need to be?"]
- [x] Mode 1 SIGN absence at n-able **flagged as parallel-track Adlumin coaching work**, independent of rubric build [R]
- [x] Decision 9 Action cards typed — ROLL OUT split into Research / Design / Data / Citation; Bradley errs toward explicitly telling the PM they need research or design rather than leaving the question hanging [R — Beth 2026-05-21]
- [x] Decision 9 Patch A strengthened — bluntness precondition now two-stage: SIGN-empty → TURN BACK, SIGN-untested → research demand opens the council session with UNVERIFIED stamp [R]
- [x] Decision 12 Monte Carlo path-frequency restored — per-state percentages with "killed and saved 6 weeks" and "turned back and re-emerged" as win branches; [CS: MEDIUM] calibration disclosure [R — Beth 2026-05-21: bring back the Monte Carlo percentages]
- [x] Decision 13 — Design Diagnostic Layer: four design-specific checks (Design Artifact Completeness, Net CX Impact Assessment, Obviousness Classifier, Empathy Map Coverage); displayed as distinct block in clash report; Net CX Impact appears as parallel readout next to Oregon Trail Readiness state [R — Beth 2026-05-21: explicit ask for design rigor surfacing, Herbert Simon need→function map, Say/Do/Think/Feel quadrants, low-hanging-fruit vs research-needed]
- [x] Skip-risk Monte Carlo (third Monte Carlo layer) added to each ROLL OUT card — every card carries `What / Closes / Skip-risk` with path-frequency narrative on consequences of skipping; PARK IT and OVERRIDE also carry risk lines (visibility of UNVALIDATED stamp travel; public authorship trail on overrides); makes Bradley's bluntness consequential rather than nagging [R — Beth 2026-05-21: *"more explicit about risks of not doing design steps (also include research)"* + *"Monte Carlo simulation that shows if the idea will succeed, will it waste time, will it fail in market — the PM simulation"*]
- [x] Three Monte Carlo layers named (Readiness-state · Skip-risk · Outcome) — shared simulation math, different exposed slices; all carry [CS: MEDIUM] calibration disclosure until empirical PM-population data accumulates [R]
- [x] Research Methodology Compliance — new artifact `briefs/research-methodology-specs.md` captures NN/g qual + MeasuringU quant sample-size rules with citations; Bradley's ROLL OUT — Research cards cite the source and N (never invents sample size); Decision 13 gets fifth design check that flags non-compliant research (e.g., 3 users for qual, 5 for AI, SUS at N<30) [R — Beth 2026-05-21: *"follow real qual research principles via MeasuringU and NN/g — 5 users for qual sample, 10-12 for AI tools, quant samples etc."*]
- [x] **Decision 14 — Integration with n-able Intent Spec / AI-First Protocol.** Idea Chorus is the pre-Readiness-Gate diagnostic loop; Bradley + council = the iteration band that runs BEFORE Nicole's 13-point gate fires. Vocabulary alignment table maps Charter ↔ Intent Spec, Charter Traversal Chain ↔ Intent Spec Graph, Spec Stages Understand→Shape→Validate ↔ brief lifecycle, etc. Eight concrete integration mechanisms proposed (session_id field, clash-rule-to-readiness-gate mapping, Apex Assembly schema.json as executable canvas, Control Tower as data aggregation pipeline, Things-We-Know-Don't-Know as required Intent Spec section, continuous discovery feedback loop, recursive self-application). Surfaces and grounds the rubric inside the AI-first protocol Beth + Nicole authored at n-able [R — Beth (Elizabeth Connor) AI-First Spec-Driven Design at N-able 2026-05-10 working draft; Nicole Reineke PM and Research Operating Model for AI-First Spec-Driven Delivery 2026-05-19; Beth directive 2026-05-21 *"check against that (we are testing. it is new protocol)"*]
- [x] **Simulation against Taha Doueidar's Cloud Commander UX Research Strategy** — generated revised plan v1.1 with NN/g + MeasuringU sample-size citations, Kill criteria for Tactical Goals, citations on Things We Know, parent_charter ladder action; extended to v1.2 with Nicole + Beth routing once Intent Spec / AI-First protocol context loaded. Surfaced category-shift finding: UX research strategy is not an Intent Spec — it's the discovery pipeline that feeds them. [R — session 2026-05-21]

---

## Readiness Statement

The architectural decisions are closed against published methodology and Beth's lineage commitments. Owen Structured Planning, Owen 1998, Tavory/Timmermans, Peirce, Kumar, Doblin/Keeley, Whitney, Moore, Christensen, Porter, Wardley, Cynefin (Snowden), Theory of Change tradition, IDEO Design Thinking, Kano, JTBD, SDT, Maslow, Blue Ocean, Ansoff, Innovation Ambition, and Lean Startup are all named and integrated via the IIT ID design-as-science spine.

**Status: DESIGN DEVELOPMENT, not build-ready.** The architecture advanced beyond the previous READY claim in session 2026-05-21 because: (a) the rubric became a band-of-methods agentic system, not a scoring rubric — each cluster's voice runs Owen Structured Planning on its own contribution, which is an LLM-driven mechanism the current prototype does not approach; (b) the cluster set expanded from 7 sub-signals to 14 clusters with method-surfacing logic across 44 methods; (c) VALUE PROP became dual-natured (CHTR collapsed + bridge integrated), held as paradox not collapsed; (d) the Story-First surface gained a debate-transcript layer.

Each of these is the right architecture. Together they raise the v1 build cost meaningfully. The brief is honest about that.

**Recommendation:** Continue design development. Close canvas-slot-to-cluster mapping, force-level composition (forced-rank vs. Hard Mode), and test protocol gaps before handing to build. Run critic after those close. Then either prototype a thin slice (single cluster's voice, owensing on one surfaced method, against LOTL fixture) to validate the band-of-methods mechanism, or rebuild against the full spec if the thin slice reads right.

---

*Spec redrafted: 2026-05-20 — architecture decisions closed: 2026-05-21*
*Source brief: briefs/idea-chorus-rubric-v2.brief.md*
*Test fixture: briefs/lotl-value-prop.brief.md*
*Status: DESIGN DEVELOPMENT — structural architecture closed; canvas/cluster mapping, force-level composition, test protocol gaps still to close before build hand-off.*
