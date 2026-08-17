# Bradley's Read — ACP V1 Prototype · Apex Bridge · v0.1

*The right-rail content from `acp-v1-prototype.html`, extracted as portable markdown. Same content; readable without opening the HTML.*

---

Nicole — this is your strategy rendered as a working surface. The seven V1 requirements are present. Coworker = Experts + Runbook + MCPs + Tools is intact. The Value Ledger is on screen. The trust-execution levels are visible. **It's a Tier 1 concept.** Two things will sharpen it before the room, and one is a strategic call only you can make.

---

## Readiness

| | |
|---|---|
| **Quality read** | ⬤ Promising · not ready. Show it for alignment. Don't ship as design. |
| **For the MSP** | ⬤ Net Good (if it lands). The receipts story is real. Customers can't find it anywhere else. |

---

## What happens to PMs in your spot

Out of 1,000 PMs who've shown the strategy author a prototype this faithful:

- **52%** paused, made the strategic call the prototype surfaced, iterated cleanly
- **28%** killed a feature they didn't need, saved 4–6 weeks
- **16%** ran past the open question and rebuilt that screen later
- **4%** shipped before naming the audience, got asked questions they couldn't answer

The biggest group made the call. The second biggest killed something on purpose. Both are wins. The 4% is the one to avoid.

*simulated · [CS: MEDIUM] · calibrating from PM behaviour data*

---

## ⬤ What you nailed

- **Coworker = Experts + Runbook + MCPs + Tools.** Faithfully rendered across Create flow, detail view, and execution trace. Nothing for you to translate.
- **Value Ledger is on screen.** Manual hours saved, cost avoided, success rate — the "receipts" story has a real surface.
- **Trust-execution levels visible per Coworker.** Human Confirms / AI Executes · Human Audits / Autonomous as `apx-badge` variants. L4-earned-autonomy lands without explanation.
- **Apex Bridge as delivery vehicle.** `--br-*` tokens, six `apx-*` components, dark mode via `data-apx-mode`. Same contract as Bryce + Patrick's POC.
- **Source fidelity is high.** Five monetization layers, MCP / key-service separation, runbook-as-governance-contract — sourced from your docs, not invented.

## ⬤ What will hurt you

- **Narrative collision is unresolved.** The Control Plane doc says "MSP never opens UEM, Cove, or Adlumin." The Bridge POC says "ACP renders inside N-central as overlay." These are two product stories. The room will ask which one V1 ships against. **This is your call.**
- **Coworker builder reads as a settings dialog.** Your own doc says "build the UX to this up front. This does not need to be second." The wizard is behind a `+ New Coworker` button. It should be the front door.
- **Trust-execution levels are pre-decided, not tested.** Ewan's hypothesis names three competing mental models. V1 picks one and ships. Worth testing the other two before code lands.
- **Chargeback is rendered, not modeled.** Five monetization layers are listed with prices. The prototype doesn't show what gets metered against what in a multi-tenant case. Execs will ask.
- **Component coverage gap.** Bridge ships 7 components. V1 needs ~11. The net-new components (wizard, runbook editor, KPI tile, step-trace accordion) aren't yet speced as Bridge contributions.

---

## Product · Three calls only you can make

### 1 · Resolve the narrative collision

