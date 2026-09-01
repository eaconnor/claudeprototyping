# The Five to Build — post-Idea-Chess prototype set

**Date:** 2026-07-15 · Owner: Beth · Feeds: `/handoff` for the next prototyping round.
**What this is:** five concrete prototype concepts, informed by the full Idea Chess stress-test (`briefs/idea-chess-fleet-synthesis-2026-07-14.md` + the six per-ship assumption models). Not fresh divergent ideation — these are the survivors, made buildable, each carrying its **capability gap list** and an honest **doability assessment** (can N-able actually get this, and how hard).

**Discipline:** every gap tagged `[HIGH/MEDIUM/LOW doability]` + why. No gap gets papered over. The bet (which five, in what order) stays `[0% Claude — fill this in]` — this is the shape, not the commitment.

---

## The five

### 1 · Client-Facing Proof (QBR + Value Ledger) — the lead
**What it is:** a coworker drafts a customer-ready quarterly review across the MSP's stack; the Value Ledger proves what the AI saved. Rides the Runbook Engine + Value Ledger — both already built.
**Why it's here:** #1 demand across all three instruments; the only offering with real substrate underneath it.

**What we don't have yet:**
- **Cross-vendor normalization** — "Not started." `[LOW doability to build in-house on a useful timeline — multi-quarter data+integration effort]` `[HIGH doability via acquisition/partnership — an existing small-player category; the faster path]`
- **Legal clearance to pull competitor data (Q1)** — unexamined. `[HIGH doability — a legal/DPA review + one ToS read, days]`
- **The QBR runbook itself** — no spec, no code. `[HIGH doability — rides on engine+ledger that already exist; weeks not quarters]`
- **Narrative defensibility tiering** (Measured/Benchmarked/Estimated/Unverified on the client-facing draft, not just the ledger) — doesn't exist. `[MEDIUM doability — a real but bounded engineering task]`
- **Operator research (Q2)** — every demand signal is buyer purchase-intent; the person who runs the QBR was never interviewed. `[HIGH doability — one ethnography + prototype session]`
- **A named compliance owner** (EU AI Act, 2026-08-02) — `<TBD>` org-wide. `[HIGH doability — an assignment, not a build]`

**Net read:** the cheap gaps (legal, operator research, compliance owner) are all HIGH doability and should be closed before the expensive one (normalization) is even attempted. Normalization is the one genuinely hard build — buy or partner it rather than build it.

---

### 2 · Live IR/RCA — conditional second
**What it is:** a coworker builds the customer-ready root-cause report as the incident unfolds, cross-stack, correlated in real time.
**Why it's here:** #2 demand, compliance-driven WTP (Vikram, Jonathan) — but every gate below it is harder than A's.

**What we don't have yet:**
- **Gate C — confirmed Adlumin data access** (technical + legal, cross-tenant) — UNCONFIRMED. `[MEDIUM doability — an internal cross-team question, not new technology, but requires an actual decision + DPA scoping that nobody has run]`
- **Live cross-stack correlation at scale, zero-holes** — genesis-stage capability, rated ~30% in our own risk register. `[LOW doability quickly — this is real R&D, not integration work]`
- **Insurer/admissibility clearance** — never scoped. `[HIGH doability to *investigate* (a legal read + 2-3 insurer conversations); the ANSWER may come back negative, which is a different kind of resolution]`
- **2am reliability / degraded-mode design** — no SLA, no plan for when the incident itself degrades the telemetry C reads from. `[MEDIUM doability — solvable engineering, not yet started]`
- **Reconciling the build vs. the offering** — the build's ratified default (DEC-006) is a smaller, post-hoc product than what C pitches. `[HIGH doability — a product decision, not a technical one]`

**Net read:** C's cheap gaps (Gate C decision, admissibility read, product reconciliation) are all resolvable via internal decisions and conversations. Its hard gap — live zero-holes correlation — is genuine R&D. **Do not build C's UI/UX before Gate C and the correlation R&D have real answers**, or the prototype outruns the capability.

---

### 3 · Governed Agent Control Plane — reframed as the platform seat, not a standalone ship
**What it is:** the substrate that lets MSPs build, run, and govern AI coworkers safely. Best-built, worst-monetized in Idea Chess. Its real role: the priced infrastructure A and C sit on top of — not its own sales motion.
**Why it's here:** because it's real (Runbook Engine, autonomy tiers, guardrails all exist) and because A and C both depend on it — prototyping it *as the seat* clarifies pricing and packaging even if it never sells alone.

