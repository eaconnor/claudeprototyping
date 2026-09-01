---
feature: "N-zo Autonomous Task Execution"
gate: 30  # Tier 1 Concept — lo-fi, high assumption
owner: "Beth Schwindt"
problem_statement: "[A] MSP technicians spend time executing repetitive, low-risk remediation tasks that N-zo already knows how to recommend (e.g., restart service, apply patch, clear disk space). Current N-zo requires technicians to read the recommendation, switch contexts, and manually execute — adding latency and cognitive load to routine work."
okr_objective: "[A] Reduce time-to-resolution for routine remediation tasks surfaced by N-zo"
okr_key_result: "[A] 40% reduction in median time-to-resolution for N-zo-recommended tasks within 6 months of GA"
counter_metric: "[A] Trust erosion — measured by: (1) autonomous task rollback rate, (2) technician override rate, (3) support tickets citing 'N-zo broke something'"
idea_score: null  # To be filled after rubric scoring
evidence_sources:
  - "scout_input/01-nzo-documentation-capabilities.md"
  - "scout_input/02-nzo-faqs.md"
status: "draft"

# Domain Model — Nouns & Verbs (Spec-Driven Design Spine)
domain_model:
  entities:  # Nouns WITH identity (tracked over time)
    - name: "Task"
      identity: "Task ID, timestamp, initiating query"
      attributes:
        - "type (e.g., RestartService, ApplyPatch, ClearDiskSpace)"
        - "target device ID"
        - "status (Queued, Executing, Completed, Failed, RolledBack)"
        - "approval requirement (boolean or enum)"
        - "outcome (success/failure message, rollback status)"
      evidence: "[A] — No sourced task taxonomy from MSP workflows"
    
    - name: "Policy"
      identity: "Policy ID, scope (global/tenant/device group)"
      attributes:
        - "allowed task types"
        - "trust threshold (Low/Medium/High)"
        - "escalation rules (e.g., notify tech, require approval, abort)"
      evidence: "[A] — No research on what MSPs would delegate to automation"
    
    - name: "ExecutionRecord"
      identity: "Record ID, task ID, timestamp"
      attributes:
        - "action taken"
        - "result (success/failure)"
        - "rollback status (N/A, Success, Failed)"
        - "technician notified (boolean)"
      evidence: "[A] — Audit requirements assumed, not validated with compliance/security teams"
    
    - name: "Device"
      identity: "Device ID"
      attributes:
        - "OS, patch status"
        - "telemetry (CPU, memory, disk usage)"
        - "compliance state"
      evidence: "[R] — Current N-zo accesses this data (scout: 01-nzo-documentation-capabilities.md)"
    
    - name: "Technician"
      identity: "User ID"
      attributes:
        - "role (permissions: View AI, Manage AI, etc.)"
        - "monthly credit balance"
        - "approval permissions"
      evidence: "[R] — Current N-zo has per-technician credit limits and role-based access (scout: 02-nzo-faqs.md)"
  
  value_objects:  # Nouns WITHOUT identity (described, not tracked)
    - name: "TaskStatus"
      describes: "Task"
      evidence: "[A] — Enum: Queued, Executing, Completed, Failed, RolledBack"
    
    - name: "TrustLevel"
      describes: "Policy"
      evidence: "[A] — Low (always require approval), Medium (approval for risky actions), High (execute immediately)"
    
    - name: "ApprovalThreshold"
      describes: "Policy"
      evidence: "[A] — Condition triggering human review (e.g., 'affects >10 devices,' 'changes firewall rules')"
  
  services:  # Verbs (actions the system performs)
    - name: "ExecuteTask"
      acts_on: ["Task", "Device"]
      trigger: "Technician query OR policy-driven automation"
      evidence: "[A] — Core autonomous action capability; integration with N-central/N-sight device management APIs unverified"
    
    - name: "QueueForApproval"
      acts_on: ["Task", "Technician"]
      trigger: "TrustLevel = Low OR ApprovalThreshold met"
      evidence: "[A] — Approval UX undefined; notification mechanism (in-app, email, Slack?) unknown"
    
    - name: "EscalateToHuman"
      acts_on: ["Task", "Technician"]
      trigger: "Execution error, rollback failure, or explicit user override"
      evidence: "[A] — Handoff protocol undefined; what does the technician see? What state is the device in?"
    
    - name: "LogExecution"
      acts_on: ["ExecutionRecord", "Task"]
      trigger: "Task completion or failure"
      evidence: "[A] — Audit log storage duration, retention, and compliance alignment unverified (current N-zo: 90 days to 1 year chat history)"
  
  ubiquitous_language:  # Shared terms — same word in brief, UI, code
    - term: "Autonomous"
      means: "N-zo initiates AND completes a task without per-instance human approval (policy-driven approval acceptable)"
    
    - term: "Task"
      means: "A discrete, reversible action N-zo can perform on a device or system (NOT a multi-step workflow)"
    
    - term: "Trust boundary"
      means: "The line between what N-zo can execute immediately vs. what requires human confirmation"
    
    - term: "Rollback"
      means: "Reverting a device to its pre-task state if execution fails or causes harm"
