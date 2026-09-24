# Pure Ecoverse Play — Riskiest Assumptions

**Elizabeth Connor** · Updated 24 September 2026 · Internal working document

> This is the single working copy. Edit it here. It goes to Confluence from this file, so please don't fork it into dated variants.

---

## If you read nothing else

| | |
|---|---|
| **Problem** | Real, big, and getting worse. Patching is the hardest single compliance requirement (**50%**), **63%** of organisations are a month or more late against a 14-day rule, and two-thirds of exploited vulnerabilities already have a patch. |
| **Money** | Compliance is the **#1** reason people spend on security, **70%**, first of nine. But nobody has ever shown a deadline turning into a purchase. |
| **Price** | We're compared against **zero**, not $8 — Intune is already in the bundle, Action1 is free to 200 endpoints. Doesn't matter as much as it sounds: price ranks **last of five**, security ranks **first**. |
| **Moat** | Gone. NinjaOne and Action1 both shipped the Intune integration in November 2025, no partnership, and they did it **two different ways**. |
| **Tech** | Nobody can do autonomous remediation yet — best independent scores are **13.8%**, all frontier models **under 50%**. Design bar is **0.70** reliability on one action. |
| **The play** | **Sell the proof, not the patching.** It's the only one of eight that survives, and the one thing it rests on — that proof moves buyers — has never been measured by anyone. |
| **What's blocked** | Almost everything, on small things. Three tests need owners (**1, 2, 5**), one needs a new question (**6**), one is waiting on price points that don't exist (**5**). |
| **Copy** | **Tanium's** confidence scores and ring deployment. **Atera's** per-technician pricing. |

---

## 1. Where we are

**Nothing here is a pass or a fail.** The reason to write assumptions down is to find out which ones are wrong, and several of these are. That's the round working, not the round going badly.

### Testing progress since 09 September

- **Stronger evidence:** generalist-heavy IT teams; patching and vulnerability needs; compliance and resilience pressure; simplicity and reduced operational effort; governed AI requirements.
- **Challenging evidence:** some IT departments buy one problem at a time rather than entering through a broad platform; Microsoft-centric estates may favour coexistence or an integrated add-on.
- **Still largely unproven:** willingness to pay; repeatable switch trigger; Intune displacement versus coexistence; technical reliability of cross-signal AI judgement; durable competitive advantage.

### What got stronger

**The problem itself.** It shows up everywhere we sell, and North America is both the sharpest version of it and the biggest market.

- **29%** of IBM X-Force's incidents were in North America — most-attacked region for the first time in six years, up from 24%.
- **USD 7.00B of USD 17.76B** global endpoint security spend is North American; the US alone is **USD 5.28B**, and roughly **40%** of endpoint management.
- **34%** of UK businesses have a policy to patch inside two weeks. Half of EU organisations call patching the hardest rule to comply with; a fifth take over three months.
- **70%** name compliance their top reason for security spend at all. Insurance is last of nine, at 5%.
- **40%** of incidents now start with an unpatched vulnerability.

Treat the UK and EU figures as the best-documented picture of a problem we see in every market — not as a description of our market.

### What got weaker

