**MEAL tier** — ~3.2 ml water / 0.38 g CO2e equivalent for this pass.

# Council Testimony — `google-long.brief.md` ("PageRank Search")

**Gate 1 status:** Present, not empty. Problem statement is sourced to contemporaneous trade press [D], but the core technical claim (PageRank as link-vote ranking) is marked [R — internal, not externally validated], and one evidence source is explicitly "founder observation, unverified [A]." Gate is 30 — early Concept/Direction tier. Proceeding; Service Blueprint below applies the stage-appropriate scoring rule accordingly.

---

### Jobs-to-Be-Done — a real functional job, an untested emotional/social one

The functional job is clear and reasonably sourced: find the most relevant page without wading through keyword-stuffed or paid-placement junk [D]. The emotional job — relief from being manipulated by advertisers dressed as results — rides on the same [D] trade-press evidence. The social job is thin to absent; search in 1998 is largely a solitary act, and the brief doesn't claim otherwise.

What gets fired if this is hired isn't obviously the incumbents' *search* — it's their *ranking method*. The brief's own "what's missing" section names the real competitor to fire: the portal bundle (email, news, homepage) that currently drives return traffic regardless of result quality [?]. That's a different job — "give me a reason to come back" — that this brief does not claim to serve.

**Strongest objection:** The brief frames the job at the algorithm level ("better relevance") but never establishes that relevance is the job users are actually hiring search for, versus habit, homepage bundling, or portal stickiness. The evidence for "users want relevance" is trade-press complaint coverage [D], not direct evidence that relevance moves behavior away from bundled portals — that gap is named as [?] in Gate 2 and not closed.

**Verdict [this lens only]:** Good
**Why this strength, not one notch over:** Not Strong Good because the primary evidence is press commentary on incumbent quality, not user research showing relevance is the deciding factor over bundling. Would move up with any direct evidence users switch tools for relevance alone.

---

### Service Blueprint — backstage is absent, and that's expected at gate 30

Frontstage is a single input box and a ranked list — minimal, which is itself notable (no bundled content to route through). Backstage is genuinely unbuilt: crawling and indexing at web scale is unproven at the cost structure required to stay free [?], there's no ad product, no enterprise sales function, no distribution deal with a portal [D]. Per the stage-appropriate rule, none of that alone should move the verdict — a gate-30 brief is *supposed* to have unbuilt backstage.

The one item that survives that discount is failure mode #2: crawl/compute cost scaling faster than any revenue model can support at web scale. That's not "not built yet" — it's a claim about the backstage's fundamental economics that would still be true once built, and it's the closest thing here to a structural chokepoint (an unaffordable backstage regardless of execution quality).

There's also a visibility question independent of build stage: ranking-by-link-votes gives users no way to see *why* a result ranked where it did. That opacity is inherent to the mechanism, not a staffing gap — worth flagging in notes even though it doesn't currently break the model.

**Strongest objection:** The brief treats "no monetization model" and "unproven infra cost" as separate [?] items, but Service Blueprint reads them as one backstage risk: the support process (serving billions of free queries) has no funding mechanism named anywhere in Gate 3. If that gap is structural rather than sequencing, the stage-appropriate discount shouldn't fully apply to it.

**Verdict [this lens only]:** Good
**Why this strength, not one notch over:** Not Bad, because unbuilt crawling/indexing/sales infra at gate 30 is exactly what stage-appropriate scoring exists to not penalize. Not Strong Good, because the compute-cost failure mode is a cost-curve question that could independently break the model even once fully built — that one item stays live regardless of stage.

---

### Self-Determination Theory — autonomy gain, competence untouched, relatedness at risk

Autonomy improves relative to incumbents: ranking by link-structure rather than paid placement returns some control to the user, who is no longer choosing among advertiser-manipulated options [D] (per the trade-press framing of the incumbent problem). That's a genuine SDT gain over the status quo the brief describes.

Competence is not addressed anywhere in the brief — no mention of how a user would understand *why* a result ranks where it does. Replacing an opaque paid-placement system with an opaque link-vote system may improve outcomes without improving the user's sense of being able to reason about the tool. That's a first-order SDT question the brief doesn't even flag as [?], unlike most of its other gaps.

Relatedness is explicitly at risk: the brief's own "what's missing" names that users may prefer the portal bundle (email, news) over standalone superior ranking [?] — i.e., the connective/social value incumbents provide (a reason to return, a broader context) isn't replicated here.

**Strongest objection:** SDT would push back hardest on the silence around competence. The brief tags nearly every other uncertainty [?] or [A], but the legibility of the ranking mechanism to end users isn't tagged at all — it's simply absent, which SDT treats as a design omission, not a deferred implementation detail.

