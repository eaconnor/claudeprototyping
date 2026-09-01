# Sandbox / trial / dev account availability

Scouted 2026-08-24. Thinner than the other strands — most vendors don't publish this clearly.

## Open self-service signup

### HaloPSA — best of the set
- Free trial signup: `https://trial.halopsa.com/trial/signup` and `https://usehalo.com/trial/` [CS: HIGH]
- **30-day trial, all features and modules, no credit card.** [CS: MEDIUM — from search summary of the trial page, body not opened]
- **Sandbox environments included** — "allow you to build and test without touching production data." [CS: MEDIUM]
- Free configuration sessions offered. [CS: MEDIUM]
- API documentation reachable at `<your-instance>/api/swagger`, plus `halopsa.com/apidoc/` and `haloacademy.halopsa.com/apidoc/`. [CS: HIGH]
- **This is the one that can be stood up today without a relationship.** [CS: MEDIUM]

### Microsoft 365 Developer Program
- `learn.microsoft.com/en-us/office/developer-program/microsoft-365-developer-program-get-started` [CS: HIGH]
- **Eligibility has tightened — not the open free-for-all it was.** [CS: HIGH]
- Visual Studio route: requires **Visual Studio Professional standard or Enterprise standard**. Renews automatically while the subscription is active. **Monthly VS subscriptions are NOT eligible.** [CS: HIGH]
- Also eligible: ISV Success Program / MAICPP partners. [CS: MEDIUM]
- **2026 change:** "Starting July 2026, new eligible enterprise customers automatically receive an instant sandbox with add-on purchase capability enabled." [CS: MEDIUM]
- Common failure mode, widely reported on Microsoft Q&A: "You don't currently qualify for a sandbox subscription" after joining. Multiple 2026 threads. [CS: MEDIUM] **Assume qualification is not automatic.**

### N-able N-central
- Free trial form: `https://www.n-able.com/products/n-central-rmm/trial` [CS: HIGH]
- Form-gated, not instant self-service. [CS: MEDIUM]
- **N-able Developer Portal:** `https://developer.n-able.com/` — "interactive documentation, AI-powered tools, and 200+ pre-built scripts." Swagger. OpenAPI for N-central, N-sight, Cove, Take Control. [CS: HIGH]
- N-sight partner API described as including "advanced features like Swagger, **sandbox environments**, and AI tools." [CS: MEDIUM — exact scope of "sandbox" unclear] [WOBBLY]
- **The dev portal does not state whether a partner account is required.** [CS: VERIFIED — absence in the page fetched]
- Swagger UI reachable at `<n-central-FQDN>/api-explorer` — N-able's own docs use `https://nfr.n-able.com/api-explorer` as the example, implying an internal NFR instance exists. [CS: HIGH]
- MCP tokens: `https://n-able.app/api-token-management` — requires an existing N-able SSO user. [CS: VERIFIED]
- **Bottom line: needs a tenant. Beth works at N-able — internal access likely bypasses this entirely, which is a different question from what an external MSP faces.** [ASSUMPTION]

---

## Partner / relationship required

### Veeam — NFR, good terms
- `veeam.com/blog/how-to-get-free-nfr-key.html` [CS: HIGH]
- **Free NFR keys, 1 year, up to 20 instances, for certified IT experts.** [CS: MEDIUM]
- "for use in a test environment or home lab for product demos and trainings" [CS: MEDIUM]
- 1-year retention vs the standard 30-day trial. [CS: MEDIUM]
- Requires certification — a gate, but achievable. [CS: MEDIUM]

### Datto / Kaseya — NFR, existing-partner only
- **Requires being a paying partner.** "Datto offers its paying partners access to Datto SaaS Protection for M365 and Google Workspace at no charge for training and demonstration purposes through a Not-for-Resale (NFR) program." [CS: MEDIUM]
- "As a Kaseya customer, you have access to 2x free NFR licenses for Endpoint Backup for PCs." [CS: MEDIUM]
- **No open developer signup found.** [CS: MEDIUM]

---

## Unknown — searched, nothing found

### usecure
- No trial, sandbox, or developer account information surfaced. Distributed via MSP distributors (e.g. Contronex). [CS: LOW]
- Consistent with the API question in file 19: **likely partner-gated.** [ASSUMPTION]
- `help.usecure.io` has a "uPhish demo" article — end-user demo, not a dev sandbox. [CS: MEDIUM]

### Inforcer
- **No trial or sandbox information found.** [CS: UNKNOWN]
- API keys are region-scoped and sent as `Inf-Api-Key`, so key issuance almost certainly requires a tenant. [CS: HIGH on the mechanism, [ASSUMPTION] on the gating]
- Community PowerShell module exists, implying partners can get keys without special arrangement. [CS: MEDIUM]

---

## [THIN DOMAIN — flagged]
MSP vendor sandbox/trial terms are poorly documented publicly. Most of this strand rests on marketing pages and help-centre articles rather than developer terms. The Veeam and Datto NFR findings are the most solid; usecure and Inforcer are effectively unknown. **If sandbox availability is load-bearing for the plan, it needs a direct vendor email, not more searching.** [CS: MEDIUM]