- **The moat.** NinjaOne announced a [Microsoft Intune integration](https://www.ninjaone.com/press/microsoft-intune-integration/) on 18 November 2025, and Action1 announced [an equivalent](https://www.action1.com/company-news/action1-extends-microsoft-intune-with-unified-cross-platform-patching-and-risk-based-vulnerability-management-at-microsoft-ignite-2025/) at Microsoft Ignite the same month. Our own test was going to ask whether either could do it inside twelve months with a partner. They needed neither. The useful learning isn't that we were wrong — it's that the defensible thing is probably speed and proof rather than the feature.

- **The order of the wedge.** Knowing what's on the estate is the [fastest-growing part of endpoint security at 12.8% a year](https://www.marketsandmarkets.com/Market-Reports/TableOfContent/endpoint-security-market-29081235.html), while fixing vulnerabilities is the [slowest thing we found at 6.38%](https://www.mordorintelligence.com/industry-reports/security-and-vulnerability-management-market), and patching sits [between them at about 8.3%](https://www.imarcgroup.com/patch-management-market). We'd been leading with remediation. On growth, that's upside down.

- **The price we're compared against.** Not eight dollars a user. Zero. [Intune](https://www.microsoft.com/en-us/security/microsoft-intune-pricing) is already inside the bundle these companies buy for email and Office, and [from 1 July 2026](https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates) that bundle absorbed more of it. [Action1 is free forever up to 200 endpoints](https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/). Every pricing conversation now starts from nothing extra.

- **The compliance deadline, as a North American argument.** This is new since 23 September and it matters, because the play we rate best rests on it. There is no North American statutory patching deadline that reaches a company of our target size. New York DFS rewrote its vulnerability-management section in 2023, retitled it, and still says ["timely remediate vulnerabilities, giving priority to vulnerabilities based on the risk they pose"](https://www.dfs.ny.gov/system/files/documents/2023/10/rf_fs_2amend23NYCRR500_text_20231101.pdf) — no day count, and financial services only. Massachusetts binds a 150-person company with no sector limit and no size floor, names operating-system patches explicitly, and says "reasonably up-to-date." Canada's [baseline controls for organisations under 499 staff](https://www.cyber.gc.ca/en/guidance/baseline-cyber-security-controls-small-and-medium-organizations) set no timeframe at all, and CyberSecure Canada certifies against that same document. HIPAA proposed 15 and 30 days in January 2025 and it is still not law, with final action now slipped to July 2027.

### What we're leaning toward

Not settled, and worth writing down anyway. Each one says what's behind it and how much weight it can carry.

- **There's a market here, but the part we can harvest is narrower than I expected.**
  *Behind it:* the money sits with big companies — large enterprises are [71.6% of endpoint management revenue](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) and [71.1% of security and vulnerability revenue](https://www.mordorintelligence.com/industry-reports/security-and-vulnerability-management-market) — and we've deliberately aimed below that. The fast growth rates quoted for smaller firms are percentages on a small base. Nobody publishes a figure for the slice we actually want: there's no size for patching or vulnerability work counted at the endpoint only, and none for the software category Gartner has just named. Published UEM market sizes for the same year run from $7.04B to $17.15B, a 2.4x spread, which tells you the category boundary isn't stable enough to carry a number into a room.
  *Weight:* **strong on the concentration, unmeasurable on the slice.** The one number that would settle it is ours — how many endpoints a typical customer in our band runs. That's Assumption 9, and it's a day of work.

- **We're stronger than we look where we're already known, and weaker than we look everywhere else.**
  *Behind it:* [Canalys](https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys) puts us at 11.4% against NinjaOne at 9.4% of the service-provider software market, behind ConnectWise and Kaseya. Gartner, covering a different market, puts us in its smallest group and lists only commercial weaknesses.
  *Weight:* **directional.** The Canalys figures come from one article that blocks automated reading, and the period looks like a single quarter of 2024 rather than a year. Worth someone opening by hand, because if it holds it's the most encouraging number we have.

- **The opening is a timing one, not a feature one.**
  *Behind it:* Gartner names our innovation as a strength — monitoring, threat detection, forecasting, automated fixing, agent frameworks, generative scripting — and names NinjaOne's generative AI as limited and roadmap-dependent, which it treats as a long-term risk to them.
  *Weight:* **good, and perishable.** A company that raised at a five billion dollar valuation in February 2025 will close that gap. The lead is real and it's dated.

- **In North America the forcing function is probably the insurer and the customer, not the regulator.**
  *Behind it:* there is an actual document rather than commentary — a public [US broker application form](https://www.crcgroup.com/Portals/34/Apps/DaveFinneran/App-Cyber.pdf) with a signed yes/no box reading "Apply security patches within 30 days of release?", alongside centrally-monitored EDR and a vulnerability assessment within 18 months. And on the Canadian side, the [CIRA survey](https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf) is the closest published sample to our ICP we have found anywhere — n=505, private sector capped at 999 employees — with 84% carrying cyber cover and **39 to 40% reporting their insurer demanded new proof of controls in the past year**, a figure that has held between 39% and 42% every year since 2022. The same survey has customer and buyer security requirements becoming more common for **68%** of organisations, up from 56% in 2021, with "less common" never above 2% in five years.
  *Weight:* **good on direction, and it inverts our EU reading.** ENISA puts insurance last of nine drivers at 5%; the North American evidence points the other way. Two caveats worth stating in the same breath: the broker form is a broker's, not a carrier's, and the CIRA contract question asks about security requirements generally rather than patching specifically.

### How we learned it

The rule is to run the cheapest test that can change your mind. This round that was secondary research, competitor checking, and sketching the propositions against three frameworks — jobs to be done, ten types of innovation, and competitive analysis. Days, not quarters. It moved four assumptions, retired one, and added a fifth leaning. The tests named in the deck are the next and more expensive round.

---

## 2. Back to the six

The deck named six risks on 09 September and set a test against each. That's where this started and it's what people have in their heads, so this table stays in the deck's order and uses the deck's own wording. The test column is the deck's test with this round's amendments folded in. **Owners are blank on purpose** — those are decisions, not findings, and nobody's name goes against a test they haven't agreed to.

| # | The assumption, as the deck wrote it | What the secondary did to it | The test, as amended | Test with | Owner |
|---|---|---|---|---|---|
| **1 · Value** | Connecting categories surfaces real, unrealized value | **Backed the deck's own doubt rather than the assumption.** Buyers arrive shopping for one problem, and the growth rates invert our ordering. The one thing that would settle it — whether buyers set out to buy a point solution or a suite — has never been published by anyone, so secondary cannot answer it. | 5–10 interviews against the mocked combined view. **New: split the sample by change-control strictness.** | Existing customers in the band: in-house IT, 100–299 staff, under ~1,000 machines. Half with a formal change-approval process, half without. Segment the install base first. | |
| **2 · Demand** | This product vision will easily tie to business outcomes | **Found a trigger, and it isn't the one the deck feared.** Efficiency doesn't pull — nobody buys less effort. Compliance is the top security spending driver at 70%, first of nine. But no source anywhere ties a compliance deadline to a rise in purchasing around that date, and the North American version of the duty turns out not to be statutory. | Two steps. First ask sales ops whether win/loss data exists at all. Only if it doesn't, commission the qualitative pricing study. **New: test the compliance trigger, not the efficiency claim.** | Step one is internal. Step two: in-house IT buyers in the band who changed tools in the last twelve months, so there's a real switch to describe. | |
| **3 · Build** | We can build an AI that does this reliably | **Unchanged, and now externally grounded with a number to design against.** "Harder than anything we have proved so far" is right and measurable: agents resolve 13.8% of site-reliability scenarios and 25.2% of compliance ones, every frontier model is under 50% on the independent re-run, and Microsoft's own best is 59.32%. | Fix the pre-flight and success-state bugs already scoped in NZO-SEV, re-measure, build the first lightweight prototype. **New: measure against 0.70 reliability on one bounded action** before attempting three-signal correlation. | No participants. Engineering, against the threshold. | |
| **4 · Trust** | The AI will be reliable enough for people to trust it out of the gate | **The instinct was right and the test needs a second instrument.** "Full autonomy is probably the wrong target" is confirmed by the market — Microsoft shipped read-only, Tanium requires sign-off. But a gate can become a rubber stamp, and self-reported trust has been shown to move independently of actual reliance. Also drop "out of the gate"; wrong bar. | Ship the autonomy-level / approval toggle, then re-run the reboot usability test. **New: add a behavioural measure of reliance alongside the 2.5/5**, and record whether the gate gets read or rubber-stamped. | The same technician cohort as the original reboot test, so the 2.5/5 stays comparable. People who run reboots and patching, not managers describing it. | |
| **5 · Commercial** | We have a real, unmet business need that translates into commercial value | **Right on all three clauses, and now we can be specific about each.** Need: credible and evidenced. Pricing: worse than assumed — the comparison price is zero, not $8. Cyber-insurance savings: still unvalidated and now known to be contradictory between the EU and North America. Incident-cost savings: no independent controlled study of MTTR reduction exists at all. | Blocked until Ecoverse has price points. Then apply the Cove and Adlumin attach-and-expand data to them. **New: run it against a free alternative, not a list price.** | Needs product and pricing to set the points first. Then budget holders in the band — who may not be the IT staff in tests 1 and 4, and finding that out is part of the test. | |
| **6 · Moat** | This product's advantage cannot be copied easily | **Overtaken by events, and the deck's hedge was the accurate half.** Both competitors shipped the Intune integration inside a month of each other, without a partnership, well inside twelve months. And differently: NinjaOne keeps control and treats Intune as a data feed, Action1 sits inside Intune and extends it. Two threats, not one. | **Retire as written.** Replace with: what can they not copy, and how long does our lead last? | No participants. Competitive desk research, plus somebody opening the Canalys article by hand. | |

### What this does to the deck's "what we need"

The test slide asked for owners and dates against tests 1, 2 and 6, on the grounds that 3 and 4 already had work in flight. That reading has changed in three places.

- **Test 6 doesn't need an owner, it needs a new question.** It has been answered, and the answer is no.
- **Test 5 is blocked in a way the slide didn't flag.** It says to apply the Cove and Adlumin data to "Ecoverse's actual price points." There are no Ecoverse price points.
- **Test 2's first step is smaller than it looks.** Before commissioning a pricing study, someone needs to find out whether win/loss data exists. That's a question, not a project.

So the three that need owners and dates are now **1, 2 and 5**. Tests 3 and 4 can still start, with the amendments above.

### Four more that were already being carried

Not on either slide, and running without being written down: who this is actually for, whether we can ship onboarding good enough for a trial, which unit the target is expressed in, and whether we can reach and convince this buyer at all. The last is the weakness Gartner names about us and the deck doesn't mention it. They're numbered 7 to 10 below, and on risk they sit higher than most of the six.

---

## 3. The assumptions in detail

Ordered most to least risky, with what we learned this round inside each one. The `#` keeps the deck numbering from slides 5–6 so the crosswalk still works.

| Risk | # | The assumption as written | How it's evolving |
|---|---|---|---|
| **1** | 5 | We have a real, unmet business need that translates into commercial value | Unchanged. Sharpen the test: it has to run against a free alternative, not a list price. |
| **2** | 10 | We can reach this buyer, convince them, and prove it | New. On this ordering it belongs near the top, and the deck doesn't have it at all. |
| **3** | 8 | We can ship onboarding good enough to carry a self-serve trial in Phase 1 | New. Was already being carried, just never written down. |
| **4** | 6 | This product's advantage cannot be copied easily | **Retire as written.** Replace with: *can we build and sell an advantage faster than it gets copied?* |
| **5** | 2 | This product vision will easily tie to business outcomes | **Drop "easily."** Replace with: *a compliance duty is a repeatable reason to buy* — and in North America that duty is an insurer's or a customer's, not a regulator's. |
| **6** | 3 | We can build an AI that does this reliably | Unchanged, and now with a threshold: 0.70 reliability on one action. |
| **7** | 1 | Connecting categories surfaces real, unrealized value | **Split it in two:** *a narrow entry point earns adoption, and the joined-up view earns expansion later.* |
| **8** | 4 | The AI will be reliable enough for people to trust it out of the gate | **Drop "out of the gate"** — wrong bar. Replace with: *people will trust it when the controls and the proof are right.* |
| **9** | 7 | We know who this is for — internal IT, not the MSP proposition repositioned | New, and it holds the sharpest open question we have. |
| **10** | 9 | We know the ICP unit — headcount converts to endpoints for our band | New. Cheapest thing here to settle, and it unblocks the sizing. |

---

### Risk 1 · Assumption 5: We have a real, unmet business need that translates into commercial value

**Testing progress:** Testing in progress. Need and problem evidence are stronger; willingness to pay, pricing and margin remain unproven.

#### What we learned this round

The need is looking credible. Interviewees keep naming the same four jobs — patching, vulnerability work, knowing what's on the estate, and compliance — and the secondary data backs that, though the cleanest numbers are UK and EU because those regulators publish and survey: only 34% of UK firms have a policy to patch inside two weeks, and 70% of EU organisations name compliance their top reason for spending on security. North America is the largest market in every segment we looked at and the most-attacked region in IBM's 2026 data, so the problem isn't smaller there — it's less surveyed.

The commercial case is trickier. Our nearest competitors charge roughly **$1 to $3.75 per machine per month** — [Automox $1](https://www.automox.com/pricing), NinjaOne $1.50 to $3.75, ManageEngine around $1 to $1.75 — and [Action1 gives it away free up to 200 machines](https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/). [Microsoft Intune](https://www.microsoft.com/en-us/security/microsoft-intune-pricing) costs $8 a user on paper but arrives inside a bundle these companies already buy for email and Office, so in practice it's nothing extra. Real problem, no obvious way to charge for it.

Buyers also don't decide on price: it ranks **last of five** shortlisting factors at 47%, while security detail ranks **first at 58%**, and security or compliance gaps eliminate **55%** of shortlisted vendors — [G2, n=3,385](https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf). Median time to prove a return is nearly nine months.

One thing we can now say that we couldn't in September: there is no willingness-to-pay study for this category anywhere. Not paywalled — absent. No conjoint, no price-sensitivity work, nothing for endpoint management, governed AI remediation, or the connected bundle. The deck was right and nothing external will fix it.

#### Interview evidence update

- The interviews give stronger evidence for operational pain, compliance pressure and manual effort.
- No source reviewed provides direct willingness-to-pay, viable packaging or margin evidence for Pure Ecoverse.
- IT is treated as a cost centre, so value must be legible as avoided effort, reduced risk, compliance enablement or tool cost reduction.

#### What remains unproven

- Who owns budget and which budget line pays.
- What minimum package is credible and what price is acceptable.
- Whether the economics work for the initial estate size and support model.

**What would change our mind:** Willingness to pay and margin, before "start cheap, expand later".

---

### Risk 2 · Assumption 10: We can reach this buyer, convince them, and prove it

**Testing progress:** New this round. This is the weakness Gartner names and the deck does not.

#### What we learned this round

Gartner's write-up on us is a useful mirror. It calls our innovation a strength and names the specifics: AI for monitoring, threat detection, forecasting and automated fixing. Then every weakness it lists is commercial — buyers outside our own channel don't know who we are, we have very few published customer stories, and our sales approach isn't tailored to any industry or job title. Nothing about the product. That's a different problem from the one the deck is trying to solve.

Gartner also holds a forecast showing this kind of automation going mainstream by 2029. Quote it internally from our licensed copy and its document number, never from the marketing pages that have repeated it without crediting anyone.

We do have share where we're already known. [Canalys](https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys) puts us ahead of NinjaOne in the service-provider software market, which the Gartner ranking doesn't cover. Directional only — see the caveats in Sources.

#### What remains unproven

- Whether an in-house IT sales motion can be built on a team shaped for the service-provider channel.
- How many published customer stories are enough, and how fast we could produce any.
- Whether a compliance message reaches this buyer at all, or whether "less work" is the one that lands.

#### Test to add — new this round, so there's no deck test

Two cheap things. Put the two versions of the differentiator in front of people in the band and make them pick one, then ask which they'd forward to a colleague and why. And count internally: how many named customer stories in this band could we publish within ninety days. The second is an audit, and it caps everything else.

**What would change our mind:** One version wins clearly and for the reason we expect rather than on tone, and the story count supports a launch claim. If both land the same, neither is distinctive. If the count is near zero, then proof is the critical path and building more product is not.

---

### Risk 3 · Assumption 8: We can ship an onboarding experience good enough to carry a self-serve trial in Phase 1

**Testing progress:** New this round. Nothing we reviewed suggests we can, and the Phase 1 gate assumes a working trial.

#### What we learned this round

Nine of the eleven trial and onboarding items on the deck's own delivery slide are marked Not started — trial sign-up, the agent install flow, self-serve purchase and Intune-based deployment among them. Meanwhile ease of use is the thing interviewees mention most; one described a competitor as easier to use and much shinier than what they had. So the thing we're counting on to set us apart is the thing least built.

Worth adding from the buying research: 50% of buyers call a trial the decisive factor in the purchase against 35% for a sales presentation, and poor trial experience knocks out 50% of shortlisted vendors. A weak trial isn't a soft failure, it's an elimination.

#### What remains unproven

- How long first setup is allowed to take, and whether anyone has set a target.
- Whether unattended setup is possible at all when step one is installing software across machines we don't yet manage.
- Whether the Phase 1 trial is a commitment to ship or a decision point. The deck reads both ways.

#### Test to add — new this round, so there's no deck test

Set a target for time to first useful result, then run five sessions where people set it up with no help at all — no call, no onboarding email, no screen share. Record where they stop, not whether they liked it.

**What would change our mind:** Most people get to a useful result unaided, and where they stall is a design problem rather than something missing. If they can't install it unaided, then self-serve trial isn't the Phase 1 route and the gate should move rather than the target.

---

### Risk 4 · Assumption 6: This product's advantage cannot be copied easily

**Testing progress:** Retire as written. The question has been answered by events.

**Suggested replacement wording:** *Can we build and sell an advantage faster than it gets copied?*

#### What we learned this round

It has already happened. NinjaOne announced a [Microsoft Intune integration](https://www.ninjaone.com/press/microsoft-intune-integration/) on 18 November 2025 and Action1 announced [an equivalent](https://www.action1.com/company-news/action1-extends-microsoft-intune-with-unified-cross-platform-patching-and-risk-based-vulnerability-management-at-microsoft-ignite-2025/) at Microsoft Ignite the same month. Our test was going to ask whether either of them could do it inside twelve months with a partner. They needed neither.

They did it differently, which is the interesting part: **NinjaOne keeps control and treats Intune as a data feed, while Action1 sits inside Intune and extends it.** Those are two different threats, not one.

The category now has a name we don't own either. Gartner calls it autonomous endpoint management, and Action1 already uses the term in its own positioning. No research publisher has sized it.

#### Interview evidence update

- Competitors already validate patching, automation, simplicity and endpoint operations.
- Intune-integrated specialists can solve painful gaps without replacing Microsoft.
- Potential differentiators remain deeper endpoint intelligence, governed action, proof of outcome, usability and the ability to serve IT and MSP operating models.

#### What remains unproven

- Which advantage customers notice and value in the first buying decision.
- Whether competitors can reproduce the outcome through integration, partnership or packaging.
- Whether N-able endpoint data produces a demonstrably better result rather than a stronger internal asset story. **Note the deck argues both sides of this:** slide 2 treats rich endpoint data as core IP while slide 27 lists it as something to spike into. Both can't be true.

**Rewrite the test:** they already did it, without a partnership. The question worth asking now is what they *can't* copy, and how long our lead on it actually lasts.

---

### Risk 5 · Assumption 2: This product vision will easily tie to business outcomes

**Testing progress:** Testing in progress. Business outcomes are recurring, but a repeatable switch trigger and commercial pull are not yet proven.

**Suggested replacement wording:** drop "easily" — *a compliance duty is a repeatable reason to buy*, and in North America that duty comes from an insurer or a customer rather than a regulator.

#### What we learned this round

Compliance keeps coming up as the reason to spend, and 70% of EU organisations name it their top security investment driver. The strongest version is the UK's [Cyber Essentials](https://www.ncsc.gov.uk/files/cyber-essentials-requirements-for-it-infrastructure-v3-2.pdf), which puts a hard 14-day deadline on serious patches.

**The North American picture is now mapped, and it changed the shape of this assumption rather than confirming it.** There is no statutory patching deadline in the US or Canada that reaches a company of our target size. What exists instead:

- **PCI DSS 6.3.3** is the one live hard clock that can attach to a 150-person company — critical or high patches within one month of release — and it attaches on the basis of what the company *does*, taking card payments, rather than its sector or size. It's a card-brand contract, not law.
- **State law names no deadlines.** [New York DFS](https://www.dfs.ny.gov/system/files/documents/2023/10/rf_fs_2amend23NYCRR500_text_20231101.pdf) rewrote and retitled its vulnerability-management section in 2023 and chose "timely remediate … giving priority … based on the risk they pose." Massachusetts 201 CMR 17.04 reaches any company holding a Massachusetts resident's personal information, with no sector limit and no size floor, names operating-system security patches, and says "reasonably up-to-date."
- **Canada has no deadline either.** The [CCCS baseline controls](https://www.cyber.gc.ca/en/guidance/baseline-cyber-security-controls-small-and-medium-organizations), scoped to organisations under 499 staff, say enable automatic patching or establish a patch management solution, with no timeframe. CyberSecure Canada certifies against that same document, and we found no procurement mandate requiring it — unlike Cyber Essentials, which is mandatory for some UK government contracts.
- **The insurer and the customer are the forcing functions.** A public [US broker application](https://www.crcgroup.com/Portals/34/Apps/DaveFinneran/App-Cyber.pdf) asks, as a signed yes/no representation, "Apply security patches within 30 days of release?" And the [CIRA survey](https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf) of Canadian organisations — private sector capped at 999 employees, so close to our band — has 84% carrying cyber cover, 39 to 40% saying their insurer demanded new proof of controls in the past year, and customer security requirements becoming more common for 68%, up from 56% in 2021.

Two honest limits on that. **No source anywhere ties a compliance deadline to a rise in tool purchasing around that date** — we can show the pressure and not the conversion. And **there is no US or Canadian survey methodologically comparable to ENISA's 70%**, so the EU-to-North-America comparison can't be made on like-for-like data. That absence is the finding.

One trap to guard, because it's specific and it will bite. CISA's BOD 22-01, the "two weeks for known exploited vulnerabilities" rule, was **revoked on 10 June 2026** and replaced by BOD 26-04. Large amounts of vendor content still cite it as live, and 14 days is also the genuine Cyber Essentials figure — anyone skimming both will merge a live UK requirement with a revoked US one.

#### Interview evidence update

- Reported triggers include difficult or noisy tools, high cost, compliance requirements, operational effort and tool sprawl.
- Microsoft-centric customers may be difficult to displace; an integrated add-on may be more plausible than a UEM replacement.
- Customers already have tools, so Pure Ecoverse must displace, complement or consolidate something specific.

#### What remains unproven

- Which trigger is common enough to support repeatable acquisition.
- Whether the first motion is replacement, coexistence or attach to Intune.
- Which incumbent, budget line and buying event are involved.
- Whether an insurance or customer-questionnaire requirement produces a purchase the way a statutory deadline is assumed to.

**What would change our mind:** A named, repeatable switch trigger, with preliminary proof of willingness to pay and secondary backing of problem magnitude.

---

### Risk 6 · Assumption 3: We can build an AI that does this reliably

**Testing progress:** Not materially tested by the interviews. The existing N-zo reliability work and lightweight engineering prototype remain the relevant tests — now with a target to hit.

#### What we learned this round

Interviews still can't move this, but the outside world turns out to have measured it. On [ITBench](https://proceedings.mlr.press/v267/jha25a.html) — 94 real-world IT automation scenarios, peer-reviewed, from IBM Research and UIUC — agents resolved **13.8%** of site-reliability scenarios, **25.2%** of compliance and security ones, and **0%** of FinOps. On [ITBench-AA](https://artificialanalysis.ai/articles/itbench-aa-launch), an independent re-implementation scoring average precision at full recall, **every frontier model is under 50%**. Microsoft's own [AIOpsLab](https://arxiv.org/pdf/2501.06706) best result is 59.32% overall and 54.55% on mitigation. Two named failure modes are worth knowing: models submit more entities than there are actual root causes, and longer investigations don't produce better accuracy.

And there is now a threshold to design against. A [synthesis of 20 studies](https://www.tandfonline.com/doi/abs/10.1080/14639220500370105) puts the crossover at about **0.70 reliability** — below that, unreliable automation leaves you worse off than no automation, and the effect is stronger under high workload. That's from diagnostic automation in lab tasks rather than action-taking automation in enterprise IT, so treat the transfer as an assumption. It's still the only number in the corpus that works as an acceptance bar.

#### Interview evidence update

- The current evidence values automation when it removes concrete effort, such as patch remediation, software deployment or configuration work.
- The original three-signal judgement remains a larger technical leap than the bounded jobs now emerging from interviews.
- Progress, completion, accurate state and auditability remain essential.

#### What remains unproven

- Whether one bounded workflow can meet agreed reliability and observability thresholds.
- Whether endpoint data is complete and current enough to support the selected job.
- Whether failure modes are recoverable and understandable.

**What would change our mind:** Reliability holds on one action before we try three-signal correlation. Build lightweight prototype of concept for tech test in parallel.

---

### Risk 7 · Assumption 1: Connecting categories surfaces real, unrealized value

**Testing progress:** Testing in progress. Current interviews provide mixed evidence; direct evaluation of the mocked combined view is still outstanding.

**Suggested replacement wording — split it in two:** *a narrow entry point earns adoption, and the joined-up view earns expansion later.*

#### What we learned this round

Mixed, and now pointing the other way. Interviewees say they arrive shopping for one problem; one put it as replacing a screwdriver rather than shopping for a workshop. And on growth the market disagrees with our ordering: finding and tracking what's on the estate is growing at **12.8%** a year, while fixing vulnerabilities is the slowest thing we found at **6.38%**, with patching between them at about **8.3%**. We've been leading with the slow one.

The thing that would settle it isn't available. **No published research exists on whether IT buyers enter a platform purchase point-solution-first or suite-first** — not from Gartner, Forrester, TrustRadius or G2. The available buying research answers a different question, how buyers research and shortlist, and the two should not be substituted for each other. Forrester's endpoint-management evaluation does name "the ability to unify IT and security operations on a single platform" as a criterion, which is the closest an analyst house comes to asserting that connection is the axis of competition — but a criterion is not evidence of realised buyer value. This one has to be answered by our own interviews.

#### Interview evidence update

- Interview evidence repeatedly identifies patching, vulnerability management, inventory/intelligence, compliance, remote access, simplicity and reduced operational effort as meaningful jobs.
- Some evidence supports consolidation, but other evidence says IT departments often enter looking to solve one problem at a time.
- The viable proposition may be a broad product platform sold through a narrow, outcome-led entry point.

#### What remains unproven

- Which initial job is valuable and urgent enough to trigger trial or purchase.
- Whether connecting patch, vulnerability, configuration, inventory and compliance produces additional value beyond a strong point solution.
- Whether expansion into adjacent jobs occurs after the first wedge is adopted.

**What would change our mind:** They would act on it — or already assemble it manually elsewhere.

---

### Risk 8 · Assumption 4: The AI will be reliable enough for people to trust it out of the gate

**Testing progress:** Testing in progress. Interviews clarify the trust conditions, but they do not prove that the proposed controls move the existing baseline.

**Suggested replacement wording:** drop "out of the gate" — wrong bar. *People will trust it when the controls and the proof are right.*

#### What we learned this round

The trust conditions came out clearly: approvals, accuracy, an audit trail, and proof the action actually finished. The wider market has already settled the autonomy argument. [Microsoft's Vulnerability Remediation Agent](https://learn.microsoft.com/en-us/intune/agents/vulnerability-remediation-agent) is in public preview, and its agentic identity is granted Read Only Operator — it is not technically capable of changing anything. It collects data, prioritises by CVSS and exposure, and writes instructions for a human to apply. Microsoft's own documentation says an admin must start it manually and that **once started there is no option to stop or pause it**, and that admins can see its data outside their assigned roles and scope. Tanium requires sign-off on every action. Our own deck already says full autonomy is probably the wrong target. So the question isn't whether people trust it on day one — it's which controls earn the trust.

Two findings complicate the deck's plan to ship the toggle and watch the 2.5/5 move.

**A gate is a design question, not a mitigation.** The largest field measurement of confirmation prompts ever run — [over 25 million real browser warnings](https://devd.me/papers/alice-in-warningland.pdf) — found click-through from about 10% on Firefox malware warnings to **70.2%** on Chrome SSL warnings. Same mechanism, different implementation, and one of them is ignored seven times in ten. Separately, a [meta-analysis of 18 experiments](https://journals.sagepub.com/doi/10.1177/0018720813501549) shows keeping the human in the loop preserves failure-state performance and situation awareness at a real cost to routine efficiency. So gates buy something measurable, and they aren't free.

**The 2.5/5 may not be measuring the thing we care about.** Self-reported trust and behavioural reliance have been shown to move through distinct mechanisms — in one study stated trust didn't differ between conditions while actual dependence tracked reliability. And interventions that force engagement work while being rated worse by the people using them. The score going up would not prove adoption; it staying put would not prove failure. The test needs a behavioural measure alongside the self-report.

**And one uncomfortable gap.** Of the four trust conditions, approvals and accuracy have measured evidence behind them. Rollback has one on-domain data point, from a vendor that sells rollback. **Audit trails and proof-of-completion have nothing measured at all** — no study anywhere tests whether either changes trust or adoption. Governance frameworks require logging, so a buyer will ask for it in an RFP, but that is requirement-side rather than evidence-side. This matters because proof is what the strongest play sells.

#### Interview evidence update

- Interview evidence explicitly raises trust, governance, accuracy, auditability and data handling.
- Participants describe value in AI that monitors, prioritises or executes, but with constrained scope and approved knowledge/processes.
- Simple on/off automation is likely more appropriate for early customers than asking them to create complex agentic workflows.

#### What remains unproven

- Which actions can run automatically, which require approval and which are unacceptable.
- What explanation, evidence and recovery controls are needed at each risk level.
- Whether governed automation improves adoption versus deterministic UX alone.
- Whether proof-of-completion moves anyone at all.

**What would change our mind:** The 2.5/5 baseline moves once approval gates and completion states exist, **and** the behavioural measure moves with it. May also consider brand study of AI/N-able trust here.

---

### Risk 9 · Assumption 7: We know who this is for — internal IT, not the MSP proposition repositioned

**Testing progress:** New this round. Named properly in the deck for the first time, and not yet tested.

#### What we learned this round

The deck names the target properly for the first time: in-house IT departments in companies of 100 to 299 staff running under about 1,000 machines. Two things complicate it. In-house IT buyers actively dislike anything that looks like it was built for service providers, down to the product name. And Gartner warns that companies with strict change-approval processes get the least value from automation — which describes the compliance-driven companies we most want to sell to.

One encouraging signal from the Canadian data, in the right size band: organisations managing cybersecurity **internally rose from 52% to 61% in a single year**, while outsourcing to an IT company fell from 38% to 32%. Multi-select, so not shares of a whole, and Canada only. But it points the same direction as the in-house thesis.

#### What remains unproven

- Whether this is a new group of customers or a re-description of the Classic N-sight base we already have. Different economics, different tests.
- Whether the compliance message attracts the customer least suited to the product. **This is the sharpest open question we have.**
- Whether in-house IT and service providers can share one product, or split at setup and language.
- **Which geographies Phase 1 actually covers.** The product is meant to be North America or global. We now know the duty differs in kind rather than in degree: the UK has a 14-day statutory deadline, and North America has PCI DSS for card-takers plus insurer and customer requirements for everyone else. Those are different sells to different people. And DACH may be an exclusion rather than a market — one interviewee was clear that on-premises hosting, local control and customer-held encryption keys are requirements there, which a cloud-native self-serve product doesn't meet.

#### Test to add — new this round, so there's no deck test

Segment the install base against the stated band first. Then run the Assumption 1 concept test with two groups: half with a formal change-approval process, half without. Compare which concept each group picks and how much automation they'll accept.

**What would change our mind:** Both groups pick the same concept and differ only on how much automation they allow — that means one product with a setting. If they pick differently, or the strict group refuses automation at any level, then compliance is a message that brings in the wrong customer and the target needs restating.

---

### Risk 10 · Assumption 9: We know the ICP unit — headcount converts to endpoints for our band

**Testing progress:** New this round. The cheapest thing here to settle, and still unsettled.

#### What we learned this round

The deck describes the target in three different units, and a comment on one slide records that staff count versus machine count is still being confirmed. There's no free published benchmark for machines per company: [Computer Economics](https://www.computereconomics.com/it-staffing-ratios/) keeps theirs behind a paywall and publishes no figures at all on its public page, and every free version of that number traces back to it through aggregators that disagree with each other by a factor of two. Every ratio in circulation is staff-to-employee or staff-to-user rather than staff-to-endpoint, and two of the publishers are NinjaOne and Atera — competitors selling products whose whole pitch is raising the ratio.

One research firm does hold it: [Mordor](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) lists average devices per employee as an input to its published method. Our own install base is better, because those are our customers rather than a global average.

#### What remains unproven

- The ratio for our band, in our countries.
- Whether it varies enough by country or industry to change who we target.
- Whether the staff-count band and the machine-count band describe the same companies.

#### Test to add — new this round, so there's no deck test

Query the install base. Machines per customer for everyone inside the band, broken out by region and industry, and return the spread rather than the average. This is an internal data request, not a study, and it unblocks both the market sizing and the pricing test.

**What would change our mind:** The spread is tight enough that one definition covers the band. If it splits in two, or varies by country, then we're aiming at two groups under one label and the pricing test needs two packages.

---

## 4. What we could do about it

Eight options, with where the thinking landed on each. Three of them won't work and are here anyway, because ruling something out is a learning and it saves the next round.

**One note on the analyst column.** Analysts score two things separately: how good your product and plan look, and how well you actually sell, support and get known. Almost everything on this list only moves the first one. Only the go-to-market push moves the second, and the second is what gets anyone into the top group. That's a reading of how the scoring works, not something Gartner has stated.

**And there are no revenue figures here on purpose.** The software category Gartner has just named is sized by nobody, no publisher counts patching or vulnerability work at the endpoint only, and we don't yet know how many endpoints a typical customer in our band has. A number in this table would be one I picked rather than one I found, and it wouldn't survive the first challenge in the room.

| What we could do | Where we landed | How far analysts could move us | Where the money would come from, and can we size it | How long |
|---|---|---|---|---|
| Undercut NinjaOne on price and simplicity | **Will not work** | Nowhere | It wouldn't. Buyers rank price last of five things they shortlist on. Action1 is already free to 200 endpoints. This is a race to a floor we're standing on. | — |
| Lead on patching | **Weak** | Better product score only | Patching grows about 8.3% a year and is the most-copied thing in the category. | 6–9 months (est.) |
| Sell "less effort" | **Not a proposition** | Nowhere | Nobody buys less effort. They buy a specific outcome that produces it. Keep it as language, not as the offer. | — |
| Build the full go-to-market push: industry-specific selling, customer stories, awareness | **Right answer, wrong timeframe** | The only route to the top group | Biggest of anything here, and we can't size it until we know endpoints per customer. | 2–3 years (est.) |
| Get to supervised automation in the mid-market before NinjaOne closes its AI gap | **The only one with a closing window** | Strong product score | Price per endpoint times endpoints in our band. Both numbers are unknown, so no figure is given here. | 12–18 months (est.). The clock is NinjaOne's, not ours. |
| Sell the compliance evidence itself — the proof the work was done | **Best evidence, least to build** | Better product score | It attaches to a duty the buyer already has and is already spending against: compliance is the top security spending driver at 70% across the EU. **The duty differs by market** — a statutory 14-day deadline in the UK, PCI DSS for card-takers in North America, and an insurer's or customer's requirement for everyone else. | 3–6 months (est.) |
| Know the whole estate from day one | **Best long-term defence, wrong purchase rhythm** | Best story we genuinely own | Fastest-growing part of endpoint security at 12.8%. But an inventory gets bought once, not renewed on use. | Blocked until we settle what endpoint data we actually have |
| Charge per technician rather than per endpoint, as Atera does | **Untested, cheapest to test** | Gartner singles out Atera's pricing as unique and a strength | Changes the economics rather than the volume. Needs our own cost base, which is internal and knowable. | A pricing decision, not a build |

### The one play that survives

**Sell the proof, not the patching.** Close a named compliance duty on its own, inside rules the customer sets, and hand them the evidence it was done — dated, per machine, exportable, good enough to put in front of an auditor, an insurer, or a customer running a vendor assessment.

Six reasons it holds.

**The duty is real and someone else wrote it.** Cyber Essentials has put a 14-day deadline on critical patches since April 2025, PCI DSS 6.3.3 puts critical and high patches inside one month for anyone taking card payments, and when ENISA asked which NIS2 requirement was hardest, vulnerability and patch management came first at 50%. We're attaching to an obligation, not creating demand.

**The buyer is already spending for this reason.** Compliance is the top security investment driver at 70%, first of nine and well ahead of proactive risk reduction at 42%. Asked what they'll do next, implementing or upgrading security tools came first at 47%.

**The gap between the duty and reality is enormous and documented.** 63% of organisations take a month or more to patch critical systems and 28% take over three months. Only 34% of UK firms have a 14-day policy at all. Two-thirds of vulnerabilities being exploited already have a patch available.

**It doesn't need the thing nobody can build.** This is the part worth pushing hardest in the room. Everyone's instinct is to sell autonomous remediation, and the benchmarks say nobody is close — 13.8% on site-reliability scenarios, every frontier model under 50% on the independent re-run, 59.32% as Microsoft's own best — while the research says more autonomy actively degrades failure-state performance and situation awareness. Supervised action plus reliable proof is buildable at today's reliability. Autonomy is not.

**The proof layer is unoccupied.** Microsoft governs nothing because its agent can't act. Tanium governs the action. Neither sells the evidence, and nobody else in the set does either.

**Price isn't the battleground, which matters because we would lose there.** We cannot beat zero. But price ranks last of five shortlisting factors at 47% while security detail ranks first at 58%, and security or compliance gaps eliminate 55% of vendors who reach a shortlist.

**Where it could break**, worst first.

1. **Nobody has measured whether proof moves anyone.** Approval gates have evidence. Accuracy has a threshold. Audit trails and completion confirmation have nothing measured anywhere. We'd be selling the one trust condition with no evidence behind it. That makes it the first thing to test, not a reason to drop it — and the concept test can carry the question.
2. **Nobody has shown a deadline produces a purchase.** No source ties a compliance date to a rise in buying around it. Cheapest thing to test against our own win/loss data, if any exists.
3. **The duty varies by market more than we assumed**, so the message has to as well. A UK statutory deadline, a card-brand contract, an insurer's application question and a customer's vendor assessment are four different conversations.
4. **The insurance leg reads opposite ways on either side of the Atlantic.** ENISA puts insurance last of nine at 5%; the Canadian data has 39 to 40% of insured organisations asked for new proof of controls in the past year. Both can be true — different questions, different populations — but nobody has reconciled them, and the DSIT instrument didn't offer patch cadence as an option at all.

### How we'd say it

> For internal IT teams of two to six people running a few hundred to about fifteen hundred similar machines, who have patching and inventory duties with deadlines they didn't set and nobody spare to do them, Ecoverse closes a named compliance duty on its own within rules you set, and hands you the proof it was done. Unlike Intune plus a separate tool, we treat the duty as the job rather than the machine, and we prove it was met.

Two versions of the last clause, for two different fights. Against Microsoft: **we treat the duty as the job.** Against NinjaOne: **we ship supervised automation now rather than promising it.** The second has a shelf life, which is the whole argument for moving.

### The vendor worth copying

**Tanium**, and specifically the governance mechanism rather than the product.

Everyone else either claims autonomy without publishing how it's controlled, or doesn't act at all. Tanium claims autonomous action and then publishes the controls that make it safe: **confidence scores** generated per deployment action from installation success rates *and* post-deployment performance baselines — CPU, memory, application crashes — rather than a static risk rating; **ring deployment** with configurable entry and exit criteria per ring, cited as 1% to 15% to 40% to all; and sign-off on every action.

Why copy it rather than admire it: this is the mechanism that makes supervised automation shippable at *today's* reliability. The literature says below about 0.70 reliability automation leaves you worse off than nothing, and the benchmarks say nobody is near that on multi-signal work. Confidence scoring plus rings is how you ship something useful anyway — the model doesn't have to be right everywhere, the system has to know where it has been right before and expand only there. It also generates exactly the artefact the play above sells: a per-machine, dated record of what was attempted and what actually completed.

Two caveats. Tanium is an enterprise product and this is an enterprise design, with ring criteria a 150-person company will never configure. And all of it comes from Tanium's own material, so it describes a design rather than proving the design works. Neither is a reason not to copy the pattern.

One other thing worth copying, a pricing model rather than a product: **Atera charges per technician with unlimited endpoints at a flat fee**, and Gartner calls that out as unique and a strength. It changes the economics rather than the volume, needs our own cost base rather than anyone's research, and sidesteps the per-endpoint race to zero. A decision, not a build.

---

## 5. Sources

Where something is behind a paywall, sponsored by a vendor, licensed, or unreachable, it says so here rather than hiding it. Full working files, including the market-sizing dossiers, the North American compliance dossiers (`secondary-G-` series) and the deck-to-document assumption register, are in this folder.

### The problem, and who says so

- **ENISA**, [NIS Investments 2025](https://www.enisa.europa.eu/publications/nis-investments-2025) — [full report PDF](https://www.enisa.europa.eu/sites/default/files/2026-02/NIS%20Investments%202025%20-%20Main%20report.pdf), 1,080 organisations in NIS2 sectors. Compliance the top spending driver at 70%, insurance last of nine at 5%; patching the hardest requirement at 50%; 63% take a month or more, 28% over three months; security spend a median 9% of IT budget and security staff down to 10.6% of IT headcount. One caveat: the answer options were all drawn from NIS2 requirements, so this is a closed list rather than free response.
- **DSIT**, [Cyber Security Breaches Survey 2025/2026](https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026) — 2,112 businesses, 30 Apr 2026. The 34% patching figure and breach rates by company size.
- **NCSC**, [Cyber Essentials requirements v3.2](https://www.ncsc.gov.uk/files/cyber-essentials-requirements-for-it-infrastructure-v3-2.pdf) (PDF) — the 14-day rule, in force since 28 Apr 2025.
- **EU law**, [Implementing Regulation 2024/2690](https://eur-lex.europa.eu/eli/reg_impl/2024/2690/oj/eng) — requires a complete, accurate and current inventory, and applies to service providers directly. Sets no deadline in days. UK equivalent still undated: [CSR Bill factsheet](https://www.gov.uk/government/publications/cyber-security-and-resilience-network-and-information-systems-bill-factsheets/relevant-managed-service-providers).
- **IBM**, [2026 X-Force Threat Index](https://newsroom.ibm.com/2026-02-25-ibm-2026-x-force-threat-index-ai-driven-attacks-are-escalating-as-basic-security-gaps-leave-enterprises-exposed) — the 40% and the North America 29% figures. Threat data, not market sizing. ⚠️ The MarketsandMarkets press release misquotes this report: the original says North America 29% and manufacturing 27.7%, not what the release claims.

### North American compliance

- **PCI Security Standards Council**, [PCI DSS](https://www.pcisecuritystandards.org/standards/pci-dss/) — requirement 6.3.3, critical or high patches within one month. Applies to any entity that stores, processes or transmits cardholder data, with no size threshold. ⚠️ Two things unresolved: the v4.0.1 PDF blocks automated reading so the current text is unconfirmed against v4.0's, and the card-brand merchant-level thresholds that decide whether a company self-attests or gets assessed were not retrieved.
- **New York DFS**, [Second Amendment to 23 NYCRR 500](https://www.dfs.ny.gov/system/files/documents/2023/10/rf_fs_2amend23NYCRR500_text_20231101.pdf) (PDF) — §500.05 renamed "Vulnerability management" and still says "timely remediate." Financial services only, and §500.05 is one of the sections the limited exemption removes.
- **Canadian Centre for Cyber Security**, [Baseline Cyber Security Controls for Small and Medium Organizations](https://www.cyber.gc.ca/en/guidance/baseline-cyber-security-controls-small-and-medium-organizations) — scoped under 499 employees, no patching timeframe. [CyberSecure Canada](https://ised-isde.canada.ca/site/cybersecure-canada/en) certifies against it and moved to the Standards Council of Canada in March 2023.
- **CISA**, [BOD 26-04](https://www.cisa.gov/news-events/directives/bod-26-04-prioritizing-security-updates-based-risk), effective 10 June 2026 — federal information systems only, and it **revoked** [BOD 22-01](https://www.cisa.gov/news-events/directives/bod-22-01-reducing-significant-risk-known-exploited-vulnerabilities). ⚠️ Anything citing CISA's "two-week rule" as current is stale, and the number collides with Cyber Essentials'.
- **CRC Group**, [Cyber Liability Insurance Application](https://www.crcgroup.com/Portals/34/Apps/DaveFinneran/App-Cyber.pdf) (PDF) — a public US wholesale broker form asking, as a signed representation, "Apply security patches within 30 days of release?" ⚠️ A broker's form, not a carrier's.
- **CIRA / The Strategic Counsel**, [Canadian cybersecurity report, Aug 2025](https://www.cira.ca/uploads/2024/08/CIRA-2025-Cybersecurity-Report-10-05-2025.pdf) (PDF) — n=505, private sector capped at 999 employees, the closest published sample to our ICP anywhere in this research. Insurer proof-of-controls demands, contract requirement trends, and the in-house management shift. ⚠️ CIRA sells a DNS firewall, though not patching software; and the contract question asks about security requirements generally, not patching.
- **Statistics Canada**, [Impact of cybercrime on Canadian businesses, 2023](https://www150.statcan.gc.ca/n1/daily-quotidien/241021/dq241021a-eng.htm) — spend magnitude by size band, where "medium" is 50–249 employees. Contains no patching data and no spending-driver data.

### Market and pricing

- **MarketsandMarkets**, [endpoint security](https://www.marketsandmarkets.com/Market-Reports/TableOfContent/endpoint-security-market-29081235.html) — July 2026. Source of the 12.8% figure for finding and tracking assets, and the $17.76B global total. The one report worth buying if we buy one; $4,950.
- **Mordor Intelligence**, [endpoint management](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) and [security and vulnerability management](https://www.mordorintelligence.com/industry-reports/security-and-vulnerability-management-market) — the 71.6% and 71.1% large-enterprise concentration, the North America ~40% regional share, and the only research firm that publishes how it calculates anything.
- **IMARC**, [patch management](https://www.imarcgroup.com/patch-management-market) — the 8.3% figure.
- **Gartner** — [public category page](https://www.gartner.com/reviews/market/endpoint-management-tools), and the [NinjaOne reprint](https://www.ninjaone.com/resource/gartner-magic-quadrant-2026-mq/) as a public route to the ranking itself. ⚠️ **Our own copy is licensed: internal use only, not to be copied or sent outside N-able, and not to be fed into any AI tool.** The adoption forecast cited under Assumption 10 has also been republished without attribution on a vendor blog — cite it from our licensed copy and its document number, not from that page.
- **Canalys**, via [ChannelE2E](https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys) — the 11.4% versus 9.4% share figures. ⚠️ Use with care: the article blocks automated reading, the period looks like a single quarter of 2024 rather than a year, the fifth-placed vendor is reported two different ways, and the shares don't add up as described. Someone should open it by hand.
- **Microsoft**, [Intune pricing](https://www.microsoft.com/en-us/security/microsoft-intune-pricing), [the 2026 bundle changes](https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates) and [licensing documentation](https://learn.microsoft.com/en-us/intune/fundamentals/licensing) — why the comparison price is zero rather than eight dollars. Microsoft's own words: most organisations get Intune inside a Microsoft 365 bundle rather than buying it directly. Note Intune is licensed per user, not per device.
- **Competitor pricing:** [Action1 free to 200 endpoints](https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/), [Automox $1](https://www.automox.com/pricing), [NinjaOne's range statement](https://www.ninjaone.com/pricing/) and its stated reason for not publishing, [ManageEngine's full list](https://www.manageengine.com/products/desktop-central/pricing.html). ConnectWise, Kaseya, Rapid7 and Ivanti publish nothing at all — that absence is verified, not a gap in the research.
- **G2**, [State of Software Buying 2026](https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf) (PDF) — 3,385 buyers, methodology on p.22. Price last of five at 47%, security first at 58%, compliance gaps eliminating 55%, trial decisive for 50%, 8.75 months to prove a return. ⚠️ G2 monetises vendor visibility on review sites, and this covers business software generally rather than endpoint management.
- **Recast Software**, [State of Intune 2026](https://www.prnewswire.com/news-releases/state-of-intune-survey-finds-it-teams-struggle-with-application-lifecycle-management-and-hybrid-complexity-302835831.html) — 890 respondents. ⚠️ **Always name the sponsor: Recast sells Intune add-ons.** And read what it measures: "hybrid" means Intune plus Microsoft's own Configuration Manager, not Intune plus a third-party tool. Corroborated independently by [Redmond Channel Partner](https://rcpmag.com/articles/2026/08/07/microsoft-intune-adoption-grows.aspx).
- **N-able**, [Form 10-K for 2025](https://www.sec.gov/Archives/edgar/data/1834488/000183448826000007/nabl-20251231.htm) — for our own reported numbers.

### Reliability and trust

- **ITBench** — [Jha et al., PMLR v267](https://proceedings.mlr.press/v267/jha25a.html), IBM Research and UIUC, 94 scenarios. The 13.8% / 25.2% / 0% resolution rates.
- **ITBench-AA** — [Artificial Analysis with IBM](https://artificialanalysis.ai/articles/itbench-aa-launch), 27 May 2026, 59 tasks scored at average precision at full recall. Every frontier model under 50%. The [leaderboard](https://artificialanalysis.ai/evaluations/itbench-aa) is live, so pull the current figure at write-time.
- **AIOpsLab** — [Microsoft Research](https://arxiv.org/pdf/2501.06706), 86 incident scenarios, best agent 59.32% overall and 54.55% on mitigation. Microsoft both publishes the benchmark and ships the agents.
- **Wickens & Dixon 2007**, [the 0.70 crossover](https://www.tandfonline.com/doi/abs/10.1080/14639220500370105) — 20 studies, 35 data points. Lab diagnostic automation, so the transfer to enterprise IT is an assumption.
- **Onnasch et al. 2014**, [meta-analysis of 18 experiments](https://journals.sagepub.com/doi/10.1177/0018720813501549) — higher automation improves routine performance and degrades failure-state performance and situation awareness.
- **Akhawe & Felt 2013**, [Alice in Warningland](https://devd.me/papers/alice-in-warningland.pdf) — over 25 million real warning impressions, click-through 10% to 70.2%.
- **Bansal et al. 2021**, [on explanations](https://idl.cs.washington.edu/files/2021-AIExplanationsTeamPerformance-CHI.pdf) — explanations did not uniformly help and in some conditions increased over-trust in wrong recommendations. Useful because "add explainability and trust follows" is what the room will assume.
- **Microsoft**, [Vulnerability Remediation Agent](https://learn.microsoft.com/en-us/intune/agents/vulnerability-remediation-agent) — read-only by design, no stop button once started, RBAC leakage documented by Microsoft itself.
- **Microsoft**, [third-party device compliance partners](https://learn.microsoft.com/en-us/intune/device-security/compliance/third-party-partners) — 18 named partners can act as MDM authority while Intune consumes the compliance signal. Android, iOS/iPadOS and macOS only; **Windows is not on the list.**
- **Failure cases:** [CrowdStrike Channel File 291 root cause analysis](https://www.crowdstrike.com/wp-content/uploads/2024/08/Channel-File-291-Incident-Root-Cause-Analysis-08.06.2024.pdf) with the [CISA alert](https://www.cisa.gov/news-events/alerts/2024/07/19/widespread-it-outage-due-crowdstrike-update), and [McAfee DAT 5958](https://www.cisa.gov/news-events/alerts/2010/04/21/mcafee-dat-5958-issues) fourteen years earlier. Same shape both times: a fast automatic content channel that bypassed staged rollout. The controls CrowdStrike committed to afterwards are a requirements list written by an incident.

### Not using, and why

Written down so nobody re-finds these and gets excited.

- **Any endpoints-per-IT-admin figure.** None is published. [Computer Economics](https://www.computereconomics.com/it-staffing-ratios/) is paywalled with no public figures, and the free versions trace back to it through aggregators that disagree by 2x. Two of the publishers are NinjaOne and Atera.
- **Any IT-spend-as-percentage-of-revenue figure** from the SEO aggregator pages. They attribute to paywalled Gartner and Deloitte reports and contradict each other by 2x on the same segment.
- **Third-party per-endpoint prices** for NinjaOne, ConnectWise, Kaseya, Ivanti or Qualys from MSP comparison blogs. No methodology, commercially motivated, mutually inconsistent.
- **The "40 to 60% MTTR reduction" claim.** No methodology, no baseline, no control, and the pages don't use MTTR consistently. Evidence that this is the category's expected talking point, which is useful competitive intelligence. Not evidence that MTTR falls.
- **"Insurers now require 14-day patch SLAs."** Recurs across MSP and IT-services blogs, none of which names a carrier, a form or a date. The only actual document found says 30 days. And 14 days is the real Cyber Essentials number, so this one merges two markets that haven't converged.
- **PCI DSS v4.0.1's supposed narrowing of 6.3.3** to critical-only within 30 days. Vendor-sourced, and the official PDF blocks automated reading. Don't state the delta until someone opens it by hand.
- **Any comparison of the EU's 70% against a North American figure.** No US or Canadian instrument comparable to ENISA's question was found. The absence is the finding; manufacturing the comparison would not survive scrutiny.

---

## 6. Open items

1. **Endpoints per customer in our band** — an install-base query, one day, unblocks the sizing model and the pricing test. Now the highest-value outstanding work, since the North American compliance question has been answered.
2. **Open the Canalys article by hand** and confirm the period and the fifth-placed vendor.
3. **Open the PCI DSS v4.0.1 PDF by hand.** Free and public, blocked only to automated reading, and it decides whether our one hard North American clock is "critical or high within one month" or something narrower.
4. **Find out whether win/loss data exists at all** before anyone commissions a pricing study.
5. **Resolve the endpoint-data contradiction** between slides 2 and 27 — core IP, or still a spike?
6. **Check whether SOC 2 names a patching timeframe.** Not looked at yet, and it would connect the customer-contract route to an actual number.
7. Optional: an eleventh assumption testing the Atera-style per-technician pricing model, if we want it tested rather than noted.

---

## Internal evidence reviewed for this update

- `Ecoverse_Riskiest_Assumptions 1.docx`, 09 September 2026.
- `MSP Market Segments Research Request 1.docx`, including summaries of interviews and field conversations with Tarik Hafid, Paul Killins, Hauke VonJuergensonn and Connor Herman.
- Internal IT Department tools and jobs, transcribed discussion with TJ Hardwick, Brian Mackie, Taha Doueidar and Meaghan Reinecke.
- `Ecoverse Product & GTM Strategy – Working Draft.pptx`, slides 5–6: "Six assumptions that could break the Ecoverse case" and "How we test each assumption before we build."

> Participant data. Used for this research purpose only — not for external copy, marketing material or prototype seed data.
