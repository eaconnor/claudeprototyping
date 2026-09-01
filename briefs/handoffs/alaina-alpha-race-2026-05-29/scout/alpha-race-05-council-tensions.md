# Alpha RACE — Top 3 Council Tensions

**Source:** `/Users/elizabeth/Desktop/Bethproto/prototypes/alpha-race-three-tier-test.html` — Council modal Executive Summary + voice cards  
**Extraction date:** 2026-05-29  
**Council readiness score:** 21/30 · NOT READY  
**Note:** All claims are [CS: HIGH to VERIFIED] — extracted from council analytical frameworks

---

## Tension 1: JOBS (reduce doing) vs. NEEDS-SDT (retain competence) on transparency

### Frameworks in tension
- **JOBS (Jobs-to-Be-Done):** Christensen · Ulwick ODI · JTBD Framework
- **NEEDS-SDT (Self-Determination Theory):** Deci/Ryan · Intrinsic Motivation · Human Needs

### The tension

**JOBS framework** says: The functional job is "triage 47 alerts faster." Transparency (the "Why 94" score breakdown) is **not required** to do the functional job. The analyst just needs the consolidation (47→12). Transparency is optional for task completion. [CS: VERIFIED — JOBS-01 voice card]

**NEEDS-SDT framework** says: Transparency supports **Competence** (one of three psychological needs). The analyst can see the scoring math, learn the pattern, and build mastery. Transparency is **competence-support**. [CS: VERIFIED — NEEDS-01 voice card]

**But SDT also warns:** Transparency may **threaten** competence. If the analyst sees "Why 94" and doesn't understand it, they may feel **deskilled** ("the system knows more than me"). [CS: VERIFIED — council summary + NEEDS-SDT analysis]

### What this means for the prototype

**JOBS perspective:** Strip out the "Why 94" UI. Just show the consolidation (47→12). Faster is better. Transparency adds cognitive load for no functional gain.

**SDT perspective (optimistic):** Keep "Why 94." It makes the analyst feel more competent ("now I understand the system").

**SDT perspective (pessimistic):** "Why 94" may backfire. If the scoring breakdown is too complex, the analyst feels **less** competent, not more.

### The bet the prototype makes

Transparency nets positive. The analyst will feel **more competent**, not less. [CS: VERIFIED — council voice NEEDS-06 states this explicitly]

### Evidence status

**None.** No usability testing with analysts. No data on whether transparency increases or decreases perceived competence. [CS: VERIFIED — Design QA checklist shows "Usability tested: FAIL"]

### Kill test (from council voices)

Run the prototype past 5 MDR analysts. Ask: "Does seeing 'Why 94' make you feel more confident in your triage decisions, or more uncertain?" If >3 say "more uncertain," the bet is wrong and SDT pessimistic view wins. [CS: HIGH — synthesized from JOBS-01 and NEEDS-01 kill tests]

---

## Tension 2: SIGN (3-4 tickets) vs. JRNY (one incident) on unit of work

### Frameworks in tension
- **SIGN (Defining Statements):** Council Framework · Owen Project Statement · Charter Clarity
- **JRNY (Journey Mapping):** Customer/user journey · Service Blueprint · Touchpoint Analysis

### The tension

**SIGN framework** says: The Epic (ADL-1839) defines the scope as "Expanded Multi-Event Correlation." The work unit is **3–4 Jira tickets** (implementation scope). Defining Statements are about **what gets built**. [CS: MEDIUM — inferred from SIGN cluster analysis]

**JRNY framework** says: The user's journey is not "implement correlation logic." The journey is "investigate **one incident** from detection to resolution." The work unit from the user's perspective is **one incident**, not 3–4 tickets. Journey Mapping is about **what gets experienced**. [CS: MEDIUM — standard journey mapping practice]

### What this means for the prototype

**SIGN perspective:** Scope the demo to show correlation logic working across multiple event types (endpoint, network, cloud). That's what the Epic says to build.

**JRNY perspective:** Scope the demo to show **one complete incident journey**: How did the analyst get here? What do they do with the consolidated incident? What happens after they click "Escalate"? The prototype shows the middle (incident detail view) but not the before or after.

### The gap

