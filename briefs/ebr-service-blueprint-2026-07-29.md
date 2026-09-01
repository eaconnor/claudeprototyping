# EBR/QBR Service Blueprint — all stages, in the map

- **Artifact type:** service blueprint (an experience map with the back of the house added). Rows 1–5 are the customer-facing experience map; rows 6–8 sit below the Line of Visibility; the last row is our own build checked against the map.
- **Canon:** "A Guide to Service Blueprinting," Nick Remis + the Adaptive Path team at Capital One (1st ed., Nov 2016). Frontstage row bands follow the PICNIC experience-map template.
- **Columns:** 26 service moments across 7 experience stages — Entice · Enter · Schedule · 8 named Prep-Assemble pulls · Prep-Judge · the 12 live meeting moments (Stefanie Hammond's own tab order) · Follow-up · Extend.
- **Date:** 2026-07-29 · **Owner:** Beth Connor (Apex UX, N-able) · **For:** Will, Nicole, acp-core engineering · **Status:** first draft
- **Companion files:** `ebr-service-blueprint-2026-07-29.html` · `ebr-service-blueprint-2026-07-29.pdf` (one-sheet poster, 58×54in)

## Evidence base — read before quoting

> What this map is built from — read this before quoting anything off it. Small-n qualitative research only. Two sources: one taught process (Stefanie Hammond, N-able Head Nerd — a recorded training session plus her real 15-tab EBR template) and one MSP operator's account of running that process for a year (Vanessa Chart, Technica Solutions — n=1, a vendor-selected reference customer). Both are vendor content. That makes this map directional, not projectable: it tells you what the work actually looks like and where it hurts. It does not tell you how common any of it is, and no figure on this page should be read as a market number. The receipts: briefs/ebr-process-map-2026-07-28.md (Maps 1–6, timestamped quotes) · briefs/context/qbr-ebr.context.md (the standing spec, fully footnoted) · scout_input/stephanie-hammond-ebr-sources-2026-07-28.md (raw source list) · Executive Business Review Template 1.xlsx (Stefanie's actual template). Jargon index is at the bottom of this page.

```yaml
evidence_base:
  type: small-n qualitative
  projectable: false
  directional: true
  sources:
    - name: Stefanie Hammond (N-able Head Nerd) taught EBR process
      kind: vendor training session + 15-tab EBR template
      n: 1 taught framework
    - name: Vanessa Chart (Technica Solutions, Head of Client Delivery)
      kind: operator account, ~1 year running the framework
      n: 1
      selection: vendor-selected reference customer
  caveat: both sources are vendor content; several Stefanie figures are single-source or uncited
  receipts:
    - briefs/ebr-process-map-2026-07-28.md
    - briefs/context/qbr-ebr.context.md
    - scout_input/stephanie-hammond-ebr-sources-2026-07-28.md
    - Executive Business Review Template 1.xlsx
build_checked:
  repo: acp-core-main
  read: 2026-07-29
  coverage_of_26_steps: {built: 0, specced: 1, adjacent: 8, absent: 17}
```

## Cast

- **Craig** — *Owner/Partner — buyer/champion.* Went to Empower, brought the framework home. Not a swimlane actor in a single cycle — he's why the practice exists.
- **Vanessa Chart** — *Client Delivery Lead — the user.* 4–5h/EBR, hit her own ceiling at 4/week. Deliberately not a technician.
- **Head of Technical Overview** — *Hidden cost center.* Pulled off the service desk to build the risk review.
- **Client Executive** — *The customer in this blueprint.* Not interested in the back end; arrives guarded if the MSP's gone quiet.

## Classification key

Maister leverage-ratio distinction (`qbr-ebr.context.md` §6):

| Class | Meaning |
|---|---|
| `production-line` | Pullable / automatable — same inputs give the same output, no judgment in the middle. |
| `hybrid` | Entries are pullable; the synthesis on top of them is judgment. |
| `brains-work` | Live conversation only. Protect it. |
| `unclassified` | Not sorted in the original pass — named honestly rather than guessed. |

Build states on the last row: `BUILT` code exists · `SPECCED` in a spec, no code · `ADJACENT` something related exists but does not do this · `ABSENT` nothing.

Icons: `⚙` machine, no human judgment · `★` needs a human judgment call · `★★` needs judgment from a specific, scarce person.

## The grid — one section per service moment

Each moment carries all 8 row bands plus the build check. `[?]` marks a genuine gap in source.


### STAGE: ENTICE

#### pre-sale, step 1
- **Actions (customer):** Prospect meets AM before deal closes; forms early expectations.
- **Processes, Tools, Tech:** Sales conversation, in-person/call.
- **Thinking & Feeling:** [?]
- **Stressors:** [?]
- **Opportunities (build implication):** [?] open — no material.
- **Staff Actions — Frontstage:** AM: "pre-frames" the relationship.
- **Staff Actions — Backstage:** [?] who preps the AM's pitch — unknown.
- **Support Processes:** [?] none named.
- **ACP TODAY (in the build):** `ABSENT` Nothing. No pre-sale surface. —


### STAGE: ENTER

#### onboarding, steps 2–4
- **Actions (customer):** Attends kickoff, receives welcome gift, joins check-ins.
- **Processes, Tools, Tech:** Kickoff meeting, welcome gift, check-in calls.
- **Thinking & Feeling:** [?]
- **Stressors:** No structure/no framework — "they don't know how to structure them."
- **Opportunities (build implication):** The kit's structural-templating value answers Rib 1 directly — if it's the right structure (Musts 1–8).
- **Staff Actions — Frontstage:** AM: runs kickoff, support-process education.
- **Staff Actions — Backstage:** [?] who preps kickoff materials — unknown.
- **Support Processes:** [?] none named.
- **ACP TODAY (in the build):** `ADJACENT` There is an onboarding spec — but it onboards the MSP into ACP, not the MSP's client into the MSP. Same word, inverted direction. Intent Specs/FSN-82692


