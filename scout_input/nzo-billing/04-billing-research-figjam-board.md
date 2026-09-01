# Source 04 — Lynne's "Billing-Research" FigJam board (the prototype/research artifact)

- **Origin:** Figma FigJam, file `pudsktELOhTX7tpmu8Cdmu`, board name "Billing-Research"
- **Owner:** Lynne Robertson (linked from GA UI page as "FigJam GA Board / Billing-Workflows")
- **Type:** Competitive billing research + reference upgrade flow — [R] research board, NOT an N-zo hi-fi prototype
- **Read method:** get_figjam (node text) + get_screenshot of Credit-Upgrade-Flow section
- **Anonymization note:** competitor names (Figma, Atera) are public market facts, not customer data. Dollar/credit figures below are competitor or index figures, not N-able customer data.

---

## What the board actually is
A research board informing N-zo billing design. Six sections:

### 1. Credit-Upgrade-Flow (section 1:45) — the "prototype" flow
Three connected screens, arrowed left→right. **These are Figma's own product UI used as a reference example**, not N-zo screens:
- **"Get more credits" modal** — Upgrade option + credit-pack option ("Buying a credit pack").
- **Checkout screen** — a pack priced (~$30.00), "Confirm & Pay".
- **"Credits added"** — dashboard state with credit indicator highlighted.
- Reference reading: a *self-serve* buy-a-pack flow — the pattern N-zo GA is NOT shipping (Sales-mediated instead), but the target the plan-options study probes.

### 2. AI-tokens-pricing (section 1:4) — competitor teardown
Three columns of competitor screenshots: **Add-on credits · Credits · Displaying usage**. Includes note: "No mention of credits/tokens, only usage" (some competitors hide the credit unit and show only usage).

### 3. FIGMA (section 237:1848)
"Figma has the most relevant model. Every seat includes a monthly allocation of AI credits. If usage exceeds included credits, admins can purchase additional credits through subscription or pay-as-you-go billing. Subscription credits reset monthly and don't roll over. Price per credit decreases as more credits are purchased. Pay-as-you-go charges are added to your next invoice — the upgrade cost hits the following month's bill, not immediately. Structurally similar to N-zo's situation."

### 4. CLAUDE (section 237:31308) — recommendations captured on-board
- "Standard AI billing models in SaaS: proration on upgrade is the industry standard… customers pay old plan up to switch date, then new plan for remaining days. N-zo's constraint — billing only at the full calendar month — is a deliberate departure, which is what creates the exposure."
- "Downgrade timing: most SaaS don't prorate downgrades; revise billing next period. N-zo's downgrade behaviour is conventional — it's the upgrade side that's unusual."
- "Credits don't roll over. Reset monthly. Make explicit in UI — fairness signal + abuse deterrent."
- Market context: "Out of 500 companies in a SaaS pricing index, 79 now offer a credit model, up from 35 at end of 2024 (+126% YoY). New additions include Figma, HubSpot, Salesforce."
- **Recommendations (on sticky):** Enforce a plan lock ("Your Pro plan is active until 01 August. You can change your plan from that date"). Show next billing date prominently at point of upgrade: "Upgrading to Pro today — your first bill of £X applies from 01 August." Transparent upgrade copy: "Downgrades take effect at your next billing cycle on [date]." Removes assumption the plan is immediately reversible.

### 5. ATERA (section 237:31346)
"Atera moved opposite to N-able. Every Atera plan now includes AI Copilot at no additional cost (June 2026) — bundled AI into the base plan rather than a credit-tiered add-on. Subscription charged automatically in advance. Robin AI (agentic tier) overage is usage-billed separately — MSP reports of $200–$600/month per active technician once Robin auto-drafts replies."

### 6. Findings (section 1:2)
Summary image (not transcribed as text on board).

## The edge cases this research surfaces (for the spec)
- **Mid-month upgrade exposure** — N-zo bills at full calendar month, not prorated → a customer can upgrade late in the month and get near-free credits, or be surprised by when billing starts. Claude section flags this as the real risk; plan-lock + "first bill on [date]" copy is the mitigation.
- **Rollover** — credits reset monthly, don't roll over. Must be stated in UI.
- **Bundled-vs-metered competitive pressure** — Atera bundles AI free; N-zo is credit-metered. Positioning risk.
- **Unit transparency** — some competitors show only "usage," hide credits/tokens. Open design question for N-zo: show credits, or show usage?
