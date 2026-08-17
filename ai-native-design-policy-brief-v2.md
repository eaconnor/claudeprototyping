# AI-Native Design Policy

### A working brief — v2

*[imitation, pattern-matched to corpus]*

*Compost, not seed. The ingredients for a policy this organization will write itself, organized so design, product, engineering, and leadership can all find their part. The May 2026 orientation brief, merged with the spec-driven design framework that has emerged since.*

---

## How to read this

This is not the policy. It is the material a policy gets composted from. Eleven sections, each tagged for audience so anyone can navigate to their part. Questions are embedded throughout — designed to surface positions in a workshop or exec session without requiring prep work.

The premise of the brief in one sentence: in an AI-native cybersec organization, design exists to prevent the specification from being empty. Without grounded specs, AI-accelerated development ships hallucinations at industrial speed. The rest of this document argues that point and proposes a working operational model for it.

Audience tags used throughout: `[ALL]` `[DESIGN]` `[PRODUCT]` `[ENGINEERING]` `[EXEC]`.

You can read this end to end (~25 minutes), skim by tag (~5 minutes per role), or take just Sections 3 and 5 and try them on one project this month.

---

## 1. The fork — three documents pretending to be one  `[ALL]`

"AI-native design policy" gets conflated. It is three documents. Pick one as the spine. Borrow from the others.

**Operational** — *how the team works.* What goes in Figma, what goes in Control Tower, what goes in code, where AI sits in the loop, what gets reviewed by whom, what counts as ready for engineering. A handbook. Audience: design team, engineering, eng managers.

**Architectural** — *why the design system is the contract.* The argument that tokens, slot components, semantic naming, and a machine-readable spec aren't aesthetic preferences but the substrate that makes AI-assisted production *not unsafe* in cybersec UI. Audience: engineering leadership, CTO, anyone signing off on tooling.

**Positional** — *what AI-native design means here.* A point of view: where the line is between AI-accelerated work and AI-substituted work, what the product won't do, what regulators will eventually ask, where the team's competitive edge actually lives. Audience: exec, board, investors, future hires, possibly customers.

This brief favors the operational spine, with architectural and positional material woven in. The reasoning: in a young organization with no shared scaffolding, you start with the practice, not the philosophy. The policy emerges from what the team actually does.

**Question:** Which of these three documents does this organization most need first?

---

## 2. The argument: why this matters now  `[ALL]`

The double diamond is a multi-stage rocket. Most of what you launch with is fuel — research, interviews, personas, journey maps, sticky notes — and most of it gets burned off at every handoff. By the time something ships, the user in the room has been replaced by someone's interpretation of someone's interpretation of the user. The thing in production traces back to almost none of what you started with.[^1]

In an AI-native organization, this gets worse, not better. Generation is fast. Hallucination is fast. A made-up user need in a strategy brief becomes shipped code in thirty seconds. The faster the org ships, the more violently the signal loss compounds. Studies suggest roughly 45% of AI-generated code contains security vulnerabilities.[^2] In cybersec, that's not a quality issue — it's a compliance issue.

Three external pressures make this load-bearing now, not later:

The EU AI Act becomes enforceable on August 2, 2026. For high-risk systems — and cybersec UI that makes decisions impacting users probably qualifies — there are roughly 34 documentation and audit requirements. Logging must be built in from the start, not retrofitted.[^3]

Tool capability is changing weekly. Figma MCP, slot components, Claude Code, OpenSpec — the surface for AI-native design is being defined in real time. Decisions made today have a six-month shelf life, but waiting for stability means losing the strategic window.

Internal pressure from spec-driven engineering culture. Product is already obsessed with spec-driven design. Without a spec-driven design layer that matches, design risks being squeezed into a downstream decoration role instead of an upstream decision role.

**Question:** Which of these three pressures is loudest in this organization right now?

---

## 3. The three gates — how spec-driven design actually works  `[DESIGN] [PRODUCT] [ENGINEERING]`

Spec-driven design organizes around three questions. They function as gates, not phases — you can fail any of them retroactively.

**Gate 1 — Do we understand the customer problem?** Is the problem real and sourced, or assumed?

**Gate 2 — Are we making the right thing?** Does this advance the mission? What outcome moves?

**Gate 3 — Are we making the thing right?** Tested how? By whom?

Each gate has a specific failure pattern and a specific test:

Gate 1 fails when claims are asserted instead of sourced. The test is evidence tagging — every claim labeled `[R]` (research), `[D]` (data), `[A]` (assumed), or `[?]` (unknown). If more than 30% of tags are `[A]` or `[?]`, the brief isn't at 30% complete.

