# ux.md — GUIDE

**What a ux.md is:** one file both design and eng can open and trust as current — machine-readable frontmatter + tags on top, human-readable synthesis below, §6 doubling as literal UX acceptance criteria. Written to be read by people *and* AI agents. It sits between the brain-dump (raw research) and the spec/build: research flows in, unknowns flow back out (the loop — §5, Open items).

**Steward:** Beth Connor owns this template — the schema, the folder structure, and any change to them. Each individual ux.md has its own `owner:` (the person who keeps that file true). If you want a new frontmatter key or a new section, that's a template change — route it to the steward, don't fork the template.

**Template version:** every file declares `template_version:`. This is v1.0.

---

## Step 1 — pick your work-type

It decides which sections you fill. You don't delete the skeleton by hand; the applicability matrix in `TEMPLATE.ux.md` tells you what to keep.

| Work-type | You're… | Weight |
|---|---|---|
| `new-product` | Standing up a new product/offering from scratch | Full spine — every section |
| `new-feature` | Adding a feature to an existing product | A mini: `parent:` the product's ux.md, inherit §2–4, fill §1/5/6/7 for the feature |
| `bug-fix` | Fixing something broken | Lightest: §6 (the fix + its acceptance test), a one-line §1, pointer to parent |
| `rebuild-section` | Reworking an existing surface | Current-state + §5 (assumptions you're revisiting) + §6 + a required Divergence/CHANGELOG entry on *why* |

## Step 2 — pick your research-posture

Orthogonal to work-type. It decides gate strictness, not which sections apply.

- **`researcher-backed`** — a researcher can distinguish `[R]` from `[A]` and run studies. Normal discipline.
- **`self-serve`** — no researcher on the team. The AGENT GATE bites *harder* (rule 11): an unfilled slot is `[?]`, never a license for an AI to draft; judgment slots stay human or empty. The DIY methods in §6 (cognitive walkthrough, 5-second test, content audit) are your evidence — run them. You're the team most at risk of shipping a fluent guess as a finding, so the file protects you by refusing to let unknowns look settled.

## Step 3 — main or mini

- **`main`** — the product spine. Defines the tags, the gates, the AGENT GATE. Lists its `mini_docs`.
- **`mini`** — hangs off a `parent`. **Inherits the legends — does not re-print them** (delete the two legend tables, link the parent instead). This is the rule that keeps minis from ballooning past their parent. A mini restates almost nothing; it adds only what's specific to its offering.

---

## The three named slots (what makes this portable beyond one team)

The template hardcodes no team's methods. Fill these in frontmatter:

- **`canonical_spec:`** — your build spec's ID/path (the Band Protocol fills this with `FSN-83143`). The Divergence Log tracks where your research pushes on it. Write `none` if there's no spec yet.
- **`stress_test_method:`** — your concept-validation method (Band Protocol: `Idea Chess / Council`). §4 references it generically. Write `none` if you don't run one.
- **quality-bar standards** in §6 — swap in your own design system / heuristics.

A team with none of the Band Protocol machinery still gets the full skeleton, the gates, and the tag discipline.

---

## The loop — unknowns go back to research

The file generates its own next agenda. Every `[?]`, `[A]`, 🔴 Divergence row, and unknown-ROI is a research question. They collect in **§5 (Open items — assumptions · decisions · questions)**, which doubles as the intake for the next brain-dump/`refresh-datadump` pass. An item closes only when its answer is folded back into the body *and* its tag is upgraded (`[A]`/`[?]` → `[R]`/`[D]`/`[CS:]`). That correspondence is what keeps the file honest: a 🟢 means a real claim moved.

---

## Two kinds of length — cut the first, keep the second

- **Read-path length** (frontmatter + sections you traverse top-to-bottom) — keep it lean. This is what readers feel.
- **Reference length** (footnotes at the bottom, entered only on demand) — keep it. It's the provenance, and footnotes self-maintain *only* while they live in the same file as their claims. Don't extract them.

Human narrative (role guides, orientation, "if the owner's away") goes in a sibling `README.md`, not in the ux.md. The ux.md stays a machine-first spine.

---

## Gate rubric — what earns each scorecard color

Every ux.md carries the 🟡/🔴/🟢 Gate 1/2/3 scorecard. This rubric is **what earns each color** — the eval is "prove the color, don't assert it." Defined here once; an instance cites *met / missing* per gate and points here, it does **not** re-print the rubric.

**Green never means "complete."** A thin file whose gaps are named and routed can be green at Gate 1. Green = honest + criteria met *at this stage*.

### Gate 1 — Understand the problem
*The understanding is real, and we can show how we know.*
- Problem statement **sourced**, not assumed
- Primary persona(s) named and evidence-tagged — **not invented**
- Full cast mapped; role-gaps named, not skipped
- Riskiest assumptions surfaced, each with an owner
- If `[A]`+`[?]` > 30%, it's flagged, not buried

🟢 = a stranger could tell *whose* problem this is and *how we know it's real*. Mostly machine-checkable; "is this persona real" is human/critic judgment.

### Gate 2 — Right thing (UX acceptance criteria)
*We've defined what the right thing IS.*
- Goals decompose the problem (design's judgment, named)
- Tasks = **Top Tasks**, tied to goals — not a feature list
- Function/feature structure maps **1:1** to tasks (orphan function = scope creep; unserved task = gap)
- Each **Must** is a behavior tied to failure-when-absent — not decorative
- Divergences from `canonical_spec` **logged, not resolved**
- **The outcome variable is named** — what success means for this product

🟢 = the functional structure resolves the user's problem, traced task→function, *and* the outcome we optimize is named. **Legitimately stays 🟡 while a human decision is open** — a blocked judgment call is honest yellow, not failure. Heavily judgment.

### Gate 3 — Thing right (usability standards)
*Built well, and measured — not asserted. Usability per **ISO 9241-11**: the extent to which specified users achieve specified goals with **effectiveness, efficiency, and satisfaction** in a specified **context of use**. `[CS: HIGH — ISO 9241-11:2018]` There is no universal usability — name the context of use or the measures mean nothing.*

- **Context of use** named first — users · tasks · environment. Without it, the three measures below are ungrounded.
- **Effectiveness** — users accomplish the goal correctly and completely (task success · accuracy · completeness)
- **Efficiency** — reasonable effort to the goal (time · clicks · cognitive load). *Operator-side "time saved" is an efficiency measure and lives here — see the outcome-variable note.*
- **Satisfaction** — subjective: intuitiveness, clarity, **trustworthiness**. Instruments: SUS (**≥6 to ship / ≥8 on top-five tasks**) · the 6-item trust-in-AI-output eval where output is user-facing.
- **Accessibility**: WCAG AA · keyboard · contrast · screen-reader
- **Design-inspection floor** (feeds effectiveness/efficiency): Nielsen — recognition-over-recall · visibility of status · error prevention · consistency
- Each Must's **built-in test passes**
- **Design-system compliance** — linted per `design_lint:` (see § Design-system lint), coverage-declared, not eyeballed
- Tested **how / by whom / against what** — named

🟢 = the three ISO measures are met against named thresholds, in a named context of use, with real users where it matters. Correctly *cannot* be green pre-build or pre-test. This is eng's stable layer.

### The outcome-variable split — and how ISO 9241-11 dissolves the "pick one" fight
Not its own gate — it spans two:
- **Gate 2 names it** — as targets under ISO's three measures + the context of use, **not a single metric**
- **Gate 3 measures it** — did those move

Adopting ISO 9241-11 resolves the time-saved-vs-confidence tension (QBR **DIV-004**): time-saved is *efficiency*, measured operator-side (the admin / Coworker-card surface); the client-facing artifact is graded on *effectiveness + satisfaction* (did the review land, did it build trust). No contradiction — different ISO measures in different contexts of use. Don't force one variable.

### How the rubric flexes
- **work_type** — `bug-fix` collapses Gate 1/2 to a one-liner + a pointer; its bar is Gate 3 (does the fix pass its test). `new-product` must clear all three.
- **research_posture** — `self-serve` teams satisfy Gate 3's usability bar via the DIY methods (cognitive walkthrough · 5-second test · content audit), not a formal study. The bar is the same; the instrument is lighter.

### The Must ↔ test split across gates
A **Must** ("dual-surface, not a toggle") is a Gate 2 *definition of right*. Its **built-in test** ("does the internal draft contain content absent from the export?") is a Gate 3 *verification*. §6 already separates Musts from the built-in-tests table — this rubric just labels which gate each half serves.

---

## Skill registry — binding tooling to the constitution

The `skills:` frontmatter block names which skill or agent serves each section/gate. A markdown file can't *execute* a skill — it **declares**, and the AGENT GATE (rules 13–14) tells the reading agent to **invoke**. The registry does double duty:
- **Eval** reads it to know which skill fires per section.
- **Coach** reads it to know where to route a gap: a registered skill if one exists, else the coach's own built-in method guide.

Leave it empty and everything still works — the coach falls back to its built-in guides. A bare team ships nothing; a team with tuned skills wires them in. On this project the registry points at the Band suite: `/scout` (Gate 1 evidence + loop), `/journey-map` (§2), `/abductive-tag` + `/code-rows` (coding), `idea-chess` (§4 stress-test), `bethproto` (Gate 3 build), `/refresh-datadump` (loop), `/handoff` (export).

**Guardrails that ride with the registry:** each tool does its lane only — `/scout` gathers, doesn't synthesize (and is read-only: the orchestrator persists its output, GATE rule 15); `idea-chess` stress-tests, doesn't decide; `bethproto` builds mechanics. Judgment stays human at every route. And these tuned skills stay a *per-project* fill — the template's `skills:` slot ships **empty**, because baking them in would re-import a whole protocol a borrowing team doesn't have.

---

## Design-system lint (`design_lint:`)

Gate 3's design-system-compliance criterion, run as a graded check rather than eyeballed. Set `design_lint:` to the rung your access supports. `design_system:` names the system (UEM default: **Apex**). A lint is only as good as the source it checks against — so **every rung declares its own coverage**: a green check states *what it verified and what it did not*, never bare "compliant."

| Rung | Checks | Needs | Ships with the skill |
|---|---|---|---|
| `off` | — | — | — |
| `static-tokens` | Apex token names (`--br-*`) not hardcoded hex · Inter + JetBrains Mono · `--radius-*` corners not arbitrary · three named surfaces present | a shipped static token snapshot | ✅ |
| `+components` | above, plus correct `apx-*` component usage · 3-way mode toggle persisting to `apx-mode-pref` · keyboard reachability | a maintained component catalog | ✅ |
| `live-figma` | above, plus real tokens/variables pulled live · dark-mode / high-contrast values · current + newly-added components | Figma auth (dark-mode needs the desktop app) | ❌ BYO-access |

**Default: `static-tokens`.** It catches the violations that actually recur — hardcoded hex, wrong fonts, arbitrary radii, missing surfaces — needs no access, and travels with the skill. `live-figma` earns its cost only at production fidelity.

**Coverage declaration (required, per rung):**
- `static-tokens` → "Checked against the static Apex snapshot as of ‹date›. **Not verified:** dark-mode / high-contrast, current-Figma drift, component correctness."
- `+components` → adds component + mode-toggle + keyboard coverage; still "**Not verified:** live-Figma drift, dark-mode values."
- `live-figma` → full, as of the fetch timestamp.

A green lint is never "Apex-compliant" — it's "matches ‹this source› as of ‹this date›." Same discipline as `[CS:]`: the check tags its own confidence. The Rung-1/2 rule set is the `critic.md` Apex checklist (canonical `:root` token block · Inter + JetBrains Mono · `--radius-*` · three surfaces · `apx-mode-pref` toggle · keyboard reach) — this is where it lives now, so build and critic check the same list. Do **not** wire against `@n-able/apex-ui` / an `apex-agent` MCP until that package is confirmed real — it's currently `[CS: UNKNOWN — placeholder]`; the static snapshot in `.claude/agents/build.md` is the source of truth until then.

---

## The two artifacts: context.md and design.md

**context.md** (= ux.md — same file, two names) and **design.md** are a pair. They divide cleanly:

| | context.md | design.md |
|---|---|---|
| Answers | *What must be true?* (problem · who · gates · success criteria) | *Here's the thing that makes it true* |
| Voice | Band-native — evidence tags, gates, AGENT GATE | **Google design doc** — Goals/Non-Goals, Alternatives Considered, cross-cutting concerns |
| For | design + eng build *from* it | eng builds *it*; it's checked *against* context |
| Template | `TEMPLATE.ux.md` | `TEMPLATE.design.md` |

**The pipeline:** `scout → context.md (research → what must be true) → design.md (the designed solution) → build (code)`.

**The wiring that keeps them honest:** design.md §6 has one row per context Must — *design's acceptance criteria are context's success criteria.* An unanswered Must is a visible gap. design.md may not invent claims context doesn't support (it inherits context's `[CS:]` tags), and it may not resolve context's open decisions — a blocked context decision blocks the design that rests on it.

**Why Google-style for design.md:** a design doc is written for *review and decision*, not description. The two hallmarks earn their place — **Non-Goals** stop scope creep, and **Alternatives Considered** stops the choice being re-litigated six weeks later. It stays prose-first with a TL;DR up top; the rigor is in the honesty apparatus, not in length.

**When to write a design.md:** once context.md's Gate 1/2 are settled enough that you're designing a solution (not still framing the problem). A `bug-fix` may skip it; a `new-product` always needs one. It carries a `fidelity:` tier so a reviewer knows whether they're looking at a sketch or a spec-ready design.
