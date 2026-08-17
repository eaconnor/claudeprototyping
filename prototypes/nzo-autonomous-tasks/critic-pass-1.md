# Critic Pass 1 — Pre-Build Scorecard
**Feature:** N-zo Autonomous Task Execution  
**Brief:** `briefs/nzo-autonomous-tasks.brief.md`  
**Fidelity:** 30% (Tier 1 Concept)  
**Reviewed:** 2026-06-02  
**Reviewer:** Critic  

---

## Score Table — 6 Dimensions (1–5 scale)

| Dimension | Score | Reasoning |
|-----------|-------|-----------|
| **1. Coherence** | 4 | Solution (autonomous task execution) directly addresses stated problem (context-switching, latency, cognitive load). Domain model is internally consistent. Services map to entities cleanly. **Deduction:** Problem statement itself is [A] — no sourced MSP pain to trace back to. |
| **2. Source-fidelity** | 1 | **88% [A]+[?] world-claims ratio.** 5 [R] claims (all about current N-zo capabilities), 0 [D] claims, 36 [A]+[?] claims about MSPs, task taxonomy, trust boundaries, compliance, competitive landscape. Gate 1 problem: 72% [A]+[?]. Gate 2 mission/OKR: 100% [A]+[?]. Gate 3 test plan: 100% [A]+[?]. **No sourced customer pain.** This brief documents a hypothesis, not validated opportunity. |
| **3. Demo-ability** | 3 | Domain model defines clear entities (Task, Policy, ExecutionRecord) and services (ExecuteTask, QueueForApproval). A prototype can show the approval flow, execution log, and policy configuration. **Risk:** Without real task taxonomy or trust-boundary research, the demo will show plausible but unvalidated workflows. Seed data will be illustrative fiction, not reality-adjacent. |
| **4. Differentiation** | 2 | [?] Competitive landscape unverified. scout: 09-competitive-landscape.md missing. Brief states MSPs currently "manually execute remediation in N-central/N-sight" but does not confirm whether N-able's own tools already support automation (e.g., scripted tasks, automation policies). [?] Is autonomous remediation table stakes or differentiator? Unknown. **Deduction:** Cannot score differentiation when we don't know what competitors offer or what N-able's own platform already does. |
| **5. Risk** | 4 | Failure modes well-named: (1) Trust cliff — single failure erodes trust in all N-zo features, (2) Policy sprawl — unmaintainable granularity, (3) Rollback failure cascade — device in inconsistent state, (4) Approval fatigue — conservative policies make feature DOA. Counter-metric is specific (rollback rate <2%, override rate <10%, support tickets = 0 in first 90 days). **Deduction:** Risks are named but not researched. No MSP operations data on acceptable failure rates. No engineering assessment of rollback feasibility. Risks are articulated assumptions, not validated constraints. |
| **6. Scope discipline** | 5 | Brief explicitly scopes to single-task autonomous execution, NOT multi-step workflows. Domain model is tight: 4 entities, 4 services, 3 value objects. Ubiquitous language is clear ("Task" = discrete, reversible action). "What's Missing" section honestly inventories 16 gaps across research/design/engineering/business. Tier 1 fidelity expectation (high assumption, low detail) is met. No scope creep. |

**Overall readiness:** 3.2 / 5  
**Build recommendation:** Proceed only if goal is pipeline stress-test, NOT validated prototype for stakeholder review.

---

## Punch List — PASS / FAIL / MISSING / RISK

### PASS

✅ **Domain model structure** — Entities have identity (Task ID, Policy ID, ExecutionRecord ID, Device ID, Technician ID). Value objects are correctly distinguished (TaskStatus, TrustLevel, ApprovalThreshold). Services map to clear triggers (ExecuteTask on query, QueueForApproval on trust threshold).

✅ **Ubiquitous language** — Terms are defined: "Autonomous" (policy-driven approval acceptable, not per-instance), "Task" (discrete, reversible), "Trust boundary" (immediate vs. approval), "Rollback" (revert to pre-task state). Shared vocabulary exists for brief/UI/code.

