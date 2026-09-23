# Ecoverse — Assumption Register
## Every claim the deck asserts, and whether we can stand behind it

**Author:** Elizabeth Connor
**Date:** 23 September 2026
**Purpose:** The riskiest-assumptions doc names six assumptions. The deck asserts roughly ten times that many, most of them as settled fact. This register logs them so the doc and the deck are true to each other — every deck claim either traces to evidence or lands here as an open assumption with an owner.

**Source deck:** `Ecoverse Product & GTM Strategy – Working Draft.pptx` — read in full, 41 slides, version of 23 Sep 2026 09:09. Slide numbers below are that version's.

---

## How to read this

| Tag | Meaning |
|---|---|
| `[R]` | **Research** — external, locatable, primary or near-primary source |
| `[D]` | **Data** — N-able's own telemetry, win/loss, survey or product data |
| `[A]` | **Assumed** — plausible, stated as fact in the deck, no source behind it |
| `[?]` | **Unknown** — we have looked and the evidence does not exist, inside or outside |

Per the three-gate standard: **if `[A]` + `[?]` exceeds 30% of claims, the case is not ready to build against.** The count is at the bottom of this document, and it does not pass.

Two things this register is *not*. It is not a critique of the deck — the deck is a working draft and says so on every slide. And it is not a list of things to go and research; several rows are `[?]` because the research does not exist and will not be found by looking harder. Those need a different kind of answer.

---

## ⚠️ START HERE — the four places the deck contradicts itself

These matter more than any individual assumption, because each one is an internal inconsistency a stakeholder can find in a single reading. They are ordered by how quickly they would surface in a review.

### C1 · Phase 1's gate requires a trial that the delivery inventory says is not started

- **Slide 11 (Gates and Measures), Phase 1 gate:** "Frictionless trial and onboarding launch together" and "Sales, billing, support and provisioning ready."
- **Slide 26 (Trial UX, Asset Onboarding & BizApps):** of the eleven line items, **nine are "Not started"**, one is "Backlog" ('UFA only'), and one is blank. Specifically not started: account creation in SF & conversion, account termination, billing of endpoints, trial sign-up page, **Trial UX with AI** ("To be defined and built"), purchase self-serve, agent install workflow, network discovery with agent install, Intune support for deployment.
- **The register entry:** the Phase 1 gate is currently unmeetable on the deck's own delivery assessment. Either the gate moves, or the inventory is stale, or Phase 1 launches without the self-service motion that the whole "lower-friction greenfield entry" argument rests on.
- **Roll-up:** this is not one of the six. It is a new one. See **A7** below.

### C2 · "Deep endpoint data as core IP" is the unfair advantage, and it is also an open engineering spike

- **Slides 2, 4, 40, 41:** "Endpoint data as core IP", "Data as core IP: build out cutting edge endpoint data access", "Deep endpoint data as core IP, 20+ years of endpoint operations at scale" — presented as **the** unfair advantage, in the "Our Unfair Advantage" box on three separate summary slides.
- **Slide 27 (Core Features):** "Rich endpoint data" is marked amber with the note **"Spike into how we get more."** "Software inventory" is amber, "To be scheduled."
- **Your own Figma board** (Ecoverse — Word Concepting Time!, 21 Sep) puts it more carefully in the unfair-advantage box: "seeing more endpoint (meta) data, more line of sight."
- **The register entry:** the advantage the strategy leans on hardest is the one capability the delivery assessment says we have not yet worked out how to get. "20+ years of endpoint operations" is real history; "deep endpoint data as core IP" is an aspiration. These are different claims and the deck uses them interchangeably.
- **Roll-up:** riskiest assumption **6 (moat)** and **1 (value)**.

### C3 · The Winning Formula says differentiate through AI. The interview evidence says the opposite.

