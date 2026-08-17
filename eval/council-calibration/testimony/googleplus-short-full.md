# Council Testimony — Google+ ("Circles"-based social network, mandatory cross-product sign-up)

**Gate 1: UNVERIFIED.** The brief is one sentence with no sourced customer problem, no user research, no metrics, no stated business goal. There is no citation trail — everything below is the council reasoning from general/historical knowledge of what shipped, not from anything in this brief. Treat this as commentary on a concept, not analysis of a validated plan.

### Jobs-to-Be-Done (Christensen / Ulwick) — Mandatory sign-up assumes a job nobody hired for

- The brief names no job. "Circles" solves a *sharing-context* job (share different things with different groups) — but mandatory integration across mail/video/photo assumes users were hiring Gmail, YouTube, and Picasa to also do *social networking*. [CS: HIGH — well documented in retrospectives on Google+'s 2011–2015 run that this conflation was the central criticism.]
- The job actually being fired here is likely "identity management" — Google+ became the de facto identity layer (YouTube comments, Gmail profiles) whether or not the user wanted a social network. Forcing the job changes it from a functional job (organize contacts) to an imposed structural job (exist in Google's identity graph).
- No emotional or social job is named. Circles is a *feature* (segmentation), not a *reason to switch* from Facebook, which had already won the social job for most users. [CS: MEDIUM — Facebook's dominance by 2011 is well known; the specific displacement dynamic is inference.]

**Strongest objection:** This brief describes a mechanism (Circles, mandatory sign-up) with zero customer problem attached. JTBD cannot evaluate a solution with no job stated — the "job" has to be reverse-engineered from the feature, which is backwards and exactly the failure mode this framework exists to catch.

---

### Service Blueprint (Shostack / Bitner) — The handoff is invisible and involuntary

- "Mandatory sign-up across mail, video, and photo" is a frontstage forcing-function with no visible consent step described. The user doesn't choose to enter Google+; they're migrated into it while trying to do something else (check email, watch a video). That's a backstage business decision (identity unification, ad targeting infrastructure) wearing a frontstage costume.
- No support process is named for what happens when a user's existing product relationship (Gmail, YouTube) is altered by a product they didn't ask to join — no opt-out path, no clarity on what data now flows where.
- Blueprint asks: where does the human hand off to the system? Here the answer is "at account creation, silently" — the brief doesn't even acknowledge a handoff exists, which is itself the finding.

**Strongest objection:** A one-line brief cannot spec a service blueprint because there's no journey described at all — only an endpoint (mandatory integration). The frontstage/backstage question this framework asks can't be answered; it can only be flagged as *absent*.

---

### Self-Determination Theory (Deci / Ryan) — Mandatory sign-up is the textbook autonomy violation

- **Autonomy:** directly undermined. "Mandatory" is the operative word in the brief — the defining SDT variable is removed by design, not as a side effect.
- **Competence:** Circles asks users to actively categorize their entire social graph into named groups — a heavier cognitive lift than Facebook's flat friend list. Users who don't do this well (most people, per later research on Circles adoption) feel less capable, not more. [CS: MEDIUM — low Circles engagement post-launch is widely reported but the specific competence-framing is my inference.]
- **Relatedness:** paradoxically, forcing integration across products people already used for unrelated purposes can *reduce* felt connection — it recontextualizes private tools (personal email) as public-adjacent (social) without the user choosing that recontextualization.
- No trust model is described at all. SDT would ask: does the user still feel in control of what's shared where? The brief's own word choice ("mandatory") answers that question before any design work happens.

**Strongest objection:** This is the voice with the most to say and the least ambiguity — the brief's core mechanism (mandatory sign-up) is close to a direct violation of the autonomy pillar, not an edge case. Any brief that requires forced enrollment should carry this objection in its Gate 2, and this one has no Gate 2 language at all.

---

### Disruptive Innovation (Christensen) — This is sustaining-by-force, not disruptive

- This is not a disruptive play (simpler, cheaper, new-market) — it's a sustaining move dressed as competitive response: bolt a social layer onto an existing dominant product suite to defend/extend Google's position against Facebook. [CS: MEDIUM — the historical read of Google+ as a Facebook-defensive move is common in retrospectives, not sourced in this brief.]
- Christensen's model says incumbents lose by ignoring low-end/new-market entrants, not by out-featuring a direct competitor. Mandatory integration is a distribution-power move (leverage Gmail/YouTube's existing user base), not a disruption of the social networking value proposition itself.
- Who has to defend? Facebook, in theory — but the brief gives no evidence Facebook's job was vulnerable to this attack. Distribution force ≠ product superiority; forcing reach doesn't create switching, it creates resentment, which is a different outcome than disruption theory predicts for a winning play.

**Strongest objection:** Christensen's framework is close to inapplicable here because the brief describes a distribution tactic, not an innovation in the job-to-be-done or business model. Calling this "disruptive" would be a category error the brief invites by not stating its competitive theory.

---

### Value Chain (Porter) — The chokepoint is identity, and Google already controlled it

- The capability inserts at the identity/authentication layer — Google account = mail + video + photo already. Adding mandatory social identity doesn't create a new chokepoint, it *exploits* an existing one (single sign-on) to force adoption of an unrelated product.
- Margin effect: this is presented as margin-*seeking* (new ad-targeting surface, richer identity graph for monetization) rather than margin-*protecting* — but the brief gives no data on whether the existing mail/video/photo margin was at risk, so the strategic rationale (why force this now) is entirely assumed.
- Whoever controls the identity chokepoint (Google, in this case) can compel adoption without earning it on the product's own merits — which is a value-chain power move, not a value-creation move. Porter's model would flag this as extraction (using existing leverage to force reach) rather than the surplus-value creation this shop's own values doc calls for. [CS: UNKNOWN — no margin data exists in the brief; this is structural inference from the mechanism described, not sourced.]

**Strongest objection:** Value Chain can describe *where* the power sits (identity chokepoint) but the brief supplies no margin, retention, or competitive data — every ROI claim this framework would want to make is `[?]`.

---

**Named divergence:** Disruptive Innovation and Value Chain converge on reading this as an incumbent-leverage play rather than genuine innovation — but Self-Determination Theory and Service Blueprint independently arrive at the same brief being actively harmful to the people on the receiving end of that leverage. JTBD sits underneath both: there's no stated job, so neither "smart competitive defense" nor "user-hostile mechanism" can be confirmed — only the *mechanism itself* (mandatory sign-up) is verifiable from the one sentence given. That mechanism is what all five voices independently object to, from five different angles — which is itself the finding: a one-line brief with a forcing-function in its only sentence doesn't need five frameworks to reveal a problem, it needs Gate 1 filled in before any of these testimonies can move from *plausible* to *evidenced*.