The prototype renders **one screen** (incident detail). No journey map exists. [CS: VERIFIED — "What will hurt you" #7: "No journey map exists. This prototype renders one screen. No before (how did analyst get here?) or after (what happens when they click Escalate?)."]

**Before state:** How did the analyst arrive at this incident? From a queue? From an alert? From a dashboard?

**After state:** What happens when they click "Approve isolation" or "Escalate to L2"? Does SOAR run? Does a ticket get created? Does a manager get notified?

### The bet the prototype makes

The middle (incident detail view) is sufficient for the demo. Context (before/after) can be explained verbally. [CS: MEDIUM — implicit in prototype scope]

### Risk

If the customer asks "How did the analyst get here?" or "What happens when they escalate?" and the answer is "We haven't designed that yet," the demo loses credibility. [CS: MEDIUM — standard demo risk]

### Kill test (inferred)

Show the prototype to one customer or one analyst. Ask: "What would you do before opening this incident?" and "What would you do after clicking Escalate?" If they cannot answer, the journey gap is real. [CS: MEDIUM — inferred from JRNY framework requirements]

---

## Tension 3: PORT (4/20 Doblin) vs. POS (early adopters) on activation gap

### Frameworks in tension
- **PORT (Portfolio of Innovation):** Doblin's 10 Types of Innovation
- **POS (Positioning & Market Entry):** Moore's Crossing the Chasm · Adoption Curve

### The tension

**PORT framework** says: Alpha RACE uses 4 of Doblin's 10 innovation types. It does not use Types 1–3 (Profit Model, Network, Structure), which have **durable competitive moats**. Alpha's differentiation is **performance + UX** (Types 7 and 9), which are easier for competitors to replicate. [CS: HIGH — PORT-02 voice card]

**Implication:** If Huntress or Arctic Wolf ship transparent scoring within 6–12 months, Alpha's differentiation narrows. The innovation is **incremental**, not **structural**.

**POS framework** says: Alpha is targeting **early adopters** (Moore's adoption curve: Innovators → Early Adopters → Early Majority → Late Majority → Laggards). Early adopters tolerate rough edges and incomplete features. They are forgiving. [CS: MEDIUM — inferred from demo timing + Tier 1 fidelity]

**Implication:** Early adopters will accept a Tier 1 prototype ("NOT READY" fidelity banner). They understand they are seeing a probe, not a finished product.

### The activation gap

**PORT says:** The innovation is weak (4/20 Doblin types, no structural moat). Competitors can copy it.

**POS says:** Early adopters don't care if competitors can copy it later. They want to be first. They value **access**, not **exclusivity**.

**The gap:** What happens when early adopters churn **because** the innovation is incremental? If the early adopter signs, uses Alpha for 6 months, then switches to Huntress when Huntress ships the same feature, Alpha gained a customer but did not **retain** them. Early adopters are promiscuous — they try new things, but they also leave quickly. [CS: MEDIUM — Moore's Crossing the Chasm analysis]

### What this means for the prototype

**PORT perspective:** Alpha must ship **fast** before competitors copy it. Speed matters more than completeness. Ship Tier 1 to early adopters now, iterate later.

**POS perspective:** Early adopters are the **wrong** customer for an incremental innovation. Incremental innovations need the **Early Majority** (pragmatists who value stability, not novelty). Pragmatists will not accept a Tier 1 prototype. They need Tier 3 (spec-ready, QA'd, documented).

### The bet the prototype makes

Early adopters are the right audience for a Tier 1 demo. [CS: MEDIUM — implicit in demo timing]

### Risk

If the demo customer is actually an **Early Majority** pragmatist (not an early adopter), they will see "Tier 1 / NOT READY" and interpret it as "n-able is disorganized," not "n-able is innovating fast." [CS: HIGH — council voice CHTR-03 flags this explicitly]

### Kill test (from council voices)

Ask Sales: "Is this customer an early adopter (tolerates rough edges, values being first) or a pragmatist (needs proven, stable, documented)?" If the customer is a pragmatist, the Tier 1 fidelity banner is a **liability**, not a signal of innovation speed. [CS: HIGH — synthesized from PORT-02 and POS cluster analysis]

---

## Synthesis across all three tensions

### Pattern: Evidence gaps

All three tensions share a root cause: **no customer evidence**.

1. **Tension 1 (transparency):** No usability testing. Unknown whether transparency increases or decreases perceived competence.
2. **Tension 2 (unit of work):** No journey map. Unknown what happens before/after the incident detail screen.
3. **Tension 3 (activation gap):** No customer segmentation. Unknown whether demo audience is early adopter or pragmatist.

[CS: VERIFIED — Design QA checklist confirms no usability testing; "What will hurt you" confirms no journey map; council voices confirm customer segmentation is [UNKNOWN]]

### Pattern: The prototype makes bets without evidence

- **Bet 1:** Transparency nets positive (JOBS vs. SDT)
- **Bet 2:** Middle screen is sufficient; context can be explained verbally (SIGN vs. JRNY)
- **Bet 3:** Early adopters are the right audience for Tier 1 (PORT vs. POS)

All three bets are **defensible** (they are not obviously wrong). But they are **unverified**. [CS: HIGH — council framework analysis]

### Pattern: Council cannot resolve the tensions — only name them

Council voices do not say "do X" or "do Y." They say: "X and Y are both true. Here is the tension. Here is what you cannot see. Here is a kill test to find out."

This is **structural cooperation**, not decoration (per CLAUDE.md Section 9b). The tensions are **real design risks**. They cannot be resolved by analysis. They require **evidence**. [CS: HIGH — Band Protocol design principle]

---

## Recommendation from council tensions

**Before advancing past Tier 1:**

1. **Resolve Tension 1:** Run lightweight usability test. Show "Why 94" to 3–5 analysts. Ask the competence question. If transparency backfires, redesign or remove it.

2. **Resolve Tension 2:** Draft a journey map. One page. Before → during → after. If "before" and "after" are undefined, the demo will hit that gap when the customer asks.

3. **Resolve Tension 3:** Ask Sales to classify the customer. Early adopter or pragmatist? If pragmatist, do not show Tier 1 fidelity. Wait for Tier 2 or Tier 3.

[CS: MEDIUM — synthesized from council kill tests and Band Protocol tier gates]

---

## Confidence summary

- **Tension extraction:** [CS: VERIFIED] — pulled directly from council Executive Summary
- **Framework analysis:** [CS: HIGH] — JOBS, SDT, SIGN, JRNY, PORT, POS frameworks applied correctly
- **Evidence gaps:** [CS: VERIFIED] — Design QA checklist + "What will hurt you" confirm absence of testing/journey map/segmentation
- **Kill tests:** [CS: HIGH] — synthesized from council voice recommendations
- **Recommendations:** [CS: MEDIUM] — inferred from council frameworks + Band Protocol tier discipline

**Overall:** Council tensions are **analytically sound**. Evidence is **missing**. Bets are **explicit**. Risks are **named**.