**What we don't have yet:**
- **G4 Action Proxy — governing agents the MSP built elsewhere** — this is B's entire moat and its deepest hole; unspecced. `[LOW doability near-term — a genuinely hard, partly-unsolved trust/security problem (must be trusted in the critical path while admitting it can't pre-screen)]`
- **Standalone-WTP evidence** — one expert says nobody pays for governance alone; untested beyond that. `[HIGH doability to test — 5 pricing conversations]`
- **The versioned/guardrail registry** — coworker/expert tables are flat; the real registry is designed, not migrated. `[MEDIUM doability — understood migration pattern, real engineering lift]`
- **A defined autonomy-promotion criterion** — safety-critical, currently undefined. `[MEDIUM doability — mostly a risk-tolerance policy decision, some engineering]`
- **A resolved Expert-can-act contradiction** (two canonical specs disagree on whether Experts can execute actions). `[HIGH doability — a spec amendment, a decision not a build]`

**Net read:** most of B's gaps are fixable with decisions and known-pattern engineering. The one true unsolved problem — G4, governing agents you didn't build — is the actual research question. **Prototype B as "the seat under A/C" (pricing/packaging, not a standalone sales pitch), and treat G4 as a separate, longer-horizon research spike, not part of this round.**

---

### 4 · Ticket Triage — reframed as a fixed on-ramp, not a wedge
**What it is:** day-1 coworker that classifies and routes tickets. Already built — but the built thing is the commodity half, and the "converts to A" story that justified building it first is completely uninstrumented.
**Why it's here:** it's the one offering that's actually shipped; fixing its two real gaps is cheap relative to the other four, and it's currently earning less than it should for what's already spent.

**What we don't have yet:**
- **A measured diagnostic delta vs. incumbents (Rost/Thread/PIA)** — the entire differentiation claim is untested and not even in the day-1 build. `[MEDIUM doability — a bench-test on real anonymized tickets is straightforward; the underlying diagnostic capability itself needs the SOC-corpus transfer work, which is a real but bounded build]`
- **Conversion-funnel instrumentation (triage → A trial → A purchase)** — zero events tracked today. `[HIGH doability — analytics engineering, days not weeks]`
- **Write-access for live diagnostics** — day-1 scope is ticket read/write only; real diagnostics need RMM/endpoint access MSPs won't grant a new tool. `[MEDIUM doability — a trust-sequencing problem, not a technical one; solved by staging permission requests after initial trust, not by more code]`
- **A message-order test** (does leading with Triage before QBR anchor the whole platform as commodity) — untested. `[HIGH doability — a simple message-order study]`

**Net read:** the cheapest fix in the whole set. Instrument the funnel first (it's nearly free and answers the load-bearing "why is this day-1" question), then decide whether to fund the diagnostic-delta build based on what the bench-test shows.

---

### 5 · vCISO / vCIO Packaging — the positioning layer, not a coworker
**What it is:** not a new coworker — the framing that A (QBR) and C (IR/RCA) are the proof layer for two resellable services (vCIO = QBR+Env Health+planning; vCISO = IR RCA+Tabletop+Alert Flood+identity). This is the only path to share-of-services pricing (~$4.3B ceiling) instead of the per-tech-tool floor (~$1B).
**Why it's here:** it's free-standing evidence work, cheap to test, and it changes the whole portfolio's pricing ceiling if it lands.

**What we don't have yet:**
- **A positioning/message test** — will MSPs buy-and-resell a packaged service, or only individual coworkers? Untested. `[HIGH doability — a message test with 5-8 MSPs, days]`
- **A share-of-services billing mechanism** — N-able currently has no infrastructure to meter or bill a % of what the MSP charges *their* client. This is genuinely new plumbing, not a repackaging of the per-run metering that exists for the tool-pricing model. `[LOW-MEDIUM doability — real new billing infrastructure, a multi-quarter build if it's pursued]`
- **Bundle-composition decisions** — which coworkers belong in which package is a product call, not yet made. `[HIGH doability — a decision, not a build]`

**Net read:** the positioning test is nearly free and should run regardless. The billing mechanism is a real, non-trivial build — **don't commit to share-of-services pricing in a prototype's UI before the positioning test lands and someone scopes the billing build.** Prototype the *packaging and pricing story*, not a working billing system.

---

## Cross-cutting gaps (shared across multiple of the five)

These aren't per-offering — closing one unlocks several:

1. **Legal/DPA review capability for cross-vendor and cross-tenant data use** — needed by #1 (Q1), #2 (Gate C, insurer admissibility), and touches #3's metering-cross-tenant question too. `[HIGH doability — this is a legal-team capacity/priority question, not a technical unknown; one review (or a small standing legal capacity) unlocks three of the five]`
2. **Operator research capability** — every offering's Q2-equivalent (does the operator, not the buyer, want this) is unanswered because N-able has run buyer-side interviews (Guidepoint) but zero operator ethnography. `[HIGH doability — this is a research-ops gap, not a capability gap; requires recruiting operators, not new tooling]`
3. **A named AI/compliance owner for ACP** — `<TBD>` everywhere; EU AI Act live 2026-08-02. `[HIGH doability — an org assignment, overdue rather than hard]`
4. **Corp-dev capacity/appetite to evaluate a normalization acquisition** — the single highest-leverage move for #1 (and it helps #2, #5). `[UNKNOWN doability — genuinely a leadership/strategy call, not something this analysis can price; the N-able strategy doc is a v0 placeholder so "does this fit FY27 priorities" cannot currently be answered]`
5. **A decided pricing model (per-tech tool vs. share-of-services) before any of the five ship** — the floor/ceiling gap in TAM is entirely this one choice. `[HIGH doability to decide — it's a decision, not a build — but it's currently unmade and blocks #5 especially]`

**The honest summary:** most of what the five need is *decisions and cheap studies* (legal reads, operator research, message tests, an owner assignment) — genuinely HIGH doability, days not quarters. The truly hard, LOW-doability builds are exactly two: **cross-vendor normalization** (buy/partner beats build) and **live zero-holes correlation for C** (real R&D, no shortcut). Everything else is a matter of sequencing and priority, not capability.

---

## Suggested build order (Beth's call — flagged, not decided)
1. Close the cheap cross-cutting gaps first (legal review, operator research, compliance owner, pricing-model decision) — days, unlocks everything downstream.
2. Fix #4 (Triage) instrumentation — cheapest, answers whether day-1 sequencing is even right.
3. Prototype #1 (A) — the lead, on the engine that exists.
4. Prototype #5 (vCISO/vCIO) alongside #1 — the positioning test is nearly free and changes A's ceiling.
5. #2 (C) and #3 (B) follow once their respective hard gaps (Gate C / G4) have real answers — don't build ahead of the capability.
