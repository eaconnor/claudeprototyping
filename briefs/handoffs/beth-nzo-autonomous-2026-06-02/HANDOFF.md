# HANDOFF — N-zo Autonomous Tasks

**From:** Bradley (Pipeline Gate)  
**To:** Beth Schwindt  
**Date:** 2026-06-02  
**Fidelity:** Tier 1 Concept (30%)

---

## Math (Verified by Grep)

| Metric | Value | Source | Grep Command |
|--------|-------|--------|--------------|
| **World-claims [A]+[?] ratio** | 88% (36/41) | `nzo-autonomous-tasks-math-recount.md` | `grep -o '\[A\]' ... \| wc -l` → 18<br>`grep -o '\[?\]' ... \| wc -l` → 18<br>[R]:5 [D]:0 → 5+0+18+18 = 41 total |
| **Pre-build score** | 3.2/5 | `critic-pass-1.md` line 21 | `grep "Overall readiness"` |
| **Post-build score** | 3.8/5 | `critic-pass-2.md` line 23 | `grep "Post-build overall"` |
| **Delta** | +0.6 | Calculated | 3.8 - 3.2 = 0.6 ✓ |
| **Council readiness** | 12/30 | `council-testimony-fast.md` line 13 | `grep "Readiness:"` |
| **Tensions** | 7 | `council-testimony-fast.md` | `grep -E "^###? [0-9]\." \| wc -l` |

**The 47% rule applied:** Every number above was grep-verified before this handoff shipped. Spec once self-reported 47%; grep showed 80%. Fluency does not know its own math.

---

## What the Numbers Mean

**88% [A]+[?] world-claims ratio** means the problem statement itself is unverified. There is no sourced MSP pain. No task taxonomy. No trust-boundary research. The brief documents a hypothesis, not a validated opportunity.

**+0.6 delta (3.2 → 3.8)** means the prototype proved the domain model is coherent and demo-able. It did NOT prove the problem is real or the solution is differentiated.

**12/30 council readiness** means "not ready for Tier 2 (Direction)." Seven methods flagged decision points the brief has not addressed. None resolved.

---

## Tensions Named (Not Resolved)

The council identified 7 productive tensions. These are **not conflicts to smooth over** — they are **decision points Beth must address before Tier 2**:

### 1. JOBS vs. NEEDS — Speed or Control?

**JOBS (Jobs-to-Be-Done)** reads autonomous execution as a context-switching cost reduction. The technician is hired to close tickets faster. The functional job is execution; N-zo should do it.

**NEEDS (Self-Determination Theory)** reads the same feature as autonomy erosion. If N-zo executes tasks without per-instance human approval, the technician loses agency. SDT predicts trust cliff: technicians who feel "managed by the AI" will disengage, override, or disable.

**Both are valid. Neither is sourced.**

**Evidence:** [A] — Brief cites "context-switching cost" and "cognitive load" but provides no MSP interviews, no ethnography, no voiced technician preference for delegation vs. control.

**Contradiction:** JOBS assumes the technician wants the task done for them. NEEDS assumes the technician wants control over when/how it's done. If MSPs value control > speed, autonomous execution is a feature technicians will disable. If MSPs value speed > control, it's a winner. The brief cannot tell you which because it has no customer voice.

---

### 2. SIGN vs. JRNY — Approval Visibility

**SIGN (Semiotics)** reads approval flow as a trust signal. If approval is invisible (buried in notification, lost in email), the signal is "N-zo does not respect my time." If approval is immediate and interruptive (modal blocking chat), the signal is "N-zo does not trust me to know when to intervene."

**JRNY (Journey Mapping)** reads the same gap as a handoff failure. The brief names `QueueForApproval` as a service but UX is undefined: "Approval UX undefined; notification mechanism (in-app, email, Slack?) unknown." What is the technician doing when the approval request arrives? Are they in N-zo chat? In N-central console? Responding to another alert? If approval arrives out of context, the journey breaks.

