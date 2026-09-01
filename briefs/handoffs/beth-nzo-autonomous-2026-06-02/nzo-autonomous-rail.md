# Bradley Rail — N-zo Autonomous Tasks

**Fidelity:** Tier 1 Concept (30%)  
**Readiness:** NOT READY (88% [A]+[?])  
**Date:** 2026-06-02

---

## Readiness Badge

**Tier 1 · Concept**  
**Readiness:** NOT READY (88% [A]+[?])

---

## What This Tests

This prototype tests autonomous task execution workflows — N-zo moving from Q&A assistant to proactive agent. Task types, trust boundaries, and workflows are unverified.

---

## What You Nailed

✓ **Domain model is internally consistent** — Entities (Task, Policy, ExecutionRecord, Device, Technician) have clear identity. Services (ExecuteTask, QueueForApproval, EscalateToHuman, LogExecution) map cleanly to triggers. Ubiquitous language is defined: "Autonomous," "Task," "Trust boundary," "Rollback."

✓ **Failure modes well-named** — Trust cliff (single failure erodes trust in all N-zo features). Rollback failure cascade (task succeeds, rollback fails, device in inconsistent state). Approval fatigue (conservative policies → 50 approval requests/day → ignored queues → feature DOA). Policy sprawl (hundreds of granular policies become unmaintainable).

✓ **Scope discipline** — Single-task execution only. No multi-step workflows. ExecutionRecord shows discrete actions: restart service (45-90 seconds), apply patch (8-12 minutes), clear disk space (3-5 minutes). No orchestration. No chained tasks. Perfect adherence to brief's constraint: "Task = discrete, reversible action, NOT multi-step workflow."

---

## What Will Hurt You

× **88% [A]+[?] world-claims** — Problem statement unverified. No sourced MSP pain. No task taxonomy from actual operations. No trust-boundary research. Brief documents hypothesis, not validated opportunity.

× **No task taxonomy from actual MSP operations** — Brief lists RestartService, ApplyPatch, ClearDiskSpace as examples. No verification these are the tasks MSPs need N-zo to execute. No risk tiers. No sourced frequency data.

× **No trust-boundary research or compliance validation** — Brief assumes MSPs will delegate low-risk tasks. No interviews. No data on what MSPs consider "low-risk" vs. "too risky for automation." No compliance/audit requirement discovery.

× **No engineering feasibility assessment** — [?] N-central/N-sight API coverage unverified. [?] Rollback implementation feasibility unknown. Brief treats autonomous execution as AI feature. May be RMM infrastructure upgrade (12–18 months, not 6 months).

× **Prototype shows plausible fiction, not reality-adjacent workflows** — Seed data is illustrative (SRV-ACME-DC01, TASK-4521, KB5034441). Without task taxonomy, trust-boundary research, or API constraints, prototype demonstrates workflows that may not reflect: (1) What MSPs need, (2) What N-central/N-sight APIs support, (3) What compliance/security teams allow.

× **First failure erodes trust in all N-zo features** — Brief's trust cliff risk: "A single high-profile failure (e.g., N-zo reboots production server during business hours) erodes trust in ALL N-zo features, not just autonomous features." Counter-metric is unvalidated: rollback rate <2%, override rate <10%, zero "N-zo broke something" tickets in first 90 days. No industry benchmarks. No N-able historical data on automation failure rates.

× **No policy configuration complexity research** — Brief flags policy sprawl risk: "MSPs create hundreds of granular policies that become unmaintainable." No UX research on how MSPs configure automation policies in N-central. No data on acceptable policy complexity.

---

## Routed Cards

### Product

**Product Does:** Validate task taxonomy with **n≥8 MSP interviews**. Questions: (1) Which N-zo recommendations do you act on immediately? (2) Which tasks would you trust N-zo to execute autonomously? (3) What compliance constraints apply to autonomous remediation?

**Why Now:** **[A] 88% assumption ratio** — problem unverified. Cannot build to Tier 2 (Direction / 60% fidelity) without sourcing MSP pain and trust boundaries. Brief states: "Verdict: Problem is thin. No sourced MSP pain... Gate 1 is not ready for Gate 2 investment."

**If You Ship Without It:** Risk building plausible fiction that MSPs don't need or won't trust. Autonomous execution may be table stakes (competitors already offer) or DOA (compliance prohibits). Post-launch adoption = 0%. Stakeholders mistake concept for validated design.