### STAGE: SCHEDULE

#### booked live, prior cycle's close
- **Actions (customer):** Agrees to and confirms the next EBR date, live, before leaving the room.
- **Processes, Tools, Tech:** Verbal, in-room — no scheduling tool observed.
- **Thinking & Feeling:** Implied momentum if booking is easy.
- **Stressors:** No system backs the live commit up — if it doesn't happen, cadence discipline resets to whatever's convenient later.
- **Opportunities (build implication):** Build note: the live verbal commit may be load-bearing for show-rate; a calendar-bot replacing it is untested risk.
- **Staff Actions — Frontstage:** Vanessa: books next EBR live, every time.
- **Staff Actions — Backstage:** [?] which cadence tier (A/B/C) applies — assumed known, not confirmed as a system lookup.
- **Support Processes:** [?] no scheduling tool named.
- **ACP TODAY (in the build):** `ADJACENT` ScheduleService can fire a coworker on a cron/interval and is unit-tested — but it is called from no API route. Built infrastructure, no product surface. app/runs/temporal/schedules.py


### STAGE: PREP

#### 1. Warranty/EOL
- **Plain-language definition:** Is this hardware still covered by the maker's warranty, and when does the maker stop patching it at all ("End-of-Life")? Unsupported hardware can't be fixed even once you know it's broken.
- **Service moment:** Assemble — 8 separate data pulls, not one step
- **Actions (customer):** None yet, across all 8 pulls — backstage-only, client not present.
- **Processes, Tools, Tech:** No customer touchpoint at any of the 8 pulls — each pull's specific tool is in Support Processes below.
- **Thinking & Feeling:** n/a across all 8 pulls — client not present.
- **Stressors:** Resource contention across all 8 pulls — one person (Head of Technical Overview) doing all of them, pulled off paying service-desk work for the whole batch, not per-pull.
- **Opportunities (build implication):** ⚙ Direct API pull, no judgment. Feeds Hardware/Software Asset Review + Current Climate.
- **Staff Actions — Frontstage:** Invisible across all 8 pulls — assembly is backstage-only.
- **Staff Actions — Backstage:** ⚙ Head of Tech. Overview: pulls hardware warranty status + EOL dates.
- **Support Processes:** Asset/RMM inventory system (warranty lookup, EOL database).
- **ACP TODAY (in the build):** `ABSENT` No warranty or EOL concept anywhere in code or specs.

#### 2. License utilization
- **Plain-language definition:** Of the software seats the client pays for every month, which ones has literally nobody logged into in 3–4 months?
- **Service moment:** Assemble — 8 separate data pulls, not one step
- **Actions (customer):** None yet, across all 8 pulls — backstage-only, client not present.
- **Processes, Tools, Tech:** No customer touchpoint at any of the 8 pulls — each pull's specific tool is in Support Processes below.
- **Thinking & Feeling:** n/a across all 8 pulls — client not present.
- **Stressors:** Resource contention across all 8 pulls — one person (Head of Technical Overview) doing all of them, pulled off paying service-desk work for the whole batch, not per-pull.
- **Opportunities (build implication):** ⚙ Kit the detection — inactive-login query against login logs is mechanical; what to do about it is judgment, feeds the Business Priorities conversation, not this pull.
- **Staff Actions — Frontstage:** Invisible across all 8 pulls — assembly is backstage-only.
- **Staff Actions — Backstage:** ⚙ Head of Tech. Overview: checks license utilization — who hasn't logged in 3–4mo.
- **Support Processes:** License management tool / M365 admin center / IdP login logs.
- **ACP TODAY (in the build):** `ABSENT` No license/seat/login-inactivity check. (Value Ledger names license_savings as a future secondary-value idea — a savings estimate, not a dormant-seat query. specs/003-value-ledger/spec.md:186)

#### 3. User/staff reconcile
- **Plain-language definition:** Does the list of people who can log in match the list of people who still work there? Catches ex-employees who still have access and new hires who don't yet.
- **Service moment:** Assemble — 8 separate data pulls, not one step
- **Actions (customer):** None yet, across all 8 pulls — backstage-only, client not present.
- **Processes, Tools, Tech:** No customer touchpoint at any of the 8 pulls — each pull's specific tool is in Support Processes below.
- **Thinking & Feeling:** n/a across all 8 pulls — client not present.
- **Stressors:** Resource contention across all 8 pulls — one person (Head of Technical Overview) doing all of them, pulled off paying service-desk work for the whole batch, not per-pull.
- **Opportunities (build implication):** ⚙ Kit the diff — two-list comparison (AD/IdP vs. HR roster) flags joiners/leavers; provisioning follow-up is a separate action, not this pull.
- **Staff Actions — Frontstage:** Invisible across all 8 pulls — assembly is backstage-only.
- **Staff Actions — Backstage:** ⚙ Head of Tech. Overview: reconciles user/employee list.
- **Support Processes:** Active Directory or IdP vs. HR roster (manual or API cross-check).
- **ACP TODAY (in the build):** `ABSENT` No AD/IdP/HR-roster reconcile.

