# Critic Pass 1 — ACP V1 Idea (standalone)

**Run:** 2026-05-27 · **Agent:** critic · **Target:** the V1 concept on its own merits, before Apex Bridge was named as the delivery vehicle.

---

## Scorecard

| Dimension | Score | Justification |
|---|---|---|
| **Coherence** | 3/5 | Seven requirements line up against the source docs, but listed as a checklist rather than a single demo arc. The connective tissue ("MSP sells outcomes, not time") shows up in Gate 1 framing and then disappears from the scope list. |
| **Source fidelity** | 4/5 | Every core entity (Coworker = Experts + Runbook + MCPs + Tools, Runbook ≠ Workflow, MCP keys via separate key service, LLM external) is faithfully carried over. The Value Ledger is sourced but quietly demoted to "recommended." |
| **Demo-ability** | 3/5 | The 10-screen IA is walkable in 5 minutes, but structurally a CRUD app (list + form × 10). The "control plane" feeling — telemetry, governance, infrastructure-grade evidence — has to be carried by two screens (Executions, Value Ledger) and they're the thinnest specced. |
| **Differentiation** | 2/5 | The three things that make ACP not-just-another-SaaS — outcomes ledger, governed agents, customer-buildable Coworkers — are present as items but not as the spine. Value Ledger is "recommended." Trust-execution level is a badge. Customer-built Coworkers share equal real estate with N-able's catalogue browse. **The new MSP story is buried under the IA.** |
| **Risk surface** | 2/5 | Chargeback is hand-waved (one table, no model for what gets metered against what). Trust-execution level is named but three competing mental models (track record / graduated dial / scope-based guardrail) collapse into "3 colors on a badge" — that's not testing Ewan's hypothesis, that's pre-deciding it. Runbook-vs-Workflow distinction is acknowledged in prose then ignored in IA (Runbooks page exists; Workflow is invisible). |
| **Scope discipline** | 3/5 | The "out of scope" list is honest and well-drawn (no N-zo, no Reverse Publish, no Substitution Engine UI). But the "in scope" list secretly contains a Coworker builder, a Runbook editor, an MCP server connect flow, AND a Value Ledger AND a chargeback view AND a trust-level model. **That's five demo-able stories, not one.** |

---

## Punch list

### 🔴 Critical gaps

**Customer-built Coworker vs. Coworker-builder-UI conflation.**
The brief treats "customer adds a new Coworker" as a modal with checkboxes for Experts + dropdown for runbook + checklist of MCPs. Scout 02 §7 ("we should build the UX to this up front, this does not need to be second") is calling for the front door of the product. What's specced is a settings dialog. *Why it matters:* this is the differentiating capability — the brief's own Gate 2 names it as load-bearing — and the prototype as specced will not let a viewer feel it.

**Trust-execution level pre-decided, not tested.**
Scout 02 explicitly names three competing mental models that need a 10-second comprehension test. The brief picks one (badge with 3 colors: Human-confirms / AI-executes-human-audits / Autonomous) and ships it. *Why it matters:* Ewan's hypothesis is the most concrete piece of user-research scaffolding in the entire source set, and the V1 prototype is the natural place to actually run the test. Choosing the answer up front wastes that surface.

**Chargeback as a table, not a model.**
The seed data names "execution count, MCP transactions, LLM tokens, $" — four columns. Scout 01 enumerates five distinct billable layers (Workflow Execution, Expert Activations, MCP/Tool Transactions, LLM Inference, Outcome events) with explicit market comparables (n8n, Make, Agentforce, Zendesk). The brief collapses five layers into four columns and calls it done. *Why it matters:* Beth named chargeback as a V1 requirement. The brief is treating it as a screen instead of a pricing model.

**Runbook-vs-Workflow elision.**
The brief acknowledges in "Failure modes" that confusing the two collapses the trust model. The IA then has a "Runbooks" page and no Workflows surface, and the seed Runbooks are described as "text-area, Intent on top, Steps below" — which is exactly the conflation the failure mode names. *Why it matters:* scout 03 is unambiguous that workflow is a *component* of runbook. The text-editor-with-Intent-and-Steps is a runbook *that has not yet expanded into structured execution* — fine for V1, but it has to *visibly* be that, with the workflow scaffolding stubbed.

### 🟡 Real questions Beth + Nicole need to settle before build

- **47% [A]/[?] ratio — gaps in the wrong places.** *(Process note: the 47% was spec's self-reported approximation. Grep-verified actual is 80%. See HANDOFF.md.)* The risky `[A]`s cluster in: demo success criteria, IA, visual fidelity. These need Nicole-and-Beth review before pixels, not after.

- **Halo as the worked PSA — defensible or a tell?** Halo is in the scout doc as the example. It is *not* declared as the design partner. If the demo audience is N-able exec, Halo-only signals "we built around the example doc" not "we built around customer evidence."

- **Demo audience — still not named.** Until this is named, every interaction-model choice is unanchored.

- **Single LLM constraint — Beth's call or Spec's read of Beth?** Beth said "single LLM connectivity." Scout 01 allows multiple per-agent. Is V1 hiding the per-agent LLM selector (defensible — simplifies demo), or is the architecture itself single-LLM (not what the docs describe)?

- **Is the Value Ledger in V1 or not?** The brief recommends inclusion as `[A]`; the build instructions then include it as screen #9. Either Beth approved it between Gate 2 and "Build instructions" or the brief contradicts itself. This is the single biggest differentiator in the source docs — get a verdict.

### 🟢 Nice-to-have

- **Deterministic Substitution Engine as a meter, not a screen.** Surfacing one line on the Metering page — "12% of inferences substituted, $340 saved" — costs nothing and previews the Layer 6 story.
- **Empty-state for "customer-authored" runbooks.** Seed data has 2 N-able + 2 customer-authored already in the list. The "customer builds their own" story is stronger if the demo *starts* with zero customer runbooks and the demo flow *creates* the first one.
- **Top-10 use case ranking.** Brief flags this as `[?]`. If the ranking has come back from customers, the 5 seeded Coworkers should map to the top 5. If it hasn't, name that the seed list is Spec's pick.

---

## Risk

If this brief ships to build as-is, the prototype will be **technically complete against Beth's 7 requirements and strategically illegible against the source docs.** A critic agent reviewing the build will be able to check off each of the 7 requirements; a demo viewer will leave saying "looks like a nice ops console." The control-plane-as-monetization-spine story will not land. The Coworker builder will look like a settings dialog. The trust-execution level will look like a status badge.

**The fix is not in the build. It's in the brief.**