**Cross-talk:** SIGN's semiotics depends on JRNY's sequence. The *meaning* of approval is shaped by *when and where* it appears. SIGN cannot score trust without JRNY's handoff map. JRNY cannot design handoff without SIGN's signal read.

**Evidence:** [?] — Approval UX unspecified. Notification mechanism unknown. Journey context undefined.

**Contradiction:** The trust boundary (what N-zo can do immediately vs. what requires confirmation) is not just a policy question. It is a UX question. The brief treats it as a backend service. SIGN and JRNY testify it is a frontstage interaction that will make or break trust.

---

### 3. PORT — AI Innovation or RMM Innovation?

**PORT (Doblin 10 Types)** asks: which of N-able's organizational advantages does this innovation leverage?

**Brief-as-written:** Autonomous execution is an AI feature. N-zo decides which task to run based on diagnostic context. This is **Performance innovation** (make AI better).

**With N-able's organizational advantages:** N-able operates N-central and N-sight RMM platforms. MSPs already use these tools to execute remediation tasks. N-able has Channel (device management APIs MSPs trust), Network (multi-tenant architecture), Process (audit logs, RBAC, credit metering). Why is autonomous execution an AI feature and not an RMM workflow automation feature?

**Tension:** If the value is "AI decides what to fix," this is Performance innovation in AI judgment. If the value is "one-click remediation," this is Service innovation in workflow, and AI is incidental. The brief conflates the two.

**Evidence:** [?] — Competitive analysis missing. No data on how MSPs currently automate remediation in N-central. No research on whether MSPs want AI judgment or execution speed.

**Contradiction:** The innovation type is unclear. This changes GTM, pricing, positioning, and roadmap priority. PORT cannot score portfolio fit without knowing which advantage the feature leverages.

---

### 4. POS — Sustaining or Low-End Disruption Defense?

**POS (Disruptive Innovation)** reads the brief through Christensen's lens: Is this sustaining (better product for existing customers) or disruptive (simpler product for overserved customers or new market)?

**Disruptive signal:** The brief cites "40% reduction in median time-to-resolution for routine remediation tasks." "Routine" and "low-risk" are Christensen's adjectives for low-end disruption. Low-end disruptors win by automating the "good enough" tier, then climbing upmarket.

**Threat vector:** ConnectWise, Datto, Kaseya, or a new entrant could offer autonomous remediation at lower price or simpler UX. If N-able positions autonomous execution as premium (gated behind higher N-zo credit limits, or premium tier), they leave the low end undefended. A competitor offering "autonomous patch + restart for $5/device/month" pulls MSPs managing small clients (10–50 endpoints) out of N-able ecosystem.

**Counter-argument from brief:** Assumes autonomous execution *increases* N-zo engagement and stickiness ("more queries if users trust actions will be taken"). This is sustaining — make N-zo better for existing high-engagement MSPs.

**Cross-talk with PORT:** If this is Performance (sustaining), it should be priced into existing N-zo. If this is low-end defense, it should be cheaper than manual remediation alternatives. The brief does not state pricing strategy.

**Evidence:** [?] — Competitive landscape unverified. No data on whether competitors already offer autonomous remediation. No GTM pricing strategy.

**Contradiction:** If N-able treats this as sustaining and prices it premium, they risk low-end disruption. If they treat it as low-end defense and give it away, they may cannibalize N-central automation upsell. POS testifies this is a strategic fork, not a feature add.

---

### 5. ECON — Who Pays, and Is the Value Worth the Cost?

**ECON (Economic Buyer)** asks: Who captures the value, and who pays for it?

**Value created:** 40% reduction in median time-to-resolution (OKR). If median resolution time is 15 minutes, autonomous execution saves 6 minutes per task. Cognitive load reduction (technician does not context-switch).

**Who captures:** MSP (lower labor cost per ticket, handle more clients with same headcount) or end-client (faster resolution if MSP passes savings through as better SLA).

