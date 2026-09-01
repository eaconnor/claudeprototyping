---
name: prototype
description: Execute the full Band Protocol prototyping pipeline (scout → spec → critic → build → critic → council → handoff) to produce working HTML prototypes with Bradley rail, ownership attribution, and handoff packets. Use this skill whenever the user asks to prototype, mock up, build a demo, show a concept, or create any UI/screen — even if they just say "show me what this would look like" or "build it". Also trigger when the user mentions running the pipeline, creating a brief, or producing a deliverable prototype. This is the core Band Protocol workflow.
compatibility:
  required_agents:
    - scout
    - spec  
    - build
    - critic
    - council
    - bradley
    - proctor
  mcp_servers:
    - atlassian (for Confluence/Jira access)
---

# Band Protocol Prototyping Pipeline

This skill executes the complete Band Protocol prototyping workflow, producing working HTML prototypes with full handoff documentation. The pipeline is **always full** — no steps drop, even if the user says "just build it."

**This is a cooperation tool, not an automation tool.** It starts with PMs (they drive prototyping and readiness decisions) but many people contribute — designers for user-centered decisions, researchers for evidence, engineers for feasibility, strategists for positioning. The routing cards (Product · Design · Research · Eng) are the structural form of this multi-contributor design: each card carries the right question to the right human. The tool creates evidence and routes it. It does not make decisions.

**Why the 44-voice council exists — clash detection.** Before you commit resources to building something, run the idea through 44 analytical traditions and find where they disagree. Those disagreements are the risk. JTBD says users want to reduce doing. SDT says users want to retain felt competence. Both sourced. That clash, undetected, builds the wrong product confidently. The council surfaces it. A human resolves it. Cross-talk (Direct response · Blind-spot supply · Productive tension) is the mechanism of clash detection — more voices means more surface area for finding where the idea breaks.

Council tensions are named and routed, never resolved by the tool. The synthesis sentence in the council summary is always `[0% Claude — fill this in]`.

## Step 0: Intake — ask before you build

**Before scout runs**, ask two quick questions. This is the only gate before the pipeline runs. Do not skip it — hi-fi prototypes are 3–5x the time and token cost of lo-fi and are wrong for most concepts.

The skill is designed for PMs and researchers who need to prototype quickly and get two things: a **readiness score** (is this idea ready to build?) and a **council of 44 expert voices** (what does each analytical tradition say about it?). Step 0 makes sure the output is calibrated to their actual need.

### Question 1 — Lo-fi or hi-fi?

> "Do you want lo-fi or hi-fi?
> - **Lo-fi (default, good for most concepts):** one-page layout, real copy, expert council, readiness score. Fast.
> - **Hi-fi:** multi-page clickable, wizards and modals, feels like a real product. Use this when you're walking a stakeholder through a click-path or replacing a vendor demo."

**Default: lo-fi.** If the user says "just build it," build lo-fi and say so: *"Building lo-fi — say 'hi-fi' if you need the clickable multi-page version."*

### Question 2 — Who is this for?

> "Who is the audience for this round?
> - **Me / internal team:** honest gaps visible, Bradley says what's broken.
> - **Stakeholder / exec review:** rail written at decision level, tensions framed as choices.
> - **Customer / design partner:** seed data clean, no internal politics, attribution visible."

**The audience answer shapes outputs, not just polish:**
- **Internal:** council shows all 44 voices with full owensing; rail is candid.
- **Stakeholder/exec:** council leads with the executive summary (readiness score + top tensions + 3-sentence read) *before* the 44 voices. Rail leads with "what this means for your decision."
- **Customer/design partner:** seed data stamped, attribution shown, council framed as "expert perspectives" not methodology names.

### What lo-fi looks like (the default)

- Single page or single screen, full layout, real copy.
- Apex Bridge `--br-*` tokens. Light + dark toggle.
- Fictional seed data with visible "seed data" stamps where numbers appear.
- Full Bradley rail with violet-tinted surface, math block (three numbers), Doblin-with-org-advantages card, click-into council modal with owensed voices and cross-talk.
- One CTA-style button per row max. No wizards, no editors, no multi-modal flows.
- Build target: ~600-1,200 lines of HTML/CSS/JS. One session.

### What hi-fi adds (when the user explicitly chooses it)

- Multi-page navigation (minimum 4 pages: Dashboard + 2 entity-list pages + 1 detail/audit page).
- At least one interactive flow rendered as a modal: wizard, editor, or configure-screen.
- Web components (`apx-sidebar`, `apx-productbar`, `apx-card`, `apx-badge`, `apx-table` minimum). Stub the shadow DOM properly; do not inline-replicate.
- Inline SVG icons (not Unicode), at least one micro-chart (bar/spark/sparkline).
- Cross-page interaction: clicking an entity on page A opens a detail view on page B.
- Build target: ~3,500-5,000 lines. Multiple sessions usually.

**Reference for hi-fi:** `prototypes/acp-v1/index.html` (2026-05-27). 4,675 lines, 9 pages, 5-step Coworker wizard, runbook editor modal, MCP server modal, mini bar charts, web components. That is what "hi-fi" means in this skill.

**Reference for lo-fi:** `prototypes/acp-headless/index.html` (2026-05-28 rerun). ~1,650 lines, single dashboard with section breakdown, council modal, no wizards, no multi-page. That is what "lo-fi" means in this skill.

When the user has not chosen, build lo-fi. Confidence comes from naming the tier, not from over-building.

## Pipeline Overview

