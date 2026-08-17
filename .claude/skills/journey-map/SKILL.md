---
name: journey-map
description: >
  Produce experience maps and service blueprints as a repeatable capability — two related but
  distinct artifact types, not one. Grounded in Adaptive Path's canonical Service Blueprinting
  method and Patrick Whitney/IIT ID's Four Lenses context-brief canvas. Outputs to FigJam, a
  precise HTML/SVG worksheet, or native Figma once Dev Mode MCP / Desktop Bridge is available.
---

# journey-map

Two artifact types live here. Don't collapse them — they answer different questions.

- **Experience map** — broad, multi-actor, thinking-feeling-oriented. Answers "what is this like
  for the people involved." A PICNIC-style fillable grid is the canonical template shape.
- **Service blueprint** — narrower, operational, frontstage/backstage. Answers "what has to
  happen, by whom, for this to work." Canonical structure below is locked — don't invent your own.

An experience map is often the frontstage half that a service blueprint's backstage extends. They
compose; they are not the same document. **Both trace to the same root** — Beth's PICNIC template
is itself derived from Adaptive Path's experience-mapping/service-blueprinting practice, not a
separate, unrelated framework that happens to be filed alongside it (confirmed by Beth,
2026-07-29). Treat the two artifact types as siblings under one lineage, not two conventions from
different schools that got bundled here for convenience.

## When invoked
- "Build an experience map for X" / "map the journey" / "make a service blueprint"
- Beth references PICNIC, 5Es, Four Lenses, or Adaptive Path canon by name

## Service blueprint — canonical structure (locked)

Source: "A Guide to Service Blueprinting," written by Nick Remis and the Adaptive Path team at
Capital One (First Edition, November 2016). **Corrected 2026-07-29** — an earlier version of this
skill misattributed the guide to "Erik Flowers / Megan Erin Miller" (a different, real service-
design source) and imported a row from that other source, "Line of Internal Interaction," which
does **not** appear anywhere in Beth's actual canon PDF. Verified page-by-page against the real
document (`file_26e487aea69af163911dc4f6e6b8abd4.pdf`, 29 pages via PyMuPDF) — do not reintroduce
that row. Also corrected earlier: "Map 1, Map 3, Map 5" as row-label paraphrases was an even
earlier mistake, already fixed 2026-07-28.

Rows, top to bottom (five swim lanes, two lines — not seven rows, not six):
1. **Customer Actions** — physical/mental actions the customer performs, forming the backbone of
   the blueprint. Label with the customer's name if there are multiple customer types.
2. **Touchpoints** — its own swim lane, not an annotation on a line. The medium of exchange
   between customer and service — digital, analog, or intangible (conversation, wayfinding,
   technology). One touchpoint per service moment where possible, to avoid hiding complexity.
3. — **Line of Interaction** — divides what the customer can and cannot directly interact with.
4. **Staff Actions — Frontstage** — labeled with the specific role (not "staff") performing each.
5. — **Line of Visibility** — the frontstage/backstage division. What you choose to show the
   customer, and when, is a design decision with real consequences, not a neutral fact.
6. **Staff Actions — Backstage** — same building block as row 4 (Staff Actions), placed below the
   Line of Visibility instead of above it — not a conceptually separate element.
7. **Support Processes** — tools/systems/internal processes/training that make the staff actions
   possible. Split into its own multiple swim lanes if the service is complex enough to need it.

**Columns** are **Service Moments** (vertical slices in time) grouped into **Experience Stages**
(may connect to a journey map). Map backstage work at the moment it *starts*, even if it doesn't
cross the Line of Visibility until later (a server preps your table before you arrive). Mark
**Time** explicitly where the experience spans different scales (a week vs. a minute) — easy to
lose in a static grid. Add **Flow Lines** (arrows) once elements are placed, to show what
triggers what — often done solo as a follow-up pass after a group session, then shared back.

### Levels of fidelity (three, named in the source)
1. **Sticky notes** — early-stage, collaborative, easy to refine.
2. **Spreadsheets** — shareable, good for remote/async fine-tuning of language and labels.
3. **Printed posters** — polished artifact once near the end of iteration; color-code rows, mark
   the Line of Visibility, show flow, name the experience stages.
Match fidelity to how settled your understanding is, not to how far along the project is.

### The 6-step build process (from the same source)
1. **Prepare supplies** — gather existing research, don't start blank.
2. **Gather partners** — blueprinting is collaborative; a lone author misses backstage detail.
3. **Take a first pass** — Customer Actions row first. It's the backbone everything else hangs off.
4. **Fill in** — Lines of Interaction/Visibility, Support Processes, touchpoints.
5. **Direct attention** — flag the critical/high-value/high-risk moments; not every cell is equally
   important.
6. **Share it** — a blueprint that stays in one person's file didn't ship.

### Fidelity levels
Match zoom to the question being asked — a full-detail blueprint of a simple service wastes
effort; a low-fidelity blueprint of a complex, high-risk service under-serves it. Pick the level,
say which one out loud.

## Experience map — canonical structure (the PICNIC-style grid)

