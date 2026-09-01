# N-zo Autonomous Tasks — Handoff Packet

**Tier 1 Concept** | **2026-06-02** | **Beth Schwindt**

---

## Reading Order

1. **This file** (README.md) — Orientation
2. **nzo-autonomous.html** — Working prototype (open in browser)
3. **HANDOFF.md** — Verified math, tensions, three calls
4. **NEXT-STEPS.md** — Decisions only Beth can make
5. **nzo-autonomous-rail.md** — Bradley rail as portable markdown
6. **nzo-autonomous.brief.md** — Three-gate brief + domain model
7. **critic-pass-1.md** + **critic-pass-2.md** — Pre/post-build scorecards
8. **council-testimony-fast.md** — 7 productive tensions
9. **scout/** — Source documents

---

## What This Prototype Tests

**Hypothesis:** N-zo moving from Q&A assistant to proactive agent — autonomous task execution reduces context-switching cost, latency, and cognitive load for MSP technicians.

**Reality:** Problem statement is **[A]** — assumed, not sourced. 88% [A]+[?] world-claims ratio. No MSP interviews. No task taxonomy from actual operations. No trust-boundary research.

**This prototype tests:**
- Domain model coherence (Task, Policy, ExecutionRecord, Device, Technician)
- Approval flow UX (QueueForApproval → Details → Approve/Deny)
- Failure mode visibility (trust cliff, rollback cascade, approval fatigue, policy sprawl)
- Bradley rail routing (Product, Research, Design, Eng cards)

**This prototype does NOT test:**
- Whether MSPs need this feature
- Which tasks MSPs would trust N-zo to execute autonomously
- What compliance/audit constraints apply
- Whether N-central/N-sight APIs support rollback

---

## Key Numbers (Verified)

| Metric | Value | Source |
|--------|-------|--------|
| **Evidence ratio** | 88% [A]+[?] | `nzo-autonomous-tasks-math-recount.md` |
| **World-claims** | [R]:5 [D]:0 [A]:18 [?]:18 | grep count verified |
| **Pre-build score** | 3.2/5 | `critic-pass-1.md` line 21 |
| **Post-build score** | 3.8/5 | `critic-pass-2.md` line 23 |
| **Delta** | +0.6 | verified: 3.8 - 3.2 = 0.6 |
| **Council readiness** | 12/30 | `council-testimony-fast.md` line 13 |
| **Tensions** | 7 | grep count verified |

**The 47% rule:** Every stat above has been grep-verified before shipping. Fluency does not know its own math.

---

## Fidelity Expectations

**Tier 1 Concept (30%)** means:
- ✓ Real copy
- ~ Seed data (fictional but plausible)
- ✓ Core interaction (approval flow works)
- × Full workflow (multi-step orchestration not built)
- ✓ Visual hierarchy (dark theme, Bradley rail, council modal)
- × Production ready (this is a concept, not shippable code)

---

## What Works in the Prototype

**Interactive elements:**
- Approve/Deny buttons (simulated state change)
- Details buttons (expand ExecutionRecord rows)
- Theme toggle (light/dark/system, persists to localStorage)
- Collapsible rail sections (What You Nailed / What Will Hurt You)
- Council modal (7 tensions)

**Visible failure modes:**
- **Approval fatigue:** 3 tasks in queue (if every task requires approval, queue becomes unmanageable)
- **Rollback failure:** TASK-4498 shows "Rollback Status: Failed — System required manual reboot, patch partially installed"
- **Trust cliff:** Bradley rail "What Will Hurt You" names it: "first failure erodes trust in all N-zo features"
- **Policy sprawl:** Routed card flags: "No policy configuration complexity research"

---

## What's Missing

### Research gaps
- MSP interviews (n≥8) on task taxonomy, trust boundaries, compliance
- Behavioral baseline from current N-zo (% recommendations acted upon, time-to-execution)
- Competitive analysis (ConnectWise, Datto, Kaseya autonomous features)

### Design gaps
- Approval UX touchpoints (in-app notification? modal? batch approval?)
- Rollback UX (success notification? escalation protocol when rollback fails?)
- Policy builder UX (how to avoid policy sprawl?)
- ExecutionRecord visibility (where do audit logs surface?)

### Engineering gaps
- N-central/N-sight API coverage (which tasks are technically feasible?)
- Rollback feasibility (which APIs support state snapshots?)
- Credit model impact (do autonomous tasks cost more/less than Q&A queries?)
- Latency requirements (immediate execution? 30 seconds? 5 minutes?)

### Business gaps
- Pricing model (included in current N-zo, or premium tier?)
- Support impact forecast (ticket volume increase during rollout?)
- Go-to-market segmentation (which MSPs get early access?)

---

## Council Tensions (Fast Mode)

The council identified 7 productive tensions from methods cross-talk:

1. **JOBS vs. NEEDS** — Does speed or control matter more to technicians?
2. **SIGN vs. JRNY** — Where does approval surface, and what does that signal?
3. **PORT** — Is this an AI innovation or an RMM innovation?
4. **POS** — Sustaining play or low-end disruption defense?
5. **ECON** — Who pays, and is the value worth the cost?
6. **LAND** — Are the N-central/N-sight APIs ready?
7. **FEAT** — Performance attribute or Delighter with high reliability requirements?

**None of these tensions are resolved.** They are **decision points the brief has not yet addressed**. The handoff routes them to Beth as calls.

---

## Use This Handoff For

✓ Pipeline stress-test (can Build generate coherent prototype from thin brief?)  
✓ Domain model review (do entities/services map cleanly?)  
✓ Failure mode validation (are risks visible in seed data?)  
✓ Internal design critique (routed cards name what's missing)

---

## Do Not Use This Handoff For

× Customer demos (88% [A]+[?] — problem unverified)  
× Stakeholder validation (no sourced MSP pain)  
× Roadmap commitment (engineering feasibility unknown)  
× Pricing decisions (credit model impact undefined)

---

## Next Actions

See **HANDOFF.md** for three specific calls Beth must make.  
See **NEXT-STEPS.md** for decisions only Beth can make + pipeline re-run plan.

---

**End of README.md**
