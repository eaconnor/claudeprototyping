# Council Testimony — N-zo Autonomous Task Execution (Fast Mode)

**Feature:** N-zo Autonomous Task Execution  
**Fidelity:** 30% (Tier 1 Concept)  
**Evidence:** 88% [A]+[?] world-claims — problem unverified  
**Date:** 2026-06-02  
**Mode:** Fast Mode (executive summary + 7 productive tensions from cross-talk)

---

## Executive Summary

**Readiness:** 12/30 · Tier 1 (Concept — high assumption, thin problem)  
**Top tensions:** 7 (from methods cross-talk)  
**Synthesis:** [0% Claude — fill this in after MSP interviews]

**Signal:** The brief documents a hypothesis, not a validated opportunity. 88% of world-claims are assumed or unknown. No sourced MSP pain. No task taxonomy. No trust-boundary research. The feature-as-written is a solution looking for a problem.

**What the tensions reveal:** The methods do not agree on whether this is an autonomy problem (NEEDS), a task-switching problem (JOBS), a low-end disruption play (POS), or an organizational capability question (PORT). They do not agree because the brief has no sourced customer voice to adjudicate.

**Next gate:** Do not proceed to 60% fidelity (Direction) without:
1. MSP interviews (n≥8) validating task taxonomy and trust boundaries
2. Behavioral baseline from current N-zo (% recommendations acted upon, time-to-execution)
3. Competitive analysis (ConnectWise, Datto, Kaseya autonomous features)
4. Engineering feasibility (rollback support, N-central/N-sight API coverage)

---

## 7 Productive Tensions (from cross-talk)

### 1. JOBS vs. NEEDS on technician autonomy

**JOBS (Jobs-to-Be-Done)** reads the brief as a **context-switching cost** problem. The technician is hired to diagnose and remediate. N-zo handles diagnosis. The "job" N-zo could be hired for is execution — eliminating the handoff between recommendation and action. The functional job is "close the ticket faster." The emotional job is "feel in control of remediation without manual toil."

**NEEDS (Self-Determination Theory)** reads the same feature as **autonomy erosion**. If N-zo executes tasks without per-instance human approval, the technician loses agency over the remediation moment. SDT predicts trust cliff: technicians who feel they are "managed by the AI" will disengage, override, or disable the feature. The brief's "policy-driven approval" (ubiquitous language: "N-zo initiates AND completes a task without per-instance human approval") is the exact condition SDT flags as autonomy-undermining.

**Why they contradict:** JOBS assumes the technician wants the task done for them. NEEDS assumes the technician wants control over when/how it's done. Both are valid motivational frames. Neither is sourced.

**Evidence:** [A] — Brief cites "context-switching cost" and "cognitive load" but provides no MSP interviews, no ethnography, no voiced technician preference for delegation vs. control.

**What this means:** If MSPs value control > speed, autonomous execution is a feature technicians will disable. If MSPs value speed > control, it's a winner. The brief cannot tell you which because it has no customer voice.

---

### 2. SIGN vs. JRNY on approval visibility

**SIGN (Semiotics / Abductive Analysis)** reads the approval flow as a **trust signal**. The brief defines "TrustLevel = Low" as "always require approval" and "TrustLevel = High" as "execute immediately" (Domain Model, value objects). But the brief does not specify *how the approval request surfaces*. If approval is invisible (buried in a notification, lost in email), the signal is "N-zo does not respect my time." If approval is immediate and interruptive (modal blocking the chat), the signal is "N-zo does not trust me to know when to intervene."

**JRNY (Journey Mapping / Service Blueprint)** reads the same gap as a **handoff failure**. The brief names `QueueForApproval` as a service (acts on Task + Technician, triggered by TrustLevel=Low or ApprovalThreshold met). But the UX is undefined: "Approval UX undefined; notification mechanism (in-app, email, Slack?) unknown" (Domain Model, services). JRNY asks: What is the technician doing when the approval request arrives? Are they in the N-zo chat? In N-central device console? Responding to another alert? If the approval arrives out of context, the journey breaks.

