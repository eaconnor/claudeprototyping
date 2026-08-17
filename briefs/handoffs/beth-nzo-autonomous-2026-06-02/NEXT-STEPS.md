# NEXT STEPS — N-zo Autonomous Tasks

**Date:** 2026-06-02  
**Fidelity:** Tier 1 Concept (30%)  
**Status:** Pipeline complete. Handoff to Beth.

---

## Decisions Only Beth Can Make

The pipeline cannot proceed to Tier 2 (Direction / 60% fidelity) without three sourced inputs. These are Beth's calls:

### 1. Source the Problem or Stop

**Current state:** 88% [A]+[?] world-claims ratio. Problem statement is unverified. No sourced MSP pain. No task taxonomy. No trust-boundary research.

**Beth's decision:**
- **Option A:** Run n≥8 MSP interviews to validate problem and source task taxonomy.
- **Option B:** Shelve this feature until sourced demand exists (customer request, competitive threat, exec directive).

**What the interview must answer:**
1. Which N-zo recommendations do MSPs act on immediately vs. ignore?
2. What % of N-zo recommendations result in technician action? (Behavioral baseline for OKR.)
3. Which tasks would MSPs trust N-zo to execute autonomously? (Trust boundary.)
4. What compliance/audit constraints apply to autonomous remediation? (Regulatory landscape.)
5. What is median time-to-execution for manual remediation post-N-zo recommendation? (Baseline for "40% reduction" OKR.)

**Timeline:** 2–3 weeks (recruit 8 MSPs, conduct interviews, synthesize findings).

**If Beth chooses Option B (shelve):** Archive this handoff packet. Pipeline stops. No Tier 2.

---

### 2. Resolve Pricing Strategy

**Current state:** Credit model impact undefined. Brief flags: "If autonomous tasks consume credits faster than Q&A queries, technicians may hit monthly limits mid-month." No break-even analysis. POS (Disruptive Innovation) testifies this is a strategic fork: sustaining (premium pricing) or low-end defense (included pricing).

**Beth's decision:**
- **Option A:** Autonomous tasks cost same as Q&A queries (included in current 100 credits/tech/month).
- **Option B:** Autonomous tasks cost 2x Q&A queries (faster credit burn, may require credit model redesign).
- **Option C:** Autonomous execution is premium tier (separate SKU, higher price, unlimited credits).

**Trade-offs:**
- **Option A** (same cost): Low barrier to adoption. Risk: MSPs burn through credits faster → hit monthly limits → disable feature mid-month.
- **Option B** (2x cost): Aligns cost with operational burden (autonomous tasks consume more API calls, audit logs, rollback infrastructure). Risk: MSPs ration autonomous execution → adoption stalls.
- **Option C** (premium tier): Monetizes feature directly. Risk: Low-end disruption (competitor offers autonomous remediation at lower price).

**Depends on:** Call 1 (Source the problem). Cannot price a feature whose value is unverified.

**Timeline:** 1–2 weeks after Call 1 completes (cost model analysis + margin impact).

---

### 3. Engineering Feasibility Gate

**Current state:** N-central/N-sight API coverage unverified. Rollback feasibility unknown. Brief flags: "[?] Which tasks are technically feasible via N-central/N-sight APIs? [?] Which APIs support pre-task state snapshots?"

**Beth's decision:**
- **Run engineering spike** (1–2 weeks) to answer:
  1. Which tasks are technically feasible? (RestartService, ApplyPatch, ClearDiskSpace are examples in brief — are these real APIs?)
  2. Which APIs support rollback? (State snapshots? Task-specific undo logic?)
  3. What is realistic rollback success rate? (95%? 80%? 60%?)
  4. What latency is acceptable? (Immediate execution? 30 seconds? 5 minutes?)

**Why this gates Tier 2:** LAND (Wardley Mapping) testifies autonomous execution depends on API maturity. If APIs are in "custom-built" stage (not commodity), this is not a 6-month AI feature — it is a 12–18 month platform upgrade. FEAT (Kano Model) testifies reliability threshold is critical. If 95% success is required, and current feasibility is 80%, feature is not shippable.

**Timeline:** 1–2 weeks (Eng spike lead + Product task prioritization + Security audit/compliance validation).

---

## Pipeline Re-Run Plan (If Beth Chooses to Continue)

### After Call 1 (MSP Interviews)

**Input for re-run:**
- Sourced task taxonomy with risk tiers (Low/Medium/High)
- Trust-boundary research (which tasks would MSPs delegate? which require approval?)
- Behavioral baseline (% N-zo recommendations acted upon, median time-to-execution)
- Compliance constraints (regulatory requirements for autonomous remediation)

**Pipeline changes:**
- **Scout:** No new docs needed (interviews are primary source).
- **Spec:** Re-run with sourced task taxonomy. [A]+[?] ratio should drop to <30%.
- **Critic Pass 1:** Re-score. Source-fidelity dimension should improve (1 → 3 or 4).
- **Build:** Seed data uses sourced task types, not illustrative examples.
- **Critic Pass 2:** Re-score. Differentiation dimension should improve (2 → 3 or 4) if competitive analysis is added.
- **Council:** Re-run Fast Mode. Tensions should shift from "both readings are [A]" to "MSPs say X, but council method Y flags risk Z."

