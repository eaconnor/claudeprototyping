# Pure Ecoverse Play — Riskiest Assumptions

**Elizabeth Connor** · Updated 24 September 2026 · Internal working document

> This is the single working copy. Edit it here. It goes to Confluence from this file, so please don't fork it into dated variants.

---

## Testing progress since 09 September

- **Stronger evidence:** generalist-heavy IT teams; patching and vulnerability needs; compliance and resilience pressure; simplicity and reduced operational effort; governed AI requirements.
- **Challenging evidence:** some IT departments buy one problem at a time rather than entering through a broad platform; Microsoft-centric estates may favour coexistence or an integrated add-on.
- **Still largely unproven:** willingness to pay; repeatable switch trigger; Intune displacement versus coexistence; technical reliability of cross-signal AI judgement; durable competitive advantage.

---

## What we learned this round

**Nothing here is a pass or a fail.** The reason to write assumptions down is to find out which ones are wrong, and several of these are. That's the round working, not the round going badly. Assumptions are expected to evolve, and where the old wording no longer fits, this version says so and suggests a replacement.

### What got stronger

The problem itself. It shows up everywhere we sell, and North America is both the sharpest version of it and the biggest market. IBM's X-Force team handled **29% of all its incidents in North America**, making it the most-attacked region for the first time in six years, up from 24% the year before. North America is also **USD 7.00B of the USD 17.76B** spent globally on endpoint security, with the US alone at **USD 5.28B**, and roughly **40%** of the endpoint management market.

On the patching problem specifically, the cleanest numbers are UK and EU, because those regulators publish and run surveys. Only **34%** of UK businesses have a policy to patch inside two weeks. Half of EU organisations say patching is the hardest security rule to comply with and a fifth take more than three months. **70%** name compliance their top reason for spending on security at all, with insurance last of nine at 5%. And **40%** of incidents now start with an unpatched vulnerability.

Treat the UK and EU figures as the best-documented picture of a problem we see in every market — not as a description of our market.

### What got weaker