Gate 2 fails when the solution isn't traceable to the problem. The test is the idea score — a 1-to-5 rubric across problem severity, solution uniqueness, market relevance, and mission alignment. Below 12, reconsider.

Gate 3 fails when there's no test protocol or no defined success metric. The test is the bullshit detector — a pre-flight check that runs before automation: every number sourced, every user claim grounded, failure modes named, OKR metric measurable.

The brief lives in the repo as a `.brief.md` file with YAML frontmatter (machine-readable, agent-readable) and Markdown prose (human-readable). One file, two views. Control Tower can read the frontmatter; designers and PMs read the prose. Same source, no sync problem.

A single illustrative frontmatter example:

```yaml
---
feature: "Anomaly Detection Alert Triage"
gate: 30
owner: "Design"
problem_statement: "SOC analysts cannot prioritize alerts because severity scoring is opaque, causing delayed response on real threats."
okr_objective: "Reduce mean time to triage critical alerts"
okr_key_result: "MTTT < 8 minutes by Q3"
counter_metric: "False positive rate must not exceed 4%"
idea_score: 14
detector_score: 4
evidence_sources: ["analyst interviews 2026-04 (n=12)", "Q1 alert response data", "incident retro 2026-03-18"]
status: "draft"
---
```

The prose below the frontmatter expands the problem statement, names failure modes, defines the test protocol. Agents read the frontmatter as context. Humans read the brief.

**Question:** Which gate does this organization currently fail at most often?

---

## 4. What still has to be human  `[ALL]`

This is where most AI-native discourse goes vague. Specifically:

Things AI is structurally good at: pattern matching across large corpora, generating plausible code from clear specs, extending existing patterns, parsing intent from natural language, detecting drift from defined standards.

Things AI is structurally bad at: knowing what is true about a specific user, distinguishing real evidence from fluent assertion, deciding what matters when multiple things matter, holding context across long projects, refusing tasks on principle.

The function that owns "what is true about the user" is not engineering, not product, not AI tooling. It is design and research. This is structural, not turf:

The PM cannot detect hallucination in the user-needs section because the PM does not have the user data. The engineer cannot detect hallucination in the user-needs section for the same reason. The AI cannot detect its own hallucination — that is its definitional limit. The designer can. The researcher can. They have the actual evidence to push back on assertions.

This is why design exists in an AI-native organization. Not to make prettier interfaces faster. To be the function that prevents the spec from being empty. Without design owning Gate 1, the spec is theater. With design owning Gate 1, the spec carries real research forward into the agent's context. The shipped product is traceable to the user need.

Design's value here is not aesthetic. It's epistemic. Designers are the keepers of "what's actually true about the user." That truth is the only thing standing between this organization and shipping confident hallucinations at industrial speed.

The other thing humans hold: the refusal. The decision to not ship something that would technically work but should not exist. AI accelerates outputs; it does not generate refusals. The director's oath, the willingness to say "we will not build that here, even if we could," is exclusively human territory.[^4]

**Question:** Where in the current process does the user evidence go to die?

---

## 5. The tool stack  `[DESIGN] [ENGINEERING]`

What the team actually uses, and what each tool is for.

**Research and evidence:** Control Tower as the "A-end" of the spec workflow — research and data go in, structured evidence comes out, populates brief frontmatter.[^5]

**The brief:** `.brief.md` files in the repo. YAML frontmatter for machine-readable metadata. Markdown prose for human-readable narrative.

**Spec sessions:** The Band — multi-persona session scaffold from prior internal work. Three modes: George (witnesses problem statements without synthesizing, asks one question), Paul (editorial mirror, refines the brief), Tech (executes — runs the auto-scorer, generates artifacts).

**Engineering specs:** OpenSpec or equivalent — brownfield-first spec tooling that works with the existing Angular codebase.[^6] Design briefs feed into OpenSpec proposals. Both live in the same repo.

**Build:** Figma + slots (open beta since March 2026)[^7] for design composition. Figma MCP server → Claude Code, pointed at the real Angular codebase and Storybook component library. Storybook as the component source of truth.

**Not Figma Make:** It outputs React/Tailwind on a generic design system, and Make kits are React-only.[^8] Wrong framework for an Angular shop, wrong economics for sustained iteration (3,000 credits per Full seat per month, ~75 credits per "make this interactive" task, every refinement charged in full).[^9] Make remains useful as a sketchpad for product where the job ends at the prototype, but it is not a production input for the design team.

