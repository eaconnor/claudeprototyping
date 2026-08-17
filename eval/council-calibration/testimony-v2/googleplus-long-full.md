MEAL tier — 5-voice council pass, single brief, no build/critic loop. Est. cost ~3.2 ml water / 0.38 g CO2e.

---

# Council Testimony — Circles (googleplus-long.brief.md)

**Gate 1 status:** Unverified. Problem statement is tagged [A] ("internal thesis, not sourced from non-users of the dominant network"). `evidence_sources` explicitly states no cited research exists on unmet audience-control need. OKR key result and counter-metric are both [?]. Per Section 9 of the governing framework: if >30% of claims are [A] or [?], the brief is not ready. A rough count here — problem statement [A], OKR KR [?], counter-metric [?], Gate 2 bet [A], Gate 3 forced-signup claim [D] but its consequence [?], both "what's missing" items [?] — puts this brief well over that threshold. Running council against it produces commentary on a bet, not analysis of a validated problem. Continuing per instruction, but naming this first.

---

### Jobs-to-Be-Done — the brief describes a feature, not a hired job

- The brief names a *capability gap* ("single-audience sharing model") but never names the job. Is the job "manage my reputation across contexts" (social job), "avoid an awkward overshare" (emotional job), or "coordinate logistics with a subgroup" (functional job)? Without that distinction, "granular circles" is a solution looking for its job.
- The brief itself admits the gap: "[?] No data cited on how many users actively want granular circles versus tolerate current sharing norms." Tolerating friction is not the same as hiring a new tool to remove it — Christensen's whole point is that people don't switch jobs-to-be-done providers for marginal feature improvement; they switch when the current solution is *actively fired*. Nothing here documents firing behavior on the dominant network.
- The Gate 2 bet — cross-product integration will "seed adoption faster than a standalone app could" — is a distribution strategy, not a jobs argument. Faster adoption of a job nobody is hiring for is just faster inflation of the vanity metric the brief itself flags in Failure Mode 1.
- Mandatory sign-up through mail/video/photos is the sharpest JTBD tell here: those are jobs the user already hired those products for. Circles is riding along, not being hired.

**Strongest objection:** The brief never states what existing solution gets fired when Circles gets hired. Without that, this isn't a JTBD case — it's a distribution plan wearing a JTBD costume.

**Verdict:** Weak.
**Why this strength:** Zero sourced evidence of job dissatisfaction on the incumbent, and the brief's own evidence_sources field admits it. [CS: this reflects the brief's self-reported evidence gap, not external verification.]

---

### Service Blueprint — stage-appropriate score: not assessable as a build, assessable as a bet

Applying the stage rule: this is a Gate 1–3 *draft brief*, not a build spec. A frontstage/backstage teardown of screens and handoffs would be premature — there's no flow to critique yet. What the framework *can* fairly assess at this stage is whether the brief anticipates the operational seams its own bet creates. Scored on that narrower, stage-appropriate basis:

- The brief creates a real backstage problem it doesn't address: mandatory account creation via mail/video/photos means support, onboarding, and identity-management processes now have to handle users who never asked for a social identity. None of that operational load is named.
- "Signed-up user counts must reflect genuine engagement, not just forced sign-up" (the counter-metric) is a *measurement* fix bolted onto a *service design* problem. The actual backstage fix — a distinct, opt-outable enrollment flow, separate from the mail/video/photos signup — isn't proposed. The brief treats this as a metrics-team problem when it's a flow-design problem.
- No visible line of interaction is described anywhere in the brief — there's no mention of where a user first *sees* they've been enrolled in a social product versus where the org silently provisions it. At the concept stage that's acceptable to leave open; it is not acceptable that the brief doesn't flag it as an open question. It's absent, not deferred.

**Strongest objection:** Even graded on a stage-appropriate curve, the brief mistakes a service-design failure (silent, mandatory enrollment) for a metrics-design failure (the counter-metric). Those need different fixes, and the brief only proposes the second.

**Verdict:** Weak-for-stage.
**Why this strength:** At concept stage, absence of a flow diagram is expected and not penalized; absence of *any acknowledgment* that mandatory cross-product signup creates an operational/support seam is a gap the brief could have named even at this stage and didn't.

---

### Self-Determination Theory — autonomy is structurally violated by the brief's own admitted mechanism

- Autonomy: "Sign-up is required to use several existing products, rather than purely opt-in" [D]. This is the most direct SDT violation available — the brief documents, in its own Gate 2 language, that users do not choose this. Autonomy isn't just under-supported here; it's actively overridden by design.
- Competence: nothing in the brief describes whether users understand *why* a post is visible to one circle and not another, or whether the mental model of "circles" is legible without instruction. Granular controls that aren't legible increase perceived complexity rather than perceived competence — the brief doesn't address this risk at all.
- Relatedness: the entire pitch is that circles let you relate differently to different groups — this is the one dimension the concept is nominally built for. But relatedness through a forced-enrollment mechanism is compromised at the root: relating to a group you didn't choose to join isn't relatedness, it's exposure.
- The brief's own Failure Mode 1 (vanity metrics from forced signup) is functionally an SDT autonomy violation restated in business terms. The two frameworks are pointing at the same wound from different angles.