```
0. intake     → ask lo-fi vs. hi-fi · ask audience · default lo-fi if unspecified
1. scout      → pull source docs (Confluence, Jira, web, or files provided)
2. spec       → three-gate brief · [R]/[D]/[A]/[?] tagging · three-number evidence ratio
              ↳ proctor spec (optional) → checks tags, math, fidelity declaration, math-recount.md
3. critic     → pre-build scorecard (6 dimensions) + punch list
4. build      → working HTML · Apex Bridge --br-* tokens · light/dark · fidelity banner · Bradley rail · click-into council
              ↳ proctor build (optional) → checks rail, routing cards, seed data, readiness score
5. critic     → post-build re-score · delta table vs. pre-build
6. council    → 44-voice council (clusters from methods-library-matrix) · owensed · cross-talk required
              ↳ proctor council (optional) → checks 44 voices, synthesis slot, cross-talk
              ↳ proctor handoff (REQUIRED) → 47% rule gate · all stats grep-verified before Step 7
7. handoff    → Claude-droppable packet with grep-verified math, named tensions, calls
```

**Non-negotiable:** If the human says "just build it" — build it, then run critic and council, then append the rail. Order may compress. Steps do not drop.

### Honest math discipline — three numbers, not one

The [A]+[?] ratio in a brief mixes three different things. Reporting one inflated number is a recurring failure (the 47% rule). Always report three:

1. **World-claims ratio** — claims about the world (MSPs, market, users). This is the **lead number**.
2. **Test-plan readiness** — claims about the prototype's own test plan ("interview guide unwritten," "recruitment plan TBD"). Borderline.
3. **Inflated (with meta-TODOs)** — also include the brief's gap inventory ("[?] resilience model undefined"). This number counts the brief's transparency as deficit and is **misleading on its own**.

When the spec runs, save a `math-recount.md` showing the work: every tagged line categorized into one of the three buckets, with the three resulting ratios. The brief leads with world-claims. Do not paper over the split with one number.

### Apex Bridge — the default delivery vehicle

Unless the user explicitly opts out, all prototypes ship using the `--br-*` token contract from `prototypes/acp-v1/index.html`:

- Token surface is the contract: `--br-color-*`, `--br-font-*`, `--br-space-*`, `--br-radius-*`, `--br-shadow-*`, `--br-motion-*`.
- Light mode default + dark mode via `data-apx-mode="dark"` on `<html>`. Toggle button required.
- Typography: Inter (sans) + JetBrains Mono (mono).
- Shell: 56px topbar + 248px sidebar + main + 420px Bradley rail (responsive collapses below 1100px).
- Fidelity banner top of page: tier flag + checks + pip indicator + mode toggle.
- Web components (`apx-*`) stubbed where possible; vanilla HTML where not.

**Never** mix ad-hoc colors with `--br-*` tokens. If the prototype needs a one-off, add it to the token contract and document it. This is how light/dark parity stays free.

### Bradley rail — visibly distinct surface, not a tonal cousin

The rail must read as **a different surface** from the main app, not a slightly darker version of it. Defaults:
- Light mode rail bg: violet-tinted `#f0eafa` (not `--br-color-surface-sunken`).
- Dark mode rail bg: violet-tinted `#1a1230`.
- Left border: 4px solid `--br-color-brand-accent` (violet).
- Left inset shadow: `inset 6px 0 12px -8px rgba(109,40,217,0.35)` for a soft brand glow.
- Diagonal stripe overlay at 2-4% accent opacity to texture the surface without noise.

The rail is a council/reflection space, not a settings panel. If a reviewer cannot tell the rail apart from the app at a glance, the prototype has not done its job.

### Multi-page prototypes — the default for Tier 2 and above

Single-page prototypes are acceptable at Tier 1 (Concept). **Tier 2 (Direction) requires at minimum 3 pages** — usually Dashboard + one entity-list + one detail or audit page. Tier 3 requires the full nav structure.

Pattern (vanilla JS, no framework, from `prototypes/acp-headless/index.html`):
- Each page is a `<div class="page" id="page-NAME">` inside `.main-wrap`.
- Sidebar items carry `data-view="NAME"` and `onclick="navigate('NAME')"`.
- `navigate(name)` hides all `.page` elements, shows the target, toggles `.active` on sidebar, updates the topbar breadcrumb (`#tb-crumb`), scrolls main to top.
- One page is `display: block` on load; the rest are `display: none`.

**When to add a page based on council findings:** If a council voice flags a missing surface (JRNY: backstage-on-incident; NEEDS-SDT: override path; ECON: pricing surface), the prototype should add a page that *responds to that voice* and label the page accordingly. The page itself becomes a reply to the testimony — visible, clickable, navigable.

---

## Step 1: Scout (Research Agent)

**Goal:** Surface source material — never synthesize.

### What to collect

Based on the user's request, scout pulls from:
- **Confluence** (n-able.atlassian.net, spaces: ADL, PUT, ProdUX, AI) — positioning docs, product strategy, runbooks
- **Jira** — linked tickets, epics, user stories
- **Local files** — markdown, PDFs, or other docs the user provides
- **Web search** — domain research, competitors, design patterns (only if domain is thin)

### Scout invocation

Spawn the scout subagent with this prompt:

```
You are Scout. Find source material for [brief description of what we're prototyping].

Sources to check:
- Confluence space [X]: [specific pages or search terms]
- Jira project [X]: [ticket IDs or JQL query]
- Local files: [paths if provided]
- Web: [only if needed for domain grounding]

Return each source as a discrete item. Tag every claim with [CS:] confidence. Flag [WOBBLY] if the pool is thin or tradition narrow. No synthesis — surface ingredients only.

Save all source docs to: scout_input/
```

### Expected output

Directory `scout_input/` containing:
- `01-[source-name].md`
- `02-[source-name].md`
- etc.

Each file is raw material — quotes, screenshots, links — not analysis.

---

## Step 2: Spec (Brief Writer)

**Goal:** Structure the fragment into a three-gate brief with evidence tagging.

