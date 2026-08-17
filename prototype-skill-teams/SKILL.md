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

### Question 3 — Any source docs?

> "Do you have source material I should ground this in?
> - **Confluence/Jira:** give me space keys, page titles, or ticket IDs (e.g. ADL, PUT, or a JQL).
> - **Local files:** paths to markdown/PDFs/notes.
> - **Nothing yet:** I'll scout the web only for domain grounding, and the brief will lean `[A]`/`[?]` — which lowers the readiness score honestly."

**Why this matters:** scout grounds Gate 1. With no sources, the problem statement is assumed, the `[A]`+`[?]` ratio climbs, and the readiness score should reflect that — do not paper over a sourceless brief with a confident score. If the user names sources, pass them to scout verbatim.

### Question 4 — Council depth: Fast Mode or Hard Mode?

> "How much council detail do you want?
> - **Fast Mode (default):** 7 key tensions + executive summary. Quick decision read (~2 min). Best for internal concepts and fast iteration.
> - **Hard Mode:** All 44 voices across 14 clusters + full cross-talk. Deep analytical read (~15-20 min). Best for strategy decisions, board-level briefs, or when you need to see *why* the tensions exist."

**Default: Fast Mode.** If the user says "just ideas" or doesn't specify, build Fast Mode and include a "⚡ Switch to Hard Mode" button in the council modal that explains what Hard Mode adds.

**What each mode includes:**

| Mode | Content | Build cost | When to use |
|------|---------|------------|-------------|
| **Fast** | Executive summary + 7 productive tensions (from cross-talk) + synthesis slot | ~50 lines modal HTML | Internal review, fast iteration, "should we pursue this?" |
| **Hard** | Executive summary + 44 voice cards (14 clusters, expand/collapse) + cross-talk section (direct response, blind-spot supply, productive tension) + synthesis slot | ~350 lines modal HTML | Strategic decisions, exec/board review, "what are the hidden risks?" |

**Hard Mode as opt-in upgrade:**
In the prototype, Fast Mode displays by default with a prominent "Hard Mode" toggle:
- Visual: ⚡ lightning bolt icon + "44 voices waiting"
- Framing: "See what the council *really* sees" or "Power-user mode: full analytical depth"
- On click: loads full 44-voice testimony with cluster breakdown
- Reversible: "Collapse to Fast Mode" returns to tensions-only view

**Why the split matters:** Hard Mode is 3–5x the token cost and reading time. Most internal concepts need tensions only (Fast Mode). Strategic decisions need to see the underlying voices and why they contradict (Hard Mode). Forcing everyone through 44 voices slows iteration; hiding them entirely loses analytical depth. The toggle surfaces the tradeoff.

### What lo-fi looks like (the default)

- Single page or single screen, full layout, real copy.
- Apex Bridge semantic tokens (`--bg-app`/`--brand`/`--alpha-accent` — see `.claude/agents/build.md`). 3-way mode toggle (light · dark · system).
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
4. build      → working HTML · Apex Bridge semantic tokens · light/dark · fidelity banner · Bradley rail · click-into council
              ↳ proctor build (optional) → checks rail, routing cards, seed data, readiness score
5. critic     → post-build re-score · delta table vs. pre-build
6. council    → 44-voice council (clusters from methods-library-matrix) · owensed · cross-talk required
              ↳ proctor council (optional) → checks 44 voices, synthesis slot, cross-talk
              ↳ proctor handoff (REQUIRED) → 47% rule gate · all stats grep-verified before Step 7
