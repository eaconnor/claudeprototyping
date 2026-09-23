# Secondary market signal — Dimension B: competitor product moves & copyability

**Scouted:** 2026-09-23
**Riskiest assumption under test:** #6 — "this product's advantage cannot be copied easily"
**Scope rule applied:** CLAUDE.md §10b — public, published sources only. No login-gated material. No competitor systems.
**Scout output type:** ingredients only. No synthesis. Assembly is Beth's.

---

## READ THIS FIRST — three classification columns

Every claim below is sorted into one of three buckets. Do not let them blur:

| Bucket | Meaning |
|---|---|
| **(a) SHIPPED + DOCUMENTED** | Vendor product documentation, release notes, or admin docs describe the behaviour. Verifiable without a sales call. |
| **(b) ANNOUNCED / ROADMAP / PREVIEW** | Press release or status page says it exists but gates it as preview, early access, controlled release, or "coming soon". |
| **(c) MARKETING CLAIM ONLY** | Product page or press release asserts a capability with no corresponding doc found. **A source about what a vendor CLAIMS, not about what it DOES.** |

---

## FETCH FIDELITY — read before quoting anything

Three sources came back to me as **model paraphrase, not verbatim text**. Any claim sourced to them is tagged `[CS: MEDIUM — paraphrase]` and **must be re-read verbatim before it enters a brief, a Confluence page, or a deck**:

- `documentation.n-able.com` N-central 2026.2 Release Notes
- `n-able.com/resources/n-able-ecoverse-explained`
- `techcommunity.microsoft.com` Vulnerability Remediation Agent blog (fetch failed entirely — no content retrieved)

Two sources **blocked the fetcher with HTTP 403** (`action1.com`, `msspalert.com`). These are public marketing pages with bot protection, not login-gated content. I did not attempt to bypass. Action1 claims below are sourced to PR Newswire mirrors and search-result snippets, and are tagged at reduced confidence accordingly.

**One source is verbatim primary text:** the Microsoft Learn Vulnerability Remediation Agent doc. It is the strongest single source in this dossier.

---

## FILE INDEX

| File | Contents |
|---|---|
| `secondary-B-01-ninjaone-action1.md` | The two vendors Beth named. Intune moves, patch/vuln scope, AI features, timeline. |
| `secondary-B-02-correlation-and-governed-action.md` | Every vendor found claiming AI that correlates patch + vuln + config and acts. Microsoft, Tanium, Qualys, Ivanti, ManageEngine, Rapid7/Automox. |
| `secondary-B-03-intune-gap-specialists.md` | Patch My PC, Robopack, Recast, Nexthink, Automox. What Microsoft gap each fills, add-on vs replacement, and what Microsoft closed in June 2026. |
| `secondary-B-04-n-able-published-surface.md` | N-able's own public pages. What is already claimed publicly about Ecoverse, N-zo, N-central vuln/patch. |

---

## GAPS — what I did NOT find

Name these as `[?]` in any spec run; do not let absence read as absence of threat.

- **No published pricing for NinjaOne Vulnerability Management.** Whether it is bundled or an upsell SKU is unknown. `[CS: UNKNOWN]`
- **No published Action1 rate card above 200 endpoints.** Quote-only. Third-party estimates exist but are not vendor-published. `[CS: LOW]`
- **No vendor found claiming the full Ecoverse signal set** — patch + vulnerability + configuration + inventory + compliance, correlated, with governed action. Closest approximations are in file 02. This is a genuine negative finding, not a confirmation of defensibility: I searched for it and did not find the exact five-signal claim. Absence of the marketing phrase is not absence of the capability. `[CS: MEDIUM]`
- **Did not scout:** ConnectWise, Kaseya/Datto, Absolute Security, Tanium pricing. ConnectWise/Kaseya searches returned only comparison-site content, no primary product announcement on autonomous patching. `[WOBBLY]` — thin pool, do not conclude they are absent from this market.
- **No G2/Capterra feature listings retrieved.** Search surfaced the URLs; I did not fetch them. Review-site feature grids are a separate scout run.