### Spec invocation

Spawn the spec subagent with this prompt:

```
You are Spec. Take the scout material and the user's intent, and produce a .brief.md file at: briefs/[project-name].brief.md

Use the three-gate structure:
- Gate 1 (Problem): Is it real and sourced? Tag every claim [R] [D] [A] [?]
- Gate 2 (Right thing): Does it advance the mission? What outcome moves?
- Gate 3 (Built right): Tested how? By whom? What counts as done?

YAML frontmatter (required):
---
feature: "[name]"
gate: [10/30/60/90 — fidelity percentage]
owner: "[user name]"
problem_statement: "[sourced, not assumed]"
okr_objective: "[what outcome moves]"
okr_key_result: "[measurable, with timeframe]"
counter_metric: "[what must not get worse]"
idea_score: [1-20 — fill after rubric]
evidence_sources: ["[source 1]", "[source 2]"]
status: "draft"
---

**Critical:** If more than 30% of tags are [A] or [?], flag this explicitly at the top of the brief. Do not proceed to build with an unverified spec unless the fidelity level (30/60/90) justifies it:
- 30% fidelity = schematic, high [A]+[?] expected
- 60% fidelity = design development, threshold tightens
- 90% fidelity = construction documents, must be <30% [A]+[?]

Name the fidelity level. Name the [A]+[?] percentage. Name whether this passes the gate.
```

### Expected output

File: `briefs/[project-name].brief.md`

Brief must include:
- YAML frontmatter (machine-readable)
- Prose sections for Gates 1, 2, 3
- Evidence tagging on every claim
- Explicit [A]+[?] percentage at top
- Fidelity level declaration (30/60/90)

---

## Step 3: Critic (Pre-Build Review)

**Goal:** Score the brief on 6 dimensions before building. Establish baseline.

### Critic invocation (pre-build)

Spawn the critic subagent:

```
You are Critic. Review the brief at: briefs/[project-name].brief.md

Score on these 6 dimensions (1-5 scale):
1. **Coherence** — Does the solution trace to the problem?
2. **Source-fidelity** — Are claims backed by [R]/[D], or mostly [A]?
3. **Demo-ability** — Can this be shown in a working prototype?
4. **Differentiation** — What makes this distinct from obvious alternatives?
5. **Risk** — What failure modes are named vs. ignored?
6. **Scope discipline** — Is this achievable in one prototype, or sprawling?

Return:
- Score table (6 dimensions × 1-5 scale)
- Punch list: PASS / FAIL / MISSING / RISK
- Specific gaps to address before build

Save to: critic-pass-1.md
```

### Expected output

File: `critic-pass-1.md` with:
- Score table
- Punch list
- Specific recommendations

---

## Step 4: Build (Execution Agent)

**Goal:** Produce working HTML prototype with Apex Bridge delivery, fidelity banner, and Bradley rail.

### Build invocation

Spawn the build subagent:

```
You are Build. Read the brief at briefs/[project-name].brief.md and produce a working HTML prototype.

**Design system (locked — do not deviate):**
--vermillion: #D8472B   (George)
--ultramarine: #1F3C96  (Bradley)
--ochre: #C99A2E        (Paul / Juliet warmth)
--violet: #5B3A7E       (Juliet)
--green-earth: #5E7A3F  (Tech / success)
--cadmium: #E8B93A      (warning)
--ink: #1a1612          (warm black)
--paper: #efe7d6        (aged paper)
--card: #f7f0df         (card background)
--grid: rgba(26,22,18,.055)

Typography: Space Mono (headers, UI) · Kalam (body, cursive notes)
Grid: 28px
Shadows: 6px 6px 0 var(--ink) — Bauhaus
**No rounded corners. Ever.**

**Apex Bridge delivery (default for all ACP prototypes):**
Render the prototype as an overlay that sits on top of an existing surface (e.g., N-central, Adlumin). The overlay should:
- Slide in from the right or appear as a modal
- Have a visible close/dismiss control
- Show the ACP brand (if relevant) but feel native to the host surface
- Use a semi-transparent backdrop if modal

**Fidelity banner (always include):**
Top-right corner chip:
- "Tier 1 · Concept" (exploring the idea)
- "Tier 2 · Direction" (testing the approach)
- "Tier 3 · Spec-ready" (ready for build planning)

**Bradley rail (always ships):**
Right-side rail containing:
- Readiness badge (Tier 1/2/3)
- Blurb: what this prototype is testing
- **What you nailed** / **What will hurt you** — dual block, specific
- Routed cards: Product · Design · Research · Eng

Each routed card:
- [Team] does: [specific action]
- Why now: [sourced claim, or [A] if assumed]
- If you ship without it: [realistic consequence]
[ROI]
  Business: [value — revenue, retention, efficiency — or "Unknown: gap"]
  User: [value — time, errors, cognitive load — or "Unknown: gap"]
  Unknown: [what we don't have data on — name it, don't fabricate]

**Ownership attribution (X% [User]):**
Every screen or section that has tool-generated content should display authorship as:
- `100% [User]` = written from scratch
- `70% [User]` = heavy edit on tool suggestion
- `0% [User]` = accepted verbatim

Display this at the bottom of each card or screen. Centers the human as author, not the tool as contaminant.

**For complete attribution guidance, including display patterns, calculation methods, and multi-author scenarios, read:** `references/ownership-attribution.md`

**Seed data rules:**
- All names, companies, customer data must be fictional
- Front page test: if you wouldn't be comfortable with it public, don't put it in
- No real tenant names, pricing, or customer lists

**PM-legible outputs (the prototype is for PMs, not researchers):**
- **Readiness score visible in the prototype** — not just in critic-pass.md. Show it in the fidelity banner or Bradley rail header: "Readiness: [N]/30 · Tier [X]"
- **Rail leads with the decision, not the methodology** — "What this means: [plain statement]" before citing any framework. PMs read the decision prompt, then drill into the voice if they want depth.
- **Council modal shows executive summary first** — readiness score + top tensions + synthesis slot. The 44 voices are below. The PM should get the read in 30 seconds; the depth is available if they want it.
- **Attribution slot labeled plainly** — "0% PM" (not "0% User") for PM audiences. Centers the human without jargon.

**Output:**
- File: prototypes/[project-name]/index.html
- Self-contained (inline styles, Google Fonts CDN for typography)
- Accessible (semantic HTML, sufficient contrast, keyboard navigable)

One sentence on approach, then the output. No preamble, no summary after.
```

