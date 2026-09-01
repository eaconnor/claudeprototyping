# Scout dossier — What replaces the QBR? (continuous review, narrative memo, MSP-specific, AI-agentic threads)
Scouted: 2026-08-19 | For: Beth Connor, Band Protocol / N-able Harness (QBR-to-always-on redesign)

## Framing note before the material

This is a thin domain in a specific way worth naming before anything else: there is abundant "QBRs are broken/dying" commentary (already in Beth's corpus — Prezi/Intercom CEO, Zomentum, Paul Green, Vanessa, Stefanie Hammond) but very little that names a *stabilized, adopted replacement ritual* with a consistent term, cadence, and format across multiple independent sources. What exists instead: (a) one vendor coining a category term for its own product (Cast.app's "AIBR"), (b) generic "continuous monitoring" language used by CS platforms about their own dashboards, (c) MSP-specific commentary that reframes QBR *content* (risk vs. operations) without changing cadence or format, and (d) zero evidence of narrative-memo culture (Amazon 6-pager style) being adapted for *external, client-facing* reviews anywhere. [WOBBLY] — the "replacement ritual" pool is narrow, vendor-dominated, and none of it has multi-year track record; most of the 2025-2026 dated material is marketing-adjacent (company blogs selling the exact product they're describing as inevitable).

If Beth is designing the always-on QBR replacement, the search suggests she may be **naming a category that does not yet have settled form** rather than adopting an existing one. That itself is a finding.

---

## Thread 1: Continuous/always-on business review (CS practice) — STRONGEST THREAD

### Cast.app — "AI Business Review" (AIBR)
- Source: [QBR in 2026: From Quarterly Meetings to AI Business Reviews](https://cast.app/ai-business-review-vs-qbr-2026)
- Author: Dickey Singh, CEO/Founder, Cast.app (a CS automation vendor)
- [CS: MEDIUM] [WOBBLY — vendor content, promotes own product] Named framework: "AIBR" — defined as on-demand, near-real-time, persona-aware business review "created and presented by AI agents," explicitly positioned as successor to quarterly meetings.
- [CS: MEDIUM] Format specifics claimed: async video presentation + live Q&A + push notification (email/text/Slack/Teams) + pull-model portal access. Explicit framing: "not a dashboard... a fundamental shift from a Report to a System."
- [CS: LOW] Stat cited: "72% of customers think QBRs are a waste of time" — no primary source given in the fetch; treat as unverified vendor stat until traced.
- [CS: MEDIUM] Claimed outcome stats: coverage expansion from 5-20% of accounts to 100%; CSM time savings of 6-8 hrs of manual assembly per review. Vendor-asserted, not independently verified.
- Use: this is the single clearest *named* alternative-category term found in the scan. Treat the term "AIBR" as one vendor's coinage, not an industry-adopted standard — no second source uses this term.

### Scopable — "living view" continuous data sync
- Source: [MSP QBR Template: Run Strategic QBRs in 20 Minutes (2026)](https://scopable.io/blog/msp-qbr-template), published April 25, 2026
- [CS: MEDIUM] [WOBBLY — vendor content, Scopable sells a vCIO/QBR platform] Does not rename the ritual or propose new cadence — argues QBR *meeting* stays quarterly, but prep becomes continuous: "the data connection isn't a QBR feature — it's the foundation the QBR runs on." Client environment/budget/roadmap/risk profile syncs continuously; meeting itself unchanged in cadence.
- [CS: LOW] Claimed outcome: prep time drops from 3-8 hours to ~10 minutes.
- Note: this is a meaningfully *different* model from Cast.app's — Scopable keeps the periodic meeting and makes only the backend continuous. Divergence itself is data: two MSP-adjacent vendors solving "QBR is broken" arrive at different structural answers (kill the meeting vs. keep the meeting, kill the prep).

### Perspective AI — health score cadence
- Source: [Customer Health Score Automation in 2026](https://getperspective.ai/blog/customer-health-score-automation-2026-signals-that-predict-churn)
- [CS: LOW] [WOBBLY — vendor content] Claims health scores "should recalculate at least daily for telemetry and business signals," qualitative/conversational signals on "continuous or triggered cadence." Argues rule-based quarterly scorecards are being displaced by AI-driven models parsing unstructured conversation data (not just usage telemetry), citing NPS response-rate limits (5-15%) as the qualitative-layer problem AI solves.
- No independent verification found of adoption rate or named companies actually running this model in production.

### CS platform vendors generally (Gainsight, ChurnZero, Catalyst/Totango)
- [CS: LOW] [WOBBLY] No source found stating any of these platforms have *replaced* QBR cadence as a stated company position. ChurnZero markets "real-time customer health scores" and triggered workflows (via [Compare ChurnZero and Gainsight](https://churnzero.com/compare-churnzero-vs-gainsight/)); Catalyst (now Totango) is described in aggregator content as favoring "scheduled, strategic reviews over real-time alerts" — i.e., the opposite direction. ChurnZero's own "digital customer success trends" blog post (referenced in search snippet, mentions "Continuous Customer Outcomes") returned 403 on direct fetch — **could not verify this claim directly**. [CS: UNKNOWN] until re-fetched.
- Direct link (fetch blocked, use with caution): [Four digital customer success trends to watch in 2025 — ChurnZero](https://churnzero.com/blog/digital-customer-success-trends/)

### Independent practitioner counter-signal
- Source: [Are Your QBRs Actually Moving Anything?](https://newsletter.thecustomersuccesspro.com/p/are-your-qbrs-actually-moving-anything)
- Author: Anika Zubair, independent CS practitioner, runs "The Customer Success Pro's Newsletter" and CSM RevUP Academy. [CS: HIGH] on attribution (not vendor-affiliated with a QBR-automation product).
- [CS: VERIFIED — per fetch] Critiques QBRs on three axes: treated as usage reports, one-way presentation instead of dialogue, no strategic close. **Does not propose a new cadence or named ritual** — proposes reforming the *content* of the same quarterly meeting into a "value-led EBR" with a "Before/Action/After" narrative structure. This is evidence *for* Beth's thin-domain read: even a practitioner actively critiquing QBRs, writing in 2025-2026, does not reach for "kill the meeting" — reaches for "run a better meeting."
- Notable: this independently corroborates the EBR-not-QBR terminology drift already in Beth's corpus (Vanessa, Stefanie Hammond) — third independent voice dropping "QBR" for "EBR," though for framing reasons (executive focus) rather than cadence reasons.

---

## Thread 2: Async narrative-memo culture as external review replacement — NO EVIDENCE FOUND

- [CS: HIGH] Amazon's 6-pager / no-PowerPoint internal meeting culture is extremely well documented as an *internal* decision-making format. Representative sources:
  - [The Amazon 6-Pager: What, Why, and How](https://www.larksuite.com/en_us/blog/amazon-6-pager)
  - [The Ultimate Guide to Amazon's 6-Pager Memo Method](https://medium.com/@info_14390/the-ultimate-guide-to-amazons-6-pager-memo-method-c4b683441593)
  - [Amazon Memo: What Lessons Does It Hold?](https://managementconsulted.com/amazon-memo/)
  - Structure: Introduction, Goals, Tenets, State of the Business, Lessons Learned, Strategic Priorities. Meetings open with 20-30 min silent reading before discussion.
- [CS: LOW — absence, not fabrication] **No source found in this scan applying the narrative-memo format to external, client-facing business reviews.** Search for this specifically returned zero relevant hits — results redirected to internal Amazon culture, generic "storytelling in CS" marketing content ([The Power of Storytelling in Customer Success](https://www.csinsider.co/email/power-of-storytelling-in-customer-success)), or brand-narrative content unrelated to review rituals.
- Flag this as a real negative finding, not a search gap: the "write instead of present, external version" pattern does not appear to exist in named/documented form as of this scan. If Beth builds a client-facing narrative-memo-style review, she would likely be building something without a documented precedent in this space — worth knowing whether that's a design opportunity or a sign the format doesn't translate externally (external audiences may lack the shared context/silent-reading ritual buy-in that makes Amazon's internal version work).

---

## Thread 3: MSP/IT-service-provider-specific named cadence/format shift — THIN

- Source: [MSP QBRs Are Shifting to Risk Reviews and Perspective is Key](https://securityboulevard.com/2026/01/msp-qbrs-are-shifting-to-risk-reviews-and-perspective-is-key/) (also on [IronScales blog](https://ironscales.com/blog/msp-qbrs-are-shifting-to-risk-reviews-and-perspective-is-key))
- Author: James Savard, writing for IronScales (a security vendor). [WOBBLY — vendor content, security-vendor angle on QBR]
- [CS: MEDIUM] Claim: "more than two-thirds of MSPs say their clients expect them to play a strategic role in cybersecurity and risk management" — driving QBR content reorientation toward risk/compliance. No primary source/survey citation found in fetch to verify the "two-thirds" figure independently. [CS: LOW] on the stat itself.
- [CS: MEDIUM] Explicitly does NOT propose abandoning quarterly cadence — recommends *event-triggered* reviews "tied to specific risk events, compliance milestones, or business changes rather than a fixed quarterly schedule," as an option alongside quarterly, not a replacement for it. Calls the reframed content "risk reviews" but doesn't establish this as a named ritual with its own cadence.
- No other MSP-specific (as opposed to general B2B SaaS CS) source found proposing a named alternative format. Scopable and general MSP QBR template content ([Scopable](https://scopable.io/blog/msp-qbr-template), [Guardz](https://guardz.com/blog/the-ultimate-quarterly-business-review-qbr-checklist-for-msps/), [Axcient](https://axcient.com/blog/the-four-rs-of-msp-qbr-success-a-handbook/), [LTVplus](https://www.ltvplus.com/msp/msp-qbr-guide/)) all still treat QBR as a quarterly meeting to be run better/faster, not replaced.
- [THIN DOMAIN — vendor pool] The entire MSP-QBR content pool that surfaced is vendor blog content (security vendors, RMM/PSA-adjacent vendors, MSP marketing agencies) optimizing for SEO on "QBR" as a search term. No independent trade press, analyst firm (Gartner/Forrester MSP-specific), or peer-reviewed practitioner source found discussing a named MSP-specific ritual replacement. This is a narrower, more marketing-saturated pool than general B2B SaaS CS content.

---

## Thread 4: AI-agentic specifically enabling continuous review instead of meetings

- Source: [Agentic AI for Customer Success in 2026](https://onramp.us/blog/agentic-ai-customer-success)
- [CS: LOW] [WOBBLY — vendor/consultancy content] States agents provide "continuous scoring across usage, sentiment, and engagement, with alerts before risk becomes churn" and work "continuously in the background" — but on direct fetch, **does not explicitly connect this to replacing QBR meetings or naming a cadence/format** (no weekly digest, no triggered-alert structure specified). Weaker source than the search snippet implied; snippet-level "weekly digest in Slack" claim did not confirm on fetch of this specific URL — likely came from a different source in the result set, unconfirmed which one. [CS: UNKNOWN — attribution unclear, do not cite the "weekly digest in Slack lists five customers" line to onramp.us specifically]
- General search snippets (unfetched, treat as [CS: LOW] until verified) surfaced repeated language across multiple vendor-content pieces (Coworker.ai, MeetGeek, Viktor, Perspective AI — [Best AI Customer Success Platforms 2026](https://getperspective.ai/blog/best-ai-customer-success-platforms-2026-12-tools-churn-health-retention), [AI for Customer Success: Renewal Risk, QBR, Expansion](https://viktor.com/blog/ai-for-customer-success), [How AI Agents Transform Customer Success](https://coworker.ai/blog/how-ai-agents-transform-customer-success-management)) describing a converging pattern: **triggered alert → agent drafts action (save plan, follow-up, forecast update) → human reviews/approves**. This pattern recurs across several independently-branded vendor blogs, which raises it above single-source status, but every instance is vendor content selling agentic CS tooling — [WOBBLY], not independent trade press or academic source.
- No named, adopted term for this pattern was found (no equivalent to "AIBR" achieving second-source usage). "Weekly digest" and "on-demand generation" both appear as *described mechanisms* across vendor content, not as an agreed industry term.

---

## Cross-cutting observations for Beth (surfaced, not synthesized)

- Two structurally different vendor bets exist in the same MSP/CS space: keep-the-meeting-kill-the-prep (Scopable) vs. kill-the-meeting-make-it-a-system (Cast.app/AIBR). These are incompatible design directions — naming this divergence, not resolving it.
- The strongest, most-repeated *mechanism* across sources (not a named ritual, a mechanism) is: continuous signal ingestion → threshold/trigger → agent-drafted action → human approval. This appears in Cast.app, Perspective AI, onramp.us-adjacent content, and generic CS-AI vendor blogs independently.
- Every source using the word "continuous" or "always-on" in this space is either a CS/MSP software vendor or a vendor-adjacent blog. No analyst firm (Gartner, Forrester, TSIA), academic source, or independent trade journalist source was found proposing or documenting a named replacement ritual. [WOBBLY] applies to this entire thread as a whole, not just individual sources.
- Forrester has published QBR-adjacent research ([Operationalizing the Sales Quarterly Business Review](https://www.forrester.com/report/operationalizing-the-sales-quarterly-business-review/RES173660)) — paywalled, not fetched, flagging as a possible primary source Beth may have access to via N-able's analyst relationships that this scan could not verify content of. [CS: UNKNOWN — not accessed].
