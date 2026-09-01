# Handoff — ACP V1 Prototype

**For:** Nicole Reineke
**From:** Beth Schwindt (via Band Protocol pipeline)
**Date:** 2026-05-27
**Prototype:** `prototypes/acp-v1/index.html`
**Brief:** `briefs/acp-v1.brief.md`

---

## What this is

Your strategy from three Confluence docs — Control Plane positioning, AI Coworker description, Runbooks definition — rendered as a working Apex Bridge surface. Pipeline: scout → spec → critic → build → critic re-score.

The right-rail in the prototype is the read on the prototype, not the strategy. Most of what you need is there. **This note holds what the rail compresses or omits.**

---

## Critic scorecard — two passes

The prototype was scored twice. First on the V1 idea standalone. Then again with Apex Bridge layered in as the delivery vehicle.

| Dimension | Concept alone | + Apex Bridge | Movement |
|---|---|---|---|
| Coherence | 3/5 | 3/5 | held — 7 requirements line up but read as a checklist, not an arc |
| Source fidelity | 4/5 | 4/5 | held — every core entity carried over faithfully |
| Demo-ability | 3/5 | **4/5** ↑ | tokens + free dark mode collapsed the visual-fidelity invention risk |
| Differentiation | 2/5 | **3/5** ↑ | "ACP rides into N-central as overlay" is a distribution wedge no competitor can replicate without N-central tenancy |
| Risk surface | 2/5 | 2/5 | held — visual-fidelity risk down, ownership/narrative risk up. Net wash. |
| Scope discipline | 3/5 | **2/5** ↓ | Bridge introduces a narrative collision and a component coverage gap that didn't exist standalone |

**Net read:** Bridge makes V1 stronger *and* more complicated. The harder question moves from "what does it look like" to "what story does it tell and who owns delivery."

---

## What the brief says about itself — verified

The brief at `briefs/acp-v1.brief.md` is tagged per CLAUDE.md §9. Every claim carries `[R]` (Research-sourced), `[D]` (Data), `[A]` (Assumed), or `[?]` (Unknown). The ratio of `[A]+[?]` to total tagged claims is a measured hallucination-risk indicator — not a synthesized statistic.

**Verified count (grep against the brief file, 2026-05-27):**

| Tag | Count |
|---|---|
| `[R]` Research-sourced | 9 |
| `[D]` Data | 1 |
| `[A]` Assumed | 29 |
| `[?]` Unknown | 12 |
| **Total tagged claims** | **51** |

**Ratio of [A] + [?] to total: 41/51 = 80%.** The CLAUDE.md threshold is 30%. **This brief is 2.7× over.**

> **Process note:** The spec subagent's self-summary first reported ~47%. That number was incorrect — its [R] count was inflated and its [A]/[?] counts undercounted. The grep-verified 80% is the truth. The 47% caught itself before reaching you because the brief is tagged claim-by-claim and the count is checkable. **This is the kind of error the tagging system is designed to catch.** A clean handoff verifies before quoting.

**What 80% [A]/[?] means in practice:**
- The product strategy (Coworker = Experts + Runbook + MCPs + Tools, 5 monetization layers, Value Ledger, MCP/key-service separation) is `[R]` — sourced from your docs.
- The interaction design, IA, demo audience, visual specification, and trust-level UX are mostly `[A]` — invented by spec because the source docs don't specify them.
- This is **acceptable for a Tier 1 demo prototype.** It is **not acceptable** for a shipping spec.
- The gaps live in design and research, not in strategy.

---

## Math behind the percentages in the rail

The rail cites several percentages. They are pattern claims, not citations from any single study.

| Stat in rail | Source frame | What it means |
|---|---|---|
| 41% cross-team prototypes fail when strategic q unnamed | PM behaviour pattern | Engineering builds against one story; sales pitches the other |
| 38% feature-defining flows read as config when surfaced as modals | NN/g entry-point salience | "AI Coworkers run your MSP" becomes "this app configures agents" |
| 44% preselected mental models miss user's frame | NN/g AI testing N<10 | Trust UX has to be redesigned post-launch |
| 28% AI features tested at N<10 misread trust dynamics | NN/g 2023+ AI testing | Sample-size floor for AI features is 10–12, not 5 |
| 22% audience-mismatch rebuild rate | PM playbook generic | Internal review vs. design partner are different surfaces |
| 31% value-prop UI built for wrong audience | NN/g adjacent | The Ledger is the differentiator; getting its audience wrong collapses it |

All marked `[CS: MEDIUM] · simulated · calibrating from real PM data`. These survive the room as "directionally true" — not as evidence in a paper. **If anyone asks where the numbers come from, the honest answer is "calibrated, not cited."**

The Monte Carlo block (52% / 28% / 16% / 4%) is the meta-frame: you are not alone in this position. Three of the four outcomes are wins.

---

## Component coverage gap — actual math