#### 4. Ticket volume + SLA
- **Plain-language definition:** How many support requests came in, and did the MSP answer/fix them inside the response time it contractually promised (its "SLA")?
- **Service moment:** Assemble — 8 separate data pulls, not one step
- **Actions (customer):** None yet, across all 8 pulls — backstage-only, client not present.
- **Processes, Tools, Tech:** No customer touchpoint at any of the 8 pulls — each pull's specific tool is in Support Processes below.
- **Thinking & Feeling:** n/a across all 8 pulls — client not present.
- **Stressors:** Resource contention across all 8 pulls — one person (Head of Technical Overview) doing all of them, pulled off paying service-desk work for the whole batch, not per-pull.
- **Opportunities (build implication):** ⚙ Kit this — a standard PSA report export. Feeds Current Climate.
- **Staff Actions — Frontstage:** Invisible across all 8 pulls — assembly is backstage-only.
- **Staff Actions — Backstage:** ⚙ Head of Tech. Overview: pulls ticket volume + SLA attainment for the period.
- **Support Processes:** PSA (Halo) reporting.
- **ACP TODAY (in the build):** `ADJACENT` PSA exists only as narrative: a "Ticket Triage & Dispatch" coworker story. ConnectWise/Autotask/Halo are named and marked "pending spec — not started." Intent Specs/FSN-82692:437

#### 5. Patch + backup
- **Plain-language definition:** Are systems up to date on security fixes, and are backups running — and, separately, has anyone tested that a backup can actually be restored? "Job succeeded" and "restorable" are different claims.
- **Service moment:** Assemble — 8 separate data pulls, not one step
- **Actions (customer):** None yet, across all 8 pulls — backstage-only, client not present.
- **Processes, Tools, Tech:** No customer touchpoint at any of the 8 pulls — each pull's specific tool is in Support Processes below.
- **Thinking & Feeling:** n/a across all 8 pulls — client not present.
- **Stressors:** Resource contention across all 8 pulls — one person (Head of Technical Overview) doing all of them, pulled off paying service-desk work for the whole batch, not per-pull.
- **Opportunities (build implication):** ⚙ Kit this — direct pull; explicitly flag overdue restore tests, not just backup-job-success — "ran" and "verified restorable" are different claims and the source only confirms the former reliably.
- **Staff Actions — Frontstage:** Invisible across all 8 pulls — assembly is backstage-only.
- **Staff Actions — Backstage:** ⚙ Head of Tech. Overview: checks patch compliance + backup job success/restore-test status.
- **Support Processes:** RMM (patch status) + backup-monitoring tool (job success + restore-test log).
- **ACP TODAY (in the build):** `ADJACENT` A seeded demo "Patch Management Expert" persona and a backup.restore string in one unit test. No RMM, no backup-monitoring connector. scripts/seed_experts.py:37

#### 6. Phish-sim + training
- **Plain-language definition:** Did staff pass the fake phishing emails sent to test them ("phish-sim"), and did they finish required security-awareness training?
- **Service moment:** Assemble — 8 separate data pulls, not one step
- **Actions (customer):** None yet, across all 8 pulls — backstage-only, client not present.
- **Processes, Tools, Tech:** No customer touchpoint at any of the 8 pulls — each pull's specific tool is in Support Processes below.
- **Thinking & Feeling:** n/a across all 8 pulls — client not present.
- **Stressors:** Resource contention across all 8 pulls — one person (Head of Technical Overview) doing all of them, pulled off paying service-desk work for the whole batch, not per-pull.
- **Opportunities (build implication):** ⚙ Kit this — a completion-rate export from the awareness platform.
- **Staff Actions — Frontstage:** Invisible across all 8 pulls — assembly is backstage-only.
- **Staff Actions — Backstage:** ⚙ Head of Tech. Overview: reviews phish-sim results + awareness-training completion.
- **Support Processes:** Security-awareness / phish-sim platform.
- **ACP TODAY (in the build):** `ABSENT` No phish-sim or awareness-training surface.

#### 7. Tenant config vs. baseline
- **Plain-language definition:** Is the client's cloud environment (their "tenant" — e.g. their own Microsoft 365) still set up the way the MSP recommends (the MSP's own "baseline"), or has it drifted?
- **Service moment:** Assemble — 8 separate data pulls, not one step
- **Actions (customer):** None yet, across all 8 pulls — backstage-only, client not present.
- **Processes, Tools, Tech:** No customer touchpoint at any of the 8 pulls — each pull's specific tool is in Support Processes below.
- **Thinking & Feeling:** n/a across all 8 pulls — client not present.
- **Stressors:** Resource contention across all 8 pulls — one person (Head of Technical Overview) doing all of them, pulled off paying service-desk work for the whole batch, not per-pull.
- **Opportunities (build implication):** Hybrid — the config diff is pullable, but "vs. OUR standard" means the baseline itself is MSP-authored judgment, not universal. Don't kit the baseline definition, only the diff against it.
- **Staff Actions — Frontstage:** Invisible across all 8 pulls — assembly is backstage-only.
- **Staff Actions — Backstage:** ★ Head of Tech. Overview: checks tenant security config against the MSP's own baseline (baseline itself is MSP-authored).
- **Support Processes:** Tenant security-posture tool, compared against an internally-defined baseline.
- **ACP TODAY (in the build):** `ABSENT` No posture tool, no baseline-comparison mechanism.

