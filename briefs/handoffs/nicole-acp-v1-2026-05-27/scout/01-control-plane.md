# Control Plane / Headless IT Tech in the AI Agent World
**Source:** https://n-able.atlassian.net/wiki/spaces/AI/pages/61894262832/
**Author:** Nicole Reineke
**Last modified:** May 15, 2026
**Space:** AI

---

## Why the MSP cares (Seth Godin framing)

Old MSP story: "We manage your IT." Commodity. Race to the bottom.
New story: "We run 14 AI Coworkers across your environment. Last month they resolved 340 incidents, onboarded 12 employees, closed 2,100 vulnerabilities, generated your QBR. Here's the proof."

The Autonomous Control Plane (ACP) is the infrastructure for that new story. The old story sells time; the new story sells outcomes. The old story says "trust us, we have good people"; the new story says "here is a ledger of every action, every result, every dollar of value we created for you last month."

## What we are building

The ACP lets MSPs **build, run, and govern AI agents** that automate their operations, and **meters every execution**.

- Controls who agents are, what they can do, what tools they can touch, what happens when they run
- Every action logged, every permission scoped, every execution metered
- MSPs assemble Coworkers from: N-able Experts, vendor Experts, their own runbooks, their own tool connections
- ACP is an independent product line — may be purchased without other N-able products

## Technical Overview

The N-able control plane is the **governing layer for AI Agents** operating within the N-able product ecosystem. Three functions:

1. **Orchestration layer** for N-able first-party agents (AI Experts) — execution path, resource allocation, runtime policy
2. **Management plane** for vendor-supplied agents/skills — lifecycle, certification, operating conditions
3. Plane for customer-created AI Agents called **AI Coworkers**

The control plane **does not build or host its own AI models**. All inference is delegated to external LLMs — either via N-able's processing infrastructure (Bedrock) or BYO (BYOK/BYOM).

What is being controlled: AI Agents + the Skills they call + the tooling skills use. These are simultaneously:
- Non-Human Identities (NHI)
- Software
- Each AI Agent is itself a **mini-control plane**

## Core entities

**AI Agent** — fundamental unit. Combines identity + runbook + tool access permissions + designated LLM. Each deployed agent instance receives its own scoped identity. No shared service principal across customers or deployments.

**Agent identity** — modeled on an office worker with role + access rights. Enforced at runtime, not configuration time.

**Runbooks** — describe what an agent will do (simple prompt → multiple SOPs). Authored by N-able, vendor partners, or customers directly. Uploaded or generated. Control plane **does not pre-screen or approve runbooks before use**. Responsibility falls to runtime layer for out-of-policy detection. (Big unknown flagged.)

**MCP servers (and CLI/APIs/etc.)** — mechanism by which agents access software systems. Tool access layer between agent and services. Which MCP servers an agent may use, and with what scope, is governed by the control plane (especially for vendor agents).

**MCP keys and credentials** — managed by dedicated **key service**, separate from control plane. Credentials scoped to a specific deployment (not agent type). Rotation/revocation operate at deployment level.

**LLMs** — always external. Customer uses N-able's processing infrastructure (routes to supported external model) OR brings own model + API key (BYOK/BYOM). In BYO case, control plane hands off to customer's model and does not sit in inference path. LLM selection is per-agent.

**Script repository** — deterministic, non-AI tooling agents can invoke for predictable, auditable execution. Distinct from MCP-based access. Lower-variance execution path.

## Agent types

**AI Agent Experts** — fully preconfigured by N-able. End-to-end use case, fixed runbook, defined tool access, N-able-managed identity. Zero customer config to deploy. Run entirely in orchestration layer.

**Approved Vendor Experts** — built by third parties, certified by N-able. Cert reviews intended behavior, permitted MCP scopes, policy compatibility. Listed in catalogue. Managed through management plane (not orchestration). N-able governs lifecycle, versioning, policy compliance — does not necessarily own runtime.

**AI Coworkers** — user-assembled super-agents. Customer combines own runbooks + own MCP configs + any mix of Agent Experts and Approved Vendor Experts. Custom workflow tailored to environment. Execute within orchestration layer; embedded vendor agents may execute on N-able infra OR vendor's own infra, customer discretion.

## Control plane responsibilities

