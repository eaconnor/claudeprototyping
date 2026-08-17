# Critic Pass 2 — Post-Build Scorecard
**Feature:** N-zo Autonomous Task Execution  
**Brief:** `briefs/nzo-autonomous-tasks.brief.md`  
**Prototype:** `prototypes/nzo-autonomous-tasks/index.html`  
**Fidelity:** 30% (Tier 1 Concept)  
**Reviewed:** 2026-06-02  
**Reviewer:** Critic  

---

## Post-Build Score Table — 6 Dimensions (1–5 scale)

| Dimension | Pre-Build | Post-Build | Delta | Reasoning |
|-----------|-----------|------------|-------|-----------|
| **1. Coherence** | 4 | 5 | +1 | Prototype perfectly traces domain model. Every entity/service in brief has a UI surface. Task → Tasks table. Policy → Active Policy card. ExecutionRecord → expandable details rows. QueueForApproval → Approval Queue card. No drift from brief. Domain model was internally consistent; prototype proves it. |
| **2. Source-fidelity** | 1 | 1 | 0 | 88% [A]+[?] world-claims ratio unchanged. Prototype correctly surfaces this in fidelity banner ("Tier 1 · Concept") + Bradley rail ("NOT READY (88% [A]+[?])"). Seed data is fictional (SRV-ACME-DC01, TASK-4521, KB5034441) as expected for Tier 1. No false claims of validation. Bradley rail routes all research gaps to Product/Research/Design/Eng cards. **Score holds: problem is unverified, prototype doesn't pretend otherwise.** |
| **3. Demo-ability** | 3 | 5 | +2 | Prototype is fully interactive: Approve/Deny buttons functional (simulated state change), expandable details show ExecutionRecord structure, theme toggle (light/dark/system) persists to localStorage, collapsible rail sections work, Council modal opens with 7 tensions. Approval flow is clear: Queue card → Details button → Risk/Rollback info → Approve → Status changes to "Executing." Tasks table shows 10 historical tasks with varied statuses (Queued, Executing, Completed, Failed). **This can be demoed live** to show approval fatigue risk (3 tasks in queue), rollback failure (TASK-4498), and trust boundaries (low-risk tasks auto-executed, high-risk queued). Upgrade from "can show workflows" to "workflows are shippable, interactive HTML." |
| **4. Differentiation** | 2 | 2 | 0 | [?] Competitive landscape still unverified. Prototype doesn't add sourced competitive intelligence. Bradley rail correctly flags in Product routed card: "Risk building plausible fiction that MSPs don't need or won't trust. Autonomous execution may be table stakes (competitors already offer) or DOA (compliance prohibits)." Council modal flags low-end disruption risk (tension #4: POS). **Score unchanged** — differentiation question remains unanswered. |
| **5. Risk** | 4 | 5 | +1 | All 4 failure modes from brief are visible in prototype: (1) **Trust cliff** → Bradley rail "What Will Hurt You" names it: "first failure erodes trust in all N-zo features." (2) **Approval fatigue** → 3 tasks in Approval Queue demonstrate the risk (if every task requires approval, queue becomes unmanageable). (3) **Rollback failure cascade** → TASK-4498 shows "Rollback Status: Failed — System required manual reboot, patch partially installed" + "Technician Notified: Yes — Emergency escalation 2026-06-02 13:05." (4) **Policy sprawl** → "What Will Hurt You" block: "No policy configuration complexity research." Risks are not just named — they're **demonstrated in seed data**. Upgrade from "articulated assumptions" to "visible in UI with realistic failure scenarios." |
| **6. Scope discipline** | 5 | 5 | 0 | Single-task execution only. No multi-step workflows. ExecutionRecord shows discrete actions: restart service (45-90 seconds), apply patch (8-12 minutes), clear disk space (3-5 minutes). No orchestration, no chained tasks. Perfect adherence to brief's constraint: "Task = discrete, reversible action, NOT multi-step workflow." |

**Pre-build overall:** 3.2 / 5  
**Post-build overall:** 3.8 / 5  
**Delta:** +0.6

**Build recommendation holds:** This prototype validates that the domain model is coherent and demo-able. It does NOT validate that the problem is real or the solution is differentiated. Use for pipeline stress-test or internal domain-model review. Do not present to stakeholders as validated design without MSP research.

---

## Final Verdict by Gate

### Gate 1 (Problem): Does the output address the sourced problem, or did it drift?

**PASS on drift. FAIL on problem validation (expected for Tier 1).**

### Gate 2 (Right Thing): Does it advance the stated OKR? Is the counter-metric protected?

**FAIL — counter-metric is not instrumented.**

### Gate 3 (Built Right): Is it testable? Does it match the success metric?

**EXPECTED for Tier 1.** Test plan is placeholder.

---

**End of Critic Pass 2**