### Expected output

Directory: `prototypes/[project-name]/`
- `index.html` — working prototype
- Any assets (images, icons) if needed

---

## Step 5: Critic (Post-Build Review)

**Goal:** Re-score the built prototype against the brief. Measure delta vs. pre-build.

### Critic invocation (post-build)

Spawn the critic subagent:

```
You are Critic. Review the built prototype at: prototypes/[project-name]/index.html

Check against:
- **Gate 1 (Problem):** Does the output address the sourced problem, or did it drift?
- **Gate 2 (Right thing):** Does it advance the stated OKR? Is the counter-metric protected?
- **Gate 3 (Built right):** Is it testable? Does it match the success metric?

**Design system compliance:**
- Colors match Itten palette?
- Typography: Space Mono + Kalam only?
- No rounded corners?
- Bauhaus shadow (6px 6px 0)?
- 28px grid respected?

**Bradley rail check:**
- Fidelity banner present?
- Routed cards complete (Product, Design, Research, Eng)?
- ROI fields honest (Unknown named, not fabricated)?

**Ownership attribution check:**
- X% [User] displayed where tool content was involved?

Re-score on the same 6 dimensions as pre-build:
1. Coherence
2. Source-fidelity
3. Demo-ability
4. Differentiation
5. Risk
6. Scope discipline

Return:
- New score table
- Delta table (pre-build vs. post-build)
- Punch list: PASS / FAIL / MISSING / RISK

Save to: critic-pass-2.md
```

### Expected output

File: `critic-pass-2.md` with:
- Re-scored dimensions
- Delta table showing improvement or regression
- Specific findings

---

## Step 6: Council (Expert Voices)

**Goal:** Run the **44-method council** from `briefs/methods-library-matrix.md` against the brief, grouped into 14 clusters. Each voice **owens itself** (self-testifies in a structured 6-field format). Voices **cross-talk** — they reference each other's data, not just speak past each other. Contradictions are preserved, not resolved.

**This is the special sauce.** Council without cross-talk is just five frameworks in parallel. Council with cross-talk is voices using each other's findings as data — where the innovative space actually lives.

### The 44 voices and their clusters

The full council lives in `briefs/methods-library-matrix.md`. Always read that file before running council. The voices are organized into 14 clusters:

**Charter cluster (produces the claim under examination):**
- **CHTR** — Owen Project Statement · Owen Defining Statements · Hard Mode force levels · Theory of Change · Moore positioning statement

**Scoring clusters (debate the claim):**
- **SIGN** — Peirce · Tavory/Timmermans · Owen Design Factor · Mode 1 semiotics · Mode 4 hypothesis · Cynefin · Lean Startup riskiest assumption
- **PORT** — Doblin 10 Types · Ansoff · Innovation Ambition
  - **Doblin Ten Types must be scored in two columns: brief-as-written, and brief + organizational latent capabilities.** A 4/20 score for a startup is a capability problem. The same 4/20 for an incumbent (N-able, etc.) is often an *activation* problem — dimensions like Product System, Channel, Service, Profit Model, Brand, Network may already be operating at the org but not surfaced in the brief. Score the latent uplift per dimension (0 / +1 / +2) and report the total range. Name the dimensions where being-the-incumbent is a **headwind** (e.g., internal Structure conflicts with the disruption shape). **Cut the lecture.** Lead with the table; explain only what the brief and the org actually have. Strategy-layer questions (SKU willingness, partner mobilization, category naming) are flagged as gates, not assumed.
- **FEAT** — Kano · Blue Ocean ERRC
- **POS** — Moore Crossing the Chasm · Christensen Disruptive Innovation
- **LAND** — Kumar Mode 2 landscape · Porter's Five Forces · Wardley Mapping
- **JOBS** — JTBD functional · JTBD emotional/social
- **NEEDS** — SDT (autonomy/competence/relatedness) · Maslow
- **JRNY** — Kumar Mode 3 ethnography · UX 5Es · Service Blueprint · Signal entropy
- **ECON** — Value-based pricing · Price corridor · Economic buyer
- **CNPT** — Kumar Mode 5 · Kumar Mode 6 · Owen Quality Pyramid

**Meta clusters (govern the rubric, not scored):**
- **EVID** — Owen RELATN · [CS:] confidence tags
- **META** — Owen Means/Ends · Owen Metaplanning · Owen two-step development · Owen Originator/Contributors · IDEO Design Thinking
- **RLZE** — Kumar Mode 7

**44 methods total. Tradition codes:** IIT · ABD · STRAT · INNOV · PSYCH · UX · MKT · PLAN · CMPLX · IDEO · ANT.

### Council scope per pipeline run — all 44 are always present

**All 44 voices are always in the council. Always.** This is the special sauce: clash detection. Run the brief through 44 analytical traditions and find where they contradict. Those contradictions are the risk. Grouped into 14 clusters; cross-talk draws from all of them. All voices in the room = maximum surface area for finding where the idea breaks before you build it.

**Tier controls depth of owensing, not presence:**