**Strongest objection:** A product whose core value proposition is "control who sees what" is delivered via a signup mechanism that removes the user's control over whether to be signed up at all. That's not a peripheral tension — it undercuts the pitch's own premise.

**Verdict:** Weak.
**Why this strength:** The autonomy violation is [D] — documented in the brief itself, not inferred by this framework. This is the rare case where the objection is fully sourced by the brief's own tagging.

---

### Disruptive Innovation — this reads as sustaining-by-imitation, not disruptive, against a locked incumbent

- The bet described is feature parity (granular audience control) plus bundling distribution (mail/video/photos), aimed at users already served by the dominant network. That is a sustaining play into an existing market, not Christensen's disruption from below — there's no simpler/cheaper/underserved-segment entry point named anywhere in the brief.
- Failure Mode 2 names the real threat directly: "Network effects are already locked in by the dominant competitor; a late entrant needs a genuinely distinct reason to switch or dual-use, not just feature parity plus integration." The brief diagnoses its own strategic weakness correctly and then doesn't resolve it — Gate 2's bet is exactly the "feature parity plus integration" play the brief warns against.
- Who defends position if this lands? The dominant network's core asset is the graph, not the sharing UI — a late entrant copying the UI doesn't threaten the graph. Bundled distribution through mail/video/photos does put competitive pressure on adjacent products, but the brief frames Circles as defense of "the identity/social layer," not offense on distribution — a strategic mismatch between the OKR objective and the actual competitive lever the play uses.
- No underserved segment is named. Disruption theory requires someone the incumbent is *structurally motivated to ignore* (unprofitable users, over-served use case, etc.). This brief has no candidate for that segment — it's aimed at the same users the incumbent already serves well.

**Strongest objection:** The brief's own Failure Mode 2 already makes this framework's case. There is no answer in Gate 2 or Gate 3 to the objection the brief raises against itself.

**Verdict:** Weak.
**Why this strength:** Sourced from the brief's own failure-mode language, not external market data — this is an internal self-contradiction, not a speculative critique.

---

### Value Chain — the chokepoint being contested is distribution, and the brief undersells that it's the only real leverage it has

- The actual value-chain move here isn't "better sharing UI" — it's using ownership of mail/video/photos as a distribution chokepoint to force reach into a market segment (social/identity) currently controlled by a competitor. That's the one genuinely defensible strategic asset in the brief, and it's stated as a side effect ([D], forced signup) rather than owned as the strategy.
- Margin effect is ambiguous and untagged: does Circles protect margin (keeps users inside the ecosystem, reducing churn to a competitor's suite) or does it dilute margin (support cost of onboarding unwilling users, counter-metric instrumentation cost, brand-trust cost of forced enrollment)? The brief names the second set of costs implicitly (Failure Mode 1) but never states a margin thesis explicitly.
- Chokepoint control: the dominant competitor controls the social graph chokepoint; this bet controls the distribution chokepoint (mail/video/photos install base). Two different chokepoints, two different kinds of power — the brief conflates them by treating distribution reach as if it substitutes for graph control. It doesn't; users forced in via distribution don't bring their graph with them, which is exactly why Failure Mode 1 exists.
- No cost-side data anywhere in the brief — support load, engineering cost of integration, brand cost of forced-signup backlash. The brief is entirely revenue/adoption framed with zero cost-of-chokepoint-defense accounting.

**Strongest objection:** The brief uses its strongest actual asset (distribution chokepoint across mail/video/photos) as an implementation detail rather than the stated strategy, while spending its OKR language on a chokepoint (the social graph) it has no credible path to contesting.

**Verdict:** Weak.
**Why this strength:** The margin-effect claim is entirely absent — not even [A]-tagged — which is a lower evidentiary bar than the rest of the brief clears elsewhere.

---

> Jobs-to-Be-Done and Disruptive Innovation converge on the same underlying flaw — no distinct, underserved job or segment is named — from two different vocabularies. That's not a contradiction to route, it's the same finding said twice, which should raise this brief owner's confidence that it's real rather than framework-specific noise.

> Service Blueprint and Self-Determination Theory diverge on *where* the forced-signup problem lives: Service Blueprint locates it as an unaddressed operational/flow-design gap; SDT locates it as a psychological autonomy violation baked into the core value proposition. Both are correct simultaneously — this is a decision, not a gap, and it determines whether the fix is a design-team flow change or a strategy-team repositioning of the OKR itself. Route to brief owner.

[0% Claude — fill this in]