7. handoff    → Claude-droppable packet with grep-verified math, named tensions, calls
```

**Non-negotiable:** If the human says "just build it" — build it, then run critic and council, then append the rail. Order may compress. Steps do not drop.

### Subagents cannot write files — the parent writes (orchestration contract)

**An explicit `tools:` allowlist gets Write/Edit stripped on spawn — so the pipeline agents are Read-only by design.** scout, spec, critic, and council declare `tools: [Read, ...]`; build adds Bash. None can create or modify files. [CS: VERIFIED — three live spawns: critic with an explicit `[Read, Write, Edit, WebFetch]` list came back Read+WebFetch only (Write/Edit stripped), while Bradley and tech, which declare wildcard "All tools," both wrote files confirmed on disk.] The discriminator is the declaration style: a named allowlist loses Write/Edit; a wildcard keeps the full set.

We deliberately keep the pipeline agents on explicit Read-only lists (not wildcard) so the parent stays the single chokepoint that writes every artifact — Lucy holds the clipboard. Do not "fix" the no-write behavior by wildcarding their tools; that scatters writes and bypasses verification.

**Bradley is the named verification gate.** The parent persists each artifact, but the *check* is not a silent parent step — it is delegated to Bradley, who declares wildcard "All tools" and can therefore Read, grep, and write a log. After the parent writes the files for a step, spawn Bradley to: (a) confirm each `FILE:` path exists on disk, (b) run the 47% grep-gate on every ratio/count/stat the artifact claims, and (c) append one dated line per artifact to `prototypes/<project>/.bradley-ledger.md`. Bradley returns PASS or a HARD STOP with the specific failing claim. This makes "Lucy holds the clipboard" an actual agent with an audit trail, not an unnamed convention.

So **the orchestrator (this main thread) persists every artifact.** Each pipeline agent ends its response with one or more file blocks in this exact shape:

```
FILE: <absolute or repo-relative path>
​```<lang>
<complete file contents>
​```
```

After each subagent returns, before moving to the next step:

1. **Parse every `FILE:` block** in the returned message.
2. **Write each one** with the parent `Write` tool — the full fenced contents, verbatim.
3. **Spawn Bradley as the verification gate.** Hand him the list of paths just written and the stats the artifact claims. Bradley confirms each path exists, runs the 47% grep-gate on every ratio/count/stat, and appends a dated PASS/FAIL line per artifact to `prototypes/<project>/.bradley-ledger.md`. A block that was not written, a step that returned **no** `FILE:` block when one was expected, or any stat that fails grep-verification is a **hard stop** — Bradley says so, and the pipeline does not advance until it's re-run or fixed.

**Exception — build.** A full prototype (~600–1,650+ lines) is too heavy to round-trip through a `FILE:` block.

### Large build outputs — the extraction pattern (REQUIRED)

When build returns output >50KB, the harness persists it to a temp file with a message like:

```
Output too large (59.5KB). Full output saved to: /Users/.../.claude/projects/.../tool-results/toolu_01XXX.json
```

**DO NOT manually rewrite or truncate.** The orchestrator must:

1. **Read the persisted JSON file** (path in the tool result)
2. **Extract the FILE: block content programmatically** using Python or jq
3. **Write the complete HTML** to the target path

**Pattern (Python):**

```python
import json
with open('<persisted-path>', 'r') as f:
    data = json.load(f)
