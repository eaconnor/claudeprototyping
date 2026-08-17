# Three Gates Before a Single Line of Code
*The staged path for the ACP coworker department — what to check, in what order, and why the first check is free.*

**Quick context:** the top use cases from the June study compose into what we've been calling a coworker *department* — operational and security coworkers do the work, a QBR coworker narrates it to the client. That composition is a hypothesis, not a finding, and this document is the plan for testing it without betting the farm: the cheap checks that come before any build, the thin first build if they clear, and a map of what each stage can and can't prove. Read-out and evidence: `product-experience-research.md`. Shapes and positioning: `concept-mvps.md`.

The principle underneath all of it — and I mean this as practical advice, not philosophy: **every stage should be the cheapest possible way to kill the idea.** If it survives the cheap kills, it's earned the expensive ones. Effort figures are rough estimates [A], for sequencing, not planning. Don't put them in a Gantt chart and then be mad at me.

```
  STAGE 0          GATE C           GATE A            GATE B           STAGE 1            STAGE 2           STAGE 3
  Concept       Adlumin          Normalization     Pricing +        MVP:               Product           The Moat
  reframed  →   signal-source →  feasibility   →   competence   →   trust wedge   →    (breadth +   →    (durable)
   ✓ DONE       check            spike             conversation     + composition      next band)
                [internal,       [~1–2 wks]        [~2 calls]       [medium build]
                 days — may
                 decide the
                 SPINE]
                    │                │                  │                │
                 GO / NARROW / NO-GO at each ─────────────────────────────
```

---

## Stage 0 — Where you're standing ✓

The concept is reframed and the evidence is on the table. Demand is real; QBR tops both cuts of the study, and below #1 the cuts diverge in ways we can use (n=8 — directional, not projectable, and we never pretend otherwise). The hub-and-signals architecture has a precedent with revenue: ScalePad built a 12,000-MSP company on "five products, one operating system." And the department composition itself is an assumption big enough that it pushed our own evidence metric over its own line — 32% of world-claims now assumed or unknown, against a 30% ceiling. We named that instead of smoothing it, and then pointed a 44-framework council at it. What's left before anyone builds anything is three checks, and they're cheap. Suspiciously cheap.

---

## Gate C — One conversation that might decide everything  *(internal · days · free)*

**The question:** can Adlumin data flow into ACP coworkers as a signal source — or does Adlumin run as a separate product lane?

