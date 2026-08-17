---
name: prototyping
description: Run an evidence-first prototyping pipeline (research → brief → critique → build → critique → expert council → handoff) that produces a working HTML prototype plus the honesty apparatus around it — evidence-tagged brief, readiness scores, named tensions, and a handoff packet. Generic, share-ready edition with no proprietary agents, brands, or design systems required. Invoke when someone asks to prototype, mock up, demo a concept, or "show me what this would look like."
---

# Prototyping Pipeline — Public Edition

A prototyping workflow for product teams that treats evidence discipline as part of the deliverable. Every run produces two things: a **working HTML prototype** and the **honesty apparatus** around it — an evidence-tagged brief, a readiness score, contradictions surfaced by a panel of analytical frameworks, and a handoff packet a colleague (or another AI session) can pick up cold.

**Companion repo:** the full toolkit — the 44-method library, the cluster matrix and its math, framework citations, and the maintenance guide — lives at:

> `https://github.com/eaconnor/prototyping-toolkit`

Key files there:
- `docs/methods-library-matrix.md` — the 44 methods, 14 clusters, and the full relation matrix
- `docs/owen-structured-planning.md` — where the matrix math comes from (Charles L. Owen, IIT Institute of Design) and how this library adapts it
- `docs/frameworks-references.md` — citation and link for every framework used
- `MAINTENANCE.md` — how to keep the library honest as you extend it

**The one rule above all others: the pipeline is always full.** If the user says "just build it," build it — then run the reviews and the council and append the rail. Order may compress. Steps do not drop.

---

## Step 0: Intake — ask before you build

Ask these before anything runs. Hi-fi prototypes cost 3–5x the time of lo-fi and are wrong for most concepts.

1. **Lo-fi or hi-fi?**
   - *Lo-fi (default):* one page, real copy, full rail, readiness score. ~600–1,200 lines of HTML. Fast.
   - *Hi-fi:* multi-page, clickable flows, wizards/modals, feels like a product. ~3,500+ lines. Use only when walking a stakeholder through a click-path.
   If unspecified, build lo-fi and say so.

2. **Who is the audience?**
   - *Internal team:* gaps shown candidly, rail says what's broken.
   - *Stakeholder/exec:* rail leads with "what this means for your decision"; council leads with the executive summary.
   - *Customer/design partner:* seed data scrubbed, no internal politics, authorship attribution visible.

3. **Any source material?** Docs, tickets, research notes, files, URLs. With no sources, the brief runs assumption-heavy and the readiness score must reflect that honestly — never paper over a sourceless brief with a confident score.

4. **Council depth — Fast or Hard Mode?**
   - *Fast (default):* executive summary + the top ~7 tensions. Two-minute read.
   - *Hard:* all 44 voices across 14 clusters with full cross-talk. For strategy decisions and exec/board briefs.

---

## Pipeline overview

```
0. intake    → the four questions above
1. research  → gather source material; never synthesize at this stage
2. brief     → three-gate brief · every claim tagged [R]/[D]/[A]/[?] · three-number math
3. critique  → pre-build scorecard (6 dimensions) + punch list
4. build     → working HTML · fidelity banner · readiness rail · seed data fictional
5. critique  → post-build re-score · delta table vs. pre-build
6. council   → 44-method framework panel · structured testimony · cross-talk · tensions named, never resolved
7. handoff   → self-contained packet with verified math, named tensions, three explicit calls
```

---

## Evidence tags — the spine of everything

Every factual claim in a brief carries one of four tags:

| Tag | Meaning |
|---|---|
| `[R]` | Research — sourced from primary evidence (interviews, studies, observed behavior) |
| `[D]` | Data — sourced from telemetry, analytics, or records |
| `[A]` | Assumed — someone's belief, stated as such |
| `[?]` | Unknown — nobody knows; a named gap |

**If more than 30% of a brief's tags are `[A]` or `[?]`, say so at the top of the brief** — then decide whether the fidelity tier justifies proceeding (see tiers below). An assumption-heavy brief is fine for a concept sketch and disqualifying for a build spec. The failure mode is not having assumptions; it is hiding them.

### Three-number honest math

The `[A]+[?]` ratio mixes three different things. Report all three, never one blended number:

1. **World-claims ratio** — claims about users, market, problem. *The lead number.*
2. **Test-plan readiness** — claims about the prototype's own test plan ("interview guide unwritten").
3. **Inflated (with meta-TODOs)** — includes the brief's own gap inventory. This number punishes transparency and is misleading alone.

Save the recount (every tagged line, categorized) alongside the brief as `math-recount.md`.

### Fidelity tiers

| Tier | Name | `[A]`+`[?]` tolerance | Purpose |
|---|---|---|---|
| 1 | Concept | 50–70% OK | Exploring ideas; assumptions expected |
| 2 | Direction | 40–60% OK | Testing an approach before committing |
| 3 | Spec-ready | <30% required | Build planning; must be verified |

