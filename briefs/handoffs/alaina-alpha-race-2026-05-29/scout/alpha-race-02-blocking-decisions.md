# Alpha RACE — Four Blocking Decisions (PM Action Dashboard)

**Source:** `/Users/elizabeth/Desktop/Bethproto/prototypes/alpha-race-three-tier-test.html` — PM Action Dashboard cards  
**Extraction date:** 2026-05-29  
**Status:** All four decisions are blocking full build; brief cannot proceed past Tier 1 until resolved

---

## Decision 1 — Customer profile

**Card anchor:** Metrics strip · Customer name  
**Question:** Who is this demo actually for?  
**Routed to:** Product  

### Meet with
**Beth Schwindt** + **Raj Dhesi** · with Sales/CSM input

### Why this meeting
The incident story is anchored to a fictional construction company in a mid-market environment. That's a placeholder. Every content decision in this prototype — asset type, attack surface, score context, "why this matters to you" — scales from this one call. [CS: VERIFIED — direct quote from card]

### Sample items to address
- What vertical does the actual customer operate in?
- What's their endpoint count and SOC maturity level?
- What tooling are they running today?
- What's the fictional proxy profile that goes in the prototype?

### Decision you own coming out
The fictional customer profile the full build runs against. This unblocks every other content decision in this shell. [CS: VERIFIED]

### ROI from this decision
- **Business:** Unknown — industry-matched vs. generic demo conversion lift [CS: UNKNOWN — no data exists]
- **User:** Unknown — no data on vertical-matched comprehension [CS: UNKNOWN]

---

## Decision 2 — Success criteria

**Card anchor:** Metrics strip · KPIs  
**Question:** What does this demo need to trigger?  
**Routed to:** Product  

### Meet with
**Beth Schwindt** + Sales lead

### Why this meeting
Gate 3 of the brief is almost entirely [?]. Without a success definition the prototype can't be validated, the demo can't be debriefed, and "it went well" means nothing. The brief currently marks the OKR key result as "[?] Customer signs/expands after demo" — that's aspirational, not testable for this specific interaction. [CS: VERIFIED — direct quote from card]

### Sample items to address
- What commitment from the customer counts as a win? (Next meeting? Pilot scoping? Contract?)
- What does a failed demo look like?
- Does Sales have a standard ask at this stage?

### Decision you own coming out
One sentence: "This demo succeeds when ___." That sentence defines Gate 3 and makes the prototype testable against a real criterion. [CS: VERIFIED]

### ROI from this decision
- **Business:** Defined success criteria reduce wasted demo cycles [CS: MEDIUM — standard product management practice]
- **User:** Beth + Sales aligned before the room → clearer debrief [CS: HIGH]

---

## Decision 3 — Incident story source

**Card anchor:** Story section  
**Question:** Real Alpha output or Beth-designed synthetic?  
**Routed to:** Product + Eng  

### Meet with
**Raj Dhesi** (Alpha engine) + **Beth Schwindt**

### Why this meeting
The prototype uses a synthetic lateral movement story. That's illustrative. The demo's credibility depends on whether the story reflects what Alpha's engine actually produces. If Raj can provide a real correlated incident (anonymized), the story earns credibility the current placeholder can't. If the engine isn't there yet, Beth designs a synthetic story mapped to the customer's industry. [CS: VERIFIED — direct quote from card]

### Sample items to address
- Is Alpha's correlation output ready for demo use?
- If Option A (real): can Raj pull one real incident and anonymize it?
- If Option B (synthetic): what does Raj need to give Beth?
- Pete Hegseth rule: real company names, real tenant IDs → stay out of the HTML.

### Decision you own coming out
Option A (real Alpha output, anonymized) or Option B (Beth-designed synthetic). Either is defensible. It has to be chosen before content is written. [CS: VERIFIED]

### ROI from this decision
- **Business:** Unknown — real vs. synthetic demo story conversion difference [CS: UNKNOWN]
- **User:** If Option A: saves Beth ~2–4h incident story research [CS: MEDIUM — time estimate]

---

## Decision 4 — Narrative validation

**Card anchor:** Story format · "what/what we did/next"  
**Question:** Has this narrative structure been tested?  
**Routed to:** Research  

### Meet with
**Raj Dhesi** + **Julian Mason** (Research) if available

### Why this meeting
Twelve of the brief's [A] claims reduce to one underlying assumption: "what happened / what we did / what to do next" is comprehensible to a customer without explanation. Phase 1 used this format with analysts. Phase 2 puts it in front of customers. Those audiences are different — the gap between "analyst reads it immediately" and "customer needs 10 minutes to parse" may matter at demo time. [CS: VERIFIED — direct quote from card]

### Sample items to address
- Has any analyst given feedback on this format? What did they say?
- Has it been shown to a customer — even once, casually?
- Ewan's hypothesis (ADL-1837) names three competing mental models — was any tested?

### Decision you own coming out
What evidence exists. If yes: tell Beth what was tested and what was learned. If no: acknowledge it, flag for post-demo research, and the brief carries the assumption explicitly. [CS: VERIFIED]

### ROI from this decision
- **Business:** Unknown — narrative failure rate on customer demos has no data [CS: UNKNOWN]
- **User:** If tested first: ~1 week research prevents rebuilding narrative post-launch [CS: MEDIUM — time estimate]

---

## Routing summary

All four decisions route through **Beth Schwindt** (UX / Band Protocol maintainer).

| Decision | Primary meet | Secondary | Team tag |
|----------|-------------|-----------|----------|
| 1 — Customer profile | Beth + Raj | Sales/CSM input | Product |
| 2 — Success criteria | Beth + Sales lead | — | Product |
| 3 — Incident story source | Raj + Beth | — | Product + Eng |
| 4 — Narrative validation | Raj + Julian (Research) | — | Research |

**Critical path:** Decision 1 (customer profile) blocks Decision 3 (incident story source). Decision 2 (success criteria) is independent but gates the entire demo. Decision 4 (narrative validation) can proceed in parallel but may reveal need to redesign story format. [CS: MEDIUM — inferred from card dependencies]

---

## Brief readiness blocker

**The 65% rule:**  
Brief contains 65% [A]/[?] claims. Band Protocol threshold for full build is ≤30% assumed/unknown. Until these four decisions resolve, the brief remains at Tier 1 (Concept) and cannot advance to Tier 2 (Direction) or Tier 3 (Spec-ready). [CS: VERIFIED — stated in Bradley rail "What will hurt you"]

**Oregon Trail principle (council voice CHTR-02):**  
"Restock the wagon before leaving Independence. You have the map (Phase lineage + PM Action Dashboard). You need the provisions (customer profile + success criteria + incident story source + narrative validation)." [CS: VERIFIED — direct quote from council voice]
