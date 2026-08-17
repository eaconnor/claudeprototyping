# MURDER BOARD — Offering D · Ticket Triage Wedge (the day-1 build)

**Idea Chess. Job: find where it falls.** Adversarial. Nothing here defends D. Evidence cited and tagged; estimates say so. Grounded against `briefs/acp-offerings-2026-07-14.md`, `acp-findings-2026-07-14.json`, `brain-dump-triage-2026-07-14.md`, `scout_input/acp-tam-grounding.md`, `scout_input/acp-tam-control-plane.md`, `briefs/idea-chess-offering-a.md`, and a direct read of the build: `acp-core-main-3/Intent Specs/FSN-82692_MSP Onboarding` and `FSN-83143_AI_Coworkers_in_ACP.md`.

**The one-line indictment:** D's whole reason to exist is a wedge — "live diagnostics beat the incumbents" and "it converts MSPs into buyers of A." **Neither is in the build, and neither has a test.** What the day-1 spec actually ships is *classify-and-dispatch* — the exact capability the offering doc itself calls table-stakes-in-PSA `[CS: VERIFIED, offerings §D]`. The differentiator (diagnostics) lives in a *different* coworker (Incident Response Analyst, "Service/Diagnostics") `[CS: VERIFIED, FSN-83143:370]`. And "converts to A" — the strategic justification for leading go-live with the #6-ranked thing — has zero conversion evidence. D is being shipped as a moat and a funnel while the code is a commodity router with no funnel instrumentation.

---

## 0. THE CORE DIVERGENCE (must read first — everything below rides on it)

The value prop says: *"the tech opens the ticket and the context, severity, and safe diagnostics are already done."* The pinned bet is: *"the wedge is live diagnostics, NOT classification."*

The build (FSN-82692, THE one runbook with a real spec) says the first-run coworker is **Ticket Triage & Dispatch**: it *"Reviews your open tickets, classifies them by priority and type, and routes them to the right queue"* `[CS: VERIFIED, FSN-82692:185]`. The medium-risk batch approval — the whole "moment" — is a **queue-routing dispatch** action, not a diagnostic `[CS: VERIFIED, FSN-82692:141,205-215]`. The word "diagnostic" does not appear in the onboarding spec. Diagnosis/remediation is a *separate* coworker: Incident Response Analyst, category "Service / Diagnostics" `[CS: VERIFIED, FSN-83143:370]`.

**So:** the thing that's built is the table-stakes thing. The thing that's the wedge is not built and not spec'd for day-1. This is not a nuance — it is the load-bearing crack. Read the rest with it in mind.

---

## 1. COUNCIL KILL-PASS

Eleven traditions. Each: its **kill criterion** (evidence that proves D wrong) and its **single best shot** at sinking D.

### 1. Kano (table-stakes / must-be)
- **Kill criterion:** If ticket classification/routing lands as a *must-be* (expected; dissatisfier if absent; no delight if present), it commands no premium and no loyalty — it's hygiene.
- **Best shot:** The survey already tells us: **#6 of 8 forced-rank (5.18)** — a table-stakes signal `[CS: HIGH, D]`, and the offering doc labels the built capability *"table-stakes-in-PSA"* `[CS: VERIFIED, offerings §D]`. The high intensity (8.3) is enthusiasm for the *category*, not willingness to switch for the *feature*. Kano's verdict: high-frequency hygiene is the worst pricing position there is — felt daily, valued at zero.

### 2. Christensen — Commoditization / low-end disruption
- **Kill criterion:** If PSA/RMM incumbents fold triage into the platform, D is commoditized before it monetizes.
- **Best shot:** *"It'll be built into my RMM/PSA"* recurred **≥4/5 transcripts** `[CS: HIGH, findings/vision]`. Triage is a *sustaining* feature for ConnectWise/Autotask/Halo — they own the queue, the ticket object, and the write path. The rational incumbent move is to bundle classification free. D monetizes a feature the platform owners are incentivized to give away, on their own data surface.