Name the tier. Name the ratio. Name whether it passes. Confidence comes from naming the tier, not over-building.

### Confidence regimes (brief frontmatter, when evidence is imperfect)

```yaml
confidence_regime: PROCEED | PROCEED-FLAGGED | PROCEED-PARTIAL | BLOCKED
proceed_because: [one sentence — why building now beats waiting]
machine_behavior: [e.g. build · surface tags visibly · do not claim validation]
```

**Decision uncertainty** (what should we build?) → `BLOCKED` — a human decides. **Evidence uncertainty** (do we have enough research?) → `PROCEED-FLAGGED` — build, mark provisional. These are different; do not conflate them.

---

## Step 1: Research

Gather source material from whatever the user named: internal wikis, tickets, local files, the web. Save each source as a discrete file under `research_input/` (`01-source-name.md`, …). Raw material only — quotes, links, data — no analysis. Tag anything paraphrased with a confidence note. If the source pool is thin or one-tradition, flag it.

**Seed-data and sourcing ethics:** use only sources that were offered — published or shared with intent to be used. Publicly reachable ≠ yours to use. Participant research data is used only for the purpose participants consented to.

## Step 2: Brief

Write `briefs/[project].brief.md` with three gates:

- **Gate 1 — Problem:** Is it real and sourced, or assumed? Every claim tagged.
- **Gate 2 — Right thing:** Does it advance the stated goal? What measurable outcome moves? What must not get worse (counter-metric)?
- **Gate 3 — Built right:** Tested how? By whom? What counts as done?

YAML frontmatter carries: feature name, fidelity tier, owner, problem statement, objective + key result, counter-metric, evidence sources, confidence regime — **and a domain model**:

```yaml
domain_model:
  entities:          # nouns WITH identity (tracked over time)
    - {name: "...", identity: "...", attributes: [...], evidence: "[R]|[D]|[A]|[?]"}
  value_objects:     # nouns WITHOUT identity (a score, a range)
    - {name: "...", describes: "...", evidence: "..."}
  services:          # verbs owned by no single noun
    - {name: "...", acts_on: [...], trigger: "...", evidence: "..."}
  ubiquitous_language:
    - {term: "...", means: "..."}   # same word in brief, UI, and code — no synonyms
```

Extract nouns and verbs **before** writing gate prose (this is Domain-Driven Design applied to briefs). Every UI surface the build produces must trace to an entity or service here; a surface with no noun behind it is drift, and the critique step flags it. Entities carry evidence tags too — an entity that exists only by assumption is an `[A]` and counts in the math.

## Step 3: Critique (pre-build)

Score the brief 1–5 on six dimensions, then write a punch list (PASS / FAIL / MISSING / RISK) to `critique-pass-1.md`:

1. **Coherence** — does the solution trace to the problem?
2. **Source-fidelity** — claims backed by `[R]`/`[D]`, or mostly `[A]`?
3. **Demo-ability** — can this be shown working?
4. **Differentiation** — distinct from the obvious alternative?
5. **Risk** — failure modes named or ignored?
6. **Scope discipline** — one prototype's worth, or sprawl?

## Step 4: Build

Produce `prototypes/[project]/index.html` — self-contained, vanilla HTML/CSS/JS, no framework, semantic markup, keyboard navigable, light/dark aware. Use the team's own design tokens if they have them; otherwise a neutral token set defined once in `:root`. Never mix ad-hoc colors with the token set.

**Every build ships three non-negotiable furnishings:**

**1. Fidelity banner** — sticky, at the very top of the page. Tier label ("Tier 1 · Concept" etc.), a 3-pip tier indicator, and a 6-item check matrix (✓ / ~ / ×): real copy · seed data fictional · core interaction works · full workflow built · visual hierarchy · production ready. Without the banner, a prototype impersonates production UI and creates false expectations.

**2. Readiness rail** — a right-hand rail, visually distinct from the app surface (different background, accent border — it must read as commentary, not chrome). Contains:
- Readiness badge (tier + score) and a plain-language blurb: what this prototype is testing
- **What you nailed / What will hurt you** — dual block, specific to this brief
- **Routed cards** — Product · Design · Research · Eng. Each card: *[Team] does [specific action] · Why now [sourced claim or `[A]`] · If you ship without it [realistic consequence]* · ROI block (Business / User / Unknown). **Unknown ROI named honestly is a research brief. Never invent numbers to fill the gap.**
- Council entry point — button opening the council modal (Step 6)

**3. Authorship attribution** — every section with AI-generated content displays `X% [owner-name]`: 100% = human wrote it, 70% = heavy human edit, 0% = accepted verbatim. This centers the human as author rather than treating AI involvement as contamination. Never invent the percentage — ask.

