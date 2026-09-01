# Source 06 — PUT-996: Call Directory epic (the recipient side)

**Pulled from:** n-able.atlassian.net Jira, live this session (2026-06-24)
**Type:** Epic · **Status:** In Progress · **Owner:** Justin Petersen · **Project:** PUT (UX – Adlumin Design Team)
**URL:** https://n-able.atlassian.net/browse/PUT-996
**[CS: VERIFIED — direct Jira pull]**

Context: Call Directory decides *who* the SOC contacts; notify-service (NOT-4 email / NOT-5 voice) is *how* they're contacted. The email prototype resolves recipients against this directory.

## Epic Summary (verbatim)
> This Epic introduces a dedicated call list tab within the Adlumin MDR/XDR platform's user management interface. It enables MSPs to configure prioritized contact lists for the MDR SOC team, improving communication efficiency and laying the groundwork for AI-driven call automation.

## Goals (verbatim)
- Separate call lists from general user lists to reduce confusion in co-managed environments.
- Enable MSPs to define and prioritize contacts for incident response.
- Improve operational efficiency and streamline SOC communication workflows.

## Stakeholders (verbatim — world evidence)
- **Jerry Newsom** – Identified this as a top issue (April 15, 2025).
- **Magna5** – Feedback on user assignment and notification challenges (MRR USD 47,415.46).
- **Omega, Netcentrix, Present** – Case 02681702: "Tons" of emails still received directly.

## Ingredients for the prototype
- **"Tons of emails still received directly"** (Case 02681702) — the over-notification / wrong-recipient symptom the email service must not reproduce.
- Recipients are **prioritized** (priority order) — the email surface can show send order / priority.
- The directory is **per-tenant** with default population for new tenants.
- Connects to the "resolved recipients" language in NOT-4 ("sent to all resolved recipients").
