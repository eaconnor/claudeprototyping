---
doc_id: HANDOFF-ACP-VISION-PDFS
title: ACP Vision — Synthesized from Nicole's Source PDFs
version: 0.2.0
status: Hybrid · Pattern Applied
date: 2026-06-05
relationship: |
  This doc is the source-grounded catalog (what the PDFs actually say).
  Strategic implications of these findings → see HANDOFF-NICOLE-VISION (nicole-actual-acp-vision.md)
source_files:
  - id: SRC-NICOLE-001
    title: Headless IT Tech in the AI Agent world
    file: nicole-acp-datadump/AI-AI Coworker Description-040626-153628.pdf
    pages: 17
    read_in_full: true
  - id: SRC-NICOLE-002
    title: AI Coworker Description
    file: nicole-acp-datadump/AI-AI Coworker Description-040626-153628.pdf
    pages: 16
    read_in_full: true
  - id: SRC-NICOLE-003
    title: AI-Runbooks Definition
    file: nicole-acp-datadump/AI-Runbooks definition-040626-153631.pdf
    pages: 3
    read_in_full: true
confidence_baseline: "All claims [CS: VERIFIED — Nicole's source materials] unless flagged otherwise"
open_questions_nicole_flags:
  - OPENQ-VENDOR-AGENT-GOVERNANCE
tensions_surfaced:
  - TENSION-VALUE-LEDGER-FRAMING
  - TENSION-CONSUMPTION-PRICING
  - TENSION-GRADUATED-AUTONOMY
  - TENSION-RUNBOOK-NOT-PRESCREENED
  - TENSION-HEADLESS-VS-DISCOVERABILITY
  - TENSION-DATA-ACCURACY-GAP
---

# ACP Vision — Synthesized from Nicole's Source PDFs

---

## 1. ACP Core Positioning {#ACP-CORE-POSITIONING}

### What ACP is
"The ACP lets MSPs build, run, and govern AI agents that automate their operations, **and we meter every execution**." [CS: VERIFIED — SRC-NICOLE-001, p.3]

"The ACP is an independent product line, and may be purchased without other N-able products. However, it is our intent that our AI Experts and runbooks are so high value that they can't help but purchase them." [CS: VERIFIED — SRC-NICOLE-001, p.3]

### Three structural functions of the control plane {#ACP-FUNCTIONS}
1. **Orchestration layer** — for N-able's own first-party AI agents (AI Experts); owns execution path, resource allocation, runtime policy.
2. **Management plane** — for vendor-supplied agents and skills; governs lifecycle, certification, MCP scope agreements.
3. **Customer-built layer** — for Customer-created AI Agents called AI Coworkers.

[CS: VERIFIED — SRC-NICOLE-001, p.3]

### Headless IT — the ultimate aspiration {#ACP-HEADLESS}
"If the control plane works, a new MSP should never need to learn UEM. They should never need to learn Cove. They should never need to learn Adlumin. Those products become infrastructure, engines running underneath, while the ACP is the only interface the MSP touches." [CS: VERIFIED — SRC-NICOLE-001, p.8]

"The MSP does not buy a collection of tools and figure out how to stitch them together. They buy a business-in-a-box that happens to run on N-able's product lines underneath." [CS: VERIFIED — SRC-NICOLE-001, p.8]

### N-able does NOT build or host its own AI models {#ACP-LLM-EXTERNAL}
"All inference is delegated to external LLMs, either provided through N-able's own processing infrastructure (aka Bedrock) or supplied directly by the customer." [CS: VERIFIED — SRC-NICOLE-001, p.4]

LLM selection is **per-agent configuration**; BYOK/BYOM is supported and in that case "the control plane hands off to the customer's chosen model and does not sit in the inference path." [CS: VERIFIED — SRC-NICOLE-001, p.6]

---

## 2. AI Coworker Definition {#COWORKER-DEFINITION}

**Value statement:** "When MSPs can customize their AI agents in our secure environment, 'The outcome for the MSP is you reduce the number of technicians that you need to deliver the services that you have.'" [CS: VERIFIED — SRC-NICOLE-002, p.2]

### What a Coworker does (three things well) {#COWORKER-DOES}
- Understand intent
- Choose the safest viable action
- Deliver measurable time savings

"**They are not autonomous free-for-alls.** They operate inside guardrails defined by N-able and the MSP." [CS: VERIFIED — SRC-NICOLE-002, p.2]

