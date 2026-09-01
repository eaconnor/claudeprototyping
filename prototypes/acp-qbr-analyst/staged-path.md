# ACP QBR Analyst — Staged Path (research → validation → MVP → product)
**Reading:** two cheap gates come BEFORE any build — each can kill the idea for a fraction of build cost. The MVP is a thin trust-wedge, not the full product. Breadth and the moat come after.
**Effort figures are rough estimates [A], not data — for sequencing, not planning.**

```
  STAGE 0            GATE A              GATE B             STAGE 1              STAGE 2            STAGE 3
  Concept        Normalization        Pricing +           MVP:               Product            The Moat
  validated  →   feasibility     →    competence     →    trust wedge   →    (breadth)     →    (durable)
   ✓ DONE         spike               conversation        thin slice
                 kills #2            kills #4,#5,#8       tests #1,#3,#6,#7
                 [~1–2 wks]          [~2 calls]          [medium build]      [larger build]     [ongoing]
                     │                    │                   │
                  GO / NARROW / NO-GO at each ──────────────────
```

---

## STAGE 0 — Concept validated ✓ (where you are)
Problem is sourced: QBR is the #1-demanded, build-first coworker; trust/export gap corroborated; buyer + roster grounded. See `product-experience-research.md`.
**Next:** run both validation gates (they parallelize) to resolve the open unknowns before any build.

## GATE A — Normalization feasibility spike  *(closes riskiest #2 — the moat)*
Build nothing user-facing. One engineer reconciles **ConnectWise + NinjaOne + SentinelOne + Cove** into one apples-to-apples view for a single fake tenant.
- **GO:** normalization holds without hand-mapping every vendor → the moat is real.
- **NARROW:** only N-able's own stack (N-central + Cove) normalizes cleanly → ship as an N-able-stack QBR, drop the cross-stack promise (honest, smaller).
- **NO-GO:** every vendor needs bespoke manual mapping that won't scale → the differentiator is fake; Derek/Vikram were right.
- *Effort: small. This is the single most decision-changing test and it's cheap.*

## GATE B — Pricing + competence conversation  *(closes #4, #5, #8)*
Two calls with the already-warm buyers (Kenneth, Jonathan).
- **Pricing (#5):** standalone add-on vs. bundled — is there WTP above the "build-it-into-the-RMM" floor?
- **Competence (#4):** "done *for* you, or do you want to still feel like the author?" → decides draft-with-edit vs. auto-complete.
- **Reconcile (#8):** Kenneth's ScalePad urgency — personal migration or real industry window?
- **GO:** WTP clears the RMM floor *and* authorship-retained posture is confirmed.
- **NO-GO:** zero standalone WTP *and* N-able won't position it as retention-defense → economic dead end.
- *Effort: tiny. Do this in the same week as Gate A.*

**Both gates must pass (or Gate A narrows) before a line of MVP is built.**

---

## STAGE 1 — MVP: the trust wedge  *(tests #1 Enter, #3 provenance, #6 gap, #7 axis)*
The thinnest thing that earns *"I'd send this with <15 min editing, and I can explain every number."*
**In:**
- Narrow **Enter** — connect *one design partner's actual few tools* (not all 6–8).
- **One draft for one customer.**
- **Drillable provenance** on every number (not decorative).
- The **gap surfaced backstage** (the 3-missing-backup-devices case), never in the client export.
- **Editable** + **one export** (PowerPoint).
- **One audience mode** (start with exec).
- **Read-only.**

**Out (deliberately):** scheduled delivery, portal publish, CRM pipeline, the full integration set, quarter-over-quarter memory, all audience modes, section-management, forward-looking slate.

- **Tested by:** design partners resembling the roster.
- **GO criterion (the KR):** 70%+ would send with <15 min editing AND can trace every number to source.
- *Effort: medium build. This is the first thing users touch.*

## STAGE 2 — Product: breadth  *(post-MVP)*
Now build out "what the product must do" in full: remaining integrations · all audience modes (CFO/owner/IT) · scheduled + on-demand triggers · export formats · MSP-brand tone · editable section management · the priced forward-looking opportunity slate.
*This is where it becomes a product, not a demo.*

## STAGE 3 — The moat: durable advantage  *(ongoing)*
The layer competitors can't copy and where retention/expansion revenue lives:
- **Network effect** — normalization improves as more MSPs connect their stacks (the uncopyable answer to "why can't Derek build it").
- **Product System** — surface N-able-stack data (instant/clean) vs. third-party reconciled (the hard part).
- **Client portal + CRM pipeline** (Shawn) · **quarter-over-quarter memory** — last quarter's promises → this quarter's follow-through (the silent-churn defense).

---

## What to decide now
Not "build the screen." The decidable call is: **fund Gate A + Gate B** (small + tiny, ~one week, parallel) as the gate to an MVP. They close the two riskiest *answerable* unknowns and can kill or reshape the idea before build spend. Everything right of the MVP is sequencing you decide later, with better information.

**One risk to hold:** don't let the MVP quietly skip **Enter**. It's tempting to fake a clean connection and test only the Step-2 draft — but Enter is riskiest-#1, and a demo that assumes it away tests the easy half.