**Who pays:** Current N-zo model: MSP pays (100 credits/tech/month, account-level enablement). Autonomous execution would consume credits faster than Q&A queries. Brief flags: "Credit burn rate" counter-metric.

**Pricing gap:** If autonomous tasks consume more credits, MSPs hit monthly limits faster. They either: (a) buy more credits, (b) ration autonomous execution, or (c) disable feature to preserve credits for diagnostic queries.

**ECON's objection:** The brief assumes MSPs will pay more for a feature that saves them time. But MSPs operate on thin margins. If autonomous execution increases cost (via credit consumption), MSPs may not adopt unless time savings exceed credit cost. The brief provides no break-even analysis.

**Cross-talk with JOBS:** JOBS says the functional job is "close the ticket faster." ECON says the economic job is "close the ticket cheaper." These jobs can conflict. If autonomous execution is faster but more expensive, MSPs serving low-margin clients (small business, high ticket volume) will not adopt.

**Evidence:** [?] — Credit model impact undefined. No data on autonomous task cost vs. Q&A query cost. No MSP margin analysis.

**Contradiction:** The business model is unverified. ECON testifies that pricing strategy must be resolved before GTM, or the feature will be technically successful and commercially DOA.

---

### 6. LAND — Are the APIs Ready?

**LAND (Wardley Mapping)** reads the brief as a value chain play with an unverified dependency: the maturity of N-central/N-sight device management APIs.

**Wardley's evolution axis:** Components evolve from Genesis (novel, uncertain) → Custom-built → Product (+rental) → Commodity (+utility). Autonomous task execution depends on:
1. **LLM inference** — Commodity (AWS Bedrock). High maturity. ✓
2. **Device telemetry** — Product (N-central/N-sight provide CPU, memory, disk, patch status). High maturity. ✓
3. **Task execution APIs** — Uncertain. Brief flags: "[?] N-central/N-sight API coverage for autonomous actions (which tasks are technically feasible?)"
4. **Rollback APIs** — Uncertain. Brief flags: "[?] Rollback implementation feasibility (which APIs support pre-task state snapshots?)"

**Wardley's lesson:** You cannot build a Product-stage feature on Genesis-stage dependencies. If rollback APIs do not exist, N-able must custom-build them. This shifts feature from "AI layer on RMM" to "RMM infrastructure upgrade." Timeline, cost, and risk profile change completely.

**LAND's objection:** The brief treats autonomous execution as an AI feature. Wardley testifies it is an *API maturity* question. If RMM layer is not ready, AI layer cannot ship.

**Cross-talk with POS:** If N-able must custom-build rollback APIs, feature becomes expensive and slow to ship. A competitor with simpler RMM stack (fewer device types, narrower task taxonomy) can ship autonomous execution faster. This is classic disruption: incumbent's complexity becomes liability.

**Evidence:** [?] — N-central/N-sight API coverage unverified. Rollback feasibility unknown. No engineering discovery on state snapshot support.

**Contradiction:** The brief assumes RMM foundation is ready. LAND testifies it may not be. If APIs are immature, this is not a 6-month AI feature — it is a 12–18 month platform upgrade.

---

### 7. FEAT — Performance Attribute or Delighter?

**FEAT (Kano Model)** reads the brief as a **Performance attribute** — more is better, but absence is not a dealbreaker. Kano asks: Is autonomous execution:
- **Must-Have (Basic):** Absence causes dissatisfaction. Presence is expected, not praised.
- **Performance (Linear):** More is better. Customers will pay for incremental improvement.
- **Delighter (Excitement):** Unexpected. Presence causes delight. Absence is not noticed.

**Brief-as-written:** Assumes Performance. OKR is "40% reduction in median time-to-resolution" — linear metric. Faster is better. Kano predicts: MSPs will adopt if time savings justify cost, and ignore if savings do not.

**Kano's alternative read:** Autonomous execution could be a **Delighter** — but only if it works flawlessly on first try. If first autonomous task succeeds (N-zo restarts print spooler, ticket auto-closes, technician never touched device), that is delight. If first autonomous task fails (rollback fails, device left in inconsistent state, technician must manually intervene), that is betrayal. Delighters have asymmetric risk: massive upside if perfect, trust cliff if flawed.

