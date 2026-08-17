# Critic Pass 2 — ACP V1 with Apex Bridge layered in

**Run:** 2026-05-27 · **Agent:** critic · **Target:** the V1 concept now that Apex Bridge is named as the delivery vehicle (not just a visual approximation).

---

## Re-Score (vs. pass 1)

| Dimension | Pass 1 | Pass 2 | Movement |
|---|---|---|---|
| Coherence | 3/5 | **3/5** | Held. Bridge sharpens *how* but muddies *where* — ACP-First MSP vs. ACP-inside-N-central tension is now live. |
| Source fidelity | 4/5 | **4/5** | Held. The Bridge POC doc explicitly names ACP V1 as a use case (scout 04 §Notes), so adopting Bridge stays sourced. |
| Demo-ability | 3/5 | **4/5** ↑ | Token contract + `apx-*` components + free dark mode = less invention, more assembly. Visual fidelity question (the "no verified Apex tokens" gap) collapses. |
| Differentiation | 2/5 | **3/5** ↑ | "ACP rides into N-central as an overlay" is a wedge no competitor can replicate without N-central tenancy. Standalone ACP was undifferentiated; Bridge-delivered ACP is a distribution story. |
| Risk surface | 2/5 | **2/5** | Held. Different risks, same total. Visual fidelity risk down. Ownership/scope/narrative-collision risks up. Net wash. |
| Scope discipline | 3/5 | **2/5** ↓ | Brief now has to decide: standalone HTML, Bridge components, or both. Component inventory must reconcile with `apx-sidebar/productbar/table/card/badge/pagination/loader`. The brief currently specifies its own visual system (Inter, teal, 8px grid) that is now in conflict with `--br-*`. |

---

## New questions Bridge forces

1. **Net-new vs. legacy rehab.** Bridge's stated purpose is overlaying modern UI on *legacy* N-central. ACP is net-new product with no legacy substrate to overlay. Is ACP V1 a Bridge POC of a *different kind* — components used standalone, not as injection? Scout 04 §Notes hints yes, but scout 04 §Scope and scout 05 frame Bridge as injection-first. The thesis bends.

2. **Narrative collision.** Scout 01: "MSP should never need to learn UEM, Cove, or Adlumin." Scout 04: ACP rendered inside N-central via Chrome Extension overlay. These are not the same product story. One says ACP replaces the console; the other says ACP appears inside it. **Which wins for V1?**

3. **Ownership.** Bryce Wilson + Patrick Cavanaugh own Bridge. Nicole Reineke owns ACP. No doc names the joint owner. [CS: HIGH — based on author metadata in scout 01, 04, 06.]

4. **Flag-gated production validation fits legacy, not greenfield.** Bridge's killer move is "iterate in prod behind a flag." ACP has no prod surface to iterate against. The Bridge unlock (scout 05 row 4) doesn't apply yet.

5. **Component coverage gap.** Bridge ships 7 components. ACP V1 needs: modal builder, wizard, text editor (runbook), tile grid (Experts), step-trace accordion, KPI tiles, multiselect, radio group, form inputs, filter dropdowns. **Bridge covers maybe 4 of 11.** [CS: HIGH — counted brief lines against scout 04 component list.] What gets built net-new, and does it become Bridge component #8-15?

6. **Sales motion.** If ACP ships via Bridge overlay, does N-able sell it as an N-central upsell ("turn this on in your existing console") before standalone? That's a different GTM than "independent product line" (scout 01).

7. **The 2026.4 sprint scope (scout 06) explicitly excludes Adlumin activation and customer-facing settings beyond the theme toggle.** ACP-via-Bridge is *also* out of that sprint's stated scope. Beth needs to know: is ACP V1 a separate Bridge workstream, or a follow-on?

---

## Updated punch list

### 🟢 GREEN (now resolved or strengthened)
- Visual fidelity invention risk → solved by `--br-*` tokens.
- Dark mode → free.
- Cross-product reuse story (Adlumin) → `bridge-adlumin.scss` exists [CS: VERIFIED scout 04 §Transferability].
- Differentiation → distribution wedge is real.

### 🟡 YELLOW (newly ambiguous)
- IA and visual spec in brief — written *against* Bridge tokens. Needs reconciliation pass.
- Component inventory — 4 of 11 covered. Decide build-new vs. defer-screens.
- Demo audience — now matters more. Internal exec vs. design partner changes whether you demo standalone HTML or Chrome Extension overlay.
- Ownership — single name on the brief required.

### 🔴 RED (newly surfaced or escalated)
- **Narrative collision between Scout 01 (ACP replaces console) and Scout 04 (ACP inside console).** Brief does not address this. Will fail the first exec question.
- **Scope discipline.** Brief is now potentially three artifacts: (a) standalone ACP HTML, (b) Bridge component additions, (c) overlay POC inside N-central. Each is a different build.
- **Flag-gated validation model does not fit a net-new product.** Bridge's central unlock is partially inapplicable here, but the proposal will be read as if it does apply.

---

## Verdict

Bridge makes ACP V1 **more complicated before it makes it stronger** — the distribution and visual stories get real, but the brief now has to resolve a product-narrative collision and a component-coverage gap that didn't exist when ACP stood alone.