**Seed data rules:** all names, companies, and figures fictional. The publicity test: if you wouldn't be comfortable seeing it public, it doesn't go in. Real customer names, pricing, or tenant data never enter a prototype.

**Multi-page:** Tier 1 may be single-page. Tier 2+ needs ≥3 pages (show/hide `<div class="page">` pattern is fine lo-fi; page-as-function for hi-fi).

## Step 5: Critique (post-build)

Re-score the same six dimensions against the built artifact. Add: does every UI surface trace to the domain model (drift check)? Are labels the exact ubiquitous-language terms? Fidelity banner present? Rail complete? ROI honest? Write `critique-pass-2.md` with a **delta table** (pre → post per dimension).

**Once a critique has scored the build, any further edit — even applying the critique's own fixes — invalidates the score until a delta re-check runs on the shipping bytes.** Fix → re-check → then package. The fix-then-ship loop must never outrun the review trail.

## Step 6: Council — the framework panel

**Recommend it; don't silently auto-run it.** The council is deliberate clash-detection, and the human chooses to spend it. If declined, proceed to handoff — but the handoff names that the council was skipped.

Read `docs/methods-library-matrix.md` from the toolkit repo. Run the brief through the **44 methods in 14 clusters** (Charter · Sign Reading · Portfolio · Feature Quality · Market Position · Landscape · Jobs · Needs · Journey · Economics · Concept Work · Evidence Math · Metaplan · Realize). All 44 voices are always present; **tier controls testimony depth, not presence** (Tier 1: ≥6 voices full, rest abbreviated · Tier 2: ≥11 full · Tier 3: all 44 full).

Each voice gives **structured testimony** — the six-field format adapted from Charles Owen's Structured Planning (see `docs/owen-structured-planning.md`):

```markdown
## [CLUSTER] — [Method name] / [Tradition]
**Sign** — what this tradition observes in the brief. Concrete, sourced.
**Hypothesis** — what the sign means, argued not asserted.
**Kill criterion** — the evidence that would prove this voice wrong.
**Force level** — Must · Should · Ought · Nice.
**Evidence** — confidence rating on each claim above.
**Cannot see** — this tradition's structural blind spot.
```

Abbreviated voices give Sign + Cannot see only. A voice that can't fill its fields with sourced material is flagged as thin, never padded.

**Then cross-talk — the actual point.** Three required moves, drawing on all 44 voices:
1. **Direct response** — voice B reads voice A's Sign and offers a different hypothesis on the same data.
2. **Blind-spot supply** — voice B fills what voice A admitted it cannot see.
3. **Productive tension** — two voices contradict on the same point, both sourced. **Name it. Do not resolve it.** The tension is a design decision the human owns.

Cross-talk that merely summarizes each voice is failure — it must surface claims no single voice produced alone. Save to `council-testimony.md`. The council modal in the prototype shows an executive summary first (readiness score, top tensions, and a synthesis slot the machine leaves blank: `[0% AI — fill this in]` — synthesis is the human's job; the slot exists so the work stalls safely rather than inventing a strategy).

## Verification gate — before anything ships

Every ratio, count, or statistic in any artifact gets **mechanically re-verified against its source** (grep it, count it) before it ships. Origin story: a brief once self-reported 47% assumed-claims; an actual grep showed 80%. **Fluency does not know its own math.** Also: two agreeing sources count once if one learned it from the other (the echo check), and superseded numbers get marked dead in place (☠), never silently deleted.

## Step 7: Handoff

Create `handoffs/[recipient]-[project]-[date]/`:

```
README.md          ← reading order + what this packet is testing
HANDOFF.md         ← verified math · tensions named · three explicit calls (decision, owner, deadline)
NEXT-STEPS.md      ← decisions only the human can make + pipeline re-run plan
[project]-rail.md  ← the readiness rail as portable markdown
[project].brief.md ← the tagged brief
[project].html     ← the prototype
critique-pass-1.md / critique-pass-2.md
council-testimony.md
research/          ← all source docs
```

Every handoff ends with **three calls** — specific decisions with names and timelines, not open questions. Tensions are routed to the recipient, never resolved by the tool.

---

## The rules that keep this honest

1. The pipeline is always full. Steps compress; they never drop.
2. Every factual claim carries an evidence tag. Untagged = suspect.
3. Every stat is mechanically verified before it's quoted.
4. Unknown ROI is named, never fabricated. A named unknown is a research brief.
5. Tensions are routed to humans, never resolved by the tool.
6. Seed data is fictional. Always. The publicity test decides.
7. Synthesis slots (`[0% AI — fill this in]`) stay blank until a human fills them.
8. The tool creates evidence and routes it. It does not make decisions.

## References

Every framework the council uses is cited, with links, in the toolkit repo: `docs/frameworks-references.md`. The matrix math and its lineage: `docs/owen-structured-planning.md`. How to extend or repair the library: `MAINTENANCE.md`.