**Cross-talk:** SIGN's semiotics depends on JRNY's sequence. The *meaning* of the approval request is shaped by *when and where* it appears. SIGN cannot score trust without JRNY's handoff map. JRNY cannot design the handoff without SIGN's signal read.

**Evidence:** [?] — Approval UX unspecified. Notification mechanism unknown. Journey context undefined.

**What this means:** The trust boundary (what N-zo can do immediately vs. what requires confirmation) is not just a policy question. It is a UX question. The brief treats it as a backend service. SIGN and JRNY testify it is a frontstage interaction that will make or break trust.

---

### 3. PORT (Doblin 10 Types) — brief-as-written vs. with org advantages

**PORT (Strategic Portfolio / Doblin 10 Types)** reads the brief as a **Performance innovation** (make existing offering better). The 10 Types framework asks: which of N-able's organizational advantages does this innovation leverage?

**Brief-as-written:** Assumes N-zo already has device telemetry, diagnostic analysis, and recommendation engine (sourced: [R] from scout docs). Autonomous execution adds one new capability: *execute the recommendation*. This is Performance (better AI) + Service (reduce technician toil).

**With N-able's organizational advantages:** N-able operates N-central and N-sight RMM platforms. MSPs already use these tools to execute remediation tasks. N-able has:
- **Channel advantage** — existing device management APIs MSPs trust
- **Network advantage** — multi-tenant architecture already built for isolation and compliance
- **Process advantage** — audit logs, role-based access, credit metering already enforced

PORT asks: Why is autonomous execution an *AI feature* and not an *RMM workflow automation feature*? The brief positions it as "N-zo initiates AND completes a task" (Domain Model, ubiquitous language). But N-central can already do task automation (e.g., scripted remediation, scheduled maintenance). The innovation is not autonomous execution per se — it is **AI-triggered autonomous execution**, where the LLM decides *which* task to run based on diagnostic context.

**Tension:** If the value is "AI decides what to fix," this is a **Performance innovation in AI judgment**. If the value is "one-click remediation," this is a **Service innovation in workflow**, and the AI is incidental. The brief conflates the two.

**Evidence:** [?] — Competitive analysis missing. No data on how MSPs currently automate remediation tasks in N-central. No research on whether MSPs want *AI judgment* or *execution speed*.

**What this means:** The innovation type is unclear. This changes GTM, pricing, positioning, and roadmap priority. PORT cannot score portfolio fit without knowing which advantage the feature leverages.

---

### 4. POS (Disruptive Innovation) — low-end disruption risk

**POS (Market Position / Disruptive Innovation)** reads the brief through Christensen's lens: Is this sustaining (better product for existing customers) or disruptive (simpler product for overserved customers or new market)?

**Disruptive signal:** The brief cites "40% reduction in median time-to-resolution for routine remediation tasks" (OKR). "Routine" and "low-risk" are the exact adjectives Christensen uses to describe **low-end disruption**. Low-end disruptors win by automating the "good enough" tier of the market, then climbing upmarket.

**Threat vector:** ConnectWise, Datto, Kaseya, or a new entrant (Huntress, per methods library context) could offer autonomous remediation at lower price or simpler UX. If N-able positions autonomous execution as a premium feature (gated behind higher N-zo credit limits, or premium tier), they leave the low end undefended. A competitor offering "autonomous patch + restart for $5/device/month" pulls MSPs managing small clients (10–50 endpoints) out of the N-able ecosystem.

**Counter-argument from brief:** The brief assumes autonomous execution *increases* N-zo engagement and stickiness ("more queries if users trust actions will be taken" — Gate 2, secondary outcomes). This is a **sustaining play** — make N-zo better for existing high-engagement MSPs.