**Expected outcome:** Tier 2 (Direction / 60% fidelity) brief with <30% [A]+[?] world-claims ratio.

---

### After Call 2 (Pricing Strategy)

**Input for re-run:**
- Credit cost model (same as Q&A? 2x? flat fee?)
- Pricing tier (included? premium add-on?)
- Break-even analysis (time savings vs. credit cost)

**Pipeline changes:**
- **Spec:** Add pricing strategy to Gate 2 (Right Thing). Revenue model moves from [?] to [A] (sourced from Beth's decision, not validated with customers yet).
- **Build:** Bradley rail ROI cards update with credit impact: "If 50% of N-zo queries shift to autonomous execution, monthly credit consumption increases 50%. Business model: [include pricing decision here]."
- **Council:** ECON (Economic Buyer) tension resolves: "Beth chose [pricing strategy]. Risk: [low-end disruption / adoption friction / margin impact]."

**Expected outcome:** Business model is defined (not validated, but decided).

---

### After Call 3 (Engineering Feasibility)

**Input for re-run:**
- Task feasibility matrix (which tasks are technically possible via N-central/N-sight APIs?)
- Rollback feasibility (which APIs support state snapshots? what is realistic success rate?)
- Latency requirements (immediate? 30 seconds? 5 minutes?)

**Pipeline changes:**
- **Spec:** Task taxonomy refined to technically feasible subset. [?] tags on API coverage move to [R] (sourced from engineering spike).
- **Critic Pass 1:** Risk dimension re-scored. Rollback failure cascade moves from [A] (articulated assumption) to [D] (data-backed risk with known failure rate).
- **Build:** Seed data shows only tasks with verified API support. ExecutionRecord shows realistic rollback status (success rate based on spike findings).
- **Council:** LAND (Wardley) tension resolves: "Eng spike shows [API maturity level]. If [immature], this is [12–18 month platform upgrade]. If [mature], this is [6-month AI layer]."

**Expected outcome:** Engineering risk is quantified. Build team knows which tasks are in scope, which are out of scope, and what success rate to target.

---

## What Does NOT Require Beth's Decision

**Build team can proceed with:**
- Refining approval UX (in-app notification? modal? batch approval?) — Design owns this, but needs Call 1 (MSP interviews) to validate trust boundaries.
- Defining policy builder UX (how to avoid policy sprawl?) — Design owns this, but needs Call 1 (MSP interviews) to validate policy complexity tolerance.
- Audit log visibility (where do ExecutionRecords surface?) — Design + Security own this, but needs Call 3 (engineering spike) to validate SIEM export requirements.

**Research team can proceed with:**
- Competitive analysis (ConnectWise, Datto, Kaseya autonomous features) — Research owns this. Can run in parallel with Call 1.
- Behavioral baseline from current N-zo analytics (% recommendations acted upon, task type distribution) — Research + Data Science own this. Can run in parallel with Call 1.

**These are inputs for Tier 2, not blockers for Beth's three calls.**

---

## Timeline Summary (If Beth Proceeds)

| Call | Duration | Dependency |
|------|----------|------------|
| **Call 1: MSP Interviews** | 2–3 weeks | None (can start now) |
| **Call 2: Pricing Strategy** | 1–2 weeks | Depends on Call 1 (cannot price unverified value) |
| **Call 3: Eng Feasibility** | 1–2 weeks | Can run in parallel with Call 1 |

**Earliest Tier 2 re-run:** 3–5 weeks from now (assuming parallel execution of Call 1 + Call 3).

---

## What Happens If Beth Does Not Make These Calls

**If Call 1 is skipped:**
- Tier 2 brief remains speculative. [A]+[?] ratio stays >70%. Council tensions remain unresolved (no customer voice to adjudicate). Build team ships plausible fiction. Post-launch adoption = 0%.

**If Call 2 is skipped:**
- Feature launches with unverified credit model. MSPs hit monthly limits mid-month. Support tickets spike. Feature is technically successful, commercially DOA. Pricing strategy is decided post-launch under fire.

**If Call 3 is skipped:**
- Build team commits to tasks N-central/N-sight APIs cannot support. Rollback feasibility is 60%, not 95%. First failure erodes trust in all N-zo features (trust cliff). MSPs disable N-zo entirely.

---

## Recommended Path

**Beth's three calls, in order:**

1. **Call 1 + Call 3 in parallel** (weeks 1–3):
   - Call 1: MSP interviews (source problem + task taxonomy + trust boundaries).
   - Call 3: Eng spike (API feasibility + rollback success rate).
   - Research: Competitive analysis (can run in parallel).

2. **Call 2 after Call 1 completes** (weeks 3–5):
   - Pricing strategy (credit model + pricing tier + break-even analysis).
   - Depends on sourced value from Call 1.

3. **Pipeline re-run** (week 5):
   - Spec → Critic → Build → Critic → Council → Handoff.
   - Expected output: Tier 2 (Direction / 60% fidelity) with <30% [A]+[?] world-claims ratio.

**Total time to Tier 2:** 5 weeks.

---

**End of NEXT-STEPS.md**
