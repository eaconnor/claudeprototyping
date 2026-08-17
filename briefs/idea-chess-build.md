# IDEA CHESS — The ACP Build As Shipped

**Target:** the *current* ACP build in `acp-core-main-3` — what is specced and coded, not a vision offering.
**Stance:** adversarial. The job is to find where the build's implicit bets fall in market. Not to defend it.
**Tagging:** `[BUILT]` = real code exists · `[SPECCED]` = spec/tasks exist, 0 code · `[A]` = assumed, unsourced · `[?]` = unknown, named gap.
**Date:** 2026-07-15 · Owner: Beth Connor

---

## 0. Ground truth — what is actually built (verified against code, not spec text)

This reframes every bet below, so it leads.

| Layer | State | Evidence |
|---|---|---|
| Runbook Config Store (spec 002) | `[BUILT]` — 49/49 tasks checked; models+schemas+service+audit real | `apps/backend/app/runbooks/` full; `specs/002-*/tasks.md` all `[X]` |
| Value Ledger (spec 003-value) | `[BUILT]` — 52/52 tasks; entry write, baselines, rollup, export, reconciliation | `apps/backend/app/value_ledger/` full |
| MCP gateway + Temporal execution + StepsRunWorkflow DAG | `[BUILT]` — approval gates, retries, run audit, `on_failure` | `app/mcp/`, `app/runs/` full |
| **Expert Registry (spec 003-expert)** | **`[SPECCED]` — 0/46 tasks. Flat `Expert` CRUD only; no versioning/audit/activation** | `specs/003-ai-expert-config-registry/tasks.md` all `[ ]` |
| **Coworker Registry (spec 004)** | **`[SPECCED]` — 0/40 tasks. Flat `Coworker` model; no family/version/lifecycle/clone/autonomy/draft-lock** | `specs/004-ai-coworker-registry/tasks.md` all `[ ]` |
| **PSA connector / ConnectWise / normalization** | **`[SPECCED]` — zero code. "ConnectWise" and "normaliz" appear nowhere in app code** | grep miss in `app/` |
| **MSP Onboarding (FSN-82692) — Ticket Triage day-1** | **`[SPECCED]` — zero code. "onboarding", "triage", "PSA" absent from app** | grep miss in `app/` |
| **Scheduler (user-facing), Tenant Identity / auth** | **`[SPECCED]`/absent — Temporal schedule exists only for ledger reconciliation; actors hardcoded** | `identity.py` sentinel actor |

**The single most important fact for this board:** the build has fully shipped the *substrate* (runbooks, ledger, execution, MCP) and has written **zero lines** of the two things the market was told it would get first — the Coworker/Expert registries and the entire Ticket-Triage onboarding path. Every bet is judged against that asymmetry.

---

## 1. Council adversarial pass

Ten traditions. Each: the lens, its losing condition, and its best shot at showing a build bet is wrong — cited to spec text where possible.

### 1.1 Jobs-to-Be-Done
**Losing condition:** the day-1 artifact is not the job the buyer is hiring for.
**Best shot — kills BET1.** The onboarding spec ships **Ticket Triage & Dispatch** as the first and only activated Coworker (FSN-82692 §1, SCOPE-005, the whole §3 journey). But the *researched* demand order is in FSN-83143 §6: QBR Advisor is default #1 (priority 2.90), Triage is not even in the five defaults — the five are QBR Advisor, Alert Flood Suppressor, Incident Response Analyst, Environment Health Monitor, Security Tabletop (DEC-006, "priority scores from 22-partner interview research"). The build's own coworker catalog does not contain "Ticket Triage" at all. So the job the MSP is hired-for on day 1 (QBR narrative, alert-noise relief) is *not* the job the onboarding demonstrates. The MSP's "aha" is being staged on the #6-ish task because it's the one with a clean ConnectWise write path — a *buildability* choice dressed as a *value* choice.

### 1.2 Disruptive Innovation (Christensen)
**Losing condition:** you built the sustaining-tech substrate and shipped it to no one; the disruptor ships the demanded job on a worse substrate first.
**Best shot — kills BET2.** Engine-first means Runbook Engine + Value Ledger are `[BUILT]` while QBR and IR-RCA have **no spec at all** (FSN-82692 NONGOAL-002 defers them; FSN-83143 lists them as catalog names with no build). A competitor who hardcodes a QBR generator against ConnectWise in a weekend beats this to the demanded job while ACP is still perfecting immutable version snapshots nobody has asked to see. The value-ledger can't show ROI because nothing that generates ledger entries is built (the entry-writer is Execution-Engine scope; onboarding REQ-017 is the only planned writer and onboarding is `[SPECCED]`). **Substrate with no demanded runbook on top is plumbing you can't demo.**

