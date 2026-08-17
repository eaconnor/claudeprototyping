**MEAL** · ~3.2 ml water / 0.38 g CO₂e

# Council Testimony — Glass Explorer Edition (googleglass-long.brief.md)

**Gate 1 status: unverified.** The brief's own frontmatter tags the problem statement `[A — technology-push thesis, no sourced user pain point]` and lists `evidence_sources: ["internal technology roadmap [A]", "no cited bystander-acceptance research"]`. There is no sourced customer pain point behind this brief — voices below are commentary against an assumed problem, not analysis against a verified one. Running per explicit instruction to proceed.

---

### 1. Jobs-to-Be-Done — a bundle of features standing in for a job

- The brief names a functional job ("removes friction of pulling out a phone") but never names an emotional or social job, and Gate 3 states plainly: "No single primary use case is prioritized — notifications, photos, navigation, and translation are all pitched as roughly equal value." [A] That is the JTBD failure mode by definition — a capability bundle, not a job.
- What gets fired if this gets hired is the smartphone glance. But the brief provides no evidence the smartphone glance is actually painful enough to fire — the pain point itself is `[A]`.
- The $1,500 Explorer Edition price point (Gate 2, `[D]`) targets developers/early adopters. The job that segment is actually hiring this to do is closer to "let me build/explore/be seen with the frontier" than "remove daily friction" — a different job than the one named in the problem statement, and the brief doesn't reconcile the two.

**Strongest objection:** The brief starts from "we can put a camera and display on a face" and works backward to a job. Christensen's method runs the other direction — find the job, then build for it. No interview, diary study, or field data is cited on what job a face-worn display actually gets hired for.

**Verdict:** Kill or reframe — do not proceed to build until one job is named and prioritized over the other three.
**Why this strength:** High — this isn't an inference reaching outside the brief; the brief self-tags the technology-push framing and self-reports the absence of a prioritized use case.

---

### 2. Service Blueprint — stage-appropriate scoring: gap is real, but not yet a build-blocker

- Frontstage: wearer sees notification/camera UI. Bystander sees a camera-equipped device with, per Gate 3, "no obvious external indicator readable by bystanders at a distance." `[D]`
- Backstage/support processes entirely absent from the brief: no consent-signaling design, no complaint-handling path for a bystander who objects to being recorded, no escalation protocol for the named failure mode (social stigma / backlash).
- **Stage-appropriate rule applied:** `gate: 30` reads as Stage-Gate 3 — business case, pre-development. A full frontstage/backstage operational blueprint is not yet expected at this gate, so the *absence* of backstage design is not scored as a current-stage deficiency.
- What *is* scoreable now: the brief already carries development-stage hardware facts as settled (front-facing camera behavior, no indicator) inside a business-case-stage document. That's a gate mismatch — hardware decisions that require backstage design are being treated as fixed before the backstage design exists.

**Strongest objection:** The brief is advancing hardware commitments (camera placement, indicator absence) that are properly Gate 4/5 decisions while still sitting at Gate 3. If those decisions carry forward unchanged, the gate will pass without the backstage bystander-facing process ever being built, because nothing in this brief's structure forces it to be re-opened later.

**Verdict:** Hold gate advancement — do not let the current hardware assumptions carry into development without a backstage design pass.
**Why this strength:** Medium — scored under the stage-appropriate rule, this is a forward-looking flag on gate discipline, not a penalty against what Gate 30 should already contain.

---

### 3. Self-Determination Theory — autonomy for the wearer, at the bystander's expense

- Autonomy: the wearer gains autonomy (ambient access without device retrieval). But the design has no mechanism giving bystanders any control over their own inclusion in the wearer's data capture — Gate 3's "no obvious external indicator" `[D]` means bystanders can't even exercise the minimal autonomy of knowing.
- Competence: no data exists on whether the wearer can competently operate a four-way feature bundle (notifications/photos/nav/translation) via new gesture or voice interaction. `[?]` Untested competence load on a device meant for daily use is a real risk the brief doesn't touch.
- Relatedness: Failure mode #1, in the brief's own words, describes exactly the mechanism SDT would flag — "social stigma from being recorded by a bystander without clear consent triggers backlash." That's relatedness breaking down, named by the brief itself, not inferred.
- SDT is normally applied to one user. Here the wearer's needs are served by degrading a bystander's needs — the brief never treats the bystander as a psychological subject at all, only as a "social backlash" risk metric.