#### 8. Compliance checklist
- **Plain-language definition:** Is the client meeting whatever regulation applies to them — HIPAA for healthcare, PCI for card payments, etc.? Which standards apply per client isn't named in source.
- **Service moment:** Assemble — 8 separate data pulls, not one step
- **Actions (customer):** None yet, across all 8 pulls — backstage-only, client not present.
- **Processes, Tools, Tech:** No customer touchpoint at any of the 8 pulls — each pull's specific tool is in Support Processes below.
- **Thinking & Feeling:** n/a across all 8 pulls — client not present.
- **Stressors:** Resource contention across all 8 pulls — one person (Head of Technical Overview) doing all of them, pulled off paying service-desk work for the whole batch, not per-pull.
- **Opportunities (build implication):** Hybrid — checklist items pullable if the standard is codified; the narrative "are we compliant enough" stays judgment.
- **Staff Actions — Frontstage:** Invisible across all 8 pulls — assembly is backstage-only.
- **Staff Actions — Backstage:** ★ Head of Tech. Overview: pulls status against a named compliance-standard checklist.
- **Support Processes:** Compliance/GRC tool, or a manual checklist if none exists.
- **ACP TODAY (in the build):** `ABSENT` No GRC or compliance-checklist surface.

#### Judge ★
- **Actions (customer):** None yet.
- **Processes, Tools, Tech:** —
- **Thinking & Feeling:** n/a — client not present
- **Stressors:** Operator discomfort in an exec room — no product answer exists.
- **Opportunities (build implication):** Draft the business-consequence translation. Do not build a "documentation shields you legally" claim.
- **Staff Actions — Frontstage:** Invisible — judgment is backstage-only.
- **Staff Actions — Backstage:** ★ Vanessa: judges gap vs. standard, translates to business consequence, sets roadmap priority — the real constraint.
- **Support Processes:** None named — the one moment with no tool at all.
- **ACP TODAY (in the build):** `ABSENT` Nothing — and this is the one step the MSP has no tool for either. Absent on both sides of the map.

> — **LINE OF VISIBILITY** — only the business-value translation and the client-facing extract cross this line. —


### STAGE: ENGAGE — THE MEETING ITSELF (Stefanie's tab order)

#### Meeting Kick Off unclass.
- **Actions (customer):** Arrives, hears purpose/agenda recap.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** [?]
- **Stressors:** [?]
- **Opportunities (build implication):** [?] no material.
- **Staff Actions — Frontstage:** Vanessa: opens meeting, states purpose.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ABSENT` —

#### Current Climate prod-line
- **Actions (customer):** Reviews snapshot of current environment.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** [?]
- **Stressors:** [?]
- **Opportunities (build implication):** Low-risk to auto-generate this tab's content once the 8 pulls feed it.
- **Staff Actions — Frontstage:** Vanessa: presents snapshot.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ABSENT` No environment-snapshot surface.

#### Risk & Security Review hybrid
- **Actions (customer):** Reviews risk register; asks questions.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** "Not really interested in the back end." If translation succeeds, feels informed, not overwhelmed.
- **Stressors:** The load-bearing moment. "Can't prepare 20 min before you walk in." If discomfort wins here: raw data shown instead of translation, meeting reads tactical.
- **Opportunities (build implication):** Confirm-gate any Unverified claim before it's spoken. Restate any prep-time claim as a ratio, never an absolute.
- **Staff Actions — Frontstage:** Vanessa (NOT a technician): delivers pre-drafted translation, parks tech Qs.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `SPECCED` QBR Advisor coworker is specced to "generate client-ready QBR narratives and security/posture summaries" — the closest conceptual match in the whole corpus. 0 of 40 tasks complete; its seed migration never landed; the live Coworker model is an older, flatter shape than the spec assumes. specs/004-ai-coworker-registry

#### Compliancy Review hybrid
- **Actions (customer):** Reviews compliance standing.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** [?]
- **Stressors:** [?]
- **Opportunities (build implication):** Entries pullable; narrative synthesis stays judgment.
- **Staff Actions — Frontstage:** Vanessa: presents compliance standing.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ABSENT` —

#### Business Priorities & Goals brains
- **Actions (customer):** Discusses actual business goals/priorities; gives or withholds consensus.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** Engagement here is what makes the later referral ask land.
- **Stressors:** If this collapses into tech/stats recitation, client sees no value, declines next.
- **Opportunities (build implication):** Do not template. Brains-work — protect it. A product surface should support Vanessa's live judgment, not replace it.
- **Staff Actions — Frontstage:** Vanessa: reads the room, builds consensus, sets priority live.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ADJACENT` Value Ledger GET /summary — the only reporting surface in the build. Automation ROI (time/cost saved by coworkers), not client business goals. api/v1/value_ledger.py:93

#### Hardware/Software Asset Review prod-line
- **Actions (customer):** Reviews asset/warranty status.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** [?]
- **Stressors:** [?]
- **Opportunities (build implication):** Production-line — safe to auto-populate from pulls 1 & 3.
- **Staff Actions — Frontstage:** Vanessa: presents asset review.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ABSENT` No asset inventory.

#### Employee Review prod-line
- **Actions (customer):** Reviews staffing notes.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** [?]
- **Stressors:** [?]
- **Opportunities (build implication):** Production-line — safe to auto-populate from pull 3.
- **Staff Actions — Frontstage:** Vanessa: presents staffing notes.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ABSENT` No staffing surface.

#### Technology Roadmap hybrid
- **Actions (customer):** Reviews 12–36mo roadmap; re-prioritizes live.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** [?]
- **Stressors:** [?]
- **Opportunities (build implication):** Re-prioritization logic could be assisted, but the priority call itself is judgment, set in Prep-Judge and re-tested live here.
- **Staff Actions — Frontstage:** Vanessa: presents roadmap, re-prioritizes live.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ABSENT` No roadmap object.

#### Technology Budget brains
- **Actions (customer):** Reviews budget tied to roadmap. CFO asks for a copy — the buy-in moment.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** The buy-in feeling — CFO wants a copy.
- **Stressors:** [?]
- **Opportunities (build implication):** Protect as brains-work — this is the clearest single ROI-demonstration moment to the client's own buyer (the CFO).
- **Staff Actions — Frontstage:** Vanessa: presents budget, secures buy-in.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ADJACENT` Value Ledger holds cost_saved + encrypted hourly rate — the only money in the build, but it is our ROI, not the client's IT budget. value_ledger/models.py