- **Slide 3 (Winning Formula):** "Win through simplicity. **Differentiate through AI** and customer cyber-resilience outcomes."
- **Slide 2:** "Why it's unique: **The AI does the work**."
- **Against that, our own interviews** (`MSP Market Segments Research Request 1.docx`, Brian Mackie, mod 16 Sep 2026):
  - **Tarik Hafid (SE):** would welcome an AI assistant that automates and remediates, but names trust, governance and accuracy as the blockers. The doc's own conclusion: *"It means the differentiation is probably not: More AI. It is: Trusted AI or Governed AI."*
  - **Paul Killins:** *"IT Pros are not looking for more capability. They are looking for less effort."* And on AI packaging, explicitly: **bad** — "Create your own AI workflow"; **good** — "Enable AI patch remediation", on/off. Plus: *"Simplicity may matter more than AI sophistication in Phase 1."*
  - **Hauke VonJuergensonn:** *"IT departments typically buy one problem at a time, not an entire platform… They are replacing a screwdriver, not shopping for a workshop."*
- **Your own stronger-tests draft** already reached this: *"the better assumption is not 'AI is the reason to buy.' It is 'guided, governed automation makes a valuable job easier and more trustworthy.'"*
- **The register entry:** the deck's differentiation claim is contradicted by the only primary customer evidence we hold. Slide 14 gets closer — "Differentiate through completed work and measurable outcomes, not an abstract AI-powered claim" — but slide 3 is the one people will quote.
- **Roll-up:** riskiest assumptions **2 (demand)** and **4 (trust)**.

### C4 · The ICP is stated in three incompatible units

- **FTE (company headcount):** slides 2, 3, 9, 13, 40, 41 — "100–299 FTE organisations", "300–999 FTE".
- **Endpoints/devices:** slides 2, 18, 37, 41 — "under ~1,000 endpoints", "the sub-1,000-endpoint wedge", "ICP 1: IT Pro, <1000 Devices".
- **Technicians:** slide 39 — "Emerging MSP <25 Technicians", "Growth MSP 25–50 Technicians", "Large MSP 51".
- **The deck already knows.** Slide 37 carries the comment: **"Confirming with LD this is FTE rather than devices. This mid-market segment into 2 (maybe 3) — entry level then up scale."** Slide 10 is a comment-only slide reading "We need more detailed ICP and persona analysis." Slide 8 carries "I would update for two ICPs. The core-to-growth MSP and the ITP <1000 endpoints."
- **And the field evidence uses a fourth frame — IT staff count:**
  - Paul Killins: **100–1000 endpoints, sweet spot ~150**, often only **2–6 IT staff**, homogeneous fleets.
  - Hauke VonJuergensonn: **~1,000–1,500 devices, 1–4 IT staff.**
  - Your Figma board: **"Mid-shops — 2-6 IT staff; 100-1500 endpoints (sweet spot 150)."**
- **The register entry:** 100–299 FTE and "<1,000 endpoints" are not the same population and nobody has established the conversion. A 250-FTE professional-services firm and a 250-FTE manufacturer have wildly different endpoint counts. Meanwhile the *only* segmentation our interviews support is by **IT staff count and fleet homogeneity**, which the deck does not use at all.
- **Roll-up:** this sits under every one of the six, because all six are conditioned on "who." Logged as **A8** below.

---

## The register

### Section 01 — Vision, Strategy & ICPs