**Strongest objection:** This isn't a wearer-experience problem, it's a two-party needs conflict, and the brief only measures one party. A counter-metric exists ("bystander social backlash must not outweigh wearer utility," `[?]`) but it's a threshold, not a design response — it accepts some bystander-need violation as tolerable rather than eliminating it.

**Verdict:** Redesign the trust model before any field launch — a threshold metric is not a fix.
**Why this strength:** High — the mechanism is restated verbatim in the brief's own failure-mode list; this is not a stretch inference into the brief's gaps.

---

### 4. Disruptive Innovation — ambition and go-to-market don't match

- The OKR frames this as platform disruption: "Establish ambient, wearable computing as the next platform after the smartphone." That's a disruption-scale claim.
- But the launch mechanics (Gate 2, `[D]`) — $1,500 price, developer/early-adopter-only Explorer targeting — match the profile of a sustaining innovation for enthusiasts, not Christensen's low-end/new-market disruption pattern (worse-but-cheaper, aimed at an overlooked segment).
- Nobody currently loses market position from a $1,500 developer kit. If the thesis is "smartphone successor," the test population (developers who already own smartphones and want a second, more expensive device) cannot actually validate or falsify that thesis.

**Strongest objection:** Gate 2's mission-level bet is stated at platform-disruption scale, but the go-to-market described in the same brief cannot generate evidence for or against that scale of claim. The brief is measuring a developer-kit launch and calling it a platform-shift test.

**Verdict:** OKR and GTM are misaligned — the disruption thesis is unfalsifiable at this price/segment; either lower the claim or change the segment.
**Why this strength:** Medium — this is a structural pattern-match to Christensen's framework applied to the brief's own stated price and segment `[D]`, not backed by competitive or market research.

---

### 5. Value Chain — the brief never names whose chokepoint this touches

- The capability inserts at "the moment of glance" — the instant a user checks a notification. That moment is currently owned by the smartphone OS lock screen / notification stack.
- Margin effect is entirely `[?]`: the brief states no revenue model beyond the $1,500 hardware price. Whether this protects margin (a defensive move against notification real estate being commoditized), creates margin (new hardware category), or has no clear model at all is not addressed anywhere in the brief.
- No competitive-response analysis exists for the parties who'd be disintermediated if "the glance" moved off-phone — OEMs, carriers, or Google's own Android notification stack. The brief is silent on whether this is friendly extension or self-cannibalization.

**Strongest objection:** For a mission-level bet this large (Gate 2: "next platform after the smartphone"), the complete absence of any chokepoint-owner or margin analysis is a bigger structural gap than the bystander-consent gap already flagged by three other voices — nobody has asked who loses control of the notification moment, or what that's worth.

**Verdict:** Unscoreable on margin — no revenue or chokepoint data exists to evaluate this bet.
**Why this strength:** Low — this testimony rests entirely on the `[?]`/`[D]` tags already present in the brief; there is no sourced margin data anywhere to raise confidence above that.

---

> **Service Blueprint and Self-Determination Theory diverge on urgency** — Service Blueprint, scored under the stage-appropriate rule, treats the missing backstage bystander process as a forward-looking flag tolerable at Gate 30. SDT treats the same gap as already causing harm (per the brief's own failure mode #1) and calls for redesign before any field launch, regardless of gate. This is a decision about whether gate-stage protects the brief from urgency, not a gap — route it to the brief owner.

> **Disruptive Innovation and Value Chain both flag GTM/margin absence, but Jobs-to-Be-Done and Disruptive Innovation diverge on what "ambition" means here** — JTBD reads the lack of a prioritized use case as evidence there's no job at all yet. Disruptive Innovation reads the same bundling as a *mismatched scale* problem (platform-claim OKR vs. developer-kit GTM), implying a job may exist but the test can't reach it. Whether the fix is "find the job" or "fix the test population" is a decision, not a gap — route it to the brief owner.
