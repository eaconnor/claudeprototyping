# ACP — Vendor Deep-Dives, New Synthesis, and Idea Chess
**Date:** 2026-07-20 · every bet stays `[0% Claude]`
**What this is:** (1) primary-source-verified write-ups on the market scan's most relevant companies, with links and why each matters to ACP specifically; (2) a gap-check against [acp-reading-packet-2026-07-20.md](acp-reading-packet-2026-07-20.md) — what's in the raw scout material that isn't in the packet yet, and the new concepts that fall out of it; (3) an Idea Chess pass on those new concepts.

**One correction up front:** re-fetching primary sources changed a few things the scout summaries got imprecise. Corrected below, not just repeated.

---

## PART 1 — VENDOR DEEP-DIVES

### Valarian — cryptographic workload identity for agents
**[valarian.com/acra-ai](https://www.valarian.com/acra-ai)** · $50M Series A, July 2026 (NEA, reported Palantir-adjacent per Fortune)

**Correction on "cryptographically unique":** Valarian's marketing page doesn't use that exact phrase — [CS: MEDIUM, corrected from the scout's characterization]. What it actually says: their ACRA product issues **workload identity via SPIRE** — "identities and permissions scoped to it alone." SPIRE (part of the open SPIFFE standard) is itself inherently cryptographic: it issues signed identity documents (SVIDs) to every workload, verifiable without a shared secret. So your instinct was right, just via a different mechanism than the marketing copy states outright — this is real cryptographic identity, delivered through an open standard, not a proprietary claim.

**Why it's good for ACP:** this is the most concrete answer found anywhere in the scan to "how would you actually build G4" — not a product to buy, but an **architecture to adopt**. Instead of inventing a proprietary trust mechanism for governing agents an MSP built elsewhere, ACP could give every coworker (yours and theirs) a SPIRE-issued identity with scoped, revocable permissions before it's allowed to act. Valarian's own buyer is sovereign/government/high-consequence enterprise — not MSP — so it's not a competitor or a company to buy. It's a pattern to steal: **BUY/ADOPT the open standard (SPIFFE/SPIRE), don't build a proprietary one.**

### Kong AI Gateway — agent-to-agent authorization at the API layer
**[konghq.com/products/kong-ai-gateway](https://konghq.com/products/kong-ai-gateway)** · backed by Innovation Endeavors since 2011 (Kong's seed)

**Correction:** the fetched page confirms centralized AuthN/Z enforcement for agent-to-agent (A2A) traffic and full audit trails (caller identity, capabilities invoked, telemetry per call). It does **not** explicitly confirm prompt-injection detection or third-party-agent governance on the page fetched [CS: MEDIUM — softer than the earlier scout characterization; those features may exist in docs not surfaced here].

**Why it's good for ACP:** Kong is already the API-gateway layer a huge number of enterprises route through. If MSPs' clients already have Kong in their stack, ACP coworkers calling out to client systems could inherit governed, audited A2A traffic for free — a **partner**, not a build, for the audit-trail half of the platform layer.

### Composio — MCP as the tool-integration substrate
**[composio.dev](https://composio.dev/)** · backed personally by Gokul Rajaram

Confirmed: 1,000+ app integrations, managed OAuth, sandboxed execution, model-agnostic (Claude/Gemini/etc.), explicit "turn Claude Code, Cursor, or any MCP client into an agent" positioning.

**Why it's good for ACP:** this is the clearest live proof that **Vendor-Agnostic Runbooks** (the Chris Barber/William Mincher fragment — "choose the service per step, like you choose an MCP instance") is a real, funded, adopted pattern, not just a good idea from a brain dump. Composio is developer-facing infrastructure, not a competitor — but it's evidence the MCP-as-substrate bet is already working at scale for someone else.

### Arcade.dev — authored the MCP authorization spec
**[arcade.dev](https://www.arcade.dev/)** · $60M Series A 2026, team from Okta/Snowflake/Redis, customers include LangChain, Snyk, Sybill

Confirmed directly: Arcade wrote the MCP tool-authorization specification and sits on MCP security/governance steering committees. Their pitch line — *"what action did this agent take, on behalf of which user, in which system?"* — is almost exactly G4's own open question, phrased as a solved problem.

**Why it's good for ACP:** this is the single most credible, most technical comparable for G4 found anywhere in the scan. Not a company to necessarily buy — but the team literally sets the standard the rest of the industry is building toward. If G4 gets spec'd, whoever wrote this spec should be read closely, possibly engaged directly (partnership, advisory, or licensing conversation) rather than reverse-engineered.

### OpNova — a correction, not a fit
**[opnova.ai](https://www.opnova.ai/)** · Preface Ventures-backed, $3.75M pre-seed

**Correction:** OpNova is **enterprise Identity Governance & Administration (IGA)** for large enterprises with 800+ disconnected legacy apps (banks, SOX/DORA/PCI compliance) — not an MSP/SOC tool. [CS: HIGH — primary source directly contradicts the earlier scout characterization, which called this "the strongest direct MSP/SOC/compliance hit." It isn't.] The scout's own domain note flagged this exact risk ("vendor-blog-sourced, self-serving comparisons") and it landed here.

**What's still interesting:** OpNova's mechanism — AI agents that *learn identity-governance tasks by watching IT operators demonstrate them on legacy systems with no API*, reaching 99.9% task completion — is a genuinely clever pattern for exactly the kind of "vendor-agnostic, mix-and-choose" runbook ACP wants for messy, non-standardized client environments. Worth studying the mechanism, not the market.

### Patronus AI — pre-deployment simulation, not production monitoring
**[patronus.ai](https://www.patronus.ai/)** · $50M Series B, backed by Gokul Rajaram (returning angel)

**Correction/confirmation:** Patronus builds "Digital World Models" — simulated environments for training and evaluating agents *before* they ship (30–40% model lift on long-horizon tasks, claimed). This is a flight simulator, not a black box on a live flight. [CS: MEDIUM — vendor-stated performance figures, unverified]

**Why it's good for ACP:** if ACP ever wants to validate a new coworker (say, the Live IR/RCA agent) before it touches a real client incident, a Patronus-style simulated environment is the right *category* of tool for that pre-launch gate — distinct from, and complementary to, any runtime/behavioral monitoring (Exabeam/DTEX-style) once live. Two different problems; ACP eventually needs both.

### The rest, briefly (already well-sourced from the scan, no re-fetch needed):
- **Exabeam (Agent Behavior Analytics)** / **DTEX Systems** — the real behavioral-baseline precedent for agent-LOTL detection. See market scan for detail.
- **ARMO** — the dissenting voice; argues baseline modeling is architecturally wrong for agents in ephemeral compute. Worth reading their actual blog post before committing to a behavioral-baseline design — [armosec.io/blog/detecting-intent-drift-in-ai-agents-with-runtime-behavioral-data](https://www.armosec.io/blog/detecting-intent-drift-in-ai-agents-with-runtime-behavioral-data/).
- **TrueFoundry** — [truefoundry.com](https://www.truefoundry.com/) — enterprise LLM deployment/MLOps; the single strongest capital-convergence signal in the investor scan (3 independent backers). Infra-adjacent, not governance-specific.
- **Openlayer** — [openlayer.com](https://www.openlayer.com/) — AI governance/observability, named in Gartner's 2026 Market Guide for AI Evaluation and Observability. Worth knowing Gartner has already formally named this category — relevant to how ACP's own platform layer gets positioned to analysts later.
- **ValidMind** — [validmind.com](https://validmind.com/) — AI model-risk-management/documentation for financial services, Point72-backed. A live reference architecture for how a regulated-industry compliance story gets productized fast — relevant to the `<TBD>` compliance-owner gap.
- **Panther Labs** — [panther.com](https://panther.com/) — AI SOC platform, "agents that learn and improve over time," Innovation Endeavors-backed since Series A. Closest SOC-specific agent-behavioral signal found.
- **HoneyHive** — [honeyhive.ai](https://www.honeyhive.ai/) — "Observability Layer for Production Agents," explicitly for **multi-agent** systems. More architecturally relevant than most of the scan given ACP is inherently multi-agent (Runbook Engine + coworkers + Experts).
- **Thread** — [getthread.com](https://www.getthread.com/) — confirmed real scale: 725+ MSP partners, 15,000 customer businesses, 22B+ tokens/month, $19–34/license, 2026 CRN AI 100, already integrated with ConnectWise/Autotask/HaloPSA. This is a live, funded, adopted competitor to Package 2, not a hypothetical — worth weighting the Ticket Triage competitive risk higher than the reading packet currently does.
- **Feroot Security** — [feroot.com](https://www.feroot.com/) — AI compliance monitoring across 50+ privacy frameworks, Preface Ventures-backed, expanding agent capabilities. Relevant to the compliance-owner gap.

---

## PART 2 — WHAT'S IN THE RAW MATERIAL THAT ISN'T IN THE PACKET YET

Rereading all five scout outputs against the reading packet surfaced three things not yet captured:

1. **Nobody in this entire market has independently-audited performance claims.** Every scout run hit the same wall: vCIO/QBR/Triage/AIOps performance numbers (ScalePad's "in seconds," LogicMonitor's "80% noise reduction," Sophos's "97.5% less spent on cyber insurance") are *all* vendor self-reported, with zero third-party or academic benchmarking found anywhere. [CS: HIGH confidence in this being a real, checked absence — the scout explicitly searched for it.] This is bigger than a competitive note — it's a strategy. ACP already has a four-tier evidence vocabulary (Measured/Benchmarked/Estimated/Unverified) sitting in the Defensibility Layer fragment, and the "Benchmarked" tier (external peer data) is currently theoretical — nobody's filled it because nobody in the *market* has real benchmark data to cite. **If ACP ran or commissioned one real independent benchmark of its own coworkers, it would be the first verifiable number in the entire competitive landscape.** That's Idea Chess candidate #1 below.

2. **Rootly AI SRE's stated trust posture is a design pattern worth stealing.** They explicitly commit to zero third-party model training on customer incident data. Beth's own corpus has ~25% of partners citing data-sovereignty objections as a reason to distrust ACP (per the n=119 survey). Nobody in the reading packet has connected "state a no-training-on-your-data commitment explicitly" as a concrete, cheap trust move for Package 4 specifically.

3. **The agentjacking scope gap is a genuinely open naming opportunity, and it pairs with the SPIFFE/SPIRE pattern above.** Confirmed narrow (coding agents/MCP dev tools only). Nobody has extended it to MSP-integrated coworkers. Combined with a SPIRE-based identity layer, ACP could plausibly be first to define "agentjacking defense" *for the MSP coworker category specifically* — a positioning move, not just a feature.

These three feed two new concepts, plus strengthen one already-named fragment (Defensibility Layer). Running all three through Idea Chess below.

---

## PART 3 — IDEA CHESS ON THE NEW MATERIAL

Same discipline as the five packages: naive survival = product of required-assumption probabilities under an independence assumption, directional not forecast; where it dies; the lever; a verdict.

### NEW CANDIDATE 1 — The Benchmarked Evidence Layer
*ACP commissions/runs the market's first independently-audited performance benchmark of its own coworkers, fills the "Benchmarked" tier for real, and makes "we're the only verified number in the category" the marketing claim.*

**Council adversarial pass (abbreviated):**
- **JTBD:** the job isn't "prove our coworker is fast" — it's "give the skeptical 25% a reason that isn't a vendor's own word." An audit that measures the wrong thing (raw speed vs. diagnostic accuracy) fails the job even if it's genuinely independent.
- **Porter/Value Chain:** whoever runs the audit controls the claim. If N-able commissions it from a firm with no public methodology, it's marginally better than self-reported — the credibility only holds if the auditor and methodology are named and defensible.
- **Lean/Riskiest assumption:** that a real audit would come back *favorable*. This is the actual risk nobody's pricing in — commissioning independent verification only helps if you're confident you'll clear the bar. If Package 3/5's normalization accuracy is genuinely untested (it is — A1 in the Offering A murder board, p≈0.30), running the audit before that's fixed could produce a bad number in public.

**Survival:** required gates — (1) a defensible, named methodology exists [P≈0.55], (2) the result is favorable enough to publish [P≈0.40 — genuinely unknown given normalization's own untested state], (3) the market actually credits independent audits over vendor claims [P≈0.60 — plausible given ~25% skeptic base already exists and wants proof]. Naive floor: 0.55 × 0.40 × 0.60 ≈ **13%.**

**Dies at:** Build/Launch boundary — if you run the audit before Package 3 or 5's own P0 assumptions (15-min edit, normalization accuracy) are resolved, you risk publishing the first-ever independent number in the category and having it be bad.

**The lever:** sequence it *after* the operator/normalization studies (Q1/Q2), not before. Run it on Package 3 (N-able Native) first — narrower scope, first-party data only, least likely to fail the audit — before ever attempting it on the cross-vendor claim.

**Verdict: HOLD, sequence-dependent — genuinely the highest-survival new idea in this pass, entirely because the killers are self-inflicted and controllable (don't audit until you're ready), not external.**

### NEW CANDIDATE 2 — Agentjacking Defense for MSP Coworkers
*Extend the "agentjacking" term and threat model (currently scoped to AI coding agents) to ACP's own coworker fleet, paired with Adlumin's existing LOTL/behavioral-baseline methodology repointed at the coworkers themselves — position ACP as first to name and defend against this for the MSP category.*

**Council adversarial pass (abbreviated):**
- **Porter:** the moat is Adlumin's existing LOTL detection methodology — a real capability, already built, pointed at a new surface. Nobody else scanned has this exact combination (an established LOTL/behavioral-anomaly capability *and* an MSP-coworker fleet to point it at).
- **Christensen/Disruption:** this is a sustaining move dressed as a new category name — the underlying capability isn't new, only the target surface and the marketing frame are. Fine, but don't oversell it as a technical breakthrough; it's a repositioning of an existing asset.
- **Lean/Riskiest assumption:** that behavioral-baseline detection actually works for ACP's own coworkers in production. ARMO's own dissent (their whole business argues this doesn't work architecturally for agents in ephemeral compute) is real counter-evidence from an incentivized party, not noise.
- **SDT/trust:** naming and defending against "agentjacking" for your own product before anyone's demonstrated an attack against ACP specifically could read as manufacturing a fear it hasn't yet earned the right to claim — credibility risk if the term is used for marketing before the capability is real.

**Survival:** required gates — (1) Adlumin's LOTL methodology actually transfers to agent-behavior baselining without new R&D [P≈0.40 — untested, ARMO's dissent is real friction], (2) ACP coworker behavior is regular/baseline-able enough for the method to work at all [P≈0.50 — coworkers running varied runbooks may not have a stable "normal" the way a human admin does], (3) the term "agentjacking" stays in circulation and doesn't get captured by a bigger player first [P≈0.65 — six-month consolidation pace in this market is fast]. Naive floor: 0.40 × 0.50 × 0.65 ≈ **13%.**

**Dies at:** Build — the R&D question (does Adlumin's methodology actually work on agent behavior, not just human/endpoint behavior) is untested and is exactly the kind of assumption that killed Package 5's normalization line if left unstudied.

**The lever:** run a cheap internal spike first — take Adlumin's existing behavioral-baseline model and test it against real coworker execution logs (Runbook Engine already produces these) before naming anything publicly. This is testable in days against data that already exists.

**Verdict: HOLD — cheap to test, real asset underneath it, but don't claim the positioning publicly before the internal spike confirms the mechanism actually transfers.**

### NEW CANDIDATE 3 — SPIRE-Based Cryptographic Identity for G4
*Adopt the open SPIFFE/SPIRE standard (the mechanism underneath Valarian's ACRA) to give every coworker — N-able's own and any MSP-built agent under G4 — a cryptographically-verifiable, scoped, revocable identity before it's allowed to act.*

**Council adversarial pass (abbreviated):**
- **Value Chain:** this doesn't require buying or partnering with Valarian at all — SPIFFE/SPIRE is an open, vendor-neutral standard (CNCF project). The lever isn't BUY, it's ADOPT — genuinely cheaper than either building a proprietary trust mechanism or licensing someone else's.
- **Lean/Riskiest assumption:** that SPIRE's workload-identity model, built for cloud infrastructure (pods, services, VMs), actually maps cleanly onto "an AI agent an MSP built in some tool we don't control." The identity-issuance model assumes you control the runtime environment enough to attest to it — an externally-built agent running on infrastructure N-able doesn't touch may not be attestable the same way.
- **JTBD:** G4's job isn't "give agents an identity" — it's "let N-able trust an action even when it didn't build the actor." An identity alone doesn't solve that; it's necessary, not sufficient. Behavior-monitoring (Candidate 2) and identity (Candidate 3) are complementary, not substitutes — this needs to be named as a two-part answer to G4, not treated as if identity alone closes the question.

**Survival:** required gates — (1) SPIRE's attestation model extends to agents whose runtime N-able doesn't control [P≈0.30 — the genuinely hard, unresolved technical question], (2) the identity layer plus behavioral monitoring together actually satisfy what "governing an externally-built agent" needs to mean [P≈0.45 — a product-definition question as much as a technical one], (3) MSPs building their own agents will adopt a scoped-identity requirement rather than route around it [P≈0.50]. Naive floor: 0.30 × 0.45 × 0.50 ≈ **7%.**

**Dies at:** Build — the attestation-across-untrusted-runtime problem is the same shape as A2A's own admitted gap (authorization schemes still a future item) and Arcade.dev's entire reason for existing. This is genuinely unsolved industry-wide, not just an N-able gap.

**The lever:** don't try to solve the hardest version (fully external, fully untrusted runtime) first. Start with SPIRE identity for coworkers N-able builds and runs itself — that's the easy 80% and ships fast — then treat "MSP-built agent under G4" as the long-horizon research spike it already was rated as, informed by watching what Arcade.dev/A2A do next rather than racing them.

**Verdict: HOLD as the long-horizon piece — lowest survival of the three, correctly so, since it's attacking the hardest unsolved problem in the whole portfolio. Sequence behind Candidate 2, and behind shipping SPIRE-identity for N-able's own coworkers first.**

---

## PART 4 — THE WICKED PROBLEM UNDERNEATH CANDIDATES 2 AND 3

Candidates 2 and 3 above were solution-first — "here's a company doing something adjacent." Backing into the actual wicked problem, per the vision skill's own discipline: an offering needs an industry-unsolved problem, or it's a feature wearing a pitch.

**1. Problem / wicked bit:** The industry has tried exactly two ways to detect a hijacked agent, and each fails for a *structural* reason, not a maturity gap. Signature-matching (Lakera, HiddenLayer, CalypsoAI) only catches known-bad patterns — and agentjacking's own definition (Tenet's "Authorised Intent Chain") is specifically constructed to never resemble one; every individual step is legitimately authorized. Statistical behavioral-baselining (Exabeam, DTEX) borrows from human/endpoint security, where "normal" is genuinely repetitive — a person's job doesn't change shape every ticket. An agent's entire value is flexible, non-repetitive reasoning, which is exactly why ARMO argues baselining is architecturally impossible for agents in ephemeral compute: you can't model "normal" for something whose job is to be usefully abnormal. **The property that makes an agent worth building — novel reasoning under authorized permissions — is, to every method tried so far, indistinguishable from the property that makes it exploitable.** [CS: MEDIUM — synthesis across Tenet's own definition, ARMO's stated dissent, and Exabeam/DTEX's stated mechanism; not independently tested]

**2. Tension (Kolko):** MSPs want coworkers to reason flexibly enough to be genuinely useful across messy, non-standardized client environments, but the more flexibly an agent is allowed to reason, the less anyone can tell whether a given action sequence is legitimate improvisation or a hijacked chain of individually-authorized steps.

**3. How Might We:** How might we let a coworker reason freely enough to be useful, while making any action outside what it was actually asked to do definitionally visible — without ever having to model what "normal" agent behavior statistically looks like?

**4. Value prop (Moore):** For MSPs adopting AI coworkers into environments where a wrong or hijacked action is expensive and hard to undo, a scope-conformance check grounds trust not in guessing what an agent's normal behavior is, but in checking every action against the explicit, human-authored job it was given. Unlike Exabeam/DTEX (which try to statistically model agent "normal" — a fight ARMO argues is unwinnable) and unlike Barndoor/Lasso (which gate access at the door but don't watch what happens once an agent starts acting), this makes conformance to a *declared* scope the check — not resemblance to a baseline nobody can build for something built to reason novelly.

**5. TAM:** Feature/mechanism level — trust architecture across every coworker package, not an independent offering. References the parent packages' TAM.

**6. Necessary functionality:**
- Every Runbook execution's Coworker Brief (intent · trigger · scope · locked risk-ceiling · approved scripts · escalation) becomes an *enforced* boundary at runtime, not just a design-time document
- Real-time conformance check: attempted action vs. declared scope/approved-scripts/risk-ceiling
- Escalation on an out-of-scope attempt — surfaced, not silently blocked or silently allowed, matching the review-gate pattern already used across IR/RCA, Alert Flood, and QBR sketches
- A scope-tightness authoring/tuning layer — because the riskiest assumption below lives entirely in how tightly a Brief is written

**7. Evidence:**
- [CS: MEDIUM — inference] Tenet's own demonstrated attack (a fake Sentry bug report with a hidden instruction) works *because* the coding agent's implicit scope was "do whatever the ticket says" — unbounded. A tightly-scoped Coworker Brief is structurally the opposite of that vulnerability.
- [CS: HIGH — already dug] The Coworker Brief's 9-field structure is specced in [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md), Offering B dig — this isn't a new build, it's operationalizing something already designed but not yet enforced at runtime.
- [CS: VERIFIED] The autonomy tiers (low-auto/med-batch/high-sign-off, admin-gated promotion) are the escalation half of this, already ratified in the build.
- [CS: MEDIUM — interpretation] ARMO's dissent against statistical baselining, read charitably, is an argument for grounding trust in something *other* than behavior statistics — which is exactly what a declared-scope check is.

**8. Riskiest assumption:** Most hijacked/malicious action sequences would actually fall *outside* a Coworker Brief's declared scope, rather than staying craftily within an overly broad one. If a Brief is written loosely ("manage tickets" instead of "classify and route, no write access, under 1000 chars"), a hijacked agent stays technically in-scope and this defense does nothing. The real security parameter is scope-tightness — a design/tuning discipline, not a solved mechanism. [P≈0.35–0.40] that scope-conformance alone catches a majority of realistic agentjacking attempts without requiring scopes tight enough to become annoying to author or to constrain the coworker's usefulness.

**9. N-able superpower:** This is the first design in the whole scan genuinely *native* to ACP's own architecture rather than borrowed from someone else's category. It uses the Coworker Brief (dug), the Runbook Engine (built), the Deterministic Substitution Engine's philosophy (already conceived — validated execution over free-form generation), and the autonomy-tier escalation model (ratified) — four pieces that already exist in some form. Exabeam and DTEX are retrofitting behavior-analytics onto agents that were never asked to declare scope up front; ACP's coworkers already are, by design.

**10. The bet:** [0% Claude — fill this in]

---

## PART 5 — IDEA CHESS ON THE SCOPE-CONFORMANCE CONCEPT (PART 4)

**The one-line indictment:** the substrate is real and native — nobody else has a Coworker Brief to enforce against — but the entire defense collapses to whatever a human writes into the scope field, and nobody has designed who writes it, how tight, or how it stays tight over time. This isn't a technology risk. It's a discipline risk wearing a technology's clothes.

### Council adversarial pass

**1. Lean Startup / Riskiest Assumption.** Already named in Part 4: scope-tightness. Restating as the losing condition — if MSPs write Briefs loosely ("manage the ticket queue") rather than tightly ("classify and route, read-only, under 1000 chars"), a hijacked action stays technically in-scope and the mechanism catches nothing. No test exists yet, and it's the assumption everything else depends on.

**2. Jobs-to-Be-Done.** The job isn't "prevent agentjacking" in the abstract — it's "let me sleep at night running an agent with real access." Best shot: nobody has tested whether Tenet's own demonstrated attack (or anything like it) would actually be caught by a scope check as currently conceived, versus staying technically in-scope because the Brief's author never anticipated this specific injection vector. Untested claims of safety are worse than no claim.

**3. Kano.** Governance is already flagged in this corpus as Kano-basic-adjacent — Shawn: desired, but "probably not something you're going to get someone to pay for" standalone. Losing condition: if buyers treat "my agent doesn't get hijacked" the way they treat "my car doesn't explode" — assumed, invisible when working, catastrophic when it fails — this can't anchor pricing. It has to disappear into the platform fee, not sell as a line item.

**4. Self-Determination Theory.** The staged-autonomy-ladder tension already named in the Alert Flood and Env Health mini-councils repeats here exactly: scope tight enough to catch agentjacking may be scope tight enough to make the coworker frustrating for the real-world variance MSPs need (the Vendor-Agnostic Runbooks fragment explicitly wants flexibility — "mix and choose the service per step"). This mechanism directly taxes that flexibility. Nobody's found the point where security-tight and useful-flexible coexist.

**5. Service Blueprint.** The backstage is empty. Who authors a Brief's scope? Who tunes tightness per client, per runbook, per coworker? Who re-reviews it when the client's environment changes? "A scope-tightness authoring/tuning layer" is named in Part 4's functionality list and designed nowhere. If nobody owns writing good scopes, the mechanism decays to whatever the first draft happened to be, forever.

**6. Value Chain / Porter.** If the conformance check lives inside the Runbook Engine, that's a real moat — nobody else has an equivalent structured-intent substrate. But if MSPs can loosen scopes freely with no review gate on the *scope itself* (only on actions), the moat evaporates — a Brief becomes a system prompt with a JSON wrapper, no better than what Barndoor or Kong already offer generically.

**7. Christensen / Disruptive Innovation.** Likely sustaining, not disruptive — nobody's waiting specifically for this mechanism; they're waiting for "trust I can explain to my board," and this is one possible answer among several. Losing condition: if it only reassures MSPs already inclined to adopt AI coworkers, it protects existing adoption rather than expanding the addressable market — smaller value than the pitch implies.

**8. Regulatory/Liability.** A scope-conformance log is exactly the audit artifact EU AI Act compliance wants (live 2026-08-02, owner `<TBD>`) — but only if it's reliable. Marketing "agentjacking defense" before it's proven risks the same warning-fatigue/false-permission failure already flagged for the Defensibility Layer's Unverified tier: an unearned safety claim can cause an MSP to grant *broader* access than they would have absent the claim. Overclaiming here is worse than silence.

**9. Wardley Mapping.** SPIFFE/SPIRE (Valarian's substrate) is already a CNCF open standard, and this whole market consolidated six times in twelve months. If "declared scope as security boundary" becomes an open MCP/A2A convention within 12–18 months — plausible at this pace — N-able's version isn't a moat, it's table stakes it happened to ship first.

**10. Tree-test.** Would an MSP choose ACP's scope enforcement over building governance on Barndoor/Kong, which many will already run for other reasons? If they already trust a general-purpose governance layer, ACP's version is a redundant, possibly-conflicting second check — a dead end in the buyer's decision tree unless it's clearly the *only* layer needed, which nothing here establishes.

### What we haven't thought about — the holes

**H1 — The Brief-authoring bottleneck.** Nobody's asked how long a sufficiently tight scope takes to write, or by whom. If it takes real expertise per client per runbook, it either becomes a services bottleneck that fights the "15-minute" promise elsewhere in the corpus, or gets auto-generated by AI — which reintroduces the exact trust problem one level up: an AI writing the constraint meant to keep AI misbehavior in check.

**H2 — Scope drift.** A Brief written correctly on day one goes stale as a client's environment changes. Nobody's named who re-reviews scopes, on what cadence, or what happens when a legitimately new action falls outside an old scope — block a real escalation (operator routes around the tool, the same failure mode already named for Ticket Triage's permission friction) or silently widen the scope (defeating the whole point)?

**H3 — The boring-exploit problem.** Tenet's demonstrated attack is the sexy scenario. The realistic one may be duller and worse: a coworker with a genuinely broad, legitimately-necessary scope ("manage the full ticket queue") gets a subtly wrong instruction that's fully within that broad scope. The narrower and more genuinely useful a coworker's necessary scope is, the *less* this defense differentiates from having nothing.

**H4 — False confidence, restated as its own hole, not just a council point.** Claiming a security property before it's proven is a liability-inversion risk, not just an ethics one — see council #8.

**H5 — The attack vector's applicability to ACP specifically has never been mapped.** What external content do ACP's coworkers actually read that could carry a hidden instruction — ticket bodies, client emails, third-party API responses normalized into a QBR? Nobody has enumerated ACP's real ingestion points to check whether Tenet's mechanism even transfers.

### Monte Carlo

| id | label | p | required |
|---|---|---|---|
| S1 | Scope-tightness achievable without making Briefs impractically narrow/slow to author | 0.35 | ✔ |
| S2 | The hidden-instruction attack vector applies to ACP's actual ingestion points | 0.50 | ✔ |
| S3 | Someone owns Brief authoring + re-review at a sustainable cadence | 0.40 | ✔ |
| S4 | MSPs perceive this as differentiated trust, not Kano-basic/unpriceable | 0.45 | ✔ |
| S5 | Doesn't collide with a third-party governance layer the MSP already runs | 0.55 | ✔ |

**Naive product:** 0.35 × 0.50 × 0.40 × 0.45 × 0.55 ≈ **1.7%.**

**Independence caveat:** S1 and S3 are correlated — without an owner, tightness drifts loose regardless of how well the first Brief was written. S4 and S5 are correlated — if it collides with a third-party layer MSPs already trust, it won't be perceived as differentiated either. True survival is probably higher than 1.7%, but the correlated-failure structure is real: fix ownership (S3) and tightness (S1) together, or neither moves.

**Sensitivity ranking:**
1. **S1 — scope-tightness.** Test: pull or draft 5–10 real Coworker Briefs, red-team each for an in-scope-but-malicious action sequence. Days, not weeks.
2. **S2 — attack-vector applicability.** Test: enumerate every external-content ingestion point across the five packages (what does QBR read from outside sources? What does Triage read from a ticket body?) and check for attacker-controlled content the way Tenet's Sentry report was.
3. **S3 — ownership.** A decision, not a technical unknown — name an owner, cheap.

### Oregon Trail

**BUILD — Ford 1: scope-tightness has no design.** The most probable death, and it's quiet: nobody writes tight scopes, the mechanism ships, and it catches nothing because everything stays technically in-scope. Also the cheapest to test.

**LAUNCH — Ford 2: marketing "agentjacking defense" before S2 is verified.** Claiming a security property untested against ACP's real attack surface is the liability-inversion risk (H4) made concrete.

**ADOPT — Ford 3: the authoring bottleneck meets the 15-minute promise.** If writing a sufficiently tight scope takes real time, it taxes the exact time-to-value metric the whole platform is measured against — discovered only after MSPs try to actually use it.

**DEFEND — Ford 4: commodity racing.** Declared-scope-as-security-boundary becoming an open MCP/A2A convention within 12–18 months, at the pace this market is consolidating, turns a first-mover advantage into table stakes fast.

**Verdict:** dies most probably at BUILD (Ford 1) — and that's the mercy, because it's also the cheapest death to test before committing further. ADOPT (Ford 3) is the more dangerous one, because it surfaces only after MSPs are already trying to use it, against the metric the whole pitch depends on.

**Naive floor ≈ 1.7%.** Read against the fleet: higher than Defensibility Layer standalone (~0.28%, no existing substrate) because this rides on architecture that already exists in some form (Coworker Brief, Runbook Engine, DSE, autonomy tiers) — same shape as why Package 3 outsurvives Package 5. The cheap test that moves the most probability is the same shape as everywhere else in this fleet: **run the red-team exercise against real Briefs before building anything else.**

---

## PART 6 — THE UPGRADE, THE MERGE, THE REVIVAL

Idea Chess named the exact thing killing Part 4: scope-tightness is human-authored, unowned, and drifts loose. Three moves, each combining ingredients already sitting elsewhere in this scan, fix or bypass that death rather than just naming it again.

### THE UPGRADE — Scoped Behavioral Conformance

**The combination:** Exabeam/DTEX's technique (baseline behavior, flag deviation) + ARMO's correct objection (you can't baseline "normal" for something whose job is to reason novelly) + the Coworker Brief's declared scope (native to ACP, nobody else has it).

**The move:** don't baseline the agent's behavior in general — ARMO is right that this fails. Baseline its behavior *within the declared scope*, learned from the Runbook Engine's own execution logs over the coworker's first N runs, not authored by a human up front. "Normal for classifying and routing tickets under 1000 chars" is a genuinely narrow, repetitive, learnable space — the exact opposite of "normal for an agent doing anything." This is the reconciliation the Idea Chess pass couldn't find: ARMO's objection holds at the general level and dissolves at the scoped level, because ACP already has the scope declaration nobody else does.

**What this fixes, concretely:**
- **Removes H1 (authoring bottleneck)** — nobody has to write a perfectly tight scope on day one; the system tightens itself from what the coworker actually does.
- **Removes most of S3 (ownership)** — self-maintaining, not requiring a human on a re-review cadence; a human only reviews flagged deviations, not the whole scope on a schedule.
- **Directly answers H3 (the boring-exploit problem)** — a broad-but-legitimate scope no longer defeats the check, because the baseline is behavioral *within* that scope, not the scope boundary itself.

**Updated Monte Carlo** (same five slots, re-estimated against the upgraded mechanism):

| id | label | p (was) | p (now) | why it moved |
|---|---|---|---|---|
| S1 | Intra-scope learned baseline is tractable | 0.35 | **0.55** | Narrowed problem — "normal within this declared job," not "normal for any agent" — sidesteps ARMO's actual objection instead of ignoring it |
| S2 | Attack vector applies to ACP's real ingestion points | 0.50 | 0.50 | Unchanged — still unmapped, still needs the enumeration test |
| S3 | Ownership sustained over time | 0.40 | **0.55** | Self-maintaining reduces but doesn't eliminate the human load — someone still reviews flags |
| S4 | Perceived as differentiated, not Kano-basic | 0.45 | **0.60** | Fixed by the reframe below (Part 6, third move), not by the mechanism itself |
| S5 | Doesn't collide with third-party governance | 0.55 | 0.55 | Unchanged |

**New naive floor:** 0.55 × 0.50 × 0.55 × 0.60 × 0.55 ≈ **5.0%** — roughly 3× the original 1.7%, and the improvement traces to a real mechanism change, not optimism.

### THE MERGE — one Activity Ledger, not two unspecced audit logs

**The combination:** the Alert Flood mini-council's own finding — "the log is the product, not a feature," and "the log's design is entirely undefined" ([council-mini-alert-flood.md](council-mini-alert-flood.md), Voice 4) — plus the scope-conformance mechanism above, which needs its own audit trail of flagged deviations.

**The move:** don't design two backstage audit surfaces. Both are structurally the same operation — compare a declared policy/scope against an actual action, log the delta, decide whether to surface it. Alert Flood's suppression log ("suppressed 400, escalated 3") and the coworker's scope-conformance log ("ran 4,000 actions, flagged 2 for review") are the same mechanism pointed at two different declared boundaries. Route both through the Value Ledger's existing "Activity Log" governance view (already dug in [acp-offerings-2026-07-14.md](acp-offerings-2026-07-14.md)) instead of building Alert Flood's log from scratch.

**Why this matters beyond convenience:** Alert Flood currently has zero design on its audit surface — this gives it one, for free, as a byproduct of building the security mechanism anyway. Two unspecced problems become one specced one.

### THE REFRAME — sell nothing standalone, feed it to the thing that's already #1

**The combination:** the Kano finding (governance won't sell as a line item) + the fleet synthesis's own prior recommendation (embed Defensibility Layer, don't sell it standalone) + the existing successful client-story pattern (Env Health's "caught 12 issues," Alert Flood's "suppressed 400, escalated 3").

**The move:** don't pitch scope-conformance as a security feature. Feed "every one of your coworker's actions this quarter stayed within its declared job, zero flagged deviations" into the QBR as a Value Ledger line — the same proof-point mechanism already working for the #1-demand package. This is why S4 above moves from 0.45 to 0.60: it stops trying to be sold and becomes evidence inside something that already sells.

**Combined effect:** the upgraded mechanism, merged audit surface, and QBR reframe together take a concept that was dying quietly at BUILD (1.7%) to one with a real, mechanism-traced path to ~5% — still low, correctly, but low for the right reasons now (S2's unmapped attack surface is the actual remaining blocker, not an unowned authoring process).

---

### THE REVIVAL — Cross-Coworker Reconciliation

**Why this is a revival, not a new idea:** Cross-Tool Reconciliation (Offering E) was voted off in the original Idea Chess fleet synthesis — ~0.34% naive, dies at gate-0 ("is it even ours to build"), because it required pulling data across *competitors'* tools, hitting the same data-egress wall that nearly killed Package 5. That's the death worth avoiding, not the idea itself.

**The combination:** HoneyHive's category — observability purpose-built for *multi-agent* systems, not single-agent — plus the fact that ACP's own coworkers (QBR, Env Health, Alert Flood, IR/RCA) already draw from overlapping first-party telemetry and could silently disagree with each other.

**1. Problem / wicked bit:** ACP's coworkers can contradict each other and nobody would know. The QBR coworker could tell a client "your environment is healthy" in the same quarter the Env Health coworker flagged drift it never escalated, or the Alert Flood coworker suppressed something the IR/RCA coworker later needed for an incident timeline. No product — not just no ACP feature, no product *anywhere* in this scan — checks whether an organization's own AI coworkers agree with each other before either output reaches a client.

**2. Tension (Kolko):** MSPs want each coworker doing its own job well, but the more coworkers ACP ships, the more likely two of them hold quietly conflicting facts about the same client — and nothing today would catch that before a client does.

**3. How Might We:** How might we let N-able's own coworkers check each other's work — using data ACP already owns, not data pulled from a competitor's tool — so a contradiction surfaces internally before it reaches a QBR or an incident report?

**Why this dodges Offering E's original death:** everything this needs is first-party, already-owned telemetry across ACP's own coworkers — no competitor ToS, no cross-vendor data-egress question, no marketplace/partner dependency. The gate-0 killer ("is it even ours to build") doesn't apply, because it's entirely inside data N-able already has the right to.

**Riskiest assumption:** that coworkers actually disagree often enough for this to matter, and that a disagreement is usually a real signal rather than two valid, non-contradictory views of complex data. Untested — cheap to check: run the coworkers already built (Triage, and whichever of Env Health/Alert Flood have any real execution history) against the same client-quarters and see how often their outputs would have actually conflicted.

**Naive read (lightweight, not a full pass):** required — (1) coworkers disagree often enough to matter [P≈0.40, untested], (2) a disagreement is legible/actionable rather than noise [P≈0.45], (3) this doesn't become its own new alert-flood problem — a coworker-disagreement log nobody reviews [P≈0.50, same shape as the merge above solves]. Naive floor ≈ 0.40 × 0.45 × 0.50 ≈ **9%** — the highest survival of anything new in this pass, precisely because it inherits none of the external dependencies that killed everything else.

**The bet:** [0% Claude — fill this in]

---

## HOW THIS CHANGES THE READING PACKET

- **Defensibility Layer fragment gets sharper:** it's not just a trust-tier vocabulary anymore — "be the first verified number in the category" is a real, sequenced strategy (Candidate 1), not just a labeling scheme.
- **The G4/platform-layer question gets a concrete two-part architecture** for the first time: SPIRE identity (Candidate 3, long-horizon) + Adlumin LOTL-methodology-on-coworkers (Candidate 2, cheap to spike now) — rather than one big unspecced "BIG QUESTION."
- **Package 2 (Ticket Triage)'s competitive risk should be weighted higher** — Thread is real, funded, and already integrated with the exact PSAs ACP needs, not a hypothetical.
- **Package 4 (IR/RCA) gets a cheap trust move** — a stated no-training-on-customer-data commitment, modeled on Rootly, costs nothing and directly answers the ~25% data-sovereignty skeptic segment.

---

*[CS:] tags per Band Protocol. Idea Chess survival %s are naive products of required-assumption probabilities under an independence assumption — directional, not forecasts. All three new candidates are [A] — my synthesis from the scan, not sourced findings; the bet on whether to pursue any of them stays `[0% Claude]`.*