### 3. Jobs-to-Be-Done (Christensen/Ulwick)
- **Kill criterion:** The job isn't "route the ticket to a queue" — it's "make the ticket resolvable without me thinking." If routing is done but the junior tech still opens a context-free ticket, the job is unfired.
- **Best shot:** The build fires the *wrong* job. It classifies and dispatches (a dispatcher's job); the value prop promises *"start from a diagnosis, not FW: can you sort"* (a resolver's job) `[CS: VERIFIED, offerings §D HMW]`. Routing to the right queue does not put context, severity, and diagnostics in front of the tech — it moves the unopened ticket to a different inbox. **JTBD says D as built solves triage-the-verb (sorting), not triage-the-pain (context-free work).**

### 4. Moore — Crossing the Chasm / buy-vs-build
- **Kill criterion:** If the enthusiastic early segment self-builds classification, there's no referenceable buyer base.
- **Best shot:** The sibling board established Derek: *"I could build that myself in Cloud in a day"* `[CS: HIGH]`. Classification is *more* trivially DIY-able than QBR — every PSA has a rules engine and every LLM can label a ticket. The most enthusiastic segment (the 8.3 crowd) is exactly the segment that scripts this in an afternoon. No chasm bridge.

### 5. Porter — Five Forces
- **Kill criterion:** High buyer power + high substitute threat = no margin.
- **Best shot:** Buyer power HIGH (flat WTP ceiling, Derek *"max ~$300/mo"* `[CS: MEDIUM, single-source]`); substitute threat HIGH (RMM bundle + DIY rules + Rost/Thread/PIA already doing classification); **supplier power is inverted** — the PSA (ConnectWise) owns the data and the write API D depends on, and can throttle, reprice, or replicate at will. Four of five forces red.

### 6. Differentiation-vs-incumbents (the core bet)
- **Kill criterion:** If our diagnostic delta does *not* measurably beat Rost/Thread/PIA on real tickets, there is no wedge — only a commodity classifier.
- **Best shot:** *"Our diagnostic delta beats Rost/Thread/PIA/incumbents"* is tagged **`[A — untested, the core bet]`** by Beth herself. And the delta is claimed for a capability (diagnostics) **that isn't in the day-1 build** `[CS: VERIFIED, FSN-82692]`. So the differentiator is (a) unproven and (b) unshipped. The one thing that separates D from a table-stakes router is a bet with no test and no code.

### 7. Lean — Riskiest-Assumption Test
- **Kill criterion:** The RAT is not "do MSPs want triage" (answered, table-stakes). It's "does auto-diagnosis beat incumbents AND does the wedge convert to A." If unowned, the build is a leap.
- **Best shot:** Two P0 assumptions — *diagnostic delta beats incumbents* and *Triage converts MSPs into A buyers* — are both **`[A]`, unowned, no study** `[CS: HIGH]`. Textbook Lean failure: the one offering that's *built* skipped the two tests that decide whether it should have been.

### 8. Service Blueprint / Doblin backstage
- **Kill criterion:** If the frontstage promise ("severity + diagnostics done") has no backstage capability, the service fails at the line of visibility.
- **Best shot:** Frontstage the value prop shows a diagnosed ticket. Backstage the spec computes *priority + type + destination queue* `[CS: VERIFIED, FSN-82692:185]`. The diagnostic backstage line is a fiction at day-1 — same structural hole A has with normalization, but here it sits under the *one thing that's supposedly built and safe*.

### 9. Wardley Mapping (evolution)
- **Kill criterion:** If ticket classification is already commodity/utility, investing genesis effort there is building on the wrong evolutionary stage.
- **Best shot:** LLM text-classification is *commodity* (product→utility). D's shipped capability sits at the commodity end; the only genesis-stage, defensible component (SOC-corpus-backed live diagnostics) is the unbuilt part. D invested its one real build in the commodity layer.

### 10. Value-Based Pricing / economic buyer
- **Kill criterion:** If the buyer prices D against per-tech labor saved on sorting, the ceiling is low, flat, and per-seat — not per-outcome.
- **Best shot:** The only WTP anchor is Derek's *"max ~$300/mo flat"* `[CS: MEDIUM, single-source]` — and D has **no independent TAM; it carries A's per-tech TAM** `[CS: VERIFIED, prompt/offerings]`. A per-tech seat that also has to justify A's per-tech seat means D is double-taxing the same wallet for a hygiene feature. The buyer prices a $300 tool; the model needs a platform.

