# ACP — Why N-able × Runbook Ranking × Build State

**Date:** 2026-07-14 · **Owner:** Beth · Three lenses on the offerings: (1) why n-able wins, deepened; (2) how they map to the ranked "what to build" research; (3) how they relate to acp-core-main-3.
**Discipline:** [CS:] tags · qual directional · assumptions named.

---

## 1 · WHY N-ABLE — the moat, made competitive

Grouped by *how hard it is to copy.* The first four are **structural** — a better model can't replicate them.

### Structural (can't be out-modeled)
1. **First-party full-stack telemetry** — N-able owns UEM + Cove + Adlumin. It normalizes cross-vendor data *from inside the source*. ScalePad, Cognition, Cynomi, and any Claude-built agent only have **brittle third-party APIs into other people's data.** This is the moat under Offering A. `[CS: HIGH]`
2. **SOC 90% auto-remediation data** (RSAC 2026) — a proprietary corpus of *what actually resolves MSP incidents*, at scale. The secret ingredient in QBR / IR-RCA / Triage. Nobody else has this data. `[CS: HIGH]`
3. **Adlumin MDR real threat telemetry** — live, first-party, not simulated. Powers IR/RCA and the whole security story. `[CS: HIGH]`
4. **Cove first-party backup/DR** — real success + DR timelines, not an API a partner can break. `[CS: MEDIUM]`

### Position / go-to-market (the one we've been under-saying)
5. **Installed base.** N-able already sits inside tens of thousands of MSPs via RMM/PSA/MDR. **ACP upsells the buyer we already have — it doesn't have to acquire a new one.** Against a startup (Cynomi) or a point tool, that's the biggest structural advantage of all. `[? — need the verified install-base / cross-sell number from PM to make this concrete; the logic is strong, the figure is not in hand]`
6. **Governor-of-all-agents position.** The control plane can be the layer *every* agent passes through (see G4 Action Proxy) — a position only an incumbent platform can hold. `[strategic]`

### Mechanism / speed
7. **Script repo + Deterministic Substitution Engine** — validated deterministic tooling + a margin/safety lever that answers the customers' determinism demand structurally. `[CS: VERIFIED concept / impl unspecified]`
8. **Apex spec-driven pipeline** — 99.95% Figma adoption; ships AI-native product fast because design prevents empty specs. `[CS: VERIFIED]`

### Who we beat, and why
- **vs ScalePad** (QBR incumbent, $300+/user, Lifecycle Manager X): no first-party data, being displaced. A wins on normalize-from-inside. `[CS: MEDIUM]`
- **vs Cynomi** (vCISO tooling): no MSP-stack ownership, no telemetry — a workflow shell, not the data. `[CS: MEDIUM]`
- **vs Claude / build-your-own:** no data, no connectors, no governance. B wins by *governing what they build*, not by out-building it. `[CS: HIGH — Derek/Shawn]`
- **vs Microsoft Agent 365:** M365 user-productivity layer, a different stack position (Nicole). Less direct than it looks. `[CS: MEDIUM — needs customer validation]`

