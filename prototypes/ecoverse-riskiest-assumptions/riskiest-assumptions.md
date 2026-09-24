# Pure Ecoverse Play — Riskiest Assumptions

**Elizabeth Connor** · Updated 24 September 2026 · Internal working document

> This is the single working copy. Edit it here. It goes to Confluence from this file, so please don't fork it into dated variants.

**What happened this round.** I spent a day on secondary research — market reports, competitor announcements, regulator surveys, published research — and ran the propositions through three frameworks on [the Ecoverse concepting board in FigJam](https://www.figma.com/board/k0d17vKJPH9HEkXWnEOH0l/): jobs to be done, ten types of innovation, and competitive analysis. No customers were interviewed and no tests were run. That means everything below is either published evidence or a concept we sketched, and the two are labelled differently throughout.

---

## TL;DR

| | |
|---|---|
| **Problem** | Real, big, getting worse. Patching is the hardest single thing to comply with — **50%** of EU organisations say so, ahead of business continuity at 49% [[1]](#notes). **63%** are a month or more late against a 14-day rule. Two-thirds of vulnerabilities being exploited already have a patch available. |
| **Money** | **Compliance is the number one reason organisations spend on security — 70%, ahead of eight other drivers** [[2]](#notes). The budget line exists. But nobody has published evidence that a compliance deadline turns into a purchase. |
| **Price** | **We are compared against zero, not eight dollars.** Intune is already paid for inside the Microsoft 365 bundle, and Action1 is free forever to 200 endpoints. That matters less than it sounds: **when buyers shortlist, price comes last of five factors at 47% and security detail comes first at 58%** [[3]](#notes). |
| **Crowding** | The gap we thought we'd found was already being filled while we were describing it. NinjaOne and Action1 both shipped Microsoft Intune integrations in **November 2025** — separately, without partnerships, and in two different architectures. Ours isn't a gap in the market, it's a race in a crowded one. |
| **Tech** | Nobody can do autonomous remediation yet, and it's measured, not opinion: **13.8%** of scenarios resolved on the peer-reviewed benchmark, **every frontier model under 50%** on the independent re-run. The bar to design against is **0.70 reliability on one bounded action** [[4]](#notes). |
| **The play** | We sketched eight options on the board and one survives: **sell the proof, not the patching** — close a compliance duty and hand over the evidence it was done. Ranked list in [§4](#4-concepting--what-we-could-do). |
| **Worth referencing** | Two mechanisms already working for other people. **Tanium** publishes how it governs automation — confidence scores and staged rings — which is how you ship useful automation before the AI is reliable. **We could run that play better than they do, because backup sits next to patch in our portfolio and not in theirs: they can predict a patch won't break a machine, we could reverse it.** **Atera** prices per technician rather than per endpoint, which sidesteps the price floor entirely. |

---

## 1. Where we are

### Testing progress since 09 September

- **Stronger evidence:** generalist-heavy IT teams; patching and vulnerability needs; compliance and resilience pressure; simplicity and reduced operational effort; governed AI requirements.
- **Challenging evidence:** some IT departments buy one problem at a time rather than entering through a broad platform; Microsoft-centric estates may favour coexistence or an integrated add-on.
- **Still largely unproven:** willingness to pay; repeatable switch trigger; Intune displacement versus coexistence; technical reliability of cross-signal AI judgement; durable competitive advantage.

### What got stronger

**The problem itself** — and North America is both the sharpest version of it and the biggest market.

- **29%** of IBM X-Force's incidents were North American — most-attacked region for the first time in six years, up from 24% ([IBM X-Force Threat Index 2026](https://newsroom.ibm.com/2026-02-25-ibm-2026-x-force-threat-index-ai-driven-attacks-are-escalating-as-basic-security-gaps-leave-enterprises-exposed)).
- **USD 7.00B of USD 17.76B** global endpoint security spend is North American; the US alone is **USD 5.28B** ([MarketsandMarkets](https://www.marketsandmarkets.com/Market-Reports/TableOfContent/endpoint-security-market-29081235.html)), and roughly **40%** of endpoint management ([Mordor](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market)).
- **Only 34%** of UK businesses have a policy to patch inside two weeks ([DSIT, n=2,112](https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026)).
- **Half** of EU organisations call patching the hardest rule to comply with; **28%** take over three months ([ENISA, n=1,080](https://www.enisa.europa.eu/publications/nis-investments-2025)).
- **40%** of incidents now start with an unpatched vulnerability ([IBM](https://newsroom.ibm.com/2026-02-25-ibm-2026-x-force-threat-index-ai-driven-attacks-are-escalating-as-basic-security-gaps-leave-enterprises-exposed)).

The UK and EU numbers are the best-documented picture of a problem we see everywhere — not a description of our market.

### What got weaker

- **The moat.** [NinjaOne shipped a Microsoft Intune integration](https://www.ninjaone.com/press/microsoft-intune-integration/) on 18 November 2025 and [Action1 shipped an equivalent](https://www.action1.com/company-news/action1-extends-microsoft-intune-with-unified-cross-platform-patching-and-risk-based-vulnerability-management-at-microsoft-ignite-2025/) at Microsoft Ignite the same month. Our test was going to ask whether either could manage it inside twelve months *with a partner*. They needed neither. **The defensible thing is speed and proof, not the feature.**

- **The order of the wedge.** Knowing what's on the estate is the [fastest-growing part of endpoint security at 12.8% a year](https://www.marketsandmarkets.com/Market-Reports/TableOfContent/endpoint-security-market-29081235.html). Fixing vulnerabilities is the [slowest at 6.38%](https://www.mordorintelligence.com/industry-reports/security-and-vulnerability-management-market). Patching sits [between them at about 8.3%](https://www.imarcgroup.com/patch-management-market). **We had been leading with the slowest one.**

- **The price we're compared against.** Not eight dollars a user — zero. [Intune](https://www.microsoft.com/en-us/security/microsoft-intune-pricing) is already inside the bundle these companies buy for email and Office, and [from 1 July 2026](https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates) that bundle absorbed capabilities that used to cost $10 a user. [Action1 is free forever to 200 endpoints](https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/).

- **"Less effort" as a proposition.** **Nobody appears to be buying less effort when you look at where security money actually goes.** In the ENISA ranking, "increased efficiency in cybersecurity operations, e.g. through automation and patching" was an *outcome* organisations reported at only **12%**, while compliance was the *driver* at 70% [[2]](#notes). Efficiency is what people get. Compliance is what they buy.

- **The compliance deadline, as a North American argument.** New since 23 September, and it matters because our best play rests on it. **There is no North American statutory patching deadline that reaches a company of our size.** [New York DFS](https://www.dfs.ny.gov/system/files/documents/2023/10/rf_fs_2amend23NYCRR500_text_20231101.pdf) rewrote and retitled its vulnerability-management section in 2023 and still says "timely remediate … based on the risk they pose" — no day count, financial services only. Massachusetts binds a 150-person company with no sector limit or size floor, names operating-system patches, and says "reasonably up-to-date." [Canada's baseline for organisations under 499 staff](https://www.cyber.gc.ca/en/guidance/baseline-cyber-security-controls-small-and-medium-organizations) sets no timeframe at all. HIPAA proposed 15 and 30 days in January 2025, is still not law, and final action has slipped to July 2027.

### What we're learning

Not settled. Each one names what's behind it and how much weight it carries [[5]](#notes).

- **There's a market here, but the harvestable part is narrower than I expected.** The money sits above us — large enterprises are [71.6% of endpoint management revenue](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) and [71.1% of security and vulnerability revenue](https://www.mordorintelligence.com/industry-reports/security-and-vulnerability-management-market), and we've aimed below that deliberately. Nobody sizes the slice we want. Published UEM market sizes for the same year run **$7.04B to $17.15B** — a 2.4x spread, which tells you the category boundary isn't stable enough to carry a number into a room. *Weight: strong on the concentration, unmeasurable on the slice.*

- **We're stronger where we're already known and weaker everywhere else.** [Canalys](https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys) puts us at **11.4%** against NinjaOne's **9.4%** of the service-provider software market, behind ConnectWise and Kaseya. [Gartner's endpoint management ranking](https://www.gartner.com/reviews/market/endpoint-management-tools), covering a different market, puts us in its smallest group and lists only commercial weaknesses. *Weight: directional — the Canalys article blocks automated reading and the period looks like one quarter of 2024, not a year.*

- **The opening is a timing one, not a feature one.** Gartner names our innovation as a strength — monitoring, threat detection, forecasting, automated remediation, agent frameworks, generative scripting — and names **NinjaOne's** generative AI as limited and roadmap-dependent, treating it as a long-term risk to them. **Why that gap closes: NinjaOne is the fastest-moving direct competitor in our band, it has just proved it can ship an integration we thought would take it a year, and it raised a very large private round in early 2025 — so it has both the capital and a publicly-named weakness it knows about.** *Weight: good, and perishable.* ⚠️ **The valuation figure I used earlier ($5B, February 2025) has no verified citation — don't repeat it until someone links it.**

- **In North America the forcing function is the insurer and the customer, not the regulator.** There's an actual document rather than commentary: a public [US broker application form](https://www.crcgroup.com/Portals/34/Apps/DaveFinneran/App-Cyber.pdf) with a signed yes/no box reading *"Apply security patches within 30 days of release?"* And the [CIRA survey](https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf) is the closest published sample to our ICP we've found anywhere — n=505 Canadian organisations, private sector capped at 999 employees — where **84%** carry cyber cover, **39–40%** say their insurer demanded new proof of controls in the past year (39–42% every year since 2022), and customer security requirements are becoming more common for **68%**, up from 56% in 2021. *Weight: good on direction, and it inverts our EU reading — ENISA puts insurance last of nine at 5%. Caveats: the form is a broker's, not a carrier's, and the CIRA contract question asks about security requirements generally, not patching.*

---

## 2. The assumptions

Ordered most to least risky. **NEW** marks the four that were being carried without being written down. The wording below is what each assumption should now say — click any of them for the history of how it changed. Deck slides 5–6 covered six of these. The four marked NEW were not on them.

| Risk | The assumption, as it should now read | Where it stands | The test | Who's testing |
|---|---|---|---|---|
| **1** | [We have a real, unmet business need that translates into commercial value](#a-real-unmet-need-that-translates-into-commercial-value) | Need is evidenced. **Commercial case has no evidence at all** — no willingness-to-pay study exists for this category anywhere. | Apply the Cove and Adlumin attach-and-expand data to Ecoverse price points. **Blocked: there are no price points.** When there are, run it against a free alternative, not a list price. | |
| **2** | **NEW** — [We can reach this buyer, convince them, and prove it](#we-can-reach-this-buyer-convince-them-and-prove-it) | Every weakness Gartner lists about us is commercial, not product. The deck doesn't contain this risk. | Two cheap things: make people in the band pick between the two differentiator statements, and count internally how many customer stories we could publish in 90 days. | |
| **3** | **NEW** — [We can ship onboarding good enough to carry a self-serve trial in Phase 1](#we-can-ship-onboarding-good-enough-to-carry-a-self-serve-trial) | 9 of 11 trial and onboarding items on the deck's delivery slide are Not started. **Poor trial experience eliminates 50% of shortlisted vendors** [[3]](#notes). | Set a target for time-to-first-useful-result, then five sessions with no help at all. Record where people stop. | |
| **4** | [Can we build and sell an advantage **faster than it gets copied?**](#the-advantage-cant-be-copied-easily) | **Retired as written — answered by events.** Both competitors did it in a month, without partnerships, two different ways. | Retire the old question. New one: what can't they copy, and how long does the lead last? | |
| **5** | [A compliance duty is a repeatable reason to buy](#a-compliance-duty-is-a-repeatable-reason-to-buy) — and in North America that duty comes from an **insurer or a customer**, not a regulator | Dropped "easily." Trigger identified and evidenced as a *spending driver*; **not yet evidenced as a switch trigger.** | Get the win/loss data. If none exists, qualitative pricing study on bundles and value props. Test the compliance trigger, not the efficiency claim. | **Taha** — talking to sales, pulling win/loss, sitting in on calls |
| **6** | [We can build an AI that does this reliably](#we-can-build-an-ai-that-does-this-reliably) | Unchanged, now with an external bar: **0.70 reliability on one bounded action** before attempting three-signal correlation. | **Engineering test.** Fix the pre-flight and success-state bugs scoped in NZO-SEV, re-measure against 0.70, build the first lightweight prototype. | |
| **7** | [**Split in two:** a narrow entry point earns adoption, and the joined-up view earns expansion later](#connecting-categories-surfaces-real-unrealized-value) | Interviews say people arrive shopping for one problem. **The question that would settle it has never been published by anyone**, so only our own interviews can answer it. | 5–10 interviews against the mocked combined view, sample split by change-control strictness. **The mock doesn't exist yet.** | |
| **8** | [People will trust it when the **controls and the proof** are right](#people-will-trust-it-when-the-controls-and-the-proof-are-right) | Dropped "out of the gate" — wrong bar. Market already settled the autonomy question: Microsoft shipped read-only, Tanium requires sign-off. | Ship the approval toggle, re-run the reboot usability test, and add a behavioural measure alongside the self-report. ⚠️ **Which instrument gave the 2.5/5? Needs confirming before the re-run — the score isn't comparable otherwise.** | |
| **9** | **NEW** — [We know who this is for — internal IT, not the MSP proposition repositioned](#we-know-who-this-is-for) | Holds the sharpest open question we have: whether the compliance message attracts the customer least able to use the product. | Segment the install base against the stated band, then run the combined-view concept test with two groups — half with formal change approval, half without. | |
| **10** | **NEW** — [We know the ICP unit — headcount converts to endpoints for our band](#we-know-the-icp-unit) | Deck describes the target in three different units. **No published benchmark exists** and every circulating figure traces to a paywall or a competitor's blog. | Query the install base: machines per customer inside the band, by region and industry, returning the spread rather than the average. One day. | |

**Owners still needed on 1, 3, 6, 7, 8, 9 and 10.** Taha has 5. Test 4 needs a rewritten question rather than an owner.

---

## 3. The detail

### A real, unmet need that translates into commercial value

**Where it stands:** need and problem evidence stronger; willingness to pay, pricing and margin unproven.

The need is credible. Interviewees keep naming the same four jobs — patching, vulnerability work, knowing what's on the estate, and compliance — and the secondary data backs it. The cleanest numbers are UK and EU because those regulators publish and survey: [only 34% of UK firms](https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026) have a policy to patch inside two weeks, and [70% of EU organisations](https://www.enisa.europa.eu/publications/nis-investments-2025) name compliance their top reason for security spend. North America is the largest market in every segment and the most-attacked region in IBM's 2026 data — so the problem isn't smaller there, it's less surveyed.

**The commercial case is where this falls down.** Our nearest competitors charge roughly **$1 to $3.75 per machine per month** — [Automox at $1](https://www.automox.com/pricing), [NinjaOne at $1.50 to $3.75 depending on volume](https://www.ninjaone.com/pricing/), [ManageEngine around $1 to $1.75 derived from its published list](https://www.manageengine.com/products/desktop-central/pricing.html) — and [Action1 gives it away free up to 200 machines](https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/). [Microsoft Intune](https://www.microsoft.com/en-us/security/microsoft-intune-pricing) lists at $8 a user but arrives inside a bundle these companies already bought for email and Office, so in practice it costs nothing extra. **Real problem, no obvious way to charge for it.**

**Buyers also don't decide on price.** When they shortlist, pricing ranks **last of five factors at 47%** while security detail ranks **first at 58%**, and security or compliance gaps eliminate **55%** of vendors who reach a shortlist ([G2, n=3,385](https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf)) [[3]](#notes). Median time buyers give you to prove a return is **8.75 months**.

**And there is no willingness-to-pay study for this category anywhere.** Not paywalled — absent. No conjoint, no price-sensitivity work, nothing for endpoint management, governed AI remediation, or the connected bundle. The deck said this in September and nothing external will fix it.

*From the interviews:* stronger evidence for operational pain, compliance pressure and manual effort. No source gives willingness-to-pay, packaging or margin evidence. IT is a cost centre, so value has to read as avoided effort, reduced risk, compliance enablement or tool cost reduction.

**Still unproven:** who owns the budget and which line pays · what minimum package is credible and at what price · whether the economics work at the initial estate size and support model.

---

### We can reach this buyer, convince them, and prove it

**Where it stands:** new this round. The weakness Gartner names and the deck doesn't.

[Gartner's write-up on us](https://www.gartner.com/reviews/market/endpoint-management-tools) is a useful mirror. It calls our innovation a strength and names the specifics — AI for monitoring, threat detection, forecasting and automated remediation. **Then every weakness it lists is commercial:** buyers outside our own channel don't know who we are, we have very few published customer stories, and our sales approach isn't tailored to any industry or job title. Nothing about the product. That's a different problem from the one the deck is trying to solve.

Gartner also holds a forecast showing this kind of automation going mainstream by 2029. ⚠️ Quote it internally from our licensed copy and its document number only — never from the vendor marketing pages that have repeated it without crediting anyone.

We do have share where we're already known: [Canalys](https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys) puts us ahead of NinjaOne in the service-provider software market, which the Gartner ranking doesn't cover. Directional only — see [Sources](#5-sources).

**Still unproven:** whether an in-house IT sales motion can be built on a team shaped for the service-provider channel · how many published customer stories are enough, and how fast we could produce any · whether a compliance message reaches this buyer at all, or whether "less work" is the one that lands.

**What would change our mind:** one differentiator statement wins clearly, and for the reason we expect rather than on tone. If both land the same, neither is distinctive. **If the story count comes back near zero, proof is the critical path and building more product is not.**

---

### We can ship onboarding good enough to carry a self-serve trial

**Where it stands:** new this round. Nothing we reviewed suggests we can, and the Phase 1 gate assumes a working trial.

**Nine of the eleven trial and onboarding items on the deck's own delivery slide are marked Not started** — trial sign-up, the agent install flow, self-serve purchase and Intune-based deployment among them. Meanwhile ease of use is what interviewees mention most; one described a competitor as easier to use and much shinier than what they had. **The thing we're counting on to set us apart is the thing least built.**

The buying research makes this sharper than it looks. **50% of buyers call a trial the decisive factor** in their purchase against 35% for a sales presentation, and **poor trial experience eliminates 50% of shortlisted vendors** ([G2](https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf)). A weak trial isn't a soft failure, it's an elimination.

**Still unproven:** how long first setup is allowed to take, and whether anyone has set a target · whether unattended setup is even possible when step one is installing software across machines we don't manage yet · whether the Phase 1 trial is a commitment to ship or a decision point — **the deck reads both ways.**

---

### The advantage can't be copied easily

**Where it stands:** retired as written. Answered by events.

**Suggested replacement:** *can we build and sell an advantage faster than it gets copied?*

It already happened. [NinjaOne](https://www.ninjaone.com/press/microsoft-intune-integration/) on 18 November 2025, [Action1](https://www.action1.com/company-news/action1-extends-microsoft-intune-with-unified-cross-platform-patching-and-risk-based-vulnerability-management-at-microsoft-ignite-2025/) at Microsoft Ignite the same month. Our test was going to ask whether either could do it inside twelve months with a partner. They needed neither.

**They did it differently, which is the part that matters: NinjaOne keeps control and treats Intune as a data feed, while Action1 sits inside Intune and extends it. Two different threats, not one.**

And the category now has a name we don't own. Gartner calls it autonomous endpoint management; Action1 already uses the term in its own positioning. No research publisher has sized it.

*From the interviews:* competitors already validate patching, automation, simplicity and endpoint operations. Intune-integrated specialists can fix painful gaps without replacing Microsoft. What's left as potential differentiation: deeper endpoint intelligence, governed action, proof of outcome, usability, and serving both IT and MSP operating models.

**Still unproven:** which advantage customers notice in the first buying decision · whether competitors can reproduce the outcome through integration, partnership or packaging · whether N-able endpoint data produces a demonstrably better result or just a stronger internal asset story. ⚠️ **The deck argues both sides of this last one — slide 2 treats rich endpoint data as core IP, slide 27 lists it as something to spike into. Both can't be true.**

---

### A compliance duty is a repeatable reason to buy

**Where it stands:** testing in progress. Business outcomes recur; a repeatable switch trigger and commercial pull are not yet proven. **Drop "easily."**

Compliance keeps coming up as the reason to spend — **70% of EU organisations name it their top security investment driver, ahead of eight other options** [[2]](#notes). The strongest version is the UK's [Cyber Essentials](https://www.ncsc.gov.uk/files/cyber-essentials-requirements-for-it-infrastructure-v3-2.pdf), which puts a hard **14-day** deadline on critical patches and has done since April 2025.

**The North American picture is now mapped, and it changed the shape of this assumption rather than confirming it.** There is no statutory patching deadline in the US or Canada that reaches a company of our target size. What exists instead:

- **[PCI DSS 6.3.3](https://www.pcisecuritystandards.org/standards/pci-dss/) is the one live hard clock** that can attach to a 150-person company — critical or high patches **within one month** of release — and it attaches on the basis of what the company *does*, taking card payments, not its sector or size. It's a card-brand contract, not law.
- **State law names no deadlines.** [New York DFS](https://www.dfs.ny.gov/system/files/documents/2023/10/rf_fs_2amend23NYCRR500_text_20231101.pdf) rewrote and retitled its vulnerability-management section in 2023 and chose *"timely remediate … giving priority … based on the risk they pose."* Massachusetts 201 CMR 17.04 reaches any company holding a Massachusetts resident's personal information — no sector limit, no size floor — names operating-system security patches, and says *"reasonably up-to-date."*
- **Canada has no deadline either.** The [CCCS baseline controls](https://www.cyber.gc.ca/en/guidance/baseline-cyber-security-controls-small-and-medium-organizations), scoped to organisations under 499 staff, say enable automatic patching *or* establish a patch management solution, with no timeframe. [CyberSecure Canada](https://ised-isde.canada.ca/site/cybersecure-canada/en) certifies against that same document, and we found no procurement mandate requiring it — unlike Cyber Essentials, which is mandatory for some UK government contracts.
- **The insurer and the customer are the forcing functions.** A public [US broker application](https://www.crcgroup.com/Portals/34/Apps/DaveFinneran/App-Cyber.pdf) asks, as a signed representation, *"Apply security patches within 30 days of release?"* And the [CIRA survey](https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf) of Canadian organisations — private sector capped at 999 employees, close to our band — has **84%** carrying cover, **39–40%** whose insurer demanded new proof of controls in the past year, and customer security requirements becoming more common for **68%**, up from 56% in 2021.

**Two honest limits.** No source anywhere ties a compliance deadline to a rise in tool purchasing around that date — we can show the pressure and not the conversion. And there is no US or Canadian survey methodologically comparable to ENISA's 70%, so **the EU-to-North-America comparison can't be made on like-for-like data.** That absence is itself the finding.

⚠️ **One trap to guard.** CISA's BOD 22-01 — the "two weeks for known exploited vulnerabilities" rule — was [**revoked on 10 June 2026**](https://www.cisa.gov/news-events/directives/bod-22-01-reducing-significant-risk-known-exploited-vulnerabilities) and replaced by [BOD 26-04](https://www.cisa.gov/news-events/directives/bod-26-04-prioritizing-security-updates-based-risk), which applies to federal systems only. Large amounts of vendor content still cite it as live, and **14 days is also the genuine Cyber Essentials figure** — anyone skimming both will merge a live UK requirement with a revoked US one and produce a sentence that's wrong in both directions.

*From the interviews:* reported triggers include difficult or noisy tools, high cost, compliance requirements, operational effort and tool sprawl. Microsoft-centric customers may be hard to displace, and an integrated add-on may be more plausible than a UEM replacement. Customers already have tools, so Pure Ecoverse has to displace, complement or consolidate something specific.

**Still unproven:** which trigger is common enough to support repeatable acquisition · whether the first motion is replacement, coexistence or attach-to-Intune · which incumbent, budget line and buying event are involved · **whether an insurance or questionnaire requirement produces a purchase the way a statutory deadline is assumed to.**

---

### We can build an AI that does this reliably

**Where it stands:** unchanged by this round's evidence, but now with an external bar to design against. This is an engineering test.

The deck's read — *"correlating signals into judgment is harder than anything we have proved so far"* — turns out to be right and measurable.

- **[ITBench](https://proceedings.mlr.press/v267/jha25a.html)** (IBM Research and UIUC, 42 authors, peer-reviewed, 94 real-world IT automation scenarios): agents resolved **13.8%** of site-reliability scenarios, **25.2%** of compliance and security ones, **0%** of FinOps.
- **[ITBench-AA](https://artificialanalysis.ai/articles/itbench-aa-launch)** (independent re-implementation, 59 tasks, scored at average precision at full recall): **every frontier model under 50%.** Two named failure modes worth knowing — models submit more entities than there are real root causes, and longer investigations don't produce better accuracy. The [leaderboard](https://artificialanalysis.ai/evaluations/itbench-aa) is live, so pull the current number at write-time.
- **[AIOpsLab](https://arxiv.org/pdf/2501.06706)** (Microsoft Research, 86 incident scenarios): best agent **59.32%** overall, **54.55%** on mitigation.

**And there's a threshold.** A [synthesis of 20 studies](https://www.tandfonline.com/doi/abs/10.1080/14639220500370105) puts the usefulness crossover at about **0.70 reliability** — below that, unreliable automation leaves you worse off than no automation, and the effect is stronger under high workload. That's from diagnostic automation in lab tasks rather than action-taking automation in enterprise IT, so the transfer is an assumption. It's still the only number available that works as an acceptance bar.

*From the interviews:* automation is valued when it removes concrete effort — patch remediation, software deployment, configuration work. The original three-signal judgement is a bigger technical leap than the bounded jobs now emerging. Progress, completion, accurate state and auditability are all essential.

**Still unproven:** whether one bounded workflow can meet agreed reliability and observability thresholds · whether endpoint data is complete and current enough for the chosen job · whether failure modes are recoverable and understandable.

---

### Connecting categories surfaces real, unrealized value

**Where it stands:** mixed evidence, now pointing the other way. Direct evaluation of the mocked combined view is still outstanding.

**Suggested replacement — split it in two:** *a narrow entry point earns adoption, and the joined-up view earns expansion later.*

Interviewees say they arrive shopping for one problem; one put it as replacing a screwdriver rather than shopping for a workshop. And the growth rates disagree with our ordering: finding and tracking what's on the estate grows at **12.8%** a year, fixing vulnerabilities is the slowest at **6.38%**, and patching sits between at about **8.3%**. **We've been leading with the slow one.**

**The thing that would settle it isn't available.** No published research exists on whether IT buyers enter a platform purchase point-solution-first or suite-first — not from Gartner, Forrester, TrustRadius or G2. The available buying research answers a different question, *how* buyers research and shortlist, and the two must not be substituted for each other. [Forrester's endpoint management evaluation](https://www.forrester.com/report/the-forrester-wave-tm-endpoint-management-platforms-q2-2026/RES195001) does name *"the ability to unify IT and security operations on a single platform"* as a criterion, which is the closest an analyst house comes to asserting that connection is the axis of competition — **but a criterion is not evidence of realised buyer value.** Only our own interviews can answer this.

*From the interviews:* patching, vulnerability management, inventory and intelligence, compliance, remote access, simplicity and reduced operational effort all come up as meaningful jobs. Some evidence supports consolidation; other evidence says IT departments enter looking to solve one problem at a time. The viable proposition may be a broad platform sold through a narrow, outcome-led entry point.

**Still unproven:** which initial job is valuable and urgent enough to trigger trial or purchase · whether connecting patch, vulnerability, configuration, inventory and compliance produces value beyond a strong point solution · whether expansion into adjacent jobs actually happens after the first wedge lands.

---

### People will trust it when the controls and the proof are right

**Where it stands:** testing in progress. Interviews clarify the trust conditions; they don't prove the proposed controls move the baseline. **Drop "out of the gate" — wrong bar.**

The trust conditions came out clearly: approvals, accuracy, an audit trail, and proof the action actually finished. **The market has already settled the autonomy argument.** [Microsoft's Vulnerability Remediation Agent](https://learn.microsoft.com/en-us/intune/agents/vulnerability-remediation-agent) is in public preview, and its agentic identity is granted **Read Only Operator** — it is not technically capable of changing anything. It collects data, prioritises by CVSS and exposure, and writes instructions for a human to apply. Microsoft's own documentation says an admin must start it manually, that **once started there is no option to stop or pause it**, and that admins can see its data outside their assigned roles and scope. Tanium requires sign-off on every action. Our own deck already says full autonomy is probably the wrong target.

**Two findings complicate the plan to ship the toggle and watch the 2.5/5 move.**

**A gate is a design question, not a mitigation.** The largest field measurement of confirmation prompts ever run — [over 25 million real browser warnings](https://devd.me/papers/alice-in-warningland.pdf) — found click-through from about **10%** on Firefox malware warnings to **70.2%** on Chrome SSL warnings. Same mechanism, different implementation, one of them ignored seven times in ten. Separately, a [meta-analysis of 18 experiments](https://journals.sagepub.com/doi/10.1177/0018720813501549) shows keeping the human in the loop preserves failure-state performance and situation awareness at a real cost to routine efficiency. Gates buy something measurable, and they aren't free.

**The 2.5/5 may not be measuring the thing we care about.** Self-reported trust and behavioural reliance move through distinct mechanisms — in one study stated trust didn't differ between conditions while actual dependence tracked reliability. And [interventions that force engagement work while being rated worse](https://www.eecs.harvard.edu/~kgajos/papers/2021/bucinca21trust.pdf) by the people using them. **The score going up wouldn't prove adoption; it staying put wouldn't prove failure.** The re-run needs a behavioural measure alongside the self-report.

⚠️ **Open question for Beth:** which instrument produced the 2.5/5? The deck says "AI trust instrument" without naming it. **NASA-TLX measures workload, not trust, so it can't be the source of a trust score.** The field standard self-report is the [Jian et al. 12-item Checklist for Trust between People and Automation](https://apps.dtic.mil/sti/tr/pdf/ADA395339.pdf), which has a documented positivity bias. Without knowing which was used, the re-run isn't comparable to the baseline.

**One uncomfortable gap.** Of the four trust conditions, **approvals and accuracy have measured evidence. Rollback has one on-domain data point, from a vendor that sells rollback. Audit trails and proof-of-completion have nothing measured at all** — no study anywhere tests whether either changes trust or adoption. Governance frameworks require logging, so buyers will ask for it in an RFP, but that's requirement-side, not evidence-side. **This matters because proof is what our strongest play sells.**

*From the interviews:* trust, governance, accuracy, auditability and data handling all come up explicitly. People describe value in AI that monitors, prioritises or executes — with constrained scope and approved knowledge and processes. Simple on/off automation is likely more appropriate for early customers than asking them to build agentic workflows.

**Still unproven:** which actions can run automatically, which need approval, which are unacceptable · what explanation, evidence and recovery controls each risk level needs · whether governed automation beats deterministic UX alone · **whether proof-of-completion moves anyone at all.**

---

### We know who this is for

**Where it stands:** new this round. Named properly in the deck for the first time, not yet tested.

The deck names the target properly at last: in-house IT departments in companies of **100 to 299 staff** running under about **1,000 machines**. Two things complicate it. In-house IT buyers actively dislike anything that looks built for service providers, down to the product name. And **Gartner warns that companies with strict change-approval processes get the least value from automation — which describes exactly the compliance-driven companies we most want to sell to.**

One encouraging signal from the Canadian data, in roughly the right size band: organisations managing cybersecurity **internally rose from 52% to 61% in a single year**, while outsourcing to an IT company fell from 38% to 32% ([CIRA](https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf)). Multi-select, so not shares of a whole, and Canada only. It points the same way as the in-house thesis.

**Still unproven:**

- Whether this is a new group of customers or a re-description of the Classic N-sight base we already have. Different economics, different tests.
- **Whether the compliance message attracts the customer least suited to the product. This is the sharpest open question we have.**
- Whether in-house IT and service providers can share one product, or split at setup and language.
- **Which geographies Phase 1 actually covers.** The duty differs in kind, not degree: a 14-day statutory deadline in the UK, PCI DSS for card-takers in North America, and an insurer's or customer's requirement for everyone else. Four different conversations. And **DACH may be an exclusion rather than a market** — one interviewee was clear that on-premises hosting, local control and customer-held encryption keys are requirements there, which a cloud-native self-serve product doesn't meet.

**What would change our mind:** both groups pick the same concept and differ only on how much automation they'll allow — that's one product with a setting. If they pick differently, or the strict group refuses automation at any level, then compliance is a message that brings in the wrong customer and the target needs restating.

---

### We know the ICP unit

**Where it stands:** new this round. The cheapest thing here to settle, and still unsettled.

The deck describes the target in three different units, and a comment on one slide records that staff count versus machine count is still being confirmed.

**There is no free published benchmark for machines per company.** [Computer Economics](https://www.computereconomics.com/it-staffing-ratios/) keeps theirs behind a paywall and publishes no figures at all on its public page. Every free version of that number traces back to it through aggregators that **disagree with each other by a factor of two**. And every ratio in circulation is staff-to-employee or staff-to-user rather than staff-to-endpoint — with **two of the publishers being NinjaOne and Atera**, competitors selling products whose whole pitch is raising the ratio.

One research firm does hold it: [Mordor](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) lists average devices per employee as an input to its published method. **Our own install base is better, because those are our customers rather than a global average.**

**Still unproven:** the ratio for our band in our countries · whether it varies enough by country or industry to change who we target · whether the staff-count band and the machine-count band describe the same companies.

**What would change our mind:** the spread is tight enough that one definition covers the band. If it splits in two, or varies by country, we're aiming at two groups under one label and the pricing test needs two packages.

---

## 4. Concepting — what we could do

**This section is concepting, not evidence.** I took what we already know — the interviews, the deck, the secondary research above — and ran the propositions through three frameworks on [the FigJam board](https://www.figma.com/board/k0d17vKJPH9HEkXWnEOH0l/): jobs to be done, ten types of innovation, and competitive analysis. Eight options came out. Nothing here has been tested with a customer. **The three struck through won't work, and they're kept because ruling something out is a result and it saves the next round.**

**On the analyst column.** Analysts score two things separately: how good your product and plan look, and how well you actually sell, support and get known. Almost everything on this list only moves the first. Only the go-to-market push moves the second, and the second is what gets anyone into the top group. **That's my reading of how the scoring works, not something Gartner has stated.**

**And there are no revenue figures here on purpose.** The category Gartner just named is sized by nobody, no publisher counts patching or vulnerability work at the endpoint alone, and we don't know how many endpoints a typical customer in our band has. A number here would be one I picked rather than one I found, and it wouldn't survive the first challenge in the room.

| Rank | What we could do | Where we landed | How far analysts could move us | Where the money comes from | How long |
|---|---|---|---|---|---|
| **1** | **Sell the compliance evidence itself — the proof the work was done** | **Best evidence, least to build** | Better product score | Attaches to a duty the buyer already has and already spends against — compliance is the #1 security spending driver at 70% [[2]](#notes). **The duty differs by market:** a statutory 14-day deadline in the UK, PCI DSS for card-takers in North America, an insurer's or customer's requirement for everyone else. | 3–6 months (est.) |
| **2** | **Get to supervised automation in the mid-market before NinjaOne closes its AI gap** | **The only one with a closing window** | Strong product score | Price per endpoint × endpoints in our band. Both unknown, so no figure given. | 12–18 months (est.). The clock is NinjaOne's, not ours. |
| **3** | Build the full go-to-market push: industry-specific selling, customer stories, awareness | **Right answer, wrong timeframe** | **The only route to the top group** | Biggest of anything here, and unsizeable until we know endpoints per customer. | 2–3 years (est.) |
| **4** | Charge per technician rather than per endpoint, as Atera does | **Untested, cheapest to test** | Gartner singles out Atera's pricing as unique and a strength | Changes the economics rather than the volume. Needs our own cost base — internal and knowable. | A pricing decision, not a build |
| **5** | Know the whole estate from day one | **Best long-term defence, wrong purchase rhythm** | Best story we genuinely own | Fastest-growing part of endpoint security at 12.8%. But an inventory gets bought once, not renewed on use. | Blocked until we settle what endpoint data we actually have |
| **6** | ~~Lead on patching~~ | ~~Weak~~ | Better product score only | Patching grows about 8.3% a year and is the most-copied thing in the category. | — |
| **7** | ~~Sell "less effort"~~ | ~~Not a proposition~~ | Nowhere | Nobody appears to buy less effort. In the ENISA data, efficiency through automation and patching was an outcome for **12%**, while compliance was the driver for **70%** [[2]](#notes). Keep it as language, not as the offer. | — |
| **8** | ~~Undercut NinjaOne on price and simplicity~~ | ~~Will not work~~ | Nowhere | Buyers rank price last of five shortlisting factors [[3]](#notes). Action1 is already free to 200 endpoints. **A race to a floor we're standing on.** | — |

### The one that survives — sell the proof, not the patching

The Moore positioning statement, as it currently reads:

> **For** internal IT teams of two to six people running a few hundred to about fifteen hundred similar machines,
> **who** have patching and inventory duties with deadlines they didn't set and nobody spare to do them,
> **Ecoverse** closes a named compliance duty on its own, within rules you set, and hands you the proof it was done.
> **Unlike** Intune plus a separate tool, **we** treat the duty as the job rather than the machine, and we prove it was met.

Two versions of the last clause, for two different fights. **Against Microsoft: we treat the duty as the job. Against NinjaOne: we ship supervised automation now rather than promising it.**

**Why it's working**

- **The duty is real and someone else wrote it.** 14 days in the UK, one month under PCI DSS, and patching is the hardest NIS2 requirement of six at **50%** [[1]](#notes).
- **The buyer already spends for this reason.** Compliance is the **#1** driver of security spend at **70%** [[2]](#notes).
- **The gap is documented.** **63%** are a month or more late; only **34%** of UK firms have a 14-day policy at all.
- **It doesn't need the thing nobody can build.** Supervised action plus reliable proof works at today's reliability. Autonomy doesn't — nobody is above **50%** on the independent benchmark [[4]](#notes).
- **The proof layer is empty.** Microsoft's agent can't act. Tanium governs the action. Neither sells the evidence.
- **We wouldn't be competing on price**, which matters because we'd lose — price ranks **last of five**, security **first** [[3]](#notes).

**What needs to test**

| What to test | Why | Where |
|---|---|---|
| **Does proof actually move a buyer?** | The one trust condition with **no measured evidence anywhere.** Approval gates have evidence; accuracy has a threshold; audit trails and completion confirmation have nothing. We'd be selling the untested one. | Fold into the combined-view concept test |
| **Does a duty turn into a purchase?** | No source ties a compliance deadline to a rise in buying around it. | Taha's win/loss work |
| **Which duty, for which market?** | Four different conversations — UK statute, PCI DSS, an insurer's form, a customer's questionnaire. We've been writing one. | Who this is for |
| **Does the insurance leg hold?** | ENISA puts insurance last of nine at **5%**; Canadian data has **39–40%** of insured firms asked for new proof of controls last year. Nobody has reconciled them. | Needs a scout pass, not a test |

### Vendors worth referencing

Not products to copy — mechanisms other people have already proved work in this market.

**Tanium — how to ship automation before the AI is reliable.** Tanium claims autonomous action and then [publishes the controls](https://www.tanium.com/solutions/autonomous-patch-management): **confidence scores** per deployment action, built from installation success rates and post-deployment CPU, memory and crash baselines rather than a static risk rating; **ring deployment** with configurable entry and exit criteria, cited as 1% → 15% → 40% → all; and sign-off on every action. The point: the model doesn't have to be right everywhere, the system has to know where it has been right before and expand only there. *Caveat: this is Tanium's own material, so it describes a design rather than proving the design works.*

**Why we could run that play better than Tanium — the pieces we already have**

- **Backup sits next to patch in our portfolio and not in theirs.** Tanium's confidence scores tell you a deployment probably won't break the machine. **We could actually reverse it.** That's the difference between predicting a risk and carrying insurance against it — and the one on-domain number we have says reversibility is what unlocks speed: **88% of respondents said they'd apply patches faster if they could quickly un-patch.** ⚠️ Single source, vendor survey, 0patch 2017, no published n — directional only, and it's the most on-point figure in the whole corpus.
- **We're already in the band.** Tanium is an enterprise product with ring criteria a 150-person company will never configure. We have an install base of this size and a co-managed IT motion that N-able's own [10-K](https://www.sec.gov/Archives/edgar/data/1834488/000183448826000007/nabl-20251231.htm) names as a market-expansion thesis.
- **Confidence scoring needs a population of prior outcomes, and we have one** at mid-market scale where Tanium doesn't.
- **Gartner already scores our automation as a strength** — monitoring, threat detection, forecasting, automated remediation, agent frameworks, generative scripting. The weaknesses it names are all commercial.

⚠️ **The honest counter, and it's the same one as the copyability question:** whether our endpoint data is actually good enough to produce better confidence scores is unresolved, and our own deck argues both sides — slide 2 treats rich endpoint data as core IP, slide 27 lists it as something to spike into.

**Atera — how to price out of the race to zero.** Atera charges **per technician with unlimited endpoints at a flat fee**, and Gartner calls that out as unique and a strength. A pricing move rather than a proof move: it changes the economics rather than the volume, needs our own cost base rather than anyone's published research, and it stops Action1's free tier and Intune's zero incremental being the comparison. **A decision, not a build.**

---

## 5. Sources

Where something is paywalled, vendor-sponsored, licensed, or unreachable, it says so here rather than hiding it. Working files — the market-sizing dossiers, the North American compliance dossiers (`secondary-G-` series) and the deck-to-document assumption register — are in this folder.

### The problem

- **ENISA**, [NIS Investments 2025](https://www.enisa.europa.eu/publications/nis-investments-2025) · [full PDF](https://www.enisa.europa.eu/sites/default/files/2026-02/NIS%20Investments%202025%20-%20Main%20report.pdf) — 1,080 organisations in NIS2 sectors. The 70% compliance driver, insurance last of nine at 5%, patching hardest at 50%, 63% a month or more, 28% over three months, security spend a median 9% of IT budget, security staff down to 10.6% of IT headcount. ⚠️ Answer options were all drawn from NIS2 requirements, so this is a closed list, not free response.
- **DSIT**, [Cyber Security Breaches Survey 2025/2026](https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026) — 2,112 businesses, 30 Apr 2026. The 34% patching figure and breach rates by size.
- **NCSC**, [Cyber Essentials requirements v3.2](https://www.ncsc.gov.uk/files/cyber-essentials-requirements-for-it-infrastructure-v3-2.pdf) (PDF) — the 14-day rule, in force since 28 Apr 2025.
- **EU law**, [Implementing Regulation 2024/2690](https://eur-lex.europa.eu/eli/reg_impl/2024/2690/oj/eng) — requires a complete, accurate, current inventory, applies to service providers directly, sets no deadline in days. UK equivalent still undated: [CSR Bill factsheet](https://www.gov.uk/government/publications/cyber-security-and-resilience-network-and-information-systems-bill-factsheets/relevant-managed-service-providers).
- **IBM**, [2026 X-Force Threat Index](https://newsroom.ibm.com/2026-02-25-ibm-2026-x-force-threat-index-ai-driven-attacks-are-escalating-as-basic-security-gaps-leave-enterprises-exposed) — the 40% and North America 29% figures. Threat data, not market sizing. ⚠️ The MarketsandMarkets press release misquotes this: the original says North America 29% and manufacturing 27.7%.

### North American compliance

- **PCI SSC**, [PCI DSS](https://www.pcisecuritystandards.org/standards/pci-dss/) — requirement 6.3.3, critical or high within one month; applies to any entity storing, processing or transmitting cardholder data, no size threshold. ⚠️ Two unresolved: the v4.0.1 PDF blocks automated reading so the current text is unconfirmed against v4.0's, and the card-brand merchant-level thresholds that decide self-attestation versus assessment weren't retrieved.
- **New York DFS**, [Second Amendment to 23 NYCRR 500](https://www.dfs.ny.gov/system/files/documents/2023/10/rf_fs_2amend23NYCRR500_text_20231101.pdf) (PDF) — §500.05 renamed "Vulnerability management" and still says "timely remediate." Financial services only, and §500.05 is one of the sections the limited exemption removes.
- **CCCS**, [Baseline Cyber Security Controls for Small and Medium Organizations](https://www.cyber.gc.ca/en/guidance/baseline-cyber-security-controls-small-and-medium-organizations) — under 499 employees, no patching timeframe. [CyberSecure Canada](https://ised-isde.canada.ca/site/cybersecure-canada/en) certifies against it; moved to the Standards Council of Canada in March 2023.
- **CISA**, [BOD 26-04](https://www.cisa.gov/news-events/directives/bod-26-04-prioritizing-security-updates-based-risk) effective 10 June 2026, federal systems only — and it **revoked** [BOD 22-01](https://www.cisa.gov/news-events/directives/bod-22-01-reducing-significant-risk-known-exploited-vulnerabilities). ⚠️ Anything citing CISA's "two-week rule" as current is stale, and the number collides with Cyber Essentials'.
- **CRC Group**, [Cyber Liability Insurance Application](https://www.crcgroup.com/Portals/34/Apps/DaveFinneran/App-Cyber.pdf) (PDF) — public US wholesale broker form, signed representation on 30-day patching. ⚠️ A broker's form, not a carrier's.
- **CIRA / The Strategic Counsel**, [Canadian cybersecurity report, Aug 2025](https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf) (PDF) — n=505, private sector capped at 999 employees; the closest published sample to our ICP anywhere in this research. ⚠️ CIRA sells a DNS firewall, though not patching software, and the contract question asks about security requirements generally rather than patching.
- **Statistics Canada**, [Impact of cybercrime on Canadian businesses, 2023](https://www150.statcan.gc.ca/n1/daily-quotidien/241021/dq241021a-eng.htm) — spend by size band, where "medium" is 50–249 employees. Contains no patching and no spending-driver data.

### Market and pricing

- **MarketsandMarkets**, [endpoint security](https://www.marketsandmarkets.com/Market-Reports/TableOfContent/endpoint-security-market-29081235.html), July 2026 — the 12.8% asset-discovery growth figure and the $17.76B global total. The one report worth buying if we buy one; $4,950.
- **Mordor Intelligence**, [endpoint management](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) and [security and vulnerability management](https://www.mordorintelligence.com/industry-reports/security-and-vulnerability-management-market) — the 71.6% and 71.1% large-enterprise concentration, North America ~40% regional share, and the only research firm that publishes its method.
- **IMARC**, [patch management](https://www.imarcgroup.com/patch-management-market) — the 8.3% figure.
- **Gartner** — [public endpoint management category page](https://www.gartner.com/reviews/market/endpoint-management-tools), and the [NinjaOne reprint](https://www.ninjaone.com/resource/gartner-magic-quadrant-2026-mq/) as a public route to the ranking. ⚠️ **Our own copy is licensed: internal use only, not to be copied or sent outside N-able, and not to be fed into any AI tool.** The adoption forecast cited under reaching this buyer has been republished without attribution on a vendor blog — cite it from our licensed copy and its document number, not that page.
- **Forrester**, [The Forrester Wave: Endpoint Management Platforms, Q2 2026](https://www.forrester.com/report/the-forrester-wave-tm-endpoint-management-platforms-q2-2026/RES195001) — the "unify IT and security operations on a single platform" criterion. Body gated; title and criterion public.
- **Canalys**, via [ChannelE2E](https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys) — the 11.4% vs 9.4% share figures. ⚠️ Use with care: the article blocks automated reading, the period looks like one quarter of 2024 rather than a year, the fifth-placed vendor is reported two ways, and the shares don't sum as described. Someone should open it by hand.
- **Microsoft**, [Intune pricing](https://www.microsoft.com/en-us/security/microsoft-intune-pricing), [2026 bundle changes](https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates), [licensing documentation](https://learn.microsoft.com/en-us/intune/fundamentals/licensing) — why the comparison price is zero. Microsoft's own words: most organisations get Intune inside a Microsoft 365 bundle rather than buying it directly. Note Intune is licensed per user, not per device.
- **Competitor pricing:** [Action1 free to 200 endpoints](https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/), [Automox $1](https://www.automox.com/pricing), [NinjaOne's range statement](https://www.ninjaone.com/pricing/) and its stated reason for not publishing, [ManageEngine's full published list](https://www.manageengine.com/products/desktop-central/pricing.html). ConnectWise, Kaseya, Rapid7 and Ivanti publish nothing at all — verified absence, not a research gap.
- **G2**, [State of Software Buying 2026](https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf) (PDF) — 3,385 buyers, methodology on p.22. The shortlisting factors, the 55% elimination figure, trial decisive for 50%, 8.75 months to prove return. ⚠️ G2 monetises vendor visibility on review sites, and this covers business software generally rather than endpoint management.
- **Recast Software**, [State of Intune 2026](https://www.prnewswire.com/news-releases/state-of-intune-survey-finds-it-teams-struggle-with-application-lifecycle-management-and-hybrid-complexity-302835831.html) — 890 respondents. ⚠️ **Name the sponsor: Recast sells Intune add-ons.** And read what it measures — "hybrid" means Intune plus Microsoft's own Configuration Manager, not Intune plus a third-party tool. Corroborated independently by [Redmond Channel Partner](https://rcpmag.com/articles/2026/08/07/microsoft-intune-adoption-grows.aspx).
- **N-able**, [Form 10-K for 2025](https://www.sec.gov/Archives/edgar/data/1834488/000183448826000007/nabl-20251231.htm) — our own reported numbers.

### Reliability and trust

- **ITBench** — [Jha et al., PMLR v267](https://proceedings.mlr.press/v267/jha25a.html), IBM Research and UIUC, 94 scenarios. The 13.8% / 25.2% / 0% resolution rates.
- **ITBench-AA** — [Artificial Analysis with IBM](https://artificialanalysis.ai/articles/itbench-aa-launch), 27 May 2026, 59 tasks. Every frontier model under 50%. [Live leaderboard](https://artificialanalysis.ai/evaluations/itbench-aa).
- **AIOpsLab** — [Microsoft Research](https://arxiv.org/pdf/2501.06706), 86 scenarios, best agent 59.32% overall, 54.55% on mitigation. ⚠️ Microsoft publishes the benchmark and ships the agents.
- **Wickens & Dixon 2007**, [the 0.70 crossover](https://www.tandfonline.com/doi/abs/10.1080/14639220500370105) — 20 studies, 35 data points. Lab diagnostic automation, so transfer to enterprise IT is an assumption.
- **Onnasch et al. 2014**, [meta-analysis of 18 experiments](https://journals.sagepub.com/doi/10.1177/0018720813501549) — higher automation improves routine performance and degrades failure-state performance and situation awareness.
- **Akhawe & Felt 2013**, [Alice in Warningland](https://devd.me/papers/alice-in-warningland.pdf) — over 25 million real warning impressions, click-through 10% to 70.2%.
- **Buçinca et al. 2021**, [cognitive forcing functions](https://www.eecs.harvard.edu/~kgajos/papers/2021/bucinca21trust.pdf) — the interventions that reduced overreliance were the ones users liked least.
- **Bansal et al. 2021**, [on explanations](https://idl.cs.washington.edu/files/2021-AIExplanationsTeamPerformance-CHI.pdf) — explanations didn't uniformly help and in some conditions increased over-trust in wrong recommendations. Useful, because "add explainability and trust follows" is what the room will assume.
- **Jian, Bisantz & Drury 2000**, [Checklist for Trust between People and Automation](https://apps.dtic.mil/sti/tr/pdf/ADA395339.pdf) (PDF) — the field-standard 12-item self-report, with a documented positivity bias.
- **Microsoft**, [Vulnerability Remediation Agent](https://learn.microsoft.com/en-us/intune/agents/vulnerability-remediation-agent) — read-only by design, no stop button once started, RBAC leakage documented by Microsoft itself.
- **Microsoft**, [third-party device compliance partners](https://learn.microsoft.com/en-us/intune/device-security/compliance/third-party-partners) — 18 named partners can act as MDM authority while Intune consumes the compliance signal. Android, iOS/iPadOS and macOS only; **Windows is not on the list.**
- **Tanium**, [autonomous patch management](https://www.tanium.com/solutions/autonomous-patch-management) — confidence scores and ring deployment. Vendor material describing a design.
- **Failure cases:** [CrowdStrike Channel File 291 root cause analysis](https://www.crowdstrike.com/wp-content/uploads/2024/08/Channel-File-291-Incident-Root-Cause-Analysis-08.06.2024.pdf) with the [CISA alert](https://www.cisa.gov/news-events/alerts/2024/07/19/widespread-it-outage-due-crowdstrike-update), and [McAfee DAT 5958](https://www.cisa.gov/news-events/alerts/2010/04/21/mcafee-dat-5958-issues) fourteen years earlier. Same shape both times: a fast automatic content channel that bypassed staged rollout. The controls CrowdStrike committed to afterwards are a requirements list written by an incident.

### Not using, and why

Written down so nobody re-finds these and gets excited.

- **Any endpoints-per-IT-admin figure.** None is published. [Computer Economics](https://www.computereconomics.com/it-staffing-ratios/) is paywalled with no public figures; free versions trace back through aggregators that disagree by 2x. Two of the publishers are NinjaOne and Atera.
- **Any IT-spend-as-percentage-of-revenue figure** from the SEO aggregator pages. They attribute to paywalled Gartner and Deloitte reports and contradict each other by 2x on the same segment.
- **Third-party per-endpoint prices** for NinjaOne, ConnectWise, Kaseya, Ivanti or Qualys from MSP comparison blogs. No methodology, commercially motivated, mutually inconsistent.
- **The "40 to 60% MTTR reduction" claim.** No methodology, no baseline, no control, and the pages don't use MTTR consistently. Evidence that it's the category's expected talking point — useful competitive intelligence. Not evidence that MTTR falls.
- **"Insurers now require 14-day patch SLAs."** Recurs across MSP and IT-services blogs, none naming a carrier, a form or a date. The only actual document found says 30 days. And 14 days is the real Cyber Essentials number, so this merges two markets that haven't converged.
- **PCI DSS v4.0.1's supposed narrowing of 6.3.3** to critical-only within 30 days. Vendor-sourced, and the official PDF blocks automated reading. Don't state the delta until someone opens it by hand.
- **The NinjaOne $5B / February 2025 valuation.** No verified citation. Don't repeat it until someone links it.
- **Any comparison of the EU's 70% against a North American figure.** No US or Canadian instrument comparable to ENISA's question exists. The absence is the finding; manufacturing the comparison wouldn't survive scrutiny.

---

## Notes

**[1] The six NIS2 requirements organisations found hardest to implement** ([ENISA, n=1,080](https://www.enisa.europa.eu/publications/nis-investments-2025)): vulnerabilities and patch management **50%** · business continuity and disaster recovery 49% · supply chain risk management 37% · awareness and cyber hygiene 27% · access management 21% · threat detection and incident handling 21%.

**[2] The nine cybersecurity investment drivers, ranked** ([ENISA, n=1,080](https://www.enisa.europa.eu/publications/nis-investments-2025)): regulatory compliance, e.g. NIS2, DORA, CRA **70%** · proactive risk mitigation and damage prevention 42% · supply chain security requirements 29% · customers' security requirements 26% · response to past incidents or near misses 26% · geopolitical threats 22% · digital transformation programmes 22% · executive or board requests 7% · **insurance requirements or conditions 5%**. Separately, when asked what their spending actually *achieved*, "increased efficiency in cybersecurity operations, e.g. through automation and patching" came in at **12%**.

**[3] The five things buyers look for when shortlisting software** ([G2, n=3,385](https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf), multiple response): security details **58%** · value for money 51% · clear feature information 51% · ease of use 48% · **pricing 47%**. And the three reasons vendors get dropped from a final shortlist: security or compliance gaps **55%** · unfavourable contract terms 52% · poor trial experience 50%. ⚠️ This covers business software generally, not endpoint management. It's the best published proxy available and it is a proxy.

**[4] Where 0.70 comes from.** A [synthesis of 20 studies and 35 data points](https://www.tandfonline.com/doi/abs/10.1080/14639220500370105) regressing the benefit of automation against its reliability found a crossover at about 0.70 — below that, automation leaves the operator worse off than no automation at all, and the effect is stronger under high workload. It's derived from diagnostic automation in laboratory tasks, not action-taking automation in enterprise IT, so applying it to us is an assumption. It is still the only number available that works as an acceptance bar.

**[5] What "weight" means here.** Each learning says how much it can carry, because they're not equal. *Strong* means multiple independent sources, read at the primary source. *Directional* means one source, or a source we couldn't read properly, or a period we can't confirm — enough to steer a decision, not enough to put on a slide. *Unmeasurable* means the thing doesn't exist in public data and only our own numbers will settle it.

---

## Internal evidence reviewed for this update

- `Ecoverse_Riskiest_Assumptions 1.docx`, 09 September 2026.
- `MSP Market Segments Research Request 1.docx`, including summaries of interviews and field conversations with Tarik Hafid, Paul Killins, Hauke VonJuergensonn and Connor Herman.
- Internal IT Department tools and jobs, transcribed discussion with TJ Hardwick, Brian Mackie, Taha Doueidar and Meaghan Reinecke.
- `Ecoverse Product & GTM Strategy – Working Draft.pptx`, slides 5–6: "Six assumptions that could break the Ecoverse case" and "How we test each assumption before we build."
- [The Ecoverse concepting board in FigJam](https://www.figma.com/board/k0d17vKJPH9HEkXWnEOH0l/) — jobs to be done, ten types of innovation, competitive analysis, and the eight options in §4.

> Participant data. Used for this research purpose only — not for external copy, marketing material or prototype seed data.