### 11. Regulatory / Liability (auto-execution blast radius)
- **Kill criterion:** If a "safe" auto-executed action (low-risk auto-execute) mis-routes or mis-dispatches at machine speed across a queue, liability and blast-radius land on the MSP — and the "safe diagnostics ran automatically" framing becomes the exposure.
- **Best shot:** The spec auto-executes low-risk and only batches medium-risk `[CS: VERIFIED, FSN-82692:203-207]`. "Safe diagnostics that ran automatically" is the value prop's headline — but an automatic action that writes to a client's live PSA at daily frequency has a blast radius the offering never models (see H1). The EU AI Act surface A faces applies here too; no compliance owner named for D.

---

## 2. WHAT WE HAVEN'T THOUGHT ABOUT — the holes not on the list

*The most valuable section. None of these are in the pinned assumptions. Each gets a probability in the JSON (§3).*

### H1 — Auto-executed "safe" diagnostics have a blast radius nobody modeled
The value prop leads with *"safe diagnostics are already done"* — automatically. But an action running automatically, daily, against a live client PSA is not risk-free just because it's labeled low-risk. A mis-classified severity that auto-closes a P1, a diagnostic script that touches an endpoint and hangs it, a routing loop that floods a queue — these execute at machine speed with no human in the loop *by design* (low-risk auto-executes) `[CS: VERIFIED, FSN-82692:203]`. **The daily-compounding frequency that's sold as the retention advantage is also the blast-radius multiplier.** One bad auto-action per 10,000 tickets sounds fine until it's 10,000 tickets/day across the base. Unmodeled. `[A]` — high-consequence.

### H2 — The false-diagnosis-erodes-trust-fast problem (asymmetric and daily)
A wrong diagnosis is worse than no diagnosis, because the junior tech *starts from it* — that's the whole value prop. If the diagnosis is wrong, the tech now troubleshoots down the wrong path and blames the tool the first time. Unlike A's quarterly QBR (one high-stakes wrong number, rare), D fails *daily and cheaply* — which means the erosion is **frequency-weighted**: many small trust hits compound faster than one big one. The habit that's supposed to build retention runs in reverse if accuracy isn't near-perfect on day 1. **Daily frequency is a trust amplifier in both directions, and the downside is unmodeled.** `[A]`

### H3 — Leading go-live with the #6 thing may burn the #1 demand (sequencing self-harm)
The offering doc names it: *"we're leading go-live with the #6-ranked runbook … QBR — ranked #1 everywhere — has no spec at all"* `[CS: VERIFIED, offerings]`. The murder-board question the doc doesn't ask: **does launching triage first actively cost you the QBR window?** If the first impression MSPs form of ACP is "a ticket router I could've built myself," that frames the whole platform as commodity — and poisons the premium QBR story that was the actual demand. Order isn't neutral. Leading with hygiene can anchor the buyer's price expectation at hygiene levels for everything that follows. `[A]` — strategic sequencing risk.

### H4 — "Converts to A" has no mechanism and no instrumentation
This is the deepest hole. D's *entire* strategic justification is "on-ramp into A" — yet **there is no conversion evidence, no conversion mechanism in the spec, and no funnel instrumentation.** The onboarding spec measures time-to-first-run, completion rate, first-run success `[CS: VERIFIED, FSN-82692:106-109]` — **not one metric tracks whether a triage user ever looks at, trials, or buys A.** The three other coworkers are merely *"bookmarked for post-onboarding"* `[CS: VERIFIED, FSN-82692:188]`. A bookmark is not a funnel. If D doesn't convert, it's a standalone commodity tool with no independent TAM — the worst of both worlds. `[?]` — the load-bearing strategic assumption, entirely unexamined.

### H5 — ConnectWise-only = single-PSA lock-in at launch (and inverted supplier power)
The spec says PSA-agnostic *at the UX layer*, but the only implemented credential flow and the only live-queue integration is **ConnectWise Manage** `[CS: VERIFIED, FSN-82692:175,251]`. Day-1 D works for exactly one PSA. That's (a) a market-coverage cap (Autotask/Halo MSPs can't onboard), and (b) a dangerous dependency — D's core loop (read tickets, write dispatch) lives entirely inside a third party's API that can rate-limit, reprice, deprecate scopes, or ship the same feature natively. **D's wedge depends on write-access to a competitor's data plane.** `[CS: VERIFIED]` for the single-PSA fact; `[A]` for the dependency risk.