✅ **Failure mode inventory** — Four specific risks named: trust cliff, policy sprawl, rollback cascade, approval fatigue. Counter-metrics are measurable (rollback rate, override rate, support tickets).

✅ **Scope discipline** — Single-task execution only. Multi-step workflows explicitly excluded. Tier 1 fidelity expectations met.

✅ **Honest gap inventory** — "What's Missing" section lists 16 unknowns across research/design/engineering/business. No gaps hidden.

✅ **Evidence tagging** — [R]/[D]/[A]/[?] applied consistently. Ratios calculated per gate and recounted at end.

---

### FAIL

❌ **Gate 1 problem validation** — Problem statement is [A]. No sourced MSP pain. No data on: (1) Which N-zo recommendations technicians act on vs. ignore, (2) Time-to-execution baseline for manual remediation, (3) Task frequency taxonomy. **72% [A]+[?] world-claims in Gate 1 exceeds 30% threshold.** Brief states: "Verdict: Problem is thin. No sourced MSP pain... Gate 1 is not ready for Gate 2 investment."

❌ **Gate 2 mission alignment** — 100% [A]+[?]. No sourced evidence that autonomous execution advances N-able's mission or customer outcomes. No data on: (1) MSP willingness to delegate, (2) Revenue impact (pricing, retention, upsell), (3) Competitive landscape (table stakes vs. differentiator). Brief states: "Verdict: No sourced evidence that autonomous execution is the right investment."

❌ **Gate 3 test plan** — 100% [A]+[?]. No defined test protocol: (1) Sandbox environment unverified, (2) Approval flow test cases undefined, (3) Rollback acceptance criteria undefined, (4) Failure mode simulation plan missing. Stakeholders unnamed (Product, Security, MSP alpha customers, Legal/Compliance).

❌ **Competitive analysis** — scout: 09-competitive-landscape.md missing. [?] Do ConnectWise Automate, Datto, Kaseya already offer autonomous remediation? Is this feature table stakes or moat? Cannot score differentiation without this.

❌ **Engineering feasibility** — [?] N-central/N-sight API coverage for autonomous actions unverified. [?] Rollback implementation feasibility unknown (which APIs support state snapshots?). [?] Latency requirements undefined (immediate execution? 30 seconds? 5 minutes?). Cannot prototype realistic workflows without API constraints.

---

### MISSING

🔴 **MSP research** — No interviews. No sourced task taxonomy. No trust-boundary validation. No compliance/audit requirement discovery. **Required before Gate 2 (60% fidelity):** n≥8 MSP interviews on: (1) Which N-zo recommendations do you act on immediately? (2) Which tasks would you trust N-zo to execute autonomously? (3) What compliance constraints apply to autonomous remediation?

🔴 **Behavioral baseline** — No current N-zo data on: (1) % recommendations acted upon, (2) Median time-to-execution for manual remediation, (3) Task type distribution (what do technicians actually do after N-zo answers?). **Required to validate OKR:** "40% reduction in median time-to-resolution" — reduction from what baseline?

🔴 **Task taxonomy** — Brief lists examples (restart service, apply patch, clear disk space) but no sourced list from MSP operations. [?] Which tasks are technically feasible via N-central/N-sight APIs? [?] Which tasks support rollback? [?] Which tasks are low-risk vs. high-risk? **Required for prototype seed data** — cannot show realistic approval flows without risk tiers.

🔴 **Rollback strategy** — [?] Which tasks are reversible? [?] Which N-central/N-sight APIs support pre-task state snapshots? [?] What happens when rollback fails (escalation protocol, device quarantine, manual intervention)? **Required for ExecutionRecord entity** — rollback status cannot be "Success/Failed" if rollback mechanism is undefined.

🔴 **Credit model impact** — Current N-zo: 100 credits/tech/month. [?] Do autonomous tasks consume more/less credits than Q&A queries? [?] If autonomous tasks burn credits faster, do technicians hit monthly limits mid-month? **Risk:** Feature may require credit model redesign to avoid adoption blocker.

