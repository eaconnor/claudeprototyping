# QBR System Blueprint — first pass toward "map a good system"

**Date:** 2026-08-04 · **Scope:** fast inline synthesis (Beth's call, not the full scout→spec pipeline) answering the five numbered questions, grounded in `acp-core-main-3` + the two `_ux/` mini-docs. Not yet the service-blueprint diagram itself — this is the spec-stage grounding that diagram needs before it's drawn.

```yaml
confidence_regime: PROCEED-FLAGGED
proceed_because: qbr-ebr.ux.md and acp-ux.md already contain most of this synthesis pre-coded from the datadump corpus; re-deriving it from raw sources would duplicate work already done and verified. Real gaps (the deck, two legal/product gates) are named, not papered over.
machine_behavior: surface [CS:]/[R]/[D]/[A]/[?] tags visibly · do not claim validation on anything tagged [A] or [?] · Package/concept survival numbers are directional (naive Idea Chess), not committed
```

---

## 0. What this pass got without touching the datadump

**Everything below except the deck came from files already in the repo** — `acp-core-main-3/specs/_ux/qbr-ebr.ux.md` (82KB), `acp-ux.md` (44KB), `specs/004-ai-coworker-registry/spec.md`, and the FigJam-blueprint source briefs from earlier today. Those ux.md files are *themselves* the synthesized output of prior scout/spec/council passes over the datadump — re-opening the raw datadump now would mostly re-derive what's already coded here, with two exceptions:

- **Verification, not discovery.** The ux.md files self-report `[CS:]` tags and citation counts. Per the 47% rule, none of those ratios are grep-verified in this pass — I read them, I didn't re-count them.
- **Freshness.** Anything added to the datadump *after* 2026-08-03 (qbr-ebr.ux.md's last edit) isn't reflected here. Also unopened per the ux.md's own admission: B8 (Kaseya/Syncro market-size reports) and the n=119 survey's raw data beyond what's already been pulled into citations.

If you want harder confidence on any specific claim below, name it and that's the one thing worth a real datadump trip — not a blanket re-scout.

---

## 1. What exists in the ACP repo — reuse vs. missing pieces

**Real, built substrate (per the 2026-07-20 Idea Chess pass, `briefs/concept-sketches-qbr-2026-07-20.md`, cited in qbr-ebr.ux.md §4):**
- **Runbook Engine — 49/49 tasks built.** `[CS: VERIFIED]` A QBR runbook is a wiring job onto this, not a build from zero.
- **Value Ledger producer — 55/55 tasks built** (corrected 2026-07-31 from an earlier "52/52" by direct grep of `specs/003-value-ledger/tasks.md`). **Renders $0 today** — no QBR-specific producer is wired in yet. `[CS: VERIFIED]`
- **The Coworker registry itself (`specs/004-ai-coworker-registry/spec.md`) is built-to-spec, Draft status.** This is the structural grammar §5 below is about.

**What's missing — the journey/orienting map (qbr-ebr.ux.md §2), 26 service moments across 7 stages (Entice · Enter · Schedule · Prep-Assemble ×8 pulls · Prep-Judge · Live Meeting ×12 moments · Follow-up · Extend):**

| Status | Count |
|---|---|
| Built | **0** |
| Specced | **1** (QBR Advisor is *named* in FR-019 as one of five v1 platform defaults — that's the entire spec depth it has today) |
| Adjacent (substrate exists, not wired) | **8** (the Runbook Engine + Value Ledger tasks above) |
| Absent | **17** |

**Reads as:** the plumbing (execution, versioning, audit, value-tracking) is real and done. The QBR-specific content — the actual runbook steps, the risk-register/roadmap data model, the confirm-gate UX, the defensibility tiers — is almost entirely undesigned. "Map a good system" is genuinely greenfield at the content layer, not the infrastructure layer.

---

## 2. What a great QBR-generation system does — the task/goal spine

From qbr-ebr.ux.md §6 (`[RIGHT_THING]`/`[THING_RIGHT]`, tagged `PROPOSED, confirm` — this is design's live judgment, not yet locked):

**Goals:**
1. Cut prep time without losing the business-value framing that makes EBRs land.
2. Let a non-technical delivery lead run the room solo, without a technician present.
3. Turn the EBR into a repeatable pipeline motion (referrals/projects), not just a checkpoint.

**Goal 1 reframed — Beth, 2026-08-04 (logged as a correction, not a rewrite of the sourced original above):** speed is a constraint, not the goal. The actual goal is letting the person do what's in their own best interest — the MSP *and* their client — who want to understand what they need from their own experts to keep the business safe and continuous. This directly answers DIV-004's unresolved tension (Must 1 bans time-saved framing in client-facing content, but "time saved" is the Coworker-wide UX north star everywhere else) — the resolution is that speed was never the north star for *this* Coworker's own goal-setting, whatever the platform-wide card language says elsewhere.

**Top Tasks (candidates):**
1. Build/update the risk register.
2. Build/update the tech roadmap.
3. Schedule the EBR into a prep queue.
4. Draft business-language talking points — explicitly *not* graphs/percentages.
5. Log post-meeting action items as PSA tickets.
6. Update the pipeline/scorecard (opportunities raised / opportunities closed).

**The architecture principle that makes this buildable, not just a wish list — job shop vs. production line, applied to the actual 15-tab Stefanie Hammond template** (this is the same classification now sitting on the FigJam board, §6 Operating Principle 1):

| Template section | Class | Implication |
|---|---|---|
| Agenda, Current Climate, Hardware/Software Asset Review, Employee Review, Post-Meeting Action Items, Next Meeting Planning, KPIs | **Production line — automate** | Directly pullable from PSA/RMM. The clearest automation candidate in the whole template. |
| Risk & Security Review, Compliancy Review, Technology Roadmap | **Hybrid** | Entries pullable/draftable; narrative synthesis and prioritization stay judgment. |
| Business Priorities & Goals, Referrals & Testimonials, Technology Budget | **Brains work — protect this** | Live conversation, no fields to auto-fill. |

**The point, stated directly in the source:** automating the production-line rows is *how* you buy back time for the brains-work rows — that's the mechanism behind Goal 1 and Goal 2, not a separate feature. **Automating a row does not relax the Musts** (§3) — an auto-drafted risk register still has to clear the business-value-framing and no-overclaiming bars before it reaches a client.

**Second operating principle — the translation layer, added 2026-07-31:** N-able's side of the draft is *the general* (telemetry rendered as consequence, industry-trend intelligence, base-wide comparison — expertise no single MSP can self-build); the MSP's side is *the particular* (this client, this history, this room). The output is **chooser-shaped, not prose-shaped**: ranked register rows with include/exclude, two-register talking points (CFO vs. owner), a picked-from-five trend brief, visibly-flagged commercial recommendations never accepted by default. This is the actual liability architecture, not just a trust nicety — **what the system sees ≠ what the MSP documents**, and nothing crosses that line without a human electing it.

---

## 3. Definition of good, most important problems/opportunities

**The 8 Musts (behaviors the corpus ties directly to failure when absent) — each with a built-in, machine-checkable test:**

| # | Must | Test |
|---|---|---|
| 1 | Business-value framing, not technical/graphs/percentages | Content ratio: business-outcome vs. technical-metric sentences in drafted talking points |
| 2 | Real prep, not last-minute | Artifact-freshness check on risk register/roadmap |
| 3 | Follow-up — action items become tickets | Ticket-conversion check within N days |
| 4 | Regular cadence, tuned per client (not fixed-quarterly) | Time-since-last-EBR vs. that client's own cadence |
| 5 | Both core artifacts present (risk register + tech roadmap) | Presence check |
| 6 | **Dual-surface document — structural, not a toggle.** Internal working doc and client-facing extract are two real artifact objects, never one document with a redaction flag | Structural check: does internal draft contain content absent from the client export |
| 7 | Sustainable backstage load — the technician building the risk review is a shared, limited resource | Capacity check against the observed sustainability ceiling |
| 8 | **No overclaiming legal/liability protection to the client** `[CS: HIGH — well-checked negative finding]`. No case law anywhere upholds a documented risk-refusal as a defense; a machine that surfaces *every* detected gap expands the MSP's documented exposure, not just its diligence | Language check: does client-facing content assert liability-protection language — flag/fail if so |

**4 Shoulds:** ask for referrals (valuable, not universal) · cadence tuned per client (now independently triangulated across three unrelated consultancies, the one Should with real corroboration — **Beth: fair, treat as settled**) · high-touch/in-person where feasible · log into a pipeline/scorecard.

**The single sharpest, best-evidenced problem in the whole corpus, restated for a system that automates:** an operator without confidence falls back to showing the production-line output instead of doing the job-shop translation — Stefanie's named #1 root cause. **A product that makes the production-line output prettier and easier to display makes the most-cited failure mode easier to commit.** That's the sharpest design tension on the page — building this system well is not neutral; a naive build actively risks making the known failure mode worse, not better.

**Ranked open gates — updated per Beth 2026-08-04:**
- **Q1 — legal.** Can N-able legally pull non-N-able vendors' data into a client-facing artifact? **Beth: flag it, but assume for planning purposes that we can cover it.** This un-gates Package 5 (cross-vendor) for design work — still a real legal read that has to actually happen before ship, just no longer a reason to design *around* cross-vendor as if it's dead. Treat as `🟡 flagged, assumed coverable`, not `🔴 blocking`.
- **Q2 — the operator gap.** Vanessa herself has not been directly studied — **Beth confirms this stands** — but there is some secondary evidence beyond the buyer-side deck interviews (Kenneth/Vitali/Jonathan/Mike are all owner/buyer-level, not delivery-lead). **Not yet named or sourced in this pass** — worth Beth pointing to the specific secondary source next, so it can be weighed rather than left as a bare assertion.

Thirteen more riskier assumptions (RA-001 through RA-014) are logged in §5 of qbr-ebr.ux.md, including two live data-integrity flags worth carrying forward untouched rather than re-summarized: **RA-012** (a WTP anchor that contradicts the competitive scan's own pricing-page fetch — don't quote "$300+/user" without resolving which is wrong) and **RA-013** ("encryption resolves the data-legality question" is a category error — GDPR Art. 32 security control ≠ Art. 6 rights-to-process question).

---

## 4. The deck vs. the spec — same/same, and how other coworkers feed in

**Source: `MSP Superpower Problem.pdf`, 19 pages. Nicole Reineke (primary research) + Beth (secondary research), June 2026.** This predates qbr-ebr.ux.md by ~6 weeks — it's a lot of qbr-ebr.ux.md's own upstream source, not a separate track. `[CS: VERIFIED — read in full]`

**Same/same — confirmed, not inferred:**

- **"QBR Analyst" (deck) = "QBR Advisor" (canonical spec) = "N-able Harness" (Beth's later name) — one thing, three labels.** The deck's demand table (p4) scores it **31 pts, avg rank 2.90, verdict BUILD** — that exact **2.90** is the same number DIV-001 cites from FSN-83143 DEC-006. This isn't a plausible match, it's the same figure traced to its source: the canonical spec's priority score *came from* this deck's interview scoring.
- **The other four v1 platform defaults are the deck's own supporting coworkers, renamed on a 1:1 basis:** Continuous Env Health → Environment Health Monitor · Alert Flood Suppression → Alert Flood Suppressor · Incident Response RCA → Incident Response Analyst · Security Tabletop → Security Tabletop (verbatim). `[CS: VERIFIED]`
- **One deck use case did not survive into the canonical five: Employee Onboarding** (ranked #6 in the deck's own demand table, 16 pts, verdict COND.). Worth a direct question rather than an assumption — was it deliberately cut, or just not yet specced? Not resolved in any file read so far. `[?]`
- **The "N-able superpower," now with real sources instead of the paraphrase (deck p8, suit-card framing — A♥ A♠ A♣ A♦):** Adlumin MDR telemetry (real, not simulated, threat exposure) · Cove DR + Backup (first-party, not a fragile third-party API) · the script repo + deterministic execution (validated scripts the engine runs, doesn't generate new commands live) · SOC pattern data at scale (90%→99% auto-remediation target, "how your profile compares across our whole base"). This is the same "first-party Adlumin+Cove+UEM" line qbr-ebr.ux.md already cites — the deck is where it's actually sourced.
- **RA-012's WTP anchor is now traceable, not just contradictory.** Source note 09: "ScalePad pricing — Kenneth M. interview, direct quote" — Kenneth's "$300+/user/mo" *is* this deck, verbatim, from a real interview. The competitive scan's separate finding (ScalePad's actual pricing pages show per-client/per-seat-block, not flat per-user) still stands unreconciled. Both halves are now primary-sourced; the contradiction itself is the finding, not a citation error.
- **The 15-minute bar is the deck's own design thesis, stated as settled** (p6, p11: "90 min of prep → 15 min of editing. That's the bar." / "THE BAR: editable in 15 minutes.") — **but qbr-ebr.ux.md logs the identical claim as RA-007, an open risky assumption at P≈0.35, unowned.** The deck's actual pilot number is more precise than the round "15" anyway: **90→17.5 min, n=11, Condens UEM research** (source note 02) — worth citing the real number, not the rounded design-bar version, when it matters.

**The real tension — the deck's own central thesis collides with a since-made engineering scope decision:**

The deck's whole structural idea, named explicitly on p5 ("THE LEAP"): *"These aren't six products. It's one job."* QBR is **THE CAPSTONE**; the other five coworkers are explicitly described as agents "doing the work behind the scenes" that feed it. **This is the deck's differentiation story, not a minor detail.**

The canonical spec (`004-ai-coworker-registry`, drafted the following month) states, as **NONGOAL-002: "Coworker-to-Coworker orchestration."** Nothing in the v1 Coworker data model lets one Coworker's output become another's input at runtime. **The deck's capstone thesis and the shipped spec's scope decision are in direct, unreconciled tension** — not a hypothetical: the fleet's own continuous-visibility-layer concept already tried to build toward the deck's vision and died at Genesis on exactly this nongoal (2026-07-31 Idea Chess re-run).

Per your earlier call — **build the v2 feed to learn, not as approved v1 scope** — the narrower, prototype-worthy shape:

- QBR Coworker's Runbook *reads* Alert Flood Suppressor / Incident Response Analyst / Environment Health Monitor's Value Ledger entries or run-audit artifacts as structured input to its own risk-register draft. Read-only data dependency, not live orchestration — a materially smaller ask than reopening NONGOAL-002 outright.
- This is worth prototyping precisely *because* it's the deck's original, best-evidenced idea — "one job, not six" is the thing Nicole's actual buyer interviews validated (p3-4), not a speculative extension. The nongoal blocked the mechanism, not the demand.
- Still flagged, not approved: name it as the learning goal, the same way `[0% Claude — fill this in]` bet lines get named instead of silently filled.

**Borrowable design patterns from the deck's competitive appendix (pp. 7, 10, 13, 15–18) — real precedent for "what does a great system do," not just QBR-specific:**
- **SKILL.md + locked-script split (NeoAgent)** — MSP owns plain-English intent, platform owns tested/read-only execution. Named explicitly as the model to steal for governance.
- **Severity matrix + symptom→cause triage (wshobson/agents)** — direct fit for Incident Response RCA specifically.
- **The runbook finds the technician, not the reverse (incident.io)** — auto-attach by metadata; a doc nobody opens isn't a runbook.
- **The feedback loop nobody in MSP has closed (Google SRE / PagerDuj's Gen-1→2→3 framing)** — runbooks that improve from execution outcomes. ACP is explicitly positioned as building "Gen 3."
- **The "battleship" self-audit (deck p10)** is itself worth reusing as a format: 5 knowns / 5 fogs on "what makes a good runbook," including naming its own biggest fog plainly — *"How the 15-minute prep feels. UX testing. (+ 8 of 20 interviews done, Pendo pull pending)."* Those 8 interviews were buyer/owner-side (Kenneth, Vitali, Jonathan, Mike — see cast, p3), which resolves rather than contradicts §3's Q2: the operator gap is real and correctly named downstream, not an oversight.
- **A ready-made next-step prototype scope already exists (deck p11, "THE NEXT STEP"):** *"Prototype the QBR draft-to-send flow. Screen: the draft landing. Stimulus: a mid-size customer QBR with one gap (3 devices missing backup). Measure: time to send-ready."* This is a concrete, already-scoped starting scenario for whatever gets prototyped next — worth using rather than inventing a new one.

---

## 5. Compliance with the main spec (`004-ai-coworker-registry`)

This is the structural grammar any QBR system design has to fit into — not optional shape, this is what "Coworker" *means* in ACP:

- A Coworker = **name** + **provider/model** (its own reasoning loop) + **zero-or-more Experts** + **exactly one Runbook** (track-latest or pinned) + **zero-or-more approved scripts** + **zero-or-more MCP requirements** (server + tenant-bound instance) + **guardrails** (three-tier: low=auto, medium=batch-approval, high=always-explicit, non-configurable) + **trigger** (on-demand / scheduled / event).
- **Every creation path produces Draft, never auto-Active.** A human must explicitly activate — separately, auditable, and if an AI proposed it, a *different* human actor must approve (self-approval rejected).
- **Immutable versioning** — editing an Active Coworker spawns a new Draft version; the active version keeps governing runs until the new one is explicitly activated.
- **QBR Advisor's actual spec depth today:** named in FR-019 as one of five v1 platform defaults, with "pre-selected Experts, a platform-owned Runbook, conservative default guardrails" — but *which* Experts, *what* Runbook steps, is undefined. That's the actual content gap "map a good system" is being asked to fill.
- **The confirm-gate / defensibility-tiering concept (Measured / Benchmarked / Estimated / Unverified) is proposed grammar, not built substrate** — a full-repo grep in this same file (2026-07-31) found zero hits for the tier vocabulary in code; what exists is `baseline_source` (tenant_configured | platform_default | coworker_reported) only. Don't design against a tiering system that exists yet — it has to be built.
- **Value Ledger integration is a real, tracked gate (DIV-003, 🟡 resolving-with-Product):** FSN-83143 requires every completed run to write a Value Ledger entry ("a run that produces no value entry is a system error"). The QBR producer isn't wired yet. This has to close before QBR Advisor can ship, not after.

---

## 6. Candidate concepts to carry into Idea Chess / Council

Already generated, already scored once (2026-07-20 Idea Chess pass, re-run 2026-07-31) — these are what "survived so far," not fresh brainstorming:

| Concept | Naive survival | Status |
|---|---|---|
| **Package 3 — Client-Facing Proof, N-able Native** | ~2.9% (07-31 re-run) | **Board leader.** First break moved to *Defend* on the liability gate. Needs no cross-vendor normalization; "Measured" defensible day one on first-party telemetry. |
| **Readiness assessment** (new) | ~2.6% | Pre-sales-adjacent, unprompted three-coworker family Stefanie herself proposed. |
| **Pre-sales first-meeting aggregator** (new) | ~2.5% | Same Stefanie-proposed family. |
| **Practice-companion framing** (new) | ~2.3% | Reframes the offering as ongoing companion rather than point-in-time report. |
| **Package 5 — Client-Facing Proof, Cross-Vendor** | ~0.36–0.64% | Fell hard. Cross-vendor aggregation makes N-able the holder of competitors' risk data — the "holy grail" scope, gated entirely on Q1 (legal). |
| **Continuous-visibility layer** (new) | ~1.35% | **Dies at Genesis: coworker orchestration is the v1 NONGOAL** — see §4. Dead as scoped; the v2 narrower-feed idea in §4 is the way this concept might survive a second pass. |

All probabilities are `[A]`, directional — a naive Idea Chess pass, not a committed forecast. Package 3 and the three Stefanie-proposed new pieces are the strongest candidates to actually take into a fresh Council/Idea Chess run once this brief and the deck are both in hand; Package 5 survives only if Q1 resolves favorably; the continuous-visibility layer needs the v2-proposal reframe in §4 before it's worth re-running at all.

---

## 7. The forks — every real branch point, consolidated

Everything above resolves to ten actual forks. Each one changes what gets prototyped, not just how it's worded — that's the test for "real fork" vs. detail.

| # | Fork | Beth's call (2026-08-04) |
|---|---|---|
| F1 | Package 3 vs. Package 5 | 🟢 **Cross-Vendor (Package 5).** "Per spec." Plus a new dependency this creates — see §7b below: need a plausible MSP tech stack before scoping what actually has to be pulled from. |
| F2 | Which branch DEC-006 assumed | 🟢 **Cross-vendor** — settled by decision, consistent with F1. DIV-001 stays logged as a real spec gap (Nicole should still know the canonical spec doesn't say this), but it no longer blocks design work. |
| F3 | Who the offering speaks to | 🟢 **The owner** (Craig/buyer), not the delivery lead. |
| F4 | v1 self-contained vs. v2 cross-coworker feed | 🟢 **"Yep."** Confirmed — build the read-only feed as the learning bet, still flagged as a departure from NONGOAL-002, not approved v1 scope. |
| F5 | Employee Onboarding | 🟢 **Use it as a small case if useful; otherwise defer to Nicole's exclusion (DEC-006).** Not a primary coworker — a minor, optional inclusion. |
| F6 | MVP spine | 🟢 **Environment Health is the ongoing spine.** Beth: research points to QBR/EBR *not* being one-time events — they're ongoing, and Environment Health is the continuous-monitoring substrate that makes "ongoing" real rather than a slogan. |
| F7 | Confidence scope | 🟢 **Differentiator — explicitly not coaching/enablement.** Beth: if the answer trends toward "coaching," that's a signal we haven't built the right thing — it means we're designing for a need sitting in "Maslow's basement" (confidence, survival-in-the-room) when the real need is **two rungs higher** (being seen as strategic, growing the account). Don't build a confidence-building tool. |
| F8 | Goal unit | 🟢 **More business — this is the lead metric.** Not EBRs-delivered, not time-saved: how much more work/revenue per contract. Directly matches Stefanie's own template — the KPI tab (`qbr-ebr.ux.md` §2) already tracks **# Referrals, # Testimonials, # New Sales Opps** alongside Territory Retention % and NPS. That tab was already the right instrument; this decision just names it as *the* lead metric rather than one of six. |
| F9 | The 15-minute bar | 🟡 **Real, but with wiggle room — this is money vs. time, or really just adherence.** Beth's framing: it's less "how fast" and more "does it get done at all" — like getting someone who isn't currently going to the gym to actually go. The deck's 15-minute number stays as a design bar to aim at, but the metric that actually matters is closer to **adherence/completion rate** than raw minutes saved — connects directly to Phase 1's "only 20% of MSPs have a structured QBR process" and the excuse-trap finding already on the FigJam board. |
| F10 | Sustaining vs. disruptive | 🟢 **Disruptive is the aim, but follow Gartner-cycle logic — okay being early/table-stakes and picking up low-hanging dollars along the way.** Not either/or: aim at the non-consumption bet, don't refuse near-term sustaining wins while getting there. |

**Reading these together, they cohere into one strategy, not ten separate calls:**
- **F6 + F4** click into the deck's own original thesis: Environment Health Monitor becomes the *first* continuous feed to actually wire up (the narrow, prototype-worthy version of F4's cross-coworker bet), with QBR as the periodic checkpoint that reads its accumulated signal. That's "one job, not six" — started with one feed, not five at once.
- **F7 + F8 + F9** all point the same direction: away from time-saved/confidence-building, toward revenue-growth and adherence. The system's job is closer to "get MSPs to actually run this, and make them more money when they do" than "make an existing ritual faster." That's a materially different design target than the deck's own "90→15 min" framing — worth carrying as the north star over the literal time metric.
- **F1/F2 (cross-vendor) + F10 (okay with table-stakes wins)** aren't in tension: the strategic bet is cross-vendor, but nothing stops shipping N-able-native value first while cross-vendor integration work is underway — sequencing, not a fork to re-litigate.

---

## 7b. Plausible MSP tech stack — what cross-vendor actually has to pull from

F1's own condition: know the stack before scoping the pull. Six categories, from the deck's own normalization diagram (p6) plus the competitive-scan sourcing already in qbr-ebr.ux.md (HaloPSA named must-integrate per the n=119 survey). N-able-native option first per category, then the realistic non-N-able alternatives an MSP is plausibly running instead.

| Category | N-able native | Plausible alternatives MSPs actually run | Source |
|---|---|---|---|
| **PSA** (tickets, SLAs) | MSP Manager `[R — corrected 2026-08-04; confirmed in datadump, N-UEM-Coworker-Use-Cases.txt, listed alongside ConnectWise as a PSA ticket source]` | ConnectWise, Autotask, HaloPSA, Kaseya BMS, Syncro | HaloPSA named must-integrate `[D — n=119 survey, cited in qbr-ebr.ux.md]`; rest `[CS: MEDIUM — general market knowledge, not sourced in this corpus]` |
| **RMM** (patch, device health) | N-central | Kaseya VSA, NinjaOne, Atera, Datto RMM, ConnectWise Automate | N-central `[R — Stefanie/Vanessa first-person]`; alternatives `[CS: MEDIUM — not sourced in this corpus]` |
| **MDR / Security** | Adlumin | Huntress, SentinelOne, CrowdStrike, Sophos MDR | Adlumin `[R — deck p6/p8]`; alternatives `[CS: MEDIUM]` |
| **Backup / DR** | Cove | Datto BCDR, Veeam, Acronis | Cove `[R — deck p6/p8]`; alternatives `[CS: MEDIUM]` |
| **Identity / MFA** | *(no N-able-native identity product)* | Microsoft Entra ID, Duo, Okta | Deck p6 names Entra explicitly `[D]`; Duo/Okta `[CS: MEDIUM]` |
| **Security awareness / phish-sim** | *(no N-able-native product)* | KnowBe4, uSecure | Both named explicitly in the deck's own diagram `[D — deck p6]` |

**The finding this surfaces, not just a table (corrected 2026-08-04):** identity and awareness training have **no N-able-native option at all**; PSA does — MSP Manager, confirmed in the datadump — so Package 3 (N-able Native) covers four of six categories (RMM/MDR/Backup/PSA), not three. That's a stronger native story than my first pass claimed, but it doesn't erase the finding: **every MSP is still cross-vendor in at least two of six categories** (identity, awareness) regardless of Package. "Native is the clean, simple branch" holds up better than originally stated here — worth flagging that the corrected version cuts the other way from my first draft, toward Package 3 being more self-sufficient than I'd said, not less.

**What this means for scoping the pull, concretely:** the QBR Coworker's MCP requirements (per §5's structural grammar) need at minimum one identity connector and one awareness-training connector as day-one requirements regardless of which Package ships; PSA can be native (MSP Manager) or cross-vendor depending on which the account already runs.

---

## 8. The redesigned blueprint — new steps, not an automation overlay `[A — designed target, untested]`

Built to FigJam (fileKey `74ru22mcRfrJKFoyvsnNh0`, sections "System Flywheel — Orienting Diagram," "Service Blueprint — Proposed System," "Sources & Links," below the existing EBR/QBR experience map on the same board). Per Beth's instruction: *"what we build might change steps, so make a new blueprint. it should — become easier somehow."* This is not the old 6-phase EBR (Cadence Hits → Prep-Assemble → Room Opens → Hard Moments → Follow-Up → Close Loop) with automation bolted on. The step shape itself changes.

**Why it changes, stage by stage:**

| Old phase | What happens to it |
|---|---|
| Cadence Hits (manual schedule-check) | Becomes **Nudge** — the system surfaces the tiered trigger automatically; no human checks a spreadsheet to notice a QBR is due |
| Prep-Assemble (8 pulls, the night-before scramble) | **Disappears as a discrete event.** Once Environment Health Monitor (+ Alert Flood Suppressor, Incident Response Analyst, Security Tabletop — v2 feed) write continuously to their own Value Ledger/audit entries, there's nothing left to assemble at the last minute. Replaced by **Always Current** — a standing state, not a step |
| Prep-Judge (translate raw data to business narrative) | Becomes **Draft Lands** — the runbook pre-writes the ranked, tier-flagged translation; the delivery lead edits an existing draft instead of building one from nothing |
| Room Opens / Hard Moments (report read-out, defend the numbers) | Compresses into **The Room — Brains Only.** Production-line and hybrid content arrived pre-resolved through Confirm & Personalize, so live time shifts toward the strategic conversation — priorities, budget, referrals — that was always the actual point |
| Follow-Up / Close Loop | Becomes **Close & Compound** — the system auto-drafts the follow-up ticket set and reschedule prompt; the $ /opportunity count visibly closes the loop back to stage 1, making the flywheel legible as a flywheel, not six disconnected events |

**New sequence:** Always Current → Nudge → Draft Lands → Confirm & Personalize → The Room (Brains Only) → Close & Compound → (feeds back to Always Current).

**New addition — Confirm & Personalize.** Not present as a discrete old-system step at all. Named separately from Draft Lands because it's where the delivery lead's real expertise still gets exercised (the confirm-gate on Unverified/overclaiming content, the audience-register choice, the one fact only they know about this client) — collapsing it into Draft Lands would have hidden the human judgment step inside an automation step, which is exactly the kind of overclaim the defensibility tiers (§4) exist to prevent.

**Customer emotional thread — added per Vault Q1 precedent** (Capital One/Adaptive Path, 2018 — Beth's own past work), a PICNIC-style Thinking/Feeling row inserted into the canonical Adaptive Path structure, not a replacement for it. Tagged `[A — designed target, untested]` throughout — this is what the system is *designed* to produce, not a measured outcome. One explicit risk is named rather than presenting six stages of guaranteed positive feeling: **Confirm & Personalize risks reading as rubber-stamping instead of genuine ownership if the gate UI is clumsy** — the human-in-the-loop step is only as good as its interface, and a bad one would collapse the intended "ownership" feeling into "one more approval click."

**What did NOT change:** the canonical Adaptive Path swim-lane structure itself (Customer Actions / Touchpoints / Line of Interaction / Staff Actions Frontstage / Line of Visibility / Staff Actions Backstage / Support Processes) — Beth's instruction was to use it as guidance, not to invent a new structure. Stage 5 (The Room) deliberately hands off to the existing EBR/QBR experience map's own Phase 3–4 frontstage rather than redrawing live-meeting mechanics that are already mapped elsewhere on the same board.

**Not yet done:** a post-hoc critic/council pass on two novel-combination risks flagged earlier but not yet checked — (a) the revived cross-vendor bet (F1) against its original low Idea Chess survival score, and (b) Environment Health-as-spine's kinship to the already-killed continuous-visibility concept. Offered as a next step, not yet run.

---

## 9. Live workshop — interrogating the map, 2026-08-04

Beth's direct read against the completed blueprint, plus what it surfaces as still open. Execution-pain rows (§2's production-line table) are confirmed in scope, no open questions there. The rest of this pass is the job-shop half — harder, and the actual differentiator per the confidence paradox below.

**Job-shop workshop — two named sub-problems, both real, neither solved yet:**
- **Data trust** — what makes a drafted finding believable. Maps to the defensibility tiers (Measured / Benchmarked / Estimated / Unverified, §5) — the mechanism exists on paper, zero hits in code. This is the actual build target, not a UI polish item.
- **Translation storytelling** — how to narrate what a finding *means*. Already answered, not by design work — Stefanie Hammond's own unprompted four-part formula, direct quote from her 07-30 interview: *"here's the data → the risk → what it means to you → impact and consequences if unactioned."* Use her script, don't reinvent one.

**New gap — not in the corpus at all, confirmed by direct search (2026-08-04):** how the system handles an MSP that already has its own EBR process vs. one starting from scratch, and how either customizes the system to their own practice. Zero mentions anywhere in qbr-ebr.ux.md or acp-ux.md. Genuinely open — needs new research or design thinking, not retrieval from what's already been gathered.

**Stefanie-as-Vanessa-proxy — closed, resolved in Stefanie's favor.** The ux.md's own cast-table characterization ("no first-person material on her own concerns... not a studied subject") undersells what's actually in the primary transcript. Direct quote, 07-30 interview: *"this was very much like when I was a CSM. I was a CSM for about 16 years... basically it was account management... they would usually bring me in just before it was closing and I dealt with the major accounts... right away I would meet with them."* That's real account-relationship/delivery-side experience, not purely an outside trainer's view — good enough grounds to use her as a Q2 proxy. The secondary ux.md synthesis was itself the thing worth doubting here, not Beth's read of it. Not reopening.

**Risk frameworks — not sourced in this corpus, answered from general domain knowledge:** `[CS: HIGH — well-established, stable industry knowledge, not corpus-verified]` NIST CSF and CIS Controls v8 are the standard pairing for translating a technical finding into a business-facing risk register — the closest existing analogue to what Must 1/the translation layer is trying to do by hand. ISO 27001/27005 is the compliance-framing alternative; FAIR is the quantitative/dollar-denominated option. `[CS: MEDIUM — MSP/vCISO adoption pattern specifically]` most vCISO tooling in this space maps to NIST CSF or CIS Controls rather than a bespoke taxonomy. Worth checking whether Adlumin already outputs against one of these before picking — that would settle it by inheritance rather than by choice.

**Continuous visibility / negotiating NONGOAL-002 — routed, not decided here.** Beth wants to keep this concept alive rather than treat it as dead at Genesis. The v2 read-only-feed proposal (§4) is already one negotiated shape of this (read Value Ledger entries, no live orchestration). Anything beyond that — real bidirectional orchestration — is a scope question for Nicole directly, since NONGOAL-002 is her spec's decision, not a design call to reinterpret unilaterally.

**The confidence paradox, renamed — Beth's frame, adopted over mine:** "kitting," not "confidence paradox." A job shop kits the specific parts a job needs before assembly; a production line skips that step because every job is identical. Beth's broader read: *"too many people are production lining all of AI and not setting up good kitting/job shops"* — treat this as the sharpest single-sentence statement of the wicked problem so far, sharper than my own Candidate A framing from the prior pass.

---

## 10. Follow-up workshop, same day — frameworks, options, theory, and a named gap

**Risk frameworks — correction, 2026-08-06: NOT settled. Was overstated below; leaving the original text struck-through-in-spirit rather than deleted, so the correction is traceable.** Beth asked directly — "did the product decide that or did I?" — and the honest answer is neither. Claude proposed NIST CSF/CIS Controls/FAIR from general knowledge (§9, honestly flagged then as not-corpus-verified). Beth pasted a second AI's (Copilot) independent take landing on the same shortlist — but two AI systems agreeing isn't verification, possibly the same training-data default surfacing twice. Claude then ran a web check and found something real but narrower than what got claimed: Adlumin's compliance-reporting feature references NIST as **one of nine frameworks it reports against** (PCI DSS, NIST, HIPAA, ISO 27001, GLBA, FFIEC CAT, NCUA ACET, FINRA, CMMC — `[CS: HIGH]`, independently corroborated at `nable-source-map-qbr-2026-07-31.md:95`, n-able.com/products/adlumin/compliance-support). That is not the same claim as "the product has chosen NIST CSF as its executive risk-framing structure for QBR/EBR." Nobody verified that second, larger claim — it was upgraded from "reports against, among many" to "settled, inheritance not choice" without the evidence to support the upgrade. Logged as a Conduct Ledger Miss. **Now actually settled, 2026-08-06 — Beth's call, confirmed.** Not one framework chosen for "the feature" — two tabs doing two different jobs, each getting the framework that fits its job:

- **Compliancy Review** (Stefanie's own tab, `qbr-prep-data-sources-2026-07-31.md:65`) — job is attestation against an externally-mandated, industry-specific standard (HIPAA because they're a dentist, PCI DSS because they take cards — decided by what applies to the client, not chosen by the product). Served by Adlumin's existing "One-Touch Compliance Reporting" flaggable list — PCI DSS, NIST, HIPAA, ISO 27001, GLBA, FFIEC CAT, NCUA ACET, FINRA, CMMC. `[CS: HIGH]` This is inheritance done correctly: reusing a real, already-shipping Adlumin capability, not introducing new taxonomy.
- **Risk & Security Review** (Stefanie's other tab, same source) — job is the MSP's own read of *this client's* exposure and posture, independent of any external mandate: prioritize what's exposed, translate it, state the consequence. A narrative/communication job, not attestation. NIST CSF 2.0 (Govern/Identify/Protect/Detect/Respond/Recover) structures that story; CIS Controls v8 is the prescriptive evidence layer underneath it; FAIR stays an optional dollar-denominated mode. `[CS: HIGH — stable, well-documented frameworks; chosen here for fitting the job, not for popularity]`
- ISO 27001/27005 remains a live alternative for the Risk & Security job if Beth later wants a governance-framing instead of NIST's lifecycle framing — not ruled out, just not chosen.

This corrects and closes the 2026-08-06 Miss logged above — the frameworks aren't inherited wholesale from Adlumin, and they aren't one global choice; they're assigned per-job, confirmed directly by Beth after she named that the two tabs "do different jobs."

**Genuinely new gap, confirmed absent from the corpus (per §9) — now in scope to address:** how the system handles an MSP with an existing EBR process vs. one starting from scratch, and how either customizes to their own practice. No design work done yet — naming it as an open work item, not solving it in this pass.

**NONGOAL-002 — MVP vs. full build, pros/cons/options (Beth asked for the calculation, not just the routing note):**

| Option | What it is | Pros | Cons | Effort |
|---|---|---|---|---|
| **A — MVP, stays inside NONGOAL-002** | QBR Coworker's Runbook *reads* other coworkers' Value Ledger/audit entries as structured input. No write-back, no triggering. (This is §4's existing v2 proposal.) | Ships without renegotiating the spec; low engineering risk; testable now; partially delivers "one job" without touching architecture | Doesn't deliver the deck's full thesis; still five separate configuration surfaces for the MSP; the killed continuous-visibility concept stays dead in its full form | Low-medium — a data-read wiring problem, not new architecture |
| **B — Middle: event-notify, not data-share** | Coworker A completing a run emits an event; Coworker B's trigger listens and enqueues its *own*, independently-approved run. No runtime output-sharing — the letter of NONGOAL-002 holds. | Closes part of the demand gap (proactive triggering instead of pure schedule/on-demand) without reopening the architecture decision; smaller ask to bring to Nicole than full orchestration | Still not the deck's "one operating system" vision; adds a new event-bus concept to the Temporal model that doesn't exist today | Medium — new plumbing, but conceptually smaller than B |
| **C — Full orchestration, reopens NONGOAL-002** | Coworkers trigger each other and share state at runtime — the six-coworker "operating system" the deck actually describes | Delivers the deck's own validated thesis directly; matches the buyer-side demand data most closely; one narrative across the whole platform | Reopens an architecture decision Nicole already closed; the guardrail model wasn't designed for compounding chains — a medium-risk auto-action in Coworker A triggering Coworker B could compound into a high-risk cumulative action without either individually tripping a guardrail; real determinism/workflow-sandbox implications, not just a config flag | High — scope negotiation with Nicole first, then real architecture work |

Not recommending one here — this is the calculation Beth asked for, the pick is hers. Option B reads as the most under-explored of the three; worth naming as a real third path rather than treating this as strictly A-vs-C.

**Goldhar — found, and it's a strong fit, verified via web search 2026-08-04 (not previously in this corpus):**

Joseph Goldhar (with Mariann Jelinek) — ["Plan for Economies of Scope,"](https://hbr.org/1983/11/plan-for-economies-of-scope) *Harvard Business Review*, Nov-Dec 1983; and "Computer Integrated Flexible Manufacturing: Organizational, Economic, and Strategic Implications," *Interfaces*, 1985. `[CS: HIGH — real, verifiable publications]` Core thesis: the shift from **economies of scale** (efficient only through uniform repetition — the production line) to **economies of scope** (efficient variety — the job shop, done cheaply) happens when the organizing principle moves from **materials flow to information flow**. Flexible/computer-integrated systems get economies of scope specifically because they make low-cost switching between different jobs possible.

**Direct mapping to this brief's own language:** the translation layer (§2) — N-able's side is the general, the MSP's side is the particular — *is* an information-flow reorganization, not a materials-flow one. Goldhar's framework says that's exactly the right lever: kitting (Beth's word) becomes cheap when the system is organized around information flow, not when you try to force scale-economics onto irreducibly job-shop work. This gives the "kitting" metaphor real theoretical backing, not just a good analogy.

**Surplus value / win-win / "fix the random bit" — connected to a named framework, not left as an aphorism:** Donella Meadows, ["Leverage Points: Places to Intervene in a System"](https://donellameadows.org/archives/leverage-points-places-to-intervene-in-a-system/) (1999) ranks 12 intervention points from weakest (parameters/constants) to strongest (paradigms). **Information flows sit at point 6 of 12 — "consistently underused."** Meadows' own framing: making relevant data visible to whoever's decisions it should inform, without filters/delay/distortion, changes behavior at scale without touching rules or goals. `[CS: HIGH — well-documented, widely-cited systems-thinking framework]` This is a way to operationalize Beth's own heuristic ("wicked problems are usually solved by fixing some random bit that unlocks a bunch of value somewhere else") rather than leaving it as intuition: **rank candidate interventions by where they sit on Meadows' hierarchy, and favor the information-flow-level fix over a parameter-level one.** The defensibility tiers + dual-surface architecture + chooser-shaped output (§2) are already, in this framing, an information-flow-level intervention — which is why they're worth the build effort Must 6/7 assign them, not a UX nicety layered on top.

**Security controls — Beth flagged this needs to be "serious," two readings, both worth naming:**
1. **Content framework** — already answered above: NIST CSF + CIS Controls + optional FAIR is the risk-register backbone.
2. **The system's own security posture — not yet addressed anywhere in this brief, naming it now as a gap.** ACP's QBR Coworker, under the cross-vendor (Package 5) branch, aggregates a client's *entire* security posture across PSA/RMM/MDR/Backup/Identity/Awareness in one place — a materially larger blast radius than any single vendor's own telemetry. What's already real per `acp-core-main-3/CLAUDE.md`: account-scoped rows on every table (`account_id`), envelope-encrypted MCP credentials (KMS in prod, AES locally), cross-tenant access returns 404 not 403 (never reveal existence). What's **not yet addressed anywhere in this corpus**: audit granularity on *read* access to an aggregated cross-vendor risk register specifically (who looked at this client's full risk picture, and when), and access separation between the internal (undisclosed-findings) surface and the client-facing surface at the permissions layer, not just the content-generation layer — Must 6's dual-surface rule currently reads as a data-model requirement, not yet a stated access-control requirement. Worth a real question back to engineering, not something to assume is covered by the existing account-scoping alone.

---

## 11. FigJam updates, 2026-08-04 — onboarding stage + moment-level detail

**Fixed: the service blueprint was missing onboarding.** Added **Stage 0 · Onboard & Customize** as a new first column on the live FigJam table (fileKey `74ru22mcRfrJKFoyvsnNh0`, section "Service Blueprint — Proposed System") — covers both branches named in §9's original gap: a new-start MSP (no existing EBR process, seeded with Stefanie's own 15-tab template as scaffold) and an MSP migrating an existing process (imports their own template/cadence rules; the system re-runs the job-shop/production-line classifier against *their* sections, not just the default). Explicitly noted as handling ongoing updates too, not just first-run — the same import/mapping capability applies whenever a client's own process changes later.

**New: a moment-level 3x-detail breakdown**, section "Service Blueprint — 3x Detail (moment-level)" on the same board — 21 named service moments across the 7 stages (0–6), each with **what needs solving** (grounded in this brief's own §0–§10) and **how it gets solved left blank/`[?]` wherever the corpus genuinely doesn't say** — per Beth's direct instruction: *"get into what we need to solve — how we solve it can leave blanks where you don't know. I can fill them in."* Roughly half the "how" column is `[?]` — this is honest, not a gap in the research pass; most of this system's actual mechanism (the gate UI, the tier-assignment logic, the NLG that produces Stefanie's four-part translation, the defensibility-tier wiring) is undesigned, which is the real finding "map a good system" was always going to surface.

---

## 12. Idea Chess re-play + the Laissez Faire Fellows persona, 2026-08-04

Two companion artifacts, not duplicated here:

- **`briefs/laissez-faire-fellows-persona-2026-08-04.md`** — a fictional, data-heavy MSP (Laissez Faire Fellows) built as a concrete Adopt-stage test bed for Idea Chess and a future prototyping test bed. Deliberately 3-native/3-cross-vendor (N-central/Adlumin/Cove native; ConnectWise PSA/Entra/KnowBe4 cross-vendor) — even an N-able-favorable MSP still needs cross-vendor pulls.
- **`briefs/idea-chess-qbr-rerun-2026-08-04.md`** — full re-play of all six 07-31 concepts against today's evidence (Stage 0 excluded per Beth's call — table-stakes, not a competing bet). Two headline findings: Package 5 (cross-vendor) nearly doubled to ~0.64%, back near its original 07-20 floor, for reasons unrelated to its actual hardest question (data-normalization accuracy has now gone untested across three separate passes). Continuous Business Visibility's score stayed flat at ~1.35% — but the two escape routes from the NONGOAL-002 wall that Beth hoped might reopen it (the Option A/B read from §10) turned out to dissolve the concept into Package 3's own substrate rather than rescue it; only Option C (the real conversation with Nicole) keeps it a distinct concept at all.

---

## 13. Live workshop, 2026-08-06 — the C/D-tier delivery model, drafted end-of-day

Session pivoted from "is C/D worth it" to an actual delivery-model draft. Captured here as a draft, not a finished spec — several items below are explicitly still open.

**The strategic question, answered.** Per Stefanie's own logic, not invented: risk reduction doesn't care about client margin tier, and C-tier is *defined* (ConnectWise ABCD) as margin-improvable — the EBR conversation is the growth lever that definition implies. D-tier is murkier under her growth logic but ConnectWise's own competing logic (D-tier = "move up or exit") means an EBR there is a legitimate triage function, not just relationship-building. **Whether the tool makes it *possible*, not just faster:** yes, conditionally — the persona's own C+D revenue base (~$992K/yr, fictional/illustrative) is real money currently sitting at exactly the margin threshold ConnectWise flags as exit-risk, and under Stefanie's manual practice (3-7h/quarter/account, `SECONDARY-SOURCES-REGISTER-qbr-ebr-2026-07-28.md:58`) adding 87 more accounts to that load is not something a human absorbs. Conditional on prep time actually collapsing toward the pilot's 17.5-min number — if it doesn't, this is twelve small burdens instead of one big one, not a solved problem.

**Reframed from Prahalad's Bottom-of-the-Pyramid thesis** (`Fortune at the Bottom of the Pyramid`, Prahalad & Hart) — Beth's own analogy, sachets not mini-Tide-boxes. `[CS: HIGH]` Hindustan Unilever's single-serve shampoo sachets took 50% of rural India's shampoo market by matching the *unit* to the segment's actual spending rhythm, not by shrinking the existing package. Applied here: **the cadence pivots from "one lighter annual document" to several small, distributed touches through the year** — matched to how a C/D owner actually consumes anything (between other things, no scheduled sit-down), not to one moment they're expected to set aside attention for. Named risk, honestly: this only works if each touch is near-free to produce; if automation doesn't collapse marginal cost that far, the pivot fails on its own economics. Named dissent, per CLAUDE.md §5: BoP strategy has a well-documented failure mode (Karnani's critique) — good intentions plus no real segment-specific redesign, just a discount, doesn't actually work. The redesign test: does the sachet serve the client's actual 5 categories (RESEARCH_HANDOFF #4), or is it just an EBR with things removed?

**Channel — confirmed, "the way to go": SMS out, reply becomes a PSA ticket.** `[CS: HIGH]` Real, MSP-specific precedent (Syncro, mspprocess.com — 98% open rate, ~3min avg response vs ~3-day email) runs the *inbound* direction (client-initiated text → ticket); this design needs it running both ways — system texts the sachet out, and a client reply is captured as a ticket rather than dying in a phone, closing RESEARCH_HANDOFF finding #7's follow-through gap. **Not yet built:** `notification_recipients` (data-model.md:129-132) has exactly two types today, `email` and `actor` — no `sms`. This is new schema surface, confirmed direction, zero existing plumbing.

**Triage — three axes, Beth's own cut, refining the data/risk/meaning/consequence draft:** any client, any cycle, gets a live conversation instead of the async/sachet default if any of: **risk to Laissez Faire Fellows itself** (liability/CYA exposure), **risk to the client's business**, or **opportunity for new business** (upsell, referral, margin-improvement — the C-tier case specifically). Named finding: for C/D tier this triage is mostly a growth-detector wearing a risk-review's clothes — axis 3 clears the bar far more often than 1 or 2 for a quiet-year D client. **Still open, not resolved this session:** whether this three-axis cut *replaces* the earlier data/meaning pair or sits above it as "why it matters" over "what you checked" — asked, not answered.

**Worth-metric placeholder, `[A]` — not calibrated.** `Worth = MRR × RiskScore(0-100, normalized)`. MRR is real per-client data, no placeholder needed. RiskScore's *shape* borrows a real precedent — a comparable QBR tool's verified weighted composite (`github-reference-repos-qbr-2026-07-31.md:118-120`: identity 30% / email 25% / endpoint 25% / business modifier 20%) — but not its categories, which belong to that tool's own taxonomy. **Still open:** whether RiskScore's categories should be NIST CSF's (Govern/Identify/Protect/Detect/Respond/Recover) or Adlumin's own actual detection categories — asked twice this session, not yet answered. Grounds Stefanie's own stated heuristic, verbatim and timestamped (`stefanie-hammond-ebr-sources-2026-07-28.md:92-94`): *"It is driven by the MRR... or the risk profile of the client... segment your client base to tier A, tier B, tier C"* — Tier A (high MRR + high risk, regulated industries) gets quarterly, Tier B semi-annual minimum up to 4x/year if "more at risk, more profitable" — she never states a Tier C cadence in this transcript, not invented here either. Her own exit clause, equally direct (5:19): *"if there is a huge amount of risk... please drop them, please transfer them to somebody else"* — independently converges with ConnectWise's D-tier "move up or exit," genuine triangulation, not the folklore-echo pattern flagged elsewhere in this research.

**Risk framework — settled and confirmed this session** (superseding the correction logged in §10 and in `CONDUCT-LEDGER.md` 2026-08-06): two of Stefanie's own tabs, two different jobs, two different frameworks — not one global choice.
- **Compliancy Review** — attestation against an externally-mandated, industry-specific standard (HIPAA because they're a dentist, decided by the client, not the product). Served by Adlumin's existing, already-shipping "One-Touch Compliance Reporting" list (PCI DSS, NIST, HIPAA, ISO 27001, GLBA, FFIEC CAT, NCUA ACET, FINRA, CMMC) — real inheritance, zero new taxonomy.
- **Risk & Security Review** — the MSP's own narrative read of *this* client's exposure, independent of any mandate. NIST CSF 2.0 structures that story, CIS Controls v8 is the evidence layer beneath it — chosen for fitting this specific job, confirmed by Beth directly ("I think they do different jobs" → confirmed), not inherited from Adlumin's marketing and not because two AI systems happened to agree.

**Explicitly not resolved, carried forward, not lost:**
- The four re-opened cognitive-walkthrough questions from the "overdraft" correction earlier this session (does escalation target Derek/Marcus or Priya; do they already check Value Ledger reports or is that a new habit; does it matter who asks; does Stefanie's real batching look like a queue) — sidetracked by the annual-cadence pivot, never actually answered.
- The onboarding/customization scenario (pull Stefanie's template from scratch, vs. an existing deck, notes, client list, or calendar as different starting states) — only the first clarifying question (parse an existing deck's structure, or use it as reference only) was asked; not answered, not built.
- The storyboard Beth asked for (client-side year-of-sachets, Priya's production/review side, or both) — scoping question asked, not answered.
- Slack/Teams as a client-facing channel (vs. SMS, which won) — never definitively ruled out, just superseded by the SMS decision.

**Design notes — onboarding tone, Beth's direction, end-of-day capture, not yet researched or built.** Applies to Stage 0 (Onboard & Customize) specifically — where an MSP picks its starting state (Stefanie's template from scratch / an existing deck / notes / a client list / a calendar).

- **Reference points named:** Capital One and Apple as the delight/minimalism bar — clean, confident, low-friction first-run. Still **Apex** (N-able's own design system) as the anchor — not a departure from it, a friendlier register within it. Note the standing tension already on record (`project_apex_bridge_verification` memory): two unreconciled Apex generations exist and the real brand is purple, not the blue this project guessed early on — resolve which Apex before designing against it.
- **Huntress and Arctic Wolf named as tonal analogues for "friendly MSP/cyber," explicitly not to be copied.** `[CS: LOW — general brand impression, not verified or researched this session]` Both are known for approachable, lower-FUD tone in a category that defaults to fear-based enterprise-security branding — worth a proper look (their actual current onboarding flows, not just brand impression) before this becomes a real design direction rather than a mood reference.
- **Not done:** no actual visual research, no mockup, no comparison of Huntress/Arctic Wolf's real onboarding UX against Apex's constraints. This is a direction to hand to spec/build next session, not a decision made tonight.

**Built on FigJam same session, 2026-08-06** (fileKey `74ru22mcRfrJKFoyvsnNh0`):
- **"Storyboard — Briarwood Outfitters, a Year of Sachets (D-tier)"** (section `185:1560`) — 12 panels, a fictional D-tier client (not Cascade Dental — that instantiation was B-tier; this one tests the actual sachet model against the tier it's designed for). Covers: one-time setup → quiet sachet cycles → an opportunity-triggered escalation to a live call (real upsell) → a risk-triggered escalation on a different path (same-day, skips the sachet) → Priya's own batched queue view → year-end retention. Client-side and backstage panels interleaved, not separated into two lanes — a deliberate choice, not yet checked against Beth's "both sides paired" instinct from the Vault Q1 precedent; worth a second look together.
- **"Detailed Service Blueprint — ACP-Grounded (real spec citations)"** (section `185:1561`, table `187:1586`) — 7 rows (Stages 0-6) × 4 columns (Stage / Customer-Facing Surface / Backstage Mechanism / Real Spec Citation), citing `data-model.md` (RunbookRef, McpRequirement, TriggerConfig, notification_recipients types, Approval Model tiers, audit_logging) and `qbr-ebr.ux.md` (Must 6, Must 8, DIV-003, the chooser-shaped draft architecture, RA-006) directly rather than paraphrasing — matches the Adaptive Path fidelity bar already enforced elsewhere on this board. Two honest gaps carried into the table rather than smoothed over: Stage 0's onboarding mechanism is still `[?]`, and Stage 2's sms notification type doesn't exist in the schema yet.
- **"Storyboard — Meridian Trust CU, Tier A quarterly EBR (+ B-tier delta)"** (section `204:1648`) — added 2026-08-07 at Beth's ask ("will need a tier a/b scenario - not just a d"). 11 panels. Fictional A-tier client, deliberately regulated to match Stefanie's own tier-A definition (*"highest risk, maybe they're in regulatory type of industries"*, 18:24): a credit union, so GLBA + FFIEC CAT + NCUA ACET all apply — which makes the Compliancy-vs-Risk&Security two-framework split from §13 concrete rather than theoretical. Marcus Webb (vCIO) leads, per the persona's own cast assignment; Alina Vance, CFO, is the client-side actor (EBR = C-suite audience). Panel 11 names the B-tier delta explicitly — same machinery, lighter configuration (Priya not Marcus, semi-annual not quarterly, fewer frameworks, shorter room), **no separate build**. The A/B board is the contrast case for the D-tier sachet board: the sachet model explicitly does *not* apply at this tier, which is the point.
- **Node IDs, corrected:** the original sections (`185:1560`, `185:1561`) were rebuilt as `202:1650` (storyboard) and `202:1651` (blueprint, table `187:1586`) during the coordinate-bug fix below; the originals are deleted. Cite the new IDs.
- **Rendering bug, diagnosed and fixed 2026-08-07 — worth recording because it will recur.** All three sections initially rendered as empty boxes for Beth. Cause: **FigJam `SectionNode` children take section-relative coordinates, not absolute page coordinates.** Setting `child.x = -344` inside a section at `x = -384` places the child at absolute `-728`, not `-344`; the y-error was ~23,000px, so every panel landed far below its own section in empty canvas. Server-side `get_screenshot` masked this — it happily rendered the huge bounding box containing the stranded children and looked correct, which is why two wrong theories (stale client cache, then `.placeholder`) got asserted before the real one. Diagnostic that actually worked: compare each child's `absoluteBoundingBox` against the section's own bounds. Logged as a Conduct Ledger Miss 2026-08-07.
- All three screenshotted and verified after the fix — no clipped text, no overlapping nodes.

---

## 14. Beth's board annotations + four decisions, 2026-08-07

Beth typed notes directly into the **Customer-Facing Surface** column of the ACP blueprint table (`187:1586`) — into existing cells, which is why nothing showed up as a new node. Her text is preserved verbatim in column 1; the Backstage and Citation columns were rewritten around it.

**Correction to §13 — Stage 0 is NOT undesigned.** `acp-core-main-3/Intent Specs/FSN-82692_MSP Onboarding — Signup to First Coworker Run.md` specifies a real 20-minute flow (§3 Primary user journey, Steps 1–7): tenant provision → PSA connect with live validation and a data preview → choose Coworker → configure → first run → approval moment → set schedule. **Its Step 3 already shows a "QBR Analyst" Coworker card marked `[Set up later]`**, and Step 4 seeds the Value Ledger by asking how long the task takes a human today. `[CS: VERIFIED — spec read 2026-08-07]` The brief and the FigJam 3x-detail table both previously said this area had zero coverage. It doesn't; the QBR onboarding inherits a spine. What *is* genuinely new: the Stefanie's-template-vs-import-my-own-deck branch, and surface choice.

**Two terms checked rather than guessed — both real and already in the corpus:** **N-zo** (143 mentions in `acp-ux.md` alone, plus the Intent Specs) and **N-able Head Nerds** (80+ mentions across the corpus). So Beth's "what the head nerds would tell people if they were in the room" is inheritance from an existing N-able program, not a new concept to invent. `[CS: VERIFIED]`

**What her notes added, by stage:**
- **Stage 1 (Always Current)** stops being invisible — she wants a portfolio preview of every client and where each sits in the register, on Stefanie's framework. This is the batching answer to "she has 100 of these to prep," and it's new build: nothing in the corpus specifies a cross-client portfolio view.
- **Stage 2 (Nudge)** — A/B get a meeting; C/D get a text/Slack or a strong recurring report.
- **Stage 3 (Draft Lands)** — four additions: **cycle memory** (*"what did the MSP promise last time? did that happen?"* — the gap all five overlays independently converged on), the **ask** (risk and "does the MSP need more money?" in the same breath, not separate sections), a **rehearse option**, and a **teaching layer** (define the terms while staying business-y). Plus industry trends briefed the way a Head Nerd would.
- **Stage 4 (Confirm)** — her own analogy: *"like me doing a sharpie deck."* Three jobs, and the third has no spec coverage anywhere: pull the information, interpret it, **and ask the business owner what the tool could not or would not know.** That inverts the usual direction — the system interrogates the human. Closest anchor is Stefanie's consultative-questions section (48:52), which she says explicitly cannot be pulled from any system.
- **Stage 6 (Close)** — the filed deck is *sometimes signed* to reduce risk. A counter-signed artifact is materially different from a sent one: it converts "we told them" into "they acknowledged," landing directly on the open RA-014/Q3 counsel question.

**Four decisions, Beth's calls, 2026-08-07:**

| Question | Her decision | Why it matters |
|---|---|---|
| C/D cadence — monthly or annual? | **Neither as a fixed rule.** Tier sets the *default*; any client can be overridden individually; a risk-triggered nudge pulls a client forward regardless of tier. Config + interrupt, not schedule. | Sharper than either option offered. It also dissolves the Stefanie-cadence-vs-ConnectWise-ABCD tension carried unresolved since Overlay 4 — the two axes stop competing once tier is a default rather than a rule. |
| How literal is "signed"? | **Configurable requirement, driven by the client's risk/compliance profile.** Her examples: HIPAA-covered practices, cannabis retail, other high-risk verticals can be set to *require* a countersign. | Ties the signature to the same industry field Stage 0 already has to capture. Not universal, not absent. Still gates on counsel before build. |
| Rehearse mode — which shape? | **All of them, as options** — crib sheet, AI-played-client roleplay, both together, peer review. Her words: *"dunno — make an option for all of these."* | Explicitly a test-it question, not a pick-now question. |
| Which surface? | **Design surface-agnostic** (one flow, three renderings: own surface / Claude / N-zo), **prototype in Claude first** for speed. | Separates the design commitment from the prototyping shortcut. |

**Answered for her (asked directly in the Stage 0 cell — "what else do we need to generate step 2 and get some immediate magic?"):** FSN-82692's Step 2 already connects the PSA, so the client list and their MRR are in hand before onboarding asks anything. Only three more inputs are needed: each client's **industry** (drives framework flags *and* the countersign requirement), the **tier thresholds**, and the **template-vs-import** branch. The magic is then Beth's own Stage 1 note, run live on their real book: *"here are your 142 clients, here's where each sits, here are the six overdue and the three carrying risk nobody has raised."* Computed in seconds, never seen in one place before, and true — a stronger first-run moment than FSN-82692's own "10 tickets routed."

**Still open after this pass:** whether the storyboards should be reordered so the A/B scenario reads first (her Nudge note says *"make this an a/b scenario first — show ds"*, which may mean board order or may mean stage-2 framing — not resolved); and the four re-opened cognitive-walkthrough questions from 2026-08-06, still never answered.

---

## 15. Ten Types of Innovation (Doblin/Keeley) gap pass, 2026-08-12

Beth's council references the Ten Types framework as a default voice; she asked directly what this system design is missing against all ten categories. Configuration (Process, Structure, Profit Model, Network) and Experience (Service) got checked against the corpus; Offering (Product Performance, Product System) checked against `acp-core-main-3` code, not spec prose.

**Strong — already designed:** Process (the 7-stage spine, §8/§11), Service (the blueprint itself), Product Performance (the draft-EBR capability).

**Product System — real, checked against code not spec.** `apps/backend/app/mcp/gateway/` is already generic: `auth_type`-driven provider classes, envelope-encrypted credential storage (`app/mcp/encryption.py`), a daily background tool-discovery sync (`gateway/sync.py`). `[CS: VERIFIED — read 2026-08-12]` No vendor adapter is hardcoded anywhere in that directory — Inforcer/HaloPSA/N-central appear only in `specs/_ux/*.ux.md` prose, not in code. First build step is auth (does the gateway hold a live credential and a discovered tool list for a given server), not normalization — normalization is the step after ≥2 sources are live and their shapes need reconciling into one register. Easy/hard is inverted from the obvious read: HaloPSA (external, documented REST API) is the easy connect; N-central/Cove/Adlumin (N-able's own products) are the hard case, and the blocker there is internal alignment, not integration difficulty.

**Channel — corrected, not abandoned.** Apex Bridge is Beth's design tool and demo vehicle, confirmed by her directly — not a candidate real channel. Checked the repo for what the real channel actually is: `acp-core-main-3/apps/` contains exactly one app, `backend`. No frontend exists anywhere in the codebase. `[CS: VERIFIED — read 2026-08-12]` So Channel isn't thin, it's genuinely undecided at the infrastructure level — that absence is the finding, confirmed by the code, not an assumption to walk back.

**Customer Engagement — options, per Beth's ask to think through rather than pick:**
1. Bespoke per client (status quo — Vanessa's own labor, no product underneath it)
2. Templated-with-variables — what's currently designed (draft auto-fills a fixed structure, Vanessa edits it)
3. Client-facing view between EBRs (risk register visible/trackable outside the meeting) — the competitive scan (§ qbr-ebr.ux.md footnote 50) found none of ScalePad/Cognition360, myITprocess, Datto Strategy Overview, or CloudRadial do this
4. Scored/gamified — the Inforcer golden-tenant 1–9 baseline already exists; could be something a client watches move between meetings instead of hearing about quarterly

Current design occupies only option 2. Options 3/4 are undesigned white space, not rejected.

**Profit Model — assumed present per Beth's direct instruction; not re-opened.**

**Network — both partnerships and normalization, but they're different levers, not the same one.** Partnerships = who connects. Normalization = what happens once more than one source is live. Craig Fisher's own line (SRC-U-009) — *"tighten your relationship with Inforcer, without a shadow of a doubt"* — reads as a positioning claim (N-able as the aggregation layer other MSP tools plug into) rather than a connector-build task. The gateway's generic discovery layer (Product System, above) is the technical precondition for that claim to be credible. Corroborating signal already in the corpus: `qbr-ebr.ux.md:790` — of the tools scanned, only vCIOToolbox writes actions back into a PSA as tickets; everyone else stops at report generation. Read/write across PSA+RMM+MDR would be a Network position nothing in the scan currently holds.

**Brand — named, not written down.** Craig's line that a client's cyber attack "has to be on them, not on us" is a real brand-positioning signal from the primary source, but Beth's own read is that stating it plainly is reputationally ugly. Logged here as a known input to Brand, deliberately left out of any customer-facing artifact.

**Structure — still absent.** Nobody has named who at N-able organizes to build or own this across the ten categories above; §14's decision-owners (Beth, Meaghan, Nicole) are decision-makers, not an org structure for delivery. Not solved in this pass — naming the gap, not filling it.