### Composition of a Coworker {#COWORKER-COMPOSITION}
Each AI Coworker is composed of:
- One or more **AI Experts** (specialized AI agents with defined scope; owned and managed by N-able)
- A **Runbook** defined by N-able or the customer (AKA SKILLS)
- Connections to one or more **MCP servers**
- One or more **Tools** (scripts, action calls — may happen outside the AI Agent context to reduce token use)
- A **control pane** for the MSPs and for internal efficiency

[CS: VERIFIED — SRC-NICOLE-002, p.2-3]

### Three agent types {#AGENT-TYPES}
| Type ID | Type | Definition |
|---|---|---|
| AGENTTYPE-EXPERT | **AI Agent Experts** | N-able-authored, fully preconfigured, fixed runbook, N-able-managed identity. No customer config needed. |
| AGENTTYPE-VENDOR-EXPERT | **Approved Vendor Experts** | Built by third-party vendor partners, certified by N-able. Managed through management plane. |
| AGENTTYPE-COWORKER | **AI Coworkers** | User-assembled super-agents. Customer combines runbooks, MCPs, Agent Experts, and Vendor Experts. |

[CS: VERIFIED — SRC-NICOLE-001, p.7]

### Coworker-as-MCP-server export pattern {#COWORKER-AS-MCP}
"Once the coworker works, you can export it as an MCP server so Claude can call it like a tool instead of making you rewrite the same prompt over and over." [CS: VERIFIED — SRC-NICOLE-001, p.5]

---

## 3. Runbook Architecture {#RUNBOOK-ARCH}

### Runbook definition {#RUNBOOK-DEFINITION}
"A Runbook is a **governed execution contract** that an AI Coworker or AI Expert may invoke to achieve a goal. AI Coworkers 'think', Runbooks govern how thinking becomes action, runbooks may contain Workflows (which execute the work)." [CS: VERIFIED — SRC-NICOLE-003, p.1]

### What runbooks capture
- Intent and boundaries
- Approved reasoning and execution paths
- Deterministic workflows where precision matters
- Clear handoffs between humans, AI reasoning, and systems

[CS: VERIFIED — SRC-NICOLE-003, p.1]

### Four core principles {#RUNBOOK-PRINCIPLES}
| ID | Principle | Meaning |
|---|---|---|
| RBP-TEXT-FIRST | Text-first | Begins as plain language intent. May remain text-only or expand into structured execution. |
| RBP-COMPOSABLE | Composable | May include one or more workflows. Workflows may be reused. Runbooks can call other Runbooks. |
| RBP-COWORKER-INVOKED | Coworker-invoked | Executed by AI Agents, not users directly. Agent decides when to invoke; Runbook governs how execution proceeds. |
| RBP-DETERMINISTIC-ISH | Deterministic-ish | AI reasoning explicitly bounded. **Deterministic steps exit the AI context as early as possible.** |

[CS: VERIFIED — SRC-NICOLE-003, p.1]

### Runbook vs. Workflow {#RUNBOOK-VS-WORKFLOW}
- **Workflow** = deterministic execution graph, typed nodes (evaluate, transform, action, output), machine-driven, replayable.
- **Runbook** = describes intent and policy, selects/sequences workflows, defines where AI reasoning is allowed, defines escalation/handoff/approval behavior.
- "A workflow is a component of a Runbook. A Runbook is the operational wrapper that makes workflows safe to use with AI Coworkers." [CS: VERIFIED — SRC-NICOLE-003, p.2]

### Runbooks are NOT pre-screened {#RUNBOOK-NOT-PRESCREENED}
"Runbooks can be authored by N-able, by vendor partners, or by customers directly. They can be uploaded or generated. **The control plane does not pre-screen or approve runbooks before use. This places responsibility on the runtime layer to catch out-of-policy behavior regardless of runbook provenance. This is a big 'unknown'.**" [CS: VERIFIED — SRC-NICOLE-001, p.6]

→ See [TENSION-RUNBOOK-NOT-PRESCREENED]

---

## 4. Trust / Autonomy Promotion Model {#TRUST-MODEL}

