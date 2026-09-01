# Source 01 — N-zo Billing Plans: UX Requirements

- **Origin:** Confluence, ProdUX space, page 62082744490
- **Owner:** Lynne Robertson
- **Last modified:** Jun 18, 2026
- **URL:** https://n-able.atlassian.net/wiki/spaces/ProdUX/pages/62082744490/N-zo+Billing+Plans+-+UX+Requirements
- **Type:** UX requirements (user stories) — [R] authored requirements doc
- **Anonymization note:** No customer/tenant data present. Credit figures are internal product spec, not customer data.

---

## AI Usage Dashboard — MVP UX Requirements

### Overview & Billing Status (admin user stories)
- See current billing period (start/end dates) — context for all usage data.
- See total credits purchased for the billing period — overall allocation.
- See total credits consumed vs. remaining at org level — headroom at a glance.
- See a visual indicator (progress bar / gauge) of overall credit consumption — judge criticality without reading numbers.
- See renewal/expiry date for current plan — time before credits reset or plan lapses.

### Usage Trends
- See credit consumption over time (daily/weekly) for current period — is usage accelerating, steady, declining.
- See projected credit burn rate based on current usage — anticipate running out before period ends.
- See comparison of this period's usage vs. previous billing period — is usage growing.

### User-Level Visibility
- See list of all users with individual credit allocation and consumption — who is driving usage.
- See which users consumed the highest volume of credits — focus on most impactful accounts.
- See which users have not used any credits — identify inactive licences / unnecessary cost.
- See when each user was last active. *(existing)*
- See which users are approaching their credit limit — act early. *(existing)*
- See which users have already reached/exceeded their credit limit — immediate action.

### Alerts & Thresholds
- See a clear visual alert when org-level consumption passes a defined threshold (e.g. 80%) — prompted to act before exhaustion.
- See which users have been automatically throttled or blocked due to reaching their limit — understand service disruption.

### Plan & Upgrade Decision Support
- See current plan name and key entitlements (credits, user seats, features) — baseline for upgrade evaluation.
- **See a clear call to action to purchase additional credits or view available plans** — act without leaving the dashboard. *(← self-serve assumption; contradicted by GA note, Source 03)*
- Understand the consequences of running out of credits (users blocked/degraded) — judge urgency.

### Data Export
- Export usage data for current billing period as CSV — share with finance/management outside the product.
