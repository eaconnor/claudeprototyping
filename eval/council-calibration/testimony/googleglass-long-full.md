Gate 1 is unverified — problem statement is explicitly tagged `[A]` (technology-push thesis, no sourced user pain point), and the counter-metric and OKR key result are both `[?]`. Council voices below are commentary against an unsourced problem, not analysis against a validated one. Running per request; flagging before the record closes.

---

# Council Testimony — Glass Explorer Edition (googleglass-long.brief.md)

**Gate 1 status:** Unverified / Assumed. No cited research on demand for hands-free notification access, and no cited bystander-acceptance research. `evidence_sources` field itself names "no cited bystander-acceptance research" as an admitted gap, not a finding.

---

### Jobs-to-Be-Done — This is a solution hired by no one; the job was assumed backward from the capability.

- The brief lists four candidate jobs (notifications, photos, navigation, translation) at "roughly equal value" (Gate 3). JTBD requires ranking by struggle intensity and switching cost — a bundle of untested equal-weight jobs is the JTBD failure pattern (the "Swiss Army knife problem"): nothing hired because nothing is the priority.
- The problem statement is capability-first ("we can put a camera and display on a face") not struggle-first. JTBD would ask: what job is currently being done badly enough that a person would strap a visible camera to their face to fix it? The brief does not name this person or this moment of struggle.
- Functional job (hands-free capture, glance-notification) is plausible but unvalidated `[A]`. The emotional/social job is actively negative — wearing Glass signals something to bystanders the wearer doesn't control, which is a job the product does *to* the wearer, not *for* them.
- What gets fired if this succeeds: the phone-glance, which is a well-understood ~3-second social gesture bystanders already parse as "checking phone." Glass replaces a legible social gesture with an illegible one (staring at nothing, always-on camera). JTBD would flag that the "job" competes not against the phone's functionality but against the phone's social readability.

**Strongest objection:** JTBD cannot be run credibly on this brief because no primary job was named before the solution — the brief itself says so (Gate 3: "no clear single primary use case"). Any job I name here is retrofitted, same as the brief's own framing.

---

### Service Blueprint — The backstage failure is invisible to the one stakeholder who matters most: the bystander, who was never designed for.

- Standard service blueprints map frontstage (customer-visible) against backstage (customer-invisible) actions. This brief has a third party blueprinting can't ignore: the bystander, who is neither customer nor company but is captured in the interaction with zero visibility into what's happening. The brief names this gap directly (Gate 3: camera "can record without an obvious external indicator readable by bystanders at a distance").
- There is no "support process" for the bystander's consent or recourse — no visible recording indicator, no ambient signal, no interaction the bystander can use to opt out of being in frame. Standard blueprints assume the customer-facing line is where trust is built or broken; here trust breaks on a line the brief doesn't draw at all.
- Frontstage/backstage handoff for the wearer is also unaddressed: what happens when notification-glance, photo-capture, navigation, and translation all compete for the same tiny display surface in the same moment? The brief treats these as parallel features, not sequenced interactions — blueprinting would force a decision about which wins the frontstage in a conflict, and none exists.
- Social backlash (Failure Mode 1) is a *service* failure, not a product bug — it belongs on a blueprint as an unmanaged customer-experience touchpoint for the non-paying stakeholder (the public). No support process, no escalation path, no design response is specified for it.

**Strongest objection:** Blueprinting a product with an unaddressed third-party stakeholder is not optional-missing, it's disqualifying — you cannot blueprint frontstage/backstage for an actor the brief refuses to name as an actor in the transaction at all.

---

### Self-Determination Theory — The device may serve wearer autonomy while actively stripping bystander autonomy; SDT was designed for the wearer, not the person captured.

- Wearer autonomy: hands-free access plausibly increases the wearer's felt control over notifications/navigation — a legitimate SDT gain, `[A]` since untested pre-launch.
- Wearer competence: undermined by Gate 3's finding that no single use case is prioritized. SDT competence requires clear mastery of a task; a device asking the wearer to juggle four roughly-equal jobs on a tiny display with no established interaction grammar likely produces *lower* felt competence, not higher, especially early in adoption (Explorer Edition, $1,500, developer/early-adopter audience — Gate 2 `[D]`).
- Relatedness is where this brief inverts the framework entirely: SDT normally asks whether the *user* feels connected to a broader context. Here, the wearer's relatedness may rise (novelty, in-group signaling to other Explorers) while the bystander's relatedness and autonomy are actively degraded — captured in frame, no consent mechanism, no signal. SDT has no native vocabulary for a third party whose autonomy is diminished by someone else's product experience; the counter-metric names this ("bystander social backlash") but the brief treats it as a threshold to clear, not a person whose agency was removed.
- Trust model: the brief provides no visible signal to the bystander about whether recording is active, which means the bystander cannot exercise agency (leave frame, object, consent) — this is a trust erosion the wearer never sees and the brief never measures at the bystander level, only in aggregate ("backlash").