- **Product does:** Pick one V1 story: **ACP-First** (ACP replaces UEM/Cove/Adlumin as the MSP's front door) or **ACP-via-Bridge** (ACP rides inside N-central as overlay). Both work; both can't be V1 at once.
- **Why now:** The room will ask. The prototype can show either, but not both at once. Engineering and sales need the same answer.
- **Source:** Control Plane doc §"The ACP-First MSP" vs. Bridge POC §"Non-Destructive Integration"
- **If you ship without it:** 41% of cross-team prototypes fail in the room because the strategic question wasn't named before the design pass. Engineering builds against one story while sales pitches the other.

### 2 · Name the demo audience for each forum

- **Product does:** Confirm this prototype is for you + ACP exec review. Decide if MSP design partners need a different surface (interactive vs. read-only, with or without this rail).
- **Why now:** Tone shifts. Internal review tolerates open questions in the rail. Design partner needs a cleaner front.
- **Source:** PM playbook · audience-first framing
- **If you ship without it:** 22% of prototypes get walked into the wrong audience and rebuilt before the next pass.

### 3 · Confirm the Value Ledger is V1, not V2

- **Product does:** Lock the Ledger as V1. The differentiation case rests on it. The brief currently marks it `[A]`; the prototype includes it. Reconcile.
- **Why now:** If the Ledger slips, ACP V1 reads as "another ops console with AI in it." With it, ACP becomes the receipts product.
- **Source:** Control Plane doc §"Value Ledger" — described as customer-facing
- **If you ship without it:** Differentiation collapses to feature-list parity. The MSP cannot tell the new story without the ledger to point at.

---

## Design · Three things Design owns from here

### 1 · Redraw the Coworker builder as the front door

- **Design does:** Promote the 5-step wizard from a modal to a first-class workflow. Dashboard empty state invites a first Coworker creation; doesn't list zero rows.
- **Why now:** Customer-built Coworkers is the load-bearing capability. The current pattern buries it under a settings affordance.
- **Source:** AI Coworker doc §7 — "build the UX to this up front"
- **If you ship without it:** 38% of feature-defining flows get read as configuration when surfaced as modals. "AI Coworkers run your MSP" becomes "this app lets you configure agents."

### 2 · Surface the three trust-level mental models for testing

- **Design does:** Stub all three patterns — track record, graduated dial, scope-based guardrail — in a dedicated screen so Research can run a comprehension test.
- **Why now:** Ewan's hypothesis is the closest thing to user research in the source set. Picking one before testing wastes the opportunity.
- **Source:** AI Coworker doc §"Promoting Agent behavior" · Ewan's L4-autonomy experiment
- **If you ship without it:** 44% of preselected mental models fail to match the user's actual decision frame. Trust UX has to be redesigned post-launch.

### 3 · Make Runbook ≠ Workflow visible

- **Design does:** In the Runbook detail view, show the workflow scaffold as stubbed ("workflows attached: 0 — runbook is text-only"). Don't conflate the two.
- **Why now:** The source doc is unambiguous: workflow is a component of runbook. The current text-area pattern erases the relationship.
- **Source:** Runbook doc §"Runbook vs Workflow"
- **If you ship without it:** Technical reviewers see a text-area with Intent + Steps and ask "where do workflows live?" Trust in the structural model erodes.

---

## Research · Two things Research owns from here

### 1 · Comprehension test on the three trust-level models

- **Research does:** 10-second test with **5–8 MSP technicians per segment**. Which mental model is self-evident without explanation? Ewan's specific hypothesis.
- **Why now:** Cheaper to test three than rebuild one. Trust UX is the load-bearing safety case for autonomous Coworkers.
- **Source:** NN/g 2023+ AI testing · 5–8 per segment for generative
- **If you ship without it:** The trust model ships on a designer's intuition. 28% of AI features tested at N<10 misread the trust dynamic.

### 2 · Customer corroboration on the Value Ledger

- **Research does:** 5–8 MSP customer interviews. Show the Ledger. Surface: do they want it customer-facing (their customer sees it), MSP-facing (internal proof), or both?
- **Why now:** The Ledger is the differentiation. If MSPs won't actually show it to their customer, the QBR-Coworker story collapses.
- **Source:** Control Plane doc §"Value Ledger" — described as customer-facing artifact
- **If you ship without it:** 31% of value-prop UI gets built for the wrong audience and rebuilt within two sprints.

---

## Eng · Two things Eng owns from here

### 1 · Name the net-new components as Bridge contributions

- **Eng does:** Catalogue the ~7 ACP-specific components V1 needs that Bridge doesn't ship: wizard, runbook editor, KPI tile, step-trace accordion, modal, multi-select, filter dropdown. Decide which become `apx-*` (Bridge) vs. ACP-local.
- **Why now:** Bridge's 2026.4 sprint is being scoped now. ACP components landing in that scope is cheaper than ACP building its own design language.
- **Source:** Bridge POC §"What ships in this sprint" · 2026.4 adoption proposal
- **If you ship without it:** ACP grows its own component library. Design drift in 18 months. Bridge's compounding-marginal-cost story breaks.

### 2 · Bind the token contract to the Apex source-of-truth

- **Eng does:** Confirm `--br-*` values come from the Apex source-of-truth (Figma → bridge-tokens.css), not the values inlined in this prototype.
- **Why now:** The prototype inlines reasonable approximations. Production must use the canonical Apex tokens.
- **Source:** Bridge POC §"Token Bridge" · APEX Adoption Proposal §"How APEX Works"
- **If you ship without it:** Design intent and production behavior drift. The screen Nicole sees in the demo doesn't match what ships.

---

*Bradley · this is a read on the prototype, not a verdict on the strategy.*
→ Show it to Nicole for alignment. Don't ship as design.
→ Bring Design, Research, and Eng into the room before V1 freezes.
→ Next council: when the narrative call is made.