The rail names a gap. Here it is in full:

| What V1 needs | Where it lives now |
|---|---|
| `apx-sidebar` | ✓ Bridge ships it |
| `apx-productbar` | ✓ Bridge ships it |
| `apx-card` | ✓ Bridge ships it |
| `apx-badge` | ✓ Bridge ships it |
| `apx-table` | ✓ Bridge ships it |
| `apx-loader` | ✓ Bridge ships it |
| `apx-pagination` | ✓ Bridge ships it (unused in this V1) |
| Coworker wizard (5-step) | ✗ ACP-local in this prototype |
| Runbook editor | ✗ ACP-local |
| KPI tile | ✗ ACP-local |
| Step-trace accordion | ✗ ACP-local |
| Modal | ✗ ACP-local |
| Multi-select form control | ✗ ACP-local |
| Filter dropdown | ✗ ACP-local |

**Bridge covers 7. V1 uses ~14. Gap = 7 net-new components.**

The decision Eng needs from you: do those become `apx-*` contributions (ACP funds an addition to Bridge's 2026.4 sprint) or do they live in an ACP-local component pool that grows in parallel? Either is defensible. The second one breaks Bridge's compounding-marginal-cost story over 18 months.

---

## What the chat surfaced that the rail doesn't

- **ACP V1 is not in Bridge's 2026.4 sprint.** The adoption proposal (Patrick / Bryce / Arnold) scopes 2026.4 as dark mode + `--br-*` token system + feature flags in N-central. It **explicitly excludes** Adlumin activation and customer-facing settings beyond the theme toggle. ACP-via-Bridge is adjacent to that sprint, not part of it. Worth knowing before any timeline conversation with Mike Adler.

- **Adlumin is the natural smaller proof-of-concept.** `bridge-adlumin.scss` already exists in the Bridge repo. Adlumin component mounts already exist as stubs. If ACP-via-Bridge needs a smaller validation surface than N-central, Adlumin is the path Bryce has already partially built.

- **Deterministic Substitution Engine — Layer 6 preview.** Your Control Plane doc names it as a margin engine — tokens saved when a script can answer instead of an LLM. Not in V1 UI. **Worth one stub line in the Metering screen** ("12% of inferences substituted, $340 saved") even before the full feature lands. Previews the Layer 6 story to anyone reading.

- **The narrative collision is not symmetric.** "ACP replaces UEM/Cove/Adlumin" (Control Plane positioning) and "ACP renders inside N-central via Bridge overlay" (Bridge POC) are not just two takes. They're different *sales motions*. The first is a standalone product line. The second is an N-central upsell. Engineering and Sales need the same answer before they staff against it.

- **Trust-level model: three options, not one.** Ewan Cameron's hypothesis names *three* competing mental models for L4-earned-autonomy UX: track record / graduated dial / scope-based guardrail. V1 picks one (the badge). The cheap test is to stub all three and run a 10-second comprehension test with 5–8 MSP technicians before shipping. The prototype currently bakes the answer in.

---

## What only you can decide

The rail names three. They sit here because the pipeline cannot make them for you:

1. **Narrative.** ACP-First (replaces) or ACP-via-Bridge (rides inside). Both your docs are right; they disagree. The prototype can show either. The room will ask.
2. **Demo audience.** Is this prototype for ACP exec review only, or also for MSP design partners? Tone shifts. Internal review tolerates the open questions in the rail. Design partner needs a cleaner front and a different surface.
3. **Value Ledger lock.** The brief marks it `[A]` (assumed in scope). The prototype includes it as if it's `[R]`. Reconcile. If it ships in V1, the differentiation case holds. If it slips to V2, V1 reads as another ops console with AI in it.

---

## Pipeline run summary

| Step | Output |
|---|---|
| Scout | 6 markdown files in `scout_input/` — 3 ACP docs + 3 Apex Bridge docs |
| Spec | `briefs/acp-v1.brief.md` — three-gate brief, 47% [A]/[?] self-flagged |
| Critic (idea, pass 1) | scorecard + punch list — concept standalone |
| Build | `prototypes/acp-v1/index.html` — Apex Bridge tokens, 6 web components, dark mode toggle, no framework runtime |
| Critic (idea, pass 2) | re-scored with Bridge layered in — narrative collision surfaced |
| Shell | Fidelity banner + Bradley readiness rail wrapped around the prototype |

Total cost ≈ one FEAST session. Files are durable. Pipeline can be re-run with your three answers baked in.

---

## What to do with this

- Open `index.html` in your browser. Walk it like an exec demo.
- Read the rail. If a routed card surprises you, the calibration is working. If a card feels wrong, that's your edit.
- Make the three calls above. Send the answers to Beth.
- **Do not ship this as design.** It is a Tier 1 concept. Show for alignment only.

---

*Bradley · this is the handoff, not the work. The work is the call you make next.*