text = data[0]['text']
start = text.find('```html\n') + len('```html\n')
end = text.find('\n```', start)
html = text[start:end]
# Write html to target path
```

**Never write heredocs with "truncated for brevity" comments.** This breaks:
- JavaScript functions (modal open/close, theme toggle, alert selection)
- Routing cards (incomplete ROI blocks)
- Council modal (missing tensions)
- The fidelity banner itself

**The 1251-line fail:** First attempt wrote a manually truncated heredoc (1251 lines vs. 1611 expected). Buttons didn't work. Rail cards incomplete. Beth said FAIL. Second attempt extracted programmatically from persisted JSON — full 1611 lines, all interactions working. Beth said "this is right."

**Rule:** If build output is large, extract it programmatically. Never truncate.

### Honest math discipline — three numbers, not one

The [A]+[?] ratio in a brief mixes three different things. Reporting one inflated number is a recurring failure (the 47% rule). Always report three:

1. **World-claims ratio** — claims about the world (MSPs, market, users). This is the **lead number**.
2. **Test-plan readiness** — claims about the prototype's own test plan ("interview guide unwritten," "recruitment plan TBD"). Borderline.
3. **Inflated (with meta-TODOs)** — also include the brief's gap inventory ("[?] resilience model undefined"). This number counts the brief's transparency as deficit and is **misleading on its own**.

When the spec runs, save a `math-recount.md` showing the work: every tagged line categorized into one of the three buckets, with the three resulting ratios. The brief leads with world-claims. Do not paper over the split with one number.

### Apex Bridge — the default delivery vehicle

Unless the user explicitly opts out, all prototypes ship using the **Apex Bridge semantic token contract defined verbatim in `.claude/agents/build.md`** — the same `:root` set used by the reference prototypes `prototypes/alpha-race-three-tier-test.html` and `prototypes/band-x-idea-chorus-v3.html`. Target look: https://www.n-able.com/products/adlumin.

- Token surface is the contract: canvas (`--bg-app`/`--bg-surface`/`--bg-elevated`/`--bg-deep`), text (`--text-primary`…`--text-muted`), brand (`--brand`/`--brand-strong`/`--brand-soft`), status (`--critical`/`--high`/`--medium`/`--low`), council accent (`--alpha-accent`/`--alpha-soft`), distinct surfaces (`--topbar-bg`/`--topbar-border`/`--rail-bg`/`--rail-border`), shape (`--radius-sm/md/lg`), type (`--font-ui`/`--font-mono`).
- **Mode preference is 3-way: light · dark · system.** The 3-button toggle lives in the productbar (right area). The `system` option listens to `prefers-color-scheme`. Preference persists to localStorage (key: `apx-mode-pref`). Apply on load before first paint to avoid flash. Implementation reference: `prototypes/acp-v1/index.html` ModeManager IIFE (~lines 1701+).
- Typography: Inter (sans) + JetBrains Mono (mono), via Google Fonts CDN.
- Shell: ~56px topbar + ~248px sidebar + main + ~420px Bradley rail (responsive collapses below 1100px).
- Fidelity banner top of page: tier flag + checks + pip indicator + mode toggle.
- Web components (`apx-*`) stubbed where possible; vanilla HTML where not.

**Never** mix ad-hoc colors with the token set. If the prototype needs a one-off, add it to the `:root` contract and document it. This is how light/dark parity stays free. The Band's Bauhaus/Itten palette (vermillion, ochre, Space Mono + Kalam) is the Band's *own* brand identity and must NOT appear in a customer-facing prototype.

### Bradley rail — visibly distinct surface, not a tonal cousin

The rail must read as **a different surface** from the main app, not a slightly darker version of it. Defaults (tokens from `.claude/agents/build.md`):
- Rail bg: `var(--rail-bg)` — dark mode violet-tinted `#16112e`; light mode violet-tinted `#f0eafa`.
- Left border: 4px solid `var(--rail-border)` (`--alpha-accent` violet).
- Left inset shadow: `inset 6px 0 14px -10px rgba(167,139,250,0.5)` for a soft brand glow.
- Diagonal stripe overlay at 2-4% accent opacity to texture the surface without noise.
- Topbar is also its own surface: `var(--topbar-bg)` + 2px `var(--topbar-border)` bottom-border, staying dark + brand-edged in BOTH light and dark mode.

The rail is a council/reflection space, not a settings panel. If a reviewer cannot tell the rail apart from the app at a glance, the prototype has not done its job.

### Optional — Apex UI MCP server (live design-system context)

If the real Apex/Adlumin component library is exposed as an MCP server, wiring it into Claude Desktop lets the build pull live token + component definitions instead of the static `:root` block. Add to `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "apex-agent": {
      "command": "npx",
      "args": ["-y", "@n-able/apex-ui"]
    }
  }
}
```

**[CS: UNKNOWN — Beth must verify]** The server name `apex-agent` and the package `@n-able/apex-ui` are placeholders — confirm the real MCP server command and npm package with the n-able platform team before relying on this. Do not assume this package exists. Until verified, the static Apex token block in `.claude/agents/build.md` remains the source of truth, and the build does NOT depend on this server.

### Three-Tier Rail Pattern — for multi-gate prototypes

**When to use:** When prototype needs to serve three different audiences across the three gates:
- Gate 1 (Concept) → PM + leadership evaluating idea soundness
- Gate 2 (Direction) → PM + cross-functional making decisions to unlock build
- Gate 3 (Spec-ready) → Engineering + Design validating completeness

**Pattern:** Single prototype with T1/T2/T3 toggle that switches rail content. Each tier shows different rail structure for different audience.

**Reference implementation:** `prototypes/alpha-race-three-tier-test.html` (2026-05-28)

