Gate 1 is unverified — the brief is a single unsourced line (device description only, no customer problem, no [R]/[D] evidence). Council voices below are commentary against an unsourced problem statement, not analysis against a verified Gate 1. Running per explicit instruction; treat as calibration exercise, not a decision input.

---

# Council Testimony — Google Glass brief
**Brief:** `googleglass-short.brief.md` — "$1,500 face-worn camera/display for hands-free notifications, photos, and navigation."
**Gate 1:** Unverified (no sourced customer problem in brief)

### Jobs-to-Be-Done — A functional-job pitch riding on an unstated emotional/social job

- The brief states three functional jobs: notifications, photo capture, navigation. All three already have a hired solution — the smartphone in the pocket — and the brief gives no reason the phone is "fired" for any of them. Fifteen hundred dollars is a lot to pay to relocate a job the phone already does adequately.
- The device's actual differentiator isn't the functional job, it's the emotional/social job: being seen as someone using cutting-edge tech. The brief doesn't name this job at all — it only lists utility. [ASSUMPTION] the brief treats hands-free utility as the primary hire reason.
- "Hands-free" is a real functional job (navigation while carrying groceries, notifications mid-task) — but the brief doesn't specify which job-context is primary, and each implies a different competing product (dash-mount GPS, smartwatch, AirPods-style audio notification).

**Strongest objection:** The brief never states what gets fired. Without that, "hands-free notifications/photos/navigation" is a feature list, not a job — this is a spec problem, not a market problem, and it should have been caught before council ran.

### Service Blueprint — Bystanders are a stakeholder the blueprint doesn't draw

- Frontstage is voice/gesture control ("OK Glass"); backstage is cloud photo sync, always-on camera processing, and continuous data capture. The brief mentions none of the backstage requirements — support, storage, retention policy — that a face-worn camera obligates.
- There's a second-order customer the brief never blueprints: the person being recorded. No consent mechanism, no visible recording indicator spec, no support process for someone who wants footage of themselves removed. This isn't a nice-to-have — it's the reason the product line failed in market. [CS: HIGH] Google Glass consumer sales were discontinued in 2015 following widespread public backlash over covert recording; the term "Glasshole" entered common usage to describe wearers.
- No return/repair/support process is named for a $1,500 wearable — high price point implies white-glove support expectations that the one-line brief doesn't address.

**Strongest objection:** The blueprint the brief implies has exactly one customer (the wearer). Real service design for this category requires at minimum two — wearer and bystander — and the brief structurally excludes the second.

### Self-Determination Theory — Autonomy for the wearer, erosion for everyone in the room

- Hands-free control nominally supports the wearer's autonomy (act without reaching for a device). But this autonomy gain is purchased at the expense of bystanders' autonomy — they cannot consent to or control being recorded by a device with no visible off-state. The framework doesn't have a category for "autonomy transferred from one party to another," but that's what's happening here.
- Competence: voice/gesture UI for a novel interaction paradigm has a real learning curve; the brief gives no onboarding model, so early competence failure (fumbling commands in public) is foreseeable and socially costly, unlike a private-use device where the same fumbling is invisible.
- Relatedness: the device is marketed to enhance hands-free presence, but the visible hardware on the face became the single biggest driver of social friction ("Glasshole" stigma) [CS: HIGH] — the product actively damaged relatedness in the exact interaction it claimed to improve.

**Strongest objection:** SDT would say this brief optimizes one user's autonomy against everyone else's relatedness and autonomy, and the brief has no language for that tradeoff at all — it reads as if the wearer is the only person in the interaction.

> **Named divergence:** Jobs-to-Be-Done and Self-Determination Theory read the same "Glasshole" phenomenon in opposite directions. JTBD can plausibly read public visibility as the emotional job working as intended — status signaling doesn't require approval to succeed. SDT reads the identical visibility as evidence of relatedness failure — the device damaged connection at the point of contact. Whether visibility-as-status and visibility-as-social-cost are the same fact or two competing readings of it is a decision for the brief owner, not something council resolves.

### Disruptive Innovation — Priced and positioned as sustaining, not disruptive

- $1,500 for an Explorer Edition device [CS: HIGH — Google Glass Explorer Edition retailed at $1,500 in 2013] is a premium/enthusiast price point aimed at developers and affluent early adopters — the opposite of a disruptive entry price attacking from below with "good enough, cheaper" value.
- No incumbent loses market position from a $1,500 device with narrow functional overlap. Smartphone makers had nothing to defend; the price and audience were too small and too premium to threaten the phone's job.
- No new non-consumer market was created — Glass didn't reach people who couldn't previously afford navigation/camera/notifications; it resold existing jobs at a markup to people who already owned smartphones. [CS: HIGH] Google discontinued the consumer Explorer program in 2015 and repositioned the product as Glass Enterprise Edition, targeting industrial/field-work use cases rather than consumers.
- The eventual enterprise pivot is itself evidence: the consumer version wasn't disruptive or sustaining for consumers — it found product-market fit only after abandoning the general-consumer job entirely.

**Strongest objection:** This brief describes a product with no disruption thesis and no sustaining-customer thesis either — it's priced for enthusiasts, positioned for mass consumer jobs, and defended by no coherent strategy against either incumbents or non-consumers. That's not a strategy gap the framework can paper over.

### Value Chain — Duplicates existing chokepoints instead of controlling a new one

- Camera, display, and navigation are capabilities the smartphone + carrier value chain already owns and monetizes. The brief doesn't state what chokepoint Glass controls that the phone doesn't — without a new chokepoint, there's no defensible margin position.
- Margin effect is unstated: is the business model hardware margin, attention/data capture, or search-context extension? Each implies a different value chain insertion point and a different answer to "who controls the chokepoint." The brief is silent. [?]
- The actual chokepoint this product touches — optics, battery, and wearable-form-factor component supply — isn't a chokepoint Google controlled at the time; it was buying into someone else's hardware supply chain rather than defending one of its own.

**Strongest objection:** A one-line brief listing three functional capabilities is not a value chain position — it's a feature list. There's no answer here to "who loses margin if this succeeds," which means there's no way to tell if this creates value or just relocates cost.

> **Named divergence:** Value Chain and Disruptive Innovation converge on "this isn't disruptive," but for different reasons that matter to strategy. Disruptive Innovation says the price/positioning targeted the wrong customer (enthusiasts, not non-consumers). Value Chain says the deeper problem is structural — no new chokepoint was created regardless of who was targeted. If the brief owner fixes pricing/targeting without addressing chokepoint control, Value Chain's objection stands unresolved even if Disruptive Innovation's is satisfied. These are not the same fix.