| # | Claim as the deck states it | Slide | Tag | What is actually behind it |
|---|---|---|---|---|
| 1.1 | "Small IT teams are asked to run enterprise-grade security with few tools and no specialists" | 2, 41 | `[R]` | Strong. Interviews (Killins: 2–6 IT staff; Hauke: 1–4 IT staff for 1,000–1,500 devices). DSIT Cyber Security Breaches Survey 2025/26 (30 Apr 2026, n=2,112 UK businesses): only **34%** of businesses have a policy to apply security updates within 14 days. ENISA NIS Investments 2025 (n=1,080): patching is the hardest NIS2 requirement at **50%**. |
| 1.2 | "Tool sprawl: WSUS, Intune, separate vuln tools" | 2, 41 | `[R]` | Supported but caveat the source. Recast Software *State of Intune 2026* (n=890, fielded Apr 2026): app packaging is the biggest Intune challenge at **37%**, third-party patching **33%**, and **65%** spend 6–15 hrs/week on manual tasks. ⚠️ Recast sells Intune add-ons — vendor-sponsored, name it when citing. Interviews corroborate independently (Tarik on ManageEngine: "very convoluted and spread across multiple consoles"). |
| 1.3 | "Security and compliance pressure rising" | 2, 4, 13, 41 | `[R]` | Strongest-evidenced claim in the deck. ENISA NIS Investments 2025: compliance is the **#1 investment driver at 70%**. Cyber Essentials v3.2 requires critical/high-risk patches "within 14 days of release." NIS2 / CIR (EU) 2024/2690 binds MSPs and MSSPs. Hauke elevated compliance to the *primary* buying trigger via NIS2 and BSI guidance. |
| 1.4 | "Action1: $12.7M ARR, +76% YoY on this wedge" | 2, 18, 40, 41 | `[R]`/`[A]` | **Split the number.** The +76% H1 2026 growth, 275% six-figure deal ARR, 167% >$100K customers and 98% retention are from Action1's own press release via PRNewswire, 16 Jul 2026 — vendor-published but attributable. The **$12.7M ARR figure is a GetLatka/Tracxn estimate** and the deck's own appendix (slide 35) says "revenue **estimated** at approximately $12.7M ARR; employee estimates vary by source." The ELI5 slides assert it flat. Fix the front slides to match the appendix. |
| 1.5 | "20+ years of endpoint operations at scale" | 2, 40, 41 | `[D]` | Company history, internally verifiable. Not in dispute. Note it is a claim about *tenure*, not about *data quality* — see 1.6. |
| 1.6 | "Deep endpoint data as core IP" | 2, 4, 40, 41 | `[A]` | **See C2.** Contradicted by slide 27's "Rich endpoint data — Spike into how we get more." No assessment exists of whether the historical data is *richer*, not merely *bigger*. Your `killer-app-openings` work flagged exactly this: Opening 2 (aggregate benchmark onboarding) "needs a half-day check on richer-not-just-bigger." That check has not happened. |
| 1.7 | "Serves internal IT and MSPs on one platform" — so the customer never re-platforms as they grow | 2, 31, 40, 41 | `[A]` | Architecturally plausible; commercially unproven. N-able's FY2025 Form 10-K does name co-managed IT as a market-expansion thesis, so this is at least company-stated in an SEC filing. But slide 31 is honest that it is "a risk reducer and expansion story, not a unique breakthrough claim," and slide 25 marks "Scope management (co-managed)" as Phase 2, "Not needed for ITP phase 1." ⚠️ Connor Herman's interview cuts the other way: **"Internal IT buyers dislike MSP-oriented positioning"** — names like "MSP Manager" actively discourage IT departments. Serving both audiences on one platform may be an operational strength and a *positioning* liability. |
| 1.8 | "Coworkers take governed action, not just recommend" | 2, 4, 40, 41 | `[A]` | Not true today. N-zo reached GA on 15 Sep 2026 as **advisory only**; "Script Expert" (create and run scripts on devices) is roadmap. Slide 28 marks in-product Coworkers green "**assuming we continue to build out**" and leaves open-platform Coworkers (harness) blank. The claim is a Phase-1 commitment, not a current capability — the deck presents it as present tense. |
| 1.9 | "Every action audited and provable" | 2, 4, 40, 41 | `[A]` | Slide 25: "Audit log — In Dev, arrives in 2026." Plausible and on the roadmap. Present tense is premature. Worth keeping because the external evidence says this is the differentiator that matters most (see 4.2). |
| 1.10 | "Simple front end, deep endpoint intelligence behind it" | 2 | `[A]` | Design intent, no evidence either way yet. This is the thing your own testing can resolve fastest. |
| 1.11 | Phase 1 target: "internal IT in 100–299 FTE organisations, under ~1,000 endpoints" | 2, 3, 41 | `[?]` | **See C4.** Two different units in one sentence, and the deck itself is awaiting confirmation from LD on which one is meant. |
| 1.12 | "Lower-friction greenfield entry" for Phase 1 | 3 | `[A]` | ⚠️ **This is the frame your own prior work already corrected.** The 09-09 riskiest-assumptions index records, confirmed by you on 2026-09-09: Jira shows Ecoverse already exists as a live, shipping product with real customers and real support tickets. Greenfield was ranked the **#2 riskiest assumption** in that pass. It has re-entered the deck as a premise. |
| 1.13 | "Ninja-level simplicity and time to value" | 3 | `[A]` | Aspiration stated as a Phase 1 win condition. No benchmark exists — we have not measured NinjaOne's time-to-value, and no third party publishes it. |
| 1.14 | "Patch and vulnerability-led operational wedge" is the right Phase 1 entry | 3, 7 | `[A]` | Supported in direction, contested in timing. Killins: "software deployment automation is incredibly valuable" — value is "Deploy Chrome everywhere with one click," not the workflow engine. Tarik named patching and vulnerability management unprompted. **But:** N-able's AI-Accelerated Vulnerability and Patch Management went Public Preview on 24 Jul 2026 with Windows Patch Policies "Coming Soon," while **NinjaOne Vulnerability Management has been GA on Windows and Linux since 16 Mar 2026** with Patch Intelligence AI and inventory→CVE→patch correlation. We would be entering our chosen wedge roughly twelve months behind the simplicity benchmark. |
| 1.15 | "The destination is consolidation. The entry point is operational value." | 7 | `[A]` | ⚠️ The consolidation consensus rests on **one** Gartner survey: n=418, fielded Mar–Apr 2022, about *security* vendors, measuring *intent* not outcome. The figure (75%) was **unchanged** in 2023. No credible published measurement of consolidation *outcomes* in IT/endpoint operations exists. Meanwhile Hauke: "IT departments typically buy one problem at a time, not an entire platform." Treat consolidation-as-destination as a bet, not a market fact. |
| 1.16 | "Phase 1 does not need to replace every incumbent tool… may initially coexist" | 7, 41 | `[R]` | Well supported, and the most defensible strategic line in the deck. Microsoft documents third-party coexistence as a GA architecture with 18 named device-compliance partners and self-service partner onboarding. Recast: **62%** run Intune *and* Configuration Manager; only **15%** are fully Intune; **55%** of ConfigMgr users have no retirement plan or timeline. ⚠️ Caveat: Microsoft's third-party compliance-partner surface covers Android, iOS/iPadOS and macOS — **not Windows**. |
| 1.17 | Entry ICP is owner-led/early-management MSPs, 1–49 employees, core fit 1–15 | 8, 12 | `[D]` | Internally sourced (LRP PlatformDefinition, QLS decks, pNPS 2025, Canalys reused internally) and the slide carries its own caveat: "MEDIUM. Internally attributed to Canalys; the source slide warns that totals are debated and likely high." ⚠️ **This contradicts Phase 1 = internal IT.** Slides 8 and 12 describe an MSP entry ICP; slides 2, 3, 9 describe an internal-IT entry ICP. Both are labelled "entry." |
| 1.18 | "39% of 318 respondents identified N-sight as their primary RMM" | 12 | `[D]` | Internal research, and the slide is appropriately careful: "this describes current users, not non-customer demand." Keep the caveat attached — it is the difference between a retention insight and a market insight. |
| 1.19 | Canalys channel-partner survey: 49% fully managed, 37% co-managed, 14% mixed | 12 | `[D]` | n=432, **November 2024**. Nearly two years old at Phase 1 planning. The slide notes "product fit by delivery model is not directly measured." |
| 1.20 | "We have enough evidence to take a stronger preliminary position" | 13 | `[A]` | The slide is careful — "Evidence of credible proposition-to-market alignment, not proof of product-market fit" — and lists what remains unproven. But the four pillars it rests on are: identifiable segment `[?]` (C4), repeated buying behaviour `[R]`, recognisable pain `[R]`, capability alignment `[A]` (slides 25–28 say much of it is not built). Two of four hold. |
| 1.21 | "Ecoverse potentially combines all four" — Action1's security-led, Automox's automation-led, Tanium's real-time intelligence, NinjaOne's simplicity | 4 | `[A]` | ⚠️ **The load-bearing unproven claim of the whole strategy, and the hardest one to get evidence for.** Searched for it directly: **no independent (non-vendor) research exists showing that connecting endpoint categories realises unrealised value.** Every consolidation-benefit figure locatable is published by a vendor selling consolidation. Forrester's Wave criterion "ability to unify IT and security operations on a single platform" is the closest thing, and it is an evaluation criterion, not an outcome measurement. Slide 20 states the counter-case plainly: "Being good at these capabilities earns the right to compete, but does not differentiate Ecoverse. The 'blue ocean' claim remains unproven." |

