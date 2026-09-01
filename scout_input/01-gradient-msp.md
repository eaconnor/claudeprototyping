# Dossier: Gradient MSP

## What it is
[CS: VERIFIED] Gradient MSP (meetgradient.com) is an active company selling business automation software for MSPs — billing reconciliation, quoting, and integration tooling across PSA platforms. Confirmed via company's own site and N-able's own integrations listing.
- https://www.meetgradient.com/
- https://www.n-able.com/integrations/gradient-msp

## Cross-vendor claim — needs scoping
[CS: HIGH] Gradient offers an open API connecting across at least 8 PSA platforms (ConnectWise, Datto, Kaseya, Syncro, Tigerpaw, HaloPSA, Pulseway, Accelo) for billing reconciliation.
- https://www.meetgradient.com/integrations
[CS: MEDIUM] Brief characterizes this as "cross-vendor normalization." What's actually documented is specifically **billing/service-usage reconciliation** (matching vendor usage counts to PSA agreements), not general data-model normalization. These may or may not be the same problem the brief is trying to solve — worth Beth checking the brief's original definition of "normalization" against what Gradient actually ships.

## Cove (N-able) integration — verified real and current
[CS: VERIFIED] N-able hosts an active, current integration page for Gradient MSP under Cove Data Protection. Function: syncs Cove usage/service data into "Gradient Reconcile" for automated billing reconciliation, reducing manual cross-referencing for MSPs reselling Cove.
- https://www.n-able.com/integrations/gradient-msp
- https://support.meetgradient.com/n-able-cove (Gradient's own support docs for the integration — legacy Cove doc also exists: https://support.meetgradient.com/cove, suggesting the integration has been updated/versioned over time)

## Funding — figures conflict across sources, flagging rather than picking one
[CS: HIGH] ChannelE2E (trade press) reported Gradient MSP raised **$10 million in Series A funding**, led by Anthos Capital, with StoneMill Ventures, Gula Tech Adventures, and Accelerate Fund III participating.
- https://www.channele2e.com/investors/venture-capital/gradient-msp-raises-10m-for-business-automation-software/
[CS: MEDIUM] Crunchbase's aggregate financial summary reported total raised as **$8.26M**, while Crunchbase's own funding-round record for the same round lists it as a **$10.2M Series A closed Dec 8, 2021**. These two Crunchbase-sourced figures do not agree with each other.
- https://www.crunchbase.com/organization/gradient-msp
- https://www.crunchbase.com/organization/gradient-msp/company_financials
[CS: LOW] The brief's "~$8M raised" figure is in the neighborhood of the lower Crunchbase number but not confirmed as accurate — do not treat $8M as settled. If precision matters for the decision, this needs a direct check (PitchBook paywall, or ask the company).
- https://pitchbook.com/profiles/company/471105-37 (paywalled, not independently verified here)

## Bottom line for Beth
Company is real, Cove integration is real and live today. Funding number in the brief is plausible but not clean — sources disagree by ~20%. "Cross-vendor normalization" claim is narrower in practice (billing reconciliation) than the phrase implies.
