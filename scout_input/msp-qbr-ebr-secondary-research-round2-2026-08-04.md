# MSP QBR/EBR Secondary Research — Round 2 (archived working copy)

**What this is:** verbatim-preserved working copy of a second secondary-research sprint on MSP
QBR/EBR practice, run independently of the 2026-07-28 sweep (`SECONDARY-SOURCES-REGISTER-qbr-ebr-2026-07-28.md`).
**Compiled:** August 2026 · **Prepared by:** Elizabeth Connor, N-able · **Filed:** 2026-08-04

**Original files (not duplicated here, referenced):**
- `RESEARCH_HANDOFF_FOR_UX_BRIEFS.md` — summary of key findings for UX brief updates
- `MSP_QBR_EBR_Secondary_Research.docx` — 20 sourced sections, full research (converted to plain text below for the parts not already echoing the 2026-07-28 register)
- `MSP_QBR_EBR_Abductive_Analysis.xlsx` — abductive analysis: confirms / challenges / gaps, 70 rows

**Reconciled against the 2026-07-28 register 2026-08-04:** 9 of the docx's 20 sections are echoes
of sources already cited there (ConnectWise/Bufano §7 is the *same* article, same ABCD framework
— already fully cited). Only genuinely new source clusters are archived in full below. See
`qbr-ebr.ux.md` §4/§6/§1a for where each was folded in, and the Confluence "ACP Secondary Research
— MSP QBR/EBR Practice" page (AI space, 62226858351) for the canonical online register update.

---

## New source clusters (not previously in the 2026-07-28 register)

### Mooncamp — "QBRs and OKRs: The Complete Guide [2026]"
mooncamp.com/blog/qbr-okr · Cristina Sees · updated June 2026 · ⚠️ paraphrased, not verbatim ·
**covers INTERNAL QBRs, not MSP-to-client — do not blend as MSP evidence, method-transfer only**

Internal-vs-external QBR distinction (a well-run external/client QBR depends on the MSP having run
its own internal one first — not separated in MSP literature). Output-vs-outcome as the core
failure mode (ticket counts = output; reduced business risk = outcome). OKRs as the QBR backbone —
pre-agreed KPIs turn QBR prep from data-collection (3h) into synthesis (30 min). Specific agenda
timing (intro 5-10min → performance review 10-20min → successes/challenges 10-20min → realignment
15min → strategic planning 30min [largest block] → Q&A 10-20min → close 5-15min; total ~90min-2h).
Named "QBR owner" role. Pitfalls: lack of prep, no agenda, wrong stakeholders, too retrospective,
no follow-through. Two dissenting exec quotes (Prezi CEO, ex-Intercom CEO) argue internal QBRs are
"a relic of slower-moving time" — neither dismisses the concept, both argue against infrequent/
poorly-prepared/backward-looking versions.

### Salesforce Blog — "What Is a QBR?"
salesforce.com/blog/sales/what-is-a-qbr/ · Kristen Handler, Senior AM, Red Argyle · May 2024/Apr
2025 · ⚠️ paraphrased · account-management perspective, not MSP-specific but directly analogous

**Customer champion as co-creator** — before the meeting, ask the champion what story they want to
tell, what their management will focus on, what they want out of it. Flips "we present to you" to
"we present together" — champion's own credibility is on the line too. **Limit vendor attendees** —
customers give more honest feedback when not outnumbered; typical: account manager + exec sponsor +
project manager only. Content structure: history of partnership, data vs. last QBR, insights (data
→ story), customer stories, financial check-in (budgeted vs. actual, honest about variances),
feedback ask, forward look. **Two-step follow-up**: 24hr recap email to all attendees; **one-week
debrief with the champion specifically** ("how did it land with your execs?") — feedback loop
absent from most MSP guidance. QBR content flows upward — some executives only see summarised QBRs
at the annual EBR, so QBR content must be designed knowing it gets filtered upward.

### Zack Urlocker (Substack) — "How To Run A Great QBR"
buildtoscale.substack.com · April 30, 2024 · ⚠️ paraphrased · **INTERNAL sales QBR, not MSP-to-
client** — Stop/Start/Continue framework is the transferable piece