| Tier | Full 6-field owensing | Abbreviated (Sign + Cannot see only) |
|---|---|---|
| **Tier 1 (Concept)** | ≥6 voices across ≥4 clusters | Remaining 38 voices — abbreviated |
| **Tier 2 (Direction)** | ≥11 voices across ≥7 clusters | Remaining 33 voices — abbreviated |
| **Tier 3 (Spec-ready)** | All 44 voices | — none abbreviated |

**Full owensing:** all 6 fields (Sign · Hypothesis · Kill criterion · Force level · Evidence · Cannot see).

**Abbreviated owensing:** Sign (what this tradition notices in the brief) + Cannot see (the blind spot). Two fields only. Enough to contribute to cross-talk without the full analytical cost.

**Cluster always includes:** cluster code, tradition name, one-line orientation. Even an abbreviated voice is named and visible — it does not disappear.

**Cross-talk draws from all 44**, not just the full-owensed subset. An abbreviated voice's Sign can be picked up by another voice's Direct Response. Its Cannot see can be supplied by another voice. The abbreviated voices are *participants*, not spectators.

**Priority clusters for full owensing (always include):**
- **CHTR** — produces the claim under examination (required at all tiers)
- **SIGN** — reads the world against the charter (required at all tiers)
- Then: pick clusters most relevant to the brief's evidence type and risk surface

Within a cluster, pick the method whose epistemology fits the brief's evidence type (see methods-library-matrix RELATN scores).

### Owensing — the per-voice testimony format

Each voice runs Owen Structured Planning on its own contribution. The format is fixed:

```markdown
## [CODE] — [Voice name] / [Tradition]

**Sign** — What this voice observes in the brief or the source docs. Concrete, sourced, [CS:] tagged.

**Hypothesis** — The voice's reading of what the sign means. Argument, not assertion.

**Kill criterion** — What evidence would make this voice wrong. Falsifiable, testable.

**Force level** — Must · Should · Ought · Nice (Hard Mode taxonomy).

**Evidence** — [CS: VERIFIED / HIGH / MEDIUM / LOW / UNKNOWN] on each claim above.

**Cannot see** — The voice's epistemological blind spot. What is structurally outside this tradition's view. (e.g. *CHTR cannot see whether the team believes the Charter.*)
```

A voice that cannot fill all six fields with sourced material is signalling its own thinness — report it as `[WOBBLY · CODE]` rather than padding.

### Cross-talk — the special sauce

After all voices have owensed, write a **Cross-Talk** section. This is where voices respond to each other **using each other's data**. Three required forms:

1. **Direct response** — Voice B reads Voice A's Sign and offers a different Hypothesis on the same data.
   *Example: SIGN reads "3-4 tickets per incident." JOBS reads the same number and says "that's the analyst's job-to-be-done broken into 4 hires; the analyst is firing 3 existing solutions per incident."*

2. **Blind-spot supply** — Voice B fills in what Voice A's "Cannot see" field admitted. The brief is stronger when each voice's blind spot is named *by another voice's tradition*.
   *Example: CHTR cannot see whether the team believes the Charter. META supplies: Owen Originator/Contributors lens says we have 1 named Originator and 0 named Contributors — organizational consent is structurally absent.*

3. **Productive tension** — Two voices contradict on the same point with both readings sourced. Name the tension; do not resolve it. This is the innovative space.
   *Example: JOBS says "MSPs hiring to reduce doing." NEEDS says "MSPs hiring to retain felt competence." Both are sourced. The tension is the design decision Nicole owns.*

Cross-talk that just summarizes each voice is failure. Cross-talk must surface **new claims** that no single voice produced alone.

### Council invocation

Spawn the council subagent:

```
You are Council. Read briefs/[project-name].brief.md and briefs/methods-library-matrix.md.

**All 44 voices are always present. All owensing.**

Determine the fidelity tier from the brief's gate value:
- Tier 1 → ≥6 voices get full 6-field owensing; remaining voices get abbreviated (Sign + Cannot see)
- Tier 2 → ≥11 voices get full 6-field owensing; remaining voices get abbreviated
- Tier 3 → all 44 voices get full 6-field owensing

Group voices by their 14 clusters. Show each cluster as a header. Every voice — full or abbreviated — shows: cluster code, tradition name, one-line orientation, then its owensed fields.

For each full voice, owens it in the 6-field format:
  Sign · Hypothesis · Kill criterion · Force level · Evidence · Cannot see

For each abbreviated voice:
  Sign (what this tradition notices in the brief)
  Cannot see (the epistemological blind spot)

Always include CHTR and SIGN as full voices regardless of tier.

After all 44 voices have owensed, write a Cross-Talk section drawing from all voices (full and abbreviated). Three required moves:
1. Direct response (voice reads another voice's Sign, offers different Hypothesis)
2. Blind-spot supply (voice fills another voice's "Cannot see")
3. Productive tension (two voices contradict on a sourced point — name, don't resolve)

Cross-talk must produce claims no single voice produced alone. Abbreviated voices can participate in cross-talk — their Sign and Cannot see are active surfaces.

Tag [WOBBLY · CODE] when a full voice cannot fill all 6 fields with sourced material.

Save to: council-testimony.md
```

### Expected output

File: `council-testimony.md` with:
- One owensed block per voice (6 fields each)
- Voices grouped by cluster, cluster headers shown
- Cross-Talk section with all three move types
- Contradictions named in cross-talk, not resolved
- [CS:] tags inline on factual claims

### Click-into council cards — prototype requirement

When the council runs as part of the prototype pipeline, the **prototype HTML must include a clickable council surface.** This is non-negotiable for Tier 2 and above; optional but encouraged for Tier 1.

