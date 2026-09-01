# Comparable MSP QBR/EBR tools — delivery channel patterns (domain grounding only)

Web search + one direct fetch, 2026-09-01. Purpose: what does a real delivery channel look like in this product category — not a competitive audit, not a feature comparison. Every claim below is vendor-self-reported (marketing page, help doc, or release note) unless otherwise noted. [WOBBLY — thin pool: five vendor sources, zero independent/analyst confirmation, zero operator-voice confirmation of any of these specific delivery claims]

---

## ScalePad / Cognition360 (Lifecycle Manager "Deliverables")
Source: scalepad.com/updates, scalepad.com/lifecycle-manager/deliverables, scalepad.com/cognition360

Delivery options named: presenting live in a white-labeled experience, a password-protected shareable link, or PDF export "when you need a leave-behind." Framed as covering "common scenarios" rather than one fixed channel. [CS: MEDIUM — vendor product pages, not independently tested]

- [Own the QBR with the new Deliverables in Lifecycle Manager X | ScalePad](https://www.scalepad.com/updates/own-the-qbr-with-the-new-deliverables-in-lifecycle-manager-x/)
- [Deliverables | Lifecycle Manager | ScalePad](https://www.scalepad.com/lifecycle-manager/deliverables)
- [Cognition360 | Business intelligence for ConnectWise MSPs](https://www.scalepad.com/cognition360)

---

## myITprocess (Kaseya / IT Glue)
Source: itglue.com/blog, help.myitprocess.kaseya.com

Two channels named: (1) generate a PDF report "in a couple of clicks," including ability to upload/embed a separate PDF into a report section with page-visibility controls; (2) a white-labeled client portal showing strategy, health scores, asset/user data, tickets, budgets, roadmaps directly to the client, outside the meeting. [CS: MEDIUM — vendor blog + help docs]

- [QBR Report Builder in myITprocess - IT Glue](https://www.itglue.com/blog/qbr-report-builder-myitprocess/)
- [myITprocess 6.5.4.0 release notes: November 4, 2025](https://help.myitprocess.kaseya.com/help/Content/release-notes/release-notes-6-5-4-0-Nov-4-2025.htm)
- [myITprocess updates that make improve QBR reporting - IT Glue](https://www.itglue.com/blog/myitprocess-qbr-updates/)

---

## CloudRadial
Source: cloudradial.com, blog.cloudradial.com

Channel is the self-service client portal itself — explicitly framed as replacing the scheduled-meeting cadence: "on-demand QBRs, infrastructure reporting, security metrics, and performance dashboards... available 24/7 without waiting for your team to compile information." This is the one vendor in this set whose marketing explicitly argues *against* the point-in-time-report model — relevant to blueprint §15's Customer Engagement option 3 (client-facing view between EBRs), which the qbr-ebr.ux.md competitive scan (footnote 50, see channel-gap-04) says none of ScalePad/myITprocess/Datto/CloudRadial do. **Direct tension worth flagging:** CloudRadial's own current marketing copy (checked live, 2026-09-01) describes exactly this always-on client-facing capability, which appears to contradict the qbr-ebr.ux.md footnote's July 2026 finding that CloudRadial does not offer a between-EBR client-facing view. Not resolved by this pass — could be a marketing-claim-vs-shipped-feature gap, a change since July, or a definitional mismatch on what counts as "client-facing between EBRs." [CS: MEDIUM — vendor site, one direct contradiction with corpus finding, unresolved]

- [Six Steps to Scaling the QBR](https://blog.cloudradial.com/6-steps-to-scaling-the-qbr-for-the-msp)
- [CloudRadial: AI-Powered Service Delivery & Client Success Platform](https://www.cloudradial.com/)
- [CloudRadial Unified Client Portal for IT Service Desk](https://info.cloudradial.com/unified-client-portal)

---

## vCIOToolbox
Source: datto.com/integrations, vciotoolbox.freshdesk.com, vciotoolbox.com

Channel is PSA-embedded writeback, not a client-facing surface: 2-way ticket sync + 2-way opportunity sync to Autotask, documented as a working integration in current (2026) docs — "project recommendations made within vCIOToolbox can be sent to Autotask Opportunities integrating into standard sales workflow and reporting." **Divergence from corpus:** qbr-ebr.ux.md footnote 43 (July 2026 sweep) characterized vCIOToolbox's AI features as "future tense... not shipping" and its pricing page as opaque (403). The sync-mechanism claim (distinct from the AI-feature claim) reads as shipped and documented in current vendor material — this may not actually contradict the footnote (which may have been scoped to AI features specifically, not sync), but it's close enough to the same claim territory to flag rather than silently carry forward. [CS: MEDIUM — vendor docs; genuine ambiguity about whether this contradicts or is consistent with the July footnote]

- [vCIOToolbox | Datto Integrations](https://www.datto.com/integrations/vciotoolbox/)
- [PSA | Datto Autotask Integration Setup Instructions : vCIOToolbox](https://vciotoolbox.freshdesk.com/support/solutions/articles/43000664239-psa-datto-autotask-integration-setup-instructions)
- [Home | QBR, TBR, Compliance and Risk Management - vCIOToolbox](https://vciotoolbox.com/)

---

## mspprocess.com (the source behind blueprint §13's SMS-to-ticket precedent)
Source: direct fetch, mspprocess.com, 2026-09-01

Confirmed: multi-channel intake platform — Teams, SMS, WhatsApp, email, portal, mobile app — with AI voice/text verification, converging into PSA tickets. Vendor's own performance claims: median 4.2 seconds for caller identity confirmation; "processes requests across 9+ channels into PSA systems in under 2 seconds." Integrates with ConnectWise, Autotask, HaloPSA, Syncro, Microsoft Teams. Claims SOC 2 Type II certification, "over 1,000 MSPs" served. [CS: MEDIUM — direct fetch of vendor site, single source, vendor self-report]

**Could not verify:** the specific figures cited in blueprint §13 ("98% open rate, ~3min avg response vs ~3-day email") do not appear anywhere on the fetched page content. Either those stats live on a different page/source not fetched in this pass, or the blueprint's citation needs re-checking against its original source before being quoted again. [CS: LOW — the 98%/3min/3-day figures specifically, not found in this fetch]

- [MSP Process](https://mspprocess.com) — fetched directly, 2026-09-01

---

## Cross-source read (ingredients only, not a synthesis claim)

Delivery mechanisms found across these five, listed discretely — not ranked, not recommended:
1. Live-presented + password-protected link + PDF export (ScalePad)
2. PDF + always-on client portal (myITprocess)
3. Always-on client portal only, explicitly anti-point-in-time (CloudRadial)
4. PSA-ticket/opportunity writeback only, no client-facing surface named (vCIOToolbox)
5. Multi-channel (SMS/Teams/WhatsApp/email/portal) → PSA ticket, bidirectional intake (mspprocess.com — not a QBR/EBR tool specifically, general MSP-client-communication category)

No tool in this pool combines "client-facing delivery" with "PSA-ticket writeback" in one product, per the sources checked here.