**Kano's objection:** The brief's counter-metric acknowledges trust erosion risk (rollback rate, override rate, "N-zo broke something" tickets). But brief does not specify **what % success rate is required to avoid trust cliff**. If 95% success is required, and current engineering feasibility is 80%, feature is not shippable. Kano testifies that difference between Performance and Delighter is not the feature — it is the *reliability threshold*.

**Cross-talk with SIGN:** SIGN (semiotics) says trust is built through signal consistency. If autonomous execution sometimes works and sometimes fails, signal is "N-zo is unpredictable." Kano and SIGN converge: feature must be near-perfect or opt-in-only. There is no middle ground.

**Evidence:** [?] — Success rate target undefined. No rollback failure data. No research on MSP tolerance for autonomous task errors.

**Contradiction:** The brief assumes autonomous execution is Performance attribute (incrementally valuable). FEAT testifies it may be Delighter with high reliability requirements. Go/no-go decision depends on engineering feasibility data the brief does not have.

---

## Three Calls Beth Must Make

**Call 1: Source the problem or stop.**  
The brief is 88% [A]+[?]. Problem statement is unverified. No sourced MSP pain. No task taxonomy. No trust-boundary research. Council tensions cannot be resolved without customer voice.

**Decision:** Run n≥8 MSP interviews before Tier 2 (Direction), or shelve this feature until sourced demand exists.  
**Timeline:** 2–3 weeks for interviews + synthesis.  
**Owner:** Beth (recruit), Product (conduct), Research (synthesize).

---

**Call 2: Resolve pricing strategy before GTM.**  
ECON testifies credit model is unverified. If autonomous tasks consume more credits, MSPs hit monthly limits faster. POS testifies this is a strategic fork: sustaining (premium pricing) or low-end defense (included pricing). Both are valid. Brief does not choose.

**Decision:** Define credit cost model for autonomous tasks (same as Q&A? 2x? flat fee?) + pricing tier (included in current N-zo, or premium add-on?).  
**Timeline:** Depends on Call 1. If problem is sourced, pricing analysis is 1–2 weeks.  
**Owner:** Beth (strategy), Product (cost model), Finance (margin analysis).

---

**Call 3: Engineering feasibility gate before Tier 2.**  
LAND testifies autonomous execution depends on N-central/N-sight API maturity (task execution APIs, rollback APIs). FEAT testifies reliability threshold is critical (95% success required? 80% acceptable?). Brief has no engineering discovery.

**Decision:** Run engineering spike on: (a) Which tasks are technically feasible via N-central/N-sight APIs? (b) Which APIs support rollback (state snapshots)? (c) What is realistic success rate for rollback?  
**Timeline:** 1–2 weeks for spike.  
**Owner:** Eng (spike lead), Product (prioritize task types), Security (audit/compliance validation).

---

## What Happens If Beth Does Not Make These Calls

**If problem is not sourced:**  
- Prototype remains plausible fiction. Stakeholders mistake concept for validated design. Build team ships feature MSPs do not need or will not trust. Post-launch adoption = 0%.

**If pricing strategy is not resolved:**  
- Feature launches with unverified credit model. MSPs hit monthly limits mid-month. Adoption stalls. Support tickets spike: "Why is N-zo locked out?" Feature is technically successful, commercially DOA.

**If engineering feasibility is not gated:**  
- Build team commits to tasks N-central/N-sight APIs cannot support. Rollback feasibility is 60%, not 95%. First failure erodes trust in all N-zo features (trust cliff). MSPs disable N-zo entirely.

---

## Handoff Complete

**Math verified.** Tensions named. Three calls routed to Beth. Pipeline gate held.

Bradley does not soften findings. 88% [A]+[?] means stop or source. Council tensions are decision points, not decoration. Beth decides.

---

**End of HANDOFF.md**