Fillable worksheet, not a flowchart — build it as a real grid (HTML/SVG via `visualize`, not
Mermaid; Mermaid can't do precise grid layout).

**Confirmed against Beth's actual reference image** ("Me & My P.I.C.N.I.C.," 2026-07-29) — exact
spec, don't drift from it:
- **Icon legend, top-left:** ★ Important (outline star) · ☺ Delight (yellow smiley) · ⛔ Painpoint
  (red octagon).
- **Header, top-right of the grid:** title ("Me & My P.I.C.N.I.C."), "Brief Description of
  Situation" line, a "Name:" field in the far top-right corner.
- **Columns — exactly four, these labels, in this order:** Beginning · During · End ·
  Between/Follow-up — rendered as chevron/arrow shapes, not plain boxes. Uneven width is correct:
  "During" is the widest column in the reference (it carries the most texture); Beginning/End/
  Between are narrower and roughly equal.
- **Row bands, top to bottom, with the reference's own color coding:**
  1. **Actions** — grey — "What did you do? What did your PICNIC do? Map the interaction."
  2. *(the column-label chevron row sits here, between Actions and Processes)*
  3. **Processes, Tools, Tech** — light purple/lavender — what's mediating the interaction.
  4. **Thinking & Feeling** — light blue — "Quote or thought," internal state, verbatim where
     possible.
  5. **Stressors** — orange — what's actively working against the person. Sits directly under
     Thinking & Feeling with no header gap, same column grid.
  6. **Opportunities** — pale yellow — "What would make it better," where the map points to a
     design move.
- Row-label chips repeat down the left margin in each row's own color, matching the grid cells.

### 5Es (a lighter, phase-only journey map)
Entice → Enter → Engage → Exit → Extend. Use when a full PICNIC grid is overkill and you just need
the five-phase skeleton — e.g., as the column headers for a faster first pass, or when the map's
job is orientation, not detailed synthesis.

## Four Lenses (Whitney, IIT Institute of Design) — the complementary context-brief canvas

Not a journey map, but sits next to one. Four quadrants, fill per offering/persona, not once for
the whole project:
- **Activities** (Porter) — "How do they do it?" 4–7 key activities, user side + system side.
- **POEMS** — "What is it?" People, Objects, Environment, Message, Systems/Services.
- **Five Human Factors** — "Who is it for?" Physical, Social, Emotional, Cultural, Cognitive.
- **Value Webs** (Porter) — "How does it create value?" Value exchanges — and check whether the
  web is genuinely multi-sided (vendor, platform, other stakeholders) before defaulting to a flat
  two-box User/System frame; a real value web is rarely just two entities.

## Output targets

1. **FigJam, flow-oriented content** (experience-map phases, cast-of-characters, maturity ladders)
   → `mcp__e940aacc..__generate_diagram` (Mermaid → FigJam). Note: Mermaid `classDef` needs plain
   hex colors, not `rgba()` — it silently fails otherwise.
2. **Precise grids** (PICNIC worksheet, Four Lenses canvas, the service-blueprint reference
   diagram itself) → `visualize`/`show_widget`, HTML mode. Mermaid cannot lay out a real grid;
   don't force it.
3. **Native Figma file** (design-system-integrated, editable by the team in Figma directly) →
   `use_figma`, once the Desktop Bridge plugin or Dev Mode MCP Server is confirmed connected.
   Unconfirmed as of 2026-07-28 — fall back to (1) or (2) until resolved.

## Write every cell in human — non-negotiable

A blueprint whose owner has to decode it is a worse blueprint, however complete. Beth,
2026-08-12: *"I also need this blueprint to be written in human so I can easily understand it.
This is not cool: `Per-vendor auth + credential storage ‹BUILT for the mechanism, NOT-NAMED per
vendor› · import client list + tiers ‹NOT-BUILT, blocked on GAP-002›…`"*

**Rules:**

- **Plain sentences, one idea per line.** Not middot-chained fragments. A cell is read at a glance
  in a zoomed-out board — every line must survive being read alone.
- **Status in words, at the end of the sentence, in the sentence.** Not bracket notation, not a
  symbol legend the reader has to hold in their head. Use: *works today* · *half-built* ·
  *written down, never built* · *never built* · *nobody has named this*.
- **Say the consequence, not the identifier.** "There's a field that looks like it should do this
  and doesn't" beats "`base_url_template` doesn't template." Put the code citation at the end of
  the line or in a footnote row, never mid-sentence.
- **No unexpanded internal shorthand** — no GAP-001, NONGOAL-002, FR-019, spec.md:289 inline. Name
  the thing: "it's written into the spec as a deliberate non-goal."
- **Quantities in the units the reader thinks in.** "Roughly a thousand calls across seven tools"
  not "~1,000 pulls/cycle."
- **A cell that needs a legend has failed.** If a reader must scroll to a key to parse a cell,
  rewrite the cell.

Completeness and readability are not a trade-off here — the detail stays, the notation goes. Say
what is true, in the fewest ordinary words, and let the status word carry the weight.

## Sources this skill is built from
- "A Guide to Service Blueprinting," Flowers/Miller, Adaptive Path — canonical SB structure.
- The "Me & My P.I.C.N.I.C." worksheet template (Beth's reference image) — canonical experience-map
  grid shape.
- `Four Lenses -- Clean Master.pdf` (Beth's file) — Whitney/IIT ID canvas.
- Vault Q1 Shareout deck (Beth's own past work, Capital One/Adaptive Path, 2018) — precedent for
  inventing a project-specific orienting diagram (House Diagram, Circle Diagram) rather than only
  reusing generic templates, and for a closing links-index page pattern.

## What this skill refuses to do
- Invent its own service-blueprint row labels when the canonical ones exist — use Customer
  Actions / Frontstage / Backstage / Support Processes, not looser paraphrases.
- Force a precise grid into Mermaid syntax — wrong tool, use `visualize` instead.
- Treat an experience map and a service blueprint as interchangeable — name which one is being
  built and why.
