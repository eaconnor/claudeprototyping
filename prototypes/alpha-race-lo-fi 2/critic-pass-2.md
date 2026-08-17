# Critic Pass-2 — Alpha RACE (Post-Build Re-Score)

Brief: `briefs/alpha-race.brief.md`
Prototype: `prototypes/alpha-race-lo-fi/index.html`
Pre-build: `prototypes/alpha-race-lo-fi/critic-pass-1.md`
Pass: POST-BUILD (pass-2) · Tier 1 Concept · stakeholder/exec demo

---

## Delta table (pre-build → post-build)

| Dimension | Pre | Post | Δ | Reason |
|---|---|---|---|---|
| 1. Coherence | 4/5 | 5/5 | **+1** | Hero metric + correlation grid materialize the 47→12 trace; solution-to-problem line is now visible on the surface. |
| 2. Source-fidelity | 2/5 | 2/5 | **0** | Build inherits brief's 58% [A]+[?]; no new sourcing. Seed stamps add transparency but not fidelity. |
| 3. Demo-ability | 4/5 | 5/5 | **+1** | Working HTML with live mode toggle, collapsible rail, council modal. Immediately showable. |
| 4. Differentiation | 1/5 | 1/5 | **0** | No competitive positioning added. Gap remains. |
| 5. Risk | 5/5 | 4/5 | **-1** | Failure modes named in rail, but fidelity banner *creates* Failure Mode 1 risk (customer reads "NOT READY" as unprepared). CISO section unvalidated (Decision 4 unresolved). |
| 6. Scope discipline | 3/5 | 3/5 | **0** | One screen as specified, but CISO section is scope expansion. Balances: tighter execution, new unvalidated content. |

**Summary:** +2 net gain (24/30 pre → 26/30 post). Coherence and demo-ability strengthen. Risk drops due to fidelity banner placement risk and unvalidated CISO content. Source-fidelity, differentiation, and scope unchanged.

---

## Punch list

### PASS

- Apex Bridge token set fully applied, no Band palette present
- Typography correct (Inter + JetBrains Mono)
- Rounded corners (4/6/8px) + soft shadows only
- 3-way mode toggle with `apx-mode-pref` persistence
- Topbar, rail, app canvas are three visibly distinct surfaces
- Fidelity banner honest (Tier 1, 6 checks marked)
- Bradley rail complete (readiness, blurb, routed cards, honest Unknown ROI)
- Council modal with synthesis slot `[0% Claude — fill this in]`
- Seed data stamped throughout (transparency high)
- Hero metric (47→12) materializes Hilda quote + Black Team data
- Correlation grid shows all 47 alerts (addresses opacity risk)

### FAIL

**1. No ownership attribution (X% [User]) on Build-generated content**

Narrative sections and CISO section are Build-written, not traced to Beth or real Alpha output. No attribution stamp. Violates CLAUDE.md 9b + Band Protocol design principle.

**Where:** Incident narrative, CISO metrics, all body text  
**Why it fails:** Fluency without provenance  
**How to detect:** Grep prototype for "attribution" — none found

---

**2. CISO section unvalidated**

Decision 4 unresolved. CISO content ships without economic buyer validation. Placeholder text visible.

**Where:** CISO section with placeholder "[Placeholder — requires Decision 1...]"  
**Why it fails:** Scope expansion without validation  
**How to detect:** Decision 4 unresolved, no validation source cited

---

### MISSING

1. **Domain-model trace** — Brief has no `domain_model:` section (brief gap, not build gap)
2. **Success criteria** — Decision 2 undefined; prototype showable but not testable
3. **Customer profile** — Decision 1 unresolved; "Acme Building Supply" placeholder
4. **Incident story provenance** — Decision 3 unresolved; narrative unlabeled as real/synthetic

---

### RISK

1. **Fidelity banner reads as "unprepared"** — No SE narration guidance staged
2. **CISO placeholder text visible** — Credibility risk if shown to customer
3. **Reading order uncontrolled** — Tension 2 (SIGN×JRNY) unresolved
4. **Council synthesis slot empty** — May read as incomplete if opened in demo
5. **Seed data cumulative effect** — Sum of placeholders may cross credibility threshold

---

## Summary

**Net:** +1 overall (24/30 pre → 26/30 post). Prototype is *showable* at T1 fidelity for internal stakeholder review. Not ready for customer demo without:

1. Decision 1-4 resolution
2. Ownership attribution on Build-generated content
3. CISO section validation or removal
4. SE narration script for fidelity banner + placeholders

**Routing:** Product resolves Decisions 1-2. Research validates CISO section. Build adds attribution. Bradley writes SE narration before customer exposure.
