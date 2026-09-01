# Four Complete Word Sketches of ACP
Best ideas of how to take components of top agent/runbooks and turn them into winning products. . .

Beth Connor – July 15, 2025 – concepting in progress.

**Shared with leadership 2026-07-15.** Deepens two threads from `acp-word-sketches-2026-07-14.md` (offering A / QBR, split into Branch A cross-vendor + Branch B N-able-native) and the vCISO/vCIO packaging idea, plus introduces the Defensibility Layer as its own tested concept (closed standalone, holds embedded). Ends with an Idea Chess cross-ship synthesis and survival table.

---

Sketch 1 — QBR Coworker: Cross-Vendor / Branch A
[FLAG — normalization hypothesis: this entire sketch assumes cross-vendor normalization is achievable via acquisition or partnership. Every assumption below this line is downstream of that hypothesis.] – Two minute answer from team: this is possible in our shop, but deserves more of a dive.
1. Problem / wicked bit: MSPs manage clients across 3–7 vendor stacks but author every quarterly business review by hand — 2–4 hours per client, 4–8 portal logins, no consistent evidence framework. The industry has not solved client-ready proof of protection at scale. No incumbent ships a QBR coworker that normalizes across competitor data. [CS: HIGH — #1 demand signal across all three Guidepoint instruments; [QUAL n=8, directional]]
2. Tension: MSPs are trying to prove quarterly value to retain clients, but the manual QBR process is unsustainable and the most defensible cross-vendor comparison is legally unavailable through competitors' data policies.
3. How Might We: How might we help MSPs produce a defensible, client-ready QBR in under 20 minutes across their full client stack — and build the narrative trust that justifies premium advisory pricing?
4. Value prop (Moore): For security-focused MSPs who spend hours assembling quarterly client reviews, QBR Coworker is an AI drafting tool that generates a client-ready, evidence-tagged narrative across the MSP's full vendor stack in under 20 minutes. Unlike manual assembly or single-vendor dashboards, QBR Coworker delivers cross-vendor normalized evidence with built-in defensibility tiering.
5. TAM: $1B–$4.3B depending on pricing model (per-tool floor vs. share-of-services ceiling). The gap is entirely the pricing model decision. [CS: MEDIUM — derived from fleet synthesis; not independently sourced. [WOBBLY]] [0% Claude — pricing model decision belongs here]

6. Necessary functionality:
•	Cross-vendor data normalization layer [FLAG — normalization hypothesis; "Not started," multi-quarter if built in-house]
•	QBR runbook on existing Runbook Engine (49/49 built — wiring only)
•	Value Ledger producer (52/52 built — currently rendering $0; needs a producer)
•	Defensibility tiering on narrative output (Measured / Benchmarked / Estimated / Unverified)
•	15-minute operator edit flow

7. Evidence + [CS:] tags:
•	#1 demand across all three Guidepoint instruments [CS: HIGH — [QUAL n=8, directional; not projectable]]
•	Runbook Engine + Value Ledger built [CS: VERIFIED — internal build state]
•	Normalization: "Not started" [CS: VERIFIED]
•	Competitor ToS/DPA: unexamined [CS: UNKNOWN]
•	Operator mechanism (AI drafts, you edit): never studied [CS: VERIFIED — confirmed research gap]
•	Strength: STRONG on buyer demand / UNVERIFIED on operator mechanism / UNVERIFIED on normalization path

8. Riskiest assumption: Three simultaneous required beliefs — normalization clears legal/ToS in ~18 months [P=0.30], operators want to reduce their verification work not just get the output [P=0.55], defensibility tiering holds under legal review [P=0.45]. None tested. Independence caveat: these are likely correlated — if legal is hostile to normalization, tiering risk spikes simultaneously. Naive floor of ~0.43% is probably a ceiling, not a floor.
9. N-able superpower: First-party Adlumin/N-central/Cove telemetry is the only normalized data source N-able fully controls. "Measured" tier claims are defensible from day one — without any normalization acquisition — for N-able-native clients. The superpower is the telemetry stack, not the AI layer on top of it. [CS: HIGH — internal build state confirms telemetry depth]
10. The bet: [0% Claude — fill this in]

Sketch 2 — QBR Coworker: N-able Native / Branch B
1. Problem / wicked bit: Same as Branch A at the industry level — client-ready cross-stack proof of protection is unsolved — but scoped to a different sub-population: MSPs with enough stack consolidation on N-able products to make a first-party-only QBR meaningful. No normalization dependency. No competitor ToS risk. The wicked bit is identical; the bet is different.
2. Tension: MSPs on consolidated N-able stacks are trying to get quarterly proof of protection in front of clients, but the cross-N-able product integration (N-central + Cove + Adlumin have different data models) is unscoped, and the demand signal for the N-able-native job was never independently measured — the existing research asked about cross-vendor, not N-able-only.
3. How Might We: How might we deliver a client-ready QBR for consolidated N-able-stack MSPs — in one engineering cycle, without a normalization acquisition — as the foundation for eventually expanding to cross-vendor scope?
4. Value prop (Moore): For N-able-stack MSPs who want to stop assembling QBRs by hand, QBR Coworker (N-able Native) produces a client-ready, defensibility-tagged quarterly review from first-party telemetry in under 20 minutes. Unlike Branch A, it requires no cross-vendor normalization and carries a legally cleaner data position — but is limited to clients on an N-able stack.
5. TAM: Smaller than Branch A — scoped to N-able-consolidated MSPs. Not independently sized. [CS: FABRICATION RISK — do not estimate without a real cut of N-able's installed base by stack consolidation. Omitted deliberately.]
6. Necessary functionality:
•	Cross-N-able product schema normalization (N-central + Cove + Adlumin data models — unscoped, uncosted)
•	QBR runbook on Runbook Engine (same as Branch A)
•	Value Ledger producer (same as Branch A)
•	Defensibility tiering — "Measured" claims defensible from first-party telemetry on day one
•	Same 15-minute edit flow

7. Evidence + [CS:] tags:
•	Demand for cross-vendor QBR: HIGH [CS: HIGH — Guidepoint [QUAL n=8, directional]]
•	Demand for N-able-native QBR specifically: NOT MEASURED — this is a different job [CS: UNKNOWN]
•	Cross-N-able schema delta: not scoped [CS: UNKNOWN]
•	MSPs won't experience N-able-only scope as inadequacy: assumed, untested [ASSUMPTION]
•	Defensibility tiering on first-party data holds legally: unreviewed [CS: UNKNOWN]
•	Strength: STRONG on parent demand / UNVERIFIED on narrowed job / THIN on operator mechanism

8. Riskiest assumption: Mixed-stack MSPs will pay a premium for N-able-only scope — they will not experience Branch B as an incomplete Branch A [P=0.35]. This is the JTBD failure: if the demand was measured for cross-vendor, Branch B delivers a smaller job. Q2 is the decision gate. If Q2 shows operators don't distinguish the jobs (they just want "QBR drafting"), Branch B survives. If Q2 shows they specifically wanted cross-vendor proof, Branch B closes as a commercial path and becomes a proof-of-concept stepping stone for Branch A.
9. N-able superpower: Same as Branch A — first-party telemetry. Branch B's structural advantage is that the telemetry IS the product, not a prerequisite to it. "Measured" is defensible on day one without any external data dependency. That advantage is real but narrow.
10. The bet: [0% Claude — fill this in]

Sketch 3 — Defensibility Layer
Verdict carried from adversarial pass: This is not a standalone product. It is the trust architecture of QBR Coworker. The standalone Oregon Trail died at Stage 2. Sketch below uses the embedded framing only.
1. Problem / wicked bit: Every AI-authored customer-facing document has an epistemological gap: fluency ≠ accuracy, and the reader has no structural way to know which claims are verified vs. generated. The industry has no standardized claim-level evidence provenance layer for AI-drafted B2B service documents. This can't be solved with better accuracy — it's a transparency problem, not a capability problem.
2. Tension: MSPs are trying to send client-ready AI-authored documents that hold up in disputes, but the absence of claim-level provenance means every document is equally likely to be wrong — and there's no mechanism to distinguish a telemetry-sourced claim from a confident model output.
3. How Might We: How might we give MSPs a structural mechanism for standing behind AI-authored client documents — so the document itself carries its own evidence chain, not just the AI's confidence?
4. Value prop (Moore — embedded framing): For QBR Coworker, the Defensibility Layer is the trust architecture that distinguishes sourced claims from AI-generated estimates — making N-able the first AI-native MSP platform where the client-facing output itself carries claim-level provenance.
5. TAM: Not applicable as standalone. References QBR Coworker TAM at parent level.
6. Necessary functionality:
•	Four-tier vocabulary: Measured (telemetry-backed) / Benchmarked (external peer data) / Estimated (AI-modeled) / Unverified (AI-generated from general knowledge)
•	Telemetry audit — what % of claims in a real QBR are Measured vs. Estimated (not run; one day, 10 docs)
•	Legal review: does tiering provide protection or document constructive knowledge of uncertainty? [CRITICAL — binary; required before build]
•	Hard gate on Unverified tier: operator must confirm before export (the counter-move from adversarial pass — not optional, not a warning)
7. Evidence + [CS:] tags:
•	Accuracy/liability asymmetry is death pattern #5 in fleet synthesis [CS: VERIFIED — internal]
•	No external precedent for claim-level tiering in B2B SaaS documents [CS: MEDIUM — negative evidence; absence of cases found ≠ confirmed absence]
•	Constructive knowledge doctrine: tiering labels may document the signatory's awareness of uncertainty [CS: MEDIUM — legal principle; not case-specific to N-able's context]
•	Warning fatigue literature: visible warnings that require no action before proceeding are treated as permission, not pause [CS: HIGH — GRADE methodology; FDA black box studies confirm behavioral pattern]
•	Telemetry Measured coverage ≥40%: assumed, unmeasured [ASSUMPTION — internally resolvable in one day]
•	Strength: STRONG on problem / UNVERIFIED on legal question / CLOSED on standalone WTP
8. Riskiest assumption (embedded): Tiering provides legal protection rather than documenting liability — showing "Estimated" in a signed document limits exposure rather than establishing constructive knowledge [P=0.45]. This is not a product assumption; it's a legal assumption. One opinion answers it for all three sketches that depend on it (Branches A, B, and this one). Until it resolves, the embedded path carries binary risk.
9. N-able superpower: First-party telemetry makes "Measured" defensible. The vocabulary (four tiers) takes 15 minutes to copy. The moat is that only N-able can back "Measured" tags with real N-able-native telemetry data. Narrow but real. [CS: HIGH]
10. The bet: [0% Claude — fill this in]

Sketch 4 — vCISO/vCIO Package
1. Problem / wicked bit: MSPs who want to offer advisory services (vCISO, vCIO) have the domain knowledge but no scalable proof layer — quarterly reviews require 2–4 hours of manual prep per client, and there's no packaging mechanism that lets an MSP productize advisory engagement rather than billing hours. The industry has not solved the AI-powered advisory-services package for the MSP channel. Per-tool pricing caps the addressable market at ~$1B; share-of-services pricing reaches ~$4.3B. The gap is entirely one pricing innovation.
2. Tension: MSPs are trying to expand from break-fix into advisory practices, but N-able's current tooling is priced and packaged as tools (not services), and the billing mechanism required for any form of practice-based pricing doesn't exist in any N-able system today.
3. How Might We: How might we package QBR Coworker and a vCISO/vCIO coworker suite so MSPs can sell a productized advisory service to their clients — not just access to AI tools — at a price point that reflects the practice value, not the per-tool cost?
4. Value prop (Moore): For MSPs building vCISO and vCIO practices, the N-able Advisory Package bundles QBR Coworker + IR readiness + planning intelligence into a recurring advisory retainer model. Unlike per-tool MSP AI subscriptions, the Advisory Package is priced as a service — and it grows when the MSP's advisory practice grows.
5. TAM: $4.3B share-of-services ceiling vs. $1B per-tool floor — if the billing mechanism works and MSPs adopt service-tier pricing [FLAG — pricing hypothesis]. [CS: MEDIUM — derived from fleet synthesis; underlying estimates from secondary market research, not independently validated. [WOBBLY]] [0% Claude — pricing model decision belongs here]
6. Necessary functionality:
•	QBR Coworker at quality (prerequisite — itself unbuilt; depends on Sketch 1 or 2)
•	vCISO coworker suite (unspecced, unbuilt)
•	Bundle composition decision (which coworkers, which tier)
•	Billing mechanism: tiered flat-fee by advisory practice size (the counter-move) OR revenue-share by MSP client billing (as designed, structurally hostile to PSA/channel norms)
•	MSP liability/contract language for advisory service context
7. Evidence + [CS:] tags:
•	vCISO/vCIO identified as highest-value use case in Guidepoint study [CS: HIGH — [QUAL n=8, directional]]
•	$4.3B vs. $1B ceiling: derived from fleet synthesis [CS: MEDIUM — [WOBBLY — secondary derivation; not independently sourced]]
•	Revenue-share pricing: no PSA/MSP channel precedent found [CS: MEDIUM — negative evidence]
•	MSP advisory practice size as billing anchor: plausible, untested [ASSUMPTION]
•	Flat-fee counter-move: ~14% survival vs. 2.8% as designed — model output from assumption probability shifts [CS: LOW — not market data]
•	Strength: STRONG on advisory demand / UNVERIFIED on pricing mechanism / THIN on billing feasibility
8. Riskiest assumption: The billing mechanism clears PSA/channel norms — MSPs accept any N-able-determined pricing tied to their practice rather than per-tool or per-seat [P=0.20 revenue-share; P=0.45 flat-fee]. As designed (revenue-share), the tree-test dead-ends at the revenue disclosure question before value is even discussed. The flat-fee counter-move isn't just a price change — it changes the entire conversation structure: "how big is your advisory practice?" is answerable at onboarding; "what do you charge each client?" is structurally hostile.
9. N-able superpower: Channel position — existing MSP relationships and PSA integrations make N-able the incumbent distribution layer for advisory services. No AI-native competitor has this. The moat is the channel, not the AI. [CS: HIGH]
10. The bet: [0% Claude — fill this in]


Step 6.5 — Idea Chess: Cross-Ship Synthesis

Survival Table
Sketch	Naive floor	First fall	Verdict
Branch A (QBR Cross-Vendor)	~0.43%	Stage 2: normalization clearance [FLAG]	Conditional hold — legal read first
Branch B (QBR N-able Native)	~0.9%	Stage 2: cross-N-able product integration	Priority hold — near-term lead
Defensibility Layer (standalone)	~0.28%	Stage 2: WTP / doc surface	CLOSED — recategorize as feature
Defensibility Layer (embedded)	part of QBR path	Embedded Oregon Trail reaches Oregon	HOLD as trust architecture
vCISO/vCIO (as designed)	~2.8% gate / 0.02% naive	Stage 4: billing mechanism	Counter-move required
vCISO/vCIO (flat-fee)	~14%	Stage 3: QBR Coworker quality	HOLD — run positioning test first
Independence caveat on all naive floor percentages: these are products of required-position probabilities under an independence assumption. Correlated failures (legal hostile to both normalization AND tiering simultaneously) make the floors optimistic. Treat as directional, not forecasts.