**Verdict [this lens only]:** Neutral
**Why this strength, not one notch over:** Not Good, because the autonomy gain is real but the competence dimension is entirely unaddressed rather than flagged-and-deferred — SDT doesn't give credit for an omission the brief itself didn't notice. Would move to Good if explainability were named as a known gap ([?]) rather than absent.

---

### Disruptive Innovation — a plausible low-end entrant with no named moat

Classic disruptor profile: two-person team, no enterprise sales function, no distribution deal with a portal [D], entering a market dominated by incumbents (Yahoo, AltaVista, Excite) whose revenue model depends on the exact mechanism (keyword density, paid placement) this product undermines [D]. The mission-before-monetization stance in Gate 2 [A] is a textbook disruptor posture.

Who has to defend: incumbents' advertiser-funded placement model is existentially threatened by non-gameable ranking, not just competitively pressured — a better ranking algorithm doesn't just outperform them, it invalidates the thing advertisers were paying for.

**Strongest objection:** Disruption theory wins on an identified overlooked or underserved segment, then moves upmarket. This brief doesn't name one — it competes directly on the metric (relevance) incumbents' own most-engaged users already care about, which reads as sustaining innovation in disruptor's clothing. Worse, the brief's own Gate 2 [?] concedes the core risk: "just a better free tool competitors copy" — if the ranking insight is copyable once published, there's no moat, and the disruptive story collapses into a feature incumbents absorb.

**Verdict [this lens only]:** Good
**Why this strength, not one notch over:** Not Strong Good, because the brief itself names the exact vulnerability (copyable algorithm, no distribution, no patent/data moat mentioned) that undermines durability — this is a real disruptive entry with no named mechanism to keep it disruptive rather than absorbed.

[ROI from this lens]
Business: Unknown — no revenue model exists [?]; disruption value here is optionality (market position), not measurable margin yet.
User: Better relevance, time saved per query vs. wading through gamed results — directionally real per trade-press complaints [D], not quantified in the brief.

---

### Value Chain — the right chokepoint, no named mechanism to hold it

This inserts at the discovery/access chokepoint of the emerging web value chain — between "content published" and "content found." That's a high-value insertion point in principle: whoever controls it controls the primary point of monetizable attention.

Margin effect today is negative-to-none: no monetization model exists [A], and the counter-metric on crawl/compute cost [?] means this could be a cost center for an extended period rather than a margin generator. Who currently controls the chokepoint is unambiguous — the portals — and they control it via a two-sided lock (homepage + bundled content) that superior ranking alone doesn't dislodge, per the brief's own "what's missing" note on portal stickiness.

**Strongest objection:** Porter's frame asks who controls the chokepoint, and the honest answer per this brief is: nobody yet, including this team. Crawling and indexing aren't defensible IP as described, and PageRank's core insight — treating links as votes — is publishable and therefore copyable once disclosed. A value-chain insertion with no margin model and no fenced mechanism is a feature, not yet a controlled chokepoint.

**Verdict [this lens only]:** Neutral
**Why this strength, not one notch over:** Not Good, because correctly identifying a valuable chokepoint isn't sufficient in this frame — Porter scores *control* of the chokepoint, and the brief hasn't named a capture mechanism (moat, distribution, or revenue model), all three of which are its own [?]/[A] tags. Would move to Good with a named distribution deal or a defensible data advantage.

[ROI from this lens]
Business: Unknown — we don't have this data; no revenue model named [?].
User: Unknown — no user-side time/error savings quantified in the brief, only directional complaint evidence [D] about incumbent quality.

---

> **Disruptive Innovation and Value Chain diverge on the same fact** — the absence of a distribution deal and revenue model [D]/[A]. Disruptive Innovation reads this as a classic resource-constrained entrant profile and scores it Good; Value Chain reads the identical fact as an unfenced chokepoint with no capture mechanism and scores it Neutral. This is a decision about how much weight "no moat yet" should carry at gate 30, not a gap in either analysis — route it to the brief owner.

> **Service Blueprint and Value Chain also diverge on how to treat unbuilt monetization.** Service Blueprint's stage-appropriate rule explicitly declines to penalize unbuilt backstage at gate 30 and lands on Good; Value Chain treats the same absence of a revenue model as evidence the chokepoint isn't yet controlled and lands on Neutral. Both are reading the same [A]/[?] tags in Gate 2/3 — the difference is whether "not yet built" and "not yet defensible" are the same risk. They aren't being treated as the same risk here, and that's a decision, not an error in either voice.