### L4 Earned Autonomy hypothesis (Ewan Cameron) {#L4-AUTONOMY}
"the concept of L4 earned autonomy — where an AI Expert co-worker graduates from 'human confirms' to 'AI executes, human audits' — can be represented as a coherent, self-evident UX concept that a mature MSP would immediately understand without explanation. Specifically, that one of three competing mental models (track record, graduated dial, or scope-based guardrail) will survive a 10-second comprehension test and provoke an instinctive opinion about whether they'd engage with it." [CS: VERIFIED — SRC-NICOLE-002, p.5]

### Three trust-execution levels {#TRUST-LEVELS}
| ID | Level | Behavior |
|---|---|---|
| TRUST-MANUAL | **Manual** | Human does it |
| TRUST-ASSISTED | **Assisted** | AI suggests, human approves |
| TRUST-AUTONOMOUS | **Autonomous** | AI executes, human audits |

[CS: VERIFIED — SRC-NICOLE-002, p.6]

### Permissions and Risk Model {#PERMISSIONS}
All actions respect: user permissions / token permissions, MSP approval policies, script risk levels (low / medium / high).

| Risk | Behavior |
|---|---|
| Low | Auto-execute |
| Medium | Require approval |
| High | Manual only / block auto-execution |

"**No hidden automation is allowed.**" [CS: VERIFIED — SRC-NICOLE-002, p.4]

---

## 5. Value Ledger {#VALUE-LEDGER}

### Per-coworker Value Score
"Value is defined as: Estimated time to complete the task manually versus time to complete the task with the AI Coworker." [CS: VERIFIED — SRC-NICOLE-002, p.5]

### Value Ledger tracks
- Time saved per action / value added on each run
- Aggregate value added per coworker
- Cumulative value over time

"This makes AI value visible, measurable, and defensible." [CS: VERIFIED — SRC-NICOLE-002, p.5]

### Value Ledger is customer-facing {#VALUE-LEDGER-CUSTOMER-FACING}
"The Value Ledger is customer-facing. **It is the artifact the MSP shows their customer to justify the price. It is also the artifact N-able shows the MSP to justify the platform fee.**" [CS: VERIFIED — SRC-NICOLE-001, p.16]

### Value Ledger metrics (extensive list) {#VALUE-LEDGER-METRICS}
Manual equivalent hours saved · Incidents resolved without human intervention · Tickets triaged and routed · Remediations executed · Employees onboarded/offboarded · Customers onboarded · QBRs and reports generated · Alert noise reduced · Cost avoidance · Revenue influenced · LLM cost savings from deterministic substitution. [CS: VERIFIED — SRC-NICOLE-001, p.15-16]

---

## 6. Monetization — Seven Revenue Layers {#MONETIZATION}

| Layer ID | Layer | Bills | Precedent |
|---|---|---|---|
| REV-LAYER-1 | Platform Access | Subscription to control plane, builder, audit, key service | Standard SaaS |
| REV-LAYER-2 | Workflow Execution | Every Coworker run is a billable event | n8n: €20/mo for 2,500 runs |
| REV-LAYER-3 | Expert Licensing | Each Expert carries recurring license | Catalogue revenue |
| REV-LAYER-4 | Vendor Ecosystem | Rev share on Vendor Expert transactions + certification fees | Shopify: 0% first $50K, 15% to $5M, 10% above |
| REV-LAYER-5 | MCP/Tool Transactions | Every MCP call, API call, script execution metered | Zapier: per-operation |
| REV-LAYER-6 | LLM Inference Pass-Through | Bedrock customers pay inference + margin; BYOK skips | Cost recovery + margin |
| REV-LAYER-7 | Outcome-Based Pricing | Per resolved incident, per onboarded employee, per QBR | Zendesk: $1.50/automated resolution |

[CS: VERIFIED — SRC-NICOLE-001, p.32-33]

### MSP-to-customer pricing vocabulary {#MSP-CUSTOMER-PRICING}
- Bundled (AI as margin play)
- Tiered (basic = monitoring, premium = automated remediation + QBR)
- Consumption ("Your environment ran 3,200 remediations this month")
- Outcome-based (per resolved incident, per onboarded employee)

[CS: VERIFIED — SRC-NICOLE-001, p.33]

### The Seth Godin framing {#SETH-GODIN-FRAMING}
"The MSP industry has a story it tells itself. 'We manage your IT.' That is the story. And for twenty years, it worked. You charge per device, you hire technicians, you grow linearly… Here is the problem with that story: it is a commodity story… Now. What if you told a different story? 'We run 14 AI Coworkers across your environment. Last month they resolved 340 incidents, onboarded 12 employees, closed 2,100 vulnerabilities, and generated your quarterly business review. Here is the proof.' That is a story no one else is telling. That is a purple cow." [CS: VERIFIED — SRC-NICOLE-001, p.2]

