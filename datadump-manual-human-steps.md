# Datadump — the manual human steps

**What this is:** the human half of the datadump routine. The automated sweep (`refresh-datadump`) handles Teams, Confluence, SharePoint, the web, and now AI sessions. **These are the things it structurally cannot do** — because they need a login it doesn't have, a policy it can't cross, a relationship it doesn't have, or a judgment that isn't its to make.

Written 2026-07-28. **Part A recurs every sweep. Part B is the live queue from the 2026-07-28 QBR/EBR sweep** — work it down and delete the lines.

---

# PART A — recurring manual steps

Do these each sweep, before the review gate. Each one closes a gap the automated sweep will otherwise report as "not reachable."

## A1 · Export Copilot chat history (if it mattered this period)
**Why manual:** M365 Copilot chat history is not reachable via MCP. Only its *outputs* are — docs, meeting recaps, emails, Teams posts — and the automated step sweeps those.
**Do:** if you or anyone on the team worked something significant through Copilot this period, export the thread (copy to a doc, save to the ACP SharePoint) so the sweep can index it. Otherwise write "none this period."
**If you skip it:** the sweep logs it as a gap rather than pretending it swept it. Skipping is fine — silently skipping is not.

## A2 · Reddit and gated communities
**Why manual:** reddit.com is blocked by browsing policy in the agent environment, on every path tried. MSPGeek Slack/Discord is login-gated.
**Do:** open the threads listed in the queue, skim the comments, paste anything real into the Brain Dump channel with the thread link. Ten minutes gets more unfiltered operator voice than an hour of vendor blogs.

## A3 · The gated reports
**Why manual:** Service Leadership Index, Forrester, Kaseya's full PDFs, Robin Robins' toolkit — paywalled or behind a partner login N-able may already have.
**Do:** check whether N-able has internal access before anyone pays for or re-derives anything. Ask Meaghan or the competitive-intel side.

## A4 · Set Relevance on new entries
**Why manual:** the Relevance column is the scope control. `Not relevant` means the sweep skips it entirely, forever, until a human un-dismisses it.
**Do:** everything new lands as `Review`. Promote to `Relevant` or dismiss to `Not relevant`. **This is the one control that keeps the corpus from growing without bound.**

## A5 · The review gate itself
**Why manual:** by design. Gather is automatic; synthesis is yours.
**Do:** Accept / Edit / Reject / **Accept-as-interpretation** on each changeset item. That fourth verdict is the honest one and you'll use it often — it means *"this is my best current read, not evidence."* It must stay visually distinct from Confirmed so an interpretation never hardens into a fact.

## A6 · Ask a human the things only a human can be asked
**Why manual:** it's a conversation, not a query.
**Do:** every sweep, the changeset will contain claims that need a person, not a source. Route them. Standing examples: what did we actually decide · is this still true · does anyone own this.

---

# PART B — live queue from the 2026-07-28 sweep

Ordered by leverage over cost. The first three are cheap and unblock the most.

## ⭐ B1 · Email Stefanie Hammond for the two handouts
**Cost:** one email. **Unblocks:** the artifact spec for Offering A.

The boot camp references two downloads — an **"EBR framework"** handout and an **"Executive Business Review template"** containing the technology-roadmap planning sheets. She offers them to anyone who asks. Not web-reachable; almost certainly partner-portal / n-able u LMS gated.

**These are the closest thing that exists to a spec for the artifact Offering A is supposed to generate.** Everything currently in the process map about the artifact set is inferred from her spoken description.

Suggested ask: *"Watched your Account Management & EBR boot camp — can you send the EBR framework and the Executive Business Review template handouts? Working on the UX side of a product that would help MSPs prepare these."*

**Second, separate ask while you're there:** she cites a **2022 Service Leadership report** for *"MSPs doing regular EBRs see 2.5× higher profitability."* We checked — Service Leadership's actual 2.5× claim is about top-quartile vs median EBITDA across 17 metrics, with no QBR link anywhere, and they use "QBR" internally to mean *their analyst reviewing the MSP's own financials*. **Ask her which report and page.** Either she has something we couldn't reach, or the stat needs retiring — and it's currently load-bearing in MSP-facing enablement, not just our deck.

## ⭐ B2 · Open four r/msp threads
**Cost:** ten minutes. **Unblocks:** the only unmediated operator voice in the corpus.

Every strong anti-QBR quote reachable on the open web comes through a vendor's marketing funnel. These don't.

