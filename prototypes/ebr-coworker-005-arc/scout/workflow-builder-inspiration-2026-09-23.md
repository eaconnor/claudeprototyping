# Scout: flow/workflow-builder UI pattern inspiration
Pulled 2026-09-23. Read-only web scout. No synthesis — Beth assembles.
Context: moodboarding for the flow-building/workflow-orchestration screens in ebr-coworker-005-arc (Harness). New bucket — does not repeat onboarding-and-governance-viz-inspiration-2026-09-03.md (fTUX / permission-graph / object-nav buckets already covered there).

---

## FLAG BEFORE ANYTHING ELSE — "Meta Muse"

Beth named Meta Muse as a starting point. Researched directly rather than assumed.

**What "Meta Muse" actually is, confirmed:** Meta's consumer personal AI **agent** product, launched publicly **September 8, 2026**, running on the "Muse Spark 1.3" model. It acts inside a user's connected accounts — opens a browser, fills forms, sends email, books travel, pays bills — given a plain-language goal. Available as its own iOS/Android app, on the web, and in WhatsApp. US-only, 18+, launched 2026-09-08.
[CS: HIGH] — corroborated by an independent outlet and Meta's own product pages
- CNBC — "Meta's Muse AI agent downloads are surging" — https://www.cnbc.com/2026/09/21/meta-muse-personal-ai-agent-downloads.html
- Meta — https://ai.meta.com/muse/ and https://ai.meta.com/muse/download/
- MarkTechPost — https://www.marktechpost.com/2026/09/08/meta-introduces-muse-a-personal-ai-agent-that-runs-on-its-own-dedicated-secure-cloud-computer/

There is a **separate** Meta developer product called **Muse Code** — an agentic coding tool where a "Workflow" feature lets a user orchestrate a team of subagents (parallel review/build agents) from what Meta describes as "one control room." This is closer to a flow-orchestration concept than the consumer agent app, but it is a multi-agent task-delegation feature inside a coding tool, not a visual node/canvas builder.
[CS: MEDIUM] — vendor blog + one third-party explainer, no independent UX teardown found
- Meta AI Research — "Introducing Muse Spark 1.3" — https://research.meta.ai/blog/introducing-muse-spark-1-3
- explainx.ai — "Muse Code Out of Beta — Workflows, SDK" — https://www.explainx.ai/blog/meta-muse-code-out-of-beta-multi-agent-workflows-september-2026