"The old story sells time. The new story sells outcomes." [CS: VERIFIED — SRC-NICOLE-001, p.3]

---

## 7. Identity, Audit, Observability {#IDENTITY-AUDIT}

### Agent identity {#AGENT-IDENTITY}
"AI Agent is the fundamental unit of the ecosystem. An agent combines an **identity, a runbook, a set of tool access permissions, and a designated LLM** into a deployable entity. Each deployed agent instance receives its own **scoped identity** — there is no shared service principal across customers or deployments." [CS: VERIFIED — SRC-NICOLE-001, p.6]

Identity "is modelled on the concept of an office worker with a defined role and access rights… **Identity is enforced at runtime, not at configuration time.**" [CS: VERIFIED — SRC-NICOLE-001, p.6]

Agents are simultaneously:
- Non-Human Identities (NHI)
- Software
- Each AI Agent is in itself a mini-control plane

[CS: VERIFIED — SRC-NICOLE-001, p.4]

### MCP credentials separate key service
"Credentials scoped to a specific deployment rather than to an agent type. This means credential rotation and revocation operate at the deployment level." [CS: VERIFIED — SRC-NICOLE-001, p.6]

### Audit is the only line of defense for customer runbooks {#AUDIT-LINE-OF-DEFENSE}
"Because runbooks are not pre-approved, the audit layer is the primary mechanism for detecting and investigating out-of-policy behavior **after the fact**." [CS: VERIFIED — SRC-NICOLE-001, p.8]

### Telemetry scope (operations, finance, compliance) {#TELEMETRY-SCOPE}
The vision lists explicit telemetry domains: Agent and Coworker Lifecycle · Execution Telemetry · Runbook Telemetry · Identity and Access Events · MCP and Tool Transaction Log · LLM Inference Telemetry · Policy and Governance Events · Value Ledger · Monetization Metering (Billing Events). [CS: VERIFIED — SRC-NICOLE-001, p.12-17]

### Deterministic Substitution Engine {#DETERMINISTIC-SUBSTITUTION-ENGINE}
"There is an opportunity for a Deterministic Substitution Engine which intercepts requests and transforms LLMs calls into script or API calls (pulling from the repo of available deterministic outcomes)." [CS: VERIFIED — SRC-NICOLE-001, p.8]

"The Substitution Engine is a margin engine." [CS: VERIFIED — SRC-NICOLE-001, p.32]

---

## 8. Marketplace / Vendor Onboarding {#MARKETPLACE}

### Vendor submission (four items) {#VENDOR-SUBMISSION}
1. The Expert (deployable agent + runbook + default config)
2. Declared MCP scopes
3. Proof Expert passes minimum test suite
4. Sales contract, support contact, security response SLA

[CS: VERIFIED — SRC-NICOLE-001, p.33-34]

### Certification timing
N-able runs automated scope validation. Timelines for New Expert / Minor update / Scope change open in the PDF (`??`). Critical security patch: 48 hours. [CS: VERIFIED]

### Marketplace UX {#MARKETPLACE-UX}
MSPs discover Experts by category, vendor, product line compatibility, and rating. Each listing shows star rating, number of MSPs using it, execution success rate, and which Experts it's commonly paired with. Vendors see aggregate adoption / usage / failure rates / revenue (not individual MSP names or customer data). [CS: VERIFIED — SRC-NICOLE-001, p.35]

### Ongoing governance (three mechanisms) {#MARKETPLACE-GOVERNANCE}
| Mechanism | Behavior |
|---|---|
| Runtime monitoring | Audit layer tracks scope compliance |
| Annual re-certification | Lighter; automated validation |
| Emergency delisting | Immediate pull + notify affected MSPs on critical vuln/data violation |

[CS: VERIFIED — SRC-NICOLE-001, p.35]

---

## 9. Open Question Nicole Explicitly Flags {#OPENQ}

### OPENQ-VENDOR-AGENT-GOVERNANCE {#OPENQ-VENDOR-AGENT-GOVERNANCE}