**[ROI]**
- **Business:** Unknown — no data on revenue impact (pricing, retention, upsell) or competitive differentiation. [?] Do ConnectWise, Datto, Kaseya already offer autonomous remediation? Is this table stakes or moat?
- **User:** Unknown — no baseline on time-to-execution for manual remediation post-N-zo recommendation. OKR is "40% reduction in median time-to-resolution" — reduction from what baseline? Unknown.
- **Unknown:** MSP willingness to delegate (do technicians value speed > control, or control > speed?), credit model impact (do autonomous tasks burn credits faster than Q&A?), rollback feasibility (which N-central/N-sight APIs support state snapshots?).

---

### Research

**Research Does:** Baseline current N-zo behavior. Metrics: (1) % of N-zo recommendations acted upon vs. ignored, (2) Median time-to-execution for manual remediation post-N-zo recommendation, (3) Task type distribution (what do technicians do after N-zo answers?).

**Why Now:** **[A] OKR is "40% reduction in median time-to-resolution"** — reduction from what baseline? Unknown. Cannot validate if autonomous execution delivers promised time savings without behavioral baseline. Brief flags: "[?] What % of N-zo recommendations are acted upon vs. ignored? (No behavioral data)."

**If You Ship Without It:** Cannot validate if autonomous execution solves real problem. May ship feature that addresses non-problem. OKR is unverifiable. Post-launch: "Did we hit 40% reduction?" → "Reduction from what?" → no answer.

**[ROI]**
- **Business:** Unknown — no data on support load impact. Will autonomous execution reduce support tickets (fewer "how do I...?" escalations) or spike support tickets (early rollout errors, "N-zo changed my config without asking")?
- **User:** Unknown — claimed time savings (95-99% per scout: 01-nzo-faqs.md) are for Q&A, not autonomous execution. No data on time-to-execution for manual remediation tasks.
- **Unknown:** Behavioral adherence rate (do technicians follow N-zo recommendations, or ignore them?), task frequency taxonomy (which tasks happen daily vs. weekly vs. monthly?), compliance constraints (do MSPs have regulatory requirements for human-in-the-loop?).

---

### Design

**Design Does:** Define approval UX touchpoints, rollback UX, policy builder UX. Questions: (1) Where does approval request surface (in-app notification? modal? batch approval?)? (2) How does technician know rollback succeeded? What if rollback is impossible? (3) How does MSP admin configure trust boundaries without policy sprawl?

**Why Now:** **[A] QueueForApproval and ExecutionRecord** are in domain model but UX is undefined. Brief flags: "Approval UX undefined; notification mechanism (in-app, email, Slack?) unknown." Cannot prototype realistic workflows without knowing where these surfaces live. Prototype shows approval flow (Approve/Deny buttons) but context is unspecified: What is technician doing when approval arrives? Are they in N-zo chat? In N-central console? Responding to another alert?

**If You Ship Without It:** Risk approval fatigue (conservative policies → 50 approval requests/day → ignored queues → tasks never execute → feature DOA). Risk trust cliff (no rollback visibility → first failure erodes trust in all N-zo features → MSPs disable N-zo entirely). Risk policy sprawl (no conflict detection → MSP admins create hundreds of hyper-specific rules → support burden increases).

**[ROI]**
- **Business:** Unknown — no data on adoption impact. Will approval friction block usage? Will policy complexity generate support tickets?
- **User:** Unknown — no UX research on technician trust boundaries (what do they want to approve vs. delegate?), preferred notification channels (in-app? email? Slack?), or rollback expectations (is 95% success acceptable, or 98% required?).
- **Unknown:** Policy configuration complexity (how many policies is too many?), audit log requirements (where do ExecutionRecords surface? N-central Reports? Dedicated "N-zo Actions" page? Export to SIEM?), credit burn rate visibility (do technicians see credit balance before approving autonomous tasks?).

---

### Eng

**Eng Does:** Assess N-central/N-sight API coverage for autonomous actions. Questions: (1) Which tasks are technically feasible (RestartService, ApplyPatch, ClearDiskSpace are examples in brief — are these real APIs?)? (2) Which APIs support rollback (state snapshots? task-specific undo logic?)? (3) What is realistic rollback success rate (95%? 80%? 60%)? (4) What latency is acceptable (immediate execution? 30 seconds? 5 minutes?)?