#### Additional Items unclass.
- **Actions (customer):** [?] unspecified content.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** [?]
- **Stressors:** [?]
- **Opportunities (build implication):** [?] content unspecified.
- **Staff Actions — Frontstage:** Vanessa: covers additional items.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ABSENT` —

#### Referrals & Testimonials brains
- **Actions (customer):** May give a referral or testimonial when asked.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** [?]
- **Stressors:** [?]
- **Opportunities (build implication):** A coworker could surface/remind the ask opportunity but shouldn't script the relationship-dependent moment itself.
- **Staff Actions — Frontstage:** Vanessa: asks for referral.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ABSENT` —

#### Next Meeting Planning prod-line
- **Actions (customer):** Confirms next EBR date, live, closing the loop to Schedule.
- **Processes, Tools, Tech:** The meeting itself, in-person, one continuous session — one instance ran through lunch. (single touchpoint spans all 12 live moments, per the guide's "one touchpoint per service moment" convention read at the meeting level, not the tab level.)
- **Thinking & Feeling:** [?]
- **Stressors:** "Client said no" taken at face value — a terrible reason per Stefanie.
- **Opportunities (build implication):** Preserve the "book next meeting live" moment in any redesigned close — highest ROI-per-effort step, easiest to silently break.
- **Staff Actions — Frontstage:** Vanessa: confirms next date live.
- **Staff Actions — Backstage:** Already completed in Prep — invisible during the live meeting.
- **Support Processes:** n/a during the live meeting — all support processes are Prep-side.
- **ACP TODAY (in the build):** `ADJACENT` ScheduleService again — the mechanism exists, unwired.


### STAGE: FOLLOW-UP

#### Post-Meeting Action Items + KPIs prod-line
- **Actions (customer):** Receives client-facing extract only.
- **Processes, Tools, Tech:** Follow-up email, async, client-facing extract only.
- **Thinking & Feeling:** [?]
- **Stressors:** No follow-through — action items never become tickets → "quickly cause your customer to lose faith." Stefanie's #1 killer.
- **Opportunities (build implication):** ⚙ Action-item → PSA ticket, already an explicit instruction — clearest win in the template. Build two real artifacts (working doc + extract), not one doc with a toggle.
- **Staff Actions — Frontstage:** Vanessa: transcribes, reissues roadmap+budget, converts tickets, chases referral.
- **Staff Actions — Backstage:** [?] unclear who enters tickets — Vanessa or a delegate.
- **Support Processes:** PSA/Halo ticket queue.
- **ACP TODAY (in the build):** `ADJACENT` Ticket creation is absent. The nearest thing is a narrative idea about writing queue re-assignments back to ConnectWise — routing, not creating. Value Ledger's CSV/PDF export job is the only client-ready-artifact mechanism that actually ships. value_ledger/templates/report.html


### STAGE: EXTEND

#### steps 7–8, living document
- **Actions (customer):** Receives ongoing marketing/anniversary touches; benefits from continuity.
- **Processes, Tools, Tech:** Marketing touches, channel unspecified.
- **Thinking & Feeling:** Arrives guarded next cycle if the MSP's gone quiet in between.
- **Stressors:** Client refuses EBRs entirely (some do); switching-cost risk if Vanessa leaves.
- **Opportunities (build implication):** Price/name the living document's switching-cost value. Any TAM math must respect the tiered/opt-out population.
- **Staff Actions — Frontstage:** Ongoing marketing to existing base.
- **Staff Actions — Backstage:** Institutional memory in the living document; cadence re-tiered per client (A/B/C; some refuse).
- **Support Processes:** The living/working document as an institutional-memory system — "a switching-cost surface nobody in canon has priced."
- **ACP TODAY (in the build):** `ABSENT` No cross-year living document. ("Institutional memory" appears in two Intent Specs — as a changelog header for the spec document itself. Different thing.)


---

## What acp-core already has, checked against this map

Read at 2026-07-29 from acp-core-main — the Intent Specs, the five specs/ folders, and apps/backend, distinguishing what is in code from what is only in prose. Bottom row of the grid above carries the per-step verdict. The short version: of the 26 steps in this map, 0 are built, 1 is specced, 8 are adjacent, and 17 are absent. That is not a criticism of the build — acp-core was scoped to autonomous runbook execution, not to account management. It means this map describes work the product does not currently touch.

### The one real match — and it's a mechanism, not a feature

The Value Ledger is fully built (~2,100 lines across service, models, baseline resolver, rollup, and Temporal export workflows). Every entry carries a baseline_source tag resolved once at write time and permanently embedded, never re-resolved: tenant_configured → platform_default → coworker_reported → unknown. A model self-reporting zero saved minutes is rejected outright as a probable bug.

That is provenance tiering already shipped in production code — tenant-verified beats platform-estimated beats model-self-reported beats unknown-and-flagged. It is the same discipline this whole map is built on: never let a number be quoted without saying where it came from. The build already has the mechanism the EBR needs. What it doesn't have is any of the eight subjects the EBR needs it pointed at. The gap is subject matter, not mechanism.

The Ledger also emits a real client-ready artifact: POST /exports produces CSV or a Jinja/WeasyPrint-rendered PDF (sync under 1,000 entries, async Temporal workflow above it). So the build can already generate a document and hand it to a human — the pipe exists.

### Named integrations in the build

| Integration | Status | Where it actually lives |
|---|---|---|
| MCP server / instance framework | BUILT | A generic bring-your-own-connector layer — credential or OAuth, per-tool allowlist, HITL flag, tenant-scoped. Ships with zero named connectors. The migration defines the mcp_servers/mcp_credentials tables and no vendor rows. specs/004-mcp-configs · app/mcp/ |
| ConnectWise Manage (PSA) | narrative only | Explicitly marked "pending spec — not started". Intent Specs/FSN-82692:437 |
| Autotask · HaloPSA (PSA) | named, not detailed | Listed as future PSA types in a non-goal. Intent Specs/FSN-82692:272 |
| N-central / RMM | out of scope | "Not required… introduced post-onboarding." Intent Specs/FSN-82692:269 |
| Jira · GitHub · Jamf | test fixtures | Arbitrary strings exercising the generic MCP model in unit tests and demo seed data. Not connectors. tests/agents/test_expert_api.py · scripts/seed_experts.py |

No PSA, RMM, M365/IdP, backup, GRC, or license-management system is wired into this codebase. Every one of the eight prep pulls would need a connector registered from scratch. That is the honest size of the integration problem — and it is the same list, eight times over, that the Head of Technical Overview is currently doing by hand.

### Three things worth knowing before Will and I decide

| What we found | Why it matters to the build decision |
|---|---|
| "QBR Advisor" is already a named coworker in the spec — one of five v1 platform defaults, scoped to "generate client-ready QBR narratives and security/posture summaries." | Someone already had this instinct and wrote it down. But 0 of 40 tasks are complete, the seed migration never landed, and the live Coworker ORM model is a flatter, older shape with none of the guardrails/trigger/autonomy_level fields the registry spec assumes. So the name exists and the thing does not — which makes it easy to over-read as coverage in a status conversation. specs/004-ai-coworker-registry/{spec.md:57, tasks.md:81} |
| Scheduling is built but unwired. ScheduleService wraps Temporal Schedules, fires a coworker on a cron or interval, and has passing unit tests. | It is called from no API route and no coworker surface exposes a schedule field. The recurring-cadence mechanism an EBR needs is sitting there finished with nothing plugged into it. Cheapest real path from this map to shipped code probably runs through here. app/runs/temporal/schedules.py · api/v1/coworkers.py |
| The build's "onboarding" is the opposite direction from the map's. | FSN-82692 onboards the MSP into ACP. The Enter stage of this map is the MSP onboarding its own client — the step that sets the precedent for whether EBRs happen at all. Same word, inverted actor. Worth catching before anyone treats one as covering the other. |

### Absent, in full

Warranty/EOL · license-utilization / dormant seats · AD-IdP-vs-HR reconcile · ticket volume + SLA · patch compliance · backup job success and restore-test verification · phish-sim and awareness training · tenant posture vs. baseline · compliance checklist vs. a named standard · the Judge step · all 15 meeting tabs · PSA ticket creation · dual internal/client-facing artifact separation · the cross-year living document. Fourteen categories, no code and (except QBR Advisor) no spec.

---

## Three findings that change what you should build

### 1 — The Risk Register's second job, and why Prep-Judge / Risk & Security Review are careful (unvalidated, kept in full)

Stefanie states the register's purpose three ways, none of them "prove value": shift the risk onto the customer, survive the insurer, stay out of court. The John anecdote (documented warning removed blame/emotion when a client got hit) is the mechanism appearing to work. Downgraded 2026-07-28 after a legal scout pass: two named cases exist, not three, neither 2025 (Mastagni Holstedt v. LanTech; Boardman Molded Products v. Involta); no case law, US or UK, has tested a documented refusal as a defense; no carrier treats it as mitigating — underwriters assess deployed controls, not paperwork; the defense gets pierced by the seller's own marketing (Involta's "one-stop shop" copy was used against it); the jurisdiction is inverted (advice is UK-sourced, litigation is US); and the mechanism runs both ways — machine-generated risk detection expands the record of what the MSP knew. Volume of detection is volume of exposure. Status: unvalidated, not a finding, not to appear client-facing before counsel.

### 2 — The 4–5h baseline's own credibility problem

Vanessa's 4–5h/EBR was originally read as independently corroborated by Stefanie's own figure. It is not — the source's own timeline shows Vanessa adopted this framework after Craig brought it home from Stefanie's training. Same process, measured twice at two points in its transmission — an echo, not validation. Wider vendor-blog figures (3–8h, "4–6 hours") have no primary source anywhere. Three unsourced numbers agreeing is not triangulation. Any reduction claim must be phrased as a ratio against this one-conversational-self-report baseline, never as an absolute — the 15-min-edit assumption in canon is really a claim of ~16–20× reduction on a job-shop task with a human-judgment core.

### 3 — The dual-surface artifact is structural, not a nice-to-have

Two living documents: Risk Register + Technology Roadmap/Budget feed The Working Document (internal notes Vanessa keeps) which produces The Client-Facing Extract (follow-up email only). Any product that renders one document — even with a redaction toggle — breaks this structurally. It needs to be two real artifacts. The 2026-07-28 Tier-1 prototype did exactly this wrong thing; council caught it (prototypes/acp-qbr-ebr/council-pipeline-fast.md).

## Job shop vs. production line — every step, why it's sorted that way, what good looks like

The distinction, in one paragraph. A production line step produces the same output every time from the same inputs — no judgment in the middle. Anyone (or anything) following the procedure gets the same answer, so the only questions are speed and cost. A job shop step produces a different output every time because the answer depends on this client, this quarter, this room — the value is the judgment itself, so making it faster by removing the judgment destroys the thing you were selling. (The framing is David Maister's leverage-ratio distinction from professional-services economics, applied to the EBR in qbr-ebr.context.md §6.)

Stefanie's two rules are the whole spec. On the production-line half: "assemble it — and never show it." On the job-shop half: "this is the whole meeting." Everything below is those two rules applied step by step.

Why this matters for what we build: automating the production line is a cost-and-speed play with a known-good answer. Touching the job shop is a different bet entirely — the tool can hold the structure and surface the prompt, but the moment it writes the judgment, the operator's own competence is what got automated, and the failure is silent. The one failure mode named more than any other in the source is an operator who shows the production-line output instead of doing the job-shop translation — so a product that makes the production-line output prettier and easier to display makes the most-cited failure mode easier to commit. That's the sharpest design tension on this page.

| Step | Class | Why it's sorted that way | What good looks like | If we build it wrong |
|---|---|---|---|---|
| **PREP — ASSEMBLE (THE 2–3H NOBODY SEES)** | | | | |
| Pulls 1–6 warranty/EOL · license use · user reconcile · ticket+SLA · patch+backup · phish-sim/training | prod-line | Each is a query against a system of record with one correct answer. No client-specific interpretation is needed to produce the number. Six different systems, one mechanical operation each. | All six land assembled, current, and complete before anyone opens their mouth — and a human never touches a keyboard to get them. Pull 5 reports backup restore-tests separately from backup-job-success; those are two different claims and only the weaker one is reliably in source. | Today's failure is not wrongness, it's cost: it's done by hand, late, by the one person who should be on the paying service desk. Build it so it's still manual-ish and you've kept the whole cost center. |
| Pull 7 tenant config vs. baseline | hybrid | The diff is mechanical. The baseline it's diffed against is the MSP's own authored standard — an opinion about what good security looks like for this kind of client, not a universal fact. | The comparison runs automatically; the baseline stays editable, attributable, and visibly the MSP's own. The MSP can see and defend which standard it held the client to. | Ship a vendor-defined baseline as if it were objective and you've quietly taken over the MSP's security opinion — and made every "you're non-compliant" claim our claim, not theirs. |
| Pull 8 compliance checklist | hybrid | Checklist status is pullable if the standard is codified. Which standard applies to this client, and whether they're "compliant enough," is judgment — and the source never names which standards apply per client. | Items auto-populate against a named, selected standard; the "are we OK" narrative stays a human sentence, written by someone who knows what the client is exposed to. | Auto-generate a compliance verdict and we've made a legal-adjacent assertion on the MSP's behalf with no counsel in the loop. |
| **PREP — JUDGE (THE STEP WITH NO TOOL AT ALL)** | | | | |
| Translate gaps into business consequence · set roadmap priority | brains | This is the actual constraint in the whole process. Turning "17 machines are out of warranty" into "here's what that costs you if it fails in November" requires knowing this client's business. Source is explicit: "you can't prepare 20 minutes before you walk in." It is also the one step in the entire map with no supporting tool named. | The operator walks in with the translation already written and believes it. The tool's job is to hold the structure, put the right prompt in front of them, and refuse to let an unverified claim get spoken — not to write the sentence. | Two ways to fail. Draft the translation for them and their competence quietly erodes with no signal. Skip it and you've built a data-dump generator — which is the most-cited failure in the corpus. |
| **THE MEETING — STEFANIE'S 15 TABS, IN HER ORDER** | | | | |
| Meeting Kick Off | unclass. | Never sorted in the original pass. Named honestly rather than guessed — setting the room's purpose is plausibly judgment, but the source doesn't say. | Unknown. Worth asking an operator directly before building anything here. | Guessing its class is how a build decision gets made on nothing. |
| Current Climate | prod-line | A snapshot of state. Fed almost entirely by pulls 1, 3 and 4 — the numbers are the content. | Auto-populated, zero prep, correct on arrival. The lowest-risk automation target on the whole map. | Little downside — but also little differentiation. Every competitor can do this. |
| Risk & Security Review | hybrid | The load-bearing moment. Entries come from pulls 5–8; the delivery is the business-consequence translation. Notably delivered by the client-delivery lead, deliberately not a technician. | Register entries arrive pre-populated and ranked; the room hears consequences, not findings; tech questions get parked rather than answered live. Any claim that hasn't been verified is gated before it's spoken. | This is where discomfort wins and raw data gets shown. Make the raw view the path of least resistance and we've built the failure mode a nicer front door. See finding 1 below on the register's second job — it is not validated. |
| Compliancy Review | hybrid | Same shape as pull 8: status is pullable, standing is a judgment call with legal adjacency. | Status shown against a named standard, verdict spoken by a human. | A generated verdict is an assertion we don't have standing to make. |
| Business Priorities & Goals | brains | There is no system of record for what a client is trying to do next year. The answer only exists in the conversation. Engagement here is also what makes the later referral ask land. | Real 12/24/36-month plans surface, in the client's words, and get captured verbatim into the living document. The tool listens and structures; it does not suggest goals. | Template this and it collapses into tech/stats recitation — and per source, the client sees no value and declines the next one. |
| Hardware/Software Asset Review | prod-line | Direct output of pulls 1 and 3. Inventory is inventory. | Fully auto-populated, warranty/EOL dates flagged by urgency, ready to feed the roadmap and the budget without retyping. | Leaving it manual burns technician hours for zero differentiation. |
| Employee Review | prod-line | Output of pull 3 — the joiners/leavers diff. | Auto-populated, with provisioning follow-ups falling out as action items rather than being noticed by a person. | Same as above: cost, not correctness. |
| Technology Roadmap | hybrid | The entries come from the gaps found in prep; the order is a judgment call that gets set in Prep-Judge and then re-tested live in the room against what the client just said their priorities were. | Entries flow in automatically; re-prioritizing live is fast and low-friction; the reordered roadmap is reissued after the meeting without retyping. | Auto-rank the roadmap and we've replaced the one judgment the client is actually paying for — and made live re-prioritization feel like fighting the tool. |
| Technology Budget | brains | Money tied to the roadmap, in front of the person who controls it. Source's clearest buy-in signal is the client's CFO asking for a copy — that's the ROI demonstration landing in real time. | Budget stays tied line-by-line to roadmap items so the client can see what each number buys. Protected as a live conversation, not a generated figure. | A generated budget nobody in the room owns is the fastest way to lose the one moment where value is visibly proven. |
| Additional Items | unclass. | Content unspecified in source. Not sorted. | Unknown. | Don't build to an empty slot. |
| Referrals & Testimonials | brains | Purely relationship-dependent. Whether to ask, and how, depends on how the last 50 minutes went — which is why it sits at the end of the agenda, not the start. | The tool reminds that the opportunity exists and tracks whether the ask happened. The operator decides and phrases it. | Script this and it reads as a script. A templated referral ask damages the relationship it's trying to monetize. |
| Next Meeting Planning | prod-line | Mechanically trivial — but per source it must happen live, in the room, before anyone leaves. Highest return per unit of effort in the whole process, and the easiest to silently break. | The date is committed verbally in the room and captured instantly. Cadence tier (A/B/C — not every client gets the same frequency, and some refuse entirely) is respected. | Replace the live verbal commit with a "we'll send an invite" and you may have broken the show-rate. Untested risk — flag it, don't assume it's safe. |
| Post-Meeting Action Items + KPIs | prod-line | Turning agreed actions into tracked tickets is pure mechanism — and the template already instructs it explicitly. | Every action item becomes a real PSA ticket with an owner, automatically. This is the single clearest win in the template. | Stefanie's #1 killer. No follow-through — action items that never became tickets — will "quickly cause your customer to lose faith." Get this wrong and the entire meeting was theatre. |
| **AFTER — FOLLOW-UP AND THE LIVING DOCUMENT** | | | | |
| The follow-up extract | hybrid | Transcription and ticket conversion are mechanical. Deciding what crosses the line to the client is judgment — and the internal working document and the client-facing extract are two genuinely different artifacts, not one document with a filter. | Two real artifacts exist. The internal one keeps the operator's candid notes; the client one is composed, not filtered. See finding 3 below. | One document plus a redaction toggle breaks this structurally — an accidental un-toggle is a client-visible incident. Our own Tier-1 prototype made exactly this mistake. |
| The living document / institutional memory | brains | Its value is accumulated context — years of what this client said they wanted and what was decided. Nothing generates that; it's deposited over time. | It compounds. Continuity survives the operator leaving. Source calls this a switching-cost surface nobody in canon has priced. | Treat it as a meeting-notes archive and we've missed the one asset here that gets more valuable the longer a client stays. |

## Jargon index

| Term | Plain meaning |
|---|---|
| **EBR / QBR** | Executive / Quarterly Business Review — the recurring meeting where an MSP sits down with a client's leadership and reviews the state of their technology, risks, and plans. The thing this whole map describes. |
| **MSP** | Managed Service Provider — the outsourced IT company. The customer of the product we'd be building. |
| **RMM** | Remote Monitoring & Management — the software an MSP uses to see and manage a client's computers from afar. |
| **PSA** | Professional Services Automation — the MSP's own ticketing/billing/ scheduling system. "Halo" is the specific PSA product named in source. |
| **SLA** | Service Level Agreement — the response/fix time the MSP contractually promised. |
| **EOL** | End-of-Life — the point where a manufacturer stops supporting and patching a product. After EOL, a known flaw can't be fixed at all. |
| **Warranty (hardware)** | Whether the manufacturer will still repair or replace the machine. Separate from EOL: a device can be in warranty but past EOL, or vice versa. |
| **Tenant** | A client's own dedicated slice of a shared cloud service (e.g. their own Microsoft 365 environment, separate from every other MSP client's). |
| **Baseline** | The MSP's own written standard for how a client environment should be configured. An opinion, not a universal fact — which is why pull 7 is hybrid. |
| **Phish-sim** | Simulated phishing — fake scam emails deliberately sent to a client's staff to see who clicks. |
| **Patch compliance** | What share of machines are up to date on security updates. |
| **Restore test** | Actually proving a backup can be recovered, as opposed to the backup job merely reporting success. Different claim; commonly skipped. |
| **RTO / RPO** | Recovery Time Objective / Recovery Point Objective — how long the client can afford to be down, and how much data they can afford to lose. Both are business decisions, which is why probing them is job-shop work. |
| **IdP** | Identity Provider — the system that manages who can log in (e.g. Active Directory, Okta). |
| **GRC tool** | Governance, Risk & Compliance software — tracks compliance requirements against a checklist. |
| **Risk register** | The running list of known risks in a client's environment, including ones the client was told about and declined to fix. |
| **Cadence tier (A/B/C)** | How often a given client gets an EBR. Not universal — some clients get them quarterly, some annually, some refuse entirely. |
| **AM / AE** | Account Manager / Account Executive — the relationship owner and the salesperson, respectively. |
| **⚙ / ★ / ★★** | ⚙ = a machine can do this with no human judgment · ★ = needs a human's judgment call · ★★ = needs judgment from a specific, scarce person, not just anyone. |

---

*Generated from `ebr-service-blueprint-2026-07-29.html` on 2026-07-29. If the HTML changes, regenerate rather than hand-editing.*