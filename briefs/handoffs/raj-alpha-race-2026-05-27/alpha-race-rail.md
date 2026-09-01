# PM Action Dashboard — Alpha RACE Customer Demo · Phase 2

*Right-panel content from `alpha-race-phase2-shell.html`, extracted as portable markdown. Same content; readable without opening the HTML.*

---

Four places in this prototype need a cross-functional decision before the customer demo ships. Each card below maps to a numbered hotspot on the prototype when Review Mode is on.

**This dashboard is meeting-prep, not a design verdict.**

| Needs | Who |
|-------|-----|
| 2 decisions | Beth + Raj |
| 1 decision | Beth + Sales |
| 1 decision | Raj + Research |

---

## ● What you need to decide before this ships

### Card 1 · Customer profile anchor — "Acme Bldg Supply"
**Decision: Who is this demo actually for?**

**Meet with:** Beth + Sales/CSM

**Why this meeting:**
The incident story is anchored to a fictional construction company in a mid-market environment. That's a placeholder, not a choice. Every other content decision in the prototype (asset type, attack surface, risk score context, "why this matters to you") scales from this one.

**Sample items to address:**
- What vertical does the actual customer operate in?
- What's their approximate endpoint count and SOC maturity?
- What tooling are they replacing or consolidating? (The "four separate tickets" framing only lands if that matches their current workflow.)

**What you need to know going in:**
If Sales briefs Beth on customer pain specifically (current alert volume, past incident that got missed), the incident story can be tuned to resonate rather than illustrate generically.

**Decision you own coming out:**
The fictional customer proxy profile that the full prototype builds against. This is the only content decision that unblocks everything else.

[ROI]
  Business: Unknown — customer-specific incident story vs. generic demo has unknown conversion lift [CS: UNKNOWN]
  User: Unknown — no data on whether vertical-matched demos improve comprehension [CS: UNKNOWN]

---

### Card 2 · Success criteria — undefined Gate 3
**Decision: What does this demo need to trigger?**

**Meet with:** Beth + Sales lead

**Why this meeting:**
Gate 3 of the brief is almost entirely [?]. Three success criteria are listed as unknowns: comprehension time, value articulation, and commitment/next step. Without a success definition, the prototype can't be validated and the demo can't be debriefed.

**Sample items to address:**
- What commitment from the customer counts as a win? (Next meeting? Pilot scoping? Contract?)
- What would a failed demo look like? (Customer says "interesting, let us think about it" → what does that mean for the deal?)
- Does Sales have a standard ask at this stage of the sales motion?

**What you need to know going in:**
The brief currently includes this claim as [A]: "Customer signs or expands after prototype demo." That's an OKR key result, not a testable criterion for this specific demo. The criterion needs to be scoped to what's realistic for a first demo.

**Decision you own coming out:**
One sentence: "This demo succeeds when ___." That sentence redefines Gate 3 and makes the prototype testable.

[ROI]
  Business: Defined success criteria reduce wasted demo cycles — value is real but unquantified [CS: MEDIUM]
  User: Beth + Sales aligned before the room → fewer "what did they think?" ambiguities [CS: HIGH]

---

### Card 3 · Incident story content — source undefined
**Decision: Real Alpha output or Beth-designed synthetic?**

**Meet with:** Raj Dhesi (Alpha engine)

**Why this meeting:**
The prototype currently uses a synthetic lateral movement story. That's illustrative. The credibility of the demo depends on whether the story matches (a) what Alpha's engine actually produces and (b) what a real incident in the customer's environment looks like.

**Sample items to address:**
- Is Alpha's correlation output ready for demo use? (Format, completeness, accuracy?)
- Can Raj provide a real correlated incident from the beta dataset, anonymized to fictional identities?
- If synthetic: what does Raj need to provide (attack type, asset profile, affected services) so Beth can design a credible incident story?

**What you need to know going in:**
"Real" means anonymized real. Not the actual customer's data — fictional company names, fictional users, fictional hosts. The pattern and evidence structure is real. (Pete Hegseth test applies to what goes in the HTML, not to the design reference Raj sends Beth.)

**Decision you own coming out:**
Option A (real Alpha output, anonymized) or Option B (Beth-designed synthetic mapped to customer's industry). Either is defensible. But it has to be chosen before content is written.

[ROI]
  Business: Real output vs. synthetic: unknown conversion difference [CS: UNKNOWN]
  User: Raj saves Beth ~2–4 hours of incident story research if Option A works [CS: MEDIUM]

---

### Card 4 · Narrative structure — "what/why/next" is [A]
**Decision: Has this format been tested with anyone?**

**Meet with:** Raj + Research (Julian Mason if available)

**Why this meeting:**
The brief has twelve [A] claims. Seven of them reduce to one assumption: the "what happened / why it matters / what to do next" narrative structure is comprehensible without explanation. Phase 1 built on this format. Phase 2 puts it in front of customers, not just analysts. The gap between those two audiences may be significant.

**Sample items to address:**
- Has any analyst given feedback on the narrative format? What did they say?
- Has it been shown to a customer, even casually? What was their first question?
- Ewan's hypothesis (ADL-1837) names three competing mental models for how users calibrate trust in the system — has any of those been tested?

**What you need to know going in:**
If the answer is "yes, and here's what we learned," seven [A] claims resolve to [R] and the brief gets substantially stronger. If the answer is "no," the demo ships on assumption. That's honest, and the brief says so explicitly. Named risk beats invisible risk.

**Decision you own coming out:**
What evidence exists for the narrative format. If none: acknowledge it and flag for post-demo research. If some: tell Beth what was tested and what was learned.

[ROI]
  Business: Unknown — comprehension failure rate on customer narrative has no data [CS: UNKNOWN]
  User: If tested: ~1 week of research prevents rebuilding the narrative post-launch [CS: MEDIUM]

---

## Receipts referenced in this dashboard

- [ADL-1839](https://n-able.atlassian.net/browse/ADL-1839) — Alpha RACE customer prototype brief
- [ADL-1836](https://n-able.atlassian.net/browse/ADL-1836) — Alpha (RACE) feature
- [ADL-1837](https://n-able.atlassian.net/browse/ADL-1837) — Research spike (Daniel + Raj sponsored)
- [PUT-1166](https://n-able.atlassian.net/browse/PUT-1166) — Phase 1 ship (Black Team MDR)

---

*Dashboard is meeting-prep, not design verdict. Decisions live with Raj + Beth. Updated 2026-05-27.*

→ Four decisions. Then build runs.
→ Bring Sales, Raj, and Research into the room before the customer demo ships.
→ Next pipeline run: when all four answers land.