**Verify and archive:** Auto-scorer (built on Control Tower) reads briefs and returns a score plus issue list — a linter, not a gatekeeper. OpenSpec verify checks code against spec. Archive: brief merges into living spec; Control Tower tracks institutional memory.

**Note on Claude Code seats:** Design has not yet been provisioned. The work is currently happening on personal accounts because the value was clear enough that people built the workflow ahead of procurement. Three explicit seat requests in the past week — concrete, recurring demand, not theoretical.

**Question:** Which tool in this stack is missing for this team, and which one is doing too much?

---

## 6. Camps actually arguing about this  `[ALL]`

Five visible positions on AI-native design, each with adherents and tradeoffs. None is wrong; they're optimizing for different things.

**Spec-first** (the OpenSpec / Erica Flowers / Investiture Framework camp). The spec is the source of truth, machine-readable, lives in the repo. Code is derived. Tradeoff: more upfront time, less rework, only works in mature codebases.

**Make-first** (Figma Make / Lovable / v0 / Claude Design). Generate a working prototype from a prompt; design system contextualizes the output. Tradeoff: fast for ideation, wrong-framework output for non-React shops, credit-metered iteration.

**Native prototyping** (slots + variables + interactive components inside Figma). Use the design tool's expanding capabilities to prototype with high fidelity, no AI spend. Tradeoff: still beta, doesn't generate code, demands a strong design system.

**Bespoke UI / sentient design** (Josh Clark and Veronica Clark, "Sentient Scenes," Rosenfeld 2025).[^10] The designer designs the rules; the system generates the interface in real time based on context and intent. Tradeoff: experimental, requires sophisticated design system and strong evals.