#### Topbar with tier toggle
- Single sticky topbar (44px min-height, z-index 4000)
- Brand + divider + **Tier toggle** (segmented control: T1 | T2 | T3) + spacer + Council button (T1 only) + Rail toggle + Theme toggle + Beta pill + User chip
- Tier toggle switches rail content non-cumulatively (T2 doesn't show T1 content)

#### T1 (Gate 1 - Concept) → Bradley scoring rail
**Audience:** PM + leadership  
**Question:** "Is this concept sound?"

Rail contains:
- **Risk score block** (pinned when rail collapses)
  - Score: "[N]/30" with state (NOT READY | PROMISING | READY)
  - Brief [A]+[?] percentage
  - Owensed reasoning (not computed)
- **Council button** → 44-voice modal
  - Executive summary: readiness score + top tensions + synthesis slot `[0% Claude — fill this in]`
  - 44 voice cards grouped into 14 clusters
  - Collapsed card: code, force badge, tradition, summary, blindspot preview
  - Click to expand: full 6-field owensing (Sign, Hypothesis, Kill criterion, Force level, Evidence, Cannot see)
  - Only one expanded at a time
  - Cross-talk section: Direct Response, Blind-spot Supply, Productive Tension
- **Section "What you nailed"** (default collapsed) — 5 specific wins
- **Section "What will hurt you"** (default collapsed) — 7 risks with consequences
- **Section "Reasoning"** (default collapsed) — 3 tabs:
  - Oregon Trail: readiness state
  - Monte Carlo: 4-quadrant outcomes
  - Charter Traversal: 5-rung chain from brief to prototype

#### T2 (Gate 2 - Direction) → PM Action Dashboard
**Audience:** PM + cross-functional leads  
**Question:** "What decisions unlock the build?"

Rail contains:
- **Decision cards** (number varies by project)
  - Numbered anchor (matches hotspot on prototype)
  - Card title: the decision question
  - Meet with: [named people with roles]
  - Why this meeting: [sourced reasoning or [A]]
  - Sample items to address: [bulleted questions]
  - Decision you own coming out: [what gets locked]
  - ROI block: Business / User / Unknown (honest, not fabricated)
- **Footer:** source tickets + updated timestamp
- **Hotspot + leader-line pattern** (Review Mode toggle)

#### T3 (Gate 3 - Spec-ready) → Engineering + Design QA rail
**Audience:** Engineering + Design  
**Question:** "Is this ready to build correctly?"

Rail contains:
- **Section "Engineering handoff"** (default collapsed)
  - schema.json contract
  - API endpoints with methods
  - Component specs (props/events if using design system)
  - Data binding requirements
  - Dependencies (services, libraries)
- **Section "Design QA checklist"** (default collapsed)
  - ✓/~/✕ Usability tested (with whom, when, what learned)
  - ✓/~/✕ Accessibility baseline (WCAG AA, keyboard nav, screen reader)
  - ✓/~/✕ Content reviewed (voice, terminology, microcopy)
  - ✓/~/✕ Visual design complete (not approximations)
  - ✓/~/✕ Responsive breakpoints defined
  - ✓/~/✕ Error states documented
- **Section "User acceptance criteria"** (default collapsed)
  - Gate 1 trace: problem solved (sourced claim)
  - Gate 2 decisions: all T2 decisions answered
  - Details correct: design + eng sign-off required

#### Rail behavior
- Slides away to 56px when toggle clicked (body.rail-collapsed)
- Risk score block (T1 only) stays pinned when collapsed
- Collapsible sections: `.rail-section` with chevron, default collapsed
- Council modal: 44 voices, 14 clusters, expand/collapse per voice, cross-talk section

---

### Multi-page prototypes — the default for Tier 2 and above

Single-page prototypes are acceptable at Tier 1 (Concept). **Tier 2 (Direction) requires at minimum 3 pages** — usually Dashboard + one entity-list + one detail or audit page. Tier 3 requires the full nav structure.

Two patterns, picked by tier:

**Lo-fi multi-page (show/hide pattern):**
- Each page is a `<div class="page" id="page-NAME">` inside `.main-wrap`.
- Sidebar items carry `data-view="NAME"` and `onclick="navigate('NAME')"`.
- `navigate(name)` hides all `.page` elements, shows the target, toggles `.active` on sidebar, updates the topbar breadcrumb (`#tb-crumb`), scrolls main to top.
- One page is `display: block` on load; rest are `display: none`.
- Reference: `prototypes/acp-headless/index.html`.

**Hi-fi multi-page (page-as-function pattern):**
- Each page is a function: `views.dashboard = () => DOM`.
- `setView(name)` calls the function, swaps `main.innerHTML`, updates sidebar via `apx-sidebar.setActive()`, rerenders productbar crumbs.
- Only one page in DOM at a time. Lighter, composes better with components.
- Cross-page links use `data-go="viewname"` attribute + delegated click handler:
  ```js
  wrap.querySelectorAll('[data-go]').forEach(a => 
    a.addEventListener('click', e => { 
      e.preventDefault(); 
      setView(a.dataset.go); 
    })
  );
  ```
- Reference: `prototypes/acp-v1/index.html` `views.*` functions and `setView()`.

The lo-fi pattern is fine for a single-decision concept. The hi-fi pattern scales to dozens of pages and dynamic state without bloating the DOM.

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

# domain_model — nouns & verbs. This is the machine-readable spine of spec-driven design.
# Every UI surface the build produces must trace to an entity or service here.
domain_model:
  entities:        # nouns WITH identity (a thing the system tracks over time)
    - name: "[Noun]"
      identity: "[what makes one instance distinct from another]"
      attributes: ["[field]", "[field]"]
      evidence: "[R]|[D]|[A]|[?]"
  value_objects:   # nouns WITHOUT identity (described, not tracked — e.g. a score, a range)
    - name: "[Noun]"
      describes: "[which entity it belongs to]"
      evidence: "[R]|[D]|[A]|[?]"
  services:         # verbs that belong to no single noun (an action the system performs)
    - name: "[Verb phrase]"
      acts_on: ["[entity]", "[entity]"]
      trigger: "[who/what invokes it]"
      evidence: "[R]|[D]|[A]|[?]"
  ubiquitous_language:  # the shared terms — same word in brief, UI, and code. No synonyms.
    - term: "[word]"
      means: "[one-line definition the whole team agrees on]"
---

### Nouns & verbs — extract before prose

Before writing the gate prose, read the scout material and the user's fragment and extract the **domain model** into the frontmatter above. This is the spec-driven design step (Nicole's "make the idea machine-readable"; see https://open.zerovector.design/learn/curriculum/01-foundation/nouns-and-verbs). It follows Domain-Driven Design:

- **Entities** = nouns with identity. The system tracks them over time; two instances with identical attributes are still different things (a `Race`, a `Tenant`, an `Alert`).
- **Value objects** = nouns without identity. Described, not tracked — interchangeable if their values match (a `Score`, a `TimeWindow`, a `Severity`).
- **Services** = verbs that belong to no single noun. An action the system performs across entities (`ScoreReadiness`, `RouteToReviewer`, `RunCouncil`).
- **Ubiquitous language** = the shared vocabulary. The same word in the brief, the UI label, and the eventual code. No synonyms — if the brief says "race" and the UI says "competition," that is a bug.

**Tag every entity/object/service with `[R]/[D]/[A]/[?]`** — an entity that exists only because we assume it does is an `[A]`, and it counts in the readiness math like any other claim. The domain model is not free of evidence discipline.

**The build consumes this.** Every page, table, card, and CTA the build produces must trace back to an entity or a service in this block. If the build invents a surface with no entity behind it, that is drift — the critic flags it against the domain model.

**Critical:** If more than 30% of tags are [A] or [?], flag this explicitly at the top of the brief. Do not proceed to build with an unverified spec unless the fidelity level (30/60/90) justifies it:
- 30% fidelity = schematic, high [A]+[?] expected
- 60% fidelity = design development, threshold tightens
- 90% fidelity = construction documents, must be <30% [A]+[?]

Name the fidelity level. Name the [A]+[?] percentage. Name whether this passes the gate.
```

### Expected output

File: `briefs/[project-name].brief.md`

Brief must include:
- YAML frontmatter (machine-readable), including the `domain_model` nouns-and-verbs block
- Prose sections for Gates 1, 2, 3
- Evidence tagging on every claim — including every entity, value object, and service
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

**Trace every surface to the domain model.** The brief's `domain_model` frontmatter (nouns & verbs) is the spine. Every page, table, card, and CTA you build must represent an entity, value object, or service from that block, using its exact ubiquitous-language term as the label. Do not invent a surface with no entity behind it — that is drift, and the critic checks for it. If the domain model is missing a noun the UI clearly needs, stop and say so rather than inventing it.

**Design system (locked — do not deviate): APEX BRIDGE.**
Use the Apex Bridge token contract in your own agent definition (`.claude/agents/build.md`) — dark-navy Adlumin language, Inter + JetBrains Mono, rounded corners, Adlumin-blue brand (#3b82f6), violet council accent (#a78bfa). The topbar and the Bradley rail must each be a VISIBLY DISTINCT surface (`--topbar-bg` with a brand bottom-border; `--rail-bg` violet-tinted with a 4px violet left border + inset glow).
Target look: https://www.n-able.com/products/adlumin and the reference prototypes `prototypes/alpha-race-three-tier-test.html` + `prototypes/band-x-idea-chorus-v3.html` — copy their `:root` token set verbatim.
**Do NOT use the Band's Bauhaus/Itten palette (vermillion, ochre, Space Mono, Kalam, hard offset shadows, no-rounded-corners). That is the Band's own brand identity, never a customer-facing prototype.**

**Apex Bridge delivery (default for all ACP prototypes):**
Render the prototype as an overlay that sits on top of an existing surface (e.g., N-central, Adlumin). The overlay should:
- Slide in from the right or appear as a modal
- Have a visible close/dismiss control
- Show the ACP brand (if relevant) but feel native to the host surface
- Use a semi-transparent backdrop if modal

### Hi-fi component library — the apx-* contract

When the user has chosen hi-fi, the prototype ships with the following Apex Bridge custom elements. Each is a Web Component (Custom Element + Shadow DOM) defined once and reused across pages.

| Component | Purpose | Key API |
|---|---|---|
| `<apx-sidebar>` | Primary navigation, grouped sections | event: `apx-navigate` ({view}); method: `setActive(view)` |
| `<apx-productbar>` | 56px topbar with crumbs + actions | slots: `crumbs`, `actions` |
| `<apx-card>` | Default container with header bar | slots: `header-title`, `header-aside`, (default) |
| `<apx-badge>` | Status/tag chip | attr: `variant` (brand · success · warning · danger · info · neutral), `dot` |
| `<apx-table>` | Token-styled data table wrapper | slot per cell; `tr.clickable` for interactive rows |
| `<apx-loader>` | Loading state | attr: `size` (sm · md · lg); slot for label |

Reference implementation: `prototypes/acp-v1/index.html` lines 1300-1695.

**Extraction strategy:** Components currently live inline in acp-v1. Hi-fi prototypes copy the definitions until three or more prototypes use the same component set — then extract to `prototypes/_components/apx-bridge.js`. The skill documents the contract; prototypes can adapt as needed.

### ICON catalog

Hi-fi prototypes include an inline SVG icon catalog declared once:

```js
const ICON = {
  dashboard: '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">...</svg>',
  // ... 25+ icons
};
```

**Rules:**
- All icons use `stroke="currentColor"` so they pick up text color from CSS cascade.
- Sizes: 16px default, 14px in dense rows, 12px in tile-meta or status indicators.
- Stroke width: 2px default, 2.2-2.4px for emphasized icons (check, x, pause).
- Source family: lucide.dev (matches the 2px-stroke, rounded line-cap aesthetic).

Catalog reference (acp-v1 set): `dashboard · coworkers · executions · runbooks · experts · mcp · metering · ledger · settings · sun · moon · monitor · search · bell · chevR · back · close · check · x · pause · warning · plus · toolWrench · cpu · terminal · shield · branch`.

Lo-fi prototypes can use Unicode glyphs (⊕ ⊖ ◑ ◐ ●) or a smaller subset. Hi-fi requires the catalog.

### Wizard pattern (hi-fi only)

When a hi-fi prototype needs to expose a multi-decision creation flow (new Coworker, new runbook, new tenant onboarding), use the canonical 5-pane wizard pattern:

- Stepper at top: numbered + named steps (e.g., `① Identity · ② Experts · ③ Runbook · ④ Tools · ⑤ Trust & Trigger`).
- States: `active` (current), `done` (passed), `pending` (future) — visually distinct (color + filled circle vs. outline).
- One `.wizard-pane` per step, only the active pane visible.
- Footer: `Back` · `Next` · `Create` (commit button on last step).
- On commit: close modal, route the user to the detail page of the thing just created.

**Anti-pattern:** putting the wizard behind a `+ New` button buried in a corner. The wizard is the front door for the flow it represents. If the prototype's load-bearing capability is creating new Coworkers, the dashboard empty state should *invite* a wizard launch, not list zero rows.

Reference: `prototypes/acp-v1/index.html` `openCoworkerWizard()` (~line 2244).

### Modal management

Hi-fi prototypes use a centralized modal control:

```js
function openModal(content) { /* mounts into .modal-mount, adds .open */ }
function closeModal()      { /* removes .open */ }
```

- Mount point: a single `.modal-mount` div positioned absolute, full-screen overlay.
- Variants: default (540px wide), `.modal.wide` (720px), warning state (destructive actions).
- Header / body / footer split with subtle dividers.
- ESC closes. Backdrop click closes.

**Use modals for:** wizards, editors (runbook editor, MCP server config), activation flows, confirmation dialogs. **Do not use modals for:** the council surface (it has its own larger modal pattern; see Step 6).

Reference patterns in acp-v1: Coworker wizard (5-step), Runbook editor, MCP server modal, Activation modal (with warning state).

### Micro-charts

Hi-fi prototypes ship inline SVG micro-charts via pure-function utilities — no library.

```js
function miniBarChart(values, labels) { /* returns SVG string */ }
function miniSparkline(values, opts) { /* returns SVG string */ }
function miniDonut(segments, opts)   { /* returns SVG string */ }
```

**Rules:**
- All charts use tokens (`var(--brand)`, `var(--alpha-accent)`, etc.) for fill and stroke so dark mode is free.
- Values + labels are arrays; opts is an object for size/padding/colors.
- Charts are *inline strings* injected via innerHTML, not framework components. They never reach for D3 or Chart.js — those are overkill for trend display.
- Use cases: Value Ledger trend (last 6 months), per-Coworker execution sparkline, trust distribution donut.

Reference: `prototypes/acp-v1/index.html` `miniBarChart` (~line 2036).

**Fidelity banner (always include at TOP of page):**
**REQUIRED:** Sticky banner at the top of the content area (first element inside `.content-area`), marking the prototype as Tier 1/2/3. Not optional. Not just in the rail.

**Visual requirements:**
- Sticky positioning (stays visible when scrolling)
- Violet accent border (2px `--alpha-accent`)
- Elevated background (`--bg-elevated`)
- Tier label: "Tier 1 · Concept" / "Tier 2 · Direction" / "Tier 3 · Spec-ready"
- **Pip indicator:** 3 circles, filled per tier (Tier 1 → 1 filled, Tier 2 → 2, Tier 3 → 3)
- **Check matrix:** 6 items showing prototype completeness, each marked `✓` (yes), `~` (partial), or `×` (no)

**Lo-fi check matrix (6 items):**
- ✓ Real copy (not lorem ipsum)
- ~ Seed data (fictional, not production)
- ✓ Core interaction (primary clicks work)
- × Full workflow (multi-page/wizard not built)
- ✓ Visual hierarchy (clear information structure)
- × Production ready (not deployable)

**Hi-fi check matrix (6 items):**
- ✓/× Tokens from Apex source
- ✓/× `apx-*` components present
- ✓/× schema.json contract
- ✓/× A11y baseline (WCAG AA, keyboard nav, screen reader)
- ✓/× Production data binding
- ✓/× Dark mode parity

**Why this matters:** Beth must see at a glance that this is a prototype, what tier, and what's incomplete. Without the top banner, the prototype looks like production UI and creates false expectations.

**The 1251-line fail:** A prototype shipped without the top fidelity banner. Beth said "FAIL — there's a prototyping bar that's not there." The banner in the rail is not enough. The top banner is the gate.

Naming the gaps visibly is part of the protocol — fidelity is a claim, not a feeling.

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

**Domain-model fidelity (nouns & verbs):**
- Does every UI surface (page, table, card, CTA) trace to an entity, value object, or service in the brief's `domain_model`? List any surface that does NOT — that is drift.
- Are UI labels the exact `ubiquitous_language` terms, or did synonyms creep in (brief says "race," UI says "competition")?
- Are there entities/services in the model with NO surface built for them? Name the gaps.

**Design system compliance (Apex Bridge — see `.claude/agents/build.md` token block):**
- Uses the Apex token set (`--bg-app`/`--brand`/`--alpha-accent`), NOT the Band's Bauhaus/Itten palette?
- Typography: Inter (UI/body) + JetBrains Mono (headers/labels/metrics)?
- Rounded corners via `--radius-*` (4/6/8px)?
- Soft shadows only — no Bauhaus `6px 6px 0` hard offset?
- Topbar a distinct surface (`--topbar-bg` + 2px brand bottom-border, dark in both modes)?
- Bradley rail a distinct violet-tinted surface (`--rail-bg` + 4px `--rail-border` left + inset glow)?
- 3-way mode toggle (light · dark · system)?

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

**Recommend it; don't auto-run it.** After the post-build critic, surface the council as the strong next step, not a silent automatic one — the human chooses to spend it:

> "Recommend sending this idea to the council — 44 analytical traditions read the same brief and surface where they disagree. Those disagreements are your risk surface before you commit build resources. Want me to run it?"

This keeps the council a deliberate act of clash-detection, not pipeline noise. If the human declines, the pipeline still proceeds to handoff — but the handoff names that the council was skipped.

**Model:** Council runs on **Sonnet by default** (per CLAUDE.md §15). Escalate to **Opus** when the brief carries real strategic stakes — Tier 3 spec-ready runs, architecture-level tradeoffs, or a board/exec audience — because cross-talk quality (voices using each other's data to surface *new* claims) is where Opus earns its cost. Tier 1 concept screens are fine on Sonnet. State the model choice when you spawn council.

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
  - **build (hi-fi addl):** ICON catalog present (`const ICON = {`) · `<apx-sidebar>` present · ModeManager 3-way (`'system'` in mode code) · fidelity banner has check matrix (6 items with × / ~ / ✓) · at least one interactive flow (wizard or modal editor)
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

---

## Current state & open punchlist (as of 2026-05-29)

Time-bound session state, not pipeline doctrine. The next Claude inherits this. Delete items as they close.

**Just landed (done — do not redo):**
- **Parent-writes contract.** All 5 pipeline agents (scout, spec, critic, council, build) are Read-only by design and end output with `FILE:`-block(s); the orchestrator writes them. Frontmatter cleaned to match (no misleading Write/Edit).
- **Verified discriminator.** An explicit `tools:` allowlist gets Write/Edit STRIPPED on spawn; wildcard "All tools" keeps the full set. [CS: VERIFIED — live spawns: critic (explicit list) lost Write/Edit; Bradley + tech (wildcard) wrote files confirmed on disk.] Do not re-litigate this.
- **Bradley = named verification gate (Option C-as-verifier).** Parent writes each artifact, then spawns Bradley to confirm paths exist, run the 47% grep-gate on every stat, and log PASS/HARD STOP to `prototypes/<project>/.bradley-ledger.md`. See `.claude/agents/bradley.md` "Pipeline verification gate" + the orchestration-contract section above.

**Open (next session's work):**
1. **Browser-verify** `prototypes/alpha-race-lo-fi/index.html` clickability + the fidelity-banner-to-top-rail fix. Preview was sandbox-denied last session — retry via preview_* tools.
2. **Finish Alpha RACE pipeline:** full 44-voice council pass (14 clusters, cross-talk, synthesis slot stays `[0% Claude — fill this in]`), post-build critic re-score (pass-2 + delta), then Step 7 handoff packet through the proctor-handoff 47% gate.
3. **Beth owns:** write the council synthesis; resolve four named tensions (JOBS×SDT, SIGN×JRNY, PORTER×POSITIONING, JOBS×CHALLENGER).
4. **Verify** the real MCP package name (`npx @n-able/apex-ui`?) before any build relies on apx-* web components.

**Standing context:** this is Beth role-playing a PM to stress-test the skill and fix bugs as she finds them. Audience for the current round = stakeholder/exec.
