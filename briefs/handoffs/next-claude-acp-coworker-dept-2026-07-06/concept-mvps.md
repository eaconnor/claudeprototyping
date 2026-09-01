# Three Ways to Build a Department
*Concept shapes for the ACP coworker department — Moore positioning, the real tenets, and the price tags nobody has yet. A research read, not a go/no-go.*

**Quick context:** the top use cases from the June study read like three capability bands — operational health, security/risk, business — with the QBR as the shared *voice* that narrates the other coworkers' work to the client. We've been calling that composition "the department." It's a hypothesis, tagged [A] everywhere it appears — nobody interviewed described it; the shape emerged from staring at the two ranking cuts until they blinked. (One caveat from the full tables: Employee Onboarding makes the mentions top-5 and fits no band — the model has a loose end, noted rather than hidden.) The read-out lives in `product-experience-research.md`. This document does one job: lay out the three shapes the department could take, so choosing between them is a decision and not a drift.

Tags, quickly: [R] researched · [D] data · [A] assumed · [?] we don't know. Every value *direction* below is grounded. Every value *magnitude* is [?] — named, not invented. I'd rather show you a gap than a made-up number; made-up numbers are how 237-page consulting reports end up in the news.

**One thing all three shapes share:** the same thin MVP underneath — the trust wedge. One real connection to a design partner's actual tools (never faked), one draft for one customer, every number drillable to its source *and* every finding traceable to the coworker that produced it, gaps shown to the MSP and never to their client, editable, one export, read-only, and a **review step built as a gate, not a glance** — a human affirms each claim before it can face a client. What differs between the shapes isn't the wedge. It's which band anchors the money, who's buying, and what feeds the hub.

Each shape uses Geoffrey Moore's old positioning template — *for [target] who [need], the [product] is a [category] that [benefit]; unlike [alternative], ours [differentiator]*. I like it because it's a truth serum: if you can't fill in that sentence without fudging, you don't have a concept. You have a mood.

---

## Shape 1 · A-biz — The Business-Led Spine
*The demand data's loudest voice leads.*

> **For** mid-size SMB MSPs (20–100 clients) who want to be every client's trusted strategic advisor,
> **who** burn senior hours each quarter hand-assembling QBRs and walk into the meeting with numbers they can't defend,
> the **ACP Coworker Department** is an **AI operating layer for the client relationship**
> where **operational and security coworkers do the work all quarter, and the QBR coworker narrates it — every number traceable to the coworker that did it, teeing up the one decision that grows the account.**
> **Unlike** ScalePad's operating system (whose signals are asset-lifecycle records) or deck-generating copilots (which write slides, not evidence),
> **our department's signals come from coworkers that actually did the operational and security work.**

**Why this shape has a claim:** the QBR is the #1-demanded coworker on *both* cuts of Nicole's ranking [D — n=8, directional]. If you're going to lead with anything, the data says lead with the thing four of eight sophisticated buyers put at the top of their list.

**What it's really betting on:**
1. That the hub can compose coworker findings into a client story ending in one decision. This is the core architecture bet, and nobody has ever tested it. Anywhere. [A]
2. That the human stays the author — the vCIO shapes the story at the review gate. Theory says this matters enormously; data says nothing yet. [A]
3. Read-only, human-sends — which makes the entire "what if the AI does something" conversation evaporate before it starts. [R — universal in the study]

**Where it hurts:** two structural headwinds, both real. Buyers already ask "shouldn't my RMM just include this?" — which caps what anyone will pay [R — their words, not mine]. And the data this spine feeds on flows through *rival-controlled* APIs — ConnectWise owns BrightGauge and competes directly with N-able. Think about that supply chain for a second. The moat can be squeezed from a competitor's office.

**Value, with the gaps showing:** prep hours become minutes (the direction is real [D]; the magnitude is unverified [?]); credibility in the room; platform stickiness. *What we can't tell you: the retention-lift number, and whether composition actually produces decisions no single coworker could. Zero evidence either way [?].*

---

## Shape 2 · A-sec — The Security-Led Spine
*Where the council's evidence tilts.*

> **For** MSPs building or selling a vCISO practice,
> **who** need CISO-grade security operations they can deliver — and prove — to SMB clients without hiring a CISO,
> the **ACP Coworker Department** is a **vCISO practice engine**
> where **security coworkers (incident response RCA · tabletop exercises · posture, fed by Adlumin) do the security work, and the QBR coworker narrates it to the client as a billable, defensible security story.**
> **Unlike** posture-assessment platforms (a score without operations) or one-off security reports,
> **our department does the security work all quarter and makes it a resellable service line — not a reporting feature.**

**Why this shape has a claim — and the interesting part is that there are four independent reasons.** When 44 analytical frameworks read the reframed brief, four tilted security-led, each from a completely different direction:

- **The ground is emptier.** Everyone and their Copilot generates QBR decks. Far fewer people do operational security narration.
- **The supply chain is yours.** This spine feeds on Adlumin, which N-able *owns*. The business spine feeds on competitors' APIs. One of these can be throttled by a rival on a Tuesday; the other can't.
- **It sells revenue, not margin.** A vCISO practice is something the MSP *bills clients for* — an expansion sale. It doesn't negotiate with the "should be free in my RMM" ceiling; it walks around it.
- **It sits deeper on the need stack.** The business QBR protects esteem — looking strategic. The security story protects *safety* — not getting breached. Ask Maslow which one wins.

