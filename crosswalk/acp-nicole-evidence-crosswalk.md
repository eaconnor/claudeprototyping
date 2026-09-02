# ACP — Nicole-Claim ↔ Evidence Crosswalk

**What this is:** the mapping that had never been done — every load-bearing claim in Nicole Reineke's authoritative ACP docs, tested against what Beth's (and Will's) field research actually found. It is the *input* to the riskiest-assumptions log, not the log itself. Beth abducts the riskiest from here; the deductive mapping below is Claude's (§18).

**Built:** 2026-09-02. **Method:** 7 readers extracted ~260 atomic claims from the assertion side and ~50 field findings from the evidence side; clustered into 9 bet-level themes. Every theme traces to claim IDs (H/A/I/S/U) and evidence IDs (EV-AB/AX/WM). Raw claim tables live in `crosswalk/raw/`.

**Assertion side (Nicole / core-canon, all `owners.product: Nicole Reineke`):**
- `Headless IT Tech in the AI Agent world` (master positioning) → **H01–H95**
- `AI-AI Coworker Description` + `AI-Runbooks definition` → **A01–A57**
- `Top_10_ACP_Use_Cases` + `N-UEM-Coworker-Use-Cases` (her cited evidence) → **U01–U13, U-EV01–06**
- Intent Specs FSN-83143 / FSN-81539 / FSN-82692 → **S01–S58**
- Intent Specs FSN-81484 / FSN-82688 / Management-Plane model → **I01–I31**

**Evidence side (Beth + Will field research):**
- Abductive corpus (402 rows) → **EV-AB01–18** · Axial coding → **EV-AX01–26** · Will Mincher → **EV-WM01–07**

**Known gap, stated honestly (§4):** the live North Star Confluence page (id 62176526400) is not cached locally and Atlassian MCP was unauthenticated this session. The assertion spine is built from the local Tier-1 PDFs + Intent Specs. Claims resting only on Beth's paraphrase of the North Star are flagged, not presented as verified canon.

**Status legend:** VALIDATED (evidence supports) · CONTRADICTED (evidence runs against) · SILENT (asserted, never tested) · PARTIAL (validated in part, untested in part).

---

## The 9 bet-level themes

### T1 · Real demand — do MSPs actually want this? · Gate 1
**Nicole asserts:** QBR is the #1 use case (U01, S40, H65); the top-10/12 use-case ranking reflects real demand (U02–U13); "MSPs spend enormous time on repeatable tasks" (A56).
**Evidence says:** QBR demand is real but **buyer-only** — the daily operator was never interviewed (~93% buyer signal) (EV-AB13, EV-AX26). Only **2 of Nicole's 12 ranked items** have any matching partner quote (U-EV04). Cormier ran a $4.5M MSP and **never did a single QBR** (EV-AX01). Stefanie is the corpus's **sole operator voice** wanting it (EV-AX02).
**Status:** PARTIAL — QBR validated at #1 (buyer-side); the rest of the ranking is SILENT/unsupported; operator demand nearly unstudied.
**Riskiest bet:** *The use-case ranking predicts adoption — below #1 it is asserted, not evidenced, and even #1 is buyer-not-operator demand.*

### T2 · Willingness to pay for the core offering · Gate 2
**Nicole asserts:** seven-layer stacked monetization (H76); consumption/outcome pricing is the AI-era norm (H75, H83); Shopify-style take-rate (H77); Expert licensing revenue (H76-L3); the platform fee is justified by the Value Ledger (H46).
**Evidence says:** WTP anchors **low, flat, per-tech** — Kenneth "$25–50/tech," ScalePad's $300/user "nuts" (EV-AX05, EV-AB07); "build it into my RMM" objection in **≥4 of 5** interviews (EV-AB08); governance/platform "not something you'll get someone to pay for" standalone (EV-AB11, EV-AX08/09); Derek self-builds QBR "in a day" (EV-AX07).
**Status:** CONTRADICTED — the entire premium consumption/outcome monetization stack runs against the WTP evidence.
**Riskiest bet:** *MSPs will pay premium, consumption/outcome-based pricing for the core offering — the pricing model the ~$4B ceiling depends on.*

### T3 · Data access across heterogeneous stacks · Pre-gate
**Nicole asserts:** the Value Ledger computes real time-saved/value metrics (H44, H62, A31, S33/S34); cross-product provisioning runs invisibly (H39/H40); execution emits the fields a ledger entry needs (S33).
**Evidence says:** cross-tool egress hits a **legal/DPA wall** (~40% block risk) (EV-AB09, EV-AX10); normalization sits at **~30% vs a 75% target** (EV-AX11); "data accuracy is the #1 adoption blocker" — 350 servers returned 9 (EV-AX12); only vCIOToolbox has real PSA writeback and its AI is roadmap-only (EV-AX21); the Value Ledger **renders $0 — no producer wired** (EV-AB14); the specs' own dependencies for the completion event are "Unknown" (S33/S34); Will: the real unit is per-**instance** auth health, and the MCP-unavailable flow is **undesigned** (EV-WM01/05).
**Status:** CONTRADICTED / SILENT — the data-access precondition the whole value story rests on is unproven and currently failing.
**Riskiest bet:** *ACP can retrieve and normalize the data an EBR/QBR needs across real, mixed MSP stacks — distinct from "is the data clean," this is "can we even get it."*

### T4 · Headless operation · Gate 1
**Nicole asserts:** MSPs never touch UEM/Cove/Adlumin — they become invisible infrastructure (H33/H37/H40); the MSP buys a "business-in-a-box" (H34).
**Evidence says:** across **22 partner interviews, MSPs want a standalone, bookmarkable app** — the direct opposite of headless (EV-AX16); Stefanie wants **manual-first, software-later**, resisting software dictating process (EV-AX17).
**Status:** CONTRADICTED — clashes head-on with the strongest-n discoverability finding.
**Riskiest bet:** *MSPs want headless operation — the aspiration the field evidence most directly contradicts.*

### T5 · The "operating system / one department" framing · Gate 2
**Nicole asserts:** ACP is an MSP **operating system** (H04/H34); six coworkers act as one department feeding a QBR capstone.
**Evidence says:** "department" is **[A] — no interviewee used the term** (EV-AB04); the board's own scoring gave the **OS-version ~5% survival vs ~45–50% for QBR-only** (EV-AB15); Stefanie organically proposed **three separate surfaces, not one** (EV-AX18); ScalePad already runs the OS framing as a competitor (EV-AB16); Dunlop: the moat is the **runbooks, not the platform** (EV-AB05).
**Status:** CONTRADICTED / CHALLENGED — internal scoring and field both favor the narrower framing.
**Riskiest bet:** *ACP should be built and sold as an operating system / one department — the ambition the evidence least supports.*

### T6 · Earned autonomy is a self-evident UX concept · Gate 3
**Nicole asserts:** the L0–L4 earned-autonomy model is a **coherent, self-evident concept a mature MSP grasps without explanation** (A33/A34); admin-initiated promotion builds confidence (S11); named attribution ("Coworker Jacqueline") builds trust (S13).
**Evidence says:** gated autonomy is **near-universal demand** (5/5 transcripts, 13/17, 17/17) (EV-AX13, EV-AB11) — but that validates *wanting a gate*, not *understanding the model*; 13/17 **fear agents going rogue** (EV-AX14); the "self-evident without explanation" claim has **never been tested** (A33 is an explicit hypothesis; trust-level comprehension is un-instrumented).
**Status:** PARTIAL — gating demand VALIDATED; "self-evident / comprehensible" is SILENT.
**Riskiest bet:** *MSPs grasp the earned-autonomy / trust-level model without explanation — asserted as settled UX, never tested.*

### T7 · The technology already works · Pre-gate / Gate 3
**Nicole asserts:** "the technology works. It does." (H07); the runtime layer catches out-of-policy behavior (H25/H32 — self-labeled "a big unknown"); Experts never act outside their runbook (A12); scope violations are blocked at runtime (H56, I15).
**Evidence says:** build-state audit — **QBR Advisor 0/40 tasks, "the name exists; the thing does not"** (EV-AB03); governance today is **audit-after, not control** (EV-AB12); Value Ledger $0 (EV-AB14); and the specs contradict *themselves* — Experts "execute" vs "advisory-only" (I11), composability claimed then removed (I03), the control-plane auth model is an **open question in the spec** (I21/I24, per the specs' own OQ-001).
**Status:** CONTRADICTED — "it works" collides with build-state and the specs' own open questions.
**Riskiest bet:** *The execution + governance actually work today — the claim that lets everything downstream be treated as settled.*

### T8 · Time-to-value targets (15-min build / 20-min onboarding) · Gate 1/3
**Nicole asserts:** ≤15-min Coworker build (S03), ≤20-min signup-to-running onboarding (S41), admin reviews (not rubber-stamps) the AI-built config (S18), 5-min proof-of-value report (H45).
**Evidence says:** **prep-time is the actual roadblock** (EV-AX04); the PSA-connection step is where onboarding is riskiest and is gated on **open blocking questions** (S43/S54/S55); leading onboarding with Ticket Triage (not QBR) is unvalidated (S48); the manual-time baselines feeding the value number are **unresearched** (S35).
**Status:** SILENT / UNVALIDATED — the time bets are asserted, several gated on unresolved blocking questions.
**Riskiest bet:** *The 15-/20-minute time-to-value targets are achievable and are the right bar — invented numbers, not measured ones.*

### T9 · Provenance integrity of the evidence base (meta-theme) · Pre-gate
**Nicole asserts (implicitly):** the demand ranking and spec priorities rest on a **22-partner interview study**.
**Evidence says:** that catalog is titled **N-UEM, a different product line**, and its count **doesn't reconcile to 22** (~19–20, and it counts Nicole herself) (U-EV01); the only willingness-to-pay figure is **one person (~$30/user) cited twice** as if independent (U-EV02); it's a **self-selected convenience sample**, framed as qualitative feedback not a demand study (U-EV05); "demand" and "spec priority" are the **same n=8 study cited twice**, not two independent signals (EV-AB17); even the online anti-QBR sentiment is vendor-marketing-seeded (EV-AX25).
**Status:** CONTRADICTED — the evidence base is thinner, mislabeled, and more buyer-skewed than the assertions presuppose.
**Riskiest bet:** *The research base behind the ranking and priorities is sound — the corrosive assumption sitting under T1, T2, and T5.*

---

## Claude's first-pass riskiness ranking — Beth reorders (§18)

This is a *deductive* ordering (load-bearing × evidence-weakness). It is one input, not a verdict. Beth's abduction over the themes governs.

1. **T3 · Data access** — a pre-gate that is both load-bearing and currently *failing* (ledger $0, normalization 30%, egress wall). If this is wrong, nothing above it is real.
2. **T2 · WTP for the core** — contradicted by every WTP data point; the revenue thesis rests on it.
3. **T9 · Provenance integrity** — undercuts the demand evidence for T1/T2/T5 at the root; cheap to name, expensive to ignore.
4. **T7 · Does it work today** — build-state contradicts "it works"; gates whether any demo claim is honest.
5. **T5 · Operating-system framing** — internal scoring (~5%) and field both favor the narrower bet.
6. **T1 · Real demand below #1** — QBR #1 holds (buyer-side); the rest of the ranking is unsupported.
7. **T4 · Headless** — cleanly contradicted, but lower-stakes than the pricing/data bets.
8. **T6 · Earned-autonomy self-evidence** — SILENT, testable, squarely Beth's UX territory.
9. **T8 · Time-to-value targets** — SILENT/unvalidated; matters at build time, not thesis time.

**Divergence note (§18):** where Beth's abductive ranking disagrees with this deductive one, that gap is the signal — it marks where tacit expertise is doing work the corpus can't. Name it, don't average it.

---

## The dialogue loop — talk back to Nicole's docs

This crosswalk is not an audit that grades the docs. It is a lean-startup instrument: each theme is a **product assumption** the docs make, which we **test**, **refine**, and **feed back** to the specific claim. The loop runs, we learn as we go, the docs improve. What travels back to Nicole is not "you were wrong" — it's "here is the cheapest test that turns this bet into a known, and here is the claim it lands on."

| # | The doc's assumption (→ claim) | Cheapest test that resolves it | Feeds back to |
|---|---|---|---|
| T1 | Ranking = adoption demand (U01–U13, S40) | 1 operator (not buyer) session on the top-3 use cases; re-run the rank with the daily user | S08/S40 DEC-006; the N-UEM catalog |
| T2 | MSPs pay premium consumption/outcome pricing (H75–H77, H83) | Van Westendorp / price-sensitivity on the core QBR offering, 8–10 MSPs; test the "build-it-into-RMM" objection head-on | H76 seven-layer; H83 Layer 7 |
| T3 | ACP can retrieve+normalize the needed data (H44, S33/S34, A31) | Wire one QBR producer against one real mixed stack; measure normalization % + egress/DPA clearance | S33/S34 deps; H44 ledger; Q1 egress |
| T4 | MSPs want headless (H33/H37/H40) | Prototype test: headless dashboard vs. a bookmarkable app surface; which do MSPs return to | H33 "invisible infrastructure" aspiration |
| T5 | Build it as an operating system / one department (H04/H34) | Concept test: "one department" narrative vs. "one great QBR"; which converts | H04/H34; the department framing [A] |
| T6 | Earned autonomy is self-evident (A33/A34, S11) | The 10-second comprehension test A33 already specifies, on 3 trust-model mockups | A33/A34; S11 DEC-005; trust-level spec |
| T7 | The tech works today (H07, A12, H25/H32) | Honest build-state audit surfaced in the demo; don't claim what renders $0 | H07; H09/H31 open questions |
| T8 | 15-/20-min time-to-value is right + achievable (S03, S41) | Timed first-run study on real PSA data; measure the PSA-connect step specifically | S03, S41, S55 (open blocking) |
| T9 | The research base is sound (U-EV01–06) | Reconcile the "22": name the real n, re-label N-UEM↔ACP, separate the double-cited study | U-EV01/04; EV-AB17 |

**Learn-as-we-go rule:** every time a test comes back, the result updates the theme's status here *and* gets carried to the named claim in Nicole's doc. The log is the running ledger of that dialogue, not a one-time verdict.

## Next steps
- **Council pass — running now** over these 9 themes (JTBD · Service Blueprint · SDT · Disruptive Innovation · Value Chain) to **size the holes** and classify each gap's nature (knowledge-gap / evidence-contradiction / feasibility-wall / framing-error), with a per-lens survival read. Testimony, not synthesis; contradictions kept. *(This is the analytical instrument for sizing gaps — distinct from the item below.)*
- **[NEXT BUILD ROUND — flagged, not now]** Bake an Idea-Chess / council **survival-score display** into the rebuilt log's UI (a scored badge per bet). This is a display/mechanic decision to design deliberately, per Beth.
- **Rebuild the log** with these 9 as the claim-altitude spine, Beth's curated order on top, the dialogue-loop columns visible, this crosswalk as the receipts beneath.