"When a vendor agent executes on the customer's own infrastructure, the control plane governs ???( **BIG QUESTION TO ANSWER HERE** … ? credentials ?, ?what it is permitted to request?, ?how its outputs are validated? before they re-enter a Coworker's execution context. The vendor's runtime is trusted within the bounds N-able has defined, but not unconditionally." [CS: VERIFIED — SRC-NICOLE-001, p.8]

**[Beth — this is an unresolved architectural question in Nicole's own doc, not Scout speculation.]**

---

## 10. Tensions Scout Surfaces from Comparing Across Nicole's Docs {#TENSIONS}

### TENSION-VALUE-LEDGER-FRAMING {#TENSION-VALUE-LEDGER-FRAMING}
Nicole's vision uses **"Value Ledger"** as the central trust artifact (customer-facing proof of MSP impact). The Value Ledger is explicitly customer-facing AND MSP-facing (dual audience). Council reports may have framed this differently — overlay required.

### TENSION-CONSUMPTION-PRICING {#TENSION-CONSUMPTION-PRICING}
Nicole's vision is unambiguous: "**Price the work, not the laptop.**" Seven revenue layers stack. Most MSP-facing competitors (NinjaOne, Kaseya, ConnectWise) still price per device or per seat. **Nicole's ACP is structurally different from current MSP pricing norms.** [CS: HIGH — cross-source]

### TENSION-GRADUATED-AUTONOMY {#TENSION-GRADUATED-AUTONOMY}
Nicole's vision is **graduated**, not binary: manual → assisted → autonomous, with track-record-earned promotion (per Ewan Cameron's hypothesis). "**They are not autonomous free-for-alls.**" "**No hidden automation is allowed.**" Risk-classified script execution (low auto, medium approval, high manual) is the runtime default.

### TENSION-RUNBOOK-NOT-PRESCREENED {#TENSION-RUNBOOK-NOT-PRESCREENED}
The control plane explicitly does NOT pre-screen customer runbooks. The audit layer catches out-of-policy behavior **after the fact**. [CS: VERIFIED] This is a **deliberate design choice** Nicole flags as a "big 'unknown'" in her own doc. Likely design tension for any council framework emphasizing safety/trust.

### TENSION-HEADLESS-VS-DISCOVERABILITY {#TENSION-HEADLESS-VS-DISCOVERABILITY}
Nicole's vision: "If the control plane works, a new MSP should never need to learn UEM. They should never need to learn Cove. They should never need to learn Adlumin." [CS: VERIFIED]
Partner interview reality: 22 partners are evaluating Ask N-zo / NZO **inside UEM** today. Discoverability is named as a top blocker — "Enzo is buried on the asset tab." [CS: VERIFIED — see HANDOFF-PRIMARY-RESEARCH#BLOCKER-DISCOVERABILITY]
**Gap:** The headless aspiration is far from the discoverability reality. Bridging that gap is a UX/distribution design question.

### TENSION-DATA-ACCURACY-GAP {#TENSION-DATA-ACCURACY-GAP}
Nicole's vision describes coworkers acting on "full asset estate, patch posture, vulnerability posture, license / seat counts, device health, historical trend." [CS: VERIFIED]
Partner reality: 350 servers returned only 9 (John J.); Win10/Win11 counts wrong (David); license data not yet integrated (Aaron B.). [CS: VERIFIED — see HANDOFF-PRIMARY-RESEARCH#BLOCKER-DATA-ACCURACY]
**Gap:** Coworker vision presumes data substrate is complete. Partners report it isn't. The Joe LoPilato "Data Substrate" diagram in Nicole's PDF (p.13) names this — but it's a future-state diagram, not a current capability.

---

## Confidence Notes {#CONFIDENCE-NOTES}

- All claims tagged [CS: VERIFIED — Nicole's source materials] are directly quoted or paraphrased from the three PDFs read in full.
- Tensions (Section 10) are Scout's surfacing of contradictions visible from comparing across documents; they are not Nicole's own framing.
- Scout did NOT read: council-report.md, scout-secondary-output.md, the existing brief or critic passes. Comparisons to council analysis are explicitly out of scope (overlaid in HANDOFF-NICOLE-VISION).
- Architectural diagrams in the PDFs (control plane structure, AI Coworker detail, Joe LoPilato data substrate, network incident execution flow) are referenced by page; Scout cannot extract text from embedded images beyond what was OCRed in the PDF.