**Pattern (port from `prototypes/band-x-idea-chorus-v3.html` lines 1611–1849):**

- **"Hear the council" button** in the Bradley rail (`.rail-council-btn`). Opens the modal.
- **Council modal** (`.modal-overlay.council`) — full-screen overlay, max-width 1180px, max-height viewport, scrollable body.
- **Council head** — title + sub showing all 44 voices · 14 clusters · contradiction count.

**PM executive summary — required when audience is stakeholder/exec, optional for internal:**

The first thing in the council modal body (before cluster groups) is a summary block:

```
┌─ Council read ───────────────────────────────────────────────────────┐
│  Readiness: [score]/30   Tier: [1/2/3]   Tensions: [N named]         │
│                                                                       │
│  [3-sentence plain-language read of what the council found —          │
│   not a voice, not a framework. Beth's voice synthesizing the room.]  │
│                                                                       │
│  Top tensions (click to jump):                                        │
│  · [Voice A] vs [Voice B] on [the specific question]                  │
│  · [Voice C] on [what the brief cannot see]                           │
│  · [Cross-talk new claim that changes the picture]                    │
└──────────────────────────────────────────────────────────────────────┘
```

**The 3-sentence read is synthesis from the brief owner, not from the tools.** In a prototype, it ships as seed text labeled `[0% Claude — fill this in]`. The point is to create the slot, not fill it. Readiness score and tensions are machine-readable from the critic and cross-talk outputs — the synthesis sentence is the PM's job.
- **Council body** — grouped by cluster. Each cluster gets a section header (cluster code + name + tradition). Within each cluster: voice cards in a `.council-grid` with `repeat(auto-fill, minmax(240px, 1fr))`.
- **Full voice card** — collapsed: cluster code (mono), voice name, tradition, one-line summary, "CANNOT SEE · " preview. Force-level badge (must / should / ought / nice) top-right. Expanded: `grid-column: 1 / -1`, all 6 owensed fields in `voice-fields` grid (110px label, 1fr value).
- **Abbreviated voice card** — visually distinguished (lighter weight, no force-level badge or `--` badge). Shows: cluster code, voice name, tradition, Sign (brief), Cannot see (brief). No expand — abbreviated voices show their content in collapsed state. Clicking opens a note: "Abbreviated at this fidelity tier — see full owensing at Tier 3."
- **Cross-Talk surface** — separate section below all cluster groups, three blocks (Direct response · Blind-spot supply · Productive tension). Voice-attribution chips show cluster color regardless of whether voice was full or abbreviated.
- **Council head stat:** show tier-appropriate breakdown, e.g. "44 voices · 14 clusters · 6 full owensing · 38 abbreviated · 3 tensions".

**Cluster colors (locked):** match the cluster's tradition tone — SIGN/JRNY/POS in brand-info, PORT/JOBS in warning-amber, ECON in success-green, CHTR/FEAT/NEEDS in brand-accent-violet, LAND in danger-red-orange.

**Click behavior:**
- Click collapsed card → expands; other cards stay collapsed (only one expanded at a time, or allow multi-expand — designer choice).
- Click Collapse on expanded card → returns to grid.
- Click outside modal → closes modal.
- Esc key → closes modal.

**Self-contained JS** — vanilla, no framework. ~30 lines. Pattern:
```js
function openCouncil() { document.querySelector('.modal-overlay.council').classList.add('open'); }
function closeCouncil() { document.querySelector('.modal-overlay.council').classList.remove('open'); }
function toggleVoice(el) { /* expand/collapse */ }
```

**Cross-talk in the rail:** The Bradley rail must include a condensed Cross-Talk block (3-line preview) with a "see full council" link to the modal. The rail is the entry point; the modal is the depth.

---

## Proctor Gates

The proctor is a meta-level quality gate agent. It checks **process compliance** — did agents follow the honor code — not prototype quality (that's the critic's job).

**Four stages:**

| Stage | When | Required? | Saves to |
|-------|------|-----------|----------|
| `proctor spec` | After Step 2 | Optional | `proctor-pass-spec.md` |
| `proctor build` | After Step 4 | Optional | `proctor-pass-build.md` |
| `proctor council` | After Step 6 | Optional | `proctor-pass-council.md` |
| `proctor handoff` | Before Step 7 | **REQUIRED** | `proctor-pass-handoff.md` |

`proctor handoff` is the 47% rule gate. A handoff packet that hasn't passed proctor has not verified its own math. **Do not ship Step 7 without it.**

**What proctor checks (by stage):**

- **spec:** brief file exists · YAML frontmatter complete · [A]+[?] ratio stated · [CS:] tags present · fidelity tier named · three-number math · math-recount.md exists
- **build:** HTML exists · fidelity banner present · tier matches spec · Bradley rail present · all 4 routing cards · "what will hurt you" substantive · council entry point · seed data appears fictional
- **council:** council-testimony.md exists · all 14 cluster codes present · synthesis slot blank (`[0% Claude — fill this in]`) · cross-talk section with all 3 moves · at least one contradiction named · owensing present
- **handoff:** all required files exist · every stat grep-verified · ratios match math-recount.md · three named decisions with owners · synthesis still blank · tensions named

**Output format:** table of checks with ✓ PASS / ⚠ WARN / ✗ BLOCK + Verdict + "What proctor cannot see" block

**What proctor cannot see:** whether [CS:] tags are *accurate* (presence only), whether council testimony is *analytically sound* (structure only), whether ROI estimates are *honest* (non-blank only). Those are human review.

**Honor check block — self-reporting:** Every agent appends this at the end of its output:

```
### Honor check
- Steps completed: [list]
- Steps skipped: [none / list with reason]
- Cannot verify: [what this agent could not check without human review]
- Stats I produced: [every ratio, count, or number — proctor will grep-verify these]
```