### 1.3 Service Blueprint
**Losing condition:** a front-stage promise has no back-stage actor.
**Best shot — kills BET6 and the 20-min ceiling.** FSN-82692 front-stages "Connected to [Company] — we can see [N] tickets across [N] queues" (§3 Step 2) and live ConnectWise writes on approval (Step 6). Back-stage, **DEP-002 PSA Connector Framework = "Not started"**, DEP-001 Tenant Identity = "Not started", DEP-006 Coworker Config = "Not started", DEP-007 Scheduler = "Not started". Five of nine hard dependencies are un-started and the connector that does the actual ticket read/normalize/write does not exist in code. The blueprint has a fully-drawn customer line and an empty support line. Normalization deferral (BET6) is the specific fault line: without ConnectWise→ACP ticket normalization there is nothing for Triage to classify — the demoed "real data" moment cannot execute.

### 1.4 Self-Determination Theory (autonomy/competence/relatedness)
**Losing condition:** the trust model frustrates the operator it claims to protect.
**Best shot — pressures BET4/BET1.** The conservative model (low=auto, med=batch, high=explicit; INV-009, FSN-82692 REQ-016) is locked during onboarding and *non-configurable* (NONGOAL-004). REQ-006/INV-003 cap first run at 10 tickets. OQ-004 already admits the risk: "too low and the approval card is underwhelming (1–2 items)." Triage on 10 tickets may surface **one or two** medium-risk dispatches. The educational centerpiece (Step 6) can land as an anticlimax — the operator's competence need is met with a trivial task, and the "this is how ACP works" lesson is taught on a sample too small to feel like work. The autonomy model is sound; the *demo vehicle chosen to introduce it* may under-deliver the feeling.

### 1.5 Value Chain (Porter)
**Losing condition:** value is captured at a link you deferred.
**Best shot — kills BET6, reinforces BET2.** The MSP's willingness-to-pay concentrates on QBR (client-facing, billable, priority 2.90) and alert-flood relief. Those require cross-vendor normalization and the QBR runbook — both deferred/unspecced. The build captures value at "we stored your runbook immutably and versioned it," a link the MSP does not perceive. Ledger ROI (the one link that *could* justify price) is inert until a runbook runs. **The build is investing at the least-monetizable link in the chain first.**

### 1.6 Wardley Mapping (evolution/positioning)
**Losing condition:** you positioned at the wrong evolutionary stage and ceded the anchor.
**Best shot — kills BET7.** "Agent control plane / agent factory" (CLAUDE.md line 5; constitution names ACP the "Agent Control Plane") positions ACP as *product/commodity substrate* — a factory. But the user-anchored narrative in the market is "MSP-OS / the Shopify for MSP automation": genesis-stage, story-led, land-grab. By naming itself the factory, ACP competes on substrate quality (versioning, determinism, MCP parity — all real, all `[BUILT]`) against buyers who are shopping for outcomes and a category story. The constitution's Principle VI (auto-expose every route as an MCP tool) is beautiful engineering and invisible to the buyer. **Factory framing optimizes for the thing the buyer can't see and cedes the OS narrative to whoever tells it first.**

### 1.7 Real Options / Lean (validated learning)
**Losing condition:** the sequencing spends the option budget on the least-uncertain thing.
**Best shot — kills BET2, ranks the risk.** The *least* uncertain parts of ACP (a config store should version records; a ledger should sum time saved) are 100% built. The *most* uncertain — will an MSP connect ConnectWise in <8 min and trust an AI dispatch on first contact — is 0% built and gated behind four un-started dependencies. Classic inversion: certainty was purchased where it was already cheap. No learning has been bought about the actual market risk.