**Cross-talk with PORT:** If this is Performance (sustaining), it should be priced into existing N-zo. If this is low-end defense, it should be cheaper than manual remediation alternatives. The brief does not state pricing strategy.

**Evidence:** [?] — Competitive landscape unverified. No data on whether competitors already offer autonomous remediation. No GTM pricing strategy.

**What this means:** If N-able treats this as sustaining innovation and prices it premium, they risk low-end disruption. If they treat it as low-end defense and give it away, they may cannibalize N-central automation upsell. POS testifies this is a strategic fork, not a feature add.

---

### 5. ECON (Economic Buyer) — who pays? MSP or end-client?

**ECON (Economic Buyer / Value-Based Pricing)** asks: Who captures the value, and who pays for it?

**Value created (per brief):**
- **Time savings:** 40% reduction in median time-to-resolution (OKR). If median resolution time is 15 minutes, autonomous execution saves 6 minutes per task.
- **Cognitive load reduction:** Technician does not context-switch between N-zo and device console (assumed, not sourced).

**Who captures this value?**
- **MSP:** Lower labor cost per ticket. Can handle more clients with same headcount.
- **End-client:** Faster resolution (if MSP passes savings through as better SLA).

**Who pays?**
- **Current N-zo model:** MSP pays (100 credits/tech/month, account-level enablement). Autonomous execution would consume credits faster than Q&A queries (brief flags this: "Credit burn rate" — Gate 2, counter-metric).
- **Pricing gap:** If autonomous tasks consume more credits, MSPs hit monthly limits faster. They either: (a) buy more credits, (b) ration autonomous execution, or (c) disable the feature to preserve credits for diagnostic queries.

**ECON's objection:** The brief assumes MSPs will pay more for a feature that saves them time. But MSPs operate on thin margins. If autonomous execution increases cost (via credit consumption), MSPs may not adopt unless the time savings exceed the credit cost. The brief provides no break-even analysis.

**Cross-talk with JOBS:** JOBS says the functional job is "close the ticket faster." ECON says the economic job is "close the ticket cheaper." These jobs can conflict. If autonomous execution is faster but more expensive, MSPs serving low-margin clients (small business, high ticket volume) will not adopt.

**Evidence:** [?] — Credit model impact undefined. No data on autonomous task cost vs. Q&A query cost. No MSP margin analysis.

**What this means:** The business model is unverified. ECON testifies that pricing strategy must be resolved before GTM, or the feature will be technically successful and commercially DOA.

---

### 6. LAND (Wardley Mapping) — API maturity dependency

**LAND (Landscape / Wardley Mapping)** reads the brief as a **value chain play** with an unverified dependency: the maturity of N-central / N-sight device management APIs.

**Wardley's evolution axis:** Components evolve from Genesis (novel, uncertain) → Custom-built → Product (+rental) → Commodity (+utility). Autonomous task execution depends on:
1. **LLM inference** — Commodity (AWS Bedrock, per scout docs). High maturity.
2. **Device telemetry** — Product (N-central / N-sight already provide CPU, memory, disk, patch status). High maturity.
3. **Task execution APIs** — Uncertain. Brief flags: "[?] N-central/N-sight API coverage for autonomous actions (which tasks are technically feasible?)" (Gate 3, engineering gaps).
4. **Rollback APIs** — Uncertain. Brief flags: "[?] Rollback implementation feasibility (which APIs support pre-task state snapshots?)" (Gate 3, engineering gaps).

**Wardley's lesson:** You cannot build a Product-stage feature on Genesis-stage dependencies. If rollback APIs do not exist, N-able must custom-build them. This shifts the feature from "AI layer on top of RMM" to "RMM infrastructure upgrade." The timeline, cost, and risk profile change completely.

**LAND's objection:** The brief treats autonomous execution as an AI feature. Wardley testifies it is an *API maturity* question. If the RMM layer is not ready, the AI layer cannot ship.