**What I could not find:** any Meta product or internal design tool called "Muse" that is a visual node/canvas workflow-builder in the n8n sense (drag nodes, draw connections, branch/error paths). Note also that a *different* company's "Muse" — Microsoft Research's generative game-world model (WHAM/Ninja Theory collab) — turns up heavily in search and is unrelated to Meta; do not conflate the two if this shows up again in later passes.
[CS: UNKNOWN] — if Beth meant something else by "Meta Muse" (an internal tool she's seen directly, a Figma/FigJam-adjacent prototyping tool, something pre-2026-01 cutoff not surfacing in search), say so — do not let me backfill a plausible-sounding description. Flagging the gap rather than guessing is the correct output here.

---

## BUCKET 1 — n8n canvas: nodes, connections, branching, error state

1. **n8n's own docs — canvas mechanics**
   [CS: HIGH] — vendor documentation, direct
   - Source: "Navigating the editor UI" — https://docs.n8n.io/courses/level-one/chapter-1/ ; DeepWiki reverse-engineered architecture notes — https://deepwiki.com/n8n-io/n8n/6-user-interface and https://deepwiki.com/n8n-io/n8n/6.2-workflow-canvas-and-node-management
   - Claim: canvas is an infinite pannable/zoomable grid; nodes are dragged from a side panel; data flows strictly left-to-right along connector lines; toolbar buttons handle zoom-to-fit, tidy-up (auto-layout), and adding sticky notes directly on the canvas as in-context documentation.
   - Relevance: the "tidy up" auto-layout button and canvas sticky-notes are both small, concrete affordances worth screenshotting directly — auto-arrange for a build-out mid-review, sticky notes as inline annotation on an EBR flow.

2. **n8n branching — visual, not nested-conditional**
   [CS: MEDIUM] — n8n's own community/docs content, cross-referenced across several third-party explainers, no single canonical source
   - Sources: "n8n IF Node: Conditional Logic and Branching" — https://www.emilingemarkarlsson.com/blog/n8n-if-node-conditional-logic-branching ; n8n community threads on Error Trigger/branch behavior — https://community.n8n.io/t/psa-n8ns-continue-on-fail-silently-swallows-node-errors-your-execution-log-lies-to-you/295140
   - Claim: branching (IF/Switch nodes) draws as multiple lines fanning out of one node rather than nested if/else text — the claimed UX win is that alternate execution paths are visible at a glance instead of requiring the reader to trace logic mentally.

3. **n8n error handling — dedicated Error Trigger node + per-node "Continue On Fail" toggle + error branches**
   [CS: MEDIUM] — consistent across multiple independent community/blog sources, but no single n8n-authored canonical writeup found (attempted, docs.n8n.io/flow-logic/error-handling/ 404'd on fetch)
   - Sources: DEV Community — "n8n Error Handling Best Practices" — https://dev.to/ciphernutz/n8n-error-handling-best-practices-stop-letting-silent-failures-break-your-business-1j8h ; flowgenius.in — "n8n continue on fail" — https://flowgenius.in/n8n-partial-failure-handling/ ; n8n community forum (includes a documented UX complaint, not just praise) — https://community.n8n.io/t/psa-n8ns-continue-on-fail-silently-swallows-node-errors-your-execution-log-lies-to-you/295140
   - Claim: a dedicated **Error Trigger** node catches unhandled failures anywhere in the instance and routes them to a separate error-handling workflow; individual nodes have a "Continue On Fail" toggle that lets execution proceed past a failed node with an error object instead of halting; some nodes support a distinct error **output branch** as a fallback path (write to an error table, fall back to an alternate source, skip a non-critical step).
   - Named tension worth carrying into a Harness design: a live community complaint that "Continue On Fail silently swallows node errors" — i.e. the execution log can visually read as clean when a step actually failed. Real failure mode of this pattern, not just a strength.
   - Relevance: direct precedent for an EBR/Harness flow needing an explicit "what happens when a step fails" visual state, and a documented cautionary case for why silent-continue needs to be visually loud, not quiet.

4. **n8n UI/UX write-up (third-party, not n8n-authored) — verified by direct fetch**
   [CS: LOW] — independent blog, but unclear editorial authority/authorship; content itself is plausible and consistent with docs but the site is SEO/ad-monetized, not a named designer's teardown
   - Source: "n8n UI/UX Deep Dive: How Thoughtful Design Streamlines Visual Automation" — https://n8n.spot/n8n-ui-ux-deep-dive-how-thoughtful-design-streamlines-visual-automation/
   - Claim: connecting lines are framed as the literal representation of data movement; canvas prevents invalid node-to-node linkages at the connection-drawing stage rather than failing at runtime; real-time run view highlights data moving through nodes plus execution status per node.
   - Not found: no "Show HN" thread, no named-author UX case study, no official n8n design-team blog post on canvas/branching/error-state design was located in this pass. Say so rather than imply one exists.

5. **Underlying engine — React Flow / xyflow**
   [CS: HIGH] — vendor (xyflow) + independent library review agree
   - Sources: xyflow — https://reactflow.dev/ and https://github.com/xyflow/xyflow ; curated list of node-UI products built on it — https://github.com/xyflow/awesome-node-based-uis ; Velt — "React Flow Guide: Advanced Node-Based UIs" — https://velt.dev/blog/react-flow-guide-advanced-node-based-ui
   - Claim: React Flow/xyflow is cited as underlying infrastructure for node-based workflow editors "similar to Zapier, Retool, or n8n" — each node renders as a real component (inputs, dropdowns, etc. inside the node itself), with out-of-box zoom/pan/minimap/multi-select. Whether n8n itself specifically uses this library is not directly confirmed in this pass — the claim is about the pattern category, not a confirmed n8n dependency.
   - Relevance: if Harness prototypes ever need a working (not just static) flow canvas, this is the real open-source substrate multiple competitors build on — a build-stage reference, not just a moodboard image.

---

## BUCKET 2 — Comparable flow/workflow-orchestration UI tools

6. **Zapier Canvas**
   [CS: HIGH] — vendor blog/docs, multiple posts, internally consistent
   - Sources: "Zapier Canvas: Diagram, plan, and automate systems with AI" — https://zapier.com/blog/zapier-canvas-guide/ ; "Zapier Canvas: An AI-powered diagramming tool for workflows" — https://zapier.com/blog/zapier-canvas-open-beta-release/ ; https://zapier.com/canvas
   - Claim: Canvas is explicitly framed as a "bird's eye view" diagramming layer *above* individual Zap workflows — shows how workflows, apps, data, and teammates tie into one process, distinct from the linear Zap editor itself. Dec 2025 update added pasted/drag-drop image support directly onto canvas nodes (screenshots, reference diagrams).
   - Relevance: direct precedent for a **two-layer model** — a diagram/planning layer above the step-by-step builder — which maps onto an EBR flow that has both "the whole review process at a glance" and "the individual step being configured."

7. **Make (formerly Integromat) — Scenario Builder**
   [CS: MEDIUM] — consistent across several independent review/comparison sites, no single canonical source, some are SEO-oriented "tool review" content rather than UX-focused
   - Sources: Tallyfy — https://tallyfy.com/what-is-make/ ; flowdevs.io comparison — https://www.flowdevs.io/blog/post/microsoft-power-automate-vs-make-integromat-a-user-experience-comparison-from-beginner-to-pro
   - Claim: non-linear canvas (vs. n8n/Zapier's more linear left-to-right emphasis) — a "Router" module lets one module split into multiple drawn branches directly on canvas; live runs show animated "data bubbles" traveling along the connection lines in real time, distinct from n8n's static post-run highlighting.
   - Relevance: the live animated data-bubble-on-the-wire pattern is a specific, describable visual device for "show me the review actually moving through its steps right now" — worth flagging as a distinct option from n8n's approach, not just "another canvas tool."

8. **Retool Workflows (Workflow IDE)**
   [CS: HIGH] — vendor docs, direct; one independent GitHub PR discussion corroborates a known weakness
   - Sources: Retool Workflow IDE docs — https://docs.retool.com/workflows/concepts/ide ; Retool — "Reimagining the Retool IDE" — https://retool.com/blog/reimagining-the-retool-ide
   - Claim: four-zone IDE layout — canvas (build), left panel (blocks/functions/triggers/code libraries), status bar (environment + debug), toolbar (rename/run/publish). Canvas offers a toggle between **Graph view and Tree view** (horizontal vs. vertical layout of the same workflow) plus a minimap for panning.
   - Named weakness, independently sourced: a third-party review explicitly notes the canvas "becomes difficult to navigate" as node count grows — a documented scaling problem for this UI pattern, not vendor-claimed.
   - Relevance: the Graph/Tree view toggle for the *same underlying flow* is a concrete, transferable idea for an EBR review that different stakeholders might want to read as a sequence (tree) vs. a map (graph).

9. **LangGraph Studio (LangChain) — agent-graph IDE**
   [CS: MEDIUM] — vendor blog is the strongest single source; several independent tutorial write-ups corroborate feature descriptions but at varying depth
   - Sources: LangChain — "LangGraph Studio: The first agent IDE" — https://www.langchain.com/blog/langgraph-studio-the-first-agent-ide ; DataCamp — https://www.datacamp.com/tutorial/langgraph-studio ; docs — https://docs.langchain.com/langsmith/studio
   - Claim: live graph updates as code/config changes — the visualization is described as staying in sync with the underlying graph definition in real time, not a static diagram drawn once. Ships a "time travel" / step-through debugging mode: pause execution at any node, inspect state, and step backward to an earlier point in the run.
   - Relevance: closest match found (of all tools scouted) to an EBR/automation use case that is explicitly agent-orchestrated rather than plain if/then automation — "time travel" through a run is a distinct pattern from n8n/Make's re-run-from-scratch model, and maps to reviewing what a Harness coworker actually did step by step after the fact.

10. **Temporal UI — Timeline / Event Groups**
    [CS: HIGH] — vendor's own design-rationale blog posts, unusually candid about UX tradeoffs made (not just feature list)
    - Sources: "Workflow visualization with Temporal's Timeline View" — https://temporal.io/blog/lets-visualize-a-workflow ; "Redesigning Workflow experience with Temporal's New UI" — https://temporal.io/blog/the-dark-magic-of-workflow-exploration
    - Claim: raw event history (every low-level event) is deliberately collapsed into "Event Groups" — e.g. three raw events (ActivityTaskScheduled/Started/Completed) render as one summarized row spanning the activity's duration, with exact start/end/duration on hover. Explicit design goal stated by Temporal: give a fast, accurate picture without forcing the reader through every raw event.
    - Relevance: this is the strongest sourced example of "collapse noisy execution log into human-legible summary rows" — directly relevant if an EBR flow's execution/audit view risks becoming a raw log dump.

11. **Apache Airflow — Grid view + Graph view**
    [CS: HIGH] — Airflow's own docs + an open, ongoing GitHub UX discussion thread (unusually direct evidence of real design debate, not marketing)
    - Sources: Airflow UI docs — https://airflow.apache.org/docs/apache-airflow/stable/ui.html ; Astronomer — "An introduction to the Airflow UI" — https://www.astronomer.io/docs/learn/airflow-ui ; GitHub design discussion — https://github.com/apache/airflow/discussions/50492
    - Claim: two distinct, historically simultaneous views of one DAG — **Grid** (columns = runs over time, cells = task-instance status, color-coded) for "how has this process performed across runs," and **Graph** (nodes = tasks, edges = dependencies) for "how is this process structured." Airflow 3 made Grid and Graph mutually exclusive rather than side-by-side after user research found people navigate each independently and wanted more room, not a split view.
    - Relevance: the Grid-view idea — one axis literally being "run history over time," color-coded per step — is a strong candidate for an EBR product's "how has this review process performed across past business reviews" surface, distinct from the flow-authoring canvas itself.

12. **Windmill** — code-first flow orchestrator, positioned as open-source Retool/Temporal alternative
    [CS: MEDIUM] — vendor docs + GitHub README, no independent UX teardown found
    - Sources: https://www.windmill.dev/docs/intro ; https://github.com/windmill-labs/windmill
    - Claim: flows are built from real scripts (Python/TypeScript/Go/Bash/SQL) chained with order/rules, buildable either through a low-code visual builder or directly in YAML — positioned as a dual-mode (visual + code) authoring model rather than visual-only.
    - Relevance: minor — flagging the visual/code dual-authoring toggle as a pattern, not recommending the tool itself; sourcing here is thinner than items 6-11.

13. **Flowise** — visual canvas specifically for LLM/agent pipelines
    [CS: LOW] — only comparison-site sourcing found (composio.dev, futureagi.com — both appear to be "alternatives" SEO content, not independent UX reviews); no vendor design writeup or independent teardown located
    - Source: futureagi.com — "Best 5 Flowise Alternatives 2026" — https://futureagi.com/blog/best-flowise-alternatives-2026/
    - Claim: three authoring modes at increasing complexity — Assistant (simple agent), Chatflow (single-agent/chatbot), Agentflow (multi-agent) — same canvas, different complexity tiers exposed progressively.
    - Flagging as thin-sourced; do not cite Flowise specifics beyond this without direct product verification.

---

## BUCKET 3 (bonus, as requested) — Business-review-specific tools (closest domain match, none are visual flow-builders)

14. **Gainsight CS — Success Snapshots**
    [CS: MEDIUM] — vendor support docs + vendor blog, no independent teardown, no screenshots seen (search returned descriptive text only)
    - Sources: https://support.gainsight.com/gainsight_nxt/Success_Snapshots/About/Overview_of_Success_Snapshots ; https://www.gainsight.com/blog/how-to-conduct-effective-quarterly-business-reviews-qbrs/
    - Claim: admin uploads a PowerPoint/Google Slides template, tags it with dynamic-data tokens and report bindings, publishes it to a repository; a CSM then exports a populated deck per account directly from the customer's 360 page. This is a **template + token-binding** model, not a node/flow canvas — the "workflow" is upload-once/generate-many, no visual sequencing UI found.
    - Relevance/gap: confirms the QBR/EBR software category is dominated by deck-templating and dashboard automation, not flow-canvas UI — Beth's flow-builder moodboard needs general workflow tools (buckets 1-2), because nothing found in the QBR-specific category matches the "assemble a multi-step process visually" pattern she's after.

15. **Kapta, Slideform, Cassidy AI QBR Auto-Builder** — surfaced, not pursued further
    [CS: LOW] — marketing copy only; direct fetch of Kapta's product page returned no usable UI detail
    - Sources: https://kapta.com/key-account-management-software/qbr-software ; https://slideform.co/blog/automate-qbrs-with-slideform ; https://www.cassidyai.com/solutions/qbr-auto-builder
    - Not found: no UI/UX detail beyond value-proposition marketing language for any of these three. Naming as unconfirmed rather than guessing at their interfaces.

**Bonus-bucket conclusion, stated plainly:** no QBR/EBR-specific tool found in this pass uses a visual flow/node canvas to *build* the review process — they template-and-populate decks/dashboards instead. The domain match Beth is looking for (visual multi-step assembly) lives in bucket 1-2's general workflow tools, not the QBR-specific category. [WOBBLY] on this conclusion — small sample (5 QBR tools checked), category could contain a flow-canvas product not surfaced by these search terms.