### Section 02 — Competitive Landscape

| # | Claim as the deck states it | Slide | Tag | What is actually behind it |
|---|---|---|---|---|
| 2.1 | Primary benchmarks are NinjaOne, Action1, Intune, ManageEngine, Automox | 16, 17 | `[R]` | Sound. All five are directly verifiable against first-party positioning, and my scout read each vendor's published surface. Hauke adds a DACH set the deck omits: **Ivanti, TeamViewer, WatchGuard, Tactical RMM, Server-Eye, German specialists, open-source.** If DACH is in scope, slide 16 is incomplete. |
| 2.2 | Flamingo: 298 customers, $1.00/device/month Gen1, launched Oct 2025 | 19, 36 | `[R]` | The deck's own appendix (slide 36) is the best-sourced slide in the document — it tags each line `[FACT]` / `[CAUTION]` / `[OPINION]` and catches that Flamingo's pricing-page FAQ cites **Thread's** 173M tickets as proof, not its own results. **This is the standard the rest of the deck should meet.** Use slide 36 as the template for the register's future rows. |
| 2.3 | "Action1 wins on patching depth, simplicity and price" | 18 | `[R]` | Verified on price: Action1 is free to 200 endpoints with no feature limits, production use permitted. Depth and simplicity are vendor-authored claims, and the deck says so. |
| 2.4 | "Our USP must be what it does not provide: broader UEM/RMM capability, AI UI and Coworkers, and an open platform" | 18 | `[A]` | Logical inference, no demand evidence. Nobody has asked a buyer whether "broader than Action1" is worth paying for. This is a directly testable concept — see the concept-let work. |
| 2.5 | Assumption 6: "Competitors could approximate the same story via partnerships, APIs or integrations" | 5 | `[R]` — **upgrade from `[A]`** | **This has already happened and the doc should say so.** NinjaOne announced a **Microsoft Intune integration on 18 Nov 2025** (early access, GA target end-2025). Action1 announced an **Intune extension at Ignite 2025** the same week. And **Rapid7 Active Patching is powered by Automox** — meaning patch execution is now *rentable*, so "can the story be copied" has become "can it be bought." This is no longer a risk to test. It is an observed condition to respond to. |
| 2.6 | "Differentiate through completed work and measurable outcomes, not an abstract AI-powered claim" | 14, 21 | `[R]` | Supported by the interviews and by the external trust literature. This is the sharpest positioning line in the deck and it contradicts slide 3 (see C3). Pick one. |

