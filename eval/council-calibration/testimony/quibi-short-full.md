# Council Testimony — Quibi (brief: `quibi-short.brief.md`)

**Brief as written:** "Quibi — a mobile-only, no-TV-app streaming subscription of premium short-form 'chapters' for commute gaps."

**Gate 1 status: unverified/empty.** The brief is one sentence describing the product, not a sourced customer problem. No research citation, no data, no named user pain point — only a product description. Voices below are testifying against a known historical case (Quibi, launched April 2020, shut down December 2020) using public-record facts [CS: HIGH unless noted], not against sourced brief evidence. Treat this as commentary calibrated to a real outcome, not analysis of a validated brief.

---

### Jobs-to-Be-Done (Christensen / Ulwick) — the job in the brief was never sourced, only assumed

- The stated job — "fill commute gaps with premium short content" — is a functional job the brief asserts, not one it demonstrates was hired anywhere. There's no evidence in the brief that commuters were underserved for this job; podcasts, mobile games, and social feeds already occupy dead time, largely for free [CS: MEDIUM — general market knowledge, not brief-sourced].
- The no-TV-app constraint fires the job the moment the commute ends. A user who finishes a "chapter" on the train and wants to continue on the couch has to re-hire Netflix or YouTube — the product designed itself out of the job it would need to retain, not just win.
- Emotional/social job is absent from the design: no sharing, no clips, no watercooler mechanic. If the actual hired job for short-form video has a social component (as TikTok's does), Quibi competed on functional job alone against products winning on functional + social.
- Timing collision: the job "commute gap" was largely deleted by COVID-19 lockdowns at launch [CS: HIGH — public record, April 2020 launch coincided with global stay-at-home orders]. A brief this thin has no mechanism to catch that the premise itself evaporated.

**Strongest objection:** JTBD would refuse to run council on this brief as written — there is no job evidence, only a format description ("chapters," "mobile-only") mistaken for a job statement. Product-out reasoning dressed as customer-in reasoning is the single biggest risk this framework can name.

---

### Service Blueprint (Shostack / Bitner) — no failure/recovery path for the one dependency that mattered most

- Frontstage is single-device, single-context (mobile, commute). Backstage is enormous: ~$1.75B raised, Hollywood-grade production deals, premium licensing [CS: HIGH — widely reported raise figure]. The backstage investment is sized for a mass-market outcome; the frontstage promise is sized for a narrow moment-of-day use case.
- The handoff the brief doesn't address: what happens to the backstage-produced content when the frontstage context (commuting) disappears. There's no described service recovery — no web player, no TV app, no fallback — when the environmental assumption breaks.
- "Turnstile" format (can't rotate/resize certain content across orientations) is a backstage technical decision that surfaces frontstage as a visible constraint to the customer — the user experiences a backstage engineering choice as "this app doesn't work the way other apps do."
- No support process is named for content discovery once outside the commute frame — the brief has no answer for weekend, WFH, or non-mobile viewing, which is the majority of viewing time for comparable services [CS: MEDIUM].

**Strongest objection:** the blueprint has no contingency layer at all. A blueprint built entirely on one environmental assumption (people commute, people don't want TV) with zero fallback path is not a resilient service design — it's a bet with no hedge, and the brief presents the bet as the product.

---

### Self-Determination Theory (Deci / Ryan) — the design actively worked against the needs that drive habitual use

- Autonomy: mobile-only, no-TV-app is a removal of user choice relative to every direct competitor (Netflix, YouTube, Hulu), which let users pick device by context. Restricting the *how* removes autonomy precisely where competitors were adding it.
- Competence: "chapters" implies serialized mastery (following a story), but format fragmentation without cross-device continuity undercuts the sense of building toward something — competence in following a narrative is interrupted by the same constraint that was meant to serve the commute job.
- Relatedness: no sharing, no clips, no screenshotting was reportedly possible at launch [CS: MEDIUM — widely reported at the time, not independently re-verified here]. This forecloses the social loop that sustains habitual short-form engagement (compare TikTok's share-first design). Relatedness isn't just unsupported — it's structurally blocked.
- Trust model: users are asked to trust that dead-time viewing is worth a subscription price, with no free tier or low-commitment entry named in the brief — no on-ramp that lets a user build competence/trust before paying.

**Strongest objection:** SDT would say this isn't a gap, it's an active violation — the mobile-only, no-share, no-continuity design choices don't merely fail to support autonomy, competence, and relatedness, they were specifically engineered against them, and post-launch reporting attributed churn directly to this [CS: MEDIUM].

---

### Disruptive Innovation (Christensen) — a disruptive insight funded and executed like a sustaining play

- The underlying customer insight (short bursts of attention in dead time) has disruptive shape — a "non-consumption" moment nobody was serving with premium video. But the execution — Hollywood budgets, star talent, big licensing deals — is a sustaining-innovation cost structure [CS: MEDIUM — reported per-minute production costs in the hundreds of thousands of dollars].
- Christensen's theory requires disruptive entrants to win on simplicity/cost/accessibility at the low end or in a new market, then move up. Quibi entered at premium cost with premium content — there was no low-end wedge, no cheap-and-good-enough foothold to build a base before competing on quality.
- Who had to defend: essentially nobody. Netflix, YouTube, and TikTok did not need to respond, because Quibi's cost structure and distribution made it non-threatening to their business models — a signal the "disruption" framing doesn't hold.
- No existing solution was meaningfully fired: podcasts and TikTok kept the dead-time job, mobile games kept it, YouTube Shorts (launched shortly after) took the format without the cost structure.

**Strongest objection:** this is the mirror image of the incumbent's dilemma — an entrant behaving like an incumbent (heavy capital, premium positioning, defend-the-category instincts) chasing a market that only a disruptive, low-cost approach could have opened. The brief gives no indication anyone tested whether the "job" could be won cheaply before betting the whole treasury on premium execution.

---

### Value Chain (Porter) — inserted at the most contested layer with no lever to defend margin

- Quibi inserted itself directly in content exhibition/distribution — the same layer as Netflix, YouTube, and TikTok — with no telco bundle, no device-default placement, no exclusive distribution deal named in the brief.
- Margin effect is negative, not neutral: premium licensed/produced content carries Hollywood-level cost per minute [CS: MEDIUM] with a subscription-only model and (at launch) no ad tier [CS: HIGH], while competing formats (TikTok) monetize the same attention window at near-zero marginal content cost via UGC + ads.
- Chokepoint control: none. Mobile-only cedes control to Apple/Google's app-store and OS layer; "commute" as the target moment is not an owned channel (no transit partnership, no carrier bundle) — the company built its whole thesis on a moment-of-day it had no contractual or infrastructural claim to.
- No described mechanism protects margin against the two forces that actually decide margin in this layer: content cost per attention-minute, and control of the distribution chokepoint. Both point the wrong direction here.

**Strongest objection:** Porter's chain would say the company spent premium capital to occupy the layer of the value chain with the least defensible economics and the fewest owned chokepoints — high fixed content cost, no distribution lever, no bundling partner, competing against free or ad-subsidized alternatives at the exact same attention layer.

---

> **Named divergence 1 — Jobs-to-Be-Done vs. Disruptive Innovation:** JTBD treats "commute-gap dead time" as a plausible, if unsourced, job worth serving. Disruptive Innovation treats the same insight as directionally sound but disqualified by execution — the cost structure of a sustaining play grafted onto a disruptive-shaped opportunity. Whether the premise or the execution is the primary failure point is a decision the brief owner has to make, not something these two frames resolve on their own.

> **Named divergence 2 — Disruptive Innovation vs. Value Chain:** DI locates the failure in cost structure (premium spend where disruption theory calls for low-end entry). Value Chain locates the failure in chokepoint absence (no owned distribution lever regardless of cost). These are two different diagnoses of the same collapse — one says "you spent wrong," the other says "you had no leverage no matter what you spent." Route both to the brief owner; do not collapse them into one root cause.