### Orchestration layer (first-party agents)
- Route agent requests to appropriate LLM endpoint (N-able-hosted or customer-supplied)
- Enforce agent identity and permission boundaries at runtime
- Broker MCP server access via scoped credentials
- Apply runtime policy against agent actions (if owns runbook provenance)
- Execution context and resource management for agent lifecycle

### Management plane (vendor agents)
- Operate agent catalogue (onboarding, versioning, certification)
- Allow vendor to define permitted MCP server access + credential scopes
- Establish policy conditions under which vendor agent may be embedded in a Coworker
- When vendor agent runs on customer infra, control plane governs credentials, permitted requests, output validation before re-entry into Coworker context. **Trusted within bounds N-able defined, but not unconditionally.**

**Audit and observability** — logging, tracing, policy check records across all agent activity. Because runbooks are not pre-approved, the audit layer is the primary mechanism for detecting/investigating out-of-policy behavior after the fact.

**Deterministic Substitution Engine** — opportunity: intercepts requests and transforms LLM calls into script or API calls (pulling from repo of available deterministic outcomes).

## The ACP-First MSP (aspiration)

A new MSP should never need to learn UEM, Cove, or Adlumin. Those become infrastructure — engines running underneath — while ACP is the only interface MSP touches.

Flow: discovery → first login (no redirects to underlying products) → setup wizard (3 questions) → catalogue of pre-built AI Experts & Coworkers organized by MSP function → guided first deployment in < 1 hour.

Customer onboarding via "Activate" on **New Customer Onboarding Coworker**. Coworker delegates to default Experts (Endpoint, Backup, Security, Documentation). MSP sees one execution log: "Customer onboarded. 47 actions completed. 0 failures."

Customization: Coworker Builder in ACP. Clone default Onboarding Coworker → modify runbook → add Vendor Expert from marketplace → test in sandbox → publish. MSP never opens UEM/Cove/Adlumin.

**Value Ledger** — across all customers/Coworkers/time periods: executions run, incidents resolved without human intervention, employees onboarded/offboarded, vulnerabilities remediated, backup failures caught/fixed, manual equivalent hours saved, estimated cost avoidance.

## How this works with N-zo and existing apps

(For simplicity, "apps" = Cove, UEM, Adlumin.)

**ACP → Apps (Publish)**
- ACP is authoring environment for Coworkers and Experts
- Publish targets: N-zo in UEM, Cove, Adlumin
- Each Coworker flagged: autonomous-only, interactive-compatible, or both
- N-zo invokes interactive-compatible Coworkers via delegation model respecting Coworker NHI + calling user permissions
- Autonomous Coworkers available as triggers or background actions

**Apps → ACP (Reverse Publish)**
- Scripts, skills, runbooks created in any product are available in ACP
- Each carries provenance metadata: authoring product, author type, product context assumptions, cross-product validation status
- Assets versioned independently; ACP pins to a version, surfaces updates without forcing them
- Permission-gated

**N-zo's Role** — remains in-app assistant with product-scoped context. Published Coworkers appear as separated capability layer within N-zo (visually + functionally distinct from native app assistance).

## Monitoring the Control Plane

Capture every agent action, tool call, credential issuance, customer outcome. Categorize. Make usable for three audiences: operations (is it working), finance (what do we charge), compliance (can we prove what happened).

### Agent and Coworker Lifecycle
- AI Coworkers created (who, when, tenant, Experts/runbooks embedded, MCP servers connected)
- AI Coworkers modified (what changed, who, previous vs current, timestamp)
- AI Coworkers deleted/retired (when, by whom, reason, whether active executions in flight)
- Agent Experts activated (which, tenant, deployment-scoped identity, LLM config)
- Vendor Experts onboarded (cert date, permitted MCP scopes, policy constraints, version)
- Vendor Expert version changes
- Coworker export events (when exported as MCP server, who, what was exposed)

### Execution Telemetry
- Coworker executions (trigger event, start/end/duration, completion status)
- Runbook invocations (which, version, provenance, whether modified since last run)
- Expert delegations within Coworker (order, parallel vs sequential, per-Expert metrics)
- Step-level trace (every action: tool call, LLM inference, script exec, approval gate, conditional branch, transformation)
- Trigger source (scheduled, event-driven, manual, API call, upstream Coworker)
- Retry and fallback events
- Queue and wait times