### Section 03 — GTM, Packaging & Pricing

| # | Claim as the deck states it | Slide | Tag | What is actually behind it |
|---|---|---|---|---|
| 3.1 | Self-service, net-new standalone product with frictionless onboarding | 3, 22, 23 | `[A]` | Motion is well-benchmarked (Flamingo 14-day trial no card; Action1 free-to-200). Our ability to run it is `[?]` — see **C1**. |
| 3.2 | Willingness to pay at viable price and margin | 5, 6 | `[?]` | **Terminal unknown.** Searched exhaustively. There is **no published WTP study for this category**, no endpoint-management spend-per-device benchmark, no endpoints-per-IT-admin figure, and no attach-rate benchmark. Rapid7, ConnectWise, Kaseya and Ivanti publish no prices at all. This will not be resolved by more secondary research — it needs a pricing study, which is exactly what your test plan says. |
| 3.3 | Pricing is a battlefield we may not want to enter | 19 | `[R]` | Hard external floor now exists. **Microsoft moved Intune Suite capabilities into M365 E3/E5 effective 1 July 2026 at +$3/user/month** (E3 $39, E5 $60 with Teams; Business Premium unchanged at $22) — capabilities that previously cost $10/user/month standalone. Flamingo is $1.00/device/month. Action1 is free to 200. **A displacing product is priced against $0 incremental, not against a list price.** ⚠️ Counterweight, and it is a strong one: G2 *Digital Markets State of Software Buying 2026* (n=3,385) finds **pricing ranks last of five shortlisting factors at 47%**, while **security details ranks first at 58%**, and security/compliance gaps kill **55%** of shortlisted vendors. Price may be less decisive than the deck fears. |
| 3.4 | Packaging: "start cheap, expand later" | 6 | `[A]` | The deck's own test plan puts willingness-to-pay *before* this decision, which is the right order. Nothing behind it yet. |

### Section 04 — Capabilities & Delivery

