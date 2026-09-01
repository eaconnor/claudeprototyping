# MSP QBR/EBR Secondary Research — Handoff for UX Brief Updates

**Purpose:** This document summarises the key findings from a secondary research sprint on MSP QBR/EBR practices. Use it to update any UX briefs, experience map documents, or design briefs related to the MSP QBR/EBR experience.

**Research files:** The full secondary research is in:
- `MSP_QBR_EBR_Secondary_Research.docx` — 20 sourced sections, paraphrased and synthesised
- `MSP_QBR_EBR_Abductive_Analysis.xlsx` — abductive analysis: what confirms, challenges, and is still missing

---

## Critical Findings to Reflect in UX Briefs

### 1. The automation boundary is clear — design for the human 20%, not the data 80%

Every source converges on the same finding: AI and automation can handle 80–99% of QBR *preparation* (data extraction, formatting, KPI calculation, slide generation). This is a solved problem. Tools like UpdateMate.ai, InsightFactory, Arahi, Korl, and Matik already do it.

**The unsolved problem — and the design opportunity — is the strategic conversation itself.** The part that cannot be automated is: relationship intelligence, narrative framing, knowing what the client cares about *this quarter*, and translating data into a business story that is credible to a CFO or CEO.

**UX brief implication:** If any brief frames N-able's opportunity as "automating QBR prep" or "generating the report," that framing is already commoditised. The brief should orient toward *enabling better strategic conversations* — what happens in the room (or on the call), not what happens before it.

Sources: InsightFactory (80/20), Taskade (99/1%), Parsons (80% prep reduction), Gartner (agentic AI 3–6 years), Reddit r/CustomerSuccess threads.

---

### 2. There are two QBR meetings happening at once — and they have different purposes

**The MSP's intent:** relationship-building, upsell, demonstrating value, retention.

**The client's intent:** accountability verification, checking the contract is being honoured, getting answers to their specific concerns.

These two agendas often go unspoken. The MSP runs a meeting designed to impress; the client attends hoping their concerns get addressed. When they don't align, the client leaves frustrated even if the data looked good.

**UX brief implication:** Any design of the QBR experience needs to serve *both* agendas explicitly — not just the MSP's. The experience map should have a client-side lane, not just an MSP-side lane.

Sources: TechWyse (client-facing, Aug 2024), Kelser Corporation (client-facing, Feb 2025), Exigent Technologies (client-facing, Aug 2024).

---

### 3. The agenda asymmetry is a structural experience problem

TechWyse explicitly acknowledges: "often the agenda is driven by the MSP." Clients are frequently passive recipients. Exigent's article is titled "demand" business reviews — implying clients sometimes have to ask for them at all.

This means the QBR experience starts *before the meeting*: with whether it is scheduled, whether the client was invited to contribute agenda items, and whether the right stakeholders (CFO, CEO, operations lead) are in the room.

**UX brief implication:** The pre-meeting experience (scheduling, agenda co-creation, stakeholder alignment) is as important as the meeting itself. Briefs that start with "the meeting" are missing the upstream problem.

---

### 4. The client-side question set reveals what clients actually want

Across TechWyse, Kelser, and Exigent, clients consistently want answers across five categories:
1. **Performance verification** — KPIs, SLAs, uptime, ticket ratios (did you deliver what you promised?)
2. **Issues and resolution** — what went wrong, what was done about it, what will prevent recurrence
3. **Security and compliance** — are we protected, are there new requirements we need to meet?
4. **Cost and value** — are we getting ROI, are there savings we should know about, what big costs are coming?
5. **Roadmap and forward planning** — what should we be doing next, what is the MSP seeing that we should know about?

**The sixth thing clients want but rarely ask for explicitly:** proactive advice. They expect the MSP to surface issues and opportunities the client didn't know to ask about. This is the advisory gap — and it is where most QBR relationships underperform.

**UX brief implication:** Any QBR tool or experience design should structure the meeting around these five categories from the *client's* perspective, not just the MSP's reporting categories.

---

### 5. QBR vs. EBR is meaningful — not interchangeable

EBR = C-suite, strategic, annual/semi-annual, outcome and ROI language.
QBR = operational/account team, quarterly, metrics and SLA language.

Conflating them dilutes both. A QBR deck sent to a CFO without translating operational metrics into business outcomes is a common failure mode.