Proctor reads honor check blocks before running its checklist. Declared skips escalate to WARN or BLOCK.

---

## Step 7: Handoff (Bradley Export)

**Goal:** Package everything into a Claude-droppable handoff packet.

### Handoff structure

Create directory: `briefs/handoffs/[recipient]-[project]-[date]/`

Contents:
- `CLAUDE.md` — orientation for any Claude session opening this folder
- `README.md` — reading order + what's testing in this packet
- `HANDOFF.md` — verified math, tensions named, three calls
- `NEXT-STEPS.md` — decisions only the human can make + pipeline re-run plan
- `[project]-rail.md` — Bradley rail as portable markdown
- `[project].brief.md` — three-gate brief, claim-tagged, verified ratio
- `[project].html` — working prototype
- `critic-pass-1.md` — pre-build scorecard
- `critic-pass-2.md` — post-build re-score + delta
- `council-testimony.md` — expert voices
- `scout/` — all source docs

### HANDOFF.md template

```markdown
# Handoff — [Project Name]

**To:** [Recipient name]
**From:** [Your name]
**Date:** [YYYY-MM-DD]
**Status:** [Concept / Direction / Spec-ready]

## What this is

[One paragraph: what the prototype tests, why now, what decisions it surfaces]

## What's verified

- [A]+[?] ratio: [X]% ([gate-appropriate or needs work?])
- Fidelity level: [30/60/90]%
- Critic scores (pre → post): [dimension deltas]
- Council voices: [# of contradictions flagged for decision]

## Tensions named

[List any contradictions from council, or gaps from critic, that require a human decision. Do not resolve them — route them to the recipient.]

Example:
> Jobs-to-Be-Done and Service Blueprint diverge on whether the AI handoff should be visible to the user. JTBD says visibility creates friction; Service Blueprint says invisibility erodes trust. This is a design decision, not a research gap.

## Three calls

1. **[Decision 1]** — [What needs deciding, by whom, by when]
2. **[Decision 2]** — [What needs deciding, by whom, by when]
3. **[Decision 3]** — [What needs deciding, by whom, by when]

## Next steps

See `NEXT-STEPS.md` for pipeline re-run plan and open questions.

---

**The 47% rule:** Any ratio, count, or stat in this handoff has been grep-verified before shipping. Fluency does not know its own math.
```

### Bradley invocation

Spawn the bradley subagent:

```
You are Bradley. Create the handoff packet for [project-name].

Read:
- briefs/[project-name].brief.md
- critic-pass-1.md
- critic-pass-2.md
- council-testimony.md
- prototypes/[project-name]/index.html

Produce the handoff packet at: briefs/handoffs/[recipient]-[project]-[YYYY-MM-DD]/

Contents:
- CLAUDE.md (orientation)
- README.md (reading order)
- HANDOFF.md (verified math, tensions, three calls)
- NEXT-STEPS.md (decisions + pipeline re-run plan)
- [project]-rail.md (Bradley rail as markdown)
- [project].brief.md (copy)
- [project].html (copy)
- critic-pass-1.md (copy)
- critic-pass-2.md (copy)
- council-testimony.md (copy)
- scout/ (copy entire directory)

**The 47% rule:** Verify every ratio, count, or stat before quoting it. Grep the brief. Count the claims. Fluency does not know its own math.

**Tensions:** If council voices contradict, name the contradiction explicitly in HANDOFF.md. Do not resolve it — route it to the recipient as a decision.

**Three calls:** Every handoff ends with three specific decisions the human must make. Not open-ended questions — actual calls with names and timelines.
```

### Expected output

Directory: `briefs/handoffs/[recipient]-[project]-[YYYY-MM-DD]/`

A complete, Claude-droppable packet that Nicole (or anyone) can open in a new session and immediately understand.

---

## Execution Notes

### If the user says "just build it"

Build it. Then run critic. Then run council. Then ship the rail. Order may compress (e.g., build and critic in parallel), but steps do not drop.

### If the brief is thin (high [A]+[?])

Name it. Proceed only if the fidelity level justifies it:
- 30% fidelity = high [A]+[?] expected, proceed
- 60% fidelity = tighten or flag risk
- 90% fidelity = do not proceed, spec is not ready

### If Apex Bridge is not relevant

Omit the overlay delivery pattern. But include the fidelity banner and Bradley rail — those always ship.

### If ownership attribution is unclear

Default to `0% [User]` for fully tool-generated content. If the user edited or rewrote something, ask them what percentage feels right. Never invent attribution.

### If council voices all agree

Flag it: "All 5 voices converged on [point]. This may signal the brief is statistically central or the voices were too similar. Consider adding a dissenting framework."

---

## Creating Test Cases

**When to offer:** After completing the user's first prototype, or when they ask to validate the pipeline in their environment.

### Interview Questions

Ask the user these questions to build relevant test cases:

1. **"What do you prototype most often?"**
   - Product features (dashboards, workflows, overlays)
   - Strategy presentations (decks, positioning)
   - Documentation (runbooks, handoff guides)

2. **"What fidelity levels do you work at?"**
   - Tier 1 (Concept) — High [A]+[?] expected, exploring ideas
   - Tier 2 (Direction) — Medium [A]+[?], testing approach
   - Tier 3 (Spec-ready) — Low [A]+[?] <30%, ready for build planning

3. **"Where do you pull source material from?"**
   - Confluence spaces (which ones? ADL, PUT, ProdUX, AI?)
   - Jira projects (which keys?)
   - Local files (what formats? .md, .pdf, .docx?)
   - Web research (for what domains?)

4. **"Do you want test cases that trigger council contradictions?"**
   - Yes — Include cases where JTBD vs. Service Blueprint might conflict, or Value Chain vs. Disruptive Innovation
   - No — Straightforward cases where frameworks align

