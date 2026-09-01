# LOTL Theory — Math Recount

**Purpose:** Verify evidence distribution. The 47% rule — grep before you quote.

---

## Tagged Claim Inventory

**Total tagged claims:** 34

### Bucketed by evidence type:

**[R] Research — 13 claims (38%)**
- 84% of high-severity attacks use LOTL (CybersecurityHQ 2025)
- 62% of CrowdStrike detections involve LOTL
- LOTL technical doc lists 20+ Windows binaries (Kevin O'Connor)
- Attackers use valid credentials, move slowly (ROI strategy)
- Traditional signature-based detection fails for LOTL
- PowerShell ensemble model ~1B commands/week (ADL-1381)
- Endpoint detection expansion (ADL-1381)
- Tamper-proof research (ADL-1294)
- Competitive analysis from Jan 2024
- One SME interview, one partner interview planned, one customer journey map Nov 2024
- EDR evasion detection complexity ratings (Brendan Griffin doc)
- CrowdStrike Charlotte AI ~85% workload reduction claim
- Q3/Q4 validation path (PUT-1152, PUT-1153, PUT-1109)

**[D] Data — 3 claims (9%)**
- PowerShell model volume: ~1B commands/week (cited in ADL-1381)
- Adlumin detects LOTL via ensemble model (operational data)
- PowerShell ensemble model exists (confirmed in ROI strategy)

**[A] Assumed — 18 claims (53%)**
- AI must learn normal, detect drift, correlate behavior (concept stated, implementation unclear)
- Customers care about LOTL because competitors market it
- Naming LOTL makes AI narrative concrete
- LOTL naming positions correctly to market
- If detection is noisy, naming becomes liability
- AI is required for LOTL (mechanistic claim without customer validation)
- High false positives = disabled detection
- Opaque AI explanations = trust erosion
- Workshop success = 3+ customers name LOTL as differentiator
- LOTL is industry buzzword, not buying criterion (failure mode)
- Detection functional but noisy (failure mode)
- Mission: position as AI-led, not feature-led (inferred, not stated)
- LOTL advances mission by justifying AI
- Validation via Chorus/workshops before marketing
- Publish performance baseline before marketing
- Success criteria: customer language test, competitive benchmark, workshop validation
- 60%/90% fidelity definitions for detection scorecard + dashboard
- Theory is strategically sound (Beth's assessment)

**[?] Unknown — 3 claims (9%)**
- Do customers ask about LOTL in sales calls?
- Does LOTL coverage influence purchase/renewal?
- What is false positive rate, MTTR, coverage map?

---

## Three Ratios

| Evidence Type | Count | Percentage |
|---------------|-------|------------|
| [R] Research  | 13    | 38%        |
| [D] Data      | 3     | 9%         |
| [A] Assumed   | 18    | 53%        |
| [?] Unknown   | 3     | 9%         |
| **Total**     | **34**| **100%**   |

**[A] + [?] combined:** 21 claims = **62%**

---

## Verdict

At 30% fidelity (Concept tier), 62% [A]+[?] is expected and acceptable. The industry problem is sourced [R]. The customer problem is assumed [?]. The technical capability is confirmed [D]. The strategic positioning is Beth's thesis [A].

**Next gate:** Q3 personas + Q4 workshops will convert [?] → [R] or [D]. Until then, this brief holds the theory — does not commit build resources.

**Grep note:** No self-reported percentages in this brief required verification (no "47% problem"). Claim count is manual; recount if disputed.
