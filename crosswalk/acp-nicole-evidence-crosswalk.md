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

## Ordering axis — product-kill risk (Beth's rule)

**Riskiest = if this assumption is wrong, how likely it kills the product in market.** Not "how big/interesting is the gap." The list is the game: check the assumptions most likely to kill us before the market does. The council's per-lens **survival reads are kill conditions** — this ordering is read straight off them.

### First-pass kill order (council-informed) — Beth reorders (§18)

| Rank | Theme | If wrong → | Council kill-weight |
|---|---|---|---|
| 1 | **T3 · Data access** | No product — can't populate a QBR at all | **Fatal ×2** (Service Blueprint, Value Chain); legal feasibility-wall, not a build gap |
| 2 | **T7 · Does it work today** | Nothing ships; the demo lies | **Fatal ×2** (JTBD, Service Blueprint); 0/40 build-state, ledger $0 |
| 3 | **T2 · WTP for core** | No revenue; ~$4B ceiling has no floor | **Bordering-fatal**; riskiest for JTBD + Disruptive; Value Chain says coupled to T3 |
| 4 | **T5 · OS framing** | Wrong battle — ScalePad already owns the seat | Riskiest for Disruptive + Value Chain; internal score ~5% |
| 5 | **T1 · Real demand** | No market — job may not be hire-worthy | Riskiest for JTBD (compounds with T2); buyer-only sample |
| 6 | **T4 · Headless** | Wrong wrapper — or wrong strategy | **Contested**: legit strategy (Disruptive, Value Chain) vs structural defect (Service Blueprint, SDT) |
| 7 | **T6 · Earned autonomy** | Trust model collapses (over- or under-trust) | Riskiest for SDT; comprehension never instrumented |
| 8 | **T9 · Provenance** | *Second-order* — kills trust in this map, not the market directly | Large for JTBD, but it corrupts the assessment of T1/T2/T5 rather than killing the product itself |
| 9 | **T8 · Time-to-value** | Onboarding tuning problem; gates a step, not the thesis | Moderate; knowledge-gap, lowest direct kill-risk |

**Per-lens survival reads (kill conditions):** Value Chain ~15% · Service Blueprint ~15% · Disruptive ~20% · JTBD ~25% · SDT ~30%. Every lens lands under one-in-three. Full testimony: `crosswalk/council-testimony.md`.

**Note on T9:** under the product-kill rule it drops from my earlier #3 to #8 — it's a *meta-risk*. Being wrong here doesn't fail the product in market; it means we mis-rank everything else. Real, but a different kind of risk. Flagged for Beth: keep it in the list as a map-integrity caveat, or pull it out as its own pre-check?

### Added to the board — six kill-bets not in Nicole's docs (Beth confirmed M1–M5 on; M6 from the superpower deck)

The nine themes came from Nicole's docs. Five product-kill assumptions were surfaced by the council and a sixth by the MSP Superpower Problem deck — **all now on the board:**
- **M1 · Switch/fire (JTBD)** — will MSPs actually abandon what they do today? T1 measures ranked preference; nobody measured *displacement*.
- **M2 · Failure/exception path (Service Blueprint)** — what happens, frontstage + backstage, when the AI is wrong *in front of the client*? T6 grants trust; nothing covers recovering a broken promise.
- **M3 · Whose agency (SDT)** — the design serves the buyer's decision, but the operator runs it daily. Different person, unstudied.
- **M4 · Disruption target (Disruptive)** — nonconsumer (Cormier-shaped) or incumbent's-customer (ScalePad-shaped)? The themes conflate two populations under one ranking.
- **M5 · Chokepoint ownership (Value Chain)** — is ACP inside N-able's *own* value chain (home-field), or a supplicant to competitor-controlled PSA/RMM systems? *The superpower deck asserts the answer* (SP01–SP04: "we have the stack, nobody else does") — but only for **N-able-native** clients; it says nothing about the cross-vendor stacks where T3's egress wall + 30% normalization live. So M5 is now a **claim to test, native-vs-cross-vendor**, not an open blank.
- **M6 · The living-runbook wicked problem (superpower deck p7, SP16–SP19)** — the whole ACP value rests on runbooks existing and staying current, and *"nobody has solved"* creating them from tacit knowledge + keeping them from going stale (cold-start, drift, loop-never-closes). **Product-kill weight: high** — if the runbooks can't be created/maintained at scale, there is nothing for the coworkers to run. This sits near the top of the kill-order, adjacent to T3/T7.

### Superpower deck — folded in (2026-09-02, read in full)

**ATTRIBUTION corrected (Beth's flag):** `MSP Superpower Problem.pdf` is **Beth's authored synthesis** (secondary research). Nicole's primary *research* (the 8 interviews, the demand ranking) feeds it, but the **framing — superpower/native-stack-moat thesis, the "one job" LEAP — is Beth's overlay, NOT Nicole's assertion.** Only the embedded demand *data* (n=8 ranking, WTP quotes) is Nicole's. Do not read SP framing claims as Nicole's side of the crosswalk. It is still upstream of several paraphrases, and it changes four themes + adds two things: 
- **T1 sourced** → the QBR-#1 ranking is the deck's n=8 Guidepoint (SP08), the same study as EV-AB17. The deck itself notes only **8 of 20 interviews done** (p10) — research was explicitly incomplete at deck time.
- **T2 sourced** → Kenneth's "$300+/user/mo, barely worked" is a direct quote here (SP13); the ScalePad-as-opportunity framing (SP14) is in live tension with the later ScalePad-as-threat read (EV-AB16).
- **T5 sourced** → "one job, not six" is explicitly **"THE LEAP"** (SP05) — a design synthesis over demand-sourced use cases, not an interviewee statement. Confirms EV-AB04.
- **T8 sourced** → the 15-min bar is really **90→17.5 min, n=11** (SP11), and the deck's own fog list marks "how the 15-minute prep feels" as untested (SP12). The deck agrees T8 is SILENT.
- **M5 gets its asserted answer** (the superpower thesis, native-only — see above).
- **The deck already has its own riskiest-assumptions map** (Battleship, p10, SP20–SP21): KNOWN = gated autonomy, split intent/execution, QBR-capstone; FOG = our-own-runbooks, cold-start creation, evergreen loop, what-the-MVP-is, 15-min-feel. **This is a riskiest-list Beth already started — reconcile it with the board rather than duplicating it.**

**Divergence note (§18):** where Beth's abductive kill-order disagrees with this deductive one — where a single lens disagrees with the pack (T4 especially) — and where the deck's own KNOWN/FOG map disagrees with the crosswalk's status — that gap is the signal. Name it, don't average it.

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