---

# N-zo Autonomous Task Execution — Three-Gate Brief

**Fidelity:** 30% (Tier 1 Concept)  
**Readiness:** This brief is thin. [A]+[?] world-claims ratio is **~88%** — the problem statement itself is unverified. Tier 1 Concept expects high assumption, but >70% signals no sourced customer pain. Proceed with caution.

---

## Gate 1: Problem — Is It Real and Sourced, or Assumed?

### The Problem (as stated)

[A] MSP technicians using N-zo receive actionable recommendations (e.g., "Restart the print spooler service," "Apply missing patch KB5034441," "Clear temp files to free 12GB") but must manually execute them. This creates:

1. **Context-switching cost** [A] — Technician reads N-zo's answer, opens the device management console, locates the device, executes the task, returns to confirm resolution
2. **Latency** [A] — Time between recommendation and action (especially for after-hours alerts or distributed teams)
3. **Cognitive load** [A] — Technician must validate N-zo's recommendation is still correct by the time they execute (device state may have changed)

### What We Know (Sourced)

[R] **Current N-zo does NOT execute autonomous actions** (scout: 01-nzo-documentation-capabilities.md, 02-nzo-faqs.md). It provides:
- Diagnostic analysis (CPU, memory, disk telemetry)
- Security risk identification (outdated OS, patch failures)
- Remediation recommendations with manual next steps
- Links to troubleshooting guides

[R] **Current N-zo has trust/safety boundaries** (scout: 02-nzo-faqs.md):
- Data never used to train external LLMs
- Tenant isolation enforced
- Chat history retained 90 days to 1 year (AWS Bedrock)
- Role-based access control (View AI, Manage AI permissions)

[R] **Usage is metered** (scout: 02-nzo-faqs.md):
- 100 credits per technician per month
- Resets at start of calendar month
- Account-level enablement (not per-user)

### What We Don't Know (Gaps)

[?] **Which tasks do MSP technicians execute most frequently after N-zo recommendations?** (No task taxonomy sourced)

[?] **What % of N-zo recommendations are acted upon vs. ignored?** (No behavioral data)

[?] **What is the median time-to-execution for N-zo-recommended tasks?** (Baseline for OKR unknown)

[?] **What tasks would MSPs trust N-zo to execute autonomously?** (No trust-boundary research)

[?] **What tasks are too risky for autonomous execution?** (No failure-mode analysis from MSP operations teams)

[?] **Do MSPs have compliance/audit requirements that prohibit autonomous remediation without human-in-the-loop?** (Regulatory landscape unverified)

### Current Workarounds

[A] Technicians treat N-zo as a diagnostic assistant, then manually execute remediation in N-central/N-sight device management UIs. (Assumed workflow; not observed.)

### Evidence Ratio — Gate 1

**World-claims (about MSPs, users, market):**
- [R]: 5 claims (current N-zo capabilities, trust boundaries, metering)
- [D]: 0 claims
- [A]: 7 claims (problem statement, context-switching cost, latency, cognitive load, task taxonomy, trust boundaries, workarounds)
- [?]: 6 claims (task frequency, recommendation adherence rate, time-to-execution, MSP trust preferences, risk assessment, compliance requirements)

**[A]+[?] ratio: 13/18 = ~72%**

**Verdict:** Problem is thin. No sourced MSP pain. No data on how often technicians act on N-zo recommendations. No task taxonomy. Gate 1 is not ready for Gate 2 investment.