**Why Now:** **[A] Task taxonomy in brief** lists examples but no verification these APIs exist or support rollback. Brief flags: "[?] N-central/N-sight API coverage for autonomous actions (which tasks are technically feasible?)" and "[?] Rollback implementation feasibility (which APIs support pre-task state snapshots?)." Cannot build to Tier 2 without API constraints. LAND (Wardley Mapping) testifies: "You cannot build a Product-stage feature on Genesis-stage dependencies. If rollback APIs do not exist, N-able must custom-build them. This shifts feature from 'AI layer on RMM' to 'RMM infrastructure upgrade.' Timeline, cost, and risk profile change completely."

**If You Ship Without It:** Risk rollback failure cascade (task succeeds, rollback fails, device in inconsistent state → autonomous execution becomes net-negative → resolution time increases beyond original manual workflow). Risk feature scope mismatch (promise tasks N-central/N-sight APIs cannot support → build team discovers API gaps mid-development → scope cut or timeline slip). Risk trust cliff (rollback success rate is 60%, not 95% → first failure erodes trust in all N-zo features).

**[ROI]**
- **Business:** Unknown — engineering cost to build rollback infrastructure vs. reuse existing N-central automation. Is autonomous execution an AI feature (6-month timeline) or RMM platform upgrade (12–18 month timeline)?
- **User:** Unknown — acceptable rollback failure rate. Brief assumes <2% rollback failure is acceptable (counter-metric). Is that realistic? If rollback succeeds 80% of time, is that good enough, or does that trigger trust cliff?
- **Unknown:** API latency (how fast can N-central execute a task? immediate? 30 seconds? 5 minutes?), credit cost model (do autonomous tasks consume more API calls than Q&A queries? 2x? 5x?), SIEM export requirements (do MSPs need ExecutionRecords exported to external audit systems?).

---

## Council (Fast Mode)

**Readiness:** 12/30 · Tier 1 (Concept)  
**Tensions:** 7 (from methods cross-talk)  
**Synthesis:** [0% Claude — fill this in after MSP interviews]

**Top 7 Tensions:**

1. **JOBS vs. NEEDS** — JOBS says "MSPs hiring to reduce doing" → autonomous execution reduces toil. SDT says "MSPs hiring to retain felt competence" → removing task execution may erode technician sense of mastery. Both readings are [A] (sourced to theory, not MSP research). If MSPs value control > speed, autonomous execution is a feature technicians will disable.

2. **SIGN vs. JRNY** — SIGN says approval flow is trust signal. If approval is invisible (buried in notification), signal is "N-zo does not respect my time." JRNY says approval is handoff failure if it arrives out of context. The trust boundary (what N-zo can do immediately vs. what requires confirmation) is not just policy — it is UX. [?] Approval UX unspecified.

3. **PORT (Doblin 10 Types)** — Brief-as-written scores 4/20 (Performance innovation in AI). With N-able's org advantages (Channel, Network, Process), scores 8-12/20. Is this an AI innovation or RMM innovation? Brief conflates the two. [?] Competitive analysis missing.

4. **POS (Disruptive Innovation)** — Flags low-end disruption risk. If N-able positions autonomous execution as premium feature, competitor offering "autonomous patch + restart for $5/device/month" pulls MSPs managing small clients out of N-able ecosystem. [?] Competitive landscape unverified.

5. **ECON (Economic Buyer)** — Who pays, and is value worth cost? If autonomous tasks consume more credits, MSPs hit monthly limits faster. JOBS says functional job is "close ticket faster." ECON says economic job is "close ticket cheaper." These can conflict. [?] Credit model impact undefined.

6. **LAND (Wardley)** — Autonomous execution depends on N-central/N-sight API maturity. If rollback APIs do not exist, this is not 6-month AI feature — it is 12–18 month platform upgrade. [?] API coverage unverified.

7. **FEAT (Kano)** — Brief assumes autonomous execution is Performance attribute (more = better). Kano says it may be Delighter (unexpected, trust-building) — but only if it works flawlessly on first try. If 95% success is required, and current feasibility is 80%, feature is not shippable. [?] Success rate target undefined.

---

**End of Bradley Rail**