### Runbook Telemetry
- Inventory, version, author, provenance, last modified, associated Coworkers
- Runs per runbook/tenant/period
- Drift (delta between versions between runs)
- Complexity metrics (steps, branches, tool calls, approval gates, estimated token cost)
- Failure rate (per runbook/version/time, root cause tagged)
- Coverage (which areas have runbooks, gap analysis)
- Out-of-policy events by runbook

### Identity and Access Events
- Identity issuance (when deployment-scoped identity created, for which agent, tenant, permissions)
- Identity modification (scope/permission changes, authorizer)
- Identity revocation (when/why, active sessions terminated)
- Credential requests to key service (which agent, MCP server, scope requested vs granted)
- Credential rotation events (auto, forced, failures)
- Credential revocation
- Scope violations (attempts outside permitted scope, blocked?, what was attempted)

### MCP and Tool Transaction Log
Every interaction between agent and external system flows through the tool access layer.
- MCP server calls (server, agent, method, payload summary, response status, latency)
- API calls (endpoint, agent, method, status, latency, payload size)
- Script executions (script ID, invoker, input params, result, runtime)
- Deterministic Substitution Engine intercepts (original intent, substituted script, result, tokens saved)
- Tool failures (transient vs persistent, retry outcome)
- Tool access denied (when not permitted)
- Tool latency and availability (per server/endpoint/time, SLA tracking)
- Transaction volume by tool

**Metering backbone for Layer 4 monetization (MCP and Tool Transactions).**

### LLM Inference Telemetry
- Inference requests (agent, model, prompt tokens, completion tokens, total, latency)
- Model selection (N-able Bedrock vs BYOK/BYOM, per agent, per execution)
- Inference cost (per call based on model pricing, aggregated per execution/Coworker/tenant/period)
- Inference failures (model errors, timeouts, rate limits, fallback)
- Deterministic substitution rate (% of potential LLM calls intercepted, tokens saved, cost avoided)
- Model quality signals (confidence scores, hallucination flags, policy check failures)
- BYOK/BYOM routing events (logged even though N-able not in inference path)

**Metering backbone for Layer 5 monetization.**

### Policy and Governance Events
- Policy violations detected (what attempted, which policy, blocked vs flagged)
- Escalations to human (when/why, recipient, resolution)

### Value Ledger
*What did the ACP actually do for this MSP, and what is that worth?*
- Manual equivalent hours saved
- Incidents resolved without human intervention
- Tickets triaged and routed (accuracy rate)
- Remediations executed (patches, vulnerabilities closed, configurations corrected)
- Employees onboarded/offboarded
- Customers onboarded
- QBRs and reports generated
- Alert noise reduced (suppression ratio, false positive rate)
- Cost avoidance
- Revenue influenced (upsell opportunities surfaced)
- LLM cost savings from deterministic substitution

Customer-facing. Artifact MSP shows their customer to justify price. Artifact N-able shows MSP to justify platform fee.

### Monetization Metering (Billing Events)
- Execution count (Layer 2)
- Expert activations (Layer 3)
- MCP and tool transaction count (Layer 4)
- LLM token consumption (Layer 5)
- Outcome events (Layer 6 future state)
- Tier and entitlement tracking
- Billing anomaly flags

## Example Use Case: Halo + Onboarding

MSP uses Halo as PSA/ticketing. New employee → ticket in Halo. MSP built an **Onboarding AI Coworker** in N-able with a runbook: when onboarding ticket arrives, provision identity + allocate asset. Embedded N-able Identity Expert + Asset Expert.

End-to-end:
1. Halo Ticket Expert (vendor agent certified in ecosystem) ingests ticket, passes to control plane
2. Management plane validates payload against policy
3. Control plane triggers Onboarding Coworker
4. Coworker reads runbook, delegates to Identity + Asset Experts in parallel
5. Orchestration layer issues each Expert a scoped identity, fetches MCP credentials from key service
6. Identity Expert provisions user; Asset Expert allocates device
7. Coworker collects results, confirms runbook satisfied
8. Full execution trace written to audit
9. Result passed back to Halo Ticket Expert → ticket updated

## Top 10 Use Cases (sent to customers for ranking)