### H6 — "Live diagnostics" likely needs write-access MSPs won't grant day-1
Diagnostics that are "already done" implies the coworker *reached into endpoints/tools and ran things* before a human looked. The onboarding scope grants ticket read/write + queue/member read `[CS: VERIFIED, FSN-82692:316]` — enough to *route*, nowhere near enough to *diagnose live*. Real diagnostics need RMM/endpoint write-access, which MSPs are exactly the population most reluctant to grant to a day-1 tool (see the "deep integration only" buying criterion). **The wedge may require the one permission the buyer withholds until trust is earned — a chicken-and-egg the day-1 framing hides.** `[A]`

### H7 — Junior-tech deskilling (the compounding cost that shows up in year 2)
If juniors *start from a diagnosis* every day, they never learn to diagnose. The value prop's benefit (juniors start from a diagnosis) is, over 18 months, a capability hole in the MSP's bench. MSPs that notice this churn *because the tool worked too well* — or demand the tool never be wrong, which raises the accuracy bar past what's achievable. Unmodeled second-order effect. `[A]` — low probability of killing D, but named because it's a retention story that inverts.

### H8 — Intensity(8.3, n=8) and rank(#6, n=39) may be the same 8 people talking twice
The enthusiasm signal (8.3) and the qual cumulative (#3, score 25) both draw on the **same 8-person qual base**; only the n=39 survey adds independent respondents — and there it's #6 `[CS: HIGH, offerings §ranking]`. The strong signal for D is *one small room*, loud. The independent instrument demotes it. Beth's own rule: small-n qual is directional, not projectable — triangulate. The "highest intensity" headline is the least independent number in the set.

---

## 3. ASSUMPTION MODEL

See `briefs/idea-chess-offering-d.assumptions.json`. Probabilities are honest, not defensive. `required: true` means D's wedge-or-funnel thesis fails if the assumption is false (not merely that the commodity router still runs).

**Reading the required set:** D can *technically ship* on very few true assumptions — the router works, ConnectWise connects. But D's *reason to be day-1* (wedge + on-ramp) requires the differentiation bet (D2), the conversion bet (D9/H4), and safe auto-execution (H1) all to hold. Those are the required ones. The gap between "D runs" and "D earns its slot" is the whole board.

---

## 4. MONTE CARLO READ

**Naive survival = product of required-assumption probabilities.** Required set and honest probabilities:

| id | assumption | p |
|----|-----------|---|
| D2 | Diagnostic delta beats Rost/Thread/PIA (the core bet) | 0.30 |
| D9 | Triage converts MSPs into A/platform buyers (on-ramp) | 0.30 |
| D-H1 | Safe auto-execution doesn't produce a blast-radius incident | 0.70 |
| D-H6 | "Live diagnostics" achievable within day-1 permissions | 0.35 |
| D5 | Auto-vs-sign-off line matches MSP separation-of-duties | 0.55 |

**Naive product ≈ 0.30 × 0.30 × 0.70 × 0.35 × 0.55 ≈ 0.012 (~1.2%).**

That number is deliberately brutal and **not** to be quoted as "D has a 1% chance." Two caveats collapse it:

1. **Independence is false.** D2 (diagnostics beat incumbents) and D-H6 (diagnostics achievable in day-1 permissions) are the *same underlying capability* viewed from two angles — they don't multiply independently. Collapse them and survival roughly triples.
2. **D's survival is not standalone.** Per the prompt, D's real question is *"does it earn its day-1 slot / convert to A,"* not *"does a triage tool survive in market."* A commodity router that converts even modestly still earns its slot even if the diagnostic wedge fails. So the honest read splits into two products:
   - **D-as-wedge (diagnostics differentiate):** rides on D2 × D-H6 (correlated) ≈ **~25-30%**.
   - **D-as-funnel (converts to A regardless of wedge):** rides on D9 ≈ **~30%**, and this is the one that actually justifies day-1.

**Sensitivity ranking — test first (highest information value per dollar):**
1. **D9 / conversion (H4)** — the load-bearing strategic assumption, currently 0% instrumented. Cheapest to start testing (add funnel events to the existing build) and most decisive: if D doesn't convert, the day-1 rationale is void regardless of everything else. **Test first.**
2. **D2 / diagnostic delta (the core bet)** — untested, and it's the only thing separating D from commodity. Bench-test our diagnosis vs Rost/Thread/PIA on real anonymized tickets before authoring the diagnostic runbook.
3. **D-H6 / permissions reality** — cheap to resolve: ask 5 MSPs what write-access they'd grant a day-1 tool. Resolves whether the wedge is even installable.
4. **D5 / separation-of-duties line** — resolvable in the same operator interviews.
5. **D-H1 / blast radius** — resolves in a staged rollout with a kill-switch, not a survey.

**Note the asymmetry:** the two cheapest tests (D9 instrumentation, D-H6 interview) attack the two highest-leverage assumptions. There is no excuse for D being the built offering with the least-tested thesis.

---

## 5. OREGON TRAIL / PHASES — where D falls and why

**Build → Launch → Adopt → Defend.** D is the ONE offering that's built, so *build* is largely cleared. Weight adopt and defend.

- **BUILD — mostly cleared, one crack.** The router is spec'd and (per the build state) real: 10-ticket cap server-enforced, ConnectWise queue, live medium-risk batch approval. **But the built thing is the table-stakes thing; the wedge (diagnostics) is unbuilt.** So "build cleared" is true for the commodity and false for the differentiator. `[CS: VERIFIED]`

- **LAUNCH — survivable but self-anchoring.** D launches ConnectWise-only (H5) into a market that also runs Autotask/Halo — partial coverage. The real launch risk is H3: leading with the #6 hygiene feature anchors the buyer's perception (and price) of the whole platform at commodity level, before the #1 QBR story ships. D probably clears launch mechanically and *wounds the portfolio narrative* doing it.

- **ADOPT — first likely fall, and the sharpest.** Two failure modes converge here:
  - **The wedge doesn't materialize (D2/H6):** MSPs adopt a router, notice it's a router, and rate it against the free thing in their PSA. Enthusiasm (8.3) meets reality (#6). Adoption ≠ retention.
  - **False-diagnosis trust erosion (H2):** *if* diagnostics do ship, daily wrong-answers erode trust faster than quarterly ones. The habit that was supposed to compound value compounds distrust instead.
  This is where D most likely falls: **it gets adopted as a commodity and never becomes the wedge, so it never earns the retention story.**

- **DEFEND — the second, structural fall.** Even a well-adopted D faces (a) incumbent commoditization (≥4/5 "it'll be in my PSA"), and (b) inverted supplier power — the moat depends on ConnectWise's API. **And the defense that matters most — "it converts to A" — has no instrumentation (H4), so N-able can't even *prove* D is defending its slot.** You can't defend a wedge you never measured as a funnel.

**Verdict on where D falls:** not at build (it's built), not fatally at launch (it ships). **D falls at adopt-into-defend, as a commodity router that (1) never became the diagnostic wedge because that was never built or tested, and (2) can't demonstrate it converts to A because conversion was never instrumented.** The offering most likely to *look* alive (it runs, daily) while quietly failing the only two jobs that justified building it first.

---

## APPENDIX — evidence hygiene

- **VERIFIED against build spec:** the day-1 coworker is classify-and-dispatch, not diagnostics (`FSN-82692:185`); diagnostics are a separate "Service/Diagnostics" coworker (`FSN-83143:370`); low-risk auto-executes / medium-risk batches (`FSN-82692:203-207`); ConnectWise-only credential flow (`FSN-82692:175,251`); onboarding metrics track time/completion/success, **no conversion metric** (`FSN-82692:106-109`).
- **Do-not-cite / single-source:** Derek's *"max ~$300/mo"* is `[MEDIUM, single-source]`; the 8.3 intensity is n=8 and shares the qual base with the #3 qual rank (H8).
- **The two numbers to never conflate for D:** intensity 8.3 (n=8, loud small room) vs forced-rank #6/5.18 (n=39, independent). The gap between them *is* the table-stakes finding.
- **47% rule:** the Monte Carlo product (~1.2%) is illustrative of dependency fragility, explicitly caveated as non-independent and non-standalone — do not quote as D's probability of success.