### 1.8 Security / Threat-model (adversarial governance)
**Losing condition:** a governance promise has a gap an attacker or auditor drives through.
**Best shot — pressures BET5 and surfaces a live contradiction.** BET5 (audit-after, no pre-screen of customer/vendor runbooks) is defensible *only if* the runbook can't take an irreversible action before the audit sees it. The build's approval model gates actions at execution — good. But note the **spec-level contradiction the build must resolve**: FSN-82688 (AI Expert) REQ-015/REQ-017 and its glossary say Experts *can execute actions* within domain + risk ceiling; FSN-83143 TEST-001 and its own REQ says Expert tool bindings are *read-only* and "activation validation rejects configs with write-capable tool bindings." Two canonical specs disagree on whether an Expert can act. Since Expert Registry is `[SPECCED]` (0/46), this is unresolved in code. If the executing-Expert reading wins, audit-after governs an actor that can already have pushed a patch. **The governance bet is sound for Coworker-level actions and unproven for Expert-level actions the specs can't agree exist.**

### 1.9 Migration-cost / Architecture debt
**Losing condition:** the interim shape forces a painful rebuild.
**Best shot — kills BET9, pressures BET3.** BET9: the flat `Expert`/`Coworker` tables are `[BUILT]`; the versioned/family/guardrail registries are `[SPECCED]` (0/46, 0/40). Every downstream promise — immutable versioning (FR-013), autonomy family attribute (FR-030), draft locks (FR-005a), reverse-reference queries (FR-033), per-reference health (FR-037), auto-pause on runbook death (FR-012a) — assumes a family/version schema the current flat tables do not have. This is not additive; it is a schema migration of the core entity while runs may already reference flat coworker IDs. BET3 (flat, non-orchestrated coworkers; NONGOAL-002) compounds it: the day someone asks "let the Alert Suppressor feed the QBR" (the obvious next demand once both exist), there is no orchestration layer and the flat model has to grow one. **The interim is a dead-end schema, and the v1 non-goal is the exact composition the demanded catalog implies.**

### 1.10 Ecosystem / Two-sided platform
**Losing condition:** a platform ships with an empty side.
**Best shot — kills BET1 + BET7 together.** An "agent factory" (BET7) is a supply-side platform: its value is the catalog of Coworkers others can clone. The five researched defaults (FSN-83143 DEC-006) are `[SPECCED]` — none built. The one thing built enough to demo (Triage) **isn't in the catalog**. So the factory ships with zero factory output and a demo unit that isn't a product SKU. A platform whose headline is "clone our experts" has, in code, no experts to clone and no coworker registry to clone into.

---

## 2. What we HAVEN'T thought about — build-specific holes

Ranked by damage. Each is specific to the build as shipped.

1. **Leading with Triage strands the #1 demand.** `[A]` The onboarding "aha" runs on a task absent from the researched top-5 and absent from the coworker catalog, while QBR (demand rank #1, priority 2.90, DEC-006) has no spec and no code. If first-run delight is being optimized on the wrong job, the conversion metric (MET-002 ≥80%) can pass while the *retention* driver (does the MSP get the QBR they actually wanted) is never tested. The 7-day second-Coworker metric (MET-005 ≥60%) points the MSP at QBR Advisor / IR-RCA cards (Step 7 completion screen) that **cannot be activated** (NONGOAL-002) — the funnel's next step is a dead card.

2. **Engine-first = plumbing with nothing to prove value.** `[BUILT-but-inert]` The value ledger — the entire ROI argument — writes entries only when a Coworker completes a run (spec-003 US1). The only planned first writer is onboarding REQ-017, which is `[SPECCED]`. So a fully-built, fully-tested ledger currently has **no producer**. The most defensible business artifact in the build cannot render a non-zero number in a demo.

3. **Audit-after creates a liability window at the Expert layer.** `[?]` Coworker actions are gated pre-execution (good). But the Expert action contradiction (§1.8) is unresolved: if Experts can act (FSN-82688 REQ-017), and control-plane governance is audit-after (BET5), an Expert tool call could execute before the human/audit sees it. Named as `[?]` because the deciding code (Expert Registry) isn't written — but the specs are in open conflict *now*.

4. **Flat coworker v1 is a migration trap, and the non-goal is the next demand.** `[A]` (§1.9). The moment two of the five defaults exist, "chain them" is the obvious ask; NONGOAL-002 says no, and the flat schema can't. Rebuild lands on the core entity after runs reference it.

