# Alpha RACE Lo-Fi Prototype — Bradley Rail (Portable Markdown)

**Project:** Alpha RACE Customer Demo (Tier 1 Concept)  
**Readiness:** 21/30 — NOT READY  
**Brief [A]+[?]:** 58% (world-claims, grep-verified)  
**Tier:** 1 (Concept — stakeholder/exec review)

---

## What This Tests

Does consolidating 47 alerts → 12 incidents communicate value to customer buyers (CISOs, IT Directors) in a 30-second read?

---

## What You Nailed

- Problem traceability (Hilda quote "3-4 tickets turn out to be one incident" → 47→12 consolidation logic)
- Failure mode naming (4 modes with detection criteria: compression illusion, evidence-free conviction, synthetic-data trust erosion, selling to wrong buyer)
- Honest math (58% [A]+[?] disclosed in brief frontmatter; math recount file shows work)
- Council tensions (3 framework clashes named: JOBS×SDT, SIGN×JRNY, PORT×POS)
- Fidelity transparency (T1 appropriate for concept; banner honest; stakeholder-ready, not customer-ready)

---

## What Will Hurt You

- **Gate 2:** Theory of Change has three untested leaps (customer comprehends 47→12 without explanation / customer interprets consolidation as value not opacity risk / demo conviction translates to buying decision)
- **Gate 3:** Nearly empty (success criteria undefined, test plan outlined but not executed, four blocking decisions unresolved)
- **Competitive positioning:** Zero competitive analysis (no CrowdStrike/Arctic Wolf/Huntress feature parity check)
- **Economic buyer gap:** Demo optimized for analyst (user buyer: speed), not CISO (economic buyer: ROI, defensibility, audit logs, analyst retention)
- **Source fidelity:** 58% [A]+[?] is most generous of three counts; strict count is 68.5%; insufficient for customer demo per Band Protocol <30% threshold
- **Four blocking decisions unresolved:** (1) customer profile, (2) success criteria, (3) incident story source (real vs synthetic), (4) narrative format validation for CISOs
- **Compression illusion risk:** T1 fidelity shipped to customer without framing = customer perceives "NOT READY" banner as "n-able is unprepared" not "this is a probe"

---

## Routing (Routed Cards)

### Product

**Product does:** Resolve Decisions 1-2 (customer profile, success criteria)

**Why now:** Every content decision scales from customer profile (asset type, attack surface, CISO metrics all inherit from this). Demo is untestable without success criteria (cannot distinguish polite interest from real conviction).

**If you ship without it:** Compression illusion fires (Failure Mode 1). Demo runs with generic "Acme Building Supply" placeholder. Customer asks "Whose industry is this?" Credibility collapses mid-presentation.

**[ROI]**
- **Business:** Unknown — need success criteria to measure conversion lift (no baseline)
- **User:** PM + Sales aligned on customer profile + success definition before demo = no mismatched expectations
- **Unknown:** Demo conversion lift (no A/B test data; baseline = polite interest with no next-action commitment)

---

### Design

**Design does:** Comprehension test — show "47→12" screen to 5 people cold, 30 seconds, ask "What does this tool do?"

**Why now:** Opacity risk (Tension 2: SIGN×JRNY). Customer may read "47→12" as "What happened to the other 35 alerts?" (signal suppression) instead of "workload reduction" (intended value prop). Peirce semiotics: sign admits two interpretant readings; without narration, customer chooses.

**If you ship without it:** Value prop collapses if consolidation misread as opacity. Customer does not trust tool that "hides alerts from me." CISO risk-aversion bias amplifies this (prior experience with "black box AI" that suppressed critical signals).

**[ROI]**
- **User:** Avoid redesign mid-customer-demo (comprehension test fails = add narration layer or redesign hero metric before showing to customer)
- **Unknown:** Reading order (Story / Timeline / Scoring — which section do customers anchor to first? Eye-tracking or 10-person usability test required to answer)

---

### Research

**Research does:** Decision 4 validation — test "What happened / What we did / What to do next" narrative format with 5 CISOs (not analysts)

**Why now:** Format tested with analysts (users), not buyers (customers). Economic buyer (CISO) may not see ROI, audit-log value, or breach-prevention defensibility in analyst-optimized narrative (Failure Mode 4: selling to wrong buyer).

**If you ship without it:** Narrative format lands with user buyer (analyst: speed) but not economic buyer (CISO: defensibility). CISO sits in room, does not see their concerns addressed, does not commit to next action.

**[ROI]**
- **Business:** Unknown — narrative failure rate has no data (no test run yet)
- **Unknown:** Economic buyer profile (CISO? IT Director? CFO? Decision 1 must specify; different buyers have different value perception patterns per Economic Buyer [MKT] council voice)

---

### Eng

**Eng does:** Decision 3 — determine incident story source (real Alpha output anonymized vs. Beth-designed synthetic)

**Why now:** Demo credibility depends on this call (counter-metric in brief line 8: "customer must not perceive synthetic data as misleading"). Customer will ask "Is this real data?" SE must have confident answer.

**If you ship without it:** Trust erosion (Failure Mode 3). If SE says "No, it's illustrative," customer infers: Alpha doesn't work yet, or n-able doesn't trust their own output. If SE says "Yes" but story is synthetic, ethics violation.

**[ROI]**
- **User:** Credible demo (real output) vs. polished-but-fake (synthetic optimized for demo, not for truth)
- **Unknown:** Schema completeness (IncidentDetail, CorrelationLink, AlphaScoreBreakdown — are these real Alpha output structures or Build-invented placeholders? Raj must verify)

---

**End of Bradley rail. See HANDOFF.md for three calls + NEXT-STEPS.md for decision resolution plan.**