**Honest gaps in the why-n-able case:** the install-base number (#5) is the strongest argument and is `[?]` unverified; strategy-fit can't be checked (the strategy doc is a v0 placeholder).

---

## 2 · HOW IT RELATES TO THE RANKED "WHAT TO BUILD" RESEARCH

**What the ranked research is** (naming the mapping, since there's no separate "runbooks" file): the demand-ranked **use cases** — [Use Cases page](https://n-able.atlassian.net/wiki/spaces/AI/pages/62175772924) (per-coworker deep dives, ranked) + the n=39 survey + n=8 blind interviews. **Each coworker runs on a runbook, so "which coworkers to build, ranked" *is* "which runbooks to make."** `[assumption named]`

**The ranking (two instruments):**
- **Survey priority (n=39, quant):** QBR 2.90 · Alert Flood 3.23 · IR RCA 4.00 · Env Health 4.18 · Tabletop 4.95 · Triage 5.18 · Onboarding 5.67 · Benchmarking 6.46.
- **Qual cumulative (n=8):** QBR 31 · IR RCA 26 · Triage 25 · Tabletop 19 · Onboarding 16.

**Offerings mapped to the ranking:**
| Offering | Runbook it makes | Rank | Read |
|---|---|---|---|
| **A** | QBR | **#1 both** | The ranking's clearest signal → the lead offering is the top-ranked runbook. Aligned. |
| **C** | IR RCA | #2 qual / #3 survey | Second runbook by demand. Aligned. |
| **D** | Ticket Triage | #3 qual (intensity 8.3) / #6 survey | Split signal — high daily intensity, low forced-rank (table-stakes). |
| **B** | *(none — it's the factory)* | **not in the ranking** | B doesn't make one runbook; it's the engine that makes + governs *all* of them. It sits **under** the ranking, not in it. |
| **E** | Cross-tool reconciliation | **off-ranking** | Never tested — the unprompted white space (Jonathan/Derek). Not in the ranked six/eight. |
| — | Alert Flood · Env Health · Tabletop | mid-rank | Read as *features*, not standalone runbooks → bundle into A/B, don't sell alone. |
| — | Onboarding · Benchmarking | bottom | Deprioritize. |

**So:** the offerings track the ranking cleanly for A/C/D. B is the meta-layer the ranking doesn't capture. E is the thing the ranking *missed* because it was never a tested option. That's the value of holding both the ranking and the offerings: the ranking tells you which runbooks; the offerings tell you the engine (B) and the blind spot (E) the ranking can't.

---

## 3 · HOW IT RELATES TO WHAT WE'RE BUILDING / HAVE BUILT (acp-core-main-3)

| Offering / runbook | Build state | 
|---|---|
| **A · QBR** | **Value Ledger BUILT** (close to spec, customer-facing). **QBR runbook: NO SPEC** (bookmarked "[Set up later]" card). |
| **A · normalization** | PSA connector / cross-vendor normalization: **"Not started"** (separate spec). |
| **B · engine** | **Runbook Engine BUILT** (close to spec). Autonomy tiers **specced + ratified.** Coworker/Expert are **flat pre-registry tables** (versioned/guardrail registry designed, not migrated). |
| **B · crux** | Govern externally-built agents: **open BIG QUESTION** — audit-after, no pre-screen. Not specced. (G4 Action Proxy = candidate.) |
| **C · IR RCA** | **NO SPEC.** Needs Adlumin data access (Gate C, unconfirmed). |
| **D · Ticket Triage** | **The one runbook with a real spec** — day-1 onboarding coworker (10 tickets, ConnectWise, med-risk batch approval). |
| **E · Cross-tool** | Not in the build. Not in the ranking. |
| Alert Flood · Env Health · Tabletop | Named platform-default cards, **NO SPEC.** |

### The three tensions this surfaces (the "so what")
1. **Engine ahead, runbook behind.** We built the **Runbook Engine + Value Ledger — the exact substrate Offering A needs — but not the QBR runbook that rides them.** The fastest path to the #1 offering is to author the QBR runbook *on the engine that already exists*, not to build new plumbing.
2. **We're leading go-live with #6.** Day-1 ships **Ticket Triage** (survey priority #6) as the only specced runbook, while **QBR (#1) has no spec.** Deliberate wedge (daily-frequency on-ramp) or drift — your call, already flagged. The build's own logic: Triage is the safe, high-frequency, low-autonomy first run.
3. **B's moat is unbuilt.** The thing that makes B defensible — governing agents the MSP built elsewhere — is an **open question, not a spec.** If B is a real bet, G4 Action Proxy needs a spec run.

### The reassuring bit
The build is **not off-vision.** It built the *layer everything needs* — the Runbook Engine and the Value Ledger — before any single runbook. The gap isn't wrong architecture; it's that the **top-demand runbooks (QBR, IR RCA) sit unspecced on top of a ready engine.** That's a sequencing decision, not a rebuild.

---

## What this changes for the sketches
- **Why-n-able** now has a competitive spine per offering (structural moats + install-base + governor position) — fold the sharpened "unlike…" into each Moore value prop.
- **The runbook ranking** confirms A and C are demand-led; **B and E are the two the ranking can't see** (the engine, and the blind spot) — flag that explicitly so they're not judged by a ranking they were never in.
- **The build map** says the honest fastest win is **QBR-runbook-on-the-existing-engine**, and the honest open risks are **normalization (unstarted), IR-RCA data access (Gate C), and B's govern-external-agents crux (unspecced).**

*Install-base number `[?]` is the one piece of the why-n-able case worth chasing next — it's the strongest argument and the only structural one not yet quantified.*