**Strongest objection:** SDT is built to protect the user in front of the interface. This brief has a second, non-consenting human in every interaction, and SDT — as usually applied — will make this brief look fine because it only asks about the wearer. Applying SDT here without naming that blind spot produces false comfort.

---

### Disruptive Innovation — This reads as a sustaining bet on a mission-level platform claim, dressed as disruption, with no low-end or new-market entry logic named.

- OKR objective claims ambient wearable computing as "the next platform after the smartphone" — this is textbook disruptive rhetoric (attacking the incumbent platform from a new vector). But the actual entry point ($1,500 Explorer Edition, developer/early-adopter target per Gate 2 `[D]`) is a classic *sustaining* pattern: premium price, technically sophisticated early audience, not the low-end/non-consumption entry Christensen's model requires for genuine disruption.
- Disruption theory requires the new entrant to be *worse* on the incumbent's core metric but *better* on a dimension the incumbent ignores, serving a nonconsumer. Glass is not cheaper, not simpler, and not serving people the smartphone currently fails to serve — it is a superset of smartphone capability at a premium price. This is an "improved sustaining" pitch wearing disruption language, not disruption.
- Who has to defend market position: nobody yet, because Explorer Edition doesn't threaten smartphone incumbents' volume or margin at this price/scale. The mission-level ambition (Gate 2) is unsupported by the actual go-to-market shape (Gate 3) — the brief argues at platform-shift scale while shipping at hobbyist scale.
- Failure Mode 2 (no killer use case vs. phone) is precisely the disruption-theory tell: incumbents are rarely killed by "does the same job, roughly," they're killed by "does a job the incumbent structurally can't or won't do." The brief hasn't identified that job.

**Strongest objection:** Christensen's model requires the new entrant to be underestimated by the incumbent because it looks worse on paper while winning on an ignored dimension. Glass at $1,500 with premium hardware ambition is not underestimated-by-design — it's expensive-and-visible-by-design, which invites incumbent attention rather than evading it. The brief's platform-shift OKR is not supported by its own go-to-market facts.

---

### Value Chain — Glass inserts at the point of ambient information capture/display, a genuine chokepoint, but the brief names no margin mechanism and no defensible control point.

- The capability (face-worn always-on camera + glanceable display) sits at a genuine chokepoint in a personal information value chain: the moment before a person decides to pull out a phone. Whoever controls that moment controls attention, and attention is the actual asset in this chain, not the hardware.
- No margin effect is named anywhere in the brief. Gate 2 states price ($1,500) and target segment (early adopters/developers) but not unit economics, platform-fee logic, or data-value capture — there's no statement of whether this *adds* margin (new revenue), *protects* margin (defends existing smartphone/OS position), or *creates* margin (new market entirely). This is a structural gap, not a nuance.
- Control point is contested and unaddressed: does the value accrue to the hardware maker, the OS/platform layer, or whoever owns the ambient-data stream (photos, location, translation queries) generated by always-on capture? The brief is silent on data ownership/monetization, which is unusual for a bet this platform-scaled — Porter's model would ask this before asking about the device at all.
- The bystander-capture problem (Gate 3, Failure Mode 1) is also a value-chain liability, not just a social one: uncompensated, non-consenting third parties are being drawn into a data-generating chain (their image, their location context) with no chain-of-value accounting for them at all — no consent, no compensation, no data governance named.

**Strongest objection:** A brief that names a platform-shift ambition (Gate 2) without naming a single margin mechanism or data-ownership answer is not a value-chain bet, it's a hardware-shipment plan wearing platform language. Porter's framework can't locate the chokepoint's owner because the brief never says who owns the data the chokepoint generates.

---

**Named divergence:**

> Self-Determination Theory and Service Blueprint converge on the bystander gap but diverge on register: SDT frames it as an autonomy/trust harm to an unconsidered person; Service Blueprint frames it as a missing operational touchpoint with no support process. Same gap, different remedy — SDT implies a consent/signal design fix at the interaction level; Service Blueprint implies an entirely new blueprint lane (bystander-as-stakeholder) with escalation/support processes. This is a decision about *scope* (interaction fix vs. structural redesign), not a disagreement about whether the gap is real.

> Disruptive Innovation and Value Chain diverge on what kind of bet this is. Disruptive Innovation reads the brief's own OKR language as aspirational but structurally sustaining (premium price, no non-consumption entry). Value Chain reads the same brief as *silent* on economics entirely — not sustaining or disruptive, just economically undefined. One framework says "this is the wrong shape of bet," the other says "there is no visible bet to evaluate." Both can't be fully resolved from the brief as written; that gap is itself information for the brief owner.

[CS: the OKR, price point, camera-indicator, and use-case-parity claims are drawn directly from the brief's own frontmatter and gate text, which is itself tagged `[A]`/`[D]`/`[?]` by the brief author — none of these are independently sourced by Council, they are read off the document as given.]