5. **≤15-min builder / <20-min onboarding assume an operator never studied.** `[?]` FSN-82692 §1 and spec-004 SC-003 assert these as *design constraints*, not findings. The 22-partner research (FSN-83143 SRC-003) sized *demand for use cases*, not *time-to-configure* or *time-to-connect-a-PSA*. OQ-001/OQ-007 admit the ConnectWise scope and on-prem questions are open and *blocking*. The person who can generate a ConnectWise API key, pick source+destination queues, and reason about risk tiers in <20 min is an assumed persona. If they don't exist, MET-003 (PSA-step drop-off <15%) fails and the whole ceiling collapses — and the spec's own remedy ("redesign the step") has no time left in a 20-min budget to redesign into.

6. **"Agent factory" cedes the MSP-OS narrative.** `[A]` (§1.6/§1.10). The build's identity optimizes for invisible substrate quality; the category story goes to whoever frames the outcome. Real risk because the *built* differentiators (MCP parity, determinism, immutable audit) are exactly the ones a buyer discounts.

7. **The demoed catalog and the built catalog are disjoint.** `[BUILT vs SPECCED]` Triage (demoed, onboarding) is not one of the five defaults (specced, none built). Nothing the MSP is shown on the Step-7 completion screen exists in code. The product tour points at empty rooms.

8. **Nine hard dependencies, five "Not started," gating the one demo path.** `[SPECCED]` FSN-82692 DEP-001/002/006/007 + Expert registry. The onboarding spec is a promise written on top of a foundation that is 0% poured. Its success metrics are unfalsifiable until the substrate below it exists.

---

## 4. Monte Carlo read