**Why it goes first:** because the biggest strategic choice on the board — does the department lead with the business story or the security story? — reduces to this one answer. The security-led spine (the one the council's evidence favors, on four independent axes) feeds on Adlumin. If Adlumin can't feed it, that spine collapses before anyone spends a dollar evaluating it, and the department's boldest claim — "our signals come from coworkers doing real security work" — gets a lot quieter.

- **YES →** the security spine is live, and the fork is a real decision.
- **NO / separate lane →** business-led by default, eyes open, no hard feelings.

This is not research. It's a meeting. Possibly a hallway conversation. It's also the single highest information-per-dollar move available to anyone in this building this quarter, so — this week?

---

## Gate A — The normalization spike  *(one engineer · ~1–2 weeks)*

**The question:** can data from rival tools actually be reconciled into one defensible view?

Build nothing user-facing. One engineer takes ConnectWise + NinjaOne + SentinelOne + Cove and tries to reconcile them into one apples-to-apples view for a single fake tenant. This tests the moat itself — "nobody normalizes across vendors" is our white space [CS: MEDIUM — absence of evidence, and we flag it as such, because absence of evidence is how people get surprised], and it was the study's own named feasibility worry.

**While the engineer's in there, fold in the API-terms check:** do these vendors even *permit* MSP-level data extraction at this scale? At what rate limits, at what price? And notice the asymmetry — the business spine's data flows through APIs controlled by competitors (ConnectWise owns BrightGauge and competes with N-able); the security spine's feed is N-able-owned. One supply chain runs through a rival's building. The other runs through ours.

- **GO:** reconciliation holds without hand-mapping every vendor → the moat is real.
- **NARROW:** only N-able's own stack reconciles cleanly → beachhead-scope data; the cross-vendor promise waits its turn.
- **NO-GO:** every vendor needs bespoke mapping that won't scale → the differentiator was a mirage, and we found out for two weeks' effort instead of two quarters'.

*(There's also the checkbook version: acquiring Gradient MSP — cross-vendor normalization, already Cove-integrated, ~$8M raised — closes this gate by purchase instead of engineering. [CS: HIGH facts / A fit] That one's a leadership conversation, not a research finding, so I'll leave it on the table and back away.)*

---

## Gate B — Two phone calls  *(~2 calls · same week as Gate A)*

Two conversations with the already-warm study participants (Kenneth, Jonathan). Three questions:

1. **Pricing:** bundled retention-play vs *billable service line* (the security spine's framing) — is there willingness-to-pay above "shouldn't my RMM include this?" under either frame?
2. **Authorship:** "Do you want this done *for* you, or do you want to still feel like the author?" — asked specifically about the review step. Is approving five coworkers' findings authorship, or a rubber stamp? Nobody on earth has data on this, and it decides the product's most important screen.
3. **The ScalePad claim:** Kenneth described urgency around a lifecycle-tool switch. The public record doesn't show a displacement window — ScalePad's Lifecycle Manager X is their *new* flagship, not a sunset. So: personal migration story, or industry event? We ask him instead of guessing, and we don't build go-to-market timing on it until he answers.

- **GO:** WTP clears under at least one frame AND review-as-authorship confirms.
- **NO-GO:** zero WTP under both frames, no appetite for retention-defense positioning → economic dead end, discovered for the price of two calls. Cheap funerals are a blessing.

**Gate C first (days). Gates A and B in parallel behind it (~one week). All three before a line of MVP code.**

---

## Stage 1 — The MVP: a trust wedge with the composition claim inside it

First, a fork we need to walk through with eyes open, because the department has a chicken-and-egg problem: the hub's value is narrating coworker work, and the coworkers don't exist yet. Three ways in:

| Path | Requires | Tests | Cannot test |
|---|---|---|---|
| 1 · Build the full department first | All 5 coworkers + a shared signal format | The real coherence claim | Nothing smaller first — highest cost, slowest learning |
| **2 · QBR pulls existing-tool signals ⭐** | QBR coworker + N-central/N-sight/Adlumin (per Gate C) standing in for future coworkers | The narration hub and its trust chain, without building the bands | True cross-coworker composition — the signals are tool data, not coworker judgments. **Declared pretense, printed on the tin.** |
| 3 · QBR standalone | QBR coworker only | The old trust story | The entire department thesis — and it walks into ScalePad's "operating system" positioning armed with a deck generator |

⭐ Path 2 is what the analysis implies — but that's sequencing logic [A], not a decision. Path and spine are yours, with Gate C's answer in hand.

**What the wedge must do:**
- **A real Enter.** Connect one design partner's *actual* tools. Faking the connection tests the easy half of trust and quietly hides the half that kills products.
- **One draft, one customer** — visibly clear about which data came native-clean and which had to be reconciled.
- **Provenance drillable on both layers** — every number to its tool, every finding to its coworker, *with that coworker's confidence showing.* Source labels you can't drill into aren't provenance. They're provenance cosplay.
- **Gaps and coworker seams backstage only.** The MSP sees everything — including the deliberately planted gap (backup status missing on 3 devices) that tests whether missing data reads as candor or as failure. Their client sees a seamless story. Two audiences, opposite information needs, one artifact.
- **Editable, one export (PowerPoint), one audience mode (exec).**
- **Read-only.** No autonomy, no write actions. This is what makes the QBR the trust-free entry point to the whole ACP line — the coworker that can't do anything scary.
- **The review is a gate, not a glance.** The vCIO affirms each composed claim before it can face a client. This one step is the trust catch-point, the "I'm still the author" answer, and the only place a *grounded-but-wrong* coworker finding can get caught — the one failure our traceability metric structurally cannot see. If we design nothing else well, we design this.
- **At least two signals composing into one claim no single coworker implies.** One signal on a page is co-presentation. Two signals producing a decision neither implies alone — that's a department. And if we can't build that stimulus this round, we say the composition claim went untested. Out loud. In the report.

**Tested by:** design partners resembling the study roster — plus at least one session with the *user* persona, the vCIO or analyst who'd run this daily. The study interviewed buyers. The person who'll actually live in the review gate has never been studied by anyone, which is the kind of sentence that should make a room of researchers wince.

**The success bar:** 70%+ of test partners would send the draft with under 15 minutes of editing, can trace every number, and can name the coworker behind each finding. The composition clause counts only if a partner names the composed decision *unprompted.* If we have to point at it, it didn't happen.

**Deliberately out:** the other four coworkers as built agents · scheduled delivery · portal publish · CRM pipeline · the full 6–8-tool integration set · quarter-over-quarter memory · all audience modes · section management.

---

## Stage 2 — Product: breadth, and the first real band

Post-MVP: the remaining integrations, all audience modes (CFO / owner / IT), scheduled + on-demand triggers, export formats, MSP-branded tone, section management, and the forward-looking priced opportunity slate — the meeting's actual revenue moment.

And the step that makes the department real instead of rhetorical: **stand up the first actual coworker band.** Which one depends on the spine you chose back at the fork — security band first (IR RCA + tabletop on Adlumin — the only band in both top-5 cuts) if Gate C opened that door, operational band first (alert flood suppression is #2 on forced rank; ticket triage is #3 on mentions) if it didn't. This is where the beachhead's simulated signals become real coworker judgments, and where the composition claim faces its first real test at scale.

---

## Stage 3 — The moat: what compounds

The layer a fast-follower can't copy by shipping a feature:

- **Cross-vendor normalization + the network effect** — vendor mappings that improve as more MSPs connect their stacks. A competitor can copy a screen over a weekend. They can't copy an accrued corpus.
- **The system, made visible** — "from your N-able stack: instant, clean" vs "reconciled across third-party tools: the hard part," shown plainly in the product. Candor as a feature. Imagine.
- **Quarter-over-quarter memory** — last quarter's promises tracked against this quarter's follow-through. The defense against silent churn, which precedes loud churn the way smoke precedes fire.
- **The full department** — all three bands live, the QBR narrating real coworker work end to end. Either the coherence claim proves out here, or we retire the frame without ceremony and keep whatever pieces earned their place. Both outcomes are fine. Only pretending is expensive.

---

## What to decide now

Not the build. Not even the spine. Just this: **run Gate C this week — it's one conversation — and fund Gates A and B behind it.** About a week of parallel effort, closing the three riskiest answerable unknowns for a rounding error of build cost. Everything to the right of the MVP is sequencing you'll decide later, with better information than anyone has today.

**Two risks to hold while you decide:**
1. **Don't let the MVP skip Enter.** Connecting real tools is the least glamorous and most decisive test in this whole plan. A demo with a faked connection tests the easy half of the trust moment and hides the half that kills products — and everyone will be tempted, because the faked version demos beautifully.
2. **Don't let the review ship as a glance.** The department's trust chain has exactly one human gate in it — the vCIO deciding what the coworkers' work *means* before a client sees it. On the security spine, a wrong claim slipping through isn't embarrassing; it's liability. That gate is the product.

*This is product-experience research. The build call, the spine, and the timing belong to Beth, Meaghan, and Nicole.*