🔴 **Approval UX specification** — [A] QueueForApproval service exists in domain model. [?] Where does approval request surface (in-app modal, email, Slack, dedicated queue page)? [?] Batch approval for multiple tasks? [?] Notification timing (immediate, digest, escalation if ignored)? **Required for prototype** — cannot show approval flow without defined touchpoints.

🔴 **Policy builder UX** — [A] Policy entity has "allowed task types, trust threshold, escalation rules." [?] How does MSP admin configure these without policy sprawl? (Global templates? Device-group inheritance? Task-type presets?) **Risk:** If policy configuration is too granular, feature becomes unmaintainable (see Failure Mode #2: "Policy sprawl").

🔴 **Audit log visibility** — [A] LogExecution service writes ExecutionRecord. [?] Where do audit logs surface (N-central Reports? Dedicated "N-zo Actions" page? Export to SIEM?)? [?] Retention duration (90 days like chat history, or longer for compliance?)? **Required for compliance validation** — MSPs may have regulatory requirements for autonomous action logs.

🔴 **Stakeholder list** — Gate 3 asks "Who validates trust boundaries?" but provides no names or roles. [?] Product team (defines task taxonomy), [?] Security team (audit/compliance), [?] MSP customers (alpha/beta testers — which segments?), [?] Legal/compliance (reviews autonomous action policies). **Required before build** — cannot prototype without knowing who reviews and approves feature.

---

### RISK

⚠️ **Trust cliff** — [A] "A single high-profile failure (e.g., N-zo reboots production server during business hours) erodes trust in ALL N-zo features, not just autonomous features." **Realistic scenario:** MSPs disable N-zo entirely, not just autonomous tasks. **Mitigation undefined** — no gradual rollout plan, no kill-switch design, no "undo last 10 actions" recovery UX.

⚠️ **Rollback failure cascade** — [A] "Task execution succeeds, but rollback fails (device in inconsistent state). Technician must manually intervene, increasing resolution time beyond original manual workflow." **Realistic scenario:** Autonomous execution becomes net-negative if rollback reliability is <98%. **No sourced rollback success rate from N-central/N-sight APIs** — cannot validate if this risk is 2% or 20%.

⚠️ **Approval fatigue** — [A] "If trust boundaries are too conservative, every task requires approval. Technicians ignore approval queues → tasks never execute → feature is DOA." **Realistic scenario:** Conservative default policies (trust level = Low for all tasks) ship with GA. Technicians get 50 approval requests/day, ignore all. Autonomous execution adoption = 0%. **Mitigation undefined** — no default policy strategy, no "smart approval batching" UX.

⚠️ **Policy sprawl** — [A] "MSPs create hundreds of granular policies ('N-zo can restart print spooler on Windows 10 devices in Device Group A on Tuesdays') that become unmaintainable." **Realistic scenario:** Policy builder UX allows infinite granularity → MSP admins create hyper-specific rules → support tickets spike ("Why didn't N-zo execute this task?" → answer: "Policy #247 conflicts with Policy #18"). **Mitigation undefined** — no policy conflict detection, no policy template library, no "recommended defaults."

⚠️ **Credit burn rate** — [A] "If autonomous tasks consume credits faster than Q&A queries, technicians may hit monthly limits mid-month." **Realistic scenario:** Technician enables autonomous execution for all low-risk tasks → burns through 100 credits in 2 weeks → locked out for rest of month → disables autonomous features permanently. **No sourced credit cost model** — cannot validate if this risk is real or negligible.

⚠️ **Prototype will show plausible fiction, not reality-adjacent workflows** — Without task taxonomy, trust-boundary research, or API constraints, seed data will be illustrative examples (restart print spooler, clear temp files) that may not reflect: (1) What MSPs actually need, (2) What N-central/N-sight APIs support, (3) What compliance/security teams allow. **Risk:** Stakeholders mistake prototype for validated design. **Mitigation:** Fidelity banner must state "Concept only — task types and workflows unverified."

⚠️ **Counter-metric targets are guesses** — [A] "Rollback rate <2%, override rate <10%, support tickets = 0 in first 90 days." **No industry benchmarks, no N-able historical data on automation failure rates.** [CS: LOW — targets are illustrative, not validated]. If real rollback rate is 8%, is that acceptable? Unknown. **Risk:** Shipping with unvalidated success criteria → post-launch scramble to redefine "acceptable failure."

---

## Specific Gaps to Address Before Build

### Critical (blocks realistic prototype)

1. **Task taxonomy** — At minimum, define 8–10 task types with risk tiers (Low/Medium/High) and rollback feasibility (Yes/No/Partial). Source from: (1) N-central/N-sight API documentation (what's technically possible?), (2) Assumed MSP operations (what do technicians do after N-zo recommendations?). Tag all task types as [A] if not sourced from MSP interviews.

2. **Approval flow touchpoints** — Define where approval requests surface. Minimum viable: (1) In-app notification bell in N-zo UI, (2) Modal with "Approve / Deny / View Details" actions, (3) Batch approval for multiple queued tasks. Tag as [A] if not validated with MSP UX research.

3. **Policy defaults** — Define 3 policy templates: (1) Conservative (all tasks require approval), (2) Balanced (low-risk tasks auto-execute, medium/high require approval), (3) Aggressive (all tasks auto-execute unless blacklisted). Ship prototype with "Balanced" as default. Tag as [A].

4. **ExecutionRecord visibility** — Define one primary surface for audit logs. Minimum viable: Dedicated "N-zo Actions" page in N-zo UI with filters (date range, task type, status, device). Tag as [A] if not validated with compliance/security teams.

### Important (improves realism, not blocking)

5. **Credit cost model** — Assume autonomous tasks cost 2x Q&A queries (illustrative). Add "Credit Impact" row to Bradley rail ROI card: "If 50% of N-zo queries shift to autonomous execution, monthly credit consumption increases 50%. May require credit model redesign or price adjustment."

6. **Rollback UX** — Show ExecutionRecord with rollback status: "Task: Restart Print Spooler | Status: Completed | Rollback: N/A (service running normally)" vs. "Task: Apply Patch KB5034441 | Status: Failed | Rollback: Success (patch uninstalled, device rebooted)". Tag as [A].

7. **Failure escalation protocol** — When rollback fails, show "Escalate to Human" button → opens ticket with: (1) Task details, (2) Device current state, (3) Attempted rollback actions, (4) Recommended manual intervention. Tag as [A].

### Nice-to-have (polish, not core)

8. **Policy conflict detection** — If prototype includes policy builder, show warning when new policy conflicts with existing rule: "Policy 'Auto-restart services on weekends' conflicts with Device Group 'Production Servers' policy 'Require approval for all reboots.' Which takes precedence?"

9. **Trust boundary visualization** — On task execution screen, show trust level indicator: "🟢 Low-risk task (auto-execute immediately)" vs. "🟡 Medium-risk task (queued for approval)" vs. "🔴 High-risk task (blocked by policy)."

---

## Recommendation

**Proceed to build only if:**
1. **Goal is pipeline stress-test** — Validating that Build agent can generate coherent prototype from thin brief.
2. **Fidelity banner states:** "Tier 1 Concept — Task types, trust boundaries, and workflows are unverified. 88% assumption ratio. Not for stakeholder review."
3. **Bradley rail calls out evidence gaps** — "Product: Validate task taxonomy with n≥8 MSP interviews before Gate 2. Research: Baseline current N-zo recommendation adherence rate. Eng: Assess N-central/N-sight API rollback support."

**Do not proceed if:**
1. **Goal is stakeholder demo** — 88% [A]+[?] world-claims ratio means prototype will show plausible fiction, not validated workflows. Risk of stakeholders mistaking concept for validated design.
2. **Gate 1 validation is expected** — Problem statement is unverified. No sourced MSP pain. Prototype cannot validate problem/solution fit when problem itself is assumption.

---

**End of Critic Pass 1**