**Method.** Naive survival = product of the probabilities of the bets marked `required:true` (those the build's *market* success depends on). Independence is assumed for the naive number and is **false** — see caveat.

**Required bets and honest probabilities** (full reasoning in the JSON):

| Bet | p(true) | Why |
|---|---:|---|
| BET1 Triage is right day-1 | 0.35 | contradicts own research rank; not in catalog |
| BET2 engine-first beats feature-first | 0.45 | substrate real but inert; no demanded runbook |
| BET6 normalization deferrable | 0.40 | demoed value literally can't execute without it |
| BET8 <20-min / ≤15-min achievable | 0.45 | design constraint, not a finding; blocking OQs open |
| HOLE-2 ledger has a value producer at launch | 0.40 | only writer (onboarding REQ-017) unbuilt |

(BET9 is medium-confidence but marked `required:false` — a defend-phase debt, not a market-survival gate — so it is excluded from the product.)

**Naive survival (product of the six `required:true` entries):** 0.35 × 0.45 × 0.40 × 0.45 × 0.40 ≈ **0.0113 → ~1.1%.** *(grep-verified: `python3 json.load` + `math.prod` over `required:true` = 0.0113.)*

Read this as: *if these five independent bets must all hold for the build-as-sequenced to win the market, the joint odds are punishing.* The number's job is not precision; it is to show how fast a chain of medium-confidence, load-bearing bets multiplies toward zero.

**Sensitivity ranking — what to validate first (most damage if wrong):**
1. **BET1 (Triage as day-1).** Lowest p, highest leverage: it's a *reversible* choice (swap the onboarding Coworker to QBR or Alert-Flood, both higher-demand) that currently poisons conversion→retention linkage. Cheapest kill, biggest swing. **Validate first.**
2. **BET6 (normalization deferrable).** Gates whether the demo can execute at all. If the PSA read/normalize path can't be stood up, the entire onboarding is theater.
3. **BET2 (engine-first).** Can't be un-sequenced (substrate is built) but *can* be rescued by building one demanded runbook (QBR) now so the ledger has a producer.
4. **BET8 (time ceilings).** Test with 5 real MSP admins on a ConnectWise sandbox before it's a launch gate.
5. **BET9 (flat interim).** Slow-burn; validate by prototyping the family/version migration before more code lands on the flat tables.

**Independence caveat.** The bets are strongly correlated, so the true joint probability is **higher than 1.1%** — BET1, BET6, BET2 all fail *together* through one root cause (feature/demand mismatch + deferred connector), and fixing that root cause lifts all three at once. Conversely the correlation means a single wrong root assumption sinks multiple bets simultaneously. The naive product is a floor-of-alarm, not a forecast. Treat the sensitivity ranking, not the 1.6%, as the actionable output.

---

## 5. Oregon Trail — where the build-as-shipped dies on the map

Phases: **build → launch → adopt → defend.** Build is largely done for the specced-and-coded parts, so weight launch/adopt/defend.

- **BUILD — survivable, uneven.** `[BUILT]` substrate (runbooks, ledger, execution, MCP) is real and, by its own tasks.md, complete and tested. But two headline registries are 0% and the onboarding path is 0%. The party has built a strong wagon axle and no wheels. *You don't die here, but you've spent the season on the axle.*

- **LAUNCH — most likely death. This is the river crossing.** To launch the demoed experience you must first pour five un-started foundations (PSA connector, tenant identity, coworker config, scheduler, expert registry) *and* resolve the Expert-can-act contradiction. The demo depends on a live ConnectWise write (FSN-82692 Step 6) against a connector that doesn't exist. **Most probable failure: launch slips repeatedly, or ships a Triage demo that can't run on real tenant data (BET6), and the value ledger shows $0 because nothing produces entries.** The wagon reaches the river and the wheels aren't on.

- **ADOPT — second death, if launch is survived.** The MSP completes onboarding on Triage (wrong job, BET1), is pointed at QBR/IR-RCA cards that don't work (NONGOAL-002), and the 7-day return metric (MET-005) has nowhere to send them. Adoption stalls at "cute first run, no second act." The <20-min ceiling (BET8) either holds on a toy 10-ticket run or breaks at the PSA step (MET-003). *You cross the river and the oxen have nothing to eat on the far bank.*

- **DEFEND — structural, slow.** If adoption somehow holds, BET9 (flat→versioned migration) and BET3 (no orchestration) come due: the first "chain my coworkers" request and the first "version/audit my custom coworker" request both hit walls that require reworking the core entity while production runs reference it. BET7 (factory framing) means you're defending on substrate quality against a competitor defending a category story. *The dysentery of platform companies: a rebuild of the core table under load.*

**Where it most likely falls: at LAUNCH, in the gap between a fully-built substrate and five un-started dependencies, with the demo staged on a Coworker (Triage) that is neither in the researched top-five nor in the built catalog, writing to a PSA connector that does not exist.**

---

## Bet / Assumption table (readable companion to the JSON)

| ID | Bet | State | p | Required? | Losing condition (one line) |
|---|---|---|---:|:--:|---|
| BET1 | Ticket Triage is the right day-1 Coworker | `[SPECCED]` | 0.35 | ✅ | Triage isn't in researched top-5; QBR is #1 (DEC-006) |
| BET2 | Engine-first beats demanded-feature-first | `[BUILT]` substrate | 0.45 | ✅ | Ledger has no producer; no demanded runbook to demo |
| BET3 | Flat, non-orchestrated coworkers (NONGOAL-002) | `[SPECCED]` | 0.50 | ❌ | "chain them" is the obvious next demand once 2 defaults exist |
| BET4 | Risk-tier + admin-gated autonomy is the ratified model | `[BUILT]` (guardrail logic) | 0.75 | ❌ | model is sound; demo vehicle under-delivers the lesson (10 tickets) |
| BET5 | Audit-after governance is enough | `[BUILT]` at coworker layer | 0.60 | ❌ | Expert-can-act contradiction opens a pre-audit action window |
| BET6 | Normalization is deferrable | `[SPECCED]`/absent | 0.40 | ✅ | demoed "real data" moment can't execute without it |
| BET7 | "Agent factory" positioning is right | framing | 0.50 | ❌ | cedes MSP-OS narrative; optimizes invisible substrate |
| BET8 | <20-min onboarding / ≤15-min builder achievable | `[SPECCED]` | 0.45 | ✅ | design constraint not a finding; blocking OQs open |
| BET9 | Flat pre-registry tables OK interim | `[BUILT]` flat / `[SPECCED]` versioned | 0.55 | ❌ | schema migration on core entity after runs reference it |
| HOLE-1 | Expert can/can't execute actions is settled | contradiction | 0.30 | ❌ | FSN-82688 REQ-017 vs FSN-83143 TEST-001 disagree |
| HOLE-2 | Ledger will have a value producer at launch | `[SPECCED]` | 0.40 | ✅ | only writer (onboarding REQ-017) is unbuilt |

---

*Values over rules. The substrate is genuinely good; the sequencing bet is that good substrate buys the right to defer the demanded job. This board's position: it doesn't, and the market meets you at the river.*
