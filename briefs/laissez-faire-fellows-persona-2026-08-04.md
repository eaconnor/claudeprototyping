# Laissez Faire Fellows — the ideal-fit MSP persona

**Purpose:** a concrete, data-heavy fictional MSP for Idea Chess re-scoring and prototyping. Not a real N-able partner — all names, numbers, and the org itself are invented `[A]`. The *structure* (ABCD tiering, the six-category tech stack, the named cast roles, the cadence rule) is grounded in this session's real findings, cited inline. Numbers are plausible-realistic estimates `[CS: MEDIUM — general MSP-market knowledge, not sourced in this corpus]`, not measured data — don't cite them as real.

**Seed-data rule applied:** fictional company, fictional people, fictional client names. Nothing here resembles a real N-able partner or client.

---

## The org

**Laissez Faire Fellows** — Denver, CO. Founded 2014.

| Metric | Value |
|---|---|
| Employees | 34 |
| Active managed clients | 142 |
| Endpoints under management | ~6,800 |
| ARR | ~$9.4M |
| Average client MRR | ~$5,500 |

**Team structure:**
- 11 technicians (service desk / dispatch)
- 6 project engineers
- 4 account/delivery leads
- 1 vCIO
- 3 sales
- 2 marketing
- 7 ops/admin/leadership (incl. the owner)

**Why this size:** mid-market MSP — big enough to have a real EBR practice worth systematizing (per Kelser Corp's finding that vCIO-led QBRs are a differentiator, §"Overlay" research), small enough that the delivery lead is still a real bottleneck (Must 7's "sustainable backstage load" concern is live here, not theoretical).

---

## Tech stack — mapped to §7b's six categories, deliberately mixed

| Category | Product | Native or cross-vendor | Why this choice |
|---|---|---|---|
| RMM | N-central | N-able native | Full deployment, all 142 clients |
| MDR | Adlumin | N-able native | Full deployment |
| Backup/DR | Cove | N-able native | Full deployment |
| **PSA** | **ConnectWise Manage** | **Cross-vendor** | Pre-dates the N-able relationship; PSA switching cost is real and this is the single most common real-world pattern — an N-able-committed MSP that still runs ConnectWise for tickets/billing `[CS: MEDIUM]` |
| Identity/MFA | Microsoft Entra ID | Cross-vendor (unavoidable) | No N-able-native option exists (§7b) |
| Security awareness | KnowBe4 | Cross-vendor (unavoidable) | No N-able-native option exists (§7b) |

**Deliberately 3 native / 3 cross-vendor — not a clean Package 3 win.** This is the point: Laissez Faire Fellows is about as N-able-committed as a mixed-stack MSP gets, and it *still* needs cross-vendor pulls for PSA, identity, and awareness. Package 3 ("N-able Native") would be incomplete even for this MSP. Package 5's cross-vendor case isn't a hypothetical edge case here — it's what Laissez Faire Fellows actually needs on day one.

---

## Client base — ABCD tiering applied (ConnectWise framework, Overlay 4)

| Tier | Definition | Count | Avg. client MRR | EBR practice today |
|---|---|---|---|---|
| A | Full stack, ideal customer profile | 14 | ~$4,200 | Mandatory quarterly, vCIO-led |
| B | Most services, growth targets | 41 | ~$2,800 | Quarterly-to-semi-annual |
| C | Partial stack, margin-improvable | 58 | ~$1,100 | Semi-annual/annual, inconsistent |
| D | Sub-30% services gross margin | 29 | ~$650 | Annual or none |

**Uncomfortable finding this surfaces, worth carrying into Idea Chess:** ~20% of Laissez Faire Fellows's client base (the D tier) gets little-to-no EBR practice under the *current, human-only* model. Any system that only serves the easy A/B tiers isn't actually closing the biggest gap — worth naming as a real design question (does the new system make D-tier EBRs *possible* at low marginal cost, or does it just make A-tier EBRs faster?).

**Cadence tension, kept honest rather than papered over:** Stefanie's own cadence rule is MRR × risk (tier A/B/C, §2/§3) — a *scheduling* axis. ConnectWise's ABCD is a *margin/stack-completeness* axis, used to decide who gets a QBR at all. The two don't perfectly overlap at Laissez Faire Fellows — e.g., a high-margin, low-risk B-tier client might sit on a lighter Stefanie-cadence than a lower-margin, high-risk C-tier client. This is the same unresolved tension Overlay 4 named; Laissez Faire Fellows is the concrete case where it'd actually have to be decided, not just noted.

---

## Named cast

| Name | Role | Notes |
|---|---|---|
| **Derek Iannotti** | Owner | Craig-analog — bought into the EBR practice from Stefanie's-style training content, brought it back company-wide |
| **Priya Shah** | Delivery lead | Vanessa-analog — runs EBRs for B/C-tier clients, 4 years at Laissez Faire Fellows, not a technician |
| **Marcus Webb** | vCIO | Leads A-tier EBRs specifically — the differentiator signal Kelser Corp names |
| **Jordan Ellis** | Technician | Builds the risk register content — the shared, limited resource Must 7 protects |

---

## How this gets used

- **Idea Chess:** a concrete Adopt/Defend-position test bed — e.g., "does Priya (Vanessa-analog, not a technician) actually trust an auto-populated register for a D-tier client with a 29-device gap?" is a sharper, more falsifiable question than an abstract "operator" line item.
- **Prototyping:** the worked-example walkthrough already on the FigJam board (the deck's own "3 devices missing backup" scenario) can be re-run *as* a specific Laissez Faire Fellows client (pick a B-tier client) instead of a generic stimulus, once a build actually starts.
