---
artifact: "Beth handoff — keep building / keep testing"
date: "2026-05-21 (session close)"
from: "Beth (end of session)"
to: "Beth (next session)"
purpose: "Pick up where this session left off. Three named tests + the parking lot."
---

# Beth — Keep Building Handoff

End of session 2026-05-21. This is the orientation for next session — where the work is, what's tabled, what you said you wanted to test next.

---

## Session 2026-05-21 in one line

Took Idea Chorus from "brief spec" to **testable protocol** integrated with Nicole's Intent Spec model and your own AI-First Design doc. Simulated against 10 real n-able briefs. Built a Tier-1 Apex prototype + Bradley readiness rail. Packaged for Alaina.

---

## Where the rubric brief stands

**`briefs/idea-chorus-rubric-v2-spec.brief.md`** is at:

- **Status:** DESIGN DEVELOPMENT (not build-ready)
- **14 decisions closed**
- **7 cross-cutting principles** (A–G; H *Add the egg* sketched but not patched)
- **6 referenced artifacts** (matrix · n-able-strategy-context · research-methodology-specs · LOTL fixture · Beth AI-First Confluence · Nicole Operating Model Confluence)
- **35% [A]+[?] tag audit** — over the CLAUDE.md 30% threshold; named, not resolved
- **Critic items closed this session:** 1, 2, 3, 4, 6, 7, 8, 22 (existential mechanics + structural conflicts on UNVALIDATED stamp + Mode 7 + canvas mapping)
- **Critic items still open:** 4–7 structural conflicts, 9–15 test protocol, 16–24 hygiene + Gate 1 evidence

---

## What got built this session

### Brief / spec artifacts
| File | What it is | Status |
|---|---|---|
| `briefs/idea-chorus-rubric-v2-spec.brief.md` | The spec — 14 decisions, 7 principles | Updated heavily this session |
| `briefs/methods-library-matrix.md` | 44-method × 14-cluster library + Item×Item RELATN adjacency list | v2.1 (broken ASCII matrix rebuilt as adjacency list) |
| `briefs/research-methodology-specs.md` | NN/g (qual) + MeasuringU (quant) sample-size rules + anti-patterns | NEW this session |
| `briefs/n-able-strategy-context.md` | Placeholder for live n-able strategy doc | NEW v0 |

### Prototypes
| File | What it is | Status |
|---|---|---|
| `prototypes/alpha-race.html` | First pass — warm-paper Bauhaus aesthetic | **WRONG design system** — kept for compare only |
| `prototypes/alpha-race-apex.html` | Tier-1 Apex concept + Bradley readiness rail | Where the work is now |

### Handoffs
| File | What it is |
|---|---|
| `briefs/alaina-alpha-race-handoff.md` | Handoff brief for Alaina with three personas + five play scenarios |
| `briefs/handoffs/alaina-2026-05-21/` | Packaged folder for Alaina (10 files + README) |
| `briefs/handoffs/2026-05-21-beth-keep-building.md` | This file |

---

## The three tests you named at session close

### Test 1 — Competitive Analysis: does the rubric work on it?

**Question:** Does Idea Chorus's clash detection produce useful signal on a brief whose primary content is LAND (landscape) + POS (positioning) + competitive intel, not product-feature evidence?

**Why it matters:** Every brief we simulated this session was a product-feature brief or research strategy. A competitive analysis is a different shape — it's *generating* the Gameboard for downstream product Intent Specs, not *applying* a Gameboard to a proposition. The rubric might surface as "all empty seats" because clusters expecting product evidence get nothing.

**What to do next session:**
1. Find or pull a real n-able competitive analysis from Confluence. Likely candidates:
   - Adlumin competitive landscape audits (Huntress, Arctic Wolf, CrowdStrike, ConnectWise MDR)
   - Win/loss analysis pages
   - Analyst report summaries (Gartner/Forrester MDR landscape)
2. Run it through Idea Chorus as you've run other briefs (Charter Traversal Chain, Gameboard/Gameplay, Design Layer, clash report)
3. Note where Bradley's voice lands and where it doesn't
4. If the rubric mostly says "your LAND cluster is full but everything else is shrugging" — that's *probably fine* for a competitive analysis (different brief shape, different expected output). Worth confirming.

**What might come out of this:**
- A finding that competitive analyses need their own subset of clash rules (just LAND/POS/PORT + Charter)
- A finding that competitive analysis is upstream of all product briefs and should be cited as a parent-Charter rung
- OR: the rubric works as-is and you just read the "empty seats" as "this is fine, your job here was different"

**Open question to surface:** Should there be a "BRIEF SHAPE" implicit category Bradley uses internally to set expectations, even though we explicitly killed the formal classifier (Decision 11 was withdrawn)?

---

