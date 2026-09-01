# Council Testimony — PageRank Search Brief

**Tier:** MEAL
**Brief:** eval/council-calibration/briefs/google-long.brief.md
**Gate 1 status:** Not empty. Problem statement carries [D] (trade press) and [R] (internal technical work, unvalidated). okr_key_result and counter_metric are both [?]; evidence_sources mixes [D] with an unverified [A] founder observation. Thin, flagged, not blocked.

---

### Jobs-to-Be-Done — a quality bet with no proof anyone will switch for it

Functional job: find a specific answer without wading through keyword-stuffed spam. [CS: HIGH — contemporaneous complaints about AltaVista/Excite spam and keyword-stuffing are well documented in period trade press, consistent with the brief's own [D] tag]
Emotional job the brief implies but never states: trust that the ranking wasn't bought. The word "objective" appears in the brief's own failure-mode framing (line 24) — that's an emotional claim smuggled in as a functional one.
Product being fired: portal-style directories (Yahoo) and paid/keyword engines (AltaVista, Excite), which bundle search with email/news/directory browsing to hold attention on-page. [CS: HIGH — portal bundling as the dominant 1998 search business model is well established]
Social job: absent from the brief entirely. No mechanism named for word-of-mouth adoption — how does a two-person team with "no distribution deal with a portal" (line 21) get discovered at all?

**Strongest objection:** The brief tests relevance quality but never tests switching cost. Users complaining about spam in trade press is not the same evidence as users willing to change their homepage or default engine. okr_key_result ("beats incumbents on blind comparison" [?]) measures the wrong variable — comparison-test winning and habit-change adoption are different jobs, and the brief conflates them.

---

### Service Blueprint — the algorithm's backstage judgment is invisible on the frontstage

Frontstage is minimal: query box in, ranked list out. No visible attribution of *why* a result ranked where it did.
Backstage is where all the risk lives: web-scale crawling and indexing, "unproven at the cost structure required to stay free" (line 21) — a backstage capacity problem with no stated mitigation.
Hidden handoff: PageRank converts a link (an editorial act by a webmaster) into a "vote of quality" (line 15) and presents the aggregate as neutral ranking. That's an interpretive judgment happening backstage, delivered frontstage as fact — the user never sees the translation.
Support process the brief doesn't address: an adversarial ecosystem. The moment link-counting determines visibility, link manipulation becomes profitable. [CS: HIGH — link farms and reciprocal-linking schemes emerged as a direct response to link-based ranking, a well-documented history] Nothing in Gate 3 accounts for ongoing backstage anti-spam maintenance.

**Strongest objection:** The brief scopes this as a one-time quality win ("beats incumbents on blind comparison") rather than a continuous adversarial system. Service design would flag that shipping a ranking signal without a maintenance plan for gaming it is shipping half a system.

> Service Blueprint and Self-Determination Theory diverge on the word "objective" in the brief's own framing — Blueprint reads it as a hidden editorial judgment mislabeled as neutral fact; SDT reads the same framing as a legitimate competence/autonomy gain *if* the relevance claim holds. Same word, opposite read. Route to the brief owner.

---

### Self-Determination Theory — competence gain is plausible, relatedness is unaddressed, trust is untested

Autonomy: a ranked-by-relevance list plausibly increases user control over interpretation versus a curated directory — user queries directly instead of browsing a taxonomy someone else built.
Competence: if relevance genuinely improves, users find answers faster and feel more capable — but this is exactly the metric marked [?] in okr_key_result. The felt-competence gain is riding on unverified evidence.
Relatedness: undermined by omission, not design choice. Portals bundle news/email/community that give users a sense of being inside something larger; a bare search box has none of that. The brief doesn't treat this as a tradeoff — it doesn't mention it at all.
Trust model: the brief's own language ("objective results page," line 24) claims a trust property the product hasn't earned yet — no external validation of the ranking exists per line 15's own [R] tag.

**Strongest objection:** SDT would flag that the brief is optimizing for a competence metric that's unverified while ignoring a relatedness cost that's fully absent from the analysis. If the product wins on competence and loses on relatedness, SDT can't tell you which one determines retention — and the brief provides no data to decide.

---

### Disruptive Innovation — this reads sustaining unless a non-consuming segment gets named

Simpler, narrower product (search only, no bundled news/email/directory) attacking incumbents that compete on breadth and monetized placement — structurally this looks like a low-end/new-market entrant.
Who loses position: portal incumbents whose ad economics depend on pageviews and time-on-site (directory browsing, bundled content) — a product that answers the query and lets the user leave is directly hostile to that model.
What the incumbent defends: distribution. The brief names the gap itself — "no distribution deal with a portal" (line 21) — which is precisely the asset portals use to defend share.
Classic disruption theory requires an overlooked or non-consuming segment as the beachhead. The brief doesn't identify one — it names a quality complaint among existing searchers, not a population who couldn't search before.

**Strongest objection:** Without a named non-consuming or overserved segment, this brief can't be classified as disruptive with confidence — it may just be sustaining innovation (a better search product for people already searching), which is a different bet with different risk. The brief doesn't do the work to tell you which one it is.

> Jobs-to-Be-Done and Disruptive Innovation diverge here: JTBD reads the brief as displacing an existing job (bad search fired, good search hired) among current searchers — sustaining by definition. Disruptive Innovation needs a new-market or non-consuming wedge to earn the "disruptive" label, and the brief supplies neither. This is a framing decision, not a gap to fill — route it to the brief owner.

---

### Value Chain — no margin capture mechanism exists yet; this is a mission bet, not a product decision

Insertion point: sits at the information-discovery layer, a genuine potential chokepoint if it becomes the default gateway between users and web content.
Margin effect right now: negative. Gate 2 states plainly "no monetization model exists yet" [A], and Gate 3 states infrastructure cost at web scale is "unproven at the cost structure required to stay free" [?]. This is a cost center with no capture mechanism, not a margin play.
Chokepoint control: currently held by whoever owns distribution — browser defaults, portal homepages — not by this team, which the brief confirms has no distribution deal (line 21).
The brief's OKR is a mission statement ("organize the world's information") with no economic engine attached to it. That's coherent as a research bet; it is not evaluable as a value-chain position yet.

**Strongest objection:** Porter's framework can't classify a margin effect for a product that hasn't chosen where in the value chain it will extract value — ads, licensing, data, or something else entirely. Gate 2's own admission that "no monetization model exists yet" means this brief is not answerable on value-chain terms as written; it's a mission/technology bet wearing a product-brief format.

---

[0% Claude — fill this in]