- [How do you track and schedule QBRs](https://www.reddit.com/r/msp/comments/ct894t/how_do_you_track_and_schedule_quarterly_business/)
- [Quarterly reports](https://www.reddit.com/r/msp/comments/zsoyr3/quarterly_reports/)
- [MSP client reports (Monthly / Quarterly / Board packs)](https://www.reddit.com/r/msp/comments/z066xo/msp_client_reports_monthly_quarterly_board_packs/)
- [What data points do you provide during a QBR](https://www.reddit.com/r/msp/comments/atnh9d/what_data_points_do_you_provide_during_a_qbr/)

**Read the comments, not the posts.** Looking for: prep-time complaints · anyone who stopped doing them and why · anyone whose clients refused · anyone using ChatGPT/Copilot to prep one · anyone admitting they hide behind technical reports. Paste the good ones into Brain Dump with links. (Full list of 11 threads is on the Confluence page.)

## ⭐ B3 · Send Vanessa Chart's interview URL
**Cost:** one line. **Unblocks:** making the whole operator-evidence base citable.

You pasted that transcript with **no link.** By your own rule — if it's not linked, it's not a source — the single richest operator account in the corpus currently doesn't count. Where does that video live?

## B4 · Forty-five minutes with counsel
**Cost:** one meeting. **Unblocks:** whether defensibility can be said out loud at all.

The "risk register shifts risk to the client" story is **unsubstantiated** — no tested case law, no carrier practice, and one named case (Involta) where the MSP's own marketing copy was used to pierce its documentation. Until this is answered, defensibility stays out of every deck.

Three questions, in this order:

1. **Does machine-identification of a risk that is *not* communicated to the client create duty exposure — for the MSP, or for N-able?** *(This is the reverse-direction question and it's first for a reason: automated detection expands the record of what the MSP "knew or should have known." Volume of detection may be volume of exposure.)*
2. **If a coworker drafts a recommendation and dates it, whose professional judgment is on the page?** MSP, N-able, or the model. This decides whether N-able is a tool vendor or a co-advisor carrying a duty of care — a corporate-risk question wearing a product-decision costume.
3. **UK vs US.** No decided UK case establishes an MSP's duty of care extends to cybersecurity; the live litigation is US. Our advice sources are UK operators; our market is largely US.

Related, and someone should own it: **has anyone ever asked a cyber underwriter or MGA whether MSP documentation of client risk-acceptance affects premium, underwriting, or a claim?** We found nobody who has. It's one phone call and it either creates a category or closes it.

## B5 · Ask an actual MSP owner two questions
**Cost:** two questions in a call you're already having. **Unblocks:** two things that are currently unfalsifiable.

- **"What's the unit you're trying to produce more of?"** More EBRs delivered, or more projects closed? The entire constraint analysis in the process map is unfalsifiable until someone names it — cutting prep time is a local efficiency win that may just pile up work in front of a slower step downstream.
- **"Can I see your rate card and utilisation target?"** If a technician's hours come back to the service desk, that's recoverable capacity × a number the MSP already knows. **The business ROI everyone keeps calling Unknown is computable — nobody has asked.**

## B6 · One question to ten MSPs
**Cost:** one email, ten replies. **Unblocks:** the real size of the addressable market.

> *"How many of your staff can run an executive client meeting unaccompanied?"* — and total headcount.

If the answer is routinely two of nine, then the market isn't "MSPs," it's **MSP staff who can hold an executive room** — and nobody has counted them. Two independent lenses (self-determination theory, professional-services economics) say this is the governing growth constraint and that we wrote it off too fast.

## B7 · Verify Craig
**Cost:** minutes. **Unblocks:** the buyer half of the persona split.

Vanessa Chart is verified — real person, real title, real UK MSP, and her marketing/languages degree independently corroborates her claim to be deliberately non-technical. **Craig, the owner/partner, is not.** He's the *buyer* in the two-persona split, and that split sits under an open positioning fork.

## B8 · Two unopened reports
**Cost:** a download and a skim. **Unblocks:** possibly the number that decides everything.

- [Kaseya 2026 State of the MSP (full PDF)](https://pages.thechannelco.com/rs/329-KEI-124/images/Asset-1-Kaseya-2026-State-of-the-MSP-Report-2026.pdf)
- Syncro MSP Benchmark Survey (full report)

Looking for one thing: **how many QBRs/EBRs does an MSP deliver per client per year, and what share deliver zero.** Searched everywhere else — it does not exist in the published record. It decides whether Offering A is a sustaining play into a features race or a disruptive one into non-consumption.

---

# PART C — the calls that are yours, not research

These aren't tasks. They're decisions the tool is not allowed to make, and **the vision synthesis is paused at Step 2.5 waiting on the first three.**

**Resolved 2026-07-28:** alpha persona = the mature operator (dedicated client-delivery lead, EOS, PSA queue), non-doer second.

**Still open:**

1. **Positioning.** The buyer/user split is now doing the work: the *user* is the delivery lead, measured on opportunities raised and closed. The *buyer* is the owner, measured on enterprise value. One artifact, two audiences — and the JTBD read is that they can't share a landing page. Which one does the offering speak to?
2. **MVP spine.** Two voices converged once alpha was fixed — build the Env Health assembly / sever the service-desk dependency. Those are one build from two ends. Confirm, or pick differently.
3. **Confidence scope.** In as a differentiator, out as an enablement problem, or research-first via B6.
4. **Every `[0% Claude — fill this in]` bet sentence.** Still empty, still yours. That's the design, not an oversight.

---

*Companion to `.claude/skills/refresh-datadump/SKILL.md`. Sources for everything above: [ACP Secondary Research — MSP QBR/EBR Practice](https://n-able.atlassian.net/wiki/spaces/AI/pages/62226858351) · `briefs/ebr-process-map-2026-07-28.md` · `briefs/ebr-process-map-council-2026-07-28.md`.*