**Cross-talk with POS (Disruptive Innovation):** If N-able must custom-build rollback APIs, the feature becomes expensive and slow to ship. A competitor with simpler RMM stack (fewer device types, narrower task taxonomy) can ship autonomous execution faster. This is classic disruption: the incumbent's complexity becomes a liability.

**Evidence:** [?] — N-central/N-sight API coverage unverified. Rollback feasibility unknown. No engineering discovery on state snapshot support.

**What this means:** The brief assumes the RMM foundation is ready. LAND testifies it may not be. If APIs are immature, this is not a 6-month AI feature — it is a 12–18 month platform upgrade.

---

### 7. FEAT (Kano Model) — Performance attribute vs. Delighter vs. Must-Have?

**FEAT (Feature Quality / Kano Model)** reads the brief as a **Performance attribute** — more of it is better, but absence is not a dealbreaker. Kano asks: Is autonomous execution:
- **Must-Have (Basic):** Absence causes dissatisfaction. Presence is expected, not praised.
- **Performance (Linear):** More is better. Customers will pay for incremental improvement.
- **Delighter (Excitement):** Unexpected. Presence causes delight. Absence is not noticed.

**Brief-as-written:** Assumes Performance. OKR is "40% reduction in median time-to-resolution" — a linear metric. Faster is better. Kano predicts: MSPs will adopt if the time savings justify the cost, and ignore it if savings do not.

**Kano's alternative read:** Autonomous execution could be a **Delighter** — but only if it works flawlessly on the first try. If the first autonomous task succeeds (e.g., N-zo restarts print spooler, ticket auto-closes, technician never touched the device), that is delight. If the first autonomous task fails (e.g., rollback fails, device left in inconsistent state, technician must manually intervene), that is betrayal. Delighters have asymmetric risk: massive upside if perfect, trust cliff if flawed.

**Kano's objection:** The brief's counter-metric acknowledges trust erosion risk (rollback rate, override rate, "N-zo broke something" tickets). But the brief does not specify **what % success rate is required to avoid trust cliff**. If 95% success is required, and current engineering feasibility is 80%, the feature is not shippable. Kano testifies that the difference between Performance and Delighter is not the feature — it is the *reliability threshold*.

**Cross-talk with SIGN:** SIGN (semiotics) says trust is built through signal consistency. If autonomous execution sometimes works and sometimes fails, the signal is "N-zo is unpredictable." Kano and SIGN converge: the feature must be near-perfect or opt-in-only. There is no middle ground.

**Evidence:** [?] — Success rate target undefined. No rollback failure data. No research on MSP tolerance for autonomous task errors.

**What this means:** The brief assumes autonomous execution is a Performance attribute (incrementally valuable). FEAT testifies it may be a Delighter with high reliability requirements. The go/no-go decision depends on engineering feasibility data the brief does not have.

---

## What the Tensions Demand

The 7 tensions above are not conflicts to resolve. They are **decision points the brief has not yet addressed**:

1. **JOBS vs. NEEDS:** Do MSPs value speed or control? (Requires MSP interviews.)
2. **SIGN vs. JRNY:** Where does approval surface, and what does that signal? (Requires UX design + ethnography.)
3. **PORT:** Is this an AI innovation or an RMM innovation? (Requires competitive analysis + org advantage assessment.)
4. **POS:** Sustaining or low-end defense? (Requires pricing strategy + competitive landscape.)
5. **ECON:** Who pays, and is the value worth the cost? (Requires credit model analysis + MSP margin research.)
6. **LAND:** Are the APIs ready? (Requires engineering discovery on rollback feasibility.)
7. **FEAT:** What success rate is required to avoid trust cliff? (Requires reliability target + failure-mode testing.)

**Synthesis slot:** [0% Claude — fill this in after MSP interviews]

---

**End of Council Testimony (Fast Mode)**