**UX brief implication:** If the brief covers both, it needs separate design considerations for each. If it only covers one, it should say so explicitly and not assume the design transfers.

---

### 6. The vCIO is a key touchpoint — and a tier differentiator

Strategic accounts get a vCIO-led QBR (executive-level, strategic framing). Smaller accounts get a more operational review. This tier distinction is not always explicit in MSP tooling or experience design.

**UX brief implication:** The experience design may need to differentiate by account tier — not just by content, but by who leads the meeting, what language is used, and what the client is expected to walk away with.

---

### 7. Post-QBR action item follow-through is a known gap

Multiple sources note that action items agreed in a QBR frequently fail to be tracked or completed. The handoff from "agreed in the meeting" to "tracked in the PSA/CRM" is broken in many MSPs.

Journeyz describes AI-suggested next steps post-QBR as a differentiating feature. This is the loop-closing problem: the QBR generates commitments, but there is no reliable system for surfacing those commitments at the *next* QBR.

**UX brief implication:** The QBR experience does not end when the meeting ends. The post-meeting workflow (action items, owner assignment, follow-through tracking, surfacing at next QBR) is part of the experience and a significant design opportunity.

---

### 8. Relationship intelligence is undocumented — and that's a systemic risk

The "final 20%" that cannot be automated requires the CSM/account manager to know: what was promised last quarter, what the client cares about most, what sensitivities exist in the relationship, what the client's business context is right now.

This information currently lives in the account manager's head, or scattered across emails and CRM notes. It is not structured, not transferable, and lost when the account manager leaves.

**UX brief implication:** A QBR experience that does not address relationship intelligence capture is building on sand. The brief should consider where relationship context is stored, how it is surfaced before a QBR, and how it is updated after one.

---

## Sources Used in This Research Sprint

| # | Source | Type | Date | Perspective |
|---|--------|------|------|-------------|
| 1 | Kaseya QBR definitions | Vendor | 2024 | MSP-facing |
| 2 | ConnectWise QBR guide | Vendor | 2024 | MSP-facing |
| 3 | Mooncamp QBR/EBR guide | SaaS/CS | 2024 | CS-facing |
| 4 | Salesforce QBR guide | Vendor | 2024 | CS-facing |
| 5 | Urlocker "EBR" article | Practitioner | 2024 | CS-facing |
| 6 | Reddit r/CustomerSuccess — "Automated QBRs - Thoughts" | Community | ~2024 | Practitioner |
| 7 | InsightFactory AI case study | Vendor | 2025 | MSP-facing |
| 8 | Gartner Emerging Tech Impact Radar: GenAI | Analyst | Feb 2025 | Industry |
| 9 | Reddit r/CustomerSuccess — "QBR Deck Automation?" | Community | ~2024 | Practitioner |
| 10 | QBR automation tool landscape (UpdateMate, Korl, Arahi, Taskade) | Vendor synthesis | 2024–25 | Vendor |
| 11 | Journeyz AI-elevated QBR framework | Vendor | 2024–25 | CS-facing |
| 12 | Adam Parsons LinkedIn article | Practitioner | June 2025 | CS practitioner |
| 13 | TechWyse LinkedIn article | MSP writing for clients | Aug 2024 | **Client-facing** |
| 14 | Kelser Corporation blog | MSP writing for clients | Feb 2025 | **Client-facing** |
| 15 | Exigent Technologies blog | MSP writing for clients | Aug 2024 | **Client-facing** |

---

## Still Missing — Research Gaps

1. **Direct client voice** — No source in this research is written *by* an MSP client about their QBR experience. All client-facing content is still written by MSPs. Qualitative interviews or survey data from MSP end-clients is the biggest remaining gap for the experience map.

2. **N-able-specific context** — How do N-able MSP partners currently run QBRs? What tools do they use? What is their QBR frequency and coverage? Internal data or partner interviews needed.

3. **EBR-specific** — Most research conflates QBR and EBR. Almost no source addresses EBR design, C-suite audience, or annual review format specifically.

4. **MSP tool ecosystem (ScalePad, BrightGauge, Liongard)** — These are the tools MSPs actually use to generate QBR data. How do they shape the QBR experience? Not reviewed in this sprint.

5. **QBR failure modes** — What does a bad QBR look like from the client's perspective? No source addresses this directly. This is the highest-stakes experience design question.