---

## Gate 2: Right Thing — Does This Advance the Mission?

### Does Autonomous Execution Advance N-able's Mission?

[A] **Assumed alignment:** N-able's RMM/security platform exists to reduce MSP operational burden. Autonomous task execution reduces toil → aligns with mission.

[?] **Unverified trade:** Does autonomous execution increase product stickiness (retention, upsell) or introduce trust erosion that damages brand? (No customer research on willingness to delegate.)

### What Outcome Moves?

[A] **Primary outcome:** Time-to-resolution for routine remediation tasks (median time from N-zo recommendation to task completion)

[A] **Secondary outcomes:**
- Increased N-zo engagement (more queries if users trust actions will be taken)
- Reduced support load (fewer "how do I...?" escalations)

[?] **Revenue impact:** Does autonomous execution justify price increase? Does it prevent churn? (Business model implications unverified.)

### What's the Trade?

[A] **Trust erosion risk:** If N-zo breaks something (rollback fails, task executes on wrong device, policy misconfigured), MSPs lose faith in the entire N-zo product — not just autonomous features.

[A] **Support load spike:** Early rollout may generate more support tickets ("N-zo changed my config without asking") than time saved.

[?] **Competitive moat:** Do competitors (ConnectWise, Datto, Kaseya) already offer autonomous remediation? Is this table stakes or differentiation? (scout: 09-competitive-landscape.md not available)

### Counter-Metric (What Must Not Get Worse)

[A] **Trust erosion indicators:**
1. Autonomous task rollback rate (target: <2% of executed tasks)
2. Technician override rate (manual abort of queued autonomous tasks; target: <10%)
3. Support tickets citing "N-zo broke something" (target: zero incidents in first 90 days)

[A] **Credit burn rate:** If autonomous tasks consume credits faster than Q&A queries, technicians may hit monthly limits mid-month (current: 100 credits/tech/month). May require credit model redesign.

### Evidence Ratio — Gate 2

- [R]: 0 claims
- [D]: 0 claims
- [A]: 9 claims (mission alignment, outcomes, trades, counter-metrics)
- [?]: 3 claims (trust research, revenue impact, competitive landscape)

**[A]+[?] ratio: 12/12 = 100%**

**Verdict:** No sourced evidence that autonomous execution is the right investment. Mission alignment is assumed, not validated with customers or business stakeholders.

---

## Gate 3: Built Right — Tested How? By Whom? What Counts as Done?

### How Is "Autonomous" Tested?

[?] **Sandbox environment:** Do we have isolated test tenants where N-zo can execute tasks without affecting production MSP operations?

[?] **Approval flow testing:** How do we validate that QueueForApproval triggers correctly for high-risk tasks? (Test cases undefined.)

[?] **Rollback validation:** What % of task types must support rollback before autonomous execution is enabled? (Acceptance criteria undefined.)

[?] **Failure mode testing:** How do we simulate: (1) Task executes on wrong device, (2) Rollback fails, (3) Device is in intermediate state when human intervenes?

### Who Validates Trust Boundaries?

[?] **Stakeholders unidentified:**
- Product team (defines task taxonomy)
- Security team (validates audit log, compliance alignment)
- MSP customers (alpha/beta testers — which segments? How recruited?)
- Legal/compliance (reviews autonomous action policies)

### What Counts as Done for Tier 1 Concept?

[A] **For this brief (30% fidelity):**
1. Domain model defined (entities, services, ubiquitous language) — ✅ Complete
2. Three-gate analysis with [R]/[D]/[A]/[?] tagging — ✅ Complete
3. Gap inventory naming what's missing — ✅ Complete
4. [A]+[?] ratio calculated and flagged — ✅ Complete (72% world-claims, 100% Gate 2)

[?] **For next gate (60% fidelity — "Direction"):**
1. MSP interviews (n≥8): "Which N-zo recommendations do you act on immediately? Which never?"
2. Task taxonomy with risk tiers (Low/Medium/High) sourced from actual MSP operations
3. Competitive analysis: What do ConnectWise Automate, Datto, Kaseya offer for autonomous remediation?
4. Credit model impact analysis: Do autonomous tasks cost more/less than Q&A queries?
5. Rollback feasibility assessment: Which N-central/N-sight APIs support state snapshots?