| # | Claim as the deck states it | Slide | Tag | What is actually behind it |
|---|---|---|---|---|
| 4.1 | "We can build an AI that does this reliably" | 5 | `[?]` | The deck is honest: "N-zo Reboot shows pre-check, completion-messaging and device-status defects. We are at beginning of this journey – no proven maturity." The 09-09 pass carries the concrete instance: N-zo reported **3,478 devices online for an account that in fact had 11 devices, all offline.** External anchor now exists: **Wickens & Dixon (2007) put the reliability crossover at ~0.70** — below that, automation is worse than no automation. ITBench shows frontier models below 50% on SRE/CISO/FinOps agentic tasks. There is a number to aim at. |
| 4.2 | "Technicians will trust it out of the gate" / approval gates mitigate the risk | 5, 6 | `[?]` → **reframe** | ⚠️ **An approval gate is a research question, not a mitigation.** Akhawe & Felt (2013), 25M warning impressions: Chrome SSL warning click-through was **70.2%**. Bansal et al. (2021): explanations do not uniformly help. Buçinca et al. (2021): the design that actually worked was the one users disliked. Holland et al. (2024): stated trust ≠ behavioural reliance — which bears directly on the 2.5/5 baseline. **And the most useful external fact for this row:** Microsoft's own Vulnerability Remediation Agent ships **read-only** (`Mobile apps / read`, `Device configurations / read`) and its documentation states *"After the agent starts, there are no options to stop or pause it."* Microsoft chose read-only for the same job. Tanium requires "guardrails and sign-off on every action." Automox ships a trust triad of rollback, pause and audit log. The market has converged on governed-not-autonomous, and slide 5 already says "Full autonomy is probably the wrong target." |
| 4.3 | Phase 1 capability set is "must-have endpoint capabilities complete" | 11 | `[?]` | Slide 27: all three OS patching "**Expected by Q1 27**"; software inventory amber, "to be scheduled"; Take Control amber; Monitoring and PSA connection both amber and "TBC per Taha research." Slide 25 (Platform Admin): user management "**2027 TBC**", ability to create Departments "2027 TBC", scope management Phase 2. The gate and the inventory disagree. |
| 4.4 | "No Classic N-sight dependency for new NCA customers" (Phase 2 gate) | 3, 11 | `[?]` | Delivery claim with no status in the inventory. Slide 29 ("Classic N-sight Features Not Offered in the new Product") lists seven capabilities — Web Protection, Classic Monitoring, Classic Automated Tasks, PSA Integrations, like-for-like Reports, Custom URL, IP Address verification — **with the entire status column blank.** |
| 4.5 | Compliance and cybersecurity assessment/reports as differentiators | 28 | `[?]` | Both marked "TBC per Taha research." Given that compliance is the **#1 spend driver at 70%** (ENISA) and the strongest-evidenced customer pressure in this whole register, these two rows being unscoped is the largest mismatch between evidence strength and delivery attention in the deck. |

### Elsewhere — assumptions the deck carries outside the main narrative