**Compliance-first** (Pat Bertini's framing). Design for human oversight, audit trails, and accountability from the start. Treat compliance as a product feature, not an add-on. Tradeoff: more documentation overhead, becomes a moat in regulated markets.

This brief recommends a hybrid: spec-first as the operational backbone, native prototyping inside Figma for high-fidelity validation, MCP→Claude Code for code generation, compliance-first as the architectural posture. Make remains a sketchpad for product but is not a production input for design.

**Question:** Which camp is engineering culture closest to today? Where is design closest?

---

## 7. Live examples to point at  `[EXEC] [ALL]`

Patterns and case studies that show what the structural choices look like in practice.

**What works:**

Anthropic. Public Benefit Corporation structure with a long-term benefit trust. Mission-aligned to the point that decisions about model release defer to safety even at significant revenue cost. Velocity from mission alignment, not despite it.[^11]

Figma slots in open beta since March 2026. Native composition pattern that mirrors React `children` and Angular `<ng-content>`. Reduces variant explosion, aligns design library with code.

Cloudflare's "make a better internet" mission as a velocity driver. The example: giving away SSL encryption when it was the most profitable upgrade product. The decision was easier because the mission was clear; the long-term outcome was a $70B company built on trust.[^12]

**What fails:**

Vectura. Acquired by Philip Morris despite public outcry. The board's "fiduciary duty" framing, defended by their own legal documents, made the sale legally unavoidable. The acquirer wrote down the company within three years.

UnitedHealthcare's claims chatbot. 90% error rate, no human oversight, patient harm before anyone intervened.[^3] The model that comes for cybersec UI if oversight isn't designed in from the start.

Amazon's recruiting AI rejecting CVs based on age and gender. Bias from historical training data, no parity testing.[^3]

**The pattern:** companies that survive AI-native pressure do so through structural choices made early — mission protective provisions, governance fortresses, compliance-as-feature, design as the function with veto over unverified assertions. Companies that fail do so because no one had the structural authority to refuse the path of least resistance.

**Question:** What is this organization's structural defense against the path of least resistance?

---

## 8. The role: design's place in this  `[DESIGN] [EXEC]`

The team's existence in an AI-native cybersec organization is justified by one structural fact: design is the only function with the user evidence required to detect hallucination in the strategy layer.

Other functions can speed up output. Design is the function that ensures the output is grounded.

What this looks like in practice:

Design owns Gate 1 — the user problem statement and evidence tagging. Research owns the data behind Gate 1 — interviews, surveys, behavioral analytics, synthesis. Design and research jointly run the bullshit detector — the pass that flags unverified claims before automation. Design contributes to Gate 2 (mission alignment) and Gate 3 (test protocol) but does not own them. Engineering owns the architecture decisions that flow from the spec. Product owns the product — the strategic frame and the OKRs.

The team's daily work shifts: less time translating PM briefs into mockups, more time validating problem statements, designing test protocols, working with agents through the MCP context to generate against real evidence. The aesthetic work continues but is no longer the primary value.

**The role to write yourself into:** something closer to *head of design integrity* than head of design in the traditional sense. Owns the practice of spec-driven design across the organization. Defines the brief template, the gates, the auto-scorer rubric. Trains product and engineering to work within the practice. Reports on spec quality (sourced vs. asserted ratio, idea scores, detector pass rates) as a leading indicator of shipped quality. Sits at the table with engineering leadership, product leadership, and AI governance.

This is provocative on purpose. The conventional version is "head of design and research with explicit ownership of evidence integrity." The strong version names the work that is actually structural.

**Question:** What is the headline metric this role would report on to leadership?

---

## 9. Questions for collaboration  `[ALL]`

Designed to surface positions in workshop or exec session without requiring prep:

**For design:** Where in our current process does user evidence go to die? Which gate are we currently failing at most often? What would change if design owned Gate 1 explicitly?

**For product:** What does a sourced strategy brief look like in our context? Which OKRs are we currently moving on assumption? What's the cost of waiting another quarter to introduce evidence-driven practice?

**For engineering:** What would it cost to introduce OpenSpec or equivalent on top of the existing codebase? Where do we already have Code Connect / Storybook coverage that could feed an MCP context? What's the audit-trail story for a high-risk feature today?

**For exec leadership:** What is our exposure on the EU AI Act enforcement date (August 2, 2026)? What is our structural defense against the path of least resistance? Where would we rather be exceptional than fast?

**For all:** What are we already doing that we should formalize? What are we already doing that we should stop?

---

## 10. Limits of this brief  `[ALL]`

Honest list of what this brief does not cover and where it is likely to age fastest:

The tooling surface (Figma MCP, Claude Code, OpenSpec, slots) is changing weekly. Operational specifics have a six-month shelf life.

The EU AI Act enforcement details may shift between now and August 2, 2026; verify against current guidance before implementing high-risk system changes.

The brief assumes design and research are functionally combined or tightly integrated. If they are split, the Gate 1 ownership question becomes a coordination problem between teams.

The cybersec context is named but not deeply explored — threat modeling, security review, and compliance review processes are not mapped to the spec workflow yet. That belongs in a follow-up.

The financial argument (cost of seats, cost of compliance overhead, cost of rework avoided) is not modeled. That belongs in a separate document for finance.

The brief takes a position that may not survive contact with the organization. The role of "head of design integrity" in Section 8 is provocative on purpose; the conventional version is included alongside.

The May 2026 orientation brief had additional sources and angles (governance landscape, role variants in market, compensation bands) that are not fully merged here. Those should be pulled in for an exec-facing version.

---

## Sources

[^1]: Erica Flowers, "The Handoff is Dead: Design-Led Engineering with AI Agents," Rosenfeld Community, March 4, 2026.

[^2]: Zarar Siddiqi, "Spec-Driven Development: From Vibe Coding to Structured Development," Bit Byte Bit, February 25, 2026.

[^3]: Patrizia Bertini, "Designing Within the Lines: How the EU AI Act Can Spark Better AI Innovation," Rosenfeld DesignOps Community, December 11, 2025.

[^4]: Eric Ries, *Incorruptible: Why Good Companies Go Bad and How Great Companies Stay Great*, May 2026. Director's oath concept and "harder is easier" framing.

[^5]: Internal — Control Tower; not externally documented.

[^6]: OpenSpec by Fission AI. Brownfield-first spec tooling for existing codebases. See Siddiqi (2026) for workflow detail.

[^7]: Figma slots open beta release, March 5, 2026. See Figma blog and Figma Help Center documentation.

[^8]: Figma Help Center, "Use your design system package in Make kits": "Make kits currently only support codebases that are written in React."

[^9]: Figma Help Center on AI credits and forum threads on enforcement (Full seat enforcement began March 18, 2026; pay-as-you-go at $0.03/credit).

[^10]: Josh Clark and Veronica Clark, "Sentient Scenes and Radically Adaptive Experiences," Designing with AI 2025, Rosenfeld Media, June 11, 2025.

[^11]: Eric Ries, *Incorruptible* (2026); also Lenny Rachitsky podcast interview with Eric Ries, 2026.

[^12]: Eric Ries, *Incorruptible* (2026), Cloudflare case study.

*Additional sources from the May 2026 orientation brief — including governance landscape, AI role descriptions, and Anthropic engineering on AI-resistant evaluations — should be merged into the next revision.*

---

*End of brief, v2.*
