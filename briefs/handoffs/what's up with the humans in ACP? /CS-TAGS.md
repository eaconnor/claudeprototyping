# [CS:] Confidence Tags — Reference Guide

**What they are:** Every factual claim in this handoff package is tagged with a confidence score. This exists because LLM fluency does not correlate with accuracy. A model can sound authoritative while confabulating.

**Why they matter:** You can trust [CS: VERIFIED] claims without additional verification. You should independently verify [CS: MEDIUM] or [CS: LOW] claims before basing decisions on them.

---

## Human-Readable Scale

| Tag | Meaning | When to trust it | When to verify |
|-----|---------|------------------|----------------|
| **[CS: VERIFIED]** | Matches primary sources that were directly accessed during research | Use as-is in strategy documents | Never — already verified |
| **[CS: HIGH]** | Well-sourced from reputable secondary sources; not personally verified against primary | Use for directional decisions | Verify before quoting publicly or basing pricing/ROI on it |
| **[CS: MEDIUM]** | Plausible claim with partial sourcing; gaps exist | Use for hypothesis generation | Always verify before acting on it |
| **[CS: LOW]** | Fluent but thin sourcing; model may be pattern-matching from training data | Flag as research question, do not use | Required — treat as unverified claim |
| **[CS: FABRICATION RISK]** | Model likely hallucinated this; contradicts available sources or uses suspiciously precise details without citation | Do not use | Discard or replace with researched claim |
| **[CS: UNKNOWN]** | Outside model's knowledge domain; requires subject matter expert | Bring to domain expert (Beth, Nicole, MSP customer) | Required — model cannot verify this |
| **[CS: LOW — outside training window]** | Beyond model's April 2024 knowledge cutoff; may be outdated or incomplete | Check if claim is still current | Required — verify against current data |

---

## Machine-Readable Format

```json
{
  "confidence_tags": {
    "VERIFIED": {
      "trust_level": 5,
      "verification_required": false,
      "description": "Matches primary sources accessed during research",
      "use_case": "Strategy documents, public communication, pricing/ROI calculations"
    },
    "HIGH": {
      "trust_level": 4,
      "verification_required": "before_public_use",
      "description": "Well-sourced from reputable secondary sources; not personally verified",
      "use_case": "Directional decisions, internal planning"
    },
    "MEDIUM": {
      "trust_level": 3,
      "verification_required": "before_action",
      "description": "Plausible claim with partial sourcing; gaps exist",
      "use_case": "Hypothesis generation, research backlog"
    },
    "LOW": {
      "trust_level": 2,
      "verification_required": "always",
      "description": "Fluent but thin sourcing; model may be pattern-matching",
      "use_case": "Flag as research question; do not use without verification"
    },
    "FABRICATION_RISK": {
      "trust_level": 0,
      "verification_required": "discard",
      "description": "Model likely hallucinated; contradicts sources or lacks citation",
      "use_case": "None — discard or replace with researched claim"
    },
    "UNKNOWN": {
      "trust_level": null,
      "verification_required": "domain_expert",
      "description": "Outside model knowledge domain; requires SME input",
      "use_case": "Escalate to Beth, Nicole, or MSP customer"
    },
    "LOW_OUTSIDE_TRAINING": {
      "trust_level": 1,
      "verification_required": "check_currency",
      "description": "Beyond April 2024 knowledge cutoff; may be outdated",
      "use_case": "Verify against current data before use"
    }
  }
}
```

---

## Practical Examples from This Handoff

**[CS: VERIFIED]**
> "Kaseya holds 25.9% RMM market share (#1), N-able 19.2% (#4)"

✓ Directly sourced from Canalys Q3 2024 report linked in scout data. You can cite this.

**[CS: HIGH]**
> "MSPs save $33,600/month by reducing false positive triage time"

✓ Calculation based on verified inputs (46% false positive rate, $32/hour tech labor, 960 alerts/day). Math is sound, but individual MSP costs vary. Use for directional ROI; verify with actual customer data before guaranteeing savings.

**[CS: MEDIUM]**
> "68% of early SMB AI adopters experienced ≥1 significant error"

⚠ Sourced from one analyst report; sample size and methodology not verified. Use to frame risk discussion, but verify with N-able's pilot data before claiming "most early adopters experience errors."

**[CS: LOW]**
> "Junior tech reaches senior competence 40% faster with teaching interface"

⚠ Speculative ROI projection with no training data backing it. Flag as hypothesis to test in user research. Do not quote in sales materials.

**[CS: UNKNOWN]**
> "What error rate do MSPs expect from AI-powered triage?"

⚠ Model cannot answer this — requires MSP interviews or survey. Escalate to research team.

---

## The Chicago Principle (Why This System Exists)

Beth once asked Claude about a building she had personally designated as a National Historic Landmark. Claude provided eloquent, specific, confident architectural details. All invented. She knew because she wrote the designation report.

**LLM fluency ≠ accuracy.** Confidence tags make the gap visible.

---

## How Scout Applied These Tags

1. **Scout agent** pulled 1,602 lines of secondary research from web sources
2. Every claim was tagged based on:
   - Source reputation (verified industry reports > blog posts)
   - Claim specificity (precise numbers with citations > vague assertions)
   - Cross-source validation (multiple sources agree > single source)
   - Recency (published 2024–2025 > older data)
3. **Council agent** inherited those tags and added new ones for calculations/inferences
4. Claims with contradictory sources were flagged with both confidence levels + tension note

---

## When Reading Council Reports

- **High-confidence convergence** (all frameworks agree + [CS: VERIFIED/HIGH]) = strong strategic direction
- **High-confidence contradiction** (frameworks conflict + [CS: VERIFIED/HIGH]) = real tension requiring human decision
- **Low-confidence claim** ([CS: MEDIUM/LOW]) repeated across frameworks = research gap, not insight

---

**Questions?** Check scout data (`scout/scout-secondary-output.md`) for full source URLs + original confidence scoring.