1. **Business Report for your customer** — QBR Coworker. Integrates PSA, RMM/UEM, Security (MDR), Backup, Reporting. Generates customer-ready report with charts, summaries, next steps. QBR prep from days → minutes.
2. **Alert Flood Suppression Coworker** — Integrates MDR, Backup, AlertOps, PSA, RMM alerts. Correlates duplicates, suppresses benign, groups related, escalates on pattern shift.
3. **Security Tabletop Exercise Simulator** — Integrates N-able MDR, UEM, Backup, Vendor Security Expert, Vuln Expert, Script Expert, Script Repository. Simulates real incidents with realistic alerts.
4. **MSP Employee Onboarding Coworker** — Integrates HR, IdP, PSA, RMM/UEM, Security. Provisions identity, device, app access by role/policy.
5. **Existing Customer New Employee Onboarding/Offboarding** — Integrates customer HR, IdP, Backup, RMM/UEM, Security, M365/SaaS, PSA.
6. **New Customer Onboarding Coworker** — Integrates PSA, RMM/UEM, Security (MDR), Backup, Documentation, Reporting.
7. **Network Incident Resolution Coworker** — Integrates N-able + Vendor Network Expert, MDR, Backup, Vulnerability Expert, Script Expert, Script Execution Engine. AI reasoning for diagnosis, deterministic script execution for action.
8. **MSP Benchmarking & Threat Hardening Coworker** — Integrates MDR, UEM, Vulnerability scanner, EDR, Backup, PSA/Reporting. Normalizes data across vendors. Peer group benchmark.
9. **Ticket Triage and Dispatch Coworker** — Integrates PSA/Helpdesk, RMM/UEM, Security (MDR), Backup, Identity. Bounded AI reasoning for classification + safe diagnostics.
10. **MSP Acquisition Integration Coworker** — Integrates PSA, RMM/UEM, Security, Backup, Identity, Documentation. Inventories acquired tools/customers/configs, maps SOP differences, safely migrates.
11. **Disaster Recovery Orchestration Coworker** — Integrates Cove DR/Standby Image, PSA, Approval Workflow, Customer Comms. Step-level approvals for failover.

## Monetization: Seven Revenue Layers

Per-device pricing is broken. AI agents surface 100x findings, but MSPs charge same.

Market comparables: n8n (per workflow execution), Make.com (per operation), Salesforce Agentforce ($0.10/action), Zendesk ($1.50 per automated resolution, no charge if escalated).

**Stack:**
1. **Platform Access (Subscription)** — control plane, builder, audit, key service
2. **Workflow Execution (Consumption)** — every Coworker run is a billable event
3. **Expert Licensing (Catalogue Revenue)** — each Expert recurring license
4. **Vendor Ecosystem (Marketplace Economics)** — revenue share on Vendor Expert transactions (0% first $50K, 15% to $5M, 10% above), one-time cert fees ($500-$2,000, waived for Tech Alliance partners), ecosystem-driven execution volume
5. **MCP and Tool Transactions (Metered Access)** — per MCP call, API call, script execution
6. **LLM Inference Pass-Through (Cost Recovery + Margin)** — Bedrock customers pay inference + margin. BYOK/BYOM skip this layer. Deterministic Substitution Engine reduces N-able cost while execution still counts. Substitution Engine is a margin engine.
7. **Outcome-Based Pricing (Future State)** — per resolved incident, per onboarded employee, per QBR generated. Highest margins.

**How MSP charges customer:** Bundled / Tiered / Consumption / Outcome-based.

## Vendor onboarding (Marketplace)

Vendor submits 4 things:
1. The Expert (deployable agent + runbook + default config)
2. Declared MCP scopes
3. Proof of passing N-able minimum test suite
4. Sales contract + support contact + security response SLA

**Certification:** automated scope validation. Critical security patch: 48 hours. Other timelines TBD.

**Revenue share:** 0% first $50K, 15% to $5M, 10% above. One-time $500-$2,000 registration (waived for Technology Alliance). Vendor retains full IP. N-able holds distribution license.

**Versioning:** updates enter certification review before publish. New versions publish alongside old. MSPs pin to version they built against. Security patches: N-able can mandate adoption within 72 hours. Breaking changes: vendor declares upfront, 90-day migration minimum.

**Marketplace UI:** discover by category, vendor, product line compatibility, rating. Each listing shows star rating, # of MSPs using it, execution success rate, commonly paired Experts.

**Ongoing governance:** runtime monitoring (audit layer tracks scope adherence), annual re-certification, emergency delisting (critical vuln/data violation).