### Test 2 — Strategy self-check: run your Adlumin strategy doc through Idea Chorus

**Question:** When you run your own foundational strategy doc through Idea Chorus, does Bradley catch what you'd expect him to catch? Does the protocol hold up under self-application?

**Why it matters:** Decision 14 named this as the recursive-validation test. Your AI-First Design doc and Nicole's Operating Model are Charter-generation artifacts at the protocol level — they're meta to the rubric. Running Idea Chorus on them would either:
- Validate the protocol (Bradley's bar holds when applied to its own foundations)
- Surface gaps in the foundational thinking (politically/practically delicate but also genuinely valuable)
- Surface that the rubric isn't well-shaped for protocol-level artifacts (different shape than briefs)

**Which doc to use first:** Beth's AI-First Design at N-able 2026-05-10 working draft is at [https://n-able.atlassian.net/wiki/spaces/ProdUX/pages/61932830828/AI+First+Spec+Driven+Design+at+N+able+2026-05-10](https://n-able.atlassian.net/wiki/spaces/ProdUX/pages/61932830828/AI+First+Spec+Driven+Design+at+N+able+2026-05-10). Already loaded in evidence_sources of the spec brief. Working draft, marked "stake in the ground" — explicitly invited iteration. Good candidate for self-check.

**What to do next session:**
1. Fetch the AI-First Design doc again (it may have updated since 2026-05-10)
2. Run it through Idea Chorus the way you've run other briefs
3. Notice specifically:
   - Charter cluster (CHTR): the doc explicitly says it's "a stake in the ground, not policy" — does Bradley honor that, or flag it as PLACEHOLDER?
   - SIGN cluster: what observable signals back the "AI-first" claim? Are they cited?
   - LAND cluster: how does the doc position vs. broader industry AI-first frameworks?
   - JOBS cluster: who's the user of this protocol (n-able PMs / designers / executives) and what's their JTBD?
   - Research Methodology Compliance: has the protocol itself been tested with users, or is it ahead of validation?

**What might come out of this:**
- Specific gaps in the doc you'd want to close before next iteration (the doc literally invites this — "leave comments where it feels wrong or incomplete")
- A finding that the protocol shape isn't right for foundational/meta artifacts
- A finding that the rubric is too brief-shaped to handle this and needs a variant
- Validation that the protocol survives self-application (which is the strongest case for it)

**Note:** This is also a test of Nicole's Operating Model. Worth running both through, separately or together.

---

### Test 3 — KPIs → business portrait: can the rubric scale up?

**Question:** Can Idea Chorus pull KPIs from Control Tower (Snowflake / Salesforce / Jira / Chorus / Qualtrics) and produce a Bradley-style portrait of the *business*, not just a brief?

**Why it matters:** Right now Idea Chorus evaluates briefs (one artifact at a time). A business portrait would evaluate n-able as an entity — its strategic position, its risks, its readiness across the portfolio. That's a different problem. But the clash detection / Gameboard / readiness state architecture might still apply at the company level.

**The "Hmm." you signaled:** You're uncertain whether this is Idea Chorus's job or a different tool. That uncertainty is worth respecting.

**What to do next session:**

*Option A — sketch first, then test.* Mock what a "business portrait" output would look like before pulling real data. Bradley + council convened on n-able-as-an-entity. Gameboard becomes market position / customer dynamics / product portfolio. Gameplay becomes strategic bets. Clash detector surfaces where the company's claims are unevidenced.

*Option B — pull data first, then see what shape emerges.* Use Control Tower's 5 AI modes (Editor / Assistant / Cortex / Search / Code Interpreter) to pull a slice — say, last quarter's KPI movement + Ideas Portal demand signals + Chorus/Gong objections. Hand to Bradley and see what he does with it.

*Option C — name this as a separate tool.* The business-portrait read may not be Idea Chorus extended. It may be a sibling tool that uses the same protocol foundations (clash detection, council, Bradley voice) but operates at the company-portfolio level. Decision 14 already names that Idea Chorus is "the pre-Readiness-Gate diagnostic loop" — a business portrait would be one level up from that.

**Open questions to surface:**
- What data sources does a portrait actually need? Snowflake KPIs are one input; what else?
- What does "good" look like for a business portrait? A Bradley narrative? A dashboard? A clash report at company scale?
- Who's the user? (Probably you, or Nicole, or n-able exec leadership — not individual PMs)
- Does the portrait replace, supplement, or compete with Control Tower's existing aggregation?

**Recommendation:** Start with Option A (sketch first). Cheapest move; surfaces whether this is Idea Chorus or something new before you go pulling data.

---

## Tabled items worth coming back to

These came up this session and got parked, not killed. Worth deciding on each before the brief ships to build.

| Item | Why parked | When to revisit |
|---|---|---|
| **Bias layer (Decision 10 sketch)** | You asked to table during the session — focus was on simulations and the AI-First protocol integration. Sketch is in conversation history but not patched into brief. | When you have time and energy for it. The multi-agent-persona-clash-detection-on-bias concept is real and worth developing. |
| **Methods library matrix CSV for build agent** | You said "move on" during the simulation work. Adjacency list is sufficient for human read; CSV is for build-time. | When build agent kickoff is imminent. |
| **Critic items 4–7** (structural conflicts) | Force-level terminology collision · Moore positioning double-duty in CHTR vs Reading 2 · Hard Mode per-mode vs per-cluster vs per-Defining-Statement · Decision 1/8 UNVALIDATED scope difference | Before the brief ships to build. Small, surgical patches. |
| **Critic items 9–15** (test protocol gaps) | A4 testable as written? · A3 semantic vs structural · A6 misnumbered · No Decision 7 canvas test · No Principle F paradox test | Before the brief ships to build. |
| **Critic items 16–24** (hygiene + Gate 1) | Tag audit stale · LOTL trace drift · EVID methods in scoring matrix · Closed decisions have deferred sub-decisions · Gate 1 hasn't moved | Before the brief ships to build; some require PM evidence you don't yet have. |
| **Principle H (Add the egg)** | Drafted in conversation but never patched into the brief's Cross-Cutting Design Principles section. | Quick patch when you have 10 min. The principle is good and protective; should be in. |
| **Vocabulary migration: Charter → Intent Spec in PM-facing UI** | Decision 14 names this; the actual find-and-replace work hasn't been done. | When build is ready to start; it's a UI-vocabulary patch, not a theoretical-layer change. |
| **Self-application on Beth's + Nicole's foundational docs** | Decision 14 names this as politically/practically delicate. | Test 2 above is the gentle entry into this. |
| **The Alaina handoff response** | You sent it to Alaina; her feedback hasn't come back yet. | When she responds. Likely surfaces real design-system fidelity questions worth patching into the spec. |

---

## Suggested next session opener

If you want a fast entry point next session:

> "Run Idea Chorus on my AI-First Design doc. Test 2 from the handoff. Pull the latest version from Confluence first."

That sets up the strategy self-check (Test 2), which is the most likely to surface useful protocol-level findings without requiring new data sources or new tool capabilities.

Alternative if you want a different shape of work:

> "Pull a competitive analysis from Confluence and run the rubric on it. Test 1 from the handoff."

That tests whether the rubric generalizes to a new brief shape (competitive analysis), which would either validate or break the no-classifier decision.

---

## The protocol working principle to remember

From your AI-First Design doc, copied here so future-you sees it on the first scroll:

> *When AI makes execution fast and cheap, judgment before execution becomes the bottleneck.*
>
> *If strategy briefs or specs contain ungrounded claims, AI will help us ship confident mistakes faster.*
>
> *Research is the scoreboard. Everyone else plays the game.*

The whole Idea Chorus rubric exists to prevent the second claim from being true at n-able. The simulations this session showed it does useful work on real briefs. The work that remains is: ship it.

---

## Where the files live

```
/Users/elizabeth/Desktop/Bethproto/
├── briefs/
│   ├── idea-chorus-rubric-v2-spec.brief.md         ← THE SPEC
│   ├── idea-chorus-rubric-v2.brief.md              ← source/earlier
│   ├── methods-library-matrix.md                    ← 14 clusters, 44 methods, RELATN
│   ├── research-methodology-specs.md                ← NN/g + MeasuringU
│   ├── n-able-strategy-context.md                   ← placeholder
│   ├── lotl-value-prop.brief.md                     ← test fixture
│   ├── alaina-alpha-race-handoff.md                 ← handoff to Alaina
│   └── handoffs/
│       ├── alaina-2026-05-21/                       ← packaged for Alaina (10 files + README)
│       └── 2026-05-21-beth-keep-building.md         ← this file
├── prototypes/
│   ├── alpha-race.html                              ← WRONG design system (compare only)
│   ├── alpha-race-apex.html                         ← Tier-1 Apex concept + Bradley rail
│   ├── idea-chorus.html                             ← (existing — not touched this session)
│   ├── adlumin-lotl.html                            ← (existing)
│   ├── adlumin-lotl-marketing.html                  ← (existing)
│   ├── adlumin-lotl-vision.html                     ← (existing)
│   ├── pm-idea-scorer.html                          ← (existing)
│   └── serve.py                                     ← (existing)
└── CLAUDE.md                                         ← project rules (Band Protocol × Zero Vector)
```

---

*End of session 2026-05-21. Lucy holds the clipboard. The brief is at DESIGN DEVELOPMENT — closer to build-ready than it was this morning, not there yet. Three real tests on the table. Alaina has the package. Next session whenever you're ready.*
