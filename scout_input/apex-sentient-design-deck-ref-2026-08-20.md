# [Apex] Sentient Design — deck (CAPTURED)

**Type:** Figma deck (N-able Apex design reference), ~18 slides
**URL:** https://www.figma.com/deck/QpJHSVigbT2ojENowFWCY9/-Apex--Sentient-Design?node-id=1-1109
**Read:** 2026-08-20 via Figma desktop MCP (get_screenshot; browser/connector were logged-out — desktop bridge worked). `[CS: VERIFIED — read off the rendered slides]`
**External credit:** "Sentient Design" and the shape-of-sentient-design triangle are Josh Clark & Veronika Kindred, Big Medium (bigmedium.com/ideas/shape-of-sentient-design.html). The Apex application of it is N-able's.

## The thesis
"How can Apex evolve to support generative experiences?" — the role of a **design system** in the era of Sentient Design.
- **Sentient Design** (Clark/Kindred): "intelligent interfaces that are aware of context and intent so they can be radically adaptive to user needs in the moment." Two attributes: **aware** + **radically adaptive**.
- Successful bespoke UI relies on familiarity + a tightly constrained set of patterns. Without the ability to adapt, everyone gets a subpar experience.
- The pivot question: **"What's the best *component* to display this data?" ≠ "What's the best *experience* for this user?"**
- **Directive UI** (navigate to → take action → navigate to next) vs. **Intent-Based UI** (user states a goal → AI reads intent → AI composes a surface).

## The shape of Sentient Design (triangle)
Three corners: **Grounded** (accurate/reliable) · **Interoperable** (works across systems) · **Radically adaptive** (conceived + delivered in real time). Edges: Autonomous · Iterative · Collaborative. Four zones with sub-patterns: **Tools** (dedicated / workflow / inline), **Copilots** (stewards, taskers, alchemists, conductors), **Agents** (bespoke UI, intelligent canvas, NPCs, assistants, characters, sculptors), **Chat**. → an EBR *coworker* sits in the Copilots/Agents band.

## The operating model — the important part for us
Generative UX in Apex = **Product Primitives × Surfaces, composed by AI from Intent signals**, governed by States and Relationships.

1. **Product Primitives** — the objects users create/manage: **Customer, Policy, Device, Audit Log**. Each has a defined *anatomy, lifecycle states, relationships, and render rules* for how it appears across surfaces.
2. **Surfaces** — context-aware containers that adapt a primitive's presentation to the user's intent, instead of fixed page layouts. Types (each defined): **List, Table, Card, Dialog (confirmation), Form, Canvas**. Same object appears differently depending on what the user is trying to accomplish.
3. **States & transitions** — what can/can't happen (e.g. a Policy can't be deleted if assigned to devices). Lifecycle: Draft → Active → Assigned → Archived → Deleted, with allowed/blocked rules. The AI uses current state to decide which surfaces/actions/labels are appropriate.
4. **Relationships** — what an object connects to (Policy → Device, Policy → Customer), cardinality, upstream/downstream — determines what related entities appear alongside.
5. **Intent signals** — the map that teaches the AI which surface to render for a natural-language query, each pairing a **query pattern → surface → confidence score**. Examples (paraphrased): "show me all policies created by [user]" → Table (0.86); "open [policy]" → Canvas (0.97); "assign this policy to [device/customer]" → Dialog (0.91); "summarise this policy" → Card (0.74). **Below 0.80 = ambiguous → render the most likely surface but expose an affordance to switch.**

(Illustrative example intents in the deck are N-able-flavoured — device-replacement-by-MRR, "Data Protection Gold plan," anomaly review. Placeholder seed names generalised here.)

## Why it matters for the EBR coworker (the direct hit)
This is Apex's own answer to "it's still UX, just not trad wires." The EBR coworker's **output contract is not a bespoke screen** — it is:
- the **primitives** it works over (Customer, Device, Policy, Audit Log — plus whatever EBR-specific primitive the review needs),
- the **surfaces** it composes them into (List/Table/Card/Dialog/Canvas),
- the **intent-signal map** (operator query/goal → surface, with confidence),
- governed by **states + relationships**.

So the Delta/Chooser/Test screens were reference consumers; the real ux.md output-contract section is: which primitives, which surfaces, the intent→surface map, the confidence-and-switch rule. The confidence-score + "expose an affordance to switch below 0.80" pattern maps cleanly onto our chooser-shaped / defensibility-tier discipline. Build the EBR coworker's output contract *in this model*.