### Evidence Ratio — Gate 3

- [R]: 0 claims
- [D]: 0 claims
- [A]: 2 claims (Tier 1 definition of done)
- [?]: 9 claims (sandbox, approval flow, rollback, failure modes, stakeholder validation, next-gate requirements)

**[A]+[?] ratio: 11/11 = 100%**

**Verdict:** Test plan is undefined. Stakeholders are unnamed. No acceptance criteria for autonomous execution readiness. Gate 3 is a placeholder at this fidelity.

---

## Failure Modes

1. **Trust cliff** [A] — A single high-profile failure (e.g., N-zo reboots a production server during business hours, causing outage) erodes trust in ALL N-zo features, not just autonomous features. MSPs disable N-zo entirely.

2. **Policy sprawl** [A] — MSPs create hundreds of granular policies ("N-zo can restart print spooler on Windows 10 devices in Device Group A on Tuesdays") that become unmaintainable. Support burden increases, adoption stalls.

3. **Rollback failure cascade** [A] — Task execution succeeds, but rollback fails (device now in inconsistent state). Technician must manually intervene, increasing resolution time beyond original manual workflow. Autonomous execution becomes net-negative.

4. **Approval fatigue** [A] — If trust boundaries are too conservative, every task requires approval. Technicians ignore approval queues → tasks never execute → feature is DOA.

---

## What's Missing (Honest Inventory)

### Research Gaps
- [?] MSP interviews on task frequency, trust boundaries, compliance constraints
- [?] Behavioral data: % of N-zo recommendations acted upon (current N-zo baseline)
- [?] Time-to-execution baseline (median/p90 for manual remediation post-N-zo recommendation)
- [?] Competitive landscape (ConnectWise, Datto, Kaseya autonomous features)

### Design Gaps
- [?] Approval UX (in-app modal? Email? Slack integration? Batch approval for multiple tasks?)
- [?] Rollback UX (how does technician know rollback succeeded? What if rollback is impossible?)
- [?] Policy builder UX (how does MSP admin configure trust boundaries without policy sprawl?)
- [?] ExecutionRecord visibility (where do audit logs surface? N-central Reports? Dedicated "N-zo Actions" page?)

### Engineering Gaps
- [?] N-central/N-sight API coverage for autonomous actions (which tasks are technically feasible?)
- [?] Rollback implementation feasibility (which APIs support pre-task state snapshots?)
- [?] Credit model impact (do autonomous tasks consume more/less credits than Q&A queries?)
- [?] Latency: What is acceptable delay between task queue and execution? (Immediate? 30 seconds? 5 minutes?)

### Business Gaps
- [?] Revenue model: Is autonomous execution included in current N-zo pricing, or premium tier?
- [?] Support impact forecast: Ticket volume increase during rollout?
- [?] Go-to-market: Which MSP segments get early access? (High-trust customers only? Opt-in beta?)

---

## Math Recount Summary

**Three Ratios:**

1. **World-claims (MSPs, market, users — the lead number):**
   - [R]: 5 | [D]: 0 | [A]: 18 | [?]: 18
   - **[A]+[?]: 36/41 = ~88%** ← **This is the headline number**

2. **Test-plan readiness (prototype's own validation):**
   - [R]: 0 | [D]: 0 | [A]: 2 | [?]: 9
   - **[A]+[?]: 11/11 = 100%**

3. **Inflated ratio (includes brief's gap inventory — meta-TODOs):**
   - Adding "What's Missing" section: +16 [?] claims
   - Total: [R]: 5 | [D]: 0 | [A]: 20 | [?]: 34
   - **[A]+[?]: 54/59 = ~92%**

**Flag:** World-claims ratio (88%) exceeds the 70% caution threshold. Problem statement is unverified. No sourced MSP pain. This brief documents a hypothesis, not a validated opportunity.

---

## Recommendation

**Do not proceed to build (Gate 60%) without:**
1. MSP interviews (n≥8) validating the problem and task taxonomy
2. Behavioral baseline from current N-zo (% recommendations acted upon, time-to-execution)
3. Competitive analysis (is autonomous remediation table stakes or differentiator?)
4. Engineering feasibility assessment (rollback support, API coverage)

**This brief is a skeleton for research, not a spec for shipping.**

---

**End of Brief**