Plus the demand shape itself: **IR RCA and Security Tabletop make the top five on both cuts of the ranking — the only band that does** [D]. (The stronger "4 of top 5 are security-flavored" version holds on the forced-rank cut only; the mentions cut says 2 of 5. Cut-dependent, so we hold the weaker claim.) And MSPs offering vCISO services roughly tripled year-over-year [CS: MEDIUM, WOBBLY — that number comes from Cynomi, a vendor with every interest in it being true; take it as directional and nothing more].

**Where it hurts — and this part matters, so don't skim it:**
1. **The whole spine hangs on one unanswered question:** can Adlumin data actually flow into ACP coworkers as a signal source — or does Adlumin run as its own product lane inside N-able? That's an org question. It gets answered in one internal conversation (we've named it Gate C). If the answer is no, this shape collapses before anyone evaluates it. [?]
2. **Asymmetric tail risk.** If a business QBR narrates something wrong, the MSP looks sloppy — embarrassing, survivable. If the *security* narration says "your tabletop passed, you're covered" and it's wrong and a breach follows? That's liability. Potentially existential for the MSP. On this spine, the review gate isn't nice UX. It's the insurance policy.

**Value, with the gaps showing:** a new resellable service line — revenue, not efficiency — and the only spine whose feed N-able fully owns. *What we can't tell you: vCISO attach rates and pricing [?]. The market-size figures floating around have no named research firm behind them [CS: LOW], so they don't get cited here. Yes, that leaves a gap. Better a gap than a made-up number.*

---

## Shape 3 · C′ — The Beachhead
*The fastest defensible start. Explicitly not an endgame.*

> **For** N-able MSPs who want the trusted QBR now,
> **who** can't wait for five coworkers to exist,
> the **QBR Coworker (Department Preview)** is a **narration hub fed directly by N-central / N-sight / Adlumin data**
> that **generates the client-ready, provenance-drillable review today — and becomes the department's voice as each coworker band comes online.**
> **Unlike** shipping a standalone QBR generator (which under-reaches against ScalePad's positioning) or waiting for the full department (the slowest possible way to learn anything),
> **our beachhead tests the narration hub and the trust chain now, with signals simulated from tools we already own.**

**Why it exists:** the department has a chicken-and-egg problem, and pretending otherwise would be silly. The hub's whole value is narrating coworker work — but the other coworkers don't exist yet. Ship the hub alone and it's just another deck generator. Wait for all five and you learn nothing for a year. The beachhead threads it: the QBR pulls signals *directly from N-able's existing tools*, standing in for the coworkers that will eventually produce them.

**The tenet that matters most: the pretense goes on the tin.** Tool data standing in for coworker judgment is a simulation, and the doc, the demo, and the test partners all get told so. What this shape deliberately *cannot* test is the department's central claim — that composed findings produce decisions no single coworker could. We say that out loud rather than letting a slick demo imply it's proven. (A slick demo will absolutely imply it's proven. That's what slick demos do. Hence the label.)

**Where it hurts:** MSPs with heavily mixed, non-N-able stacks will find it thin [?]. And there's a transfer question I can't resolve from here: is trust earned by tool-data provenance the same trust as coworker-judgment provenance? Maybe. Maybe not. [?]

**Value, with the gaps showing:** fastest time-to-learning, lowest build risk, and it converts the hub's biggest failure mode — nothing to narrate — into a sequencing plan.

---

## The three shapes, side by side

| | A-biz · Business-led | A-sec · Security-led | C′ · Beachhead |
|---|---|---|---|
| Commercial anchor | Trusted-advisor QBR motion | **Billable vCISO service line** | QBR preview |
| What feeds the hub | Ops + security coworker signals | Adlumin + security coworkers | N-able tool data (simulated signals) |
| Economics | Bundled / retention | **Revenue (resellable service)** | Bundled / entry |
| Supply chain | Rival-controlled APIs ⚠️ | **N-able-owned (Adlumin)** | N-able-owned |
| Tail risk | Credibility (embarrassing) | **Liability (existential)** ⚠️ | Low |
| Tests the composition claim? | Eventually | Security-first | **No — declared pretense** |
| Build risk | Medium | Medium + org risk | **Low** |
| What decides it | Gate B (pricing/frame) | **Gate C (Adlumin), then B** | Nothing — it's the start state |

**The ladder: C′ → A(pick a spine) → the cross-vendor moat.** Ship the beachhead. Decide the spine when Gate C answers — one internal conversation about whether Adlumin can feed the coworkers — and not a day before. Why choose blind when the answer costs a meeting? Then extend to true cross-vendor normalization and the network effect (the long-game moat) once composition and willingness-to-pay have proven out. Spend the least money before the riskiest unknowns close.

These aren't three competing pitches. They're one path with a fork in it — and the fork has a gate with a name.

---

## Honor check
- **Judgment held by Beth, Meaghan, and Nicole:** which spine, which path, when. The council's four-axis tilt toward A-sec is surfaced testimony, not the tool's recommendation. (The tool doesn't get a vote. That's the whole point of the protocol.)
- **Mechanics assisted:** Moore positioning structure, tenet extraction, value mapping from evidence already gathered.
- **No magnitude invented:** every ROI number here is [?] with the instrument to close it named. The Cynomi vCISO figure stays [CS: MEDIUM, WOBBLY-vendor]. The vCISO market-size numbers stay uncited. The beachhead's simulation is printed on the tin, not tucked under it.