Explicit scope-definition pushback: "not a forecasting meeting, not a deal review, not a
performance review — a territory review." **Stop/Start/Continue** framework: each party names what
to stop, start, continue — concrete non-confrontational mutual-accountability close, applicable to
MSP↔client QBRs on both sides. Cross-functional attendance ("no spectators — all attendees should
have skin in the game"). Pattern recognition across a portfolio — an issue seen once is noise, seen
repeatedly is a system signal (MSP parallel: aggregate QBR findings across the client base to
surface product/service signals — no MSP source currently does this). Deck structure includes an
explicit "losses and lessons learned" slide — most MSP templates only show wins. In-person > remote
for shaping strategy, not just reporting.

### Reddit r/CustomerSuccess — two distinct threads
Both community/practitioner voice, B2B SaaS CS (not MSP), unfiltered — valuable precisely because
not vendor-authored. ⚠️ paraphrased, not verbatim.

**Thread 1 — "Automated QBRs - Thoughts"** (u/Fine-List6942 OP, ~1yr ago): "QBRs/EBRs are
incredibly time-consuming... it's a really delicate process — not sure how a tool could fully
automate it without losing the nuance." u/UnlimitedSaaS: real implementation, ~80% CSM time
reduction via Matik + UnifyApps, "still the final mile — 20% of refinements, checks, review, manual
additions." u/I_Hate_Kidz: uses free Google NotebookLM (manual copy-paste of emails/docs) for
synthesis/prioritisation, not data-pulling. u/Volcano_Jones challenge: "sounds like your data
infrastructure just sucks" — OP: "data is very scattered... not just data outputs, need the bigger
picture."

**Thread 2 — "QBR Deck Automation?"** (u/Vageeen, ~6mo ago, presales/CS background): live
implementations named — DIY Google Apps Script (CitizenJosh, button-press slide refresh); Rollstack
(Hobbe-Teapot, dedicated QBR automation vendor, field-mapping — "hardest part is always getting the
data extracted... I don't think a vendor should do the analysis for you, they won't understand your
data the way you do"); Google Gemini deck generation from templates (mercilesskiller); BigQuery +
Sheets + Slides pipeline (Volcano_Jones) — **"what about insights and strategy? You can't automate
that, and that is 90% of the work. The data is basically just an appendix."** Minority counter-view
(u/Experience-Prior): fully automated QBR that *did* reduce headcount, not just save CSM time —
both models coexist in the market.

### InsightFactory.ai — case study, "Automated QBR Reporting"
insightfactory.ai/insights/case-studies/downer-federated-factory2/ · June 2025 · Australian data/AI
managed-services firm · client: Downer Group (large enterprise) · ⚠️ paraphrased, enterprise
context not MSP-specific

Real deployed pipeline: extracts from source systems → curates into agreed KPI framework →
populates templated pack → outputs PPT/PDF. Saved "hundreds of hours each quarter." Framing: "goal
is allowing leadership to focus on insight and action rather than reporting production." Clearest
single articulation found of the automation boundary: automatable = extraction, KPI calc, trend
comparison, formatting, generation, consistency, scheduling; not automatable = strategic narrative,
client-specific context, value translation, the conversation itself, relationship intelligence.

### Gartner — Emerging Tech Impact Radar: Generative AI
Report G00809486 · Zimmermann, Casey +15 co-authors · published 14 Feb 2025 · ⚠️ paraphrased —
Gartner proprietary, synthesised not reproduced

Tracks 22 GenAI technologies on range (years-to-mainstream) × mass (breadth/depth of impact).
Relevant to QBR/EBR: **GenAI Virtual Assistants** — Range: Now / Mass: Very High, 90% of
conversational AI embeds GenAI by 2026. **GenAI-Enabled Apps** — Range: 1-3yr / Mass: High, main
barrier is data readiness. **Domain-Specific LMs** — Range: 1-3yr / Mass: Very High, near-term value
= automating drafts/summaries. **Reasoning models** — Range: 1-3yr / Mass: Very High, planning/
orchestration layer for agentic systems. **Agentic AI** — **Range: 3-6yr / Mass: Very High** —
Gartner explicit: current systems "remain unreliable and require human supervision... early examples
of agentic AI rather than the fully developed agents promised by future models." Trust is the
primary adoption barrier, not capability. Quantified: by 2028, one-third of enterprise GenAI
interactions will invoke autonomous agents, up from <1% in 2023.

### QBR automation tool landscape — UpdateMate.ai, Korl, Arahi.ai, Taskade
updatemate.ai/for/customer-success/automate-qbr-prep (Nov 2025) · korl.co/use-cases/quarterly-
business-reviews · arahi.ai/marketplace/qbr-prep-automator · taskade.com/blog/automate-customer-
success (July 2026) · ⚠️ paraphrased, vendor pages — capability claims, not independent research

**UpdateMate.ai**: AI agent compiling QBR briefs (not decks) from CRM/product/support/billing data.
Framing: "the goal is not to create a bigger deck. The goal is to help the CSM lead a better
conversation." **Lists MSPs as a named target segment, alongside SaaS, agencies, and fintech — not
MSP-exclusive.** No PSA writeback claimed. **Korl**: branded QBR deck generation, "digital QBR"
async/self-serve format, SOC2. **Arahi.ai**: no-code QBR-prep agent template, general-purpose CS
automation adapted for QBR — commoditisation end of market. **Taskade**: 2026 platform guide, five
agents in build order (onboarding, health-scoring, churn-risk, QBR-prep, renewal-nudge); explicit
99/1 boundary — "you can automate roughly 99% of customer success... the 1% you keep is the part
that actually drives retention." None of the four claims to automate the strategic conversation
itself; none confirms PSA ticket writeback.

### Journeyz — "Transforming QBRs: How AI Elevates CS QBRs"
journeyz.io/blog/ai-elevates-customer-success-qbrs · 27 Feb 2025 · vendor blog, SaaS CS not MSP ·
⚠️ paraphrased

Four named traditional-QBR failure modes (issues escalate between cycles; new problems catch teams
off-guard near the next QBR; over-performance goes unrecognised; static data goes stale). Five
principles AI-transforms: personalised QBR plans per stakeholder persona; real-time ROI emphasis
vs. retrospective data; **"Value Score"** — composite of usage + satisfaction + achieved outcomes,
replacing output-heavy health scores; automated peer benchmarking; AI-suggested next-QBR scope.
**AI-suggested next steps post-QBR** — genuinely new: AI analyses meeting data + health score to
suggest next steps/owners/dates automatically, closing the loop between meeting and post-meeting
workflow (current MSP practice: manual notes → manual PSA entry).

### Adam Parsons (FLPI) — "Using AI to Revolutionise Your QBR Prep"
LinkedIn Pulse, June 24 2025 · UK, CS/AI practitioner, newsletter "Artificially Intelligent" ·
⚠️ paraphrased · SaaS CS context, specific figures not found elsewhere

Claims ~80% QBR prep-time reduction (~23h saved per QBR; ~92h/quarter at 4 QBRs/CSM). Five-step
framework: (1) audit the current process before deploying AI — "laser-focused on real problems
rather than hype"; (2) choose tools by integration readiness not feature lists; (3) define success
metrics upfront (hours saved, insight depth, engagement, business impact); (4) avoid pitfalls — poor
data quality, low adoption, integration headaches; (5) pilot on one account, appoint an AI champion,
build reusable templates. **Workflow: AI as first-draft generator (he names Claude specifically),
human as editor** — the CSM's role shifts from author to editor; skill required shifts from
"write a good QBR" to "prompt well and edit critically." Explicit boundary statement: **"AI will not
run your QBRs for you, and if it does, your QBRs will cease being valuable to your clients."**
Personalisation named as the irreducible human task — "it lives in the CSM's head, not in any data
system."

### TechWyse (LinkedIn, client-facing) — "Essential Questions to Ask Your MSP"
UK · Aug 9, 2024 · ⚠️ paraphrased · **client-facing: an MSP writing to educate its own clients** —
rare source type, not MSP-practice literature

Opens with a structural admission: "often the agenda is driven by the MSP but it is essential to
make sure you get the answers you need." Seven client-side areas to cover: IT performance/
reliability, security posture, support experience, projects/roadmap, budget/cost, business
alignment ("does the MSP understand how the business has changed? advising proactively or
reactively?"), forward planning. Reading: clients often don't know what they're entitled to ask;
many attend passively, receiving a report rather than participating.

### Kelser Corporation (client-facing) — "Why Do You Need An IT QBR? What Should You Ask?"
kelsercorp.com/blog · Feb 12, 2025 · Connecticut, US, regional MSP writing to SMB clients ·
⚠️ paraphrased · client-facing

Frames the QBR as **contract verification** (against the MSPA) — client-centric, differs from the
MSP-facing relationship/upsell framing. Risk list when QBRs are absent: project delays, cost
overruns, missed correction windows, lack of alignment, inability to adapt, growing frustration.
**8 client questions**, operationally focused (KPIs/SLA compliance, major issues, uptime %,
response/remediation times, cost-savings, regulatory compliance, cybersecurity effectiveness, "how
will you address my specific concerns"). Notably absent: strategic/business-goal questions — this
SMB-regional profile skews operational-reliability, not strategic-partnership. **Names the vCIO as
the typical QBR lead** — bridges operational and strategic; for clients, vCIO presence signals
"this meeting is strategic, not just a metrics debrief"; for MSPs, vCIO-led QBR is a differentiator.

### Exigent Technologies (client-facing) — "Five Reasons to Demand Business Reviews with Your MSP"
exigent.net/techwise-blog · Aug 6, 2024 · Daniel Haurey (founder), NY/NJ MSP · ⚠️ paraphrased ·
client-facing

Title's "demand" framing implies inconsistency: "any trusted business partner should be proactive
in scheduling regular business reviews" — implying some aren't. Five client benefits: performance
evaluation, strategic alignment (only works if client actively participates), issue ID/resolution
(non-adversarial forum, grievances fester without it), relationship building, tactical insights
(industry trends/risks as an information channel, not just a performance debrief). **Five-category
client question framework**: performance & metrics; service delivery & support; security &
compliance; cost management; roadmap & future plans (incl. end-of-life hardware as a named budget
item — MSP-specific, not found in any other source in this sprint).

---

## Sections found to ECHO the 2026-07-28 register (not archived again, not new evidence)
ConnectWise "8 Best Practices for Client QBRs" (Rob Bufano) — same article, same ABCD framework,
already fully cited in the 2026-07-28 register. HaloPSA, ScalePad, GitLab Handbook, Gainsight,
Totango, Dock.us, Customer Success Collective — all already cited there under the same or
overlapping URLs.

---

*Verbatim source text (all 20 docx sections, full detail) preserved in this session's scratchpad
at conversion time; the docx/xlsx originals remain the source of record —
`MSP_QBR_EBR_Secondary_Research.docx` / `MSP_QBR_EBR_Abductive_Analysis.xlsx`, filed 2026-08-04
alongside `RESEARCH_HANDOFF_FOR_UX_BRIEFS.md`.*