- **The moat.** NinjaOne announced a [Microsoft Intune integration](https://www.ninjaone.com/press/microsoft-intune-integration/) on 18 November 2025, and Action1 announced [an equivalent](https://www.action1.com/company-news/action1-extends-microsoft-intune-with-unified-cross-platform-patching-and-risk-based-vulnerability-management-at-microsoft-ignite-2025/) at Microsoft Ignite the same month. Our own test was going to ask whether either could do it inside twelve months with a partner. They needed neither. The useful learning isn't that we were wrong — it's that the defensible thing is probably speed and proof rather than the feature.

- **The order of the wedge.** Knowing what's on the estate is the [fastest-growing part of endpoint security at 12.8% a year](https://www.marketsandmarkets.com/Market-Reports/TableOfContent/endpoint-security-market-29081235.html), while fixing vulnerabilities is the [slowest thing we found at 6.38%](https://www.mordorintelligence.com/industry-reports/security-and-vulnerability-management-market), and patching sits [between them at about 8.3%](https://www.imarcgroup.com/patch-management-market). We'd been leading with remediation. On growth, that's upside down.

- **The price we're compared against.** Not eight dollars a user. Zero. [Intune](https://www.microsoft.com/en-us/security/microsoft-intune-pricing) is already inside the bundle these companies buy for email and Office, and [from 1 July 2026](https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates) that bundle absorbed more of it. [Action1 is free forever up to 200 endpoints](https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/). Every pricing conversation now starts from nothing extra.

### What we're leaning toward

Not settled, and worth writing down anyway. Each one says what's behind it and how much weight it can carry.

- **There's a market here, but the part we can harvest is narrower than I expected.**
  *Behind it:* the money sits with big companies — large enterprises are [71.6% of endpoint management revenue](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) and [71.1% of security and vulnerability revenue](https://www.mordorintelligence.com/industry-reports/security-and-vulnerability-management-market) — and we've deliberately aimed below that. The fast growth rates quoted for smaller firms are percentages on a small base. Nobody publishes a figure for the slice we actually want: there's no size for patching or vulnerability work counted at the endpoint only, and none for the software category Gartner has just named. Regional splits exist and they favour us, but none cut down to the endpoint or to our size band.
  *Weight:* **strong on the concentration, unmeasurable on the slice.** The one number that would settle it is ours — how many endpoints a typical customer in our band runs. That's Assumption 9, and it's a day of work.

- **We're stronger than we look where we're already known, and weaker than we look everywhere else.**
  *Behind it:* [Canalys](https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys) puts us at 11.4% against NinjaOne at 9.4% of the service-provider software market, behind ConnectWise and Kaseya. Gartner, covering a different market, puts us in its smallest group and lists only commercial weaknesses.
  *Weight:* **directional.** The Canalys figures come from one article that blocks automated reading, and the period looks like a single quarter of 2024 rather than a year. Worth someone opening by hand, because if it holds it's the most encouraging number we have.

- **The opening is a timing one, not a feature one.**
  *Behind it:* Gartner names our innovation as a strength — monitoring, threat detection, forecasting, automated fixing, agent frameworks, generative scripting — and names NinjaOne's generative AI as limited and roadmap-dependent, which it treats as a long-term risk to them.
  *Weight:* **good, and perishable.** A company that raised at a five billion dollar valuation in February 2025 will close that gap. The lead is real and it's dated.

### What we added

Four assumptions that were already being carried without being written down: who this is actually for, whether we can ship onboarding good enough for a trial, which unit the target is expressed in, and whether we can reach and convince this buyer at all. The last one is the weakness Gartner names about us that the deck doesn't mention, and on the ordering below it comes second.

### How we learned it

The rule is to run the cheapest test that can change your mind. This round that was secondary research, competitor checking, and sketching the propositions against three frameworks — jobs to be done, ten types of innovation, and competitive analysis. Days, not quarters. It moved four assumptions and retired one. The six tests named in the deck are the next and more expensive round.

---

## At a glance — most to least risky

The `#` column keeps the deck numbering from slides 5–6, so the crosswalk still works.

| Risk | # | The assumption as written | How it's evolving |
|---|---|---|---|
| **1** | 5 | We have a real, unmet business need that translates into commercial value | Unchanged. Sharpen the test: it has to run against a free alternative, not a list price. |
| **2** | 10 | We can reach this buyer, convince them, and prove it | New. On this ordering it belongs near the top, and the deck doesn't have it at all. |
| **3** | 8 | We can ship onboarding good enough to carry a self-serve trial in Phase 1 | New. Was already being carried, just never written down. |
| **4** | 6 | This product's advantage cannot be copied easily | **Retire as written.** Replace with: *can we build and sell an advantage faster than it gets copied?* |
| **5** | 2 | This product vision will easily tie to business outcomes | **Drop "easily."** Replace with: *a compliance deadline is a repeatable reason to buy.* |
| **6** | 3 | We can build an AI that does this reliably | Unchanged, and still the one nothing external can answer for us. |
| **7** | 1 | Connecting categories surfaces real, unrealized value | **Split it in two:** *a narrow entry point earns adoption, and the joined-up view earns expansion later.* |
| **8** | 4 | The AI will be reliable enough for people to trust it out of the gate | **Drop "out of the gate"** — wrong bar. Replace with: *people will trust it when the controls and the proof are right.* |
| **9** | 7 | We know who this is for — internal IT, not the MSP proposition repositioned | New, and it holds the sharpest open question we have. |
| **10** | 9 | We know the ICP unit — headcount converts to endpoints for our band | New. Cheapest thing here to settle, and it unblocks the sizing. |

---

## What we could learn next, and what each test is waiting on

None of the six the deck named has run yet. Most are blocked on one small thing, which is worth knowing because it means the next round is closer than it looks.

| # | The test the deck named | Run? | What it's waiting on |
|---|---|---|---|
| 1 | 5–10 interviews with existing customers, showing a mocked-up combined patch, backup and security view | No | The mock. There's nothing to put in front of anyone yet. |
| 2 | Pull win/loss data. If none exists, a qualitative pricing study on bundles and value propositions | No | Finding out whether win/loss data exists at all, before commissioning a study. |
| 3 | Fix the known reliability bugs (NZO-SEV), re-measure, then build the first lightweight prototype | No | An engineering slot for the bug fixes. |
| 4 | Ship the approval / autonomy toggle, then re-run the reboot usability test with the trust instrument | No | The toggle. The re-test can't run until it ships. |
| 5 | Apply the existing Cove and Adlumin attach-and-expand data to Ecoverse price points | No | Ecoverse price points. There are none yet. |
| 6 | Could NinjaOne or Action1 replicate the correlation story via partnership within 12 months? | **Overtaken** | Rewriting the question. They already did it, without a partnership and in under twelve months. |
| 7 | New this round. No deck test exists. | — | Segment the install base, then split the Assumption 1 concept test by how strict the customer's change control is. |
| 8 | New this round. No deck test exists. | — | A target for how long first setup should take, then five sessions with no help of any kind. |
| 9 | New this round. No deck test exists. | — | An install-base query. One day. |
| 10 | New this round. No deck test exists. | — | A message test, plus a count of customer stories we could publish. |

---

# The assumptions in detail

Ordered most to least risky. Deck numbers in the headings.

---

## Risk 1 · Assumption 5: We have a real, unmet business need that translates into commercial value

**Testing progress:** Testing in progress. Need and problem evidence are stronger; willingness to pay, pricing and margin remain unproven.

### What we learned this round

The need is looking credible. Interviewees keep naming the same four jobs — patching, vulnerability work, knowing what's on the estate, and compliance — and the secondary data backs that, though the cleanest numbers are UK and EU because those regulators publish and survey: only 34% of UK firms have a policy to patch inside two weeks, and 70% of EU organisations name compliance their top reason for spending on security. North America is the largest market in every segment we looked at and the most-attacked region in IBM's 2026 data, so the problem isn't smaller there — it's less surveyed.

The commercial case is trickier. Our nearest competitors charge roughly **$1 to $3.75 per machine per month** — [Automox $1](https://www.automox.com/pricing), NinjaOne $1.50 to $3.75, ManageEngine around $1 to $1.75 — and [Action1 gives it away free up to 200 machines](https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/). [Microsoft Intune](https://www.microsoft.com/en-us/security/microsoft-intune-pricing) costs $8 a user on paper but arrives inside a bundle these companies already buy for email and Office, so in practice it's nothing extra. Real problem, no obvious way to charge for it.

Buyers also don't decide on price: it ranks **last of five** shortlisting factors at 47%, while security detail ranks **first at 58%**, and security or compliance gaps eliminate **55%** of shortlisted vendors — [G2, n=3,385](https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf). Median time to prove a return is nearly nine months.

### Interview evidence update

- The interviews give stronger evidence for operational pain, compliance pressure and manual effort.
- No source reviewed provides direct willingness-to-pay, viable packaging or margin evidence for Pure Ecoverse.
- IT is treated as a cost centre, so value must be legible as avoided effort, reduced risk, compliance enablement or tool cost reduction.

### What remains unproven

- Who owns budget and which budget line pays.
- What minimum package is credible and what price is acceptable.
- Whether the economics work for the initial estate size and support model.

### Original test from current deck

Apply N-able's existing Cove and Adlumin attach-and-expand data to Ecoverse's actual price points. Correlate signals to data from 2. Correlate signals to secondary market data.

**Sharpen it:** the test has to run against a free alternative, not a list price.

**What would change our mind:** Willingness to pay and margin, before "start cheap, expand later".

---

## Risk 2 · Assumption 10: We can reach this buyer, convince them, and prove it

**Testing progress:** New this round. This is the weakness Gartner names and the deck does not.

### What we learned this round

Gartner's write-up on us is a useful mirror. It calls our innovation a strength and names the specifics: AI for monitoring, threat detection, forecasting and automated fixing. Then every weakness it lists is commercial — buyers outside our own channel don't know who we are, we have very few published customer stories, and our sales approach isn't tailored to any industry or job title. Nothing about the product. That's a different problem from the one the deck is trying to solve.

Gartner also holds a forecast showing this kind of automation going mainstream by 2029. Quote it internally from our licensed copy and its document number, never from the marketing pages that have repeated it without crediting anyone.

We do have share where we're already known. [Canalys](https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys) puts us ahead of NinjaOne in the service-provider software market, which the Gartner ranking doesn't cover. Directional only — see the caveats in Sources.

### What remains unproven

- Whether an in-house IT sales motion can be built on a team shaped for the service-provider channel.
- How many published customer stories are enough, and how fast we could produce any.
- Whether a compliance message reaches this buyer at all, or whether "less work" is the one that lands.

### Test to add — new this round, so there's no deck test

Two cheap things. Put the two versions of the differentiator in front of people in the band and make them pick one, then ask which they'd forward to a colleague and why. And count internally: how many named customer stories in this band could we publish within ninety days. The second is an audit, and it caps everything else.

**What would change our mind:** One version wins clearly and for the reason we expect rather than on tone, and the story count supports a launch claim. If both land the same, neither is distinctive. If the count is near zero, then proof is the critical path and building more product is not.

---

## Risk 3 · Assumption 8: We can ship an onboarding experience good enough to carry a self-serve trial in Phase 1

**Testing progress:** New this round. Nothing we reviewed suggests we can, and the Phase 1 gate assumes a working trial.

### What we learned this round

Nine of the eleven trial and onboarding items on the deck's own delivery slide are marked Not started — trial sign-up, the agent install flow, self-serve purchase and Intune-based deployment among them. Meanwhile ease of use is the thing interviewees mention most; one described a competitor as easier to use and much shinier than what they had. So the thing we're counting on to set us apart is the thing least built.

### What remains unproven

- How long first setup is allowed to take, and whether anyone has set a target.
- Whether unattended setup is possible at all when step one is installing software across machines we don't yet manage.
- Whether the Phase 1 trial is a commitment to ship or a decision point. The deck reads both ways.

### Test to add — new this round, so there's no deck test

Set a target for time to first useful result, then run five sessions where people set it up with no help at all — no call, no onboarding email, no screen share. Record where they stop, not whether they liked it.

**What would change our mind:** Most people get to a useful result unaided, and where they stall is a design problem rather than something missing. If they can't install it unaided, then self-serve trial isn't the Phase 1 route and the gate should move rather than the target.

---

## Risk 4 · Assumption 6: This product's advantage cannot be copied easily

**Testing progress:** Retire as written. The question has been answered by events.

**Suggested replacement wording:** *Can we build and sell an advantage faster than it gets copied?*

### What we learned this round

It has already happened. NinjaOne announced a [Microsoft Intune integration](https://www.ninjaone.com/press/microsoft-intune-integration/) on 18 November 2025 and Action1 announced [an equivalent](https://www.action1.com/company-news/action1-extends-microsoft-intune-with-unified-cross-platform-patching-and-risk-based-vulnerability-management-at-microsoft-ignite-2025/) at Microsoft Ignite the same month. Our test was going to ask whether either of them could do it inside twelve months with a partner. They needed neither.

They did it differently, which is the interesting part: **NinjaOne keeps control and treats Intune as a data feed, while Action1 sits inside Intune and extends it.** Those are two different threats, not one.

The category now has a name we don't own either. Gartner calls it autonomous endpoint management, and Action1 already uses the term in its own positioning. No research publisher has sized it.

### Interview evidence update

- Competitors already validate patching, automation, simplicity and endpoint operations.
- Intune-integrated specialists can solve painful gaps without replacing Microsoft.
- Potential differentiators remain deeper endpoint intelligence, governed action, proof of outcome, usability and the ability to serve IT and MSP operating models.

### What remains unproven

- Which advantage customers notice and value in the first buying decision.
- Whether competitors can reproduce the outcome through integration, partnership or packaging.
- Whether N-able endpoint data produces a demonstrably better result rather than a stronger internal asset story. **Note the deck argues both sides of this:** slide 2 treats rich endpoint data as core IP while slide 27 lists it as something to spike into. Both can't be true.

### Original test from current deck

Run one concrete scenario: could NinjaOne or Action1 replicate the correlation story via partnership within 12 months?

**Rewrite it:** they already did, without a partnership. The question worth asking now is what they *can't* copy, and how long our lead on it actually lasts.

**What would change our mind:** If yes, it is a head start, not a moat — and the story needs a new anchor.

---

## Risk 5 · Assumption 2: This product vision will easily tie to business outcomes

**Testing progress:** Testing in progress. Business outcomes are recurring, but a repeatable switch trigger and commercial pull are not yet proven.

**Suggested replacement wording:** drop "easily" — *a compliance deadline is a repeatable reason to buy.*

### What we learned this round

Compliance keeps coming up as the reason to spend, and 70% of EU organisations name it their top security investment driver. The strongest version is the UK's [Cyber Essentials](https://www.ncsc.gov.uk/files/cyber-essentials-requirements-for-it-infrastructure-v3-2.pdf), which puts a hard 14-day deadline on serious patches.

What we haven't evidenced is the North American equivalent. US and Canadian compliance pressure appears to run through frameworks, customer contracts and cyber insurance rather than one statutory deadline, which would make it a different kind of trigger — **but that's an assumption on my part and nobody has checked it.** Given the product is meant to be North America or global, this is the most important gap in the document.

And nowhere, in any market, does anyone publish what companies actually buy in the months around a deadline. So we can show the pressure is real and we can't yet show it turns into a purchase.

### Interview evidence update

- Reported triggers include difficult or noisy tools, high cost, compliance requirements, operational effort and tool sprawl.
- Microsoft-centric customers may be difficult to displace; an integrated add-on may be more plausible than a UEM replacement.
- Customers already have tools, so Pure Ecoverse must displace, complement or consolidate something specific.

### What remains unproven

- Which trigger is common enough to support repeatable acquisition.
- Whether the first motion is replacement, coexistence or attach to Intune.
- Which incumbent, budget line and buying event are involved.

### Original test from current deck

Pull any win/loss data that exists. If none exists, qualitative pricing study to evaluate bundles and value prop concepts. (Westergreen-based). Correlate with secondary market signals and market sizing.

**What would change our mind:** A named, repeatable switch trigger, with preliminary proof of willingness to pay and secondary backing of problem magnitude.

---

## Risk 6 · Assumption 3: We can build an AI that does this reliably

**Testing progress:** Not materially tested by the interviews. The existing N-zo reliability work and lightweight engineering prototype remain the relevant tests.

### What we learned this round

Nothing moved, and nothing outside the building could move it. Interviews tell us what people want, not whether we can build it reliably. The known reliability bugs still need fixing and re-measuring, and the first prototype still needs building.

### Interview evidence update

- The current evidence values automation when it removes concrete effort, such as patch remediation, software deployment or configuration work.
- The original three-signal judgement remains a larger technical leap than the bounded jobs now emerging from interviews.
- Progress, completion, accurate state and auditability remain essential.

### What remains unproven

- Whether one bounded workflow can meet agreed reliability and observability thresholds.
- Whether endpoint data is complete and current enough to support the selected job.
- Whether failure modes are recoverable and understandable.

### Original test from current deck

Fix the pre-flight and success-state bugs already scoped in NZO-SEV, then re-measure. Build first lightweight engineering prototype.

**What would change our mind:** Reliability holds on one action before we try three-signal correlation. Build lightweight prototype of concept for tech test in parallel.

---

## Risk 7 · Assumption 1: Connecting categories surfaces real, unrealized value

**Testing progress:** Testing in progress. Current interviews provide mixed evidence; direct evaluation of the mocked combined view is still outstanding.

**Suggested replacement wording — split it in two:** *a narrow entry point earns adoption, and the joined-up view earns expansion later.*

### What we learned this round

Mixed, and now pointing the other way. Interviewees say they arrive shopping for one problem; one put it as replacing a screwdriver rather than shopping for a workshop. And on growth the market disagrees with our ordering: finding and tracking what's on the estate is growing at **12.8%** a year, while fixing vulnerabilities is the slowest thing we found at **6.38%**, with patching between them at about **8.3%**. We've been leading with the slow one.

### Interview evidence update

- Interview evidence repeatedly identifies patching, vulnerability management, inventory/intelligence, compliance, remote access, simplicity and reduced operational effort as meaningful jobs.
- Some evidence supports consolidation, but other evidence says IT departments often enter looking to solve one problem at a time.
- The viable proposition may be a broad product platform sold through a narrow, outcome-led entry point.

### What remains unproven

- Which initial job is valuable and urgent enough to trigger trial or purchase.
- Whether connecting patch, vulnerability, configuration, inventory and compliance produces additional value beyond a strong point solution.
- Whether expansion into adjacent jobs occurs after the first wedge is adopted.

### Original test from current deck

5–10 short interviews with existing customers. Show a mocked combined patch, backup and security view. Secondary/market sizing signal to validate what we are hearing in interviews.

**What would change our mind:** They would act on it — or already assemble it manually elsewhere.

---

## Risk 8 · Assumption 4: The AI will be reliable enough for people to trust it out of the gate

**Testing progress:** Testing in progress. Interviews clarify the trust conditions, but they do not prove that the proposed controls move the existing baseline.

**Suggested replacement wording:** drop "out of the gate" — wrong bar. *People will trust it when the controls and the proof are right.*

### What we learned this round

The trust conditions came out clearly: approvals, accuracy, an audit trail, and proof the action actually finished. The wider market has already settled this argument. Microsoft ships its own vulnerability remediation agent read-only, and its documentation says that once it starts there's no way to stop or pause it. Tanium requires sign-off on every action. Our own deck already says full autonomy is probably the wrong target. So the question isn't whether people trust it on day one — it's which controls earn the trust.

### Interview evidence update

- Interview evidence explicitly raises trust, governance, accuracy, auditability and data handling.
- Participants describe value in AI that monitors, prioritises or executes, but with constrained scope and approved knowledge/processes.
- Simple on/off automation is likely more appropriate for early customers than asking them to create complex agentic workflows.

### What remains unproven

- Which actions can run automatically, which require approval and which are unacceptable.
- What explanation, evidence and recovery controls are needed at each risk level.
- Whether governed automation improves adoption versus deterministic UX alone.

### Original test from current deck

Ship the autonomy-level / approval toggle already recommended internally, then re-run the reboot usability test with AI trust instrument. Also qual concepts with same instruments.

**What would change our mind:** The 2.5/5 baseline moves once approval gates and completion states exist. May also consider brand study of AI/N-able trust here.

---

## Risk 9 · Assumption 7: We know who this is for — internal IT, not the MSP proposition repositioned

**Testing progress:** New this round. Named properly in the deck for the first time, and not yet tested.

### What we learned this round

The deck names the target properly for the first time: in-house IT departments in companies of 100 to 299 staff running under about 1,000 machines. Two things complicate it. In-house IT buyers actively dislike anything that looks like it was built for service providers, down to the product name. And Gartner warns that companies with strict change-approval processes get the least value from automation — which describes the compliance-driven companies we most want to sell to.

### What remains unproven

- Whether this is a new group of customers or a re-description of the Classic N-sight base we already have. Different economics, different tests.
- Whether the compliance message attracts the customer least suited to the product. **This is the sharpest open question we have.**
- Whether in-house IT and service providers can share one product, or split at setup and language.
- **Which geographies Phase 1 actually covers.** The product is meant to be North America or global, and the best compliance evidence we have is UK and EU because those regulators publish. Those are different triggers: a statutory 14-day deadline isn't the same sell as a framework, a customer contract or an insurer's requirement. Nobody has mapped the North American driver yet. And DACH may be an exclusion rather than a market — one interviewee was clear that on-premises hosting, local control and customer-held encryption keys are requirements there, which a cloud-native self-serve product doesn't meet.

### Test to add — new this round, so there's no deck test

Segment the install base against the stated band first. Then run the Assumption 1 concept test with two groups: half with a formal change-approval process, half without. Compare which concept each group picks and how much automation they'll accept.

**What would change our mind:** Both groups pick the same concept and differ only on how much automation they allow — that means one product with a setting. If they pick differently, or the strict group refuses automation at any level, then compliance is a message that brings in the wrong customer and the target needs restating.

---

## Risk 10 · Assumption 9: We know the ICP unit — headcount converts to endpoints for our band

**Testing progress:** New this round. The cheapest thing here to settle, and still unsettled.

### What we learned this round

The deck describes the target in three different units, and a comment on one slide records that staff count versus machine count is still being confirmed. There's no free published benchmark for machines per company: [Computer Economics](https://www.computereconomics.com/it-staffing-ratios/) keeps theirs behind a paywall and publishes no figures, and every free version of that number traces back to it through aggregators that disagree with each other by a factor of two.

One research firm does hold it: [Mordor](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) lists average devices per employee as an input to its published method. Our own install base is better, because those are our customers rather than a global average.

### What remains unproven

- The ratio for our band, in our countries.
- Whether it varies enough by country or industry to change who we target.
- Whether the staff-count band and the machine-count band describe the same companies.

### Test to add — new this round, so there's no deck test

Query the install base. Machines per customer for everyone inside the band, broken out by region and industry, and return the spread rather than the average. This is an internal data request, not a study, and it unblocks both the market sizing and the pricing test.

**What would change our mind:** The spread is tight enough that one definition covers the band. If it splits in two, or varies by country, then we're aiming at two groups under one label and the pricing test needs two packages.

---

# What we could do about it

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
| Sell the compliance evidence itself — the proof the work was done | **Best evidence, least to build** | Better product score | It attaches to a legal deadline and the buyer is already spending: compliance is the top reason for security spend at 70% across the EU. **Caveat: that deadline is UK and EU.** The North American version probably runs through frameworks, contracts and insurance instead, and we haven't evidenced it. | 3–6 months (est.) |
| Know the whole estate from day one | **Best long-term defence, wrong purchase rhythm** | Best story we genuinely own | Fastest-growing part of endpoint security at 12.8%. But an inventory gets bought once, not renewed on use. | Blocked until we settle what endpoint data we actually have |
| Charge per technician rather than per endpoint, as Atera does | **Untested, cheapest to test** | Gartner singles out Atera's pricing as unique and a strength | Changes the economics rather than the volume. Needs our own cost base, which is internal and knowable. | A pricing decision, not a build |

## If we take the supervised-automation option, this is how we'd say it

> For internal IT teams of two to six people running a few hundred to about fifteen hundred similar machines, who have patching and inventory duties with legal deadlines and nobody spare to do them, Ecoverse closes a named compliance duty on its own within rules you set, and hands you the proof it was done. Unlike Intune plus a separate tool, we treat the duty as the job rather than the machine, and we prove it was met.

The last clause is the one that matters, and there are two versions. Against Microsoft: **we treat the duty as the job.** Against NinjaOne: **we ship supervised AI automation now rather than promising it.** The second one has a shelf life, which is the whole argument for moving.

---

## Internal evidence reviewed for this update

- `Ecoverse_Riskiest_Assumptions 1.docx`, 09 September 2026.
- `MSP Market Segments Research Request 1.docx`, including summaries of interviews and field conversations with Tarik Hafid, Paul Killins, Hauke VonJuergensonn and Connor Herman.
- Internal IT Department tools and jobs, transcribed discussion with TJ Hardwick, Brian Mackie, Taha Doueidar and Meaghan Reinecke.
- `Ecoverse Product & GTM Strategy – Working Draft.pptx`, slides 5–6: "Six assumptions that could break the Ecoverse case" and "How we test each assumption before we build."

> Participant data. Used for this research purpose only — not for external copy, marketing material or prototype seed data.

---

## Sources

Where something is behind a paywall, sponsored by a vendor, licensed, or unreachable, it says so here rather than hiding it. Full working files, including the market-sizing dossiers and the deck-to-document assumption register, are in this folder.

- **DSIT**, [Cyber Security Breaches Survey 2025/2026](https://www.gov.uk/government/statistics/cyber-security-breaches-survey-20252026/cyber-security-breaches-survey-20252026) — 2,112 businesses, 30 Apr 2026. The 34% patching figure and the breach rates by company size.
- **NCSC**, [Cyber Essentials requirements v3.2](https://www.ncsc.gov.uk/files/cyber-essentials-requirements-for-it-infrastructure-v3-2.pdf) (PDF) — the 14-day rule, in force since 28 Apr 2025.
- **ENISA**, [NIS Investments 2025](https://www.enisa.europa.eu/publications/nis-investments-2025) — [full report PDF](https://www.enisa.europa.eu/sites/default/files/2026-02/NIS%20Investments%202025%20-%20Main%20report.pdf), 1,080 organisations. Patching hardest to comply with; compliance the top spending driver at 70%.
- **EU law**, [Implementing Regulation 2024/2690](https://eur-lex.europa.eu/eli/reg_impl/2024/2690/oj/eng) — requires a complete, accurate and current inventory, and applies to service providers directly. Sets no deadline in days. UK equivalent still undated: [CSR Bill factsheet](https://www.gov.uk/government/publications/cyber-security-and-resilience-network-and-information-systems-bill-factsheets/relevant-managed-service-providers).
- **IBM**, [2026 X-Force Threat Index](https://newsroom.ibm.com/2026-02-25-ibm-2026-x-force-threat-index-ai-driven-attacks-are-escalating-as-basic-security-gaps-leave-enterprises-exposed) — the 40% and the North America 29% figures. Threat data, not market sizing. ⚠️ The MarketsandMarkets press release misquotes this report: the original says North America 29% and manufacturing 27.7%, not what the release claims.
- **MarketsandMarkets**, [endpoint security](https://www.marketsandmarkets.com/Market-Reports/TableOfContent/endpoint-security-market-29081235.html) — July 2026. Source of the 12.8% figure for finding and tracking assets, and the $17.76B global total. The one report worth buying if we buy one; $4,950.
- **Mordor Intelligence**, [endpoint management](https://www.mordorintelligence.com/industry-reports/unified-endpoint-management-market) and [security and vulnerability management](https://www.mordorintelligence.com/industry-reports/security-and-vulnerability-management-market) — source of the 71.6% and 71.1% large-enterprise concentration, the North America ~40% regional share, and the only research firm that publishes how it calculates anything.
- **IMARC**, [patch management](https://www.imarcgroup.com/patch-management-market) — the 8.3% figure.
- **Gartner** — [public category page](https://www.gartner.com/reviews/market/endpoint-management-tools), and the [NinjaOne reprint](https://www.ninjaone.com/resource/gartner-magic-quadrant-2026-mq/) as a public route to the ranking itself. ⚠️ **Our own copy is licensed: internal use only, not to be copied or sent outside N-able, and not to be fed into any AI tool.** The adoption forecast cited under Assumption 10 has also been republished without attribution on a vendor blog — cite it from our licensed copy and its document number, not from that page.
- **Canalys**, via [ChannelE2E](https://www.channele2e.com/news/big-3-rmm-psa-vendors-see-market-share-slip-canalys) — the 11.4% versus 9.4% share figures. ⚠️ Use with care: the article blocks automated reading, the period looks like a single quarter of 2024 rather than a year, the fifth-placed vendor is reported two different ways, and the shares don't add up as described. Someone should open it by hand.
- **NinjaOne**, [Intune integration](https://www.ninjaone.com/press/microsoft-intune-integration/), 18 Nov 2025 ([BusinessWire mirror](https://www.businesswire.com/news/home/20251118730305/en/NinjaOne-Announces-Microsoft-Intune-Integration-to-Simplify-Endpoint-Management-and-Boost-Productivity)). **Action1**, [Intune extension at Ignite 2025](https://www.action1.com/company-news/action1-extends-microsoft-intune-with-unified-cross-platform-patching-and-risk-based-vulnerability-management-at-microsoft-ignite-2025/).
- **Microsoft**, [Intune pricing](https://www.microsoft.com/en-us/security/microsoft-intune-pricing) and [the 2026 bundle changes](https://www.microsoft.com/en-us/licensing/news/2026-m365-packaging-pricing-updates) — why the comparison price is zero rather than eight dollars.
- **Recast Software**, [State of Intune 2026](https://www.prnewswire.com/news-releases/state-of-intune-survey-finds-it-teams-struggle-with-application-lifecycle-management-and-hybrid-complexity-302835831.html) — 890 respondents across North America, Europe, LatAm, MEA and APAC. ⚠️ **Always name the sponsor: Recast sells Intune add-ons.** The coexistence finding is corroborated independently by [Redmond Channel Partner](https://rcpmag.com/articles/2026/08/07/microsoft-intune-adoption-grows.aspx).
- **G2**, [State of Software Buying 2026](https://www.g2digitalmarkets.com/hubfs/G2DM/PDFs/g2dm-state-of-software-buying-in-2026-report.pdf) (PDF) — 3,385 buyers. Price last of five shortlisting factors; nine months median to prove a return.
- **Competitor pricing:** [Action1 free to 200 endpoints](https://www.action1.com/company-news/action1-expands-its-free-offering-to-200-endpoints/), [Automox](https://www.automox.com/pricing). ConnectWise, Kaseya, Rapid7 and Ivanti publish nothing at all — that absence is verified, not a gap in the research.
- **N-able**, [Form 10-K for 2025](https://www.sec.gov/Archives/edgar/data/1834488/000183448826000007/nabl-20251231.htm) — for our own reported numbers.

---

## Open items

1. **North American compliance drivers are unmapped.** The strongest play rests on a UK statutory deadline. Someone needs to establish what the equivalent obligation looks like across US and Canadian frameworks, customer contracts and cyber insurance. Highest-value outstanding work.
2. **Endpoints per customer in our band** — an install-base query, one day, unblocks the sizing model and the pricing test.
3. **Open the Canalys article by hand** and confirm the period and the fifth-placed vendor.
4. **Resolve the endpoint-data contradiction** between slides 2 and 27 — core IP, or still a spike?
5. Optional: an eleventh assumption testing the Atera-style per-technician pricing model, if we want it tested rather than noted.