| # | Claim | Where | Tag | Note |
|---|---|---|---|---|
| 5.1 | "AI-Native Cyber Resilience UEM — a new AI-powered **MSP/VAR** offering" | 38 | `[A]` | This variant slide frames the product as MSP/VAR-first, contradicting Phase 1 = IT Pro first. Either a stale artifact or a live alternative. If it is stale, remove it; if it is live, it is a fifth ICP statement. |
| 5.2 | "Progressively replace Classic N-sight starting with NCA" | 4, 34 | `[A]` | Your Figma board's PARKED block carries this as a **seventh assumption**: "Entering on the IT Pro side is the right first move, and this eventually replaces classic N-sight." It is not in the canon six. It should be — it is a bet about the existing revenue base, which makes it the highest-consequence assumption on the list. ⚠️ Read at overview resolution on the board only; **verify the wording before quoting it.** |
| 5.3 | "Simplicity is the acquisition engine. AI-powered outcomes create differentiation. Open platform capability drives expansion and monetisation." | 34 | `[A]` | Three sequenced bets in one line, in a slide explicitly labelled scratchbook. Worth promoting into the register properly because it is the cleanest statement of the strategic logic anywhere in the deck. |
| 5.4 | Open GraphQL/MCP foundation drives expansion | 3, 4, 28 | `[A]` | GraphQL and MCP are marked green on slide 28, so the *capability* is real. That openness *drives expansion and monetisation* is the assumption. Flamingo is already running open-source-core positioning, so this is a contested space rather than an unoccupied one. |
| 5.5 | Buyers dislike MSP-oriented positioning | — | `[R]` | Not in the deck at all, and it should be. Connor Herman, verbatim-in-substance: internal IT buyers dislike MSP-oriented positioning; names like "MSP Manager" discourage IT departments. Directly relevant to 1.7 and 5.1. |
| 5.6 | Standardisation differs between IT Pro and MSP estates | — | `[R]` | Also absent from the deck. Tarik Hafid: **"IT Pro environments are often much more standardised than MSP environments."** Killins: homogeneous/standardised fleets, and "heavy orchestration isn't common below ~500 devices." This is a material product-scoping input — it argues for less orchestration depth at entry, not more — and it is nowhere in the capability planning. |
| 5.7 | Data sovereignty is a requirement in DACH | — | `[R]` | Absent. Hauke: on-premises, local control, customer-controlled encryption. For a cloud-native self-service product this is a potential segment exclusion, not a feature request. |
| 5.8 | Asset intelligence must extend beyond agent-capable devices | — | `[R]` | Absent. Connor Herman: printers, switches, routers, access points, non-agent devices, and agentless automation for network infrastructure. Slide 26 has "Network discovery with agent install — Not started, TBD if phase 1." Hauke's framing is the useful one: inventory → **"endpoint intelligence"** — what's installed, what version, what's vulnerable, what's unsupported, what's expiring, what needs refreshing. |

---

## New assumptions this register surfaces — not in the canon six

**A7 · The self-service acquisition motion can be built and launched inside Phase 1.**
Everything about "lower-friction greenfield entry," "frictionless self-service onboarding," "proven self-service acquisition motion" and "trial conversion" as the Phase 1 measure depends on it. The deck's own delivery inventory says nine of eleven trial/onboarding/BizApps items are not started. **Risk class: delivery.** This belongs in the six.

**A8 · The ICP can be defined in a single unit, and FTE band predicts endpoint count.**
Four incompatible frames are in play (FTE, endpoints, technicians, IT staff count), the deck is awaiting confirmation on which, and the only frame the interviews support — IT staff count and fleet homogeneity — is unused. **Risk class: targeting.** Every other assumption is conditioned on this one, which arguably makes it assumption zero rather than assumption seven.

**A9 · Entering on the IT Pro side is the right first move, and Ecoverse eventually replaces Classic N-sight.**
Carried on the Figma board as a seventh assumption and implied across slides 3, 4, 11 and 34 ("Classic N-sight dependency decline" is a Phase 4 measure). A bet about the existing revenue base is a bigger bet than any of the six. **Risk class: portfolio.** ⚠️ Verify the board wording first.

---

## Count — the readiness gate

Counted mechanically from the register tables above, excluding the four contradictions (which are findings, not claims) and the three new assumptions (which are conclusions):

| Tag | Count | Share |
|---|---|---|
| `[R]` Research | 15 | 34.1% |
| `[D]` Data | 4 | 9.1% |
| `[A]` Assumed | 18 | 40.9% |
| `[?]` Unknown | 7 | 15.9% |
| **Total claims logged** | **44** | **100%** |

**`[A]` + `[?]` = 25 of 44 = 56.8%.**

Two rows carry more than one tag and are counted on their leading tag: **1.4** is `[R]` on Action1's press-released growth figures and `[A]` on the $12.7M ARR estimate; **2.5** is counted `[R]` because the copyability question is now answered by observed competitor behaviour. Counting 1.4 on its weaker half instead gives 26 of 44 = 59.1%. The verdict does not turn on the choice.

The three-gate standard puts the threshold at 30%. **This is 56.8%, so the case is not ready to build against — and the deck says as much on nearly every slide** ("Working hypothesis. Still unproven…", "Hypothesis only", "not proven product-market fit"). The register does not change the verdict. What it changes is that the unproven claims are now individually named, slide-referenced, and assigned to a risk class, so the conversation can be about *which* twenty rather than about whether the deck is ready.

Two observations from the distribution rather than the total:

**The evidence is strongest exactly where the deck is least specific, and weakest exactly where it is most specific.** The problem statement (1.1, 1.2, 1.3) is the best-evidenced material in the register — compliance pressure, tool sprawl and understaffing are documented in UK government statistics, ENISA, and four of our own interviews. The differentiation claim (1.21) and the ICP (1.11) are the least evidenced, and they are stated most confidently. That is the inverse of where confidence should sit.

**One of the six has resolved itself and should be retired or rewritten.** Assumption 6 (moat) asked whether competitors could approximate the story through partnerships and integrations. They already have — NinjaOne and Action1 both shipped Intune integrations in November 2025, and Rapid7 rents patch execution from Automox. That question is answered. The live question underneath it is different: *given that the story is copyable, what is the durable advantage?* Your own idea-chess v4 pass answered that in one line, and the current deck has lost it:

> "Stop pitching 'we combine four things.' Start pitching the one thing only N-able has: we already know your estate better than a new tool ever could on day one, because we've been watching it for years."

That line is the strongest available answer to 1.21 and 1.6 together, and it converts the moat question from "can this be copied" to "how long would it take someone to accumulate what we already have." It needs the richer-not-just-bigger check behind it before it can be said out loud — which is the same half-day check flagged in 1.6.

---

## What this register needs from you

Three things I cannot resolve, in the order they block other work:

1. **The ICP unit (A8).** FTE, endpoints, technicians, or IT staff count. The deck is waiting on LD for this; until it lands, every Moore-form value statement has an empty target-customer slot. My read, on the evidence: **IT staff count and fleet homogeneity**, because that is the only frame all four interviews independently converge on — but this is your abduction to make, not mine.
2. **Whether A7 and A9 join the six**, making it eight, or whether the six stay fixed and these sit in the register.
3. **Whether the richer-not-just-bigger check gets done**, because 1.6, 1.21 and the idea-chess line all depend on it, and it is half a day of work against N-able's own data.

---

## Sources

Internal:
- `Ecoverse Product & GTM Strategy – Working Draft.pptx` — 41 slides, version of 23 Sep 2026 09:09, read in full
- `MSP Market Segments Research Request 1.docx` — Brian Mackie, mod 16 Sep 2026. Interviews: Tarik Hafid; Paul Killins with Meaghan Reinecke; Hauke VonJuergensonn; Connor Herman. ⚠️ Participant data — used here for the research purpose it was gathered for. Not for seed data, not for external copy.
- `Ecoverse_Riskiest_Assumptions_Updated_23_Sep_2026_Stronger_Tests 4.docx`
- Figma: *Ecoverse — Word Concepting Time!*, 21 Sep 2026 — `k0d17vKJPH9HEkXWnEOH0l`
- `prototypes/ecoverse/riskiest-assumptions-FINAL-2026-09-09.md`
- `prototypes/ecoverse/idea-chess-v4-playing-to-win-2026-09-09.md`
- `prototypes/ecoverse/killer-app-openings-2026-09-09.md`
- `prototypes/ecoverse/gap-analysis-ecoverse-2026-09-09.md`
- `scout/ecoverse/riskiest-assumptions/riskiest-assumptions-INDEX.md`

External — all eighteen scout dossiers are at `prototypes/ecoverse-riskiest-assumptions/scout/`, each with its own claim→source table and do-not-cite list:
- `secondary-A-market-structure-intune.md` + `secondary-A-claim-source-table.md` — market structure, Intune coexistence, consolidation evidence
- `secondary-B-01` … `secondary-B-04` — NinjaOne, Action1, governed action, Intune-gap specialists, N-able's own published surface
- `secondary-C-pricing-wtp.md` — pricing, bundling, the G2 buying study
- `secondary-D-compliance-drivers.md` + `01`–`08` — Cyber Essentials v3.2, NIS2/CIR 2024/2690, CRA, UK CSR Bill, ENISA, cyber insurance
- `secondary-E-governed-ai-trust.md` — the trust and automation-reliance literature

**Do not cite, and they are seductive:** "Intune manages 200+ million devices" (no primary source anywhere); the cluster of consolidation statistics circulating as fact ("49% struggle with overlapping tools," "41% fewer false positives," "40% reduction in endpoint incidents") — these say precisely what Ecoverse wants said and none of them trace to a named study; and the buyer-behaviour figures ("81% had decided before first contact with sales," "95% of winners are on the day-one shortlist"). Full trap lists are in each dossier's trust ladder.