5. **"What components matter most to you?"**
   - Apex Bridge delivery (overlay/modal patterns)
   - Ownership attribution (X% display)
   - Bradley rail (routed cards, ROI)
   - Council testimony (expert voices)
   - Handoff packets (Claude-droppable)

### Generate Test Cases

Based on their answers, create 2-3 test cases using this structure:

```json
{
  "test_name": "descriptive-name-matching-their-domain",
  "fidelity": "Tier 1 / Tier 2 / Tier 3",
  "prompt": "The exact prompt they would type — realistic, with context, file paths, casual language if appropriate",
  "expected_outputs": [
    "scout_input/ with [X] source docs from [specific Confluence pages or Jira tickets]",
    "briefs/[project].brief.md with [Y]% [A]+[?] ratio (appropriate for fidelity level)",
    "critic-pass-1.md with pre-build scores on 6 dimensions",
    "prototypes/[project]/index.html with [specific features: Apex Bridge, fidelity banner, Bradley rail]",
    "critic-pass-2.md with post-build scores + delta table",
    "council-testimony.md with 5 framework voices [+ contradictions if requested]",
    "briefs/handoffs/[recipient]-[project]-[date]/ with complete packet"
  ],
  "success_criteria": [
    "Pipeline completes all 7 steps",
    "Bradley rail includes all 4 routed cards (Product, Design, Research, Eng)",
    "Ownership attribution displays on [specific components]",
    "Council [does/doesn't] surface contradictions on [specific point]",
    "[A]+[?] ratio is [appropriate for fidelity level]",
    "Handoff packet includes attribution matrix"
  ],
  "notes": "[Any domain-specific context or edge cases to watch for]"
}
```

### Example Interview → Test Case Flow

**User answers:**
- "I prototype ACP features — Trust-Level Model, Value Ledger, Coworker handoffs"
- "Mostly Tier 2 (Direction) — testing approaches before committing to build"
- "Pull from Confluence space AI (Control Plane, Coworker, Runbooks docs)"
- "Yes, I want council contradictions — especially JTBD vs. Service Blueprint on transparency"
- "Apex Bridge and Bradley rail are critical. Attribution matters for Product cards."

**Generated test case:**

```json
{
  "test_name": "acp-trust-level-tier2-with-council-contradiction",
  "fidelity": "Tier 2",
  "prompt": "I need to prototype the ACP Trust-Level Model UI that shows MSPs how their confidence score is calculated. Pull from the Control Plane positioning doc in Confluence (space AI) and the Coworker definition doc. Show it as an overlay in N-central using Apex Bridge. This is directional fidelity (Tier 2) — we're testing whether surfacing the math behind the trust level actually builds confidence or just creates cognitive load.",
  "expected_outputs": [
    "scout_input/ with 2-3 docs from Confluence AI space (Control Plane, Coworker, possibly Runbooks)",
    "briefs/acp-trust-level.brief.md with 40-60% [A]+[?] ratio (appropriate for Tier 2)",
    "critic-pass-1.md with pre-build scores (expect 3-4 range on most dimensions)",
    "prototypes/acp-trust-level/index.html with Apex Bridge overlay, Tier 2 fidelity banner, Bradley rail",
    "critic-pass-2.md with post-build scores + delta (expect demo-ability to improve)",
    "council-testimony.md with JTBD and Service Blueprint potentially contradicting on math visibility",
    "briefs/handoffs/nicole-acp-trust-level-[date]/ with complete packet"
  ],
  "success_criteria": [
    "Pipeline completes all 7 steps",
    "Apex Bridge overlay pattern renders correctly (slide-in from right or modal)",
    "Bradley rail Product card shows 60-80% attribution with reasoning",
    "Council explicitly names JTBD vs. Service Blueprint tension on transparency",
    "[A]+[?] ratio is 40-60% (appropriate for Tier 2 / Direction)",
    "Handoff packet includes attribution matrix showing calculation for Product card"
  ],
  "notes": "This is Nicole's domain — she authored the source docs. Tone should be peer-to-peer, ACP-internal. Don't re-explain Coworkers/Runbooks to Nicole."
}
```

### Save and Validate

1. Save test cases to: `test-cases-[username].json`
2. Offer to run one test case now to validate the pipeline works in their environment
3. After successful run, package the skill with their test cases included

**For Nicole specifically:** Her test cases should focus on ACP features (Trust-Level, Value Ledger, Coworker handoffs), pull from Confluence space AI, use Apex Bridge delivery, and include council contradictions on transparency/visibility decisions.

---

## Success Criteria

A complete prototype pipeline run produces:

✅ `scout_input/` with source material
✅ `briefs/[project].brief.md` with [A]+[?] ratio declared
✅ `critic-pass-1.md` with pre-build scores
✅ `prototypes/[project]/index.html` with Apex Bridge (if relevant), fidelity banner, Bradley rail, ownership attribution
✅ `critic-pass-2.md` with post-build scores + delta table
✅ `council-testimony.md` with 5 voices, contradictions named
✅ `briefs/handoffs/[recipient]-[project]-[date]/` with complete Claude-droppable packet

If any of these are missing, the pipeline did not complete.

---

## Remember

- **Pipeline is always full.** Steps do not drop.
- **47% rule.** Verify every stat before quoting it.
- **Ownership attribution.** X% [User], not "AI contamination."
- **Unknown ROI named honestly.** Do not fabricate numbers to fill gaps.
- **Tensions routed, not resolved.** Council contradictions are decisions for the human.
- **Front page test.** If it wouldn't be comfortable public, it doesn't go in seed data.

---

**This is the Band Protocol. The prototyper holds the clipboard. This tool works for the person running it, not the vendor.**
